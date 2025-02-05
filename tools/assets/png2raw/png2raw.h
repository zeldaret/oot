#ifndef PNG2RAW_H
#define PNG2RAW_H

/**
 * Most functions return a png2raw_error value. If that value is PNG2RAW_ERR_OK, it means the function completed
 * successfully. Otherwise something went wrong (such as passing a wrong argument). See png2raw_get_error_message for
 * getting a message from an error value.
 */
enum png2raw_error {
    PNG2RAW_ERR_OK, // no error
    PNG2RAW_ERR_INST_NULL,
    PNG2RAW_ERR_INST_BAD_STATE,
    PNG2RAW_ERR_CANT_OPEN_FOR_READING,
    PNG2RAW_ERR_CANT_READ_HEADER_BYTES,
    PNG2RAW_ERR_NOT_A_PNG,
    PNG2RAW_ERR_LIBPNG_PNG_PTR_NULL,
    PNG2RAW_ERR_LIBPNG_INFO_PTR_NULL,
    PNG2RAW_ERR_BUFFER_SIZE_P_NULL,
    PNG2RAW_ERR_BAD_BUFFER_SIZE,
    PNG2RAW_ERR_BUFFER_NULL,
    PNG2RAW_ERR_PNG_IS_NOT_PALETTED,
    PNG2RAW_ERR_MAX
};

struct png2raw_instance;
/**
 * Most functions take a png2raw_instancep argument. It stores the state of reading a single png file.
 * See png2raw_instance_new and png2raw_instance_free for constructing/freeing a new instance.
 */
typedef struct png2raw_instance* png2raw_instancep;

/**
 * Should eventually be freed with png2raw_instance_free.
 */
png2raw_instancep png2raw_instance_new();
void png2raw_instance_free(png2raw_instancep inst);

const char* png2raw_get_error_message(enum png2raw_error err);

// Call after creating an instance to set the file
enum png2raw_error png2raw_set_file_name(png2raw_instancep inst, const char* file_name);

// Call after setting the file
enum png2raw_error png2raw_read_info(png2raw_instancep inst);

// These three can only be called right after png2raw_read_info (before the png2raw_read_..._init functions)
enum png2raw_error png2raw_get_dimensions(png2raw_instancep inst, uint32_t* widthp, uint32_t* heightp);
enum png2raw_error png2raw_is_paletted(png2raw_instancep inst, bool* is_paletted_p);
// The last two arguments work the same as those of the png2raw_read_rgba32 function.
enum png2raw_error png2raw_get_palette_colors_rgba32(png2raw_instancep inst, size_t* palette_data_size_p,
                                                     uint8_t* palette_data);

// After calling png2raw_read_info, the png2raw_read_..._init functions may be called

enum png2raw_error png2raw_read_rgba32_init(png2raw_instancep inst);
/**
 * Store the image pixels as rgba32 into `image_data`.
 *
 * png2raw_read_rgba32_init must have been called first.
 *
 * Call with `&image_data_size, NULL` to get the size of the buffer to allocate.
 * Expect the error PNG2RAW_ERR_BAD_BUFFER_SIZE to be returned then.
 * Then call again with `&image_data_size, image_data`.
 */
enum png2raw_error png2raw_read_rgba32(png2raw_instancep inst, size_t* image_data_size_p, uint8_t* image_data);

enum png2raw_error png2raw_read_palette_indices_init(png2raw_instancep inst);
// The last two arguments work the same as those of the png2raw_read_rgba32 function.
// Can optionally be called after png2raw_read_palette_indices_init, but before png2raw_read_palette_indices
enum png2raw_error png2raw_read_palette_indices(png2raw_instancep inst, size_t* image_data_size_p, uint8_t* image_data);

#endif
