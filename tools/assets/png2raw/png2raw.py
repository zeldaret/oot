from __future__ import annotations

import ctypes
import enum
from pathlib import Path
from typing import Union


png2raw = ctypes.cdll.LoadLibrary(Path(__file__).parent / "png2raw")

# enum png2raw_error { ... };
png2raw_error = ctypes.c_int


class PNG2RAW_ERR(enum.IntEnum):
    OK = 0
    INST_NULL = enum.auto()
    INST_BAD_STATE = enum.auto()
    CANT_OPEN_FOR_READING = enum.auto()
    CANT_READ_HEADER_BYTES = enum.auto()
    NOT_A_PNG = enum.auto()
    LIBPNG_PNG_PTR_NULL = enum.auto()
    LIBPNG_INFO_PTR_NULL = enum.auto()
    BUFFER_SIZE_P_NULL = enum.auto()
    BAD_BUFFER_SIZE = enum.auto()
    BUFFER_NULL = enum.auto()
    PNG_IS_NOT_PALETTED = enum.auto()
    MAX = enum.auto()


# struct png2raw_instance;
class png2raw_instance(ctypes.Structure):
    pass


# typedef struct png2raw_instance* png2raw_instancep;
png2raw_instancep = ctypes.POINTER(png2raw_instance)

# png2raw_instancep png2raw_instance_new();
png2raw.png2raw_instance_new.restype = png2raw_instancep
png2raw.png2raw_instance_new.argtypes = []

# void png2raw_instance_free(png2raw_instancep inst);
png2raw.png2raw_instance_free.restype = None
png2raw.png2raw_instance_free.argtypes = [png2raw_instancep]

# const char* png2raw_get_error_message(enum png2raw_error err);
png2raw.png2raw_get_error_message.restype = ctypes.POINTER(ctypes.c_char)
png2raw.png2raw_get_error_message.argtypes = [png2raw_error]

# enum png2raw_error png2raw_set_file_name(png2raw_instancep inst, const char* file_name);
png2raw.png2raw_set_file_name.restype = png2raw_error
png2raw.png2raw_set_file_name.argtypes = [
    png2raw_instancep,
    ctypes.POINTER(ctypes.c_char),
]

# enum png2raw_error png2raw_read_info(png2raw_instancep inst);
png2raw.png2raw_read_info.restype = png2raw_error
png2raw.png2raw_read_info.argtypes = [png2raw_instancep]

# enum png2raw_error png2raw_get_dimensions(png2raw_instancep inst, uint32_t* widthp, uint32_t* heightp);
png2raw.png2raw_get_dimensions.restype = png2raw_error
png2raw.png2raw_get_dimensions.argtypes = [
    png2raw_instancep,
    ctypes.POINTER(ctypes.c_uint32),
    ctypes.POINTER(ctypes.c_uint32),
]
# enum png2raw_error png2raw_is_paletted(png2raw_instancep inst, bool* is_paletted_p);
png2raw.png2raw_is_paletted.restype = png2raw_error
png2raw.png2raw_is_paletted.argtypes = [
    png2raw_instancep,
    ctypes.POINTER(ctypes.c_bool),
]
# enum png2raw_error png2raw_get_palette_colors_rgba32(png2raw_instancep inst, size_t* palette_data_size_p, uint8_t* palette_data);
png2raw.png2raw_get_palette_colors_rgba32.restype = png2raw_error
png2raw.png2raw_get_palette_colors_rgba32.argtypes = [
    png2raw_instancep,
    ctypes.POINTER(ctypes.c_size_t),
    ctypes.POINTER(ctypes.c_uint8),
]

# enum png2raw_error png2raw_read_rgba32_init(png2raw_instancep inst);
png2raw.png2raw_read_rgba32_init.restype = png2raw_error
png2raw.png2raw_read_rgba32_init.argtypes = [png2raw_instancep]
# enum png2raw_error png2raw_read_rgba32(png2raw_instancep inst, size_t* image_data_size_p, uint8_t* image_data);
png2raw.png2raw_read_rgba32.restype = png2raw_error
png2raw.png2raw_read_rgba32.argtypes = [
    png2raw_instancep,
    ctypes.POINTER(ctypes.c_size_t),
    ctypes.POINTER(ctypes.c_uint8),
]

# enum png2raw_error png2raw_read_palette_indices_init(png2raw_instancep inst);
png2raw.png2raw_read_palette_indices_init.restype = png2raw_error
png2raw.png2raw_read_palette_indices_init.argtypes = [png2raw_instancep]
# enum png2raw_error png2raw_read_palette_indices(png2raw_instancep inst, size_t* image_data_size_p, uint8_t* image_data);
png2raw.png2raw_read_palette_indices.restype = png2raw_error
png2raw.png2raw_read_palette_indices.argtypes = [
    png2raw_instancep,
    ctypes.POINTER(ctypes.c_size_t),
    ctypes.POINTER(ctypes.c_uint8),
]


class Instance:
    def __init__(self, file_name: Union[Path, str]):
        self.file_name = file_name

    def _check_err(self, err: png2raw_error, okay_errors: set[PNG2RAW_ERR] = set()):
        if err == PNG2RAW_ERR.OK or err in okay_errors:
            return
        err_message = png2raw.png2raw_get_error_message(err)
        try:
            err_enum = PNG2RAW_ERR(err)
        except ValueError:
            err_enum = None
        raise Exception(err, err_enum, ctypes.string_at(err_message).decode())

    def __enter__(self):
        self._inst = png2raw.png2raw_instance_new()
        self._check_err(
            png2raw.png2raw_set_file_name(self._inst, str(self.file_name).encode())
        )
        self._check_err(png2raw.png2raw_read_info(self._inst))
        return self

    def get_dimensions(self):
        width = ctypes.c_uint32(0)
        height = ctypes.c_uint32(0)
        self._check_err(
            png2raw.png2raw_get_dimensions(
                self._inst, ctypes.byref(width), ctypes.byref(height)
            )
        )
        return width.value, height.value

    def is_paletted(self):
        is_paletted_bool = ctypes.c_bool()
        self._check_err(
            png2raw.png2raw_is_paletted(self._inst, ctypes.byref(is_paletted_bool))
        )
        return is_paletted_bool.value

    def get_palette_rgba32(self):
        palette_data_size = ctypes.c_size_t(0)
        self._check_err(
            png2raw.png2raw_get_palette_colors_rgba32(
                self._inst, ctypes.byref(palette_data_size), None
            ),
            okay_errors={PNG2RAW_ERR.BAD_BUFFER_SIZE, PNG2RAW_ERR.BUFFER_NULL},
        )
        palette_data = (ctypes.c_uint8 * palette_data_size.value)()
        self._check_err(
            png2raw.png2raw_get_palette_colors_rgba32(
                self._inst, ctypes.byref(palette_data_size), palette_data
            )
        )
        return palette_data

    def read_to_rgba32(self):
        self._check_err(png2raw.png2raw_read_rgba32_init(self._inst))

        image_data_size = ctypes.c_size_t(0)
        self._check_err(
            png2raw.png2raw_read_rgba32(
                self._inst, ctypes.byref(image_data_size), None
            ),
            okay_errors={PNG2RAW_ERR.BAD_BUFFER_SIZE, PNG2RAW_ERR.BUFFER_NULL},
        )
        image_data = (ctypes.c_uint8 * image_data_size.value)()
        self._check_err(
            png2raw.png2raw_read_rgba32(
                self._inst, ctypes.byref(image_data_size), image_data
            )
        )
        return image_data

    def read_palette_indices(self):
        self._check_err(png2raw.png2raw_read_palette_indices_init(self._inst))

        image_data_size = ctypes.c_size_t(0)
        self._check_err(
            png2raw.png2raw_read_palette_indices(
                self._inst, ctypes.byref(image_data_size), None
            ),
            okay_errors={PNG2RAW_ERR.BAD_BUFFER_SIZE, PNG2RAW_ERR.BUFFER_NULL},
        )
        image_data = (ctypes.c_uint8 * image_data_size.value)()
        self._check_err(
            png2raw.png2raw_read_palette_indices(
                self._inst, ctypes.byref(image_data_size), image_data
            )
        )
        return image_data

    def __exit__(self, exc_type, exc_val, exc_tb):
        png2raw.png2raw_instance_free(self._inst)


def main():
    with Png2rawInstance(
        Path(
            "/home/dragorn421/Documents/oot/assets/objects/object_link_boy/eyes_shock.ci8.png"
        )
    ) as inst:
        pal_rgba32 = inst.get_palette_rgba32()
        print(pal_rgba32[:16])
        rgba32 = inst.read_to_rgba32()
        print(rgba32[:16])
        rgba32 = inst.read_palette_indices()
        print(rgba32[:16])


if __name__ == "__main__":
    main()
