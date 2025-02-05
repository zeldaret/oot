from __future__ import annotations
import io
from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from ..extase.memorymap import MemoryContext

from ..extase import (
    File,
    RESOURCE_PARSE_SUCCESS,
    ResourceParseWaiting,
)
from ..extase.cdata_resources import (
    CDataResource,
    CDataExt_Struct,
    CDataExt_Value,
    CDataExt_Array,
)

from . import dlist_resources


class KnotCountsArrayResource(CDataResource, can_size_be_unknown=True):
    elem_cdata_ext = CDataExt_Value.u8

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
        return f"u8 {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return self.symbol_name
        else:
            raise ValueError()


class CurveInterpKnotArrayResource(CDataResource, can_size_be_unknown=True):
    elem_cdata_ext = CDataExt_Struct(
        (
            ("flags", CDataExt_Value.u16),
            ("abscissa", CDataExt_Value.s16),
            ("leftGradient", CDataExt_Value.s16),
            ("rightGradient", CDataExt_Value.s16),
            ("ordinate", CDataExt_Value.f32),
        )
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
        return f"CurveInterpKnot {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return self.symbol_name
        else:
            raise ValueError()


class ConstantDataArrayResource(CDataResource, can_size_be_unknown=True):
    elem_cdata_ext = CDataExt_Value.s16

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
        return f"s16 {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return self.symbol_name
        else:
            raise ValueError()


class CurveAnimationHeaderResource(CDataResource):
    def report_knotCounts(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        memory_context.report_resource_at_segmented(
            resource,
            address,
            KnotCountsArrayResource,
            lambda file, offset: KnotCountsArrayResource(
                file, offset, f"{resource.name}_{address:08X}_KnotCounts"
            ),
        )

    def write_knotCounts(
        resource, memory_context: "MemoryContext", v, f: io.TextIOBase, line_prefix
    ):
        assert isinstance(v, int)
        address = v
        f.write(line_prefix)
        f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    def report_interpolationData(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        memory_context.report_resource_at_segmented(
            resource,
            address,
            CurveInterpKnotArrayResource,
            lambda file, offset: CurveInterpKnotArrayResource(
                file, offset, f"{resource.name}_{address:08X}_InterpolationData"
            ),
        )

    def write_interpolationData(
        resource, memory_context: "MemoryContext", v, f: io.TextIOBase, line_prefix
    ):
        assert isinstance(v, int)
        address = v
        f.write(line_prefix)
        f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    def report_constantData(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        memory_context.report_resource_at_segmented(
            resource,
            address,
            ConstantDataArrayResource,
            lambda file, offset: ConstantDataArrayResource(
                file, offset, f"{resource.name}_{address:08X}_ConstantData"
            ),
        )

    def write_constantData(
        resource, memory_context: "MemoryContext", v, f: io.TextIOBase, line_prefix
    ):
        assert isinstance(v, int)
        address = v
        f.write(line_prefix)
        f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    cdata_ext = CDataExt_Struct(
        (
            (
                "knotCounts",
                CDataExt_Value("I")
                .set_report(report_knotCounts)
                .set_write(write_knotCounts),
            ),  # u8*
            (
                "interpolationData",
                CDataExt_Value("I")
                .set_report(report_interpolationData)
                .set_write(write_interpolationData),
            ),  # CurveInterpKnot*
            (
                "constantData",
                CDataExt_Value("I")
                .set_report(report_constantData)
                .set_write(write_constantData),
            ),  # s16*
            ("unk_0C", CDataExt_Value.s16),
            ("frameCount", CDataExt_Value.s16),
        )
    )

    def try_parse_data(self, memory_context):
        super().try_parse_data(memory_context)
        knotCounts = self.cdata_unpacked["knotCounts"]
        interpolationData = self.cdata_unpacked["interpolationData"]
        constantData = self.cdata_unpacked["constantData"]
        resource_knotCounts = memory_context.resolve_segmented(knotCounts).get_resource(
            KnotCountsArrayResource
        )
        resource_interpolationData = memory_context.resolve_segmented(
            interpolationData
        ).get_resource(CurveInterpKnotArrayResource)
        resource_constantData = memory_context.resolve_segmented(
            constantData
        ).get_resource(ConstantDataArrayResource)
        if (
            resource_knotCounts.file
            == resource_interpolationData.file
            == resource_constantData.file
            == self.file
        ):
            knotCounts_offset = resource_knotCounts.range_start
            constantData_offset = resource_constantData.range_start
            interpolationData_offset = resource_interpolationData.range_start
            animHeader_offset = self.range_start
            assert (
                knotCounts_offset
                < constantData_offset
                < interpolationData_offset
                < animHeader_offset
            )
            resource_knotCounts.length = (
                constantData_offset - knotCounts_offset
            ) // resource_knotCounts.elem_cdata_ext.size
            resource_constantData.length = (
                interpolationData_offset - constantData_offset
            ) // resource_constantData.elem_cdata_ext.size
            resource_interpolationData.length = (
                animHeader_offset - interpolationData_offset
            ) // resource_interpolationData.elem_cdata_ext.size

            return RESOURCE_PARSE_SUCCESS
        else:
            raise NotImplementedError

    def get_c_declaration_base(self):
        return f"CurveAnimationHeader {self.symbol_name}"

    def get_c_reference(self, resource_offset: int):
        raise ValueError()


class SkelCurveLimbResource(CDataResource):
    cdata_ext = CDataExt_Struct(
        (
            ("child", CDataExt_Value.u8),
            ("sibling", CDataExt_Value.u8),
            ("pad2", CDataExt_Value.pad16),
            (
                "dList",
                CDataExt_Array(
                    dlist_resources.cdata_ext_gfx_segmented,  # Gfx*
                    2,
                ),
            ),
        )
    )

    def get_c_declaration_base(self):
        return f"SkelCurveLimb {self.symbol_name}"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError()


class SkelCurveLimbArrayResource(CDataResource):
    def report_limb_element(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        memory_context.report_resource_at_segmented(
            resource,
            address,
            SkelCurveLimbResource,
            lambda file, offset: SkelCurveLimbResource(
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

    def __init__(self, file: File, range_start: int, name: str, length: int):
        self.cdata_ext = CDataExt_Array(self.elem_cdata_ext, length)
        super().__init__(file, range_start, name)

    def get_c_declaration_base(self):
        return f"SkelCurveLimb* {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return self.symbol_name
        else:
            raise ValueError()


class CurveSkeletonHeaderResource(CDataResource):
    def report_limbs(resource, memory_context: "MemoryContext", v):
        assert isinstance(v, int)
        address = v
        memory_context.report_resource_at_segmented(
            resource,
            address,
            SkelCurveLimbArrayResource,
            lambda file, offset: SkelCurveLimbArrayResource(
                file,
                offset,
                f"{resource.name}_Limbs_",
                resource.cdata_unpacked["limbCount"],
            ),
        )

    def write_limbs(
        resource, memory_context: "MemoryContext", v, f: io.TextIOBase, line_prefix
    ):
        assert isinstance(v, int)
        address = v
        f.write(line_prefix)
        f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    cdata_ext = CDataExt_Struct(
        (
            (
                "limbs",
                CDataExt_Value("I").set_report(report_limbs).set_write(write_limbs),
            ),  # SkelCurveLimb**
            ("limbCount", CDataExt_Value.u8),
            ("pad5", CDataExt_Value.pad8),
            ("pad6", CDataExt_Value.pad16),
        )
    )

    def get_c_declaration_base(self):
        return f"CurveSkeletonHeader {self.symbol_name}"

    def get_c_reference(self, resource_offset: int):
        raise ValueError()
