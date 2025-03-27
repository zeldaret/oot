#include <stdlib.h>
#include <string.h>

#include "libimagequant.h"
#include "pam.h"
#include "libimagequant_private.h"

#include "nearest.h"
#include "kmeans.h"

LIQ_PRIVATE LIQ_NONNULL float remap_to_palette(liq_image *const input_image, unsigned char *const *const output_pixels, colormap *const map)
{
    const int rows = input_image->height;
    const unsigned int cols = input_image->width;
    double remapping_error=0;

    if (!liq_image_get_row_f_init(input_image)) {
        return -1;
    }
    if (input_image->background && !liq_image_get_row_f_init(input_image->background)) {
        return -1;
    }

    const colormap_item *acolormap = map->palette;

    struct nearest_map *const n = nearest_init(map);
    liq_image *background = input_image->background;
    const int transparent_index = background ? nearest_search(n, &(f_pixel){0,0,0,0}, 0, NULL) : -1;
    if (background && acolormap[transparent_index].acolor.a > 1.f/256.f) {
        // palette unsuitable for using the bg
        background = NULL;
    }


    const unsigned int max_threads = omp_get_max_threads();
    LIQ_ARRAY(kmeans_state, average_color, (KMEANS_CACHE_LINE_GAP+map->colors) * max_threads);
    kmeans_init(map, max_threads, average_color);

#if __GNUC__ >= 9 || __clang__
    #pragma omp parallel for if (rows*cols > 3000) \
        schedule(static) default(none) shared(background,acolormap,average_color,cols,input_image,map,n,output_pixels,rows,transparent_index) reduction(+:remapping_error)
#endif
    for(int row = 0; row < rows; ++row) {
        const f_pixel *const row_pixels = liq_image_get_row_f(input_image, row);
        const f_pixel *const bg_pixels = background && acolormap[transparent_index].acolor.a < MIN_OPAQUE_A ? liq_image_get_row_f(background, row) : NULL;

        unsigned int last_match=0;
        for(unsigned int col = 0; col < cols; ++col) {
            float diff;
            last_match = nearest_search(n, &row_pixels[col], last_match, &diff);
            if (bg_pixels) {
                float bg_diff = colordifference(bg_pixels[col], acolormap[last_match].acolor);
                if (bg_diff <= diff) {
                    diff = bg_diff;
                    last_match = transparent_index;
                }
            }
            output_pixels[row][col] = last_match;

            remapping_error += diff;
            if (last_match != transparent_index) {
                kmeans_update_color(row_pixels[col], 1.0, map, last_match, omp_get_thread_num(), average_color);
            }
        }
    }

    kmeans_finalize(map, max_threads, average_color);

    nearest_free(n);

    return remapping_error / (input_image->width * input_image->height);
}

inline static f_pixel get_dithered_pixel(const float dither_level, const float max_dither_error, const f_pixel thiserr, const f_pixel px)
{
    /* Use Floyd-Steinberg errors to adjust actual color. */
    const float sr = thiserr.r * dither_level,
                sg = thiserr.g * dither_level,
                sb = thiserr.b * dither_level,
                sa = thiserr.a * dither_level;

    float ratio = 1.0;
    const float max_overflow = 1.1f;
    const float max_underflow = -0.1f;

    // allowing some overflow prevents undithered bands caused by clamping of all channels
           if (px.r + sr > max_overflow)  ratio = MIN(ratio, (max_overflow -px.r)/sr);
    else { if (px.r + sr < max_underflow) ratio = MIN(ratio, (max_underflow-px.r)/sr); }
           if (px.g + sg > max_overflow)  ratio = MIN(ratio, (max_overflow -px.g)/sg);
    else { if (px.g + sg < max_underflow) ratio = MIN(ratio, (max_underflow-px.g)/sg); }
           if (px.b + sb > max_overflow)  ratio = MIN(ratio, (max_overflow -px.b)/sb);
    else { if (px.b + sb < max_underflow) ratio = MIN(ratio, (max_underflow-px.b)/sb); }

    float a = px.a + sa;
         if (a > 1.f) { a = 1.f; }
    else if (a < 0)   { a = 0; }

     // If dithering error is crazy high, don't propagate it that much
     // This prevents crazy geen pixels popping out of the blue (or red or black! ;)
     const float dither_error = sr*sr + sg*sg + sb*sb + sa*sa;
     if (dither_error > max_dither_error) {
         ratio *= 0.8f;
     } else if (dither_error < 2.f/256.f/256.f) {
        // don't dither areas that don't have noticeable error — makes file smaller
        return px;
    }

    return (f_pixel) {
        .r=px.r + sr * ratio,
        .g=px.g + sg * ratio,
        .b=px.b + sb * ratio,
        .a=a,
    };
}

/**
  Uses edge/noise map to apply dithering only to flat areas. Dithering on edges creates jagged lines, and noisy areas are "naturally" dithered.

  If output_image_is_remapped is true, only pixels noticeably changed by error diffusion will be written to output image.
 */
LIQ_PRIVATE LIQ_NONNULL bool remap_to_palette_floyd(liq_image *input_image, unsigned char *const output_pixels[], liq_remapping_result *quant, const float max_dither_error, const bool output_image_is_remapped)
{
    const int rows = input_image->height, cols = input_image->width;
    const unsigned char *dither_map = quant->use_dither_map ? (input_image->dither_map ? input_image->dither_map : input_image->edges) : NULL;

    const colormap *map = quant->palette;
    const colormap_item *acolormap = map->palette;

    if (!liq_image_get_row_f_init(input_image)) {
        return false;
    }
    if (input_image->background && !liq_image_get_row_f_init(input_image->background)) {
        return false;
    }

    /* Initialize Floyd-Steinberg error vectors. */
    const size_t errwidth = cols+2;
    f_pixel *restrict thiserr = input_image->malloc(errwidth * sizeof(thiserr[0]) * 2); // +2 saves from checking out of bounds access
    if (!thiserr) return false;
    f_pixel *restrict nexterr = thiserr + errwidth;
    memset(thiserr, 0, errwidth * sizeof(thiserr[0]));

    bool ok = true;
    struct nearest_map *const n = nearest_init(map);
    liq_image *background = input_image->background;
    const int transparent_index = background ? nearest_search(n, &(f_pixel){0,0,0,0}, 0, NULL) : -1;
    if (background && acolormap[transparent_index].acolor.a > 1.f/256.f) {
        // palette unsuitable for using the bg
        background = NULL;
    }

    // response to this value is non-linear and without it any value < 0.8 would give almost no dithering
    float base_dithering_level = quant->dither_level;
    base_dithering_level = 1.f - (1.f-base_dithering_level)*(1.f-base_dithering_level);

    if (dither_map) {
        base_dithering_level *= 1.f/255.f; // convert byte to float
    }
    base_dithering_level *= 15.f/16.f; // prevent small errors from accumulating

    int fs_direction = 1;
    unsigned int last_match=0;
    for (int row = 0; row < rows; ++row) {
        if (liq_remap_progress(quant, quant->progress_stage1 + row * (100.f - quant->progress_stage1) / rows)) {
            ok = false;
            break;
        }

        memset(nexterr, 0, errwidth * sizeof(nexterr[0]));

        int col = (fs_direction > 0) ? 0 : (cols - 1);
        const f_pixel *const row_pixels = liq_image_get_row_f(input_image, row);
        const f_pixel *const bg_pixels = background && acolormap[transparent_index].acolor.a < MIN_OPAQUE_A ? liq_image_get_row_f(background, row) : NULL;
        int undithered_bg_used = 0;

        do {
            float dither_level = base_dithering_level;
            if (dither_map) {
                dither_level *= dither_map[row*cols + col];
            }

            const f_pixel spx = get_dithered_pixel(dither_level, max_dither_error, thiserr[col + 1], row_pixels[col]);

            const unsigned int guessed_match = output_image_is_remapped ? output_pixels[row][col] : last_match;
            float dither_diff;
            last_match = nearest_search(n, &spx, guessed_match, &dither_diff);
            f_pixel output_px = acolormap[last_match].acolor;
            // this is for animgifs
            if (bg_pixels) {
                // if the background makes better match *with* dithering, it's a definitive win
                float bg_for_dither_diff = colordifference(spx, bg_pixels[col]);
                if (bg_for_dither_diff <= dither_diff) {
                    output_px = bg_pixels[col];
                    last_match = transparent_index;
                } else if (undithered_bg_used > 1) {
                    // the undithered fallback can cause artifacts when too many undithered pixels accumulate a big dithering error
                    // so periodically ignore undithered fallback to prevent that
                    undithered_bg_used = 0;
                } else {
                    // if dithering is not applied, there's a high risk of creating artifacts (flat areas, error accumulating badly),
                    // OTOH poor dithering disturbs static backgrounds and creates oscilalting frames that break backgrounds
                    // back and forth in two differently bad ways
                    float max_diff = colordifference(row_pixels[col], bg_pixels[col]);
                    float dithered_diff = colordifference(row_pixels[col], output_px);
                    // if dithering is worse than natural difference between frames
                    // (this rule dithers moving areas, but does not dither static areas)
                    if (dithered_diff > max_diff) {
                        // then see if an undithered color is closer to the ideal
                        float undithered_diff = colordifference(row_pixels[col], acolormap[guessed_match].acolor);
                        if (undithered_diff < max_diff) {
                            undithered_bg_used++;
                            output_px = acolormap[guessed_match].acolor;
                            last_match = guessed_match;
                        }
                    }
                }
            }

            output_pixels[row][col] = last_match;

            f_pixel err = {
                .r = (spx.r - output_px.r),
                .g = (spx.g - output_px.g),
                .b = (spx.b - output_px.b),
                .a = (spx.a - output_px.a),
            };

            // If dithering error is crazy high, don't propagate it that much
            // This prevents crazy geen pixels popping out of the blue (or red or black! ;)
            if (err.r*err.r + err.g*err.g + err.b*err.b + err.a*err.a > max_dither_error) {
                err.r *= 0.75f;
                err.g *= 0.75f;
                err.b *= 0.75f;
                err.a *= 0.75f;
            }

            /* Propagate Floyd-Steinberg error terms. */
            if (fs_direction > 0) {
                thiserr[col + 2].a += err.a * (7.f/16.f);
                thiserr[col + 2].r += err.r * (7.f/16.f);
                thiserr[col + 2].g += err.g * (7.f/16.f);
                thiserr[col + 2].b += err.b * (7.f/16.f);

                nexterr[col + 2].a  = err.a * (1.f/16.f);
                nexterr[col + 2].r  = err.r * (1.f/16.f);
                nexterr[col + 2].g  = err.g * (1.f/16.f);
                nexterr[col + 2].b  = err.b * (1.f/16.f);

                nexterr[col + 1].a += err.a * (5.f/16.f);
                nexterr[col + 1].r += err.r * (5.f/16.f);
                nexterr[col + 1].g += err.g * (5.f/16.f);
                nexterr[col + 1].b += err.b * (5.f/16.f);

                nexterr[col    ].a += err.a * (3.f/16.f);
                nexterr[col    ].r += err.r * (3.f/16.f);
                nexterr[col    ].g += err.g * (3.f/16.f);
                nexterr[col    ].b += err.b * (3.f/16.f);

            } else {
                thiserr[col    ].a += err.a * (7.f/16.f);
                thiserr[col    ].r += err.r * (7.f/16.f);
                thiserr[col    ].g += err.g * (7.f/16.f);
                thiserr[col    ].b += err.b * (7.f/16.f);

                nexterr[col    ].a  = err.a * (1.f/16.f);
                nexterr[col    ].r  = err.r * (1.f/16.f);
                nexterr[col    ].g  = err.g * (1.f/16.f);
                nexterr[col    ].b  = err.b * (1.f/16.f);

                nexterr[col + 1].a += err.a * (5.f/16.f);
                nexterr[col + 1].r += err.r * (5.f/16.f);
                nexterr[col + 1].g += err.g * (5.f/16.f);
                nexterr[col + 1].b += err.b * (5.f/16.f);

                nexterr[col + 2].a += err.a * (3.f/16.f);
                nexterr[col + 2].r += err.r * (3.f/16.f);
                nexterr[col + 2].g += err.g * (3.f/16.f);
                nexterr[col + 2].b += err.b * (3.f/16.f);
            }

            // remapping is done in zig-zag
            col += fs_direction;
            if (fs_direction > 0) {
                if (col >= cols) break;
            } else {
                if (col < 0) break;
            }
        } while(1);

        f_pixel *const temperr = thiserr;
        thiserr = nexterr;
        nexterr = temperr;
        fs_direction = -fs_direction;
    }

    input_image->free(MIN(thiserr, nexterr)); // MIN because pointers were swapped
    nearest_free(n);

    return ok;
}
