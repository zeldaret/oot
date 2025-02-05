import io
from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from ..extase.memorymap import MemoryContext

from ..extase.cdata_resources import (
    CDataResource,
    CDataArrayResource,
    CDataExt_Value,
    CDataExt_Struct,
    CDataExt_Array,
    cdata_ext_Vec3s,
)

from . import dlist_resources


class StandardLimbResource(CDataResource):
    cdata_ext = CDataExt_Struct(
        (
            ("jointPos", cdata_ext_Vec3s),
            ("child", CDataExt_Value.u8),
            ("sibling", CDataExt_Value.u8),
            ("dList", dlist_resources.cdata_ext_gfx_segmented),
        )
    )

    def get_c_declaration_base(self):
        return f"StandardLimb {self.symbol_name}"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError()


class LODLimbResource(CDataResource):
    cdata_ext = CDataExt_Struct(
        (
            ("jointPos", cdata_ext_Vec3s),
            ("child", CDataExt_Value.u8),
            ("sibling", CDataExt_Value.u8),
            ("dLists", CDataExt_Array(dlist_resources.cdata_ext_gfx_segmented, 2)),
        )
    )

    def get_c_declaration_base(self):
        return f"LodLimb {self.symbol_name}"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError()


class LimbsArrayResourceABC(CDataArrayResource):
    limb_type: type[CDataResource]
    c_limb_type: str

    def report_limb_element(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        memory_context.report_resource_at_segmented(
            resource,
            address,
            resource.limb_type,
            lambda file, offset: resource.limb_type(
                file, offset, f"{resource.name}_{address:08X}"
            ),
        )

    def write_limb_element(
        resource, memory_context: "MemoryContext", v, f: io.TextIOBase, line_prefix
    ):
        assert isinstance(v, int)
        address = v
        f.write(line_prefix)
        f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    elem_cdata_ext = (
        CDataExt_Value("I")
        .set_report(report_limb_element)
        .set_write(write_limb_element)
    )

    def get_c_declaration_base(self):
        return f"{self.c_limb_type}* {self.symbol_name}[]"


class StandardLimbsArrayResource(LimbsArrayResourceABC):
    limb_type = StandardLimbResource
    c_limb_type = "StandardLimb"


class LODLimbsArrayResource(LimbsArrayResourceABC):
    limb_type = LODLimbResource
    c_limb_type = "LodLimb"


class SkeletonResourceABC(CDataResource):
    limbs_array_type: type[LimbsArrayResourceABC]

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
        resource, memory_context: "MemoryContext", v, f: io.TextIOBase, line_prefix
    ):
        assert isinstance(v, int)
        address = v
        f.write(line_prefix)
        f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    def write_limbCount(
        resource, memory_context: "MemoryContext", v, f: io.TextIOBase, line_prefix
    ):
        f.write(line_prefix)
        f.write(
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


class SkeletonNormalResource(SkeletonResourceABC):
    limbs_array_type = StandardLimbsArrayResource


class SkeletonNormalLODResource(SkeletonResourceABC):
    limbs_array_type = LODLimbsArrayResource


class SkeletonFlexResourceABC(CDataResource):
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


class SkeletonFlexResource(SkeletonFlexResourceABC):
    skeleton_type = SkeletonNormalResource


class SkeletonFlexLODResource(SkeletonFlexResourceABC):
    skeleton_type = SkeletonNormalLODResource
