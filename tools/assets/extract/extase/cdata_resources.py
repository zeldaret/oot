# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

import abc
import dataclasses
import io
from typing import TYPE_CHECKING, Callable, Any, Sequence, Union

if TYPE_CHECKING:
    from .memorymap import MemoryContext

from . import (
    RESOURCE_PARSE_SUCCESS,
    Resource,
    File,
    ResourceParseWaiting,
)

from .repr_c_struct import (
    CData,
    CData_Value,
    CData_Struct,
    CData_Array,
)


@dataclasses.dataclass
class CDataExtWriteContext:
    f: io.TextIOBase
    line_prefix: str
    inhibit_top_braces: bool


class CDataExt(CData, abc.ABC):

    report_f = None
    write_f = None

    def set_report(
        self, report_f: Callable[["CDataResource", "MemoryContext", Any], None]
    ):
        self.report_f = report_f
        return self

    def set_write(
        self,
        write_f: Callable[
            ["CDataResource", "MemoryContext", Any, CDataExtWriteContext],
            bool,
        ],
    ):
        """
        write_f should return True if it wrote anything
        """
        self.write_f = write_f
        return self

    def freeze(self):
        self.set_report = None
        self.set_write = None
        return self

    @abc.abstractmethod
    def write_default(
        self,
        resource: "CDataResource",
        memory_context: "MemoryContext",
        v: Any,
        f: io.TextIOBase,
        line_prefix: str,
        *,
        inhibit_top_braces: bool,
    ) -> bool: ...

    def report(
        self,
        resource: "CDataResource",
        memory_context: "MemoryContext",
        v: Any,
    ):
        if self.report_f:
            try:
                self.report_f(resource, memory_context, v)
            except:
                print("Error reporting data", self, self.report_f, resource, v)
                raise

    def write(
        self,
        resource: "CDataResource",
        memory_context: "MemoryContext",
        v: Any,
        f: io.TextIOBase,
        line_prefix: str,
        *,
        inhibit_top_braces: bool,
    ) -> bool:
        """
        Returns True if something has been written
        (typically, False will be returned if this data is struct padding)
        """
        if self.write_f:
            ret = self.write_f(
                resource,
                memory_context,
                v,
                CDataExtWriteContext(f, line_prefix, inhibit_top_braces),
            )
            # This assert is meant to ensure the function returns a value at all,
            # since it's easy to forget to return a value (typically True)
            assert isinstance(ret, bool), ("must return a bool", self.write_f)
        else:
            ret = self.write_default(
                resource,
                memory_context,
                v,
                f,
                line_prefix,
                inhibit_top_braces=inhibit_top_braces,
            )
            assert isinstance(ret, bool), self
        return ret


class CDataExt_Value(CData_Value, CDataExt):
    is_padding = False

    def padding(self):
        self.is_padding = True
        return self

    def freeze(self):
        self.padding = None
        return super().freeze()

    def set_write_str_v(self, str_v: Callable[[Any], str]):
        """Utility wrapper for set_write, writes the value as stringified by str_v."""

        def write_f(
            resource: "CDataResource",
            memory_context: "MemoryContext",
            v: Any,
            wctx: CDataExtWriteContext,
        ):
            wctx.f.write(wctx.line_prefix)
            wctx.f.write(str_v(v))
            return True

        self.set_write(write_f)
        return self

    def report(self, resource, memory_context, v):
        super().report(resource, memory_context, v)
        if self.is_padding:
            if v != 0:
                raise Exception("non-0 padding")

    def write_default(
        self, resource, memory_context, v, f, line_prefix, *, inhibit_top_braces
    ):
        assert (
            not inhibit_top_braces
        ), "CDataExt_Value can't inhibit top braces, it doesn't have any"
        if not self.is_padding:
            f.write(line_prefix)
            f.write(str(v))
            return True
        else:
            return False


CDataExt_Value.s8 = CDataExt_Value("b").freeze()
CDataExt_Value.u8 = CDataExt_Value("B").freeze()
CDataExt_Value.s16 = CDataExt_Value("h").freeze()
CDataExt_Value.u16 = CDataExt_Value("H").freeze()
CDataExt_Value.s32 = CDataExt_Value("i").freeze()
CDataExt_Value.u32 = CDataExt_Value("I").freeze()
CDataExt_Value.f32 = CDataExt_Value("f").freeze()
CDataExt_Value.f64 = CDataExt_Value("d").freeze()
CDataExt_Value.pointer = CDataExt_Value("I").freeze()

CDataExt_Value.pad8 = CDataExt_Value("b").padding().freeze()
CDataExt_Value.pad16 = CDataExt_Value("h").padding().freeze()
CDataExt_Value.pad32 = CDataExt_Value("i").padding().freeze()


INDENT = " " * 4


class CDataExt_Array(CData_Array, CDataExt):
    def __init__(self, element_cdata_ext: CDataExt, length: int):
        super().__init__(element_cdata_ext, length)
        self.element_cdata_ext = element_cdata_ext

    def report(self, resource, memory_context, v):
        assert isinstance(v, list)
        super().report(resource, memory_context, v)
        for elem in v:
            self.element_cdata_ext.report(resource, memory_context, elem)

    def write_default(
        self, resource, memory_context, v, f, line_prefix, *, inhibit_top_braces
    ):
        assert isinstance(v, list)
        if not inhibit_top_braces:
            f.write(line_prefix)
            f.write("{\n")
        for i, elem in enumerate(v):
            ret = self.element_cdata_ext.write(
                resource,
                memory_context,
                elem,
                f,
                line_prefix + INDENT,
                inhibit_top_braces=False,
            )
            assert ret
            f.write(f", // {i}\n")
        if not inhibit_top_braces:
            f.write(line_prefix)
            f.write("}")
        return True


class CDataExt_Struct(CData_Struct, CDataExt):
    def __init__(self, members: Sequence[tuple[str, CDataExt]]):
        super().__init__(members)
        self.members_ext = members

    def report(self, resource, memory_context, v):
        assert isinstance(v, dict)
        super().report(resource, memory_context, v)
        for member_name, member_cdata_ext in self.members_ext:
            member_cdata_ext.report(resource, memory_context, v[member_name])

    def write_default(
        self, resource, memory_context, v, f, line_prefix, *, inhibit_top_braces
    ):
        assert isinstance(v, dict)
        if not inhibit_top_braces:
            f.write(line_prefix)
            f.write("{\n")
        for member_name, member_cdata_ext in self.members_ext:
            if member_cdata_ext.write(
                resource,
                memory_context,
                v[member_name],
                f,
                line_prefix + INDENT,
                inhibit_top_braces=False,
            ):
                f.write(f", // {member_name}\n")
        if not inhibit_top_braces:
            f.write(line_prefix)
            f.write("}")
        return True


class CDataResource(Resource):

    # Set by child classes
    cdata_ext: CDataExt

    # Resource implementation

    def __init__(self, file: File, range_start: int, name: str):
        if not self.can_size_be_unknown:
            assert hasattr(self, "cdata_ext"), self.__class__
            assert self.cdata_ext is not None
            range_end = range_start + self.cdata_ext.size
        else:
            if hasattr(self, "cdata_ext") and self.cdata_ext is not None:
                range_end = range_start + self.cdata_ext.size
            else:
                range_end = None
        super().__init__(file, range_start, range_end, name)
        self._is_cdata_processed = False

    def try_parse_data(self, memory_context: "MemoryContext"):
        if self.can_size_be_unknown:
            assert hasattr(self, "cdata_ext") and self.cdata_ext is not None, (
                "Subclasses with can_size_be_unknown=True should redefine try_parse_data"
                " and call the superclass definition (CDataResource.try_parse_data)"
                " only once cdata_ext has been set",
                self.__class__,
            )
            assert (
                self.range_end is not None
            ), "Subclasses with can_size_be_unknown=True should also set range_end once the size is known"
        assert hasattr(self, "cdata_ext")
        assert self.cdata_ext is not None

        # In case the subclass does more involved processing, the self.is_data_parsed
        # bool wouldn't necessarily reflect the state of the cdata.
        # Use own bool self._is_cdata_processed to remember if cdata has been unpacked and
        # reported already.
        if not self._is_cdata_processed:
            self.cdata_unpacked = self.cdata_ext.unpack_from(
                self.file.data, self.range_start
            )

            self.cdata_ext.report(self, memory_context, self.cdata_unpacked)

            self._is_cdata_processed = True

        return RESOURCE_PARSE_SUCCESS

    def write_extracted(self, memory_context):
        with self.extract_to_path.open("w") as f:
            self.cdata_ext.write(
                self,
                memory_context,
                self.cdata_unpacked,
                f,
                "",
                inhibit_top_braces=self.braces_in_source,
            )
            f.write("\n")


class CDataArrayResource(CDataResource):
    """Helper for variable-length array resources.

    The length is unknown at object creation, and must be set eventually
    with set_length (for example by another resource).

    The length being set then allows this resource to be parsed.

    For static-length array resources, just use CDataResource.
    """

    def __init_subclass__(cls, /, **kwargs):
        super().__init_subclass__(can_size_be_unknown=True, **kwargs)

    elem_cdata_ext: CDataExt

    def __init__(self, file: File, range_start: int, name: str):
        super().__init__(file, range_start, name)
        self._length: Union[None, int] = None

    def set_length(self, length: int):
        if self._length is not None:
            if self._length != length:
                raise Exception(
                    "length already set and is different", self._length, length
                )
        assert length > 0
        self._length = length

    def try_parse_data(self, memory_context: "MemoryContext"):
        if self._length is None:
            raise ResourceParseWaiting(waiting_for=["self._length"])
        assert isinstance(self.elem_cdata_ext, CDataExt), (self.__class__, self)
        self.cdata_ext = CDataExt_Array(self.elem_cdata_ext, self._length)
        self.range_end = self.range_start + self.cdata_ext.size
        return super().try_parse_data(memory_context)

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return self.symbol_name
        else:
            raise ValueError

    def get_c_expression_length(self, resource_offset: int):
        if resource_offset == 0:
            return f"ARRAY_COUNT({self.symbol_name})"
        else:
            raise ValueError


class CDataArrayNamedLengthResource(CDataArrayResource):
    """CDataArrayResource and with a macro (define) for its length.

    This is useful for arrays that have a length that should be referenced somewhere,
    but cannot due to the order the definitions are in.

    This writes a macro to the .h for the length, along the symbol declaration,
    to be used in the declaration base (! by the subclass, in get_c_declaration_base)
    """

    def __init__(self, file: File, range_start: int, name: str):
        super().__init__(file, range_start, name)
        self.length_name = f"LENGTH_{self.symbol_name}"

    def write_c_declaration(self, h: io.TextIOBase):
        h.write(f"#define {self.length_name} {self._length}\n")
        super().write_c_declaration(h)


cdata_ext_Vec3s = CDataExt_Struct(
    (
        ("x", CDataExt_Value.s16),
        ("y", CDataExt_Value.s16),
        ("z", CDataExt_Value.s16),
    )
).freeze()


def write_Vec3s_aligned(resource, memory_context, v, wctx: CDataExtWriteContext):
    s = f'{v["x"]:6}, {v["y"]:6}, {v["z"]:6}'
    if not wctx.inhibit_top_braces:
        s = "{ " + s + " }"
    wctx.f.write(wctx.line_prefix)
    wctx.f.write(s)
    return True


cdata_ext_Vec3s_aligned = (
    CDataExt_Struct(
        (
            ("x", CDataExt_Value.s16),
            ("y", CDataExt_Value.s16),
            ("z", CDataExt_Value.s16),
        )
    )
    .set_write(write_Vec3s_aligned)
    .freeze()
)


class Vec3sArrayResource(CDataResource):

    elem_cdata_ext = cdata_ext_Vec3s

    def __init__(self, file: File, range_start: int, name: str, length: int):
        assert length > 0
        self.cdata_ext = CDataExt_Array(self.elem_cdata_ext, length)
        super().__init__(file, range_start, name)

    def get_c_declaration_base(self):
        return f"Vec3s {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return self.symbol_name
        else:
            raise ValueError()

    def get_c_expression_length(self, resource_offset: int):
        if resource_offset == 0:
            return f"ARRAY_COUNT({self.symbol_name})"
        else:
            raise ValueError()

    def get_h_includes(self):
        return ("z_math.h",)


class S16ArrayResource(CDataResource):

    elem_cdata_ext = CDataExt_Value.s16

    def __init__(self, file: File, range_start: int, name: str, length: int):
        assert length > 0
        self.cdata_ext = CDataExt_Array(self.elem_cdata_ext, length)
        super().__init__(file, range_start, name)

    def get_c_declaration_base(self):
        if hasattr(self, "HACK_IS_STATIC_ON"):
            return f"s16 {self.symbol_name}[{self.cdata_ext.size // self.elem_cdata_ext.size}]"
        return f"s16 {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return self.symbol_name
        else:
            raise ValueError()

    def get_c_expression_length(self, resource_offset: int):
        if resource_offset == 0:
            return f"ARRAY_COUNT({self.symbol_name})"
        else:
            raise ValueError()

    def get_h_includes(self):
        return ("ultra64.h",)


cdata_ext_Vec3f = CDataExt_Struct(
    (
        ("x", CDataExt_Value.f32),
        ("y", CDataExt_Value.f32),
        ("z", CDataExt_Value.f32),
    )
)


def fmt_hex_s(v: int, nibbles: int = 0):
    """Format v to 0x-prefixed uppercase hexadecimal, using (at least) the specified amount of nibbles.

    Meant for signed values (_s suffix),
    adds a space in place of where the - sign would be for positive values.

    Note compared to this,
    - f"{v:#X}" would produce an uppercase 0X (1 -> 0X1)
    - f"0x{v:X}" doesn't work with negative values (-1 -> 0x-1)
    """
    v_str = f"{v:0{nibbles}X}"
    if v < 0:
        v_str = v_str.removeprefix("-")
        return f"-0x{v_str}"
    else:
        return f" 0x{v_str}"


def fmt_hex_u(v: int, nibbles: int = 0):
    """Format v to 0x-prefixed uppercase hexadecimal, using (at least) the specified amount of nibbles.

    Meant for unsigned values (_u suffix),
    but won't fail for negative values.

    See: fmt_hex_s
    """
    v_str = f"{v:0{nibbles}X}"
    if v < 0:
        # Also handle v being negative just in case,
        # it will only mean the output isn't aligned as expected
        v_str = v_str.removeprefix("-")
        return f"-0x{v_str}"
    else:
        return f"0x{v_str}"
