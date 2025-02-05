#include <stdlib.h>
#include <stdint.h>

#include <png.h>

#include "raw2png.h"

void user_error_fn(png_structp png_ptr, png_const_charp error_msg) {
    fprintf(stderr, "[raw2png] error: %s\n", error_msg);
    abort(); //! TODO ... I guess don't do this (bad for use as library) but idk what, then
}

void user_warning_fn(png_structp png_ptr, png_const_charp warning_msg) {
    fprintf(stderr, "[raw2png] warning: %s\n", warning_msg);
}

#define RGBA32_PIXEL_SIZE 4

const char* error_messages[] = {
    [RAW2PNG_ERR_OK] = "OK",
    [RAW2PNG_ERR_CANT_OPEN_FOR_WRITING] = "Can't open the file for writing",
    [RAW2PNG_ERR_LIBPNG_PNG_PTR_NULL] = "png_create_read_struct returned NULL",
    [RAW2PNG_ERR_LIBPNG_INFO_PTR_NULL] = "png_create_info_struct returned NULL",
    [RAW2PNG_ERR_BAD_NUM_PALETTE] = "num_palette should be between 1 and 256 (inclusive)",
    [RAW2PNG_ERR_DATA_EXCEEDS_NUM_PALETTE] = "image_data contains indices exceeding (>=) num_palette",
};
const char* raw2png_get_error_message(enum raw2png_error err) {
    if (err < 0 || err >= RAW2PNG_ERR_MAX) {
        return "raw2png_get_error_message: bad err value";
    }
    const char* msg = error_messages[err];
    if (msg == NULL) {
        return "raw2png_get_error_message: missing message for err value";
    }
    return msg;
}

enum raw2png_error raw2png_write(const char* file_name, uint32_t width, uint32_t height, uint8_t* image_data) {
    FILE* fp = fopen(file_name, "wb");

    if (fp == NULL) {
        return RAW2PNG_ERR_CANT_OPEN_FOR_WRITING;
    }

    void* user_error_ptr = NULL;
    png_structp png_ptr =
        png_create_write_struct(PNG_LIBPNG_VER_STRING, (png_voidp)user_error_ptr, user_error_fn, user_warning_fn);

    if (png_ptr == NULL) {
        fclose(fp);
        return RAW2PNG_ERR_LIBPNG_PNG_PTR_NULL;
    }

    png_infop info_ptr = png_create_info_struct(png_ptr);

    if (info_ptr == NULL) {
        png_destroy_write_struct(&png_ptr, (png_infopp)NULL);
        fclose(fp);
        return RAW2PNG_ERR_LIBPNG_INFO_PTR_NULL;
    }

    png_init_io(png_ptr, fp);

    // Write rgba32: 8 bits per pixel, RGBA
    png_set_IHDR(png_ptr, info_ptr, width, height, 8, PNG_COLOR_TYPE_RGBA, PNG_INTERLACE_NONE,
                 PNG_COMPRESSION_TYPE_DEFAULT, PNG_FILTER_TYPE_DEFAULT);

    png_bytep row_pointers[height];
    for (uint32_t row = 0; row < height; row++) {
        row_pointers[row] = image_data + row * width * RGBA32_PIXEL_SIZE;
    }

    png_set_rows(png_ptr, info_ptr, row_pointers);

    png_write_png(png_ptr, info_ptr, PNG_TRANSFORM_IDENTITY, NULL);

    // libpng does not close the stream by itself. (experimentally and from its source)
    fclose(fp);

    return RAW2PNG_ERR_OK;
}

enum raw2png_error raw2png_write_paletted(const char* file_name, uint32_t width, uint32_t height, uint8_t* palette_data,
                                          int num_palette, uint8_t* image_data) {
    if (num_palette < 1 || num_palette > 256) {
        // Paletted png files are at most 8 bits per pixel,
        // so the palette cannot (or doesn't need to?) be larger than 256 colors.
        return RAW2PNG_ERR_BAD_NUM_PALETTE;
    }
    // Check image_data doesn't index outside the palette
    // libpng also checks this and will error if needed, so we check ourselves preemptively.
    for (uint32_t y = 0; y != height; y++)
        for (uint32_t x = 0; x != width; x++)
            if (image_data[y * width + x] >= num_palette)
                return RAW2PNG_ERR_DATA_EXCEEDS_NUM_PALETTE;

    FILE* fp = fopen(file_name, "wb");

    if (fp == NULL) {
        return RAW2PNG_ERR_CANT_OPEN_FOR_WRITING;
    }

    void* user_error_ptr = NULL;
    png_structp png_ptr =
        png_create_write_struct(PNG_LIBPNG_VER_STRING, (png_voidp)user_error_ptr, user_error_fn, user_warning_fn);

    if (png_ptr == NULL) {
        fclose(fp);
        return RAW2PNG_ERR_LIBPNG_PNG_PTR_NULL;
    }

    png_infop info_ptr = png_create_info_struct(png_ptr);

    if (info_ptr == NULL) {
        png_destroy_write_struct(&png_ptr, (png_infopp)NULL);
        fclose(fp);
        return RAW2PNG_ERR_LIBPNG_INFO_PTR_NULL;
    }

    png_init_io(png_ptr, fp);

    png_set_IHDR(png_ptr, info_ptr, width, height, 8, PNG_COLOR_TYPE_PALETTE, PNG_INTERLACE_NONE,
                 PNG_COMPRESSION_TYPE_DEFAULT, PNG_FILTER_TYPE_DEFAULT);

    // 1 <= num_palette <= 256 is enforced above
    png_color palette[num_palette];
    png_byte trans_alpha[num_palette];

    // Split the input rgba32 palette in palette_data between RGB (into palette) and A (into trans_alpha)
    for (int palette_index = 0; palette_index < num_palette; palette_index++) {
        png_color* rgb = &palette[palette_index];
        png_byte* a = &trans_alpha[palette_index];

        uint8_t* in_rgba = palette_data + palette_index * RGBA32_PIXEL_SIZE;
        rgb->red = in_rgba[0];
        rgb->green = in_rgba[1];
        rgb->blue = in_rgba[2];
        // The tRNS chunk could be shortened (or even missing) if the last alpha values are all opaque 255,
        // but this storage optimization hinted at by the png specification is in my opinion not worth implementing.
        *a = in_rgba[3];
    }

    png_set_PLTE(png_ptr, info_ptr, palette, num_palette);

    // The trans_color argument is only relevant for non-paletted images, pass NULL
    png_set_tRNS(png_ptr, info_ptr, trans_alpha, num_palette, NULL);

    png_bytep row_pointers[height];
    for (uint32_t row = 0; row < height; row++) {
        row_pointers[row] = image_data + row * width;
    }

    png_set_rows(png_ptr, info_ptr, row_pointers);

    png_write_png(png_ptr, info_ptr, PNG_TRANSFORM_IDENTITY, NULL);

    fclose(fp);

    return RAW2PNG_ERR_OK;
}
