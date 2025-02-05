#ifndef RAW2PNG_H
#define RAW2PNG_H

enum raw2png_error {
    RAW2PNG_ERR_OK, // no error
    RAW2PNG_ERR_CANT_OPEN_FOR_WRITING,
    RAW2PNG_ERR_LIBPNG_PNG_PTR_NULL,
    RAW2PNG_ERR_LIBPNG_INFO_PTR_NULL,
    RAW2PNG_ERR_BAD_NUM_PALETTE,
    RAW2PNG_ERR_DATA_EXCEEDS_NUM_PALETTE,
    RAW2PNG_ERR_MAX
};

const char* raw2png_get_error_message(enum raw2png_error err);

enum raw2png_error raw2png_write(const char* file_name, uint32_t width, uint32_t height, uint8_t* image_data);

enum raw2png_error raw2png_write_paletted(const char* file_name, uint32_t width, uint32_t height, uint8_t* palette_data,
                                          int num_palette, uint8_t* image_data);

#endif
