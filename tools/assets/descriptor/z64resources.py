# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

import dataclasses
import enum
from typing import Optional
from xml.etree.ElementTree import Element

from .base import (
    ResourceDesc,
    ResourcesDescCollection,
    ResourceHandlerNeedsPass2Exception,
    ResourceHasNoSizeError,
)
from . import xml_errors


@dataclasses.dataclass(eq=False)
class CollisionResourceDesc(ResourceDesc):
    def get_size(self):
        return 0x2C


def handler_Collision(symbol_name, offset, collection, reselem: Element):
    xml_errors.check_attrib(reselem, {"Name"}, {"Offset"})
    return CollisionResourceDesc(symbol_name, offset, collection, reselem)


@dataclasses.dataclass(eq=False)
class AnimationResourceDesc(ResourceDesc):
    def get_size(self):
        return 0x10


def handler_Animation(symbol_name, offset, collection, reselem: Element):
    xml_errors.check_attrib(reselem, {"Name"}, {"Offset"})
    return AnimationResourceDesc(symbol_name, offset, collection, reselem)


@dataclasses.dataclass(eq=False)
class PlayerAnimationResourceDesc(ResourceDesc):
    pass


def handler_PlayerAnimation(symbol_name, offset, collection, reselem: Element):
    xml_errors.check_attrib(reselem, {"Name"}, {"Offset"})
    return PlayerAnimationResourceDesc(symbol_name, offset, collection, reselem)


@dataclasses.dataclass(eq=False)
class LegacyAnimationResourceDesc(ResourceDesc):
    pass


def handler_LegacyAnimation(symbol_name, offset, collection, reselem: Element):
    xml_errors.check_attrib(reselem, {"Name"}, {"Offset"})
    return LegacyAnimationResourceDesc(symbol_name, offset, collection, reselem)


@dataclasses.dataclass(eq=False)
class CutsceneResourceDesc(ResourceDesc):
    pass


def handler_Cutscene(symbol_name, offset, collection, reselem: Element):
    xml_errors.check_attrib(reselem, {"Name"}, {"Offset"})
    return CutsceneResourceDesc(symbol_name, offset, collection, reselem)


@dataclasses.dataclass(eq=False)
class SceneResourceDesc(ResourceDesc):
    pass


def handler_Scene(symbol_name, offset, collection, reselem: Element):
    xml_errors.check_attrib(reselem, {"Name"}, {"Offset"})
    return SceneResourceDesc(symbol_name, offset, collection, reselem)


@dataclasses.dataclass(eq=False)
class RoomResourceDesc(ResourceDesc):
    pass


def handler_Room(symbol_name, offset, collection, reselem: Element):
    xml_errors.check_attrib(reselem, {"Name"}, {"Offset", "HackMode"})
    res = RoomResourceDesc(symbol_name, offset, collection, reselem)
    if reselem.attrib.get("HackMode") == "syotes_room":
        res.hack_modes.add("hackmode_syotes_room")
    return res


@dataclasses.dataclass(eq=False)
class PlayerAnimationDataResourceDesc(ResourceDesc):
    frame_count: int


def handler_PlayerAnimationData(symbol_name, offset, collection, reselem: Element):
    xml_errors.check_attrib(reselem, {"Name", "FrameCount"}, {"Offset"})
    frame_count = int(reselem.attrib["FrameCount"])
    return PlayerAnimationDataResourceDesc(
        symbol_name, offset, collection, reselem, frame_count
    )


@dataclasses.dataclass(eq=False)
class PathListResourceDesc(ResourceDesc):
    num_paths: int


def handler_PathList(symbol_name, offset, collection, reselem: Element):
    xml_errors.check_attrib(reselem, {"Name", "NumPaths"}, {"Offset"})
    num_paths = int(reselem.attrib["NumPaths"])
    return PathListResourceDesc(symbol_name, offset, collection, reselem, num_paths)


class SkeletonType(enum.Enum):
    NORMAL = enum.auto()
    FLEX = enum.auto()
    CURVE = enum.auto()


class LimbType(enum.Enum):
    STANDARD = enum.auto()
    LOD = enum.auto()
    SKIN = enum.auto()
    CURVE = enum.auto()
    LEGACY = enum.auto()


@dataclasses.dataclass(eq=False)
class SkeletonResourceDesc(ResourceDesc):
    type: SkeletonType
    limb_type: LimbType
    limb_enum_name: Optional[str]
    limb_enum_none_member_name: Optional[str]
    limb_enum_max_member_name: Optional[str]

    def get_size(self):
        skel_size = {
            SkeletonType.NORMAL: 0x8,
        }.get(self.type)
        if skel_size is None:
            raise ResourceHasNoSizeError()
        return skel_size


def handler_Skeleton(symbol_name, offset, collection, reselem: Element):
    xml_errors.check_attrib(
        reselem,
        {"Name", "Type", "LimbType"},
        {"Offset", "EnumName", "LimbNone", "LimbMax"},
    )
    skel_type = SkeletonType[reselem.attrib["Type"].upper()]
    limb_type = LimbType[reselem.attrib["LimbType"].upper()]
    return SkeletonResourceDesc(
        symbol_name,
        offset,
        collection,
        reselem,
        skel_type,
        limb_type,
        reselem.attrib.get("EnumName"),
        reselem.attrib.get("LimbNone"),
        reselem.attrib.get("LimbMax"),
    )


@dataclasses.dataclass(eq=False)
class LimbResourceDesc(ResourceDesc):
    limb_type: LimbType
    limb_enum_member_name: Optional[str]

    def get_size(self):
        limb_size = {
            LimbType.STANDARD: 0xC,
        }.get(self.limb_type)
        if limb_size is None:
            raise ResourceHasNoSizeError()
        return limb_size


def handler_Limb(symbol_name, offset, collection, reselem: Element):
    xml_errors.check_attrib(reselem, {"Name", "LimbType"}, {"Offset", "EnumName"})
    limb_type = LimbType[reselem.attrib["LimbType"].upper()]
    return LimbResourceDesc(
        symbol_name,
        offset,
        collection,
        reselem,
        limb_type,
        reselem.attrib.get("EnumName"),
    )


@dataclasses.dataclass(eq=False)
class LimbTableResourceDesc(ResourceDesc):
    limb_type: LimbType
    count: int

    def get_size(self):
        return self.count * 4


def handler_LimbTable(symbol_name, offset, collection, reselem: Element):
    xml_errors.check_attrib(reselem, {"Name", "LimbType", "Count"}, {"Offset"})
    limb_type = LimbType[reselem.attrib["LimbType"].upper()]
    count = int(reselem.attrib["Count"])
    return LimbTableResourceDesc(
        symbol_name, offset, collection, reselem, limb_type, count
    )


@dataclasses.dataclass(eq=False)
class CurveAnimationResourceDesc(ResourceDesc):
    skeleton: SkeletonResourceDesc


def handler_CurveAnimation(
    symbol_name, offset, collection: ResourcesDescCollection, reselem: Element
):
    xml_errors.check_attrib(reselem, {"Name", "SkelOffset"}, {"Offset"})
    res = CurveAnimationResourceDesc(symbol_name, offset, collection, reselem, None)

    skel_offset = int(reselem.attrib["SkelOffset"], 16)

    def pass2_callback(pool):
        matching_tlut_resources = [
            res for res in collection.resources if res.offset == skel_offset
        ]
        assert len(matching_tlut_resources) == 1, (
            f"Found {len(matching_tlut_resources)} resources at SkelOffset "
            f"0x{skel_offset:X} instead of exactly one"
        )
        assert isinstance(
            matching_tlut_resources[0], SkeletonResourceDesc
        ), matching_tlut_resources[0]
        res.skeleton = matching_tlut_resources[0]

    raise ResourceHandlerNeedsPass2Exception(res, pass2_callback)
