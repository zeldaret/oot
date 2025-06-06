/* SPDX-FileCopyrightText: Copyright (C) 2025 ZeldaRET */
/* SPDX-License-Identifier: MIT */
#include <assert.h>
#include <inttypes.h>
#include <math.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include "spng.h"
#include "libimagequant.h"
#include "endian.h"
#include "bin2c.h"
#include "n64texconv.h"

// ********************************************************************************************************************
// Helpers
// ********************************************************************************************************************

#define UNUSED __attribute__((unused))

#define ALIGN8(x) (((x) + 7) & ~7)

#define ABS(x) (((x) < 0) ? -(x) : (x))

static uint8_t
texel_to_greyscale(uint8_t r, uint8_t g, uint8_t b)
{
    // Approximately (0.2126729, 0.7151522, 0.0721750) in 1.8 fixed point
    // Same as Blender:
    // https://github.com/blender/blender/blob/594f47ecd2d5367ca936cf6fc6ec8168c2b360d0/intern/cycles/render/shader.cpp#L387
    return (r * 54 + g * 183 + b * 19 + 128) / 256;
}

UNUSED static void
texels_to_greyscale(struct color *out, struct color *in, size_t ntexels, bool alpha)
{
    assert(out != NULL);
    assert(in != NULL);

    for (size_t i = 0; i < ntexels; i++) {
        struct color color = in[i];
        uint8_t grey = texel_to_greyscale(color.r, color.g, color.b);
        uint8_t a = color.a;
        out[i].r = grey;
        out[i].g = grey;
        out[i].b = grey;
        out[i].a = (alpha) ? a : grey;
    }
}

static void
palette_dim(size_t count, size_t *width, size_t *height)
{
    assert(width != NULL);
    assert(height != NULL);

    size_t best_width = count;
    size_t best_height = 1;
    size_t best_diff = count - 1;

    if (count >= 4) {
        // Find a factorization of count for which the two factors are close to equal, and width >= height.
        // This makes the output palette image approximately square.
        for (size_t i = 2; i <= (size_t)sqrtf(count); i++) {
            size_t div = count / i;

            size_t new_diff = ABS((signed)(div - i));
            if (div * i == count && new_diff < best_diff) {
                // (div, i) is a factorization and is closer to a square than before
                best_width = div;
                best_height = i;
                best_diff = new_diff;
            }
        }
    }
    *width = best_width;
    *height = best_height;
}

static void
n64texconv_quantize(uint8_t *out_indices, struct color *out_pal, size_t *out_pal_count, struct color *texels,
                    size_t width, size_t height, unsigned int max_colors, float dither_level)
{
    assert(out_indices != NULL);
    assert(out_pal != NULL);
    assert(out_pal_count != NULL);
    assert(texels != NULL);

    // Set options
    liq_attr *attr = liq_attr_create();
    liq_set_max_colors(attr, max_colors);

    // Quantize
    liq_image *img = liq_image_create_rgba(attr, (void *)texels, width, height, 0.0);
    liq_result *result;
    liq_error err = liq_image_quantize(img, attr, &result);
    assert(err == LIQ_OK);

    // Write output bitmap
    liq_set_dithering_level(result, dither_level);
    liq_write_remapped_image(result, img, (void *)out_indices, width * height);

    // Write output palette
    const liq_palette *pal = liq_get_palette(result);
    assert(pal->count <= max_colors);
    *out_pal_count = pal->count;
    memcpy(out_pal, pal->entries, pal->count * 4);

    // Cleanup
    liq_result_destroy(result);
    liq_image_destroy(img);
    liq_attr_destroy(attr);
}

/**
 * out_indices, out_pal, out_pal_count, texels, widths, heights are all arrays of size num_images
 * texels[i] and out_indices[i] are arrays of size widths[i] * heights[i]
 */
int
n64texconv_quantize_shared(uint8_t **out_indices, struct color *out_pal, size_t *out_pal_count, struct color **texels,
                           size_t *widths, size_t *heights, size_t num_images, unsigned int max_colors,
                           float dither_level)
{
    assert(out_indices != NULL);
    assert(out_pal != NULL);
    assert(out_pal_count != NULL);
    assert(texels != NULL);
    assert(widths != NULL);
    assert(heights != NULL);

    int rv = 0;

    // Set options
    liq_attr *attr = liq_attr_create();
    liq_set_max_colors(attr, max_colors);

    // Create histogram
    liq_histogram *hist = liq_histogram_create(attr);

    // Add images to histogram
    liq_image *images[num_images];
    for (size_t i = 0; i < num_images; i++) {
        images[i] = liq_image_create_rgba(attr, (void *)texels[i], widths[i], heights[i], 0);
        liq_histogram_add_image(hist, attr, images[i]);
    }

    // Simultaneous quantization
    liq_result *result;
    liq_error err = liq_histogram_quantize(hist, attr, &result);
    if (err != LIQ_OK) {
        rv = -1;
        goto exit;
    }

    // Remap images
    liq_set_dithering_level(result, dither_level);
    for (size_t i = 0; i < num_images; i++) {
        liq_write_remapped_image(result, images[i], (void *)out_indices[i], widths[i] * heights[i]);
    }

    // Write output palette
    const liq_palette *pal = liq_get_palette(result);
    assert(pal->count <= max_colors);
    *out_pal_count = pal->count;
    memcpy(out_pal, pal->entries, pal->count * 4);

    // Cleanup
    liq_result_destroy(result);
exit:
    for (size_t i = 0; i < num_images; i++) {
        liq_image_destroy(images[i]);
    }
    liq_histogram_destroy(hist);
    liq_attr_destroy(attr);
    return rv;
}



// ********************************************************************************************************************
// Format Packing and Unpacking
// ********************************************************************************************************************

#define UNPACK_FUNC(fmt_name) static int fmt_name##_unpack(struct color *out, void *in, size_t ntexels)

#define UNPACK_CI_FUNC(fmt_name) static int fmt_name##_unpack(uint8_t *out, void *in, size_t ntexels, size_t npal)

#define PACK_FUNC(fmt_name) static int fmt_name##_pack(void *out, struct color *in, size_t ntexels)

#define PACK_CI_FUNC(fmt_name) static int fmt_name##_pack(void *out, uint8_t *in, size_t ntexels, size_t npal)

/* RGBA16 */

UNPACK_FUNC(rgba16)
{
    uint16_t *in16 = in;

    for (size_t n = 0; n < ntexels; n++) {
        uint16_t c = be16toh(in16[n]);
        uint8_t r = (c >> 11) & 0b11111;
        uint8_t g = (c >> 6) & 0b11111;
        uint8_t b = (c >> 1) & 0b11111;
        uint8_t a = (c >> 0) & 1;
        out[n].r = (r << 3) | (r >> 2);
        out[n].g = (g << 3) | (g >> 2);
        out[n].b = (b << 3) | (b >> 2);
        out[n].a = 255 * a;
    }
    return 0;
}

PACK_FUNC(rgba16)
{
    uint16_t *out16 = out;

    for (size_t n = 0; n < ntexels; n++) {
        uint8_t r = (in[n].r >> 3) & 0b11111;
        uint8_t g = (in[n].g >> 3) & 0b11111;
        uint8_t b = (in[n].b >> 3) & 0b11111;
        uint8_t a = in[n].a != 0;
        out16[n] = htobe16((r << 11) | (g << 6) | (b << 1) | a);
    }
    return 0;
}

/* RGBA32 */

UNPACK_FUNC(rgba32)
{
    uint32_t *in32 = in;

    for (size_t n = 0; n < ntexels; n++) {
        uint32_t c = be32toh(in32[n]);
        out[n].r = (c >> 24) & 0xFF;
        out[n].g = (c >> 16) & 0xFF;
        out[n].b = (c >> 8) & 0xFF;
        out[n].a = (c >> 0) & 0xFF;
    }
    return 0;
}

PACK_FUNC(rgba32)
{
    uint32_t *out32 = out;

    for (size_t n = 0; n < ntexels; n++) {
        out32[n] = htobe32((in[n].r << 24) | (in[n].g << 16) | (in[n].b << 8) | in[n].a);
    }
    return 0;
}

/* CI4 */

UNPACK_CI_FUNC(ci4)
{
    uint8_t *in8 = in;

    unsigned sft = 4;
    for (size_t n = 0; n < ntexels; n++, sft ^= 4) {
        uint8_t c = (in8[n >> 1] >> sft) & 0xF;
        if (!(c < npal))
            return -1; // palette too small for image data
        out[n] = c;
    }
    return 0;
}

PACK_CI_FUNC(ci4)
{
    uint8_t *out8 = out;

    unsigned sft = 4;
    for (size_t n = 0; n < ntexels; n++, sft ^= 4) {
        uint8_t c = in[n];
        if (!(c < npal))
            return -1; // palette too small for image data
        if (sft == 4)
            out8[n >> 1] = 0;
        out8[n >> 1] |= c << sft;
    }
    return 0;
}

/* CI8 */

UNPACK_CI_FUNC(ci8)
{
    uint8_t *in8 = in;

    for (size_t n = 0; n < ntexels; n++) {
        uint8_t c = in8[n] & 0xFF;
        if (!(c < npal))
            return -1; // palette too small for image data
        out[n] = c;
    }
    return 0;
}

PACK_CI_FUNC(ci8)
{
    uint8_t *out8 = out;

    for (size_t n = 0; n < ntexels; n++) {
        uint8_t c = in[n];
        if (!(c < npal))
            return -1; // palette too small for image data
        out8[n] = c;
    }
    return 0;
}

/* IA4 */

UNPACK_FUNC(ia4)
{
    uint8_t *in8 = in;

    unsigned sft = 4;
    for (size_t n = 0; n < ntexels; n++, sft ^= 4) {
        uint8_t c = (in8[n >> 1] >> sft) & 0xF;
        uint8_t i = c & 0b1110;
        uint8_t a = c & 0b0001;
        i = (i << 4) | (i << 1) | (i >> 2);
        a = 255 * a;
        out[n].r = i;
        out[n].g = i;
        out[n].b = i;
        out[n].a = a;
    }
    return 0;
}

PACK_FUNC(ia4)
{
    uint8_t *out8 = out;

    unsigned sft = 4;
    for (size_t n = 0; n < ntexels; n++, sft ^= 4) {
        uint8_t g = texel_to_greyscale(in[n].r, in[n].g, in[n].b);
        uint8_t i = (g >> 5) & 0b111;
        uint8_t a = in[n].a != 0;
        if (sft == 4)
            out8[n >> 1] = 0;
        out8[n >> 1] |= ((i << 1) | a) << sft;
    }
    return 0;
}

/* IA8 */

UNPACK_FUNC(ia8)
{
    uint8_t *in8 = in;

    for (size_t n = 0; n < ntexels; n++) {
        uint8_t c = in8[n];
        uint8_t i = (c >> 4) & 0xF;
        uint8_t a = (c >> 0) & 0xF;
        i = (i << 4) | i;
        a = (a << 4) | a;
        out[n].r = i;
        out[n].g = i;
        out[n].b = i;
        out[n].a = a;
    }
    return 0;
}

PACK_FUNC(ia8)
{
    uint8_t *out8 = out;

    for (size_t n = 0; n < ntexels; n++) {
        uint8_t g = texel_to_greyscale(in[n].r, in[n].g, in[n].b);
        uint8_t i = (g >> 4) & 0xF;
        uint8_t a = (in[n].a >> 4) & 0xF;
        out8[n] = (i << 4) | a;
    }
    return 0;
}

/* IA16 */

UNPACK_FUNC(ia16)
{
    uint16_t *in16 = in;

    for (size_t n = 0; n < ntexels; n++) {
        uint16_t c = be16toh(in16[n]);
        uint8_t i = (c >> 8) & 0xFF;
        uint8_t a = (c >> 0) & 0xFF;
        out[n].r = i;
        out[n].g = i;
        out[n].b = i;
        out[n].a = a;
    }
    return 0;
}

PACK_FUNC(ia16)
{
    uint16_t *out16 = out;

    for (size_t n = 0; n < ntexels; n++) {
        uint8_t i = texel_to_greyscale(in[n].r, in[n].g, in[n].b);
        uint8_t a = in[n].a;
        out16[n] = htobe16((i << 8) | a);
    }
    return 0;
}

/* I4 */

UNPACK_FUNC(i4)
{
    uint8_t *in8 = in;

    unsigned sft = 4;
    for (size_t n = 0; n < ntexels; n++, sft ^= 4) {
        uint8_t i = (in8[n >> 1] >> sft) & 0xF;
        i = (i << 4) | i;
        out[n].r = i;
        out[n].g = i;
        out[n].b = i;
        out[n].a = i;
    }
    return 0;
}

PACK_FUNC(i4)
{
    uint8_t *out8 = out;

    unsigned sft = 4;
    for (size_t n = 0; n < ntexels; n++, sft ^= 4) {
        uint8_t g = texel_to_greyscale(in[n].r, in[n].g, in[n].b);
        uint8_t i = (g >> 4) & 0xF;
        if (sft == 4)
            out8[n >> 1] = 0;
        out8[n >> 1] |= i << sft;
    }
    return 0;
}

/* I8 */

UNPACK_FUNC(i8)
{
    uint8_t *in8 = in;

    for (size_t n = 0; n < ntexels; n++) {
        uint8_t i = in8[n];
        out[n].r = i;
        out[n].g = i;
        out[n].b = i;
        out[n].a = i;
    }
    return 0;
}

PACK_FUNC(i8)
{
    uint8_t *out8 = out;

    for (size_t n = 0; n < ntexels; n++) {
        uint8_t i = texel_to_greyscale(in[n].r, in[n].g, in[n].b);
        out8[n] = i;
    }
    return 0;
}

struct texel_layout {
    const char *name;
    union {
        int (*pack)(void *out, struct color *in, size_t ntexels);
        int (*pack_ci)(void *out, uint8_t *in, size_t ntexels, size_t npal);
    };
    union {
        int (*unpack)(struct color *out, void *in, size_t ntexels);
        int (*unpack_ci)(uint8_t *out, void *in, size_t ntexels, size_t npal);
    };
};

#define FMT_SIZ(fmt, siz) (((fmt) << 2) | (siz))
struct texel_layout texel_layouts[32] = {
    [FMT_SIZ(G_IM_FMT_RGBA, G_IM_SIZ_16b)] = { "rgba16", .pack    = rgba16_pack, .unpack    = rgba16_unpack, },
    [FMT_SIZ(G_IM_FMT_RGBA, G_IM_SIZ_32b)] = { "rgba32", .pack    = rgba32_pack, .unpack    = rgba32_unpack, },
    [FMT_SIZ(G_IM_FMT_CI,   G_IM_SIZ_4b) ] = { "ci4",    .pack_ci = ci4_pack,    .unpack_ci = ci4_unpack,    },
    [FMT_SIZ(G_IM_FMT_CI,   G_IM_SIZ_8b) ] = { "ci8",    .pack_ci = ci8_pack,    .unpack_ci = ci8_unpack,    },
    [FMT_SIZ(G_IM_FMT_IA,   G_IM_SIZ_4b) ] = { "ia4",    .pack    = ia4_pack,    .unpack    = ia4_unpack,    },
    [FMT_SIZ(G_IM_FMT_IA,   G_IM_SIZ_8b) ] = { "ia8",    .pack    = ia8_pack,    .unpack    = ia8_unpack,    },
    [FMT_SIZ(G_IM_FMT_IA,   G_IM_SIZ_16b)] = { "ia16",   .pack    = ia16_pack,   .unpack    = ia16_unpack,   },
    [FMT_SIZ(G_IM_FMT_I,    G_IM_SIZ_4b) ] = { "i4",     .pack    = i4_pack,     .unpack    = i4_unpack,     },
    [FMT_SIZ(G_IM_FMT_I,    G_IM_SIZ_8b) ] = { "i8",     .pack    = i8_pack,     .unpack    = i8_unpack,     },
};

static int
n64texconv_data_sync(struct color *texels, uint8_t *color_indices, size_t ntexels, int fmt, int siz, size_t pal_count)
{
    assert(texels != NULL);

    void *temp = malloc(texel_size_bytes(ntexels, siz));
    if (temp == NULL)
        return -1;

    struct texel_layout *layout = &texel_layouts[FMT_SIZ(fmt, siz)];
    assert(layout != NULL);
    if (fmt == G_IM_FMT_CI) {
        assert(color_indices != NULL);
        layout->pack_ci(temp, color_indices, ntexels, pal_count);
        layout->unpack_ci(color_indices, temp, ntexels, pal_count);
        // TODO update texels from color indices too?
    } else {
        layout->pack(temp, texels, ntexels);
        layout->unpack(texels, temp, ntexels);
    }

    free(temp);
    return 0;
}



// ********************************************************************************************************************
// Palette
// ********************************************************************************************************************

static int
n64texconv_palette_sync(struct n64_palette *pal)
{
    assert(pal != NULL);
    return n64texconv_data_sync(pal->texels, NULL, pal->count, pal->fmt, G_IM_SIZ_16b, 0);
}

struct n64_palette *
n64texconv_palette_new(size_t count, int fmt)
{
    if (fmt != G_IM_FMT_RGBA && fmt != G_IM_FMT_IA)
        return NULL;

    struct n64_palette *pal = malloc(sizeof(struct n64_palette) + count * sizeof(struct color));
    if (pal == NULL)
        return NULL;

    pal->texels = (struct color *)(pal + 1);
    pal->fmt = fmt;
    pal->count = count;
    return pal;
}

void
n64texconv_palette_free(struct n64_palette *pal)
{
    assert(pal != NULL);
    free(pal);
}

struct n64_palette *
n64texconv_palette_copy(struct n64_palette *pal)
{
    assert(pal != NULL);
    // Create new palette
    struct n64_palette *new_pal = n64texconv_palette_new(pal->count, pal->fmt);
    if (new_pal == NULL)
        return NULL;

    // Copy texels
    memcpy(new_pal->texels, pal->texels, new_pal->count * sizeof(struct color));
    return new_pal;
}

struct n64_palette *
n64texconv_palette_reformat(struct n64_palette *pal, int fmt)
{
    assert(pal != NULL);

    // If the target format and source format are the same, just copy
    if (pal->fmt == fmt)
        return n64texconv_palette_copy(pal);

    // Create new palette
    struct n64_palette *new_pal = n64texconv_palette_new(pal->count, pal->fmt);
    if (new_pal == NULL)
        return NULL;

    n64texconv_palette_sync(new_pal);
    return new_pal;
}

struct n64_palette *
n64texconv_palette_resize(struct n64_palette *pal, size_t new_count)
{
    assert(pal != NULL);

    struct n64_palette *new_pal = n64texconv_palette_new(new_count, pal->fmt);

    size_t min_count = (new_count < pal->count) ? new_count : pal->count;

    size_t i;
    for (i = 0; i < min_count; i++)
        new_pal->texels[i] = pal->texels[i];
    for (i = min_count; i < new_count; i++)
        new_pal->texels[i] = (struct color){ .w = 0 };

    return new_pal;
}

struct n64_palette *
n64texconv_palette_from_png(const char *path, int fmt)
{
    assert(path != NULL);

    FILE *png = fopen(path, "rb");
    if (png == NULL)
        return NULL;

    spng_ctx *ctx = spng_ctx_new(0);
    assert(ctx != NULL);

    int rv;
    rv = spng_set_png_file(ctx, png);
    assert(rv == 0);

    size_t ntexels;
    rv = spng_decoded_image_size(ctx, SPNG_FMT_RGBA8, &ntexels);
    assert(rv == 0);

    struct n64_palette *pal = n64texconv_palette_new(ntexels, fmt);
    if (pal == NULL)
        return NULL;

    rv = spng_decode_image(ctx, (void *)pal->texels, ntexels, SPNG_FMT_RGBA8, 0);
    assert(rv == 0);
    for (size_t i = 0; i < ntexels; i++) {
        pal->texels[i].w = htobe32(pal->texels[i].w);
    }

    spng_ctx_free(ctx);
    fclose(png);

    rv = n64texconv_palette_sync(pal);
    assert(rv == 0);
    return pal;
}

struct n64_palette *
n64texconv_palette_from_bin(void *data, size_t count, int fmt)
{
    assert(data != NULL);

    // Reserve new palette
    struct n64_palette *pal = n64texconv_palette_new(count, fmt);
    if (pal == NULL)
        return NULL;

    // Unpack data
    // The format is always valid at this point since the above NULL check
    // would be hit if an invalid palette format was passed in.
    texel_layouts[FMT_SIZ(fmt, G_IM_SIZ_16b)].unpack(pal->texels, data, count);
    return pal;
}

int
n64texconv_palette_to_png(const char *outpath, struct n64_palette *pal)
{
    assert(outpath != NULL);
    assert(pal != NULL);

    // Compute arbitrary dimensions for palette
    size_t width, height;
    palette_dim(pal->count, &width, &height);

    // Sync data to format

    int rv;
    rv = n64texconv_palette_sync(pal);
    assert(rv == 0);

    // Write texels

    struct spng_ctx *ctx = spng_ctx_new(SPNG_CTX_ENCODER);
    if (ctx == NULL)
        return -1;

    FILE *png = fopen(outpath, "wb");
    if (png == NULL)
        return -2;

    rv = spng_set_png_file(ctx, png);
    assert(rv == 0);
    rv = spng_set_image_limits(ctx, width, height);
    assert(rv == 0);
    struct spng_ihdr ihdr = {
        .width = width,
        .height = height,
        .bit_depth = 8,
        .color_type = SPNG_COLOR_TYPE_TRUECOLOR_ALPHA,
        .compression_method = 0,
        .filter_method = 0,
        .interlace_method = 0,
    };
    rv = spng_set_ihdr(ctx, &ihdr);
    assert(rv == 0);
    rv = spng_encode_image(ctx, pal->texels, pal->count * sizeof(struct color), SPNG_FMT_PNG, SPNG_ENCODE_FINALIZE);
    assert(rv == 0);
    spng_ctx_free(ctx);

    fclose(png);
    return 0;
}

void *
n64texconv_palette_to_bin(struct n64_palette *pal, bool pad_to_8b)
{
    assert(pal != NULL);

    // Prepare output buffer
    size_t size_unaligned = texel_size_bytes(pal->count, G_IM_SIZ_16b);
    size_t size_aligned = ALIGN8(size_unaligned);
    void *out = malloc(size_aligned);
    if (out == NULL)
        return NULL;

    // Pack into output format
    assert(pal->fmt == G_IM_FMT_RGBA || pal->fmt == G_IM_FMT_IA);
    texel_layouts[FMT_SIZ(pal->fmt, G_IM_SIZ_16b)].pack(out, pal->texels, pal->count);

    // Pad to 8-byte alignment if requested
    if (pad_to_8b && size_aligned != size_unaligned)
        memset((uint8_t *)out + size_unaligned, 0, size_aligned - size_unaligned);

    return out;
}

int
n64texconv_palette_to_c(char **out, size_t *size_out, struct n64_palette *pal, bool pad_to_8b, unsigned int byte_width)
{
    assert(out != NULL);
    assert(size_out != NULL);
    assert(pal != NULL);

    size_t nbytes = texel_size_bytes(pal->count, G_IM_SIZ_16b);
    void *bin = n64texconv_palette_to_bin(pal, pad_to_8b);
    if (bin == NULL)
        return -1;
    nbytes = pad_to_8b ? ALIGN8(nbytes) : nbytes;
    int rv = bin2c(out, size_out, bin, nbytes, 0, byte_width);
    free(bin);
    return rv;
}

int
n64texconv_palette_to_c_file(const char *out_path, struct n64_palette *pal, bool pad_to_8b, unsigned int byte_width)
{
    assert(out_path != NULL);
    assert(pal != NULL);

    size_t nbytes = texel_size_bytes(pal->count, G_IM_SIZ_16b);
    void *bin = n64texconv_palette_to_bin(pal, pad_to_8b);
    if (bin == NULL)
        return -1;
    nbytes = pad_to_8b ? ALIGN8(nbytes) : nbytes;
    int rv = bin2c_file(out_path, bin, nbytes, 0, byte_width);
    free(bin);
    return rv;
}



// ********************************************************************************************************************
// Image
// ********************************************************************************************************************

static int
n64texconv_image_sync(struct n64_image *img)
{
    assert(img != NULL);
    return n64texconv_data_sync(img->texels, img->color_indices, img->width * img->height, img->fmt, img->siz,
                                (img->pal != NULL) ? img->pal->count : 0);
}

struct n64_image *
n64texconv_image_new(size_t width, size_t height, int fmt, int siz, struct n64_palette *pal)
{
    // TODO if fmt is CI, assert(pal != NULL) ?
    if (fmt >= FMT_MAX || siz >= SIZ_MAX)
        return NULL;

    size_t ntexels = width * height;
    struct n64_image *img = malloc(sizeof(struct n64_image) + ntexels * (sizeof(struct color) + sizeof(uint8_t)));
    if (img == NULL)
        return NULL;

    struct color *texels = (void *)((uint8_t *)img + sizeof(struct n64_image));
    uint8_t *color_indices = (fmt == G_IM_FMT_CI) ? (uint8_t *)(texels + ntexels) : NULL;

    img->width = width;
    img->height = height;
    img->fmt = fmt;
    img->siz = siz;
    img->pal = pal;
    img->texels = texels;
    img->color_indices = color_indices;
    return img;
}

void
n64texconv_image_free(struct n64_image *img)
{
    assert(img != NULL);
    free(img);
}

struct n64_image *
n64texconv_image_copy(struct n64_image *img)
{
    if (img == NULL)
        return NULL;

    // Create new image
    struct n64_image *new_img = n64texconv_image_new(img->width, img->height, img->fmt, img->siz, img->pal);
    if (new_img == NULL)
        return NULL;

    // Copy texels/index data
    size_t ntexels = new_img->width * new_img->height;
    memcpy(new_img->texels, img->texels, ntexels * sizeof(struct color));
    if (img->fmt == G_IM_FMT_CI) // == new_img->fmt
        memcpy(new_img->color_indices, img->color_indices, ntexels * sizeof(uint8_t));
    return new_img;
}

/**
 * Reads in the png image at `path`.
 *
 * For all choices of `fmt`, the png data is converted to a common RGBA32 format and stored that way, but may be
 * subject to various edits described below.
 *
 * - If `fmt` is None (default), the best format and texel size are determined from the RGBA32 data, which is then
 *   processed accordingly (described below).
 *
 * - If `fmt` is RGBA, the RGBA32 texels are left as-is, with possible reduction if `siz` is 16-bit.
 *
 * - If `fmt` is greyscale (I or IA), the RGBA32 texels are converted to greyscale. If the texels were already
 *   greyscale this operation will leave them unaffected.
 *
 * - If `fmt` is CI and the png is an indexed png, the palette and indices in the png are saved in addition to the
 *   texels themselves. This is required for a roundtrip conversion of 'bin -> png -> file -> png -> bin' to match.
 *
 * - If `fmt` is CI and the png is not indexed, the image is quantized and a palette is generated automatically.
 */
struct n64_image *
n64texconv_image_from_png(const char *path, int fmt, int siz, int pal_fmt)
{
    assert(path != NULL);

    FILE *png = fopen(path, "rb");
    if (png == NULL)
        return NULL; // Input file not found

    spng_ctx *ctx = spng_ctx_new(0);
    int rv = spng_set_png_file(ctx, png);
    assert(rv == 0);

    struct spng_ihdr ihdr;
    rv = spng_get_ihdr(ctx, &ihdr);
    assert(rv == 0);

    size_t nbytes;
    rv = spng_decoded_image_size(ctx, SPNG_FMT_RGBA8, &nbytes);
    assert(rv == 0);

    uint32_t width = ihdr.width;
    uint32_t height = ihdr.height;

    struct n64_image *img = n64texconv_image_new(width, height, fmt, siz, NULL);
    if (img == NULL)
        goto error_post_open_png;

    struct n64_palette *pal = NULL;

    if (fmt == G_IM_FMT_CI) {
        assert(siz == G_IM_SIZ_4b || siz == G_IM_SIZ_8b);
        assert(pal_fmt != FMT_NONE);

        size_t max_colors = (siz == G_IM_SIZ_8b) ? 256 : 16;

        if (ihdr.color_type == SPNG_COLOR_TYPE_INDEXED) {
            // Input is an indexed png, obtain palette and color indices
            struct spng_plte plte;
            rv = spng_get_plte(ctx, &plte);
            assert(rv == 0); // must have a palette chunk if it's indexed

            // Palette should not have 0 entries
            if (plte.n_entries == 0)
                goto error_post_create_img;

            // Palette must have sufficiently few colors for the target format. If there are too
            // many, requantize to the maximum amount for the target format.
            if (plte.n_entries > max_colors)
                goto requantize;

            pal = n64texconv_palette_new(plte.n_entries, pal_fmt);
            if (pal == NULL)
                goto error_post_create_img;

            struct spng_trns trns;
            rv = spng_get_trns(ctx, &trns);
            if (rv == 0) {
                // Read palette transparency from here
                assert(trns.n_type3_entries == plte.n_entries);
                for (size_t i = 0; i < plte.n_entries; i++) {
                    pal->texels[i].r = plte.entries[i].red;
                    pal->texels[i].g = plte.entries[i].green;
                    pal->texels[i].b = plte.entries[i].blue;
                    pal->texels[i].a = trns.type3_alpha[i];
                }
            } else {
                // Treat as opaque if trns is not present
                for (size_t i = 0; i < plte.n_entries; i++) {
                    pal->texels[i].r = plte.entries[i].red;
                    pal->texels[i].g = plte.entries[i].green;
                    pal->texels[i].b = plte.entries[i].blue;
                    pal->texels[i].a = 0xFF;
                }
            }

            // Fill color indices
            size_t nidxbytes;
            rv = spng_decoded_image_size(ctx, SPNG_FMT_RAW, &nidxbytes);
            assert(rv == 0);
            assert(nidxbytes * 4 == nbytes);
            rv = spng_decode_image(ctx, (void *)img->color_indices, nidxbytes, SPNG_FMT_RAW, 0);
            assert(rv == 0);
        } else {
            // Input is not an indexed png, quantize and generate palette

        requantize: // Input is an indexed png but has too many colors, requantize with new palette

            rv = spng_decode_image(ctx, (void *)img->texels, nbytes, SPNG_FMT_RGBA8, 0);
            assert(rv == 0);

            pal = n64texconv_palette_new(max_colors, pal_fmt);
            if (pal == NULL)
                goto error_post_create_img;

            n64texconv_quantize(img->color_indices, pal->texels, &pal->count, img->texels, width, height, max_colors,
                                0.5f);
        }

        // Populate texels from color indices and palette
        for (size_t i = 0; i < width * height; i++)
            img->texels[i] = pal->texels[img->color_indices[i]];
    } else {
        rv = spng_decode_image(ctx, (void *)img->texels, nbytes, SPNG_FMT_RGBA8, 0);
        assert(rv == 0);
    }
    spng_ctx_free(ctx);
    fclose(png);

    img->pal = pal;

    n64texconv_image_sync(img);
    return img;

error_post_create_img:
    n64texconv_image_free(img);
error_post_open_png:
    spng_ctx_free(ctx);
    fclose(png);
    return NULL;
}

struct n64_image *
n64texconv_image_from_bin(void *data, size_t width, size_t height, int fmt, int siz, struct n64_palette *pal,
                          bool preswapped)
{
    assert(data != NULL);
    assert((fmt == G_IM_FMT_CI && pal != NULL) || (fmt != G_IM_FMT_CI && pal == NULL));

    size_t ntexels = width * height;
    struct n64_image *img = n64texconv_image_new(width, height, fmt, siz, pal);
    if (img == NULL)
        return NULL;

    if (preswapped) {
        // TODO unswap data
    }

    struct texel_layout *layout = &texel_layouts[FMT_SIZ(fmt, siz)];
    assert(layout != NULL);

    if (fmt == G_IM_FMT_CI) {
        layout->unpack_ci(img->color_indices, data, ntexels, img->pal->count);
        for (size_t i = 0; i < ntexels; i++)
            img->texels[i].w = pal->texels[img->color_indices[i]].w;
    } else {
        layout->unpack(img->texels, data, ntexels);
    }
    return img;
}

/**
 * Given an existing image, create a new image with the new format and size.
 *
 * This operation is very often a lossy process, do not expect matching round-trips through reformat; depending on the
 * target format quality is often lost, sometimes severely.
 *
 * This process is typically for converting truecolor png to the optimal N64 format if the format was left unspecified
 * when reading in the png, in a matching context the format should always be explicitly specified so that no
 * reformatting is done.
 */
struct n64_image *
n64texconv_image_reformat(struct n64_image *img, int fmt, int siz, struct n64_palette *new_pal)
{
    assert(img != NULL);

    if (fmt == FMT_NONE || siz == SIZ_NONE) {
        // TODO determine optimal format for data
    }

    size_t width = img->width;
    size_t height = img->height;
    size_t ntexels = width * height;

    struct n64_image *new_img = n64texconv_image_new(width, height, fmt, siz, NULL);
    if (new_img == NULL)
        return NULL;

    bool src_ci = img->fmt == G_IM_FMT_CI;
    bool dst_ci = fmt == G_IM_FMT_CI;
    bool siz_changed = siz != img->siz;

    if (dst_ci && (!src_ci || siz_changed)) {
        // Converting non-CI to CI, or CI->CI of different size

        size_t max_colors = (siz == G_IM_SIZ_8b) ? 256 : 16;

        // Set color indices pointer if coming from non-CI
        if (new_img->color_indices == NULL)
            new_img->color_indices = (void *)(new_img->texels + ntexels);

        if (new_pal != NULL) {
            // Use the provided new palette
            new_img->pal = new_pal;

            // Make sure the new palette is of an appropriate size for the bit depth
            if (new_pal->count > max_colors) {
                n64texconv_image_free(new_img);
                return NULL;
            }

            // Map to the palette
            for (size_t i = 0; i < width * height; i++) {
                for (size_t j = 0; j < new_pal->count; j++) {
                    if (new_img->texels[i].w == new_pal->texels[j].w) {
                        new_img->color_indices[i] = j;
                        goto got;
                    }
                }
                // Failed to find texel in palette
                n64texconv_image_free(new_img);
                return NULL;
            got:;
            }
        } else {
            // Generate a new palette
            struct n64_palette *pal = n64texconv_palette_new(max_colors, G_IM_FMT_RGBA); // TODO IA palettes
            if (pal == NULL) {
                n64texconv_image_free(new_img);
                return NULL;
            }
            new_img->pal = pal;

            // Quantize and fill color indices
            n64texconv_quantize(new_img->color_indices, pal->texels, &pal->count, new_img->texels, width, height,
                                max_colors, 0.5f);
            // Replace old texels
            for (size_t i = 0; i < width * height; i++) {
                new_img->texels[i] = pal->texels[new_img->color_indices[i]];
            }
        }
    } else {
        // Copy texels
        memcpy(new_img->texels, img->texels, ntexels * sizeof(struct color));
        if (dst_ci)
            memcpy(new_img->color_indices, img->color_indices, ntexels * sizeof(uint8_t));
    }

    // Invalidate color indices if non-CI
    if (!dst_ci)
        new_img->color_indices = NULL;

    // Sync texels to format
    n64texconv_image_sync(new_img);
    //#pragma GCC diagnostic push
    //#pragma GCC diagnostic ignored "-Wanalyzer-malloc-leak"
    // Annoyingly the GCC static analyzer considers pal to be leaked here, but it's reachable by the assignment
    // to new_img...
    return new_img;
    //#pragma GCC diagnostic pop
}

/**
 * Writes this texture out to a png file. If this texture is CI and was read in from binary or from an indexed png it
 * will preserve the color indices and palette of the original if it has not since been reformatted in order to
 * facilitate matching in a roundtrip of 'bin -> png -> file -> png -> bin'.
 */
int
n64texconv_image_to_png(const char *outpath, struct n64_image *img, bool intensity_alpha)
{
    assert(outpath != NULL);
    assert(img != NULL);

    // For intensity images, we don't always want to write alpha (but sometimes we do), intensity images can be either
    // RGB channel or Alpha channel but often not both. The `intensity_alpha` option determines whether to write PNGs
    // with or without alpha, both will roundtrip identically.
    bool has_alpha = (img->fmt != G_IM_FMT_I) || intensity_alpha;

    size_t ntexels = img->width * img->height;

    if (img->fmt == G_IM_FMT_CI) {
        assert(img->color_indices != NULL); // CI textures must have color indices
        assert(img->pal != NULL);           // Writing CI to png must have a palette supplied
        n64texconv_palette_sync(img->pal);
    }

    // Ensure output is visually precise
    n64texconv_image_sync(img);

    // Write the png, either truecolor or indexed

    FILE *png = fopen(outpath, "wb");
    if (png == NULL)
        return -1;
    struct spng_ctx *ctx = spng_ctx_new(SPNG_CTX_ENCODER);
    int rv = spng_set_png_file(ctx, png);
    assert(rv == 0);
    rv = spng_set_image_limits(ctx, img->width, img->height);
    assert(rv == 0);

    uint8_t color_type;
    if (img->fmt == G_IM_FMT_CI) {
        color_type = SPNG_COLOR_TYPE_INDEXED;
    } else {
        color_type = (has_alpha) ? SPNG_COLOR_TYPE_TRUECOLOR_ALPHA : SPNG_COLOR_TYPE_TRUECOLOR;
    }

    struct spng_ihdr ihdr = {
        .width = img->width,
        .height = img->height,
        .bit_depth = 8,
        .color_type = color_type,
        .compression_method = 0,
        .filter_method = 0,
        .interlace_method = 0,
    };
    rv = spng_set_ihdr(ctx, &ihdr);
    assert(rv == 0);

    if (img->fmt == G_IM_FMT_CI) {
        struct n64_palette *pal = img->pal;
        assert(pal != NULL);

        // Ensure palette is visually precise
        rv = n64texconv_palette_sync(pal);
        assert(rv == 0);

        // Write palette
        struct spng_plte plte = { 0 };
        plte.n_entries = pal->count;
        assert(pal->count <= 256);
        memcpy(plte.entries, pal->texels, pal->count * 4);
        rv = spng_set_plte(ctx, &plte);
        assert(rv == 0);

        // Write palette alphas
        struct spng_trns trns = { 0 };
        trns.n_type3_entries = pal->count;
        for (size_t i = 0; i < pal->count; i++) {
            trns.type3_alpha[i] = pal->texels[i].a;
        }
        rv = spng_set_trns(ctx, &trns);
        assert(rv == 0);

        // Write color indices
        rv = spng_encode_image(ctx, img->color_indices, ntexels * sizeof(uint8_t), SPNG_FMT_PNG, SPNG_ENCODE_FINALIZE);
        assert(rv == 0);
    } else {
        void *out = img->texels;
        size_t outsize = ntexels * sizeof(struct color);
        if (!has_alpha) {
            uint8_t *rgb = malloc(ntexels * 3);
            assert(rgb != NULL);
            size_t j = 0;
            for (size_t i = 0; i < ntexels; i++) {
                rgb[j++] = img->texels[i].r;
                rgb[j++] = img->texels[i].g;
                rgb[j++] = img->texels[i].b;
            }
            out = rgb;
            outsize = ntexels * 3;
        }
        // Write texels
        rv = spng_encode_image(ctx, out, outsize, SPNG_FMT_PNG, SPNG_ENCODE_FINALIZE);
        assert(rv == 0);
        if (!has_alpha)
            free(out);
    }

    spng_ctx_free(ctx);
    fclose(png);

    return 0;
}

void *
n64texconv_image_to_bin(struct n64_image *img, bool pad_to_8b, bool preswap)
{
    assert(img != NULL);

    size_t ntexels = img->width * img->height;
    int fmt = img->fmt;
    int siz = img->siz;

    // Reserve output buffer
    size_t size_bytes = texel_size_bytes(ntexels, siz);
    size_t size_bytes_aligned = ALIGN8(size_bytes);
    void *out = malloc(size_bytes_aligned);
    if (out == NULL)
        return NULL;

    // Pack into output format
    struct texel_layout *layout = &texel_layouts[FMT_SIZ(fmt, siz)];
    assert(layout != NULL);
    if (fmt == G_IM_FMT_CI) {
        assert(img->pal != NULL);
        layout->pack_ci(out, img->color_indices, ntexels, img->pal->count);
    } else {
        assert(img->pal == NULL);
        layout->pack(out, img->texels, ntexels);
    }

    // Pad to 8-byte alignment if requested
    if (pad_to_8b && size_bytes != size_bytes_aligned) {
        memset((uint8_t *)out + size_bytes, 0, size_bytes_aligned - size_bytes);
    }

    // Perform dxt=0 word swapping if requested
    if (preswap) {
        // TODO implement preswap
    }

    return out;
}

int
n64texconv_image_to_c(char **out, size_t *size_out, struct n64_image *img, bool pad_to_8b, bool preswap,
                      unsigned int byte_width)
{
    assert(out != NULL);
    assert(size_out != NULL);
    assert(img != NULL);

    size_t nbytes = texel_size_bytes(img->width * img->height, img->siz);
    void *bin = n64texconv_image_to_bin(img, pad_to_8b, preswap);
    if (bin == NULL)
        return -1;
    nbytes = pad_to_8b ? ALIGN8(nbytes) : nbytes;
    int rv = bin2c(out, size_out, bin, nbytes, 0, byte_width);
    free(bin);
    return rv;
}

int
n64texconv_image_to_c_file(const char *out_path, struct n64_image *img, bool pad_to_8b, bool preswap,
                           unsigned int byte_width)
{
    assert(out_path != NULL);
    assert(img != NULL);

    size_t nbytes = texel_size_bytes(img->width * img->height, img->siz);
    void *bin = n64texconv_image_to_bin(img, pad_to_8b, preswap);
    if (bin == NULL)
        return -1;
    nbytes = pad_to_8b ? ALIGN8(nbytes) : nbytes;
    int rv = bin2c_file(out_path, bin, nbytes, 0, byte_width);
    free(bin);
    return rv;
}



// ********************************************************************************************************************
// Others
// ********************************************************************************************************************

const char *
n64texconv_png_extension(struct n64_image *img)
{
    assert(img != NULL);

    struct texel_layout *layout = &texel_layouts[FMT_SIZ(img->fmt, img->siz)];
    assert(layout != NULL);
    return layout->name;
}

/* This is just for the python interface */
void
n64texconv_free(void *p)
{
    assert(p != NULL);
    free(p);
}
