# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: CC0-1.0

import enum
import io
from pathlib import Path
import reprlib

from typing import TYPE_CHECKING, Union, Optional, Callable

try:
    from rich.pretty import pprint as rich_pprint
except ImportError:
    rich_pprint = print

import pygfxd

if TYPE_CHECKING:
    from ..extase.memorymap import MemoryContext
from ..extase.memorymap import UnmappedAddressError, UnexpectedResourceTypeError

from ..extase import (
    RESOURCE_PARSE_SUCCESS,
    ResourceParseWaiting,
    Resource,
    File,
)
from ..extase.cdata_resources import (
    CDataResource,
    CDataExt_Array,
    CDataExt_Struct,
    CDataExt_Value,
    CDataExtWriteContext,
    INDENT,
    fmt_hex_s,
    fmt_hex_u,
)


BEST_EFFORT = True

VERBOSE_ColorIndexedTexturesManager = False
VERBOSE_BEST_EFFORT_TLUT_NO_REAL_USER = True


class MtxResource(CDataResource):
    braces_in_source = False

    def write_mtx(resource, memory_context, v, wctx: CDataExtWriteContext):
        assert isinstance(v, dict)
        assert v.keys() == {"intPart", "fracPart"}
        intPart = v["intPart"]
        fracPart = v["fracPart"]

        f = wctx.f
        f.write(wctx.line_prefix)
        f.write("gdSPDefMtx(\n")

        for i in range(4):
            if i != 0:
                f.write(",\n")
            f.write(wctx.line_prefix + INDENT)

            for j in range(4):
                # #define IPART(x) (((s32)((x) * 0x10000) >> 16) & 0xFFFF)
                xi = intPart[j][i]
                # #define FPART(x)  ((s32)((x) * 0x10000) & 0xFFFF)
                xf = fracPart[j][i]
                # Reconstruct the `(s32)((x) * 0x10000)` but as a u32
                # (u32 since intPart and fracPart are u16 arrays)
                # This works since `(s32)((x) * 0x10000)` in the IPART and FPART
                # macros could be switched to `(u32)(s32)((x) * 0x10000)` without issue
                u32_x_s15_16 = (xi << 16) | xf
                # Cast to s32 (`(s32)(u32)(s32)((x) * 0x10000)` == `(s32)((x) * 0x10000)`)
                s32_x_s15_16 = (
                    u32_x_s15_16
                    if u32_x_s15_16 < 0x8000_0000
                    else u32_x_s15_16 - 0x1_0000_0000
                )
                x = s32_x_s15_16 / 0x10000

                if j != 0:
                    f.write(", ")
                f.write(f"{x}f")
        f.write("\n")

        f.write(wctx.line_prefix)
        f.write(")")

        return True

    cdata_ext = CDataExt_Struct(
        (
            ("intPart", CDataExt_Array(CDataExt_Array(CDataExt_Value.u16, 4), 4)),
            ("fracPart", CDataExt_Array(CDataExt_Array(CDataExt_Value.u16, 4), 4)),
        )
    ).set_write(write_mtx)

    def get_c_declaration_base(self):
        return f"Mtx {self.symbol_name}"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return f"&{self.symbol_name}"
        else:
            raise ValueError

    def get_h_includes(self):
        return ("ultra64.h",)


class VtxArrayResource(CDataResource):
    def write_elem(resource, memory_context, v, wctx: CDataExtWriteContext):
        assert isinstance(v, dict)
        wctx.f.write(wctx.line_prefix)
        wctx.f.write(
            f"VTX({v['x']:6}, {v['y']:6}, {v['z']:6}, "
            f"{fmt_hex_s(v['s']):>7}, {fmt_hex_s(v['t']):>7}, "
            f"{fmt_hex_u(v['crnx'], 2)}, {fmt_hex_u(v['cgny'], 2)}, {fmt_hex_u(v['cbnz'], 2)}, {fmt_hex_u(v['a'], 2)})"
        )
        return True

    element_cdata_ext = CDataExt_Struct(
        (
            ("x", CDataExt_Value.s16),
            ("y", CDataExt_Value.s16),
            ("z", CDataExt_Value.s16),
            (
                "pad6",
                CDataExt_Value.pad16,
            ),  # Not technically padding but unused and expected to always be 0
            ("s", CDataExt_Value.s16),
            ("t", CDataExt_Value.s16),
            ("crnx", CDataExt_Value.u8),
            ("cgny", CDataExt_Value.u8),
            ("cbnz", CDataExt_Value.u8),
            ("a", CDataExt_Value.u8),
        )
    ).set_write(write_elem)

    def __init__(self, file: File, range_start: int, range_end: int, name: str):
        num = (range_end - range_start) // self.element_cdata_ext.size
        self.cdata_ext = CDataExt_Array(self.element_cdata_ext, num)
        super().__init__(file, range_start, name)

    def get_c_declaration_base(self):
        if hasattr(self, "HACK_IS_STATIC_ON"):
            return f"Vtx {self.symbol_name}[{self.cdata_ext.length}]"
        return f"Vtx {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset % self.element_cdata_ext.size != 0:
            raise ValueError(
                "unaligned offset into vtx array",
                hex(resource_offset),
                self.element_cdata_ext.size,
            )
        index = resource_offset // self.element_cdata_ext.size
        return f"&{self.symbol_name}[{index}]"

    def get_c_includes(self):
        return ("gfx.h",)

    def get_h_includes(self):
        return ("ultra64.h",)


from ...n64 import G_IM_FMT, G_IM_SIZ, G_TT, G_MDSFT_TEXTLUT
from ... import n64texconv

G_IM_FMT_n64texconv_by_n64 = {
    G_IM_FMT.RGBA: n64texconv.G_IM_FMT_RGBA,
    G_IM_FMT.YUV: n64texconv.G_IM_FMT_YUV,
    G_IM_FMT.CI: n64texconv.G_IM_FMT_CI,
    G_IM_FMT.IA: n64texconv.G_IM_FMT_IA,
    G_IM_FMT.I: n64texconv.G_IM_FMT_I,
}
G_IM_SIZ_n64texconv_by_n64 = {
    G_IM_SIZ._4b: n64texconv.G_IM_SIZ_4b,
    G_IM_SIZ._8b: n64texconv.G_IM_SIZ_8b,
    G_IM_SIZ._16b: n64texconv.G_IM_SIZ_16b,
    G_IM_SIZ._32b: n64texconv.G_IM_SIZ_32b,
}


def write_n64_image_to_png(
    path: Path, width: int, height: int, fmt: G_IM_FMT, siz: G_IM_SIZ, data: memoryview
):
    n64texconv.N64Image.from_bin(
        data,
        width,
        height,
        G_IM_FMT_n64texconv_by_n64[fmt],
        G_IM_SIZ_n64texconv_by_n64[siz],
    ).to_png(str(path), False)


def write_n64_image_to_png_color_indexed(
    path: Path,
    width: int,
    height: int,
    fmt: G_IM_FMT,
    siz: G_IM_SIZ,
    data: memoryview,
    tlut_data: memoryview,
    tlut_count: int,
    tlut_fmt: G_IM_FMT,
):
    assert tlut_count * 2 == len(tlut_data)
    n64texconv.N64Image.from_bin(
        data,
        width,
        height,
        G_IM_FMT_n64texconv_by_n64[fmt],
        G_IM_SIZ_n64texconv_by_n64[siz],
        n64texconv.N64Palette.from_bin(tlut_data, G_IM_FMT_n64texconv_by_n64[tlut_fmt]),
    ).to_png(str(path), False)


class TextureResource(Resource):
    needs_build = True
    extracted_path_suffix = ".png"

    def __init__(
        self,
        file: File,
        range_start: int,
        name: str,
        fmt: G_IM_FMT,
        siz: G_IM_SIZ,
        width: int,
        height: int,
    ):
        size_bits = siz.bpp * width * height
        assert size_bits % 8 == 0, size_bits
        size_bytes = size_bits // 8
        range_end = range_start + size_bytes

        super().__init__(file, range_start, range_end, name)

        self.fmt = fmt
        self.siz = siz
        self.width = width
        self.height = height

        # For handling color-indexed textures:
        self.resource_tlut: Optional[TextureResource] = None
        """For CI textures, the TLUT used"""
        self.resources_ci_list: list[TextureResource] = []
        """For TLUT "textures", the CI textures using it"""

        if size_bytes % 8 == 0 and (file.alignment + range_start) % 8 == 0:
            self.alignment = 8
        elif size_bytes % 4 == 0 and (file.alignment + range_start) % 4 == 0:
            self.alignment = 4
        else:
            raise NotImplementedError(
                "unimplemented: unaligned texture size/offset",
                hex(size_bytes),
                hex(range_start),
            )

        alignment_bits = self.alignment * 8
        self.elem_type = f"u{alignment_bits}"
        assert self.elem_type in {"u64", "u32"}

        self.width_name = f"{self.symbol_name}_WIDTH"
        self.height_name = f"{self.symbol_name}_HEIGHT"

    def get_c_declaration_base(self):
        if hasattr(self, "HACK_IS_STATIC_ON"):
            if self.is_tlut():
                raise NotImplementedError
            return f"{self.elem_type} {self.symbol_name}[{self.height_name}*{self.width_name}*{self.siz.bpp}/8/sizeof({self.elem_type})]"
        return f"{self.elem_type} {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return self.symbol_name
        else:
            raise ValueError(self, hex(resource_offset))

    def resources_ci_list_append(self, resource_ci: "TextureResource"):
        if resource_ci not in self.resources_ci_list:
            self.resources_ci_list.append(resource_ci)

        HACK_NO_CHECK_TLUT_BOUNDS = self.name in {
            # this TLUT should be 184 colors instead of 136 as defined in the xml,
            # but then it would overlap with gZelda2_6TLUT.
            "gZelda2_5TLUT",
            # the skybox TLUTs are used "weirdly" (TODO understand)
            "gSunriseSkyboxTLUT",
            "gSunsetSkyboxTLUT",
            "gDayOvercastSkyboxTLUT",
            "gNightOvercastSkyboxTLUT",
            "gHoly1SkyboxTLUT",
        }

        if __debug__ and not HACK_NO_CHECK_TLUT_BOUNDS:
            # if not a TLUTResource, but only a TextureResource,
            # this TLUT is xml-defined (using <Texture>)
            if self.__class__ == TextureResource:
                # check the CI texture doesn't index OOB into this tlut

                if resource_ci.file.data is None:
                    # TODO see similar in TLUTResource.resources_ci_list_append
                    return

                # Copypasted from TLUTResource.resources_ci_list_append

                resource_ci_data = resource_ci.file.data[
                    resource_ci.range_start : resource_ci.range_end
                ]

                assert resource_ci.siz in {G_IM_SIZ._4b, G_IM_SIZ._8b}

                if resource_ci.siz == G_IM_SIZ._4b:
                    v_max = max(max((b >> 4) & 0xF, b & 0xF) for b in resource_ci_data)
                    assert v_max < 16

                if resource_ci.siz == G_IM_SIZ._8b:
                    v_max = max(resource_ci_data)
                    assert v_max < 256

                new_min_count = v_max + 1

                # end Copypasted

                cur_count = self.width * self.height

                assert cur_count >= new_min_count, (
                    "TLUT resource",
                    self,
                    "is defined as having",
                    cur_count,
                    "colors, but there is an image using it as having at least",
                    new_min_count,
                    "colors:",
                    resource_ci,
                )

    def set_tlut(self, resource_tlut: "TextureResource"):
        assert self.fmt == G_IM_FMT.CI, (self, resource_tlut)
        if self.resource_tlut is not None:
            HACK_NO_FAIL_MULTIPLE_TLUTS = self.name in {
                "gZelda2Tex_003A08",
            }
            if self.resource_tlut != resource_tlut and not HACK_NO_FAIL_MULTIPLE_TLUTS:
                # Technically not impossible so NotImplementedError
                raise NotImplementedError(
                    "Color-indexed texture using two different TLUTs",
                    self,
                    resource_tlut,
                )
            return

        # Assert resource_tlut is rgba16.
        # Note it could be ia16, but that's not implemented
        assert (
            resource_tlut.fmt == G_IM_FMT.RGBA and resource_tlut.siz == G_IM_SIZ._16b
        ), resource_tlut

        self.resource_tlut = resource_tlut
        assert self not in resource_tlut.resources_ci_list
        resource_tlut.resources_ci_list_append(self)

    def try_parse_data(self, memory_context):
        if self.fmt != G_IM_FMT.CI:
            # Nothing to do
            return RESOURCE_PARSE_SUCCESS
        else:
            if self.resource_tlut is None:
                raise ResourceParseWaiting(waiting_for=["self.resource_tlut"])
            return RESOURCE_PARSE_SUCCESS

    def is_tlut(self):
        """The result is only meaningful after all resources have been parsed

        (otherwise, for example, the dlists referencing this resource
        as a tlut may not have been parsed and this would be considered
        a regular texture)
        """
        return len(self.resources_ci_list) != 0

    def is_shared_tlut(self):
        # Same caveat as is_tlut
        return len(self.resources_ci_list) >= 2

    def tlut_can_omit_tlut_info_from_users(self):
        assert self.is_tlut()
        return len(self.resources_ci_list) == 1 and self.alignment == 8

    def tlut_get_count(self):
        assert self.is_tlut()
        return self.width * self.height

    def get_filename_stem(self):
        format_name = f"{self.fmt.name.lower()}{self.siz.bpp}"

        if self.elem_type != "u64":
            elem_type_suffix = f".{self.elem_type}"
        else:
            elem_type_suffix = ""

        if self.fmt == G_IM_FMT.CI:
            assert self.resource_tlut is not None
            tlut_info = f"tlut_{self.resource_tlut.name}"
            if self.resource_tlut.elem_type != "u64":
                tlut_info += f"_{self.resource_tlut.elem_type}"
            if not self.resource_tlut.tlut_can_omit_tlut_info_from_users():
                return f"{self.name}.{format_name}.{tlut_info}{elem_type_suffix}"
            else:
                return f"{self.name}.{format_name}{elem_type_suffix}"
        elif self.is_tlut():
            if not self.tlut_can_omit_tlut_info_from_users():
                return f"{self.name}.tlut.{format_name}{elem_type_suffix}"
            else:
                return f"{self.resources_ci_list[0].name}.tlut.{format_name}{elem_type_suffix}"
        else:
            return f"{self.name}.{format_name}{elem_type_suffix}"

    def write_extracted(self, memory_context):
        if self.is_tlut():
            # TLUTs are extracted as part of the color-indexed textures using them

            def is_all_resources_fake():
                return all(
                    hasattr(res, "FAKE_FOR_BEST_EFFORT")
                    for res in self.resources_ci_list
                )

            if BEST_EFFORT:
                if is_all_resources_fake():
                    assert self.fmt == G_IM_FMT.RGBA

                    if VERBOSE_BEST_EFFORT_TLUT_NO_REAL_USER and not getattr(
                        self, "HACK_ignore_orphaned_tlut", False
                    ):
                        print(
                            "BEST_EFFORT",
                            "no real (non-fake for best effort) ci resource uses this tlut",
                        )
                        rich_pprint(self)
                        print(
                            "  extracting the tlut as its own png",
                            self.extract_to_path.resolve().as_uri(),
                            "instead of relying on it being generated",
                            "\n  (note while the result may build and match the tlut probably is",
                            "the wrong size since there was no ci image to take/guess its length from)",
                        )

                    # Extract the tlut as png instead of relying on
                    # it being generated from pngs using it, since
                    # there are no such pngs.
                    # (Copypaste of the general case (non-tlut) below):
                    data = self.file.data[self.range_start : self.range_end]
                    assert len(data) == self.range_end - self.range_start
                    write_n64_image_to_png(
                        self.extract_to_path,
                        self.width,
                        self.height,
                        self.fmt,
                        self.siz,
                        data,
                    )
            else:
                # assert this TLUT is used by at least one real resource,
                # otherwise it won't be generated by anything
                assert not is_all_resources_fake()
            return

        data = self.file.data[self.range_start : self.range_end]
        assert len(data) == self.range_end - self.range_start
        if self.fmt == G_IM_FMT.CI:
            tlut_data = self.resource_tlut.file.data[
                self.resource_tlut.range_start : self.resource_tlut.range_end
            ]
            tlut_count = self.resource_tlut.tlut_get_count()
            tlut_fmt = self.resource_tlut.fmt
            write_n64_image_to_png_color_indexed(
                self.extract_to_path,
                self.width,
                self.height,
                self.fmt,
                self.siz,
                data,
                tlut_data,
                tlut_count,
                tlut_fmt,
            )
        else:
            write_n64_image_to_png(
                self.extract_to_path, self.width, self.height, self.fmt, self.siz, data
            )

    def write_c_declaration(self, h: io.TextIOBase):
        if self.is_tlut():
            # TODO
            h.writelines(
                (f"//#define {self.symbol_name}_TLUT_COUNT {self.tlut_get_count()}\n",)
            )
        else:
            h.writelines(
                (
                    f"#define {self.width_name} {self.width}\n",
                    f"#define {self.height_name} {self.height}\n",
                )
            )
        super().write_c_declaration(h)

    def get_h_includes(self):
        return ("ultra64.h",)

    @reprlib.recursive_repr()
    def __repr__(self):
        return super().__repr__().removesuffix(")") + (
            f", fmt={self.fmt}, siz={self.siz}"
            f", width={self.width}, height={self.height}"
            f", elem_type={self.elem_type}"
            f", resource_tlut={self.resource_tlut}, resources_ci_list={self.resources_ci_list}"
            ")"
        )

    def __rich_repr__(self):
        yield from super().__rich_repr__()
        yield "fmt", self.fmt
        yield "siz", self.siz
        yield "width", self.width
        yield "height", self.height
        yield "elem_type", self.elem_type
        yield "resource_tlut", self.resource_tlut
        yield "resources_ci_list", self.resources_ci_list

    __rich_repr__.angular = True


class TLUTResource(TextureResource, can_size_be_unknown=True):
    """
    Note this resource is only used for discovered TLUTs, not tluts from xmls
    (TODO maybe change the xmls eventually)
    Discovered TLUTs are different because their size is unknown
    """

    def __init__(self, file: File, range_start: int, name: str, fmt: G_IM_FMT):
        assert fmt in {G_IM_FMT.RGBA, G_IM_FMT.IA}

        # just to make TextureResource.__init__ happy
        # Note these values are picked so u64 elem_type is possible
        fake_width = 4
        fake_height = 1

        super().__init__(
            file, range_start, name, fmt, G_IM_SIZ._16b, fake_width, fake_height
        )

    def tlut_get_count(self):
        if self.range_end is None:
            raise Exception("cannot tlut_get_count, unknown count yet")
        return super().tlut_get_count()

    def resources_ci_list_append(self, resource_ci: "TextureResource"):
        super().resources_ci_list_append(resource_ci)

        if resource_ci.file.data is None:
            # Can't expand length, the user CI texture has no data attached
            # TODO handle better? but idk
            # maybe just a warning
            return

        resource_ci_data = resource_ci.file.data[
            resource_ci.range_start : resource_ci.range_end
        ]

        assert resource_ci.siz in {G_IM_SIZ._4b, G_IM_SIZ._8b}

        if resource_ci.siz == G_IM_SIZ._4b:
            v_max = max(max((b >> 4) & 0xF, b & 0xF) for b in resource_ci_data)
            assert v_max < 16

        if resource_ci.siz == G_IM_SIZ._8b:
            v_max = max(resource_ci_data)
            assert v_max < 256

        new_min_count = v_max + 1

        assert self.height == 1
        if new_min_count > self.width:
            # round width up to a multiple of 4, for elem_type=u64
            self.width = (new_min_count + 3) // 4 * 4

            assert self.width <= 256

            # TODO HACK this is hacky because not explicitly permitted,
            # once set self.range_end is assumed to be fixed
            # but surely it'll be fine (copium)
            # In practice nothing should reference inside a tlut,
            # so the resource has all the time to expand.
            # A better implementation would be to give a "final warning" kind of signal
            # to the resource on try_parse_data (add optional tryhard_parse_data ?)
            assert self.siz == G_IM_SIZ._16b
            self.range_end = self.range_start + self.width * self.height * 2


class TextureSplitTlutResource(TextureResource):

    def __init__(self, file, range_start, name, fmt, siz, width, height, lo_half: bool):
        assert fmt == G_IM_FMT.CI
        assert siz == G_IM_SIZ._8b
        super().__init__(file, range_start, name, fmt, siz, width, height)
        self.lo_half = lo_half

    def get_filename_stem(self):
        assert self.elem_type == "u64"
        assert self.resource_tlut.elem_type == "u64"

        return f"{self.name}.ci8.split_{'lo' if self.lo_half else 'hi'}.tlut_{self.resource_tlut.name}"

    def write_extracted(self, memory_context):
        data = self.file.data[self.range_start : self.range_end]
        assert len(data) == self.range_end - self.range_start

        if self.lo_half:
            assert all(_b < 128 for _b in data)
        else:
            assert all(_b >= 128 for _b in data)
            data = bytes(_b - 128 for _b in data)

        tlut_data = self.resource_tlut.file.data[
            self.resource_tlut.range_start : self.resource_tlut.range_end
        ]

        assert self.resource_tlut.tlut_get_count() == 128

        write_n64_image_to_png_color_indexed(
            self.extract_to_path,
            self.width,
            self.height,
            self.fmt,
            self.siz,
            data,
            tlut_data,
            128,
            self.resource_tlut.fmt,
        )


def gfxdis(
    *,
    input_buffer: Union[bytes, memoryview],
    output_callback: Optional[
        Callable[[bytes], None]  # deviates a bit from gfxd, no count arg/return
    ] = None,
    enable_caps: set[pygfxd.GfxdCap] = {
        pygfxd.GfxdCap.stop_on_end,
        pygfxd.GfxdCap.emit_dec_color,
    },
    target: pygfxd.gfx_ucode_t = pygfxd.gfxd_f3dex2,
    vtx_callback: Optional[Callable[[int, int], int]] = None,
    timg_callback: Optional[Callable[[int, int, int, int, int, int], int]] = None,
    tlut_callback: Optional[Callable[[int, int, int], int]] = None,
    mtx_callback: Optional[Callable[[int], int]] = None,
    dl_callback: Optional[Callable[[int], int]] = None,
    macro_fn: Optional[Callable[[], int]] = None,
    arg_fn: Optional[Callable[[int], None]] = None,
):
    for cap in (
        pygfxd.GfxdCap.stop_on_invalid,
        pygfxd.GfxdCap.stop_on_end,
        pygfxd.GfxdCap.emit_dec_color,
        pygfxd.GfxdCap.emit_q_macro,
        pygfxd.GfxdCap.emit_ext_macro,
    ):
        if cap in enable_caps:
            pygfxd.gfxd_enable(cap)
        else:
            pygfxd.gfxd_disable(cap)

    pygfxd.gfxd_target(target)

    pygfxd.gfxd_input_buffer(bytes(input_buffer))

    uncaught_exc_infos = []

    # output_callback

    if output_callback:

        def output_callback_wrapper(buf, count):
            try:
                output_callback(buf)
            except:
                import sys

                exc_info = sys.exc_info()
                uncaught_exc_infos.append(exc_info)
            return count

    else:

        def output_callback_wrapper(buf, count):
            return count

    pygfxd.gfxd_output_callback(output_callback_wrapper)

    # vtx_callback

    if vtx_callback:

        def vtx_callback_wrapper(vtx, num):
            try:
                ret = vtx_callback(vtx, num)
            except:
                import sys

                exc_info = sys.exc_info()
                uncaught_exc_infos.append(exc_info)

                ret = 0
            return ret

    else:

        def vtx_callback_wrapper(vtx, num):
            return 0

    pygfxd.gfxd_vtx_callback(vtx_callback_wrapper)

    # timg_callback

    if timg_callback:

        def timg_callback_wrapper(timg, fmt, siz, width, height, pal):
            try:
                ret = timg_callback(timg, fmt, siz, width, height, pal)
                assert isinstance(ret, int)
            except:
                import sys

                exc_info = sys.exc_info()
                uncaught_exc_infos.append(exc_info)

                ret = 0
            return ret

    else:

        def timg_callback_wrapper(timg, fmt, siz, width, height, pal):
            return 0

    pygfxd.gfxd_timg_callback(timg_callback_wrapper)

    # tlut_callback

    if tlut_callback:

        def tlut_callback_wrapper(tlut, idx, count):
            try:
                ret = tlut_callback(tlut, idx, count)
            except:
                import sys

                exc_info = sys.exc_info()
                uncaught_exc_infos.append(exc_info)

                ret = 0
            return ret

    else:

        def tlut_callback_wrapper(tlut, idx, count):
            return 0

    pygfxd.gfxd_tlut_callback(tlut_callback_wrapper)

    # mtx_callback

    if mtx_callback:

        def mtx_callback_wrapper(mtx):
            try:
                ret = mtx_callback(mtx)
            except:
                import sys

                exc_info = sys.exc_info()
                uncaught_exc_infos.append(exc_info)

                ret = 0
            return ret

    else:

        def mtx_callback_wrapper(mtx):
            return 0

    pygfxd.gfxd_mtx_callback(mtx_callback_wrapper)

    # dl_callback

    if dl_callback:

        def dl_callback_wrapper(dl):
            try:
                ret = dl_callback(dl)
            except:
                import sys

                exc_info = sys.exc_info()
                uncaught_exc_infos.append(exc_info)

                ret = 0
            return ret

    else:

        def dl_callback_wrapper(dl):
            return 0

    pygfxd.gfxd_dl_callback(dl_callback_wrapper)

    # macro_fn

    if macro_fn:

        def macro_fn_wrapper():
            try:
                ret = macro_fn()
            except:
                import sys

                exc_info = sys.exc_info()
                uncaught_exc_infos.append(exc_info)

                ret = 0

            # TODO consider:
            if uncaught_exc_infos:
                pygfxd.gfxd_input_buffer(
                    b""
                )  # interrupt current execution TODO check if this is safe and if it works
                ret = 1

            return ret

    else:

        def macro_fn_wrapper():
            ret = pygfxd.gfxd_macro_dflt()

            # TODO consider:
            if uncaught_exc_infos:
                pygfxd.gfxd_input_buffer(b"")  # TODO see same line above
                ret = 1

            return ret

    pygfxd.gfxd_macro_fn(macro_fn_wrapper)

    # arg_fn

    if arg_fn:

        def arg_fn_wrapper(arg_num):
            try:
                arg_fn(arg_num)
            except:
                import sys

                exc_info = sys.exc_info()
                uncaught_exc_infos.append(exc_info)

        pygfxd.gfxd_arg_fn(arg_fn_wrapper)
    else:
        pygfxd.gfxd_arg_fn(None)

    # Execute

    pygfxd.gfxd_execute()

    # The offset is in bytes and indicates the last command,
    # so add 8 (sizeof(Gfx))
    size = pygfxd.gfxd_macro_offset() + 8

    if uncaught_exc_infos:
        import traceback

        msg = "There were uncaught python errors in callbacks during gfxd execution."

        print()
        print(msg)
        print("vvv See below for a list of the traces of the uncaught errors:")

        for exc_info in uncaught_exc_infos:
            import sys

            print()
            traceback.print_exception(*exc_info, file=sys.stdout)

        print()
        print(msg)
        print("^^^ See above for a list of the traces of the uncaught errors.")

        raise Exception(
            msg,
            "See the standard output for a list of the traces of the uncaught errors.",
            uncaught_exc_infos,
        )

    return size


class StringWrapper:
    def __init__(
        self,
        data: Union[str, bytes],
        max_line_length,
        writer: Callable[[Union[str, bytes]], None],
    ):
        self.max_line_length = max_line_length
        self.pending_data = data
        self.writer = writer
        self.newline_char = "\n" if isinstance(data, str) else b"\n"
        self.space_char = " " if isinstance(data, str) else b" "

    def append(self, data: Union[str, bytes]):
        self.pending_data += data
        self.proc()

    def proc(self, flush=False):
        while len(self.pending_data) > self.max_line_length or (
            flush and self.pending_data
        ):
            i = self.pending_data.find(self.newline_char, 0, self.max_line_length)
            if i >= 0:
                i += 1
                self.writer(self.pending_data[:i])
                self.pending_data = self.pending_data[i:]
                continue

            i = self.pending_data.rfind(self.space_char, 1, self.max_line_length)
            if i < 0:
                i = self.pending_data.find(self.space_char, 1)
                if i < 0:
                    if flush:
                        i = len(self.pending_data)
                    else:
                        # Avoid adding a line return in the middle of a word
                        return
            self.writer(self.pending_data[:i])
            self.pending_data = self.pending_data[i:]
            if not flush or self.pending_data:
                self.writer(self.newline_char)

    def flush(self):
        self.proc(flush=True)


class Ucode(enum.Enum):
    f3dex = pygfxd.gfxd_f3dex
    f3dex2 = pygfxd.gfxd_f3dex2

    def __init__(self, gfxd_ucode: pygfxd.gfx_ucode_t):
        self.gfxd_ucode = gfxd_ucode


# TODO probably need to split TLUTResource from TextureResource
# to achieve cleaner code,
# tluts behave very differently


# TODO maybe refactor this once it works tm
class ColorIndexedTexturesManager:
    from dataclasses import dataclass

    @dataclass
    class Tex:
        timg: int
        fmt: G_IM_FMT
        siz: G_IM_SIZ
        width: int
        height: int
        pal: int

    @dataclass
    class Tlut:
        tlut: int
        idx: int
        count: int

    @dataclass
    class CIState:
        tlut_mode: G_TT
        tluts_count: int
        tluts: dict[int, "ColorIndexedTexturesManager.Tlut"]
        texs: list["ColorIndexedTexturesManager.Tex"]

    def __init__(self, *, HACK_late_SetTextureLUT=False):
        self.cur_tlut_mode: G_TT = None

        self.cur_tluts_count: int = None
        self.cur_tluts: dict[int, ColorIndexedTexturesManager.Tlut] = dict()
        self.cur_texs: list[ColorIndexedTexturesManager.Tex] = []

        self.ci_states: list[ColorIndexedTexturesManager.CIState] = []

        # Rarely,
        # gsDPSetTextureLUT comes after gsDPLoadTextureBlock and gsDPLoadTLUT,
        # instead of before
        self.HACK_late_SetTextureLUT = HACK_late_SetTextureLUT

    def ci_timg(self, timg, fmt: G_IM_FMT, siz: G_IM_SIZ, width, height, pal):
        if VERBOSE_ColorIndexedTexturesManager:
            print(
                "ColorIndexedTexturesManager.ci_timg",
                hex(timg),
                fmt,
                siz,
                width,
                height,
                pal,
            )
        assert fmt == G_IM_FMT.CI
        if not self.HACK_late_SetTextureLUT:
            assert self.cur_tlut_mode != G_TT.NONE

        self.cur_texs.append(
            ColorIndexedTexturesManager.Tex(timg, fmt, siz, width, height, pal)
        )

    def tlut(self, tlut, idx, count):
        if VERBOSE_ColorIndexedTexturesManager:
            print("ColorIndexedTexturesManager.tlut", hex(tlut), idx, count)
        if idx == -1:
            # HACK idx==-1 may be a libgfxd bug?
            assert count == 256
            idx = 0
        if not self.HACK_late_SetTextureLUT:
            assert self.cur_tlut_mode != G_TT.NONE
        if self.cur_tluts_count != count:
            self.cur_tluts.clear()  # TODO ? idk. (at worst it will cause errors)
            self.cur_tluts_count = count
        self.cur_tluts[idx] = ColorIndexedTexturesManager.Tlut(tlut, idx, count)

    def tlut_mode(self, tt: G_TT):
        if VERBOSE_ColorIndexedTexturesManager:
            print("ColorIndexedTexturesManager.tlut_mode", tt)
        if self.cur_tlut_mode != tt:
            if not self.HACK_late_SetTextureLUT:
                self.cur_tluts.clear()  # TODO ? idk. (at worst it will cause errors)
            self.cur_tlut_mode = tt

    def commit_state(self):
        if self.cur_tlut_mode == G_TT.NONE:
            return
        if not self.cur_texs:
            return
        assert self.cur_tluts
        assert self.cur_tluts_count is not None
        if self.cur_tlut_mode is None:
            if BEST_EFFORT:
                # Some dlists (eg gMegamiPiece2DL) inherit G_TT_RGBA16
                # since ia16 is uncommon if not unused, just default to that
                self.cur_tlut_mode = G_TT.RGBA16
        assert self.cur_tlut_mode is not None
        cur_state = ColorIndexedTexturesManager.CIState(
            self.cur_tlut_mode,
            self.cur_tluts_count,
            self.cur_tluts.copy(),
            self.cur_texs,
        )
        self.cur_texs = []
        self.ci_states.append(cur_state)
        if VERBOSE_ColorIndexedTexturesManager:
            print(
                "ColorIndexedTexturesManager.commit_state",
                "cur_state =",
                cur_state,
            )

    def report_states(self, reporter: Resource, memory_context: "MemoryContext"):
        if VERBOSE_ColorIndexedTexturesManager:
            print("ColorIndexedTexturesManager.report_states")
        for ci_state in self.ci_states:
            if VERBOSE_ColorIndexedTexturesManager:
                print("  ci_state =", ci_state)
            assert ci_state.tlut_mode != G_TT.NONE
            for tex in ci_state.texs:
                if VERBOSE_ColorIndexedTexturesManager:
                    print("    tex =", tex)
                assert tex.fmt == G_IM_FMT.CI

                # HACK
                if (
                    reporter.file.name
                    in {
                        "jyasinzou_room_5",
                        "jyasinzou_room_25",
                    }
                    and ci_state.tluts_count == 256
                    and tex.siz == G_IM_SIZ._4b
                ):
                    # For some reason jyasinzou_room_5DL_008EC0 has this:
                    """
                    gsDPLoadTextureBlock_4b(jyasinzou_sceneTex_019320, G_IM_FMT_CI, 64, 64, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR
                                            | G_TX_WRAP, 6, 6, G_TX_NOLOD, G_TX_NOLOD),
                    gsDPLoadTLUT_pal16(0, jyasinzou_sceneTLUT_018000),
                    gsDPLoadTextureBlock(jyasinzou_room_5Tex_00DFC8, G_IM_FMT_CI, G_IM_SIZ_8b, 64, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                                            G_TX_NOMIRROR | G_TX_WRAP, 6, 5, G_TX_NOLOD, G_TX_NOLOD),
                    gsDPLoadTLUT_pal256(jyasinzou_sceneTLUT_017DE0),
                    """
                    # (where the first texture & tlut loads are useless, overriden by the latter two)

                    # -> Ignore the first texture (in `tex` at this point)

                    # similar thing in jyasinzou_room_25DL_005050

                    # (note the condition to restrict this to the above cases is very broad,
                    #  just checking reporter.file.name, so this may happen more in those files
                    #  and not have been caught and documented here)

                    continue

                # Not a proper hard requirement but if this fails
                # something is probably wrong, look at details then
                assert (
                    ci_state.tluts_count
                    == {
                        G_IM_SIZ._4b: 16,
                        G_IM_SIZ._8b: 256,
                    }[tex.siz]
                ), (reporter, ci_state, tex)

                if ci_state.tluts_count > 16:
                    assert ci_state.tluts.keys() == {0}, ci_state.tluts

                resource = memory_context.report_resource_at_segmented(
                    reporter,
                    tex.timg,
                    TextureResource,
                    lambda file, offset: TextureResource(
                        file,
                        offset,
                        f"{reporter.name}_{offset:08X}_CITex",
                        tex.fmt,
                        tex.siz,
                        tex.width,
                        tex.height,
                    ),
                )

                tlut = ci_state.tluts[tex.pal]
                assert tlut.idx == tex.pal
                assert tlut.count == ci_state.tluts_count

                resource_tlut = memory_context.report_resource_at_segmented(
                    reporter,
                    tlut.tlut,
                    # TLUTs declared in xmls use <Texture> so are TextureResource,
                    # so we can only expects a TextureResource
                    # (TLUTResource is a subclass of TextureResource)
                    TextureResource,
                    lambda file, offset: TLUTResource(
                        file,
                        offset,
                        f"{reporter.name}_{offset:08X}_TLUT",
                        {
                            G_TT.RGBA16: G_IM_FMT.RGBA,
                            G_TT.IA16: G_IM_FMT.IA,
                        }[ci_state.tlut_mode],
                    ),
                )

                resource.set_tlut(resource_tlut)


class DListResource(Resource, can_size_be_unknown=True):
    def __init__(
        self,
        file: File,
        range_start: int,
        name: str,
        *,
        target_ucode: Ucode = Ucode.f3dex2,
    ):
        super().__init__(file, range_start, None, name)
        self.target_ucode = target_ucode
        self.ignored_raw_pointers: set[int] = set()

    def try_parse_data(self, memory_context):
        offset = self.range_start

        if VERBOSE2:
            print(self.name, hex(offset))

        def vtx_cb(vtx, num):
            if vtx in self.ignored_raw_pointers:
                return 0

            # TODO be smarter about buffer merging
            # (don't merge buffers from two different DLs, if they can be split cleanly)
            # if that even happens
            memory_context.mark_resource_buffer_at_segmented(
                self,
                VtxArrayResource,
                f"{self.name}_{vtx:08X}_Vtx",
                vtx,
                vtx + num * VtxArrayResource.element_cdata_ext.size,
            )
            return 0

        ci_tex_manager = ColorIndexedTexturesManager(
            # TODO
            HACK_late_SetTextureLUT=(self.name in {"gEponaHeadLimb_0600AC20_DL"})
        )

        def timg_cb(timg, fmt, siz, width, height, pal):
            if timg in self.ignored_raw_pointers:
                return 0

            g_fmt = G_IM_FMT.by_i[fmt]
            g_siz = G_IM_SIZ.by_i[siz]

            if g_fmt == G_IM_FMT.CI:
                ci_tex_manager.ci_timg(timg, g_fmt, g_siz, width, height, pal)
            else:
                memory_context.report_resource_at_segmented(
                    self,
                    timg,
                    TextureResource,
                    lambda file, offset: TextureResource(
                        file,
                        offset,
                        f"{self.name}_{offset:08X}_Tex",
                        g_fmt,
                        g_siz,
                        width,
                        height,
                    ),
                )
            return 0

        def tlut_cb(tlut, idx, count):
            if tlut in self.ignored_raw_pointers:
                return 0

            ci_tex_manager.tlut(tlut, idx, count)
            return 0

        def mtx_cb(mtx):
            if mtx in self.ignored_raw_pointers:
                return 0

            memory_context.report_resource_at_segmented(
                self,
                mtx,
                MtxResource,
                lambda file, offset: MtxResource(
                    file, offset, f"{self.name}_{mtx:08X}_Mtx"
                ),
            )
            return 0

        def dl_cb(dl):
            if dl in self.ignored_raw_pointers:
                return 0

            memory_context.report_resource_at_segmented(
                self,
                dl,
                DListResource,
                lambda file, offset: DListResource(
                    file,
                    offset,
                    f"{self.name}_{dl:08X}_DL",
                    target_ucode=self.target_ucode,
                ),
            )
            return 0

        def macro_fn():
            tt = pygfxd.gfxd_value_by_type(pygfxd.GfxdArgType.Tt, 0)
            if tt is not None:
                tt = tt[1]
            else:
                othermodehi = pygfxd.gfxd_value_by_type(
                    pygfxd.GfxdArgType.Othermodehi, 0
                )
                if othermodehi is not None:
                    othermodehi = othermodehi[1]
                    tt = othermodehi & (0b11 << G_MDSFT_TEXTLUT)
                else:
                    tt = None
            if tt is not None:
                g_tt = G_TT.by_i[tt]
                ci_tex_manager.tlut_mode(g_tt)

            macro_id = pygfxd.gfxd_macro_id()
            if macro_id in {
                pygfxd.GfxdMacroId.SP1Triangle,
                pygfxd.GfxdMacroId.SP2Triangles,
            }:
                ci_tex_manager.commit_state()

            return pygfxd.gfxd_macro_dflt()

        size = gfxdis(
            input_buffer=self.file.data[self.range_start :],
            target=self.target_ucode.gfxd_ucode,
            vtx_callback=vtx_cb,
            timg_callback=timg_cb,
            tlut_callback=tlut_cb,
            mtx_callback=mtx_cb,
            dl_callback=dl_cb,
            macro_fn=macro_fn,
        )

        # Also commit state at the end of the display list.
        # This handles "material" dlists that only load a texture,
        # without drawing geometry.
        ci_tex_manager.commit_state()

        ci_tex_manager.report_states(self, memory_context)

        self.range_end = self.range_start + size

        if VERBOSE2:
            print(self.name, hex(offset), hex(self.range_end))

        return RESOURCE_PARSE_SUCCESS

    def get_c_declaration_base(self):
        if hasattr(self, "HACK_IS_STATIC_ON"):
            length = (self.range_end - self.range_start) // 8
            return f"Gfx {self.symbol_name}[{length}]"
        return f"Gfx {self.symbol_name}[]"

    def get_c_reference(self, resource_offset: int):
        if resource_offset == 0:
            return self.symbol_name
        else:
            raise ValueError()

    def write_extracted(self, memory_context):
        def macro_fn():
            pygfxd.gfxd_puts(INDENT)
            ret = pygfxd.gfxd_macro_dflt()
            pygfxd.gfxd_puts(",\n")
            return ret

        def arg_fn_handle_Dim(arg_num: int):
            timg = pygfxd.gfxd_value_by_type(pygfxd.GfxdArgType.Timg, 0)
            if timg is None:
                return False
            _, timg_segmented, _ = timg
            dim_args_i = []
            for arg_i in range(pygfxd.gfxd_arg_count()):
                if pygfxd.gfxd_arg_type(arg_i) == pygfxd.GfxdArgType.Dim:
                    dim_args_i.append(arg_i)
            assert arg_num in dim_args_i
            assert len(dim_args_i) <= 2
            if len(dim_args_i) != 2:
                return False
            width_arg_i, height_arg_i = dim_args_i
            try:
                timg_resolved = memory_context.resolve_segmented(timg_segmented)
            except UnmappedAddressError:
                # TODO store failed resolutions somewhere, for later printing
                # (in general, it would be nice to fail less and *firmly* warn more instead,
                #  even if it means having compilation fail on purpose (#error))
                return False
            try:
                resolved_resource = timg_resolved.get_resource(TextureResource)
            except UnexpectedResourceTypeError:
                # TODO investigate. eg spot18 uses 0x0800_0000 as both a DL and Tex ?
                return False

            assert isinstance(resolved_resource, TextureResource), (
                hex(timg_segmented),
                resolved_resource,
                resolved_resource.__class__,
            )
            width_arg_value = pygfxd.gfxd_arg_value(width_arg_i)[1]
            height_arg_value = pygfxd.gfxd_arg_value(height_arg_i)[1]
            if (resolved_resource.width, resolved_resource.height) == (
                width_arg_value,
                height_arg_value,
            ):
                if arg_num == width_arg_i:
                    if resolved_resource.width_name:
                        pygfxd.gfxd_puts(resolved_resource.width_name)
                        return True
                else:
                    assert arg_num == height_arg_i
                    if resolved_resource.height_name:
                        pygfxd.gfxd_puts(resolved_resource.height_name)
                        return True
            else:
                HACK_no_warn_bad_dims_DLs = {
                    "sPresentedByNintendoDL",  # uses gsDPLoadTextureTile, in which height is unused, so disassembled as 0 by gfxdis
                    "gMantUnusedMaterialDL",  # DList bug
                    "gSunDL",  # DList loads bigger chunks than the individual texture pieces (overlaps)
                }
                HACK_no_warn_bad_dims_Texs = {
                    "gPoeComposerFlatHeadDL_000060E0_Tex",  # used as both rgba16 16x16 and rgba16 8x8
                    "gDekuStickTex",  # used as both i8 8x8 and i8 16x16
                    "gHilite1Tex",  # used as both rgba16 16x16 and rgba16 32x32
                    "gHilite2Tex",  # used as both rgba16 16x16 and rgba16 32x32
                    "gUnknownCircle4Tex",  # used as both i8 16x16 and rgba16 32x32
                    "gLinkChildLowerBootTex",  # used as both ci8 32x32 and ci8 16x16
                    "gDecorativeFlameMaskTex",  # used as both i4 32x128 and i4 32x64
                }
                if (
                    arg_num == width_arg_i
                    and self.name not in HACK_no_warn_bad_dims_DLs
                    and resolved_resource.name not in HACK_no_warn_bad_dims_Texs
                ):
                    print(
                        "Unexpected texture dimensions used: in dlist =",
                        self,
                        "texture =",
                        resolved_resource,
                        "texture resource has WxH =",
                        (resolved_resource.width, resolved_resource.height),
                        "but dlist uses WxH =",
                        (width_arg_value, height_arg_value),
                    )
                    pygfxd.gfxd_puts(
                        " /* ! Unexpected texture dimensions !"
                        f" DL={width_arg_value}x{height_arg_value}"
                        f" vs Tex={resolved_resource.width}x{resolved_resource.height} */ "
                    )
            return False

        arg_fn_handlers = {
            pygfxd.GfxdArgType.Dim: arg_fn_handle_Dim,
        }

        def arg_fn(arg_num: int):
            arg_type = pygfxd.gfxd_arg_type(arg_num)
            arg_handler = arg_fn_handlers.get(arg_type)

            if arg_handler is not None:
                inhibit_default = arg_handler(arg_num)
            else:
                inhibit_default = False

            if not inhibit_default:
                pygfxd.gfxd_arg_dflt(arg_num)

        def vtx_cb(vtx, num):
            if vtx in self.ignored_raw_pointers:
                return 0

            pygfxd.gfxd_puts(memory_context.get_c_reference_at_segmented(vtx))
            return 1

        def timg_cb(timg, fmt, siz, width, height, pal):
            if timg in self.ignored_raw_pointers:
                return 0

            try:
                timg_c_ref = memory_context.get_c_reference_at_segmented(timg)
            # except NoSegmentBaseError: # TODO
            #    timg_c_ref = None
            except ValueError:
                if BEST_EFFORT:
                    # (turns out I needed this because of a mistake in a xml so it can be useful)
                    import traceback

                    print("vvv /* BAD TIMG REF */ vvv")
                    traceback.print_exc()
                    pygfxd.gfxd_puts("/* BAD TIMG REF */")
                    return 0
                else:
                    raise
            if timg_c_ref:
                pygfxd.gfxd_puts(timg_c_ref)
                return 1
            return 0

        def tlut_cb(tlut, idx, count):
            if tlut in self.ignored_raw_pointers:
                return 0

            tlut_c_ref = memory_context.get_c_reference_at_segmented(tlut)
            pygfxd.gfxd_puts(tlut_c_ref)
            return 1

        def mtx_cb(mtx):
            if mtx in self.ignored_raw_pointers:
                return 0

            mtx_c_ref = memory_context.get_c_reference_at_segmented(mtx)
            pygfxd.gfxd_puts(mtx_c_ref)
            return 1

        def dl_cb(dl):
            if dl in self.ignored_raw_pointers:
                return 0

            dl_c_ref = memory_context.get_c_reference_at_segmented(dl)
            pygfxd.gfxd_puts(dl_c_ref)
            return 1

        with self.extract_to_path.open("wb") as f:
            if not self.braces_in_source:
                f.write(b"{\n")

            out_string_wrapper = StringWrapper(b"", 120, f.write)

            def output_cb(buf: bytes):
                out_string_wrapper.append(buf)

            gfxdis(
                input_buffer=self.file.data[self.range_start : self.range_end],
                output_callback=output_cb,
                enable_caps={pygfxd.GfxdCap.emit_dec_color},
                target=self.target_ucode.gfxd_ucode,
                vtx_callback=vtx_cb,
                timg_callback=timg_cb,
                tlut_callback=tlut_cb,
                mtx_callback=mtx_cb,
                dl_callback=dl_cb,
                macro_fn=macro_fn,
                arg_fn=arg_fn,
            )

            out_string_wrapper.flush()

            if not self.braces_in_source:
                f.write(b"}\n")

    def get_c_includes(self):
        return (
            # TODO these are not always needed:
            "sys_matrix.h",  # for gIdentityMtx
        )

    def get_h_includes(self):
        return ("ultra64.h",)


def report_gfx_segmented(resource: Resource, memory_context: "MemoryContext", v):
    assert isinstance(v, int)
    address = v
    if address != 0:
        memory_context.report_resource_at_segmented(
            resource,
            address,
            DListResource,
            lambda file, offset: DListResource(
                file,
                offset,
                f"{resource.name}_{address:08X}_DL",
            ),
        )


def write_gfx_segmented(
    resource: Resource,
    memory_context: "MemoryContext",
    v,
    wctx: CDataExtWriteContext,
):
    assert isinstance(v, int)
    address = v
    wctx.f.write(wctx.line_prefix)
    if address == 0:
        wctx.f.write("NULL")
    else:
        wctx.f.write(memory_context.get_c_reference_at_segmented(address))
    return True


cdata_ext_gfx_segmented = (
    CDataExt_Value("I").set_report(report_gfx_segmented).set_write(write_gfx_segmented)
)

VERBOSE2 = False
