import dataclasses
from pathlib import Path
from pprint import pprint

from ..descriptor.base import (
    BaseromFileBackingMemory,
    get_resources_desc,
    ResourceDesc,
    ResourcesDescCollection,
    ResourcesDescCollectionsPool,
    SegmentStartAddress,
    VRAMStartAddress,
)

from .extase import File, Resource
from .extase.memorymap import MemoryContext

from . import z64_resource_handlers

#
# main
#

VERBOSE1 = False
VERBOSE2 = True

# "options"
RM_SOURCE = True
WRITE_SOURCE = True
RM_EXTRACT = True
WRITE_EXTRACT = True
from ..conf import WRITE_HINTS, I_D_OMEGALUL


@dataclasses.dataclass
class ExtractionContext:
    oot_version: str
    version_memctx_base: MemoryContext
    baserom_path: Path
    build_path: Path
    extracted_path: Path

    def get_baserom_file_data(self, baserom_file_name: str):
        return memoryview((self.baserom_path / baserom_file_name).read_bytes())


def create_file_resources(rescoll: ResourcesDescCollection, file: File):
    """Collect resources described by the collection into the file object.

    Does not do any processing of the data itself: no parsing, no discovering more resources.
    """

    file_resources_by_desc: dict[ResourceDesc, Resource] = dict()

    list_ResourceNeedsPostProcessWithPoolResourcesException: list[
        z64_resource_handlers.ResourceNeedsPostProcessWithPoolResourcesException
    ] = []

    for resource_desc in rescoll.resources:

        try:
            resource = z64_resource_handlers.get_resource_from_desc(file, resource_desc)
        except (
            z64_resource_handlers.ResourceNeedsPostProcessWithPoolResourcesException
        ) as e:
            resource = e.resource
            list_ResourceNeedsPostProcessWithPoolResourcesException.append(e)

        # TODO nice hack right here.
        # probably instead rework the "c declaration" system into a more opaque object
        # not that this is really a required long term feature as it's only relevant
        # for writing the source files (main .c/.h), not extracting
        if file.name.startswith("ovl_") and file.name != "ovl_file_choose":
            resource.HACK_IS_STATIC_ON = ...

        file.add_resource(resource)

        file_resources_by_desc[resource_desc] = resource

    if VERBOSE1:
        print(file)
        print(file.name, file._resources)

    # Check if described resources overlap
    file.sort_resources()
    file.check_overlapping_resources()

    return (
        file_resources_by_desc,
        list_ResourceNeedsPostProcessWithPoolResourcesException,
    )


def process_pool(
    extraction_ctx: ExtractionContext, pool_desc: ResourcesDescCollectionsPool
):
    if VERBOSE2:
        print("> process_pool")
        print(
            "pool_desc collections:",
            [str(rescoll.out_path) for rescoll in pool_desc.collections],
        )

    file_by_rescoll: dict[ResourcesDescCollection, File] = dict()

    # 1) Create File and Resource objects

    pool_resources_by_desc: dict[ResourceDesc, Resource] = dict()
    list_all_ResourceNeedsPostProcessWithPoolResourcesException: list[
        z64_resource_handlers.ResourceNeedsPostProcessWithPoolResourcesException
    ] = []
    for rescoll in pool_desc.collections:
        if not isinstance(rescoll.backing_memory, BaseromFileBackingMemory):
            raise NotImplementedError(rescoll.backing_memory)
        data = extraction_ctx.get_baserom_file_data(rescoll.backing_memory.name)
        if rescoll.backing_memory.range is not None:
            range_start, range_end = rescoll.backing_memory.range
            data = data[range_start:range_end]

        # TODO File.name
        file = File(rescoll.backing_memory.name, data=data)
        file_by_rescoll[rescoll] = file

        (
            file_resources_by_desc,
            list_ResourceNeedsPostProcessWithPoolResourcesException,
        ) = create_file_resources(rescoll, file)
        pool_resources_by_desc |= file_resources_by_desc
        list_all_ResourceNeedsPostProcessWithPoolResourcesException.extend(
            list_ResourceNeedsPostProcessWithPoolResourcesException
        )

    for e in list_all_ResourceNeedsPostProcessWithPoolResourcesException:
        e.callback(pool_resources_by_desc)

    # 2) Build a MemoryContext for each File

    memctx_base = extraction_ctx.version_memctx_base.copy()
    files_by_segment: dict[int, list[File]] = dict()

    for rescoll, file in file_by_rescoll.items():

        if rescoll.start_address is None:
            pass
        elif isinstance(rescoll.start_address, SegmentStartAddress):
            files_by_segment.setdefault(rescoll.start_address.segment, []).append(file)
        elif isinstance(rescoll.start_address, VRAMStartAddress):
            memctx_base.set_direct_file(rescoll.start_address.vram, file)
        else:
            raise NotImplementedError(rescoll.start_address)

    disputed_segments = []

    for segment, files in files_by_segment.items():
        if len(files) == 1:
            memctx_base.set_segment_file(segment, files[0])
        else:
            disputed_segments.append(segment)

    if VERBOSE2:
        print(f"{disputed_segments=}")

    memctx_by_file: dict[File, MemoryContext] = dict()

    for rescoll, file in file_by_rescoll.items():
        file_memctx = memctx_base.copy()
        if (
            isinstance(rescoll.start_address, SegmentStartAddress)
            and rescoll.start_address.segment in disputed_segments
        ):
            if VERBOSE2:
                print(
                    "disputed segment",
                    rescoll.start_address.segment,
                    "set to own file for file's memctx",
                    file.name,
                )
            file_memctx.set_segment_file(rescoll.start_address.segment, file)
        memctx_by_file[file] = file_memctx

    # 3) parse: iteratively discover and parse data
    # (discover = add resources, parse = make friendlier than binary)

    def parse_all_files():
        while True:
            any_progress = False
            for file, file_memctx in memctx_by_file.items():
                if VERBOSE2:
                    print(file.name, ".try_parse_resources_data()")
                if file.try_parse_resources_data(file_memctx):
                    any_progress = True
            if not any_progress:
                break

        for file in memctx_by_file.keys():
            file.check_non_parsed_resources()

    if VERBOSE2:
        print("parse_all_files() ...")
    parse_all_files()

    for file in memctx_by_file.keys():
        file.commit_resource_buffers()

    if VERBOSE2:
        print("parse new resources (resource buffers) ...")
    parse_all_files()  # parse new resources (resource buffers)

    for file in memctx_by_file.keys():
        file.sort_resources()
        file.check_overlapping_resources()

    # 4) add dummy (binary) resources for the unaccounted gaps

    if VERBOSE2:
        print("unaccounted...")

    for file in memctx_by_file.keys():
        file.add_unaccounted_resources(I_D_OMEGALUL=I_D_OMEGALUL)

    parse_all_files()  # FIXME this is to set is_data_parsed=True on binary blob unaccounteds, handle better

    for file in memctx_by_file.keys():
        file.sort_resources()
        assert not file.get_overlapping_resources()

    # At this point all files are completely mapped with resources

    # 5)

    for rescoll, file in file_by_rescoll.items():
        file.set_source_path(Path("assets") / rescoll.out_path)

        file.set_resources_paths(
            extraction_ctx.extracted_path,
            extraction_ctx.build_path,
            Path("assets") / rescoll.out_path,
        )

    for file, file_memctx in memctx_by_file.items():
        # write to extracted/
        if WRITE_EXTRACT:
            file.write_resources_extracted(file_memctx)

        # "source" refers to the main .c and .h `#include`ing all the extracted resources
        if WRITE_SOURCE:
            # TODO fill referenced_files properly or something
            file.referenced_files = set(memctx_by_file.keys()) - {file}
            file.write_source()


def process_pool_wrapped(extraction_ctx, pd):
    try:
        process_pool(extraction_ctx, pd)
    except Exception as e:
        import traceback
        import sys

        # Some exceptions can't be pickled for passing back to the main process
        # so print them now as well as reraising
        traceback.print_exc(file=sys.stdout)
        raise Exception(
            "ERROR with pool_desc collections:",
            [str(rescoll.out_path) for rescoll in pd.collections],
        ) from e


def main():
    import argparse

    # TODO cleanup, command-line argument for version
    from tools import version_config

    parser = argparse.ArgumentParser()
    parser.add_argument(
        "baserom_segments_dir",
        type=Path,
        help="Directory of uncompressed ROM segments",
    )
    parser.add_argument(
        "output_dir",
        type=Path,
        help="Output directory to place files in",
    )
    parser.add_argument("-v", dest="oot_version", default="gc-eu-mq-dbg")
    parser.add_argument("-j", dest="use_multiprocessing", action="store_true")
    parser.add_argument("-s", dest="single", default=None)
    args = parser.parse_args()

    vc = version_config.load_version_config(args.oot_version)

    pools_desc = get_resources_desc(vc)

    version_memctx_base = MemoryContext()

    from .extase_oot64.dlist_resources import MtxResource, TextureResource
    from ..n64 import G_IM_FMT, G_IM_SIZ

    file_gMtxClear = File("sys_matrix__gMtxClear", size=0x40)
    file_gMtxClear.add_resource(MtxResource(file_gMtxClear, 0, "gMtxClear"))
    version_memctx_base.set_direct_file(vc.variables["gMtxClear"], file_gMtxClear)

    file_sShadowTex = File("z_en_jsjutan__sShadowTex", size=0x800)
    file_sShadowTex.add_resource(
        TextureResource(
            file_sShadowTex, 0, "sShadowTex", G_IM_FMT.I, G_IM_SIZ._8b, 32, 64
        )
    )
    version_memctx_base.set_direct_file(vc.variables["sShadowTex"], file_sShadowTex)

    extraction_ctx = ExtractionContext(
        args.oot_version,
        version_memctx_base,
        args.baserom_segments_dir,
        Path("build") / args.oot_version,
        args.output_dir,
    )

    z64_resource_handlers.register_resource_handlers()

    # TODO extract only when a pool xml was modified since last extract
    try:
        if args.single is not None:
            any_do_process_pool = False
            for pool_desc in pools_desc:
                do_process_pool = False
                for coll in pool_desc.collections:
                    if isinstance(coll.backing_memory, BaseromFileBackingMemory):
                        if coll.backing_memory.name == args.single:
                            do_process_pool = True
                if do_process_pool:
                    process_pool(extraction_ctx, pool_desc)
                    any_do_process_pool = True
            if any_do_process_pool:
                print("OK")
            else:
                print("Not found:", args.single)
        elif not args.use_multiprocessing:  # everything on one process
            for pool_desc in pools_desc:
                process_pool(extraction_ctx, pool_desc)
            print("all OK!!!")
        else:  # multiprocessing
            import multiprocessing

            with multiprocessing.Pool() as pool:
                pool.starmap(
                    process_pool_wrapped,
                    zip([extraction_ctx] * len(pools_desc), pools_desc),
                )
            print("all OK!?")
    except Exception as e:
        import traceback
        import sys

        traceback.print_exc(file=sys.stdout)

        try:
            import rich.pretty
        except:
            print("Install rich for prettier output (`pip install rich`)")
        else:
            # TODO implement more __rich_repr__
            if e.__class__ in (Exception, AssertionError, NotImplementedError):
                print("rich.pretty.pprint(e.args):")
                rich.pretty.pprint(e.args, indent_guides=False)
            else:
                print("rich.pretty.pprint(e):")
                rich.pretty.pprint(e, indent_guides=False)
