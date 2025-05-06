# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

from typing import TYPE_CHECKING

from ..extase import RESOURCE_PARSE_SUCCESS

if TYPE_CHECKING:
    from ..extase.memorymap import MemoryContext

from ..extase.cdata_resources import (
    CDataResource,
    CDataArrayResource,
    CDataExt_Struct,
    CDataExtWriteContext,
    cdata_ext_Vec3f,
    cdata_ext_Vec3s,
    CDataExt_Value,
)

from . import animation_resources
from . import dlist_resources
from . import skeleton_resources


class LegacyLimbResource(CDataResource):

    def report_limb(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        if address != 0:
            memory_context.report_resource_at_segmented(
                resource,
                address,
                LegacyLimbResource,
                lambda file, offset: LegacyLimbResource(
                    file,
                    offset,
                    f"{resource.name}_{address:08X}_LegacyLimb",
                ),
            )

    def write_limb(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        assert isinstance(v, int)
        address = v
        wctx.f.write(wctx.line_prefix)
        if address == 0:
            wctx.f.write("NULL")
        else:
            wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    cdata_ext = CDataExt_Struct(
        (
            ("dList", dlist_resources.cdata_ext_gfx_segmented),
            ("trans", cdata_ext_Vec3f),
            ("rot", cdata_ext_Vec3s),
            ("pad16", CDataExt_Value.pad16),
            (
                "sibling",
                CDataExt_Value("I").set_report(report_limb).set_write(write_limb),
            ),  # LegacyLimb*
            (
                "child",
                CDataExt_Value("I").set_report(report_limb).set_write(write_limb),
            ),  # LegacyLimb*
        )
    )

    def get_c_declaration_base(self):
        return f"LegacyLimb {self.symbol_name}"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError()

    def get_h_includes(self):
        return ("z64animation_legacy.h",)


class LegacyJointKeyArrayResource(CDataArrayResource):
    elem_cdata_ext = CDataExt_Struct(
        (
            ("xMax", CDataExt_Value.s16),
            ("x", CDataExt_Value.s16),
            ("yMax", CDataExt_Value.s16),
            ("y", CDataExt_Value.s16),
            ("zMax", CDataExt_Value.s16),
            ("z", CDataExt_Value.s16),
        )
    )

    def get_c_declaration_base(self):
        return f"LegacyJointKey {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"{self.symbol_name}"
        else:
            raise ValueError()

    def get_h_includes(self):
        return ("z64animation_legacy.h",)


class LegacyAnimationResource(CDataResource):

    def write_frameData(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        assert isinstance(v, int)
        address = v
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    def write_jointKey(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        assert isinstance(v, int)
        address = v
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    cdata_ext = CDataExt_Struct(
        (
            ("frameCount", CDataExt_Value.s16),
            ("limbCount", CDataExt_Value.s16),
            ("frameData", CDataExt_Value("I").set_write(write_frameData)),  # s16*
            (
                "jointKey",
                CDataExt_Value("I").set_write(write_jointKey),
            ),  # LegacyJointKey*
        )
    )

    def try_parse_data(self, memory_context):
        super().try_parse_data(memory_context)

        address_frameData = self.cdata_unpacked["frameData"]
        assert isinstance(address_frameData, int)
        resource_frameData = memory_context.report_resource_at_segmented(
            self,
            address_frameData,
            animation_resources.AnimationFrameDataResource,
            lambda file, offset: animation_resources.AnimationFrameDataResource(
                file,
                offset,
                f"{self.name}_{address_frameData:08X}_FrameData",
            ),
        )

        address_jointKey = self.cdata_unpacked["jointKey"]
        assert isinstance(address_jointKey, int)
        resource_jointKey = memory_context.report_resource_at_segmented(
            self,
            address_jointKey,
            LegacyJointKeyArrayResource,
            lambda file, offset: LegacyJointKeyArrayResource(
                file,
                offset,
                f"{self.name}_{address_jointKey:08X}_JointKeys",
            ),
        )
        resource_jointKey.set_length(self.cdata_unpacked["limbCount"] + 1)

        # The length of the frameData array is
        # for now assumed to fill the space to the jointKey data,
        # at the very least before subtracting the offsets check that
        # the offsets belong to the same file
        # TODO better idea for computing this data's size

        if not (resource_frameData.file == resource_jointKey.file):
            raise NotImplementedError(
                "Expected frameData and jointIndices to be in the same file",
                self.cdata_unpacked,
                resource_frameData.file,
                resource_jointKey.file,
            )

        if resource_frameData.range_start < resource_jointKey.range_start:
            resource_frameData.length = (
                resource_jointKey.range_start - resource_frameData.range_start
            ) // animation_resources.AnimationFrameDataResource.elem_cdata_ext.size
        else:
            raise NotImplementedError(
                "Expected offsets of frameData, jointKey to be in order",
                self.cdata_unpacked,
                hex(resource_frameData.range_start),
                hex(resource_jointKey.range_start),
            )

        return RESOURCE_PARSE_SUCCESS

    def get_c_declaration_base(self):
        return f"LegacyAnimationHeader {self.symbol_name}"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError()

    def get_h_includes(self):
        return ("z64animation_legacy.h",)


class LegacyLimbsArrayResource(skeleton_resources.LimbsArrayResourceABC):
    limb_type = LegacyLimbResource
    c_limb_type = "LegacyLimb"

    def get_h_includes(self):
        return ("z64animation_legacy.h",)
