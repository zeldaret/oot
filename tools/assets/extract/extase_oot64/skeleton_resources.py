# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

import abc
from typing import TYPE_CHECKING

from ..extase import (
    RESOURCE_PARSE_SUCCESS,
    ResourceParseInProgress,
    ResourceParseWaiting,
)

if TYPE_CHECKING:
    from ..extase.memorymap import MemoryContext

from ..extase.cdata_resources import (
    CDataResource,
    CDataArrayResource,
    CDataExt_Value,
    CDataExt_Struct,
    CDataExt_Array,
    CDataExtWriteContext,
    cdata_ext_Vec3s,
)

from . import dlist_resources


class StandardLimbResource(CDataResource):
    def write_limb_index(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        assert isinstance(v, int)
        f = wctx.f
        f.write(wctx.line_prefix)
        if resource.skeleton_resource is None:
            f.write(f"{v}")
        else:
            f.write(f"/* {v} */ ")
            if v == 0xFF:
                f.write("LIMB_DONE")
            else:
                f.write(
                    resource.skeleton_resource.limbs_array_resource.limbs[
                        v
                    ].enum_member_name
                )
                f.write(" - 1")
        return True

    cdata_ext = CDataExt_Struct(
        (
            ("jointPos", cdata_ext_Vec3s),
            ("child", CDataExt_Value("B").set_write(write_limb_index)),
            ("sibling", CDataExt_Value("B").set_write(write_limb_index)),
            ("dList", dlist_resources.cdata_ext_gfx_segmented),
        )
    )

    def __init__(self, file, range_start, name):
        super().__init__(file, range_start, name)
        self.enum_member_name = f"LIMB_{file.name.upper()}_{range_start:06X}"
        self.skeleton_resource: "SkeletonResourceBaseABC | None" = None

    def set_enum_member_name(self, enum_member_name: str):
        self.enum_member_name = enum_member_name

    def get_c_declaration_base(self):
        return f"StandardLimb {self.symbol_name}"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError()

    def get_h_includes(self):
        return ("z64animation.h",)


class LODLimbResource(CDataResource):
    cdata_ext = CDataExt_Struct(
        (
            ("jointPos", cdata_ext_Vec3s),
            (
                "child",
                CDataExt_Value("B").set_write(StandardLimbResource.write_limb_index),
            ),
            (
                "sibling",
                CDataExt_Value("B").set_write(StandardLimbResource.write_limb_index),
            ),
            ("dLists", CDataExt_Array(dlist_resources.cdata_ext_gfx_segmented, 2)),
        )
    )

    def __init__(self, file, range_start, name):
        super().__init__(file, range_start, name)
        self.enum_member_name = f"LIMB_{file.name.upper()}_{range_start:06X}"

    def set_enum_member_name(self, enum_member_name: str):
        self.enum_member_name = enum_member_name

    def get_c_declaration_base(self):
        return f"LodLimb {self.symbol_name}"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError()

    def get_h_includes(self):
        return ("z64animation.h",)


class LimbsArrayResourceABC(CDataArrayResource):
    limb_type: type[CDataResource]
    c_limb_type: str

    def write_limb_element(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        assert isinstance(v, int)
        address = v
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    elem_cdata_ext = CDataExt_Value("I").set_write(write_limb_element)

    def __init__(self, file, range_start, name):
        super().__init__(file, range_start, name)
        self.limbs = None

    def try_parse_data(self, memory_context):
        ret = super().try_parse_data(memory_context)
        assert ret == RESOURCE_PARSE_SUCCESS
        self.limbs: list[self.limb_type] = []
        for address in self.cdata_unpacked:
            limb = memory_context.report_resource_at_segmented(
                self,
                address,
                self.limb_type,
                lambda file, offset: self.limb_type(
                    file,
                    offset,
                    f"{self.name}_{address:08X}_{self.c_limb_type}",
                ),
            )
            self.limbs.append(limb)
        return RESOURCE_PARSE_SUCCESS

    def get_c_declaration_base(self):
        return f"void* {self.symbol_name}[]"


class StandardLimbsArrayResource(LimbsArrayResourceABC):
    limb_type = StandardLimbResource
    c_limb_type = "StandardLimb"


class LODLimbsArrayResource(LimbsArrayResourceABC):
    limb_type = LODLimbResource
    c_limb_type = "LodLimb"


class SkeletonResourceBaseABC(CDataResource):
    limbs_array_type: type[LimbsArrayResourceABC]

    def __init__(self, file, range_start, name):
        super().__init__(file, range_start, name)
        self.enum_name = f"{self.symbol_name}Limb"
        self.enum_member_name_none = f"LIMB_{file.name.upper()}_{range_start:06X}_NONE"
        self.enum_member_name_max = f"LIMB_{file.name.upper()}_{range_start:06X}_MAX"
        self.limbs_array_resource = None

    def set_enum_name(self, enum_name: str):
        self.enum_name = enum_name

    def set_enum_member_name_none(self, enum_member_name_none: str):
        self.enum_member_name_none = enum_member_name_none

    def set_enum_member_name_max(self, enum_member_name_max: str):
        self.enum_member_name_max = enum_member_name_max

    def try_parse_data(self, memory_context):
        if self.limbs_array_resource is None:
            ret = super().try_parse_data(memory_context)
            assert ret == RESOURCE_PARSE_SUCCESS
            data = self.get_skeleton_header_cdata_unpacked()
            segment_resolve_result = memory_context.resolve_segmented(data["segment"])
            self.limbs_array_resource = segment_resolve_result.get_resource(
                self.limbs_array_type
            )
            if self.limbs_array_resource.limbs is None:
                raise ResourceParseInProgress(
                    new_progress_done=["reported limbs array"],
                    waiting_for=["self.limbs_array_resource.limbs"],
                )
        else:
            if self.limbs_array_resource.limbs is None:
                raise ResourceParseWaiting(
                    waiting_for=["self.limbs_array_resource.limbs"],
                )
        for limb in self.limbs_array_resource.limbs:
            limb.skeleton_resource = self
        return RESOURCE_PARSE_SUCCESS

    def write_c_declaration(self, h):
        h.write(f"typedef enum {self.enum_name} {{\n")
        limb_enum_members = (
            self.enum_member_name_none,
            *(limb.enum_member_name for limb in self.limbs_array_resource.limbs),
            self.enum_member_name_max,
        )
        h.write(
            ",\n".join(
                f"    /* {i:2} */ {enum_member}"
                for i, enum_member in enumerate(limb_enum_members)
            )
            + "\n"
        )
        h.write(f"}} {self.enum_name};\n")
        super().write_c_declaration(h)
        return True

    @abc.abstractmethod
    def get_skeleton_header_cdata_unpacked(self) -> dict: ...


class SkeletonResourceABC(SkeletonResourceBaseABC):

    def report_segment(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        resource_limbs = memory_context.report_resource_at_segmented(
            resource,
            address,
            resource.limbs_array_type,
            lambda file, offset: resource.limbs_array_type(
                file,
                offset,
                f"{resource.name}_{address:08X}_Limbs",
            ),
        )
        resource_limbs.set_length(
            resource.get_skeleton_header_cdata_unpacked()["limbCount"]
        )

    def write_segment(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        assert isinstance(v, int)
        address = v
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    def write_limbCount(
        resource, memory_context: "MemoryContext", v, wctx: CDataExtWriteContext
    ):
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(
            memory_context.get_c_expression_length_at_segmented(
                resource.get_skeleton_header_cdata_unpacked()["segment"]
            )
        )
        return True

    cdata_ext = CDataExt_Struct(
        (
            (
                "segment",
                CDataExt_Value("I").set_report(report_segment).set_write(write_segment),
            ),
            (
                "limbCount",
                CDataExt_Value("B").set_write(write_limbCount),
            ),
            ("pad5", CDataExt_Value.pad8),
            ("pad6", CDataExt_Value.pad16),
        )
    )

    def get_skeleton_header_cdata_unpacked(self):
        return self.cdata_unpacked

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError()

    def get_c_declaration_base(self):
        return f"SkeletonHeader {self.symbol_name}"

    def get_c_includes(self):
        return ("array_count.h",)

    def get_h_includes(self):
        return ("z64animation.h",)


class SkeletonNormalResource(SkeletonResourceABC):
    limbs_array_type = StandardLimbsArrayResource


class SkeletonNormalLODResource(SkeletonResourceABC):
    limbs_array_type = LODLimbsArrayResource


class SkeletonFlexResourceABC(SkeletonResourceBaseABC):
    skeleton_type: type[SkeletonResourceABC]

    # For SkeletonResourceABC.report_segment
    @property
    def limbs_array_type(self):
        return self.skeleton_type.limbs_array_type

    def __init__(self, file, range_start, name):
        self.cdata_ext = CDataExt_Struct(
            (
                ("sh", self.skeleton_type.cdata_ext),
                ("dListCount", CDataExt_Value.u8),
                ("pad9", CDataExt_Value.pad8),
                ("pad10", CDataExt_Value.pad16),
            )
        )
        super().__init__(file, range_start, name)

    def get_skeleton_header_cdata_unpacked(self):
        return self.cdata_unpacked["sh"]

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError()

    def get_c_declaration_base(self):
        return f"FlexSkeletonHeader {self.symbol_name}"

    def get_c_includes(self):
        return ("array_count.h",)

    def get_h_includes(self):
        return ("z64animation.h",)


class SkeletonFlexResource(SkeletonFlexResourceABC):
    skeleton_type = SkeletonNormalResource


class SkeletonFlexLODResource(SkeletonFlexResourceABC):
    skeleton_type = SkeletonNormalLODResource
