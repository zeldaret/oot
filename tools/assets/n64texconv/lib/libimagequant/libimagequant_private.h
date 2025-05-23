#ifdef _OPENMP
#include <omp.h>
#define LIQ_TEMP_ROW_WIDTH(img_width) (((img_width) | 15) + 1) /* keep alignment & leave space between rows to avoid cache line contention */
#else
#define LIQ_TEMP_ROW_WIDTH(img_width) (img_width)
#define omp_get_max_threads() 1
#define omp_get_thread_num() 0
#endif

struct liq_image {
    const char *magic_header;
    void* (*malloc)(size_t);
    void (*free)(void*);

    f_pixel *f_pixels;
    liq_color **rows;
    double gamma;
    unsigned int width, height;
    unsigned char *importance_map, *edges, *dither_map;
    liq_color *pixels, *temp_row;
    f_pixel *temp_f_row;
    liq_image_get_rgba_row_callback *row_callback;
    void *row_callback_user_info;
    liq_image *background;
    f_pixel fixed_colors[256];
    unsigned short fixed_colors_count;
    bool free_pixels, free_rows, free_rows_internal;
};

typedef struct liq_remapping_result {
    const char *magic_header;
    void* (*malloc)(size_t);
    void (*free)(void*);

    unsigned char *pixels;
    colormap *palette;
    liq_progress_callback_function *progress_callback;
    void *progress_callback_user_info;

    liq_palette int_palette;
    double gamma, palette_error;
    float dither_level;
    unsigned char use_dither_map;
    unsigned char progress_stage1;
} liq_remapping_result;


LIQ_PRIVATE bool liq_image_get_row_f_init(liq_image *img) LIQ_NONNULL;
LIQ_PRIVATE const f_pixel *liq_image_get_row_f(liq_image *input_image, unsigned int row) LIQ_NONNULL;
LIQ_PRIVATE bool liq_remap_progress(const liq_remapping_result *quant, const float percent) LIQ_NONNULL;
