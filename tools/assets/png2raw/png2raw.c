#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>

#include <png.h>

#include "png2raw.h"

void user_error_fn(png_structp png_ptr, png_const_charp error_msg) {
    fprintf(stderr, "[png2raw] error: %s\n", error_msg);
    abort(); //! TODO ... I guess don't do this (bad for use as library) but idk what, then
}

void user_warning_fn(png_structp png_ptr, png_const_charp warning_msg) {
    fprintf(stderr, "[png2raw] warning: %s\n", warning_msg);
}

#define RGBA32_PIXEL_SIZE 4

enum png2raw_instance_state {
    PNG2RAW_INSTANCE_STATE_CLEARED,                   // brand new
    PNG2RAW_INSTANCE_STATE_FILE_SET,                  // fp is set
    PNG2RAW_INSTANCE_STATE_BAD_FILE,                  // fp is set but couldn't be read or not a png
    PNG2RAW_INSTANCE_STATE_HEADER_READ,               // header has been read from fp
    PNG2RAW_INSTANCE_STATE_LIBPNG_STRUCTS_ALLOCATED,  // png_ptr and info_ptr are set
    PNG2RAW_INSTANCE_STATE_INFO_READ,                 // png_read_info called
    PNG2RAW_INSTANCE_STATE_READ_RGBA32_INITIALIZED,   // setup for reading rgba32 has happened
    PNG2RAW_INSTANCE_STATE_READ_PALETTED_INITIALIZED, // png is paletted, and setup for reading as paletted has happened
    PNG2RAW_INSTANCE_STATE_INVALID                    // can't be used for anything more (besides freeing)
};

struct png2raw_instance {
    enum png2raw_instance_state state;
    FILE* fp;
    png_structp png_ptr;
    png_infop info_ptr;
};

typedef struct png2raw_instance* png2raw_instancep;

png2raw_instancep png2raw_instance_new() {
    png2raw_instancep inst = malloc(sizeof(struct png2raw_instance));

    if (inst == NULL) {
        return NULL;
    }

    inst->state = PNG2RAW_INSTANCE_STATE_CLEARED;
    inst->png_ptr = NULL;
    inst->info_ptr = NULL;

    return inst;
}

void png2raw_instance_free(png2raw_instancep inst) {
    if (inst == NULL) {
        return;
    }

    png_destroy_read_struct(&inst->png_ptr, &inst->info_ptr, (png_infopp)NULL);

    fclose(inst->fp);

    free(inst);
}

const char* error_messages[] = {
    [PNG2RAW_ERR_OK] = "OK",
    [PNG2RAW_ERR_INST_NULL] = "inst == NULL",
    [PNG2RAW_ERR_INST_BAD_STATE] = "Bad inst state",
    [PNG2RAW_ERR_CANT_OPEN_FOR_READING] = "Can't open the file for reading",
    [PNG2RAW_ERR_CANT_READ_HEADER_BYTES] = "Can't read header bytes from the file",
    [PNG2RAW_ERR_NOT_A_PNG] = "File is not a png",
    [PNG2RAW_ERR_LIBPNG_PNG_PTR_NULL] = "png_create_read_struct returned NULL",
    [PNG2RAW_ERR_LIBPNG_INFO_PTR_NULL] = "png_create_info_struct returned NULL",
    [PNG2RAW_ERR_BUFFER_SIZE_P_NULL] = "pointer argument to buffer size is NULL",
    [PNG2RAW_ERR_BAD_BUFFER_SIZE] = "buffer size argument is not the required size"
                                    " (the value pointed to by the pointed argument has been set to the required size)",
    [PNG2RAW_ERR_BUFFER_NULL] = "buffer pointer argument is NULL",
    [PNG2RAW_ERR_PNG_IS_NOT_PALETTED] = "image is not paletted",
};
const char* png2raw_get_error_message(enum png2raw_error err) {
    if (err < 0 || err >= PNG2RAW_ERR_MAX) {
        return "png2raw_get_error_message: bad err value";
    }
    const char* msg = error_messages[err];
    if (msg == NULL) {
        return "png2raw_get_error_message: missing message for err value";
    }
    return msg;
}

enum png2raw_error png2raw_set_file_name(png2raw_instancep inst, const char* file_name) {
    if (inst == NULL) {
        return PNG2RAW_ERR_INST_NULL;
    }
    if (inst->state != PNG2RAW_INSTANCE_STATE_CLEARED) {
        return PNG2RAW_ERR_INST_BAD_STATE;
    }

    FILE* fp = fopen(file_name, "rb");
    if (fp == NULL) {
        return PNG2RAW_ERR_CANT_OPEN_FOR_READING;
    }

    inst->fp = fp;
    inst->state = PNG2RAW_INSTANCE_STATE_FILE_SET;

    return PNG2RAW_ERR_OK;
}

enum png2raw_error png2raw_read_info(png2raw_instancep inst) {
    if (inst == NULL) {
        return PNG2RAW_ERR_INST_NULL;
    }
    if (inst->state != PNG2RAW_INSTANCE_STATE_FILE_SET) {
        return PNG2RAW_ERR_INST_BAD_STATE;
    }

    FILE* fp = inst->fp;

    // Check png signature

    int num_header_bytes = 8;
    uint8_t header[num_header_bytes];
    if (fread(header, 1, num_header_bytes, fp) != num_header_bytes) {
        inst->state = PNG2RAW_INSTANCE_STATE_BAD_FILE;
        return PNG2RAW_ERR_CANT_READ_HEADER_BYTES;
    }

    bool is_png = !png_sig_cmp(header, 0, num_header_bytes);
    if (!is_png) {
        inst->state = PNG2RAW_INSTANCE_STATE_BAD_FILE;
        return PNG2RAW_ERR_NOT_A_PNG;
    }

    inst->state = PNG2RAW_INSTANCE_STATE_HEADER_READ;

    // Initialize png reading

    // Set our own error callback, to avoid having to use the longjmp mechanism libpng uses by default.
    //! TODO this is actually very bad behavior as a utility/library function
    // While we are at it, also set the warning callback.
    void* user_error_ptr = NULL;
    png_structp png_ptr =
        png_create_read_struct(PNG_LIBPNG_VER_STRING, (png_voidp)user_error_ptr, user_error_fn, user_warning_fn);

    if (png_ptr == NULL) {
        return PNG2RAW_ERR_LIBPNG_PNG_PTR_NULL;
    }

    png_infop info_ptr = png_create_info_struct(png_ptr);

    if (info_ptr == NULL) {
        png_destroy_read_struct(&png_ptr, (png_infopp)NULL, (png_infopp)NULL);
        return PNG2RAW_ERR_LIBPNG_INFO_PTR_NULL;
    }

    inst->png_ptr = png_ptr;
    inst->info_ptr = info_ptr;
    inst->state = PNG2RAW_INSTANCE_STATE_LIBPNG_STRUCTS_ALLOCATED;

    png_init_io(png_ptr, fp);

    // Indicate the stream was read for the signature bytes
    // (for passing to png_sig_cmp above)
    png_set_sig_bytes(png_ptr, num_header_bytes);

    png_read_info(png_ptr, info_ptr);

    inst->state = PNG2RAW_INSTANCE_STATE_INFO_READ;

    return PNG2RAW_ERR_OK;
}

enum png2raw_error png2raw_get_dimensions(png2raw_instancep inst, uint32_t* widthp, uint32_t* heightp) {
    if (inst == NULL) {
        return PNG2RAW_ERR_INST_NULL;
    }
    // This may be done in more states but whatever
    if (inst->state != PNG2RAW_INSTANCE_STATE_INFO_READ) {
        return PNG2RAW_ERR_INST_BAD_STATE;
    }

    png_structp png_ptr = inst->png_ptr;
    png_infop info_ptr = inst->info_ptr;

    png_uint_32 width = png_get_image_width(png_ptr, info_ptr);
    png_uint_32 height = png_get_image_height(png_ptr, info_ptr);

    if (widthp != NULL) {
        *widthp = width;
    }
    if (heightp != NULL) {
        *heightp = height;
    }

    return PNG2RAW_ERR_OK;
}

enum png2raw_error png2raw_read_rgba32_init(png2raw_instancep inst) {
    if (inst == NULL) {
        return PNG2RAW_ERR_INST_NULL;
    }
    if (inst->state != PNG2RAW_INSTANCE_STATE_INFO_READ) {
        return PNG2RAW_ERR_INST_BAD_STATE;
    }

    png_structp png_ptr = inst->png_ptr;
    png_infop info_ptr = inst->info_ptr;

    // gamma / alpha stuff : no idea
    // (would be before or after png_read_info : idk)
    // PNG_ALPHA_PNG
    // png_set_alpha_mode(pp, PNG_ALPHA_STANDARD, PNG_GAMMA_LINEAR); // idk
    // not sure where png_set_alpha_mode should be anyway (probably with all the other png_set_ s)
    /*
    Based on:
1) The PNG file gamma from the gAMA chunk.  This overwrites the default value
provided by an earlier call to png_set_gamma or png_set_alpha_mode.
    calling set_alpha_mode may do more harm than good idk
    */

    // Indicate transform operations to be performed
    // (it is unclear if the order matters)

    png_set_palette_to_rgb(png_ptr);                   // Convert paletted to RGB if needed
    png_set_gray_to_rgb(png_ptr);                      // Convert grayscale to RGB if needed
    png_set_expand(png_ptr);                           // Convert to 24-bit RGB if needed
    png_set_scale_16(png_ptr);                         // Convert from 16 bits per channel to 8 if needed
    png_set_add_alpha(png_ptr, 255, PNG_FILLER_AFTER); // Ensure there is a alpha channel, defaulting to opaque

    /*
     * From the manual:
     *
     * > if you are going to call png_read_update_info() you must call png_set_interlace_handling() before it unless you
     * > want to receive interlaced output
     */
    png_set_interlace_handling(png_ptr);

    // (I don't know if I need to call this)
    png_read_update_info(png_ptr, info_ptr);

    inst->state = PNG2RAW_INSTANCE_STATE_READ_RGBA32_INITIALIZED;

    return PNG2RAW_ERR_OK;
}

enum png2raw_error png2raw_read_rgba32(png2raw_instancep inst, size_t* image_data_size_p, uint8_t* image_data) {
    if (inst == NULL) {
        return PNG2RAW_ERR_INST_NULL;
    }
    if (inst->state != PNG2RAW_INSTANCE_STATE_READ_RGBA32_INITIALIZED) {
        return PNG2RAW_ERR_INST_BAD_STATE;
    }

    png_structp png_ptr = inst->png_ptr;
    png_infop info_ptr = inst->info_ptr;

    png_uint_32 height = png_get_image_height(png_ptr, info_ptr);
    png_uint_32 width = png_get_image_width(png_ptr, info_ptr);

    // libpng allows the buffer to be allocated row-by-row, just use one whole block for simplicity
    size_t required_image_data_size = height * width * RGBA32_PIXEL_SIZE;

    if (image_data_size_p == NULL) {
        return PNG2RAW_ERR_BUFFER_SIZE_P_NULL;
    }

    if (*image_data_size_p != required_image_data_size) {
        // Pass the required buffer size to the caller
        *image_data_size_p = required_image_data_size;

        return PNG2RAW_ERR_BAD_BUFFER_SIZE;
    }

    if (image_data == NULL) {
        return PNG2RAW_ERR_BUFFER_NULL;
    }

    // Set the row pointers to the right locations in the image_data buffer
    png_bytep row_pointers[height];
    for (uint32_t row = 0; row < height; row++) {
        row_pointers[row] = image_data + row * width * RGBA32_PIXEL_SIZE;
    }

    // Read png image

    png_read_image(png_ptr, row_pointers);

    png_read_end(png_ptr, (png_infop)NULL);

    inst->state = PNG2RAW_INSTANCE_STATE_INVALID;

    return PNG2RAW_ERR_OK;
}

enum png2raw_error png2raw_is_paletted(png2raw_instancep inst, bool* is_paletted_p) {
    if (inst == NULL) {
        return PNG2RAW_ERR_INST_NULL;
    }
    if (inst->state != PNG2RAW_INSTANCE_STATE_INFO_READ) {
        return PNG2RAW_ERR_INST_BAD_STATE;
    }

    png_structp png_ptr = inst->png_ptr;
    png_infop info_ptr = inst->info_ptr;

    png_byte color_type = png_get_color_type(png_ptr, info_ptr);

    *is_paletted_p = color_type == PNG_COLOR_TYPE_PALETTE;

    return PNG2RAW_ERR_OK;
}

/*
 * Some information on paletted png files:
 *
 * - They are at most 8 bits per pixel. The pixel data is a palette index starting at 0.
 *
 * - The palette is stored in a mandatory "PLTE chunk", holding an array of 24-bits RRGGBB colors, indexed by
 *   palette index.
 *
 * - Transparency is optional. If any, it is stored in a "tRNS chunk", holding an array of 8-bits AA values, indexed
 *   by palette index.
 *
 *   Note the following from the PNG specification:
 *
 *   > tRNS can contain fewer values than there are palette entries.
 *   > In this case, the alpha value for all remaining palette entries is assumed to be 255.
 *
 * - Additional notes:
 *   - sPLT "Suggested palette" is unrelated to paletted png files
 */

enum png2raw_error png2raw_get_palette_colors_rgba32(png2raw_instancep inst, size_t* palette_data_size_p,
                                                     uint8_t* palette_data) {
    if (inst == NULL) {
        return PNG2RAW_ERR_INST_NULL;
    }
    if (inst->state != PNG2RAW_INSTANCE_STATE_INFO_READ) {
        // Palette colors may very well be read later, after the image data (palette indices) were read, but just don't
        // support that.
        return PNG2RAW_ERR_INST_BAD_STATE;
    }

    png_structp png_ptr = inst->png_ptr;
    png_infop info_ptr = inst->info_ptr;

    png_byte color_type = png_get_color_type(png_ptr, info_ptr);
    if (color_type != PNG_COLOR_TYPE_PALETTE) {
        return PNG2RAW_ERR_PNG_IS_NOT_PALETTED;
    }

    png_colorp palette;
    int num_palette;

    if (!png_get_PLTE(png_ptr, info_ptr, &palette, &num_palette)) {
        // No PLTE chunk.

        // I think this is not supposed to happen, since at this point the image is confirmed to be of the paletted
        // type, and the specification says the PLTE chunk must come before IDAT, and the manual says png_read_info
        // processes all chunk up to the image data (IDAT).

        png_error(png_ptr, "No PLTE chunk in palette type png");
    }

    png_bytep trans_alpha;
    int num_trans;
    png_color_16p trans_color;

    if (!png_get_tRNS(png_ptr, info_ptr, &trans_alpha, &num_trans, &trans_color)) {
        // No tRNS chunk.
        // Palette indices past the tRNS length are opaque, so making it "0-length" here is equivalent to having all
        // palette indices opaque.
        num_trans = 0;
    }

    size_t required_palette_data_size = num_palette * RGBA32_PIXEL_SIZE;

    if (palette_data_size_p == NULL) {
        return PNG2RAW_ERR_BUFFER_SIZE_P_NULL; //! TODO rename error or add new enum values (this and below)
    }

    if (*palette_data_size_p != required_palette_data_size) {
        // Pass the required buffer size to the caller
        *palette_data_size_p = required_palette_data_size;

        return PNG2RAW_ERR_BAD_BUFFER_SIZE;
    }

    if (palette_data == NULL) {
        return PNG2RAW_ERR_BUFFER_NULL;
    }

    for (int palette_index = 0; palette_index < num_palette; palette_index++) {
        png_colorp rgb = &palette[palette_index];
        png_byte a;

        if (palette_index < num_trans) {
            a = trans_alpha[palette_index];
        } else {
            // Palette indices past the tRNS length are opaque.
            a = 255;
        }

        uint8_t* out_rgba = palette_data + palette_index * RGBA32_PIXEL_SIZE;
        out_rgba[0] = rgb->red;
        out_rgba[1] = rgb->green;
        out_rgba[2] = rgb->blue;
        out_rgba[3] = a;
    }

    return PNG2RAW_ERR_OK;
}

enum png2raw_error png2raw_read_palette_indices_init(png2raw_instancep inst) {
    if (inst == NULL) {
        return PNG2RAW_ERR_INST_NULL;
    }
    if (inst->state != PNG2RAW_INSTANCE_STATE_INFO_READ) {
        return PNG2RAW_ERR_INST_BAD_STATE;
    }

    png_structp png_ptr = inst->png_ptr;
    png_infop info_ptr = inst->info_ptr;

    png_byte color_type = png_get_color_type(png_ptr, info_ptr);
    if (color_type != PNG_COLOR_TYPE_PALETTE) {
        return PNG2RAW_ERR_PNG_IS_NOT_PALETTED;
    }

    // Pack one pixel per byte, instead of possibly several pixels per byte.
    // This effectively means converting from however-many bits per pixel, to 8 bits per pixel.
    png_set_packing(png_ptr);

    png_set_interlace_handling(png_ptr);

    png_read_update_info(png_ptr, info_ptr);

    inst->state = PNG2RAW_INSTANCE_STATE_READ_PALETTED_INITIALIZED;

    return PNG2RAW_ERR_OK;
}

enum png2raw_error png2raw_read_palette_indices(png2raw_instancep inst, size_t* image_data_size_p,
                                                uint8_t* image_data) {
    // This function is mostly a copy-paste from png2raw_read_rgba32

    if (inst == NULL) {
        return PNG2RAW_ERR_INST_NULL;
    }
    if (inst->state != PNG2RAW_INSTANCE_STATE_READ_PALETTED_INITIALIZED) {
        return PNG2RAW_ERR_INST_BAD_STATE;
    }

    png_structp png_ptr = inst->png_ptr;
    png_infop info_ptr = inst->info_ptr;

    png_uint_32 height = png_get_image_height(png_ptr, info_ptr);
    png_uint_32 width = png_get_image_width(png_ptr, info_ptr);

    // One byte per pixel
    size_t required_image_data_size = height * width;

    if (image_data_size_p == NULL) {
        return PNG2RAW_ERR_BUFFER_SIZE_P_NULL;
    }

    if (*image_data_size_p != required_image_data_size) {
        *image_data_size_p = required_image_data_size;

        return PNG2RAW_ERR_BAD_BUFFER_SIZE;
    }

    if (image_data == NULL) {
        return PNG2RAW_ERR_BUFFER_NULL;
    }

    png_bytep row_pointers[height];
    for (uint32_t row = 0; row < height; row++) {
        row_pointers[row] = image_data + row * width;
    }

    png_read_image(png_ptr, row_pointers);

    png_read_end(png_ptr, (png_infop)NULL);

    inst->state = PNG2RAW_INSTANCE_STATE_INVALID;

    return PNG2RAW_ERR_OK;
}

// main (example usage)

enum png2raw_main_mode {
    /**
     * Read a png and write its pixels to stdout in rgba32 format.
     *
     * For example if a png is one pixel high, three pixels wide, with
     *
     * - left pixel: opaque red
     * - middle pixel: opaque yellow
     * - right pixel: half-transparent blue
     *
     * the following bytes will be written to stdout (`RR GG BB AA` for each pixel):
     *
     *     FF 00 00 FF  FF FF 00 FF  00 00 FF 80
     *
     * (as binary, not as this textual representation)
     */
    PNG2RAW_MAIN_MODE_RGBA32,

    /**
     * Read a paletted png and write its palette to stdout in rgba32 format, similarly to PNG2RAW_MAIN_MODE_RGBA32.
     */
    PNG2RAW_MAIN_MODE_PALETTE_RGBA32,

    /**
     * Read a paletted png and write its image data to stdout, with one palette index per byte for each pixel.
     */
    PNG2RAW_MAIN_MODE_PALETTE_INDICES,

    /**
     * Read a png and write its width and height to stdout (as text).
     */
    PNG2RAW_MAIN_MODE_DIMENSIONS
};

int main(int argc, char** argv) {
    if (!(argc == 2 || argc == 3)) {
    bad_usage:
        fprintf(stderr,
                "Usage: %s [--rgba32 | --palette-rgba32 | --palette-indices | --dimensions] <path/to/image.png>\n",
                argv[0]);
        return EXIT_FAILURE;
    }

    enum png2raw_main_mode main_mode;

    if (argc == 2) {
        main_mode = PNG2RAW_MAIN_MODE_RGBA32;
    } else {
        main_mode = -1;

        char* main_mode_arg = argv[1];

        const char* modes_arg[] = {
            [PNG2RAW_MAIN_MODE_RGBA32] = "--rgba32",
            [PNG2RAW_MAIN_MODE_PALETTE_RGBA32] = "--palette-rgba32",
            [PNG2RAW_MAIN_MODE_PALETTE_INDICES] = "--palette-indices",
            [PNG2RAW_MAIN_MODE_DIMENSIONS] = "--dimensions",
        };

        for (int i = 0; i < 4; i++) {
            if (strcmp(main_mode_arg, modes_arg[i]) == 0) {
                main_mode = i;
                break;
            }
        }

        if (main_mode < 0) {
            goto bad_usage;
        }
    }

    char* file_name = argv[argc - 1];

    png2raw_instancep inst = png2raw_instance_new();

    enum png2raw_error err;

#define HANDLE_ERR(err)                                                                                  \
    if (err != PNG2RAW_ERR_OK) {                                                                         \
        fprintf(stderr, "png2raw main() %d err=%d %s\n", __LINE__, err, png2raw_get_error_message(err)); \
        return EXIT_FAILURE;                                                                             \
    }

    err = png2raw_set_file_name(inst, file_name);
    HANDLE_ERR(err)

    err = png2raw_read_info(inst);
    HANDLE_ERR(err)

    switch (main_mode) {
        case PNG2RAW_MAIN_MODE_RGBA32: {
            err = png2raw_read_rgba32_init(inst);
            HANDLE_ERR(err)

            size_t image_data_size = 0;

            err = png2raw_read_rgba32(inst, &image_data_size, NULL);
            if (err != PNG2RAW_ERR_BAD_BUFFER_SIZE) {
                HANDLE_ERR(err)
            }
            if (err == PNG2RAW_ERR_OK) {
                fprintf(stderr, "Expected PNG2RAW_ERR_BAD_BUFFER_SIZE but got PNG2RAW_ERR_OK\n");
                return EXIT_FAILURE;
            }

            uint8_t* image_data = malloc(image_data_size);

            err = png2raw_read_rgba32(inst, &image_data_size, image_data);
            HANDLE_ERR(err)

            // Note png2raw_instance_free could be called here, as image_data is owned by us.

            fwrite(image_data, 1, image_data_size, stdout);

            free(image_data);

        } break;

        case PNG2RAW_MAIN_MODE_PALETTE_RGBA32: {
            size_t palette_data_size = 0;

            err = png2raw_get_palette_colors_rgba32(inst, &palette_data_size, NULL);
            if (err != PNG2RAW_ERR_BAD_BUFFER_SIZE) {
                HANDLE_ERR(err)
            }
            if (err == PNG2RAW_ERR_OK) {
                fprintf(stderr, "Expected PNG2RAW_ERR_BAD_BUFFER_SIZE but got PNG2RAW_ERR_OK\n");
                return EXIT_FAILURE;
            }

            uint8_t* palette_data = malloc(palette_data_size);

            err = png2raw_get_palette_colors_rgba32(inst, &palette_data_size, palette_data);
            HANDLE_ERR(err)

            fwrite(palette_data, 1, palette_data_size, stdout);

            free(palette_data);

        } break;

        case PNG2RAW_MAIN_MODE_PALETTE_INDICES: {
            err = png2raw_read_palette_indices_init(inst);
            HANDLE_ERR(err)

            size_t image_data_size = 0;

            err = png2raw_read_palette_indices(inst, &image_data_size, NULL);
            if (err != PNG2RAW_ERR_BAD_BUFFER_SIZE) {
                HANDLE_ERR(err)
            }
            if (err == PNG2RAW_ERR_OK) {
                fprintf(stderr, "Expected PNG2RAW_ERR_BAD_BUFFER_SIZE but got PNG2RAW_ERR_OK\n");
                return EXIT_FAILURE;
            }

            uint8_t* image_data = malloc(image_data_size);

            err = png2raw_read_palette_indices(inst, &image_data_size, image_data);
            HANDLE_ERR(err)

            fwrite(image_data, 1, image_data_size, stdout);

            free(image_data);

        } break;

        case PNG2RAW_MAIN_MODE_DIMENSIONS: {
            uint32_t width, height;
            err = png2raw_get_dimensions(inst, &width, &height);
            HANDLE_ERR(err)

            fprintf(stdout, "%d %d\n", width, height);

        } break;
    }

    png2raw_instance_free(inst);

    return EXIT_SUCCESS;
}
