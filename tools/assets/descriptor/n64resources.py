# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

import dataclasses
import enum
from typing import Optional
from xml.etree.ElementTree import Element

from ..n64 import G_IM_FMT, G_IM_SIZ

from .base import (
    ResourceDesc,
    ResourcesDescCollection,
    ResourcesDescCollectionsPool,
    ResourceHandlerNeedsPass2Exception,
    BaseromFileBackingMemory,
    ResourceHasNoSizeError,
)
from . import xml_errors

# TODO remove
STATIC_ATTRIB = {"Static"}


class GfxMicroCode(enum.Enum):
    F3DEX = enum.auto()
    F3DEX2 = enum.auto()


@dataclasses.dataclass(eq=False)
class DListResourceDesc(ResourceDesc):
    length: Optional[int]
    ucode: GfxMicroCode
    raw_pointers: set[int] = dataclasses.field(default_factory=set)
    """Pointers in the dlist that are fine to keep raw ("in hex") instead of using symbols"""

    def get_size(self):
        if self.length is None:
            raise ResourceHasNoSizeError()
        return self.length * 8


def handler_DList(symbol_name, offset, collection, reselem: Element):
    xml_errors.check_attrib(
        reselem, {"Name"}, {"Offset", "Length", "Ucode", "RawPointers"} | STATIC_ATTRIB
    )
    length = None
    if "Length" in reselem.attrib:
        length = int(reselem.attrib["Length"])
    if "Ucode" in reselem.attrib:
        ucode = GfxMicroCode[reselem.attrib["Ucode"].upper()]
    else:
        ucode = GfxMicroCode.F3DEX2
    res = DListResourceDesc(symbol_name, offset, collection, reselem, length, ucode)
    raw_pointers_str = reselem.attrib.get("RawPointers")
    if raw_pointers_str:
        for rp_str in raw_pointers_str.split(","):
            res.raw_pointers.add(int(rp_str, 16))
    return res


@dataclasses.dataclass(eq=False)
class BlobResourceDesc(ResourceDesc):
    size: int


def handler_Blob(symbol_name, offset, collection, reselem: Element):
    xml_errors.check_attrib(reselem, {"Name", "Size"}, {"Offset"} | STATIC_ATTRIB)
    size = int(reselem.attrib["Size"], 16)
    return BlobResourceDesc(symbol_name, offset, collection, reselem, size)


@dataclasses.dataclass(eq=False)
class MtxResourceDesc(ResourceDesc):
    pass


def handler_Mtx(symbol_name, offset, collection, reselem: Element):
    xml_errors.check_attrib(reselem, {"Name"}, {"Offset"} | STATIC_ATTRIB)
    return MtxResourceDesc(symbol_name, offset, collection, reselem)


@dataclasses.dataclass(eq=False)
class S16ArrayResourceDesc(ResourceDesc):
    count: int


@dataclasses.dataclass(eq=False)
class Vec3sArrayResourceDesc(ResourceDesc):
    count: int


@dataclasses.dataclass(eq=False)
class VtxArrayResourceDesc(ResourceDesc):
    count: int

    def get_size(self):
        return self.count * 0x10


def handler_Array(symbol_name, offset, collection, reselem: Element):
    xml_errors.check_attrib(reselem, {"Name", "Count"}, {"Offset"} | STATIC_ATTRIB)
    count = int(reselem.attrib["Count"])
    assert len(reselem) == 1, "Expected exactly one child of Array node"
    array_elem = reselem[0]
    if array_elem.tag == "Vtx":
        array_resource_type = VtxArrayResourceDesc
    elif (
        array_elem.tag == "Vector"
        and array_elem.attrib["Type"] == "s16"
        and int(array_elem.attrib["Dimensions"]) == 3
    ):
        array_resource_type = Vec3sArrayResourceDesc
    elif array_elem.tag == "Scalar" and array_elem.attrib["Type"] == "s16":
        array_resource_type = S16ArrayResourceDesc
    else:
        raise NotImplementedError(f"Array of {array_elem.tag}")
    return array_resource_type(symbol_name, offset, collection, reselem, count)


class TextureFormat(enum.Enum):
    RGBA16 = (G_IM_FMT.RGBA, G_IM_SIZ._16b)
    RGBA32 = (G_IM_FMT.RGBA, G_IM_SIZ._32b)
    CI4 = (G_IM_FMT.CI, G_IM_SIZ._4b)
    CI8 = (G_IM_FMT.CI, G_IM_SIZ._8b)
    I4 = (G_IM_FMT.I, G_IM_SIZ._4b)
    I8 = (G_IM_FMT.I, G_IM_SIZ._8b)
    IA4 = (G_IM_FMT.IA, G_IM_SIZ._4b)
    IA8 = (G_IM_FMT.IA, G_IM_SIZ._8b)
    IA16 = (G_IM_FMT.IA, G_IM_SIZ._16b)

    def __init__(self, fmt: G_IM_FMT, siz: G_IM_SIZ):
        self.fmt = fmt
        self.siz = siz


@dataclasses.dataclass(eq=False)
class TextureResourceDesc(ResourceDesc):
    format: TextureFormat
    width: int
    height: int

    def get_size(self):
        return self.width * self.height * self.format.siz.bpp // 8


@dataclasses.dataclass(eq=False)
class CITextureResourceDesc(TextureResourceDesc):
    tlut: TextureResourceDesc


def handler_Texture(
    symbol_name, offset, collection: ResourcesDescCollection, reselem: Element
):
    xml_errors.check_attrib(
        reselem,
        {"Name", "Format", "Width", "Height"},
        # TODO remove OutName, SplitTlut
        {
            "Offset",
            "OutName",
            "SplitTlut",
            "Tlut",
            "TlutOffset",
            "ExternalTlut",
            "ExternalTlutOffset",
            "HackMode",
        }
        | STATIC_ATTRIB,
    )
    format = TextureFormat[reselem.attrib["Format"].upper()]
    width = int(reselem.attrib["Width"])
    height = int(reselem.attrib["Height"])
    if format.fmt == G_IM_FMT.CI:
        res = CITextureResourceDesc(
            symbol_name, offset, collection, reselem, format, width, height, None
        )

        if reselem.attrib.get("SplitTlut") == "true":
            res.hack_modes.add("hackmode_split_tlut_true")
        if reselem.attrib.get("SplitTlut") == "false":
            res.hack_modes.add("hackmode_split_tlut_false")

        assert (
            "Tlut" in reselem.attrib
            or "TlutOffset" in reselem.attrib
            or "ExternalTlutOffset" in reselem.attrib
        ), f"CI texture {symbol_name} is missing tlut information"

        if "Tlut" in reselem.attrib:
            xml_errors.check_attrib(
                reselem,
                {"Name", "Format", "Width", "Height", "Tlut"},
                # TODO remove OutName, SplitTlut
                {"Offset", "OutName", "SplitTlut", "HackMode"} | STATIC_ATTRIB,
            )
            tlut_name = reselem.attrib["Tlut"]

            def pass2_callback(pool: ResourcesDescCollectionsPool):
                matching_tlut_resources = [
                    res for res in collection.resources if res.symbol_name == tlut_name
                ]
                assert len(matching_tlut_resources) == 1, (
                    f"Found {len(matching_tlut_resources)} resources named "
                    f"{tlut_name} instead of exactly one"
                )
                assert isinstance(
                    matching_tlut_resources[0], TextureResourceDesc
                ), matching_tlut_resources[0]
                res.tlut = matching_tlut_resources[0]

        elif "TlutOffset" in reselem.attrib:
            xml_errors.check_attrib(
                reselem,
                {"Name", "Format", "Width", "Height", "TlutOffset"},
                # TODO remove OutName, SplitTlut
                {"Offset", "OutName", "SplitTlut", "HackMode"} | STATIC_ATTRIB,
            )
            tlut_offset = int(reselem.attrib["TlutOffset"], 16)

            def pass2_callback(pool: ResourcesDescCollectionsPool):
                matching_tlut_resources = [
                    res for res in collection.resources if res.offset == tlut_offset
                ]
                assert len(matching_tlut_resources) == 1, (
                    f"Found {len(matching_tlut_resources)} resources at TlutOffset "
                    f"0x{tlut_offset:X} instead of exactly one"
                )
                assert isinstance(
                    matching_tlut_resources[0], TextureResourceDesc
                ), matching_tlut_resources[0]
                res.tlut = matching_tlut_resources[0]

        else:
            xml_errors.check_attrib(
                reselem,
                {
                    "Name",
                    "Format",
                    "Width",
                    "Height",
                    "ExternalTlut",
                    "ExternalTlutOffset",
                },
                # TODO remove OutName, SplitTlut
                {"Offset", "OutName", "SplitTlut", "HackMode"} | STATIC_ATTRIB,
            )
            external_tlut_file = reselem.attrib["ExternalTlut"]
            external_tlut_offset = int(reselem.attrib["ExternalTlutOffset"], 16)

            def pass2_callback(pool: ResourcesDescCollectionsPool):
                matching_collections = [
                    coll
                    for coll in pool.collections
                    if isinstance(coll.backing_memory, BaseromFileBackingMemory)
                    and coll.backing_memory.name == external_tlut_file
                ]
                assert len(matching_collections) == 1
                matching_tlut_resources = [
                    res
                    for res in matching_collections[0].resources
                    if res.offset == external_tlut_offset
                ]
                assert len(matching_tlut_resources) == 1, matching_tlut_resources
                assert isinstance(
                    matching_tlut_resources[0], TextureResourceDesc
                ), matching_tlut_resources[0]
                res.tlut = matching_tlut_resources[0]

        raise ResourceHandlerNeedsPass2Exception(res, pass2_callback)
    else:
        xml_errors.check_attrib(
            reselem,
            {"Name", "Format", "Width", "Height"},
            # TODO remove OutName
            {"Offset", "OutName", "HackMode"} | STATIC_ATTRIB,
        )
        res = TextureResourceDesc(
            symbol_name, offset, collection, reselem, format, width, height
        )
        if reselem.attrib.get("HackMode") == "ignore_orphaned_tlut":
            res.hack_modes.add("hackmode_ignore_orphaned_tlut")
        return res
