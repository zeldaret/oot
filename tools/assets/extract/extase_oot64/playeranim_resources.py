# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from ..extase import MemoryContext

from ..extase.cdata_resources import (
    CDataResource,
    CDataArrayResource,
    CDataExt_Struct,
    CDataExt_Value,
    CDataExtWriteContext,
    fmt_hex_s,
)


class PlayerAnimationDataResource(CDataArrayResource):
    elem_cdata_ext = CDataExt_Value("h").set_write_str_v(lambda v: fmt_hex_s(v))

    def __init__(self, file, range_start, name):
        super().__init__(file, range_start, name)
        self.frame_count_name = f"FRAMECOUNT_{self.symbol_name}"

    def set_frame_count(self, frame_count: int):
        self.set_length(frame_count * (22 * 3 + 1))
        self.frame_count = frame_count

    def write_c_declaration(self, h):
        h.write(f"#define {self.frame_count_name} {self.frame_count}\n")
        super().write_c_declaration(h)

    def get_c_declaration_base(self):
        return f"s16 {self.symbol_name}[{self.frame_count_name} * (PLAYER_LIMB_MAX * 3 + 1)]"

    def get_h_includes(self):
        return ("ultra64.h", "z64player.h")


class PlayerAnimationResource(CDataResource):

    def report(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, dict)
        segment = v["segment"]
        assert isinstance(segment, int)
        player_animation_data_res = memory_context.report_resource_at_segmented(
            resource,
            segment,
            PlayerAnimationDataResource,
            lambda file, offset: PlayerAnimationDataResource(
                file, offset, f"{resource.name}_{segment:08X}_PlayerAnimData"
            ),
        )
        player_animation_data_res.set_frame_count(v["common"]["frameCount"])

    def write_frameCount(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        address = resource.cdata_unpacked["segment"]
        assert isinstance(address, int)
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(
            memory_context.resolve_segmented(address)
            .get_resource(PlayerAnimationDataResource)
            .frame_count_name
        )
        return True

    def write_segment(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        assert isinstance(v, int)
        address = v
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    cdata_ext = CDataExt_Struct(
        (
            (
                "common",
                CDataExt_Struct(
                    (("frameCount", CDataExt_Value("h").set_write(write_frameCount)),)
                ),
            ),
            ("pad2", CDataExt_Value.pad16),
            ("segment", CDataExt_Value("I").set_write(write_segment)),
        )
    ).set_report(report)

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError()

    def get_c_declaration_base(self):
        return f"LinkAnimationHeader {self.symbol_name}"

    def get_h_includes(self):
        return ("z64animation.h",)
