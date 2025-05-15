# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

from typing import TYPE_CHECKING

from ..oot64_data.misc_ids import SKIN_LIMB_TYPES

if TYPE_CHECKING:
    from ..extase.memorymap import MemoryContext

from ..extase.cdata_resources import (
    CDataResource,
    CDataArrayResource,
    CDataExt_Value,
    CDataExt_Struct,
    CDataExtWriteContext,
    cdata_ext_Vec3s,
)

from . import dlist_resources
from . import skeleton_resources


class SkinVertexArrayResource(CDataArrayResource):
    elem_cdata_ext = CDataExt_Struct(
        (
            ("index", CDataExt_Value.u16),
            ("s", CDataExt_Value.s16),
            ("t", CDataExt_Value.s16),
            ("normX", CDataExt_Value.s8),
            ("normY", CDataExt_Value.s8),
            ("normZ", CDataExt_Value.s8),
            ("alpha", CDataExt_Value.u8),
        )
    )

    def get_c_declaration_base(self):
        return f"SkinVertex {self.symbol_name}[]"

    def get_h_includes(self):
        return ("z64skin.h",)


class SkinTransformationArrayResource(CDataArrayResource):
    elem_cdata_ext = CDataExt_Struct(
        (
            ("limbIndex", CDataExt_Value.u8),
            ("pad1", CDataExt_Value.pad8),
            ("x", CDataExt_Value.s16),
            ("y", CDataExt_Value.s16),
            ("z", CDataExt_Value.s16),
            ("scale", CDataExt_Value.u8),
            ("pad9", CDataExt_Value.pad8),
        )
    )

    def get_c_declaration_base(self):
        return f"SkinTransformation {self.symbol_name}[]"

    def get_h_includes(self):
        return ("z64skin.h",)


class SkinLimbModifArrayResource(CDataArrayResource):
    def report_elem(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, dict)

        address = v["skinVertices"]
        assert isinstance(address, int)
        skin_vertices_res = memory_context.report_resource_at_segmented(
            resource,
            address,
            SkinVertexArrayResource,
            lambda file, offset: SkinVertexArrayResource(
                file,
                offset,
                f"{resource.name}_{offset:08X}_SkinVertices",
            ),
        )
        skin_vertices_res.set_length(v["vtxCount"])

        address = v["limbTransformations"]
        assert isinstance(address, int)
        skin_vertices_res = memory_context.report_resource_at_segmented(
            resource,
            address,
            SkinTransformationArrayResource,
            lambda file, offset: SkinTransformationArrayResource(
                file,
                offset,
                f"{resource.name}_{offset:08X}_SkinTransforms",
            ),
        )
        skin_vertices_res.set_length(v["transformCount"])

    def write_skinVertices(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        assert isinstance(v, int)
        address = v
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    def write_limbTransformations(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        assert isinstance(v, int)
        address = v
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    elem_cdata_ext = CDataExt_Struct(
        (
            ("vtxCount", CDataExt_Value.u16),
            ("transformCount", CDataExt_Value.u16),
            ("unk_4", CDataExt_Value.u16),
            ("pad6", CDataExt_Value.pad16),
            (
                "skinVertices",
                (CDataExt_Value("I").set_write(write_skinVertices)),
            ),  # SkinVertex*
            (
                "limbTransformations",
                (CDataExt_Value("I").set_write(write_limbTransformations)),
            ),  # SkinTransformation*
        )
    ).set_report(report_elem)

    def get_c_declaration_base(self):
        return f"SkinLimbModif {self.symbol_name}[]"

    def get_h_includes(self):
        return ("z64skin.h",)


class SkinAnimatedLimbDataResource(CDataResource):
    def report_limbModifications(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        skin_vertices_res = memory_context.report_resource_at_segmented(
            resource,
            address,
            SkinLimbModifArrayResource,
            lambda file, offset: SkinLimbModifArrayResource(
                file,
                offset,
                f"{resource.name}_{offset:08X}_SkinLimbModifs",
            ),
        )
        skin_vertices_res.set_length(resource.cdata_unpacked["limbModifCount"])

    def write_limbModifications(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        assert isinstance(v, int)
        address = v
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    cdata_ext = CDataExt_Struct(
        (
            ("totalVtxCount", CDataExt_Value.u16),
            ("limbModifCount", CDataExt_Value.u16),
            (
                "limbModifications",
                (
                    CDataExt_Value("I")
                    .set_report(report_limbModifications)
                    .set_write(write_limbModifications)
                ),
            ),  # SkinLimbModif*
            ("dlist", dlist_resources.cdata_ext_gfx_segmented),
        )
    )

    def get_c_declaration_base(self):
        return f"SkinAnimatedLimbData {self.symbol_name}"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError()

    def get_h_includes(self):
        return ("z64skin.h",)


class SkinLimbResource(CDataResource):
    def report_segment(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        segmentType = resource.cdata_unpacked["segmentType"]
        if segmentType == 4:  # SKIN_LIMB_TYPE_ANIMATED
            # segment is SkinAnimatedLimbData*
            assert address != 0
            memory_context.report_resource_at_segmented(
                resource,
                address,
                SkinAnimatedLimbDataResource,
                lambda file, offset: SkinAnimatedLimbDataResource(
                    file, offset, f"{resource.name}_{address:08X}_SkinAnimatedLimbData"
                ),
            )
        elif segmentType == 11:  # SKIN_LIMB_TYPE_NORMAL
            # segment is Gfx*
            assert address != 0
            dlist_resources.report_gfx_segmented(resource, memory_context, address)

    def write_segment(
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
            ("jointPos", cdata_ext_Vec3s),
            (
                "child",
                CDataExt_Value("B").set_write(
                    skeleton_resources.StandardLimbResource.write_limb_index
                ),
            ),
            (
                "sibling",
                CDataExt_Value("B").set_write(
                    skeleton_resources.StandardLimbResource.write_limb_index
                ),
            ),
            (
                "segmentType",
                CDataExt_Value("i").set_write_str_v(
                    lambda v: SKIN_LIMB_TYPES.get(v, f"{v}")
                ),
            ),
            (
                "segment",
                CDataExt_Value("I").set_report(report_segment).set_write(write_segment),
            ),
        )
    )

    def __init__(self, file, range_start, name):
        super().__init__(file, range_start, name)
        self.enum_member_name = f"LIMB_{file.name.upper()}_{range_start:06X}"

    def set_enum_member_name(self, enum_member_name: str):
        self.enum_member_name = enum_member_name

    def get_c_declaration_base(self):
        return f"SkinLimb {self.symbol_name}"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError()

    def get_h_includes(self):
        return ("z64skin.h",)


class SkinLimbsArrayResource(skeleton_resources.LimbsArrayResourceABC):
    limb_type = SkinLimbResource
    c_limb_type = "SkinLimb"


class SkeletonSkinResource(skeleton_resources.SkeletonResourceABC):
    limbs_array_type = SkinLimbsArrayResource
