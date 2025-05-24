# SPDX-FileCopyrightText: © 2025 ZeldaRET
# SPDX-License-Identifier: MIT

import os, sys
from ctypes import CDLL, Structure, POINTER, string_at, byref, cast
from ctypes import c_void_p, c_char_p, c_uint8, c_uint, c_bool, c_int, c_size_t
from typing import Optional

def ctypes_buffer_to_string(buffer) -> str:
    return buffer.value.decode('utf-8')

def ctypes_pointer_to_bytes(ptr : c_void_p, size : int) -> bytes:
    return string_at(ptr, size)

def deref(ptr):
    if ptr:
        return ptr.contents
    return None

ln64texconv = CDLL(os.path.join(os.path.dirname(__file__), "libn64texconv.so"))

class RefCounter:
    def __init__(self) -> None:
        self.ref_counts = {}

    def add_ref(self, ptr):
        if not isinstance(ptr, POINTER(N64Palette)):
            ptr = cast(ptr, POINTER(N64Palette))
        if not ptr:
            return
        key = int.from_bytes(ptr, byteorder=sys.byteorder, signed=False)
        if key not in self.ref_counts:
            self.ref_counts[key] = 1
        else:
            self.ref_counts[key] += 1

    def num_refs(self, ptr):
        if not isinstance(ptr, POINTER(N64Palette)):
            ptr = cast(ptr, POINTER(N64Palette))
        if not ptr:
            return 0
        key = int.from_bytes(ptr, byteorder=sys.byteorder, signed=False)
        if key not in self.ref_counts:
            return 0
        return self.ref_counts[key]

    def rm_ref(self, ptr, free_func):
        if not isinstance(ptr, POINTER(N64Palette)):
            ptr = cast(ptr, POINTER(N64Palette))
        if not ptr:
            return
        key = int.from_bytes(ptr, byteorder=sys.byteorder, signed=False)
        assert key in self.ref_counts
        count = self.ref_counts.pop(key)
        count -= 1
        if count == 0:
            free_func(ptr)
        else:
            self.ref_counts[key] = count

# Simple reference counter for C allocations
_object_refcount = RefCounter()

#
#   Private
#

# void n64texconv_free(void *p);
ln64texconv.n64texconv_free.argtypes = [c_void_p]
ln64texconv.n64texconv_free.restype = None

#
#   bin2c.h
#

def bin2c(data : bytes | memoryview, pad_to_size : int = 0, byte_width : int = 8) -> Optional[str]:
    if byte_width not in (1, 2, 4, 8):
        raise ValueError("Invalid byte width, must be 1, 2, 4 or 8")
    buffer = (c_uint8 * len(data)).from_buffer_copy(data)
    ptr = c_char_p(None)
    size = c_size_t(0)
    if ln64texconv.bin2c(byref(ptr), byref(size), buffer, len(data), pad_to_size, byte_width) != 0:
        return None
    s = ctypes_buffer_to_string(ptr)
    ln64texconv.n64texconv_free(ptr)
    return s

def bin2c_file(out_path : str, data : bytes | memoryview, pad_to_size : int = 0, byte_width : int = 8) -> bool:
    if byte_width not in (1, 2, 4, 8):
        raise ValueError("Invalid byte width, must be 1, 2, 4 or 8")
    buffer = (c_uint8 * len(data)).from_buffer_copy(data)
    return ln64texconv.bin2c_file(out_path.encode("utf-8"), buffer, len(data), pad_to_size, byte_width) == 0

# int bin2c(char **out, size_t *size_out, void *bin, size_t size, size_t pad_to_size, unsigned int byte_width);
ln64texconv.bin2c.argtypes = [POINTER(c_char_p), POINTER(c_size_t), c_void_p, c_size_t, c_size_t, c_uint]
ln64texconv.bin2c.restype = c_int

# int bin2c_file(const char *out_path, void *bin, size_t size, size_t pad_to_size, unsigned int byte_width);
ln64texconv.bin2c_file.argtypes = [c_char_p, c_void_p, c_size_t, c_size_t, c_uint]
ln64texconv.bin2c_file.restype = c_int

#
#   jfif.h
#

# struct JFIF
class JFIF(Structure):
    _fields_ = [
        ("data",      c_void_p),
        ("data_size", c_size_t),
    ]

    # JFIF_BUFFER_SIZE
    BUFFER_SIZE = 320 * 240 * 2

    @staticmethod
    def fromfile(path : str, max_size : int = BUFFER_SIZE) -> Optional["JFIF"]:
        if not os.path.isfile(path):
            raise ValueError(f"Cannot open \"{path}\", is not a file")
        return deref(ln64texconv.jfif_fromfile(path.encode("utf-8"), max_size))

    def to_c(self, pad_to_size : int = BUFFER_SIZE) -> Optional[str]:
        ptr = c_char_p(None)
        size = c_size_t(0)
        if ln64texconv.jfif_to_c(byref(ptr), byref(size), byref(self), pad_to_size) != 0:
            return None
        s = ctypes_buffer_to_string(ptr)
        ln64texconv.n64texconv_free(ptr)
        return s

    def to_c_file(self, out_path : str, pad_to_size : int = BUFFER_SIZE) -> bool:
        return ln64texconv.jfif_to_c_file(out_path.encode("utf-8"), byref(self), pad_to_size) == 0

    def __del__(self):
        ln64texconv.jfif_free(byref(self))

# struct JFIF *jfif_fromfile(const char *path, size_t max_size);
ln64texconv.jfif_fromfile.argtypes = [c_char_p, c_size_t]
ln64texconv.jfif_fromfile.restype = POINTER(JFIF)

# void jfif_free(struct JFIF *jfif);
ln64texconv.jfif_free.argtypes = [POINTER(JFIF)]
ln64texconv.jfif_free.restype = None

# int jfif_to_c(char **out, size_t *size_out, struct JFIF *jfif, size_t pad_to_size)
ln64texconv.jfif_to_c.argtypes = [POINTER(c_char_p), POINTER(c_size_t), POINTER(JFIF), c_size_t]
ln64texconv.jfif_to_c.restype = c_int

# int jfif_to_c_file(const char *out_path, struct JFIF *jfif, size_t pad_to_size);
ln64texconv.jfif_to_c_file.argtypes = [c_char_p, POINTER(JFIF), c_size_t]
ln64texconv.jfif_to_c_file.restype = c_int

#
#   n64texconv.h
#

FMT_NONE      = -1
FMT_MAX       = 5
G_IM_FMT_RGBA = 0
G_IM_FMT_YUV  = 1
G_IM_FMT_CI   = 2
G_IM_FMT_IA   = 3
G_IM_FMT_I    = 4

SIZ_NONE     = -1
SIZ_MAX      = 4
G_IM_SIZ_4b  = 0
G_IM_SIZ_8b  = 1
G_IM_SIZ_16b = 2
G_IM_SIZ_32b = 3

def fmt_name(fmt : int):
    return {
        G_IM_FMT_RGBA : "G_IM_FMT_RGBA",
        G_IM_FMT_YUV  : "G_IM_FMT_YUV",
        G_IM_FMT_CI   : "G_IM_FMT_CI",
        G_IM_FMT_IA   : "G_IM_FMT_IA",
        G_IM_FMT_I    : "G_IM_FMT_I",
    }.get(fmt, str(fmt))

def siz_name(siz : int):
    return {
        G_IM_SIZ_4b  : "G_IM_SIZ_4b",
        G_IM_SIZ_8b  : "G_IM_SIZ_8b",
        G_IM_SIZ_16b : "G_IM_SIZ_16b",
        G_IM_SIZ_32b : "G_IM_SIZ_32b",
    }.get(siz, str(siz))

VALID_FORMAT_COMBINATIONS = (
    (G_IM_FMT_RGBA, G_IM_SIZ_16b),
    (G_IM_FMT_RGBA, G_IM_SIZ_32b),
    (G_IM_FMT_CI,   G_IM_SIZ_4b),
    (G_IM_FMT_CI,   G_IM_SIZ_8b),
    (G_IM_FMT_IA,   G_IM_SIZ_4b),
    (G_IM_FMT_IA,   G_IM_SIZ_8b),
    (G_IM_FMT_IA,   G_IM_SIZ_16b),
    (G_IM_FMT_I,    G_IM_SIZ_4b),
    (G_IM_FMT_I,    G_IM_SIZ_8b),
)

# struct color
class Color(Structure):
    _fields_ = [
        ("r", c_uint8),
        ("g", c_uint8),
        ("b", c_uint8),
        ("a", c_uint8),
    ]

# static inline size_t texel_size_bytes(size_t ntexels, int siz)
def texel_size_bytes(ntexels : int, siz : int):
    return (ntexels // 2) if (siz == G_IM_SIZ_4b) else (ntexels * ((1 << siz) >> 1))

# struct n64_palette
class N64Palette(Structure):
    _fields_ = [
        ("texels", POINTER(Color)),
        ("fmt",    c_int),
        ("count",  c_size_t),
    ]

    @staticmethod
    def new(count : int, fmt : int) -> Optional["N64Palette"]:
        if fmt not in (G_IM_FMT_RGBA, G_IM_FMT_IA):
            raise ValueError("Palette format must be either G_IM_FMT_RGBA or G_IM_FMT_IA")
        if count > 256:
            raise ValueError("The largest possible palette size is 256")
        pal = ln64texconv.n64texconv_palette_new(count, fmt)
        _object_refcount.add_ref(pal)
        return deref(pal)

    def __del__(self):
        # Free the underlying palette structure only if the refcount is 0
        _object_refcount.rm_ref(byref(self), ln64texconv.n64texconv_palette_free)

    def copy(self) -> Optional["N64Palette"]:
        pal = ln64texconv.n64texconv_palette_copy(byref(self))
        _object_refcount.add_ref(pal)
        return deref(pal)

    def reformat(self, fmt : int) -> Optional["N64Palette"]:
        if fmt not in (G_IM_FMT_RGBA, G_IM_FMT_IA):
            raise ValueError("Palette format must be either G_IM_FMT_RGBA or G_IM_FMT_IA")
        pal = ln64texconv.n64texconv_palette_reformat(byref(self), fmt)
        _object_refcount.add_ref(pal)
        return deref(pal)

    def resize(self, new_count : int) -> Optional["N64Palette"]:
        if new_count > 256:
            raise ValueError("The largest possible palette size is 256")
        pal = ln64texconv.n64texconv_palette_resize(byref(self), new_count)
        _object_refcount.add_ref(pal)
        return deref(pal)

    @staticmethod
    def from_png(path : str, fmt : int) -> Optional["N64Palette"]:
        if fmt not in (G_IM_FMT_RGBA, G_IM_FMT_IA):
            raise ValueError("Palette format must be either G_IM_FMT_RGBA or G_IM_FMT_IA")
        if not os.path.isfile(path):
            raise ValueError(f"Cannot open \"{path}\", is not a file")
        pal = ln64texconv.n64texconv_palette_from_png(path.encode("utf-8"), fmt)
        _object_refcount.add_ref(pal)
        return deref(pal)

    @staticmethod
    def from_bin(data : bytes | memoryview, fmt : int) -> Optional["N64Palette"]:
        if fmt not in (G_IM_FMT_RGBA, G_IM_FMT_IA):
            raise ValueError("Palette format must be either G_IM_FMT_RGBA or G_IM_FMT_IA")
        buffer = (c_uint8 * len(data)).from_buffer_copy(data)
        pal = ln64texconv.n64texconv_palette_from_bin(buffer, len(data) // 2, fmt)
        _object_refcount.add_ref(pal)
        return deref(pal)

    def to_png(self, outpath : str) -> bool:
        return ln64texconv.n64texconv_palette_to_png(outpath.encode("utf-8"), byref(self)) == 0

    def to_bin(self, pad_to_8b : bool) -> Optional[bytes]:
        nbytes = texel_size_bytes(self.count, G_IM_SIZ_16b)
        if pad_to_8b:
            nbytes = (nbytes + 7) & ~7
        ptr = ln64texconv.n64texconv_palette_to_bin(byref(self), pad_to_8b)
        if not ptr:
            return None
        data = ctypes_pointer_to_bytes(ptr, nbytes)
        ln64texconv.n64texconv_free(ptr)
        return data

    def to_c(self, pad_to_8b : bool, byte_width : int) -> Optional[str]:
        ptr = c_char_p(None)
        size = c_size_t(0)
        if ln64texconv.n64texconv_palette_to_c(byref(ptr), byref(size), byref(self), pad_to_8b, byte_width) != 0:
            return None
        s = ctypes_buffer_to_string(ptr)
        ln64texconv.n64texconv_free(ptr)
        return s

    def to_c_file(self, out_path : str, pad_to_8b : bool, byte_width : int) -> bool:
        return ln64texconv.n64texconv_palette_to_c_file(out_path.encode("utf-8"), byref(self), pad_to_8b, byte_width) == 0

# struct n64_palette *n64texconv_palette_new(size_t count, int fmt);
ln64texconv.n64texconv_palette_new.argtypes = [c_size_t, c_int]
ln64texconv.n64texconv_palette_new.restype = POINTER(N64Palette)

# void n64texconv_palette_free(struct n64_palette *pal);
ln64texconv.n64texconv_palette_free.argtypes = [POINTER(N64Palette)]
ln64texconv.n64texconv_palette_free.restype = None

# struct n64_palette *n64texconv_palette_copy(struct n64_palette *pal);
ln64texconv.n64texconv_palette_copy.argtypes = [POINTER(N64Palette)]
ln64texconv.n64texconv_palette_copy.restype = POINTER(N64Palette)

# struct n64_palette *n64texconv_palette_reformat(struct n64_palette *pal, int fmt);
ln64texconv.n64texconv_palette_reformat.argtypes = [POINTER(N64Palette), c_int]
ln64texconv.n64texconv_palette_reformat.restype = POINTER(N64Palette)

# struct n64_palette *n64texconv_palette_resize(struct n64_palette *pal, size_t new_count);
ln64texconv.n64texconv_palette_resize.argtypes = [POINTER(N64Palette), c_size_t]
ln64texconv.n64texconv_palette_resize.restype = POINTER(N64Palette)

# struct n64_palette *n64texconv_palette_from_png(const char *path, int fmt);
ln64texconv.n64texconv_palette_from_png.argtypes = [c_char_p, c_int]
ln64texconv.n64texconv_palette_from_png.restype = POINTER(N64Palette)

# struct n64_palette *n64texconv_palette_from_bin(void *data, size_t count, int fmt);
ln64texconv.n64texconv_palette_from_bin.argtypes = [c_void_p, c_size_t, c_int]
ln64texconv.n64texconv_palette_from_bin.restype = POINTER(N64Palette)

# int n64texconv_palette_to_png(const char *outpath, struct n64_palette *pal);
ln64texconv.n64texconv_palette_to_png.argtypes = [c_char_p, POINTER(N64Palette)]
ln64texconv.n64texconv_palette_to_png.restype = c_int

# void *n64texconv_palette_to_bin(struct n64_palette *pal, bool pad_to_8b);
ln64texconv.n64texconv_palette_to_bin.argtypes = [POINTER(N64Palette), c_bool]
ln64texconv.n64texconv_palette_to_bin.restype = c_void_p

# int n64texconv_palette_to_c(char **out, size_t *size_out, struct n64_palette *pal, bool pad_to_8b, unsigned int byte_width);
ln64texconv.n64texconv_palette_to_c.argtypes = [POINTER(c_char_p), POINTER(c_size_t), POINTER(N64Palette), c_bool, c_uint]
ln64texconv.n64texconv_palette_to_c.restype = c_int

# int n64texconv_palette_to_c_file(const char *out_path, struct n64_palette *pal, bool pad_to_8b, unsigned int byte_width);
ln64texconv.n64texconv_palette_to_c_file.argtypes = [c_char_p, POINTER(N64Palette), c_bool, c_uint]
ln64texconv.n64texconv_palette_to_c_file.restype = c_int

# struct n64_image
class N64Image(Structure):
    _fields_ = [
        ("width", c_size_t),
        ("height", c_size_t),
        ("fmt", c_int),
        ("siz", c_int),
        ("pal", POINTER(N64Palette)),
        ("texels", POINTER(Color)),
        ("color_indices", POINTER(c_uint8)),
    ]

    def get_palette(self) -> Optional[N64Palette]:
        return deref(self.pal)

    @staticmethod
    def new(width : int, height : int, fmt : int, siz : int, pal : N64Palette = None) -> Optional["N64Image"]:
        if not any((fmt, siz) == fmtsiz for fmtsiz in VALID_FORMAT_COMBINATIONS):
            raise ValueError(f"Invalid fmt/siz combination ({fmt_name(fmt)}, {siz_name(siz)})")
        if pal is not None:
            _object_refcount.add_ref(byref(pal))
        return deref(ln64texconv.n64texconv_image_new(width, height, fmt, siz, pal))

    def __del__(self):
        # Also free the palette if the reference count drops to 0
        _object_refcount.rm_ref(self.pal, ln64texconv.n64texconv_palette_free)
        ln64texconv.n64texconv_image_free(byref(self))

    def copy(self) -> Optional["N64Image"]:
        _object_refcount.add_ref(self.pal)
        return deref(ln64texconv.n64texconv_image_copy(byref(self)))

    @staticmethod
    def from_png(path : str, fmt : int, siz : int, pal_fmt : int = FMT_NONE) -> Optional["N64Image"]:
        if not os.path.isfile(path):
            raise ValueError(f"Cannot open \"{path}\", is not a file")
        if not any((fmt, siz) == fmtsiz for fmtsiz in VALID_FORMAT_COMBINATIONS):
            raise ValueError(f"Invalid fmt/siz combination ({fmt_name(fmt)}, {siz_name(siz)})")
        if fmt == G_IM_FMT_CI and pal_fmt not in (G_IM_FMT_RGBA, G_IM_FMT_IA):
            raise ValueError(f"Invalid palette format {fmt_name(pal_fmt)}, must be either G_IM_FMT_RGBA or G_IM_FMT_IA")
        img = deref(ln64texconv.n64texconv_image_from_png(path.encode("utf-8"), fmt, siz, pal_fmt))
        _object_refcount.add_ref(img.pal)
        return img

    @staticmethod
    def from_bin(data : bytes | memoryview, width : int, height : int, fmt : int, siz : int, pal : Optional[N64Palette] = None,
                 preswapped : bool = False) -> Optional["N64Image"]:
        if not any((fmt, siz) == fmtsiz for fmtsiz in VALID_FORMAT_COMBINATIONS):
            raise ValueError(f"Invalid fmt/siz combination ({fmt_name(fmt)}, {siz_name(siz)})")
        expected_size = texel_size_bytes(width * height, siz)
        if len(data) < expected_size:
            raise ValueError(f"Not enough data to extract the specified image. " +
                             f"Expected at least 0x{expected_size:X} bytes but only got 0x{len(data):X} bytes")
        buffer = (c_uint8 * len(data)).from_buffer_copy(data)
        if pal:
            pal = byref(pal)
            _object_refcount.add_ref(pal)
        img = ln64texconv.n64texconv_image_from_bin(buffer, width, height, fmt, siz, pal, preswapped)
        return deref(img)

    def reformat(self, fmt : int, siz : int, pal : Optional[N64Palette] = None) -> Optional["N64Image"]:
        if not any((fmt, siz) == fmtsiz for fmtsiz in VALID_FORMAT_COMBINATIONS):
            raise ValueError(f"Invalid fmt/siz combination ({fmt_name(fmt)}, {siz_name(siz)})")
        if pal:
            pal = byref(pal)
            _object_refcount.add_ref(pal)
        return deref(ln64texconv.n64texconv_image_reformat(byref(self), fmt, siz, pal))

    def to_png(self, outpath : str, intensity_alpha : bool) -> bool:
        return ln64texconv.n64texconv_image_to_png(outpath.encode("utf-8"), byref(self), intensity_alpha) == 0

    def to_bin(self, pad_to_8b : bool, preswap : bool) -> Optional[bytes]:
        nbytes = texel_size_bytes(self.width * self.height, self.siz)
        if pad_to_8b:
            nbytes = (nbytes + 7) & ~7
        ptr = ln64texconv.n64texconv_image_to_bin(byref(self), pad_to_8b, preswap)
        if not ptr:
            return None
        data = ctypes_pointer_to_bytes(ptr, nbytes)
        ln64texconv.n64texconv_free(ptr)
        return data

    def to_c(self, pad_to_8b : bool, preswap : bool, byte_width : int) -> Optional[str]:
        ptr = c_char_p(None)
        size = c_size_t(0)
        if ln64texconv.n64texconv_image_to_c(byref(ptr), byref(size), byref(self), pad_to_8b, preswap, byte_width) != 0:
            return None
        s = ctypes_buffer_to_string(ptr)
        ln64texconv.n64texconv_free(ptr)
        return s

    def to_c_file(self, out_path : str, pad_to_8b : bool, preswap : bool, byte_width : int) -> bool:
        return ln64texconv.n64texconv_image_to_c_file(out_path.encode("utf-8"), byref(self), pad_to_8b, preswap, byte_width) == 0

    def png_extension(self) -> str:
        return ln64texconv.n64texconv_png_extension(byref(self)).decode("utf-8")

# struct n64_image *n64texconv_image_new(size_t width, size_t height, int fmt, int siz, struct n64_palette *pal);
ln64texconv.n64texconv_image_new.argtypes = [c_size_t, c_size_t, c_int, c_int, POINTER(N64Palette)]
ln64texconv.n64texconv_image_new.restype = POINTER(N64Image)

# void n64texconv_image_free(struct n64_image *img);
ln64texconv.n64texconv_image_free.argtypes = [POINTER(N64Image)]
ln64texconv.n64texconv_image_free.restype = None

# struct n64_image *n64texconv_image_copy(struct n64_image *img);
ln64texconv.n64texconv_image_copy.argtypes = [POINTER(N64Image)]
ln64texconv.n64texconv_image_copy.restype = POINTER(N64Image)

# struct n64_image *n64texconv_image_from_png(const char *path, int fmt, int siz, int pal_fmt);
ln64texconv.n64texconv_image_from_png.argtypes = [c_char_p, c_int, c_int, c_int]
ln64texconv.n64texconv_image_from_png.restype = POINTER(N64Image)

# struct n64_image *n64texconv_image_from_bin(void *data, size_t width, size_t height, int fmt, int siz, struct n64_palette *pal, bool preswapped);
ln64texconv.n64texconv_image_from_bin.argtypes = [c_void_p, c_size_t, c_size_t, c_int, c_int, POINTER(N64Palette), c_bool]
ln64texconv.n64texconv_image_from_bin.restype = POINTER(N64Image)

# struct n64_image *n64texconv_image_reformat(struct n64_image *img, int fmt, int siz, struct n64_palette *pal);
ln64texconv.n64texconv_image_reformat.argtypes = [POINTER(N64Image), c_int, c_int, POINTER(N64Palette)]
ln64texconv.n64texconv_image_reformat.restype = POINTER(N64Image)

# int n64texconv_image_to_png(const char *outpath, struct n64_image *img, bool intensity_alpha);
ln64texconv.n64texconv_image_to_png.argtypes = [c_char_p, POINTER(N64Image), c_bool]
ln64texconv.n64texconv_image_to_png.restype = c_int

# void *n64texconv_image_to_bin(struct n64_image *img, bool pad_to_8b, bool preswap);
ln64texconv.n64texconv_image_to_bin.argtypes = [POINTER(N64Image), c_bool, c_bool]
ln64texconv.n64texconv_image_to_bin.restype = c_void_p

# int n64texconv_image_to_c(char **out, size_t *size_out, struct n64_image *img, bool pad_to_8b, bool preswap, unsigned int byte_width);
ln64texconv.n64texconv_image_to_c.argtypes = [POINTER(c_char_p), POINTER(c_size_t), POINTER(N64Image), c_bool, c_bool, c_uint]
ln64texconv.n64texconv_image_to_c.restype = c_int

# int n64texconv_image_to_c_file(const char *out_path, struct n64_image *img, bool pad_to_8b, bool preswap, unsigned int byte_width);
ln64texconv.n64texconv_image_to_c_file.argtypes = [c_char_p, POINTER(N64Image), c_bool, c_bool, c_uint]
ln64texconv.n64texconv_image_to_c_file.restype = c_int

# const char *n64texconv_png_extension(struct n64_image *img);
ln64texconv.n64texconv_png_extension.argtypes = [POINTER(N64Image)]
ln64texconv.n64texconv_png_extension.restype = c_char_p
