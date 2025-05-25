# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

import abc
import dataclasses
from functools import cache
from pathlib import Path
from typing import Callable, Optional
from xml.etree import ElementTree

from tools import version_config


class BackingMemory(abc.ABC):
    pass


@dataclasses.dataclass
class BaseromFileBackingMemory(BackingMemory):
    name: str
    range: Optional[tuple[int, int]]
    """If set, consider file_data[range[0]:range[1]] instead of the full file"""


@dataclasses.dataclass
class NoBackingMemory(BackingMemory):
    pass


# eq=False so this uses id-based equality and hashing
# Subclasses must also be made to use id-based equality and hashing
@dataclasses.dataclass(eq=False)
class ResourceDesc(abc.ABC):
    """A resource is a data unit.
    For example, a symbol's data such as a DList or a texture."""

    symbol_name: str
    offset: int
    """How many bytes into the backing memory the resource is located at"""
    collection: "ResourcesDescCollection" = dataclasses.field(repr=False)
    origin: object
    """opaque object with data about where this resource comes from (for debugging)"""

    hack_modes: set[str] = dataclasses.field(init=False, default_factory=set)


class StartAddress(abc.ABC):
    pass


@dataclasses.dataclass
class VRAMStartAddress(StartAddress):
    vram: int


@dataclasses.dataclass
class SegmentStartAddress(StartAddress):
    segment: int


@dataclasses.dataclass(eq=False)
class ResourcesDescCollection:
    """A collection is a list of resources backed by the same memory."""

    out_path: Path
    backing_memory: BackingMemory
    start_address: Optional[StartAddress]
    resources: list[ResourceDesc]
    last_modified_time: float
    depends: list["ResourcesDescCollection"]


@dataclasses.dataclass(eq=False)
class ResourcesDescCollectionsPool:
    """A pool contains a minimal set of interconnected collections.
    For example, gkeep and all files using gkeep,
    or more simply a single collection with no connection."""

    collections: list[ResourcesDescCollection]


ResourceHandlerPass2Callback = Callable[[ResourcesDescCollectionsPool], None]


@dataclasses.dataclass
class ResourceHandlerNeedsPass2Exception(Exception):
    resource: ResourceDesc
    pass2_callback: ResourceHandlerPass2Callback


# eq=False so this uses id-based equality and hashing
@dataclasses.dataclass(eq=False)
class AssetConfigPiece:
    ac: version_config.AssetConfig
    last_modified_time: float = None
    etree: ElementTree.ElementTree = None
    depends: list["AssetConfigPiece"] = dataclasses.field(default_factory=list)
    """The AssetConfigPiece s this instance depends on"""
    collections: list[ResourcesDescCollection] = dataclasses.field(default_factory=list)


def get_resources_desc(vc: version_config.VersionConfig):
    # Wrap AssetConfig objects in AssetConfigPiece for hashability and to collect data
    acps = [AssetConfigPiece(ac) for ac in vc.assets]

    # Parse xmls
    for acp in acps:
        acp.last_modified_time = acp.ac.xml_path.stat().st_mtime
        try:
            with acp.ac.xml_path.open(encoding="UTF-8") as f:
                etree = ElementTree.parse(f)
            acp.etree = etree
        except Exception as e:
            raise Exception(f"Error when parsing XML for {acp}") from e

    # Resolve pools
    acp_by_name = {acp.ac.name: acp for acp in acps}
    pools = {acp: {acp} for acp in acps}
    for acp in acps:
        try:
            rootelem = acp.etree.getroot()
            assert rootelem.tag == "Root", rootelem.tag
            for fileelem in rootelem:
                assert fileelem.tag in {"ExternalFile", "File"}, fileelem.tag
                if fileelem.tag == "ExternalFile":
                    externalfile_name = str(
                        Path(fileelem.attrib["OutPath"]).relative_to("assets")
                    )
                    assert externalfile_name in acp_by_name, externalfile_name
                    externalfile_acp = acp_by_name[externalfile_name]
                    acp.depends.append(externalfile_acp)
                    acp_pool = pools[acp]
                    externalfile_acp_pool = pools[externalfile_acp]
                    merged_pool = acp_pool | externalfile_acp_pool
                    for merged_pool_acp in merged_pool:
                        pools[merged_pool_acp] = merged_pool
        except Exception as e:
            raise Exception(f"Error while resolving pools with {acp}") from e

    # List unique pools
    pools_unique: list[set[AssetConfigPiece]] = []
    while pools:
        pool = next(iter(pools.values()))
        pools_unique.append(pool)
        for acp in pool:
            del pools[acp]

    # Build resources for all pools
    pools: list[ResourcesDescCollectionsPool] = []
    for pool in pools_unique:
        try:
            all_needs_pass2_exceptions: list[ResourceHandlerNeedsPass2Exception] = []
            rescolls: list[ResourcesDescCollection] = []

            # Pass 1: create Resource objects
            for acp in pool:
                try:
                    rootelem = acp.etree.getroot()
                    for fileelem in rootelem:
                        if fileelem.tag == "File":
                            rc, needs_pass2_exceptions = (
                                _get_resources_fileelem_to_resourcescollection_pass1(
                                    vc, pool, acp, fileelem
                                )
                            )
                            acp.collections.append(rc)
                            rescolls.append(rc)
                            all_needs_pass2_exceptions.extend(needs_pass2_exceptions)
                except Exception as e:
                    raise Exception(f"Error with {acp}") from e

            rcpool = ResourcesDescCollectionsPool(rescolls)

            #
            for acp in pool:
                for acp_coll in acp.collections:
                    acp_coll.depends.extend(
                        (_coll for _coll in acp.collections if _coll != acp_coll)
                    )
                    for acp_dep in acp.depends:
                        acp_coll.depends.extend(acp_dep.collections)

            # Pass 2: execute callbacks
            for needs_pass2_exc in all_needs_pass2_exceptions:
                try:
                    needs_pass2_exc.pass2_callback(rcpool)
                except Exception as e:
                    raise Exception(
                        f"Error with pass 2 callback for {needs_pass2_exc.resource}"
                    ) from e

            pools.append(rcpool)

        except Exception as e:
            raise Exception(f"Error with pool {pool}") from e

    return pools


def _get_resources_fileelem_to_resourcescollection_pass1(
    vc: version_config.VersionConfig,
    pool: list[AssetConfigPiece],
    acp: AssetConfigPiece,
    fileelem: ElementTree.Element,
):
    # Determine backing_memory
    if acp.ac.start_offset is None:
        assert acp.ac.end_offset is None
        baserom_file_range = None
    else:
        assert acp.ac.end_offset is not None
        baserom_file_range = (acp.ac.start_offset, acp.ac.end_offset)
    backing_memory = BaseromFileBackingMemory(
        name=fileelem.attrib["Name"],
        range=baserom_file_range,
    )

    # Determine start_address
    if any(
        acp.ac.name.startswith(_prefix) for _prefix in ("code/", "n64dd/", "overlays/")
    ):
        # File start address is vram
        assert "Segment" not in fileelem.attrib
        assert acp.ac.start_offset is not None and acp.ac.end_offset is not None, (
            "Unsupported combination: "
            f"start/end offset not in config for vram asset {acp.ac.name}"
        )
        if acp.ac.name.startswith("overlays/"):
            overlay_name = acp.ac.name.split("/")[1]
            start_address = VRAMStartAddress(
                vc.dmadata_segments[overlay_name].vram + acp.ac.start_offset
            )
        else:
            file_name = acp.ac.name.split("/")[0]  # "code" or "n64dd"
            start_address = VRAMStartAddress(
                vc.dmadata_segments[file_name].vram + acp.ac.start_offset
            )
    elif "Segment" in fileelem.attrib:
        # File start address is a segmented address
        assert acp.ac.start_offset is None and acp.ac.end_offset is None, (
            "Unsupported combination: "
            "start/end offset in config and file starts at a segmented address"
        )
        start_address = SegmentStartAddress(int(fileelem.attrib["Segment"]))
    else:
        # File does not have a start address
        start_address = None

    # resources
    resources: list[ResourceDesc] = []
    collection = ResourcesDescCollection(
        Path(acp.ac.name),
        backing_memory,
        start_address,
        resources,
        acp.last_modified_time,
        [],
    )
    needs_pass2_exceptions: list[ResourceHandlerNeedsPass2Exception] = []
    for reselem in fileelem:
        try:
            symbol_name = reselem.attrib["Name"]
            offset = int(reselem.attrib["Offset"], 16)
            res_handler = _get_resource_handler(reselem.tag)
            try:
                res = res_handler(symbol_name, offset, collection, reselem)
            except ResourceHandlerNeedsPass2Exception as needs_pass2_exc:
                res = needs_pass2_exc.resource
                needs_pass2_exceptions.append(needs_pass2_exc)
            assert isinstance(res, ResourceDesc)
            resources.append(res)
        except Exception as e:
            raise Exception(
                "Error with resource element:\n"
                + ElementTree.tostring(reselem, encoding="unicode")
            ) from e

    return collection, needs_pass2_exceptions


ResourceHandler = Callable[
    [str, int, ResourcesDescCollection, ElementTree.Element],
    ResourceDesc,
]


@cache
def _get_resource_handler(tag: str) -> ResourceHandler:
    from . import n64resources
    from . import z64resources

    resource_handlers = {
        "DList": n64resources.handler_DList,
        "Blob": n64resources.handler_Blob,
        "Mtx": n64resources.handler_Mtx,
        "Array": n64resources.handler_Array,
        "Texture": n64resources.handler_Texture,
        "Collision": z64resources.handler_Collision,
        "Animation": z64resources.handler_Animation,
        "PlayerAnimation": z64resources.handler_PlayerAnimation,
        "LegacyAnimation": z64resources.handler_LegacyAnimation,
        "Cutscene": z64resources.handler_Cutscene,
        "Scene": z64resources.handler_Scene,
        "Room": z64resources.handler_Room,
        "PlayerAnimationData": z64resources.handler_PlayerAnimationData,
        "Path": z64resources.handler_PathList,
        "Skeleton": z64resources.handler_Skeleton,
        "Limb": z64resources.handler_Limb,
        "CurveAnimation": z64resources.handler_CurveAnimation,
        "LimbTable": z64resources.handler_LimbTable,
    }

    rh = resource_handlers.get(tag)

    if rh is None:
        raise Exception(f"Unknown resource tag {tag}")
    else:
        return rh
