from __future__ import annotations
import io
from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from ..extase.memorymap import MemoryContext

from ..extase import (
    RESOURCE_PARSE_SUCCESS,
    ResourceParseWaiting,
    File,
)
from ..extase.cdata_resources import (
    CDataResource,
    CDataExt_Value,
    CDataExt_Struct,
    CDataExt_Array,
)


class AnimationFrameDataResource(CDataResource, can_size_be_unknown=True):
    def write_binang(resource, memory_context, v, f: io.TextIOBase, line_prefix):
        f.write(line_prefix)
        f.write(f" 0x{v:04X}" if v >= 0 else "-0x" + f"{v:04X}".removeprefix("-"))
        return True

    elem_cdata_ext = CDataExt_Value("h").set_write(write_binang)

    def __init__(self, file: File, range_start: int, name: str):
        super().__init__(file, range_start, name)
        self.length = None

    def try_parse_data(self, memory_context):
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


class AnimationJointIndicesResource(CDataResource, can_size_be_unknown=True):
    elem_cdata_ext = CDataExt_Struct(
        (
            ("x", CDataExt_Value.u16),
            ("y", CDataExt_Value.u16),
            ("z", CDataExt_Value.u16),
        )
    )

    def __init__(self, file: File, range_start: int, name: str):
        super().__init__(file, range_start, name)
        self.length = None

    def try_parse_data(self, memory_context):
        if self.length is not None:
            self.cdata_ext = CDataExt_Array(self.elem_cdata_ext, self.length)
            self.range_end = self.range_start + self.cdata_ext.size
            return super().try_parse_data(memory_context)
        else:
            raise ResourceParseWaiting(waiting_for=["self.length"])

    def get_c_declaration_base(self):
        return f"JointIndex {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return self.symbol_name
        else:
            raise ValueError()


class AnimationResource(CDataResource):
    def write_frameData(
        resource, memory_context: "MemoryContext", v, f: io.TextIOBase, line_prefix
    ):
        assert isinstance(v, int)
        address = v
        f.write(line_prefix)
        f.write(memory_context.get_c_reference_at_segmented(address))
        return True

    def write_jointIndices(
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
                "common",
                CDataExt_Struct((("frameCount", CDataExt_Value.s16),)),
            ),
            ("pad2", CDataExt_Value.pad16),
            (
                "frameData",
                CDataExt_Value("I").set_write(write_frameData),
            ),
            (
                "jointIndices",
                CDataExt_Value("I").set_write(write_jointIndices),
            ),
            ("staticIndexMax", CDataExt_Value.u16),
            ("padE", CDataExt_Value.pad16),
        )
    )

    def try_parse_data(self, memory_context):
        super().try_parse_data(memory_context)

        frameData_address = self.cdata_unpacked["frameData"]
        assert isinstance(frameData_address, int)
        resource_frameData = memory_context.report_resource_at_segmented(
            self,
            frameData_address,
            AnimationFrameDataResource,
            lambda file, offset: AnimationFrameDataResource(
                file,
                offset,
                f"{self.name}_{frameData_address:08X}_FrameData",
            ),
        )

        jointIndices_address = self.cdata_unpacked["jointIndices"]
        assert isinstance(jointIndices_address, int)
        resource_jointIndices = memory_context.report_resource_at_segmented(
            self,
            jointIndices_address,
            AnimationJointIndicesResource,
            lambda file, offset: AnimationJointIndicesResource(
                file,
                offset,
                f"{self.name}_{jointIndices_address:08X}_JointIndices",
            ),
        )

        # The length of the frameData and jointIndices arrays is
        # for now assumed to fill the space to the animation,
        # at the very least before subtracting the offsets check that
        # the offsets belong to the same file
        # TODO better idea for computing this data's size

        if not (resource_frameData.file == resource_jointIndices.file == self.file):
            raise NotImplementedError(
                "Expected frameData and jointIndices to be in the same file as the animation",
                self.cdata_unpacked,
                resource_frameData.file,
                resource_jointIndices.file,
                self.file,
            )

        if (
            resource_frameData.range_start
            < resource_jointIndices.range_start
            < self.range_start
        ):
            resource_frameData.length = (
                resource_jointIndices.range_start - resource_frameData.range_start
            ) // AnimationFrameDataResource.elem_cdata_ext.size
            resource_jointIndices.length = (
                self.range_start - resource_jointIndices.range_start
            ) // AnimationJointIndicesResource.elem_cdata_ext.size
        else:
            raise NotImplementedError(
                "Expected offsets of frameData, jointIndices, animation to be in order",
                self.cdata_unpacked,
                hex(resource_frameData.range_start),
                hex(resource_jointIndices.range_start),
                hex(self.range_start),
            )

        return RESOURCE_PARSE_SUCCESS

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError()

    def get_c_declaration_base(self):
        return f"AnimationHeader {self.symbol_name}"
