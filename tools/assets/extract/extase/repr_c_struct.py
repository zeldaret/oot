from __future__ import annotations
import struct
import abc
from typing import Sequence, Any


# NOTE: this system does NOT handle struct alignment/padding automatically, it should be made explicit

# this system voluntarily does not handle variable length arrays. which is not a valid "type" in C anyway (?)
# having variable-sized data is too messy to handle, because it needs a size at some point anyway
# This choice allows the root CData ABC to have a size as a guaranteed attribute


# BOSA = "Byte Order, Size, and Alignment" for the struct module
# Big Endian
STRUCT_BOSA_CHAR = ">"


class CData(abc.ABC):
    @abc.abstractmethod
    def __init__(self, size: int):
        self.size = size

    # Unpack

    @abc.abstractmethod
    def unpack_from(self, data: memoryview, offset: int = 0) -> Any:
        ...


class CData_Value(CData):
    def __init__(self, format_char: str):
        assert format_char in set("bBhHiIfd")
        self.unpack_struct = struct.Struct(STRUCT_BOSA_CHAR + format_char)
        super().__init__(self.unpack_struct.size)

    def unpack_from(self, data: memoryview, offset: int = 0):
        return self.unpack_struct.unpack_from(data, offset)[0]


CData_Value.s8 = CData_Value("b")
CData_Value.u8 = CData_Value("B")
CData_Value.s16 = CData_Value("h")
CData_Value.u16 = CData_Value("H")
CData_Value.s32 = CData_Value("i")
CData_Value.u32 = CData_Value("I")
CData_Value.f32 = CData_Value("f")
CData_Value.f64 = CData_Value("d")
CData_Value.pointer = CData_Value("I")


class CData_Array(CData):
    def __init__(self, element_cdata: CData, length: int):
        assert length > 0
        self.element_cdata = element_cdata
        self.length = length
        super().__init__(element_cdata.size * length)

    def unpack_from(self, data: memoryview, offset: int = 0):
        array_unpacked = []

        for i in range(self.length):
            unpacked = self.element_cdata.unpack_from(data, offset)
            array_unpacked.append(unpacked)
            offset += self.element_cdata.size

        assert len(array_unpacked) == self.length

        return array_unpacked


class CData_Struct(CData):
    def __init__(self, members: Sequence[tuple[str, CData]]):
        # assert all members have different names
        assert len(members) == len(
            set(member_name for member_name, member_cdata in members)
        ), members

        self.members = members
        super().__init__(
            sum(member_cdata.size for member_name, member_cdata in members)
        )

        if __debug__:
            # Check alignment

            # This may mess up with CData instances other than CData_Value, Array and Struct
            def get_required_alignment(cdata: CData):
                if isinstance(cdata, CData_Struct):
                    return max(
                        get_required_alignment(cdata_member_cdata)
                        for cdata_member_name, cdata_member_cdata in cdata.members
                    )
                elif isinstance(cdata, CData_Array):
                    return get_required_alignment(cdata.element_cdata)
                else:
                    # Assume the alignment requirement corresponds to the size
                    # (e.g. this is correct for CData_Value)
                    return cdata.size

            # Check alignment of the members of the struct
            offset = 0
            for member_name, member_cdata in members:
                alignment = get_required_alignment(member_cdata)
                assert offset % alignment == 0, (member_name, offset, alignment)
                offset += member_cdata.size

            # Check alignment of the struct size
            alignment = get_required_alignment(self)
            assert self.size % alignment == 0, (self.size, alignment)

    def unpack_from(self, data: memoryview, offset: int = 0):
        struct_unpacked = dict()

        for member_name, member_cdata in self.members:
            member_unpacked = member_cdata.unpack_from(data, offset)
            struct_unpacked[member_name] = member_unpacked
            offset += member_cdata.size

        return struct_unpacked


def try_stuff():

    """
    struct {
        s8 fun;
        // u8 pad;
        s16 games;
    } array[] = { { 1, 2 }, { 3, 4 } };


    u8 varLenArray[] = { 1, 2, 3 };

    struct {
        u8* ptr;
        u16 len;
        struct {
            s32 secret1;
            u32 secret2;
        } mySubStruct;
    } data = { varLenArray, 3, { 421, 0x01020304 } };
    """

    array_bytes = bytes(
        [
            1,
            0,
            *(0, 2),
            3,
            0,
            *(0, 4),
        ]
    )
    varLenArray_bytes = bytes([1, 2, 3])
    data_bytes = bytes(
        [
            *(0x12, 0x34, 0x56, 0x78),
            *(0, 3),
            0,
            0,
            *(0, 0, 421 >> 8, 421 & 0xFF),
            *(1, 2, 3, 4),
        ]
    )

    arrayElem_CData_Struct = CData_Struct(
        (
            ("fun", CData_Value.s8),
            ("pad1", CData_Value.s8),
            ("games", CData_Value.s16),
        )
    )
    array_CData_Array = CData_Array(arrayElem_CData_Struct, 2)

    print(array_CData_Array.unpack_from(array_bytes))

    mySubStruct_CData_Struct = CData_Struct(
        (
            ("secret1", CData_Value.s32),
            ("secret2", CData_Value.u32),
        )
    )

    data_CData_Struct = CData_Struct(
        (
            ("ptr", CData_Value.pointer),
            ("len", CData_Value.u16),
            ("pad_6", CData_Value.s16),
            ("mySubStruct", mySubStruct_CData_Struct),
        )
    )

    data_unpacked = data_CData_Struct.unpack_from(data_bytes)
    print(data_unpacked)

    varLenArray_CData_Array = CData_Array(CData_Value.u8, data_unpacked["len"])

    print(varLenArray_CData_Array.unpack_from(varLenArray_bytes))

    data_integratedSubStruct_CData_Struct = CData_Struct(
        (
            ("ptr", CData_Value.pointer),
            ("len", CData_Value.u16),
            ("pad_6", CData_Value.s16),
            (
                "mySubStruct",
                CData_Struct(
                    (
                        ("secret1", CData_Value.s32),
                        ("secret2", CData_Value.u32),
                    )
                ),
            ),
        )
    )

    data_unpacked = data_integratedSubStruct_CData_Struct.unpack_from(data_bytes)
    print(data_unpacked)


if __name__ == "__main__":
    try_stuff()
