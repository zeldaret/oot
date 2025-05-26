# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

import dataclasses
from pathlib import Path

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

try:
    import rich
    import rich.console
    import rich.pretty
except ImportError:
    USE_RICH = False
else:
    USE_RICH = True

#
# main
#

VERBOSE1 = False
VERBOSE2 = False
VERBOSE3 = False

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
    write_source: set[str]
    """Paths of source .c files to write"""

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
        except Exception as e:
            raise Exception(
                "Error while creating resource from description:", resource_desc
            ) from e

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
    if VERBOSE1:
        print("> process_pool")
    colls_str = " + ".join(set(map(str, (_c.out_path for _c in pool_desc.collections))))
    if USE_RICH:
        rich.print(f"[b]{colls_str}[/b]")
    else:
        print(colls_str)

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

        if isinstance(rescoll.start_address, VRAMStartAddress):
            if rescoll.start_address.vram % 8 == 0:
                alignment = 8
            elif rescoll.start_address.vram % 4 == 0:
                alignment = 4
            else:
                raise NotImplementedError(
                    f"alignment for {rescoll.start_address.vram=:#08X}"
                )
        elif (
            isinstance(rescoll.start_address, SegmentStartAddress)
            or rescoll.start_address is None
        ):
            alignment = 8
        else:
            raise NotImplementedError(rescoll.start_address)
        # TODO File.name
        file = File(rescoll.backing_memory.name, data=data, alignment=alignment)
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
    memctx_by_file: dict[File, MemoryContext] = dict()

    for rescoll, file in file_by_rescoll.items():
        if VERBOSE2:
            print("Building MemoryContext for", file.name)
        files_by_segment: dict[int, list[File]] = dict()
        file_memctx = memctx_base.copy()

        for rescoll_dep in (rescoll, *rescoll.depends):
            file_dep = file_by_rescoll[rescoll_dep]

            if rescoll_dep.start_address is None:
                pass
            elif isinstance(rescoll_dep.start_address, SegmentStartAddress):
                files_by_segment.setdefault(
                    rescoll_dep.start_address.segment, []
                ).append(file_dep)
            elif isinstance(rescoll_dep.start_address, VRAMStartAddress):
                file_memctx.set_direct_file(rescoll_dep.start_address.vram, file_dep)
                if file_dep != file:
                    file.referenced_files.add(file_dep)
            else:
                raise NotImplementedError(rescoll_dep.start_address)

        disputed_segments = []

        for segment, files in files_by_segment.items():
            if len(files) == 1:
                file_memctx.set_segment_file(segment, files[0])
                if files[0] != file:
                    file.referenced_files.add(files[0])
                if VERBOSE2:
                    print("segment", segment, "set to", files[0].name)
            else:
                disputed_segments.append(segment)

        if VERBOSE2:
            print(f"{disputed_segments=}")

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
                if VERBOSE3:
                    print(file.name, ".try_parse_resources_data()")
                if file.try_parse_resources_data(file_memctx):
                    any_progress = True
            if not any_progress:
                break

        for file in memctx_by_file.keys():
            file.check_non_parsed_resources()

    if VERBOSE3:
        print("parse_all_files() ...")
    parse_all_files()

    for file in memctx_by_file.keys():
        file.commit_resource_buffers()

    if VERBOSE3:
        print("parse new resources (resource buffers) ...")
    parse_all_files()  # parse new resources (resource buffers)

    for file in memctx_by_file.keys():
        file.sort_resources()
        file.check_overlapping_resources()

    # 4) add dummy (binary) resources for the unaccounted gaps

    if VERBOSE3:
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
        file.set_source_path(
            extraction_ctx.extracted_path / "assets" / rescoll.out_path
        )

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
        if WRITE_SOURCE and (
            str(file.source_c_path.relative_to(extraction_ctx.extracted_path))
            in extraction_ctx.write_source
        ):
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


# Make interrupting jobs with ^C less jank
# https://stackoverflow.com/questions/72967793/keyboardinterrupt-with-python-multiprocessing-pool
def set_sigint_ignored():
    import signal

    signal.signal(signal.SIGINT, signal.SIG_IGN)


def main():
    import argparse
    import json
    import re
    import time

    from tools import version_config
    from tools import dmadata

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
    parser.add_argument("-j", dest="jobs", nargs="?", default=False, type=int)
    parser.add_argument("-f", dest="force", action="store_true")
    parser.add_argument("-s", dest="single", default=None)
    parser.add_argument("-r", dest="single_is_regex", default=None, action="store_true")
    args = parser.parse_args()

    vc = version_config.load_version_config(args.oot_version)

    dma_entries = dmadata.read_dmadata(
        memoryview((args.baserom_segments_dir / "dmadata").read_bytes()), 0
    )
    dmadata_table_rom_file_name_by_vrom = dict()
    for dma_entry, name in zip(dma_entries, vc.dmadata_segments.keys(), strict=True):
        dmadata_table_rom_file_name_by_vrom[
            (dma_entry.vrom_start, dma_entry.vrom_end)
        ] = name

    pools_desc = get_resources_desc(vc)

    last_extracts_json_p = args.output_dir / "last_extracts.json"
    try:
        with last_extracts_json_p.open("r") as f:
            last_extracts = json.load(f)
    except (OSError, json.decoder.JSONDecodeError):
        last_extracts = dict()

    def is_pool_desc_modified(pool_desc: ResourcesDescCollectionsPool):
        modified = False
        for rdc in pool_desc.collections:
            if isinstance(rdc.backing_memory, BaseromFileBackingMemory):
                if rdc.last_modified_time > last_extracts.get(
                    f"{rdc.out_path} {rdc.backing_memory.name}", 0
                ):
                    modified = True
        return modified

    def set_pool_desc_modified(pool_desc: ResourcesDescCollectionsPool):
        for rdc in pool_desc.collections:
            if isinstance(rdc.backing_memory, BaseromFileBackingMemory):
                last_extracts[f"{rdc.out_path} {rdc.backing_memory.name}"] = (
                    rdc.last_modified_time
                )

    version_memctx_base = MemoryContext(dmadata_table_rom_file_name_by_vrom)

    from .extase_oot64.dlist_resources import MtxResource, TextureResource
    from ..n64 import G_IM_FMT, G_IM_SIZ

    file_gIdentityMtx = File("sys_matrix__gIdentityMtx", size=0x40)
    file_gIdentityMtx.add_resource(MtxResource(file_gIdentityMtx, 0, "gIdentityMtx"))
    version_memctx_base.set_direct_file(vc.variables["gIdentityMtx"], file_gIdentityMtx)

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
        set((Path(__file__).parent / "write_source.txt").read_text().splitlines()),
    )

    z64_resource_handlers.register_resource_handlers()

    try:
        if args.single is not None:
            any_match = False
            any_pool_processed = False
            for pool_desc in pools_desc:
                pool_matches = False
                for coll in pool_desc.collections:
                    if isinstance(coll.backing_memory, BaseromFileBackingMemory):
                        if args.single_is_regex:
                            if re.fullmatch(args.single, coll.backing_memory.name):
                                pool_matches = True
                        else:
                            if coll.backing_memory.name == args.single:
                                pool_matches = True
                if pool_matches:
                    any_match = True
                    if args.force or is_pool_desc_modified(pool_desc):
                        process_pool(extraction_ctx, pool_desc)
                        set_pool_desc_modified(pool_desc)
                        any_pool_processed = True
            if any_pool_processed:
                print("Done!")
            elif not any_match:
                print("Not found:", args.single)
            else:
                print("Nothing to do")
        elif args.jobs is False:  # everything on one process
            any_pool_processed = False
            for pool_desc in pools_desc:
                if args.force or is_pool_desc_modified(pool_desc):
                    process_pool(extraction_ctx, pool_desc)
                    set_pool_desc_modified(pool_desc)
                    any_pool_processed = True
            if any_pool_processed:
                print("All done!")
            else:
                print("Nothing to do")
        else:  # multiprocessing
            import multiprocessing

            if args.force:
                pools_desc_to_extract = pools_desc
            else:
                pools_desc_modified = [
                    pool_desc
                    for pool_desc in pools_desc
                    if is_pool_desc_modified(pool_desc)
                ]
                pools_desc_to_extract = pools_desc_modified

            if pools_desc_to_extract:
                with multiprocessing.get_context("fork").Pool(
                    processes=args.jobs, initializer=set_sigint_ignored
                ) as pool:
                    jobs = [
                        (
                            pd,
                            pool.apply_async(
                                process_pool_wrapped, (extraction_ctx, pd)
                            ),
                        )
                        for pd in pools_desc_to_extract
                    ]
                    while jobs:
                        any_finished = False
                        still_waiting_for_jobs = []
                        for pd, ar in jobs:
                            try:
                                ar.get(0)
                            except multiprocessing.TimeoutError:
                                still_waiting_for_jobs.append((pd, ar))
                            else:
                                any_finished = True
                                set_pool_desc_modified(pd)
                        jobs = still_waiting_for_jobs
                        if not any_finished:
                            time.sleep(0.001)
                print("All done!")
            else:
                print("Nothing to do")
    except Exception as e:
        import traceback
        import sys

        if USE_RICH:
            rich.console.Console().print_exception()
            # TODO implement more __rich_repr__
            if e.__class__ in (Exception, AssertionError, NotImplementedError):
                print("rich.pretty.pprint(e.args):")
                rich.pretty.pprint(e.args, indent_guides=False)
            else:
                print("rich.pretty.pprint(e):")
                rich.pretty.pprint(e, indent_guides=False)
        else:
            traceback.print_exc(file=sys.stdout)
            print("Install rich for prettier output (`pip install rich`)")

        sys.exit(1)
    finally:
        with last_extracts_json_p.open("w") as f:
            json.dump(last_extracts, f)
