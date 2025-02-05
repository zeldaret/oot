from __future__ import annotations

import ctypes
import enum
from pathlib import Path
from typing import Union


raw2png = ctypes.cdll.LoadLibrary(Path(__file__).parent / "raw2png")

# enum raw2png_error { ... };
raw2png_error = ctypes.c_int


class RAW2PNG_ERR(enum.IntEnum):
    OK = 0
    CANT_OPEN_FOR_WRITING = enum.auto()
    LIBPNG_PNG_PTR_NULL = enum.auto()
    LIBPNG_INFO_PTR_NULL = enum.auto()
    BAD_NUM_PALETTE = enum.auto()
    DATA_EXCEEDS_NUM_PALETTE = enum.auto()
    MAX = enum.auto()


# const char* raw2png_get_error_message(enum raw2png_error err);
raw2png.raw2png_get_error_message.restype = ctypes.POINTER(ctypes.c_char)
raw2png.raw2png_get_error_message.argtypes = [raw2png_error]

# enum raw2png_error raw2png_write(const char* file_name, uint32_t width, uint32_t height, uint8_t* image_data);
raw2png.raw2png_write.restype = raw2png_error
raw2png.raw2png_write.argtypes = [
    ctypes.POINTER(ctypes.c_char),
    ctypes.c_uint32,
    ctypes.c_uint32,
    ctypes.POINTER(ctypes.c_uint8),
]

# enum raw2png_error raw2png_write_paletted(const char* file_name, uint32_t width, uint32_t height, uint8_t* palette_data, int num_palette, uint8_t* image_data);
raw2png.raw2png_write_paletted.restype = raw2png_error
raw2png.raw2png_write_paletted.argtypes = [
    ctypes.POINTER(ctypes.c_char),
    ctypes.c_uint32,
    ctypes.c_uint32,
    ctypes.POINTER(ctypes.c_uint8),
    ctypes.c_int,
    ctypes.POINTER(ctypes.c_uint8),
]


def _check_err(err: raw2png_error, okay_errors: set[RAW2PNG_ERR] = set()):
    if err == RAW2PNG_ERR.OK or err in okay_errors:
        return
    err_message = raw2png.raw2png_get_error_message(err)
    try:
        err_enum = RAW2PNG_ERR(err)
    except ValueError:
        err_enum = None
    raise Exception(err, err_enum, ctypes.string_at(err_message).decode())


def write(file_name: Union[Path, str], width: int, height: int, image_data):
    # About the type image_data should be:
    # ctypes._CData.from_buffer docs: "must support the writeable buffer interface"
    # - doesn't work with list() (not bytes-like)
    # - doesn't work with bytes() (not writable)
    # - bytearray() OK
    # - (ctypes.c_uint8 * n)() OK
    image_data_ctypes_type = (ctypes.c_uint8 * (height * width * 4))
    try:
        image_data_ctypes = image_data_ctypes_type.from_buffer(image_data)
    except TypeError:
        print(type(image_data))
        raise
    _check_err(
        raw2png.raw2png_write(str(file_name).encode(), width, height, image_data_ctypes)
    )


def write_paletted(
    file_name: Union[Path, str],
    width: int,
    height: int,
    palette_data,
    num_palette: int,
    image_data,
):
    # If those are not integers, there would be an error anyway from constructing the ctypes array types below,
    # but this way with asserts the raised error is clearer.
    assert isinstance(width, int)
    assert isinstance(height, int)
    assert isinstance(num_palette, int)

    palette_data_ctypes = (ctypes.c_uint8 * (num_palette * 4)).from_buffer(palette_data)
    image_data_ctypes = (ctypes.c_uint8 * (height * width)).from_buffer(image_data)
    _check_err(
        raw2png.raw2png_write_paletted(
            str(file_name).encode(),
            width,
            height,
            palette_data_ctypes,
            num_palette,
            image_data_ctypes,
        )
    )


def main():
    write(
        Path(__file__).parent / "my421tést.png",
        1,
        1,
        (ctypes.c_uint8 * 4)(255, 0, 0, 120),
    )


if __name__ == "__main__":
    main()
