from __future__ import annotations
import io
from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from ..extase.memorymap import MemoryContext

from ..extase import (
    File,
    ResourceParseWaiting,
)
from ..extase.cdata_resources import (
    CDataResource,
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


class LimbsArrayResource(CDataResource, can_size_be_unknown=True):
    def report_limb_element(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        memory_context.report_resource_at_segmented(
            resource,
            address,
            StandardLimbResource,
            lambda file, offset: StandardLimbResource(
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

    def __init__(self, file: File, range_start: int, name: str):
        super().__init__(file, range_start, name)
        self.length = None

    def try_parse_data(self, memory_context: "MemoryContext"):
        if self.length is not None:
            self.cdata_ext = CDataExt_Array(self.elem_cdata_ext, self.length)
            self.range_end = self.range_start + self.cdata_ext.size
            return super().try_parse_data(memory_context)
        else:
            raise ResourceParseWaiting(waiting_for=["self.length"])

    def get_c_declaration_base(self):
        return f"void* {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"{self.symbol_name}"
        else:
            raise ValueError()

    def get_c_expression_length(self, resource_offset: int):
        if resource_offset == 0:
            return f"ARRAY_COUNT({self.symbol_name})"
        else:
            raise ValueError()


class SkeletonNormalResource(CDataResource):
    def report_segment(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        resource_limbs = memory_context.report_resource_at_segmented(
            resource,
            address,
            LimbsArrayResource,
            lambda file, offset: LimbsArrayResource(
                file,
                offset,
                f"{resource.name}_{address:08X}_Limbs",
            ),
        )
        resource_limbs.length = resource.get_skeleton_header_cdata_unpacked()[
            "limbCount"
        ]

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


class SkeletonFlexResource(CDataResource):
    cdata_ext = CDataExt_Struct(
        (
            (
                "sh",
                SkeletonNormalResource.cdata_ext,
            ),  # TODO FIXME this is bad, it ends up using StandardLimb s (or is it fine?)
            ("dListCount", CDataExt_Value.u8),
            ("pad9", CDataExt_Value.pad8),
            ("pad10", CDataExt_Value.pad16),
        )
    )

    def get_skeleton_header_cdata_unpacked(self):
        return self.cdata_unpacked["sh"]

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError()

    def get_c_declaration_base(self):
        return f"FlexSkeletonHeader {self.symbol_name}"
