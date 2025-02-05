from pathlib import Path
import functools
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


OOT_VERSION = "gc-eu-mq-dbg"
BASEROM_PATH = Path("extracted") / OOT_VERSION / "baserom"
BUILD_PATH = Path("build") / OOT_VERSION
EXTRACTED_PATH = Path("extracted") / OOT_VERSION


@functools.lru_cache(maxsize=200)
def get_baserom_file_data(baserom_file_name: str):
    return memoryview((BASEROM_PATH / baserom_file_name).read_bytes())


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


def process_pool(pool_desc: ResourcesDescCollectionsPool):
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
        data = get_baserom_file_data(rescoll.backing_memory.name)
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

    memctx_base = MemoryContext()
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

    # TODO this looks jank
    for rescoll, file in file_by_rescoll.items():
        file.set_source_path(Path("assets") / rescoll.out_path)
        (Path("assets") / rescoll.out_path).mkdir(parents=True, exist_ok=True)

        file.set_resources_paths(
            EXTRACTED_PATH,
            BUILD_PATH,
            Path("assets") / rescoll.out_path,
        )
        (EXTRACTED_PATH / rescoll.out_path).mkdir(parents=True, exist_ok=True)

    for file, file_memctx in memctx_by_file.items():
        # write to EXTRACTED_PATH
        if WRITE_EXTRACT:
            file.write_resources_extracted(file_memctx)

        # "source" refers to the main .c and .h `#include`ing all the extracted resources
        if WRITE_SOURCE:
            # TODO fill referenced_files properly or something
            file.referenced_files = set(memctx_by_file.keys())
            file.write_source()


def process_pool_wrapped(pd):
    try:
        process_pool(pd)
    except Exception as e:
        import traceback
        import sys

        # Some exceptions can't be pickled for passing back to the main process
        # so print them now as well
        traceback.print_exc(sys.stdout)
        raise Exception() from e


def main():
    import argparse

    # TODO cleanup, command-line argument for version
    from tools import version_config

    parser = argparse.ArgumentParser()
    parser.add_argument("-v", dest="oot_version", default="gc-eu-mq-dbg")
    parser.add_argument("-j", dest="use_multiprocessing", action="store_true")
    parser.add_argument("-s", dest="single", default=None)
    args = parser.parse_args()

    vc = version_config.load_version_config(args.oot_version)

    pools_desc = get_resources_desc(vc)

    z64_resource_handlers.register_resource_handlers()

    # TODO single pool extract cli arg
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
                    process_pool(pool_desc)
                    any_do_process_pool = True
            if any_do_process_pool:
                print("OK")
            else:
                print("Not found:", args.single)
        elif not args.use_multiprocessing:  # everything on one process
            for pool_desc in pools_desc:
                process_pool(pool_desc)
            print("all OK!!!")
        else:  # multiprocessing
            import multiprocessing

            with multiprocessing.Pool() as pool:
                pool.map(process_pool_wrapped, pools_desc)
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

    # extract_xml(Path("objects/object_ydan_objects"))
    # extract_xml(Path("objects/object_fd2")) # TODO xml needs TLUT fixing, see VERBOSE_BEST_EFFORT_TLUT_NO_REAL_USER
    # extract_xml(Path("objects/object_am"))
    # extract_xml(Path("scenes/indoors/hylia_labo"))
    # extract_xml(Path("objects/gameplay_keep"))
    # extract_xml(Path("overlays/ovl_En_Jsjutan"))  # The only xml with ~~<Symbol>~~ a <File Extract="False"
    # extract_xml(Path("overlays/ovl_Magic_Wind"))  # SkelCurve
    # extract_xml(Path("objects/object_link_child"))  # The only xml with <Mtx>
    # extract_xml(Path("scenes/dungeons/ddan")) # cutscene test
    # extract_xml(Path("scenes/dungeons/ganontikasonogo")) # has a spawn not in the entrance table

    pprint(get_baserom_file_data.cache_info())
