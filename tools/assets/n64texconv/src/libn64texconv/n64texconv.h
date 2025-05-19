/* SPDX-FileCopyrightText: Copyright (C) 2025 ZeldaRET */
/* SPDX-License-Identifier: MIT */
#ifndef N64TEXCONV_H
#define N64TEXCONV_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#define FMT_NONE      -1
#define FMT_MAX       5
#define G_IM_FMT_RGBA 0
#define G_IM_FMT_YUV  1
#define G_IM_FMT_CI   2
#define G_IM_FMT_IA   3
#define G_IM_FMT_I    4

#define SIZ_NONE     -1
#define SIZ_MAX      4
#define G_IM_SIZ_4b  0
#define G_IM_SIZ_8b  1
#define G_IM_SIZ_16b 2
#define G_IM_SIZ_32b 3

struct color {
    union {
        struct {
            uint8_t r, g, b, a;
        };
        uint32_t w;
    };
};

static inline __attribute__((always_inline)) size_t
texel_size_bytes(size_t ntexels, int siz)
{
    return (siz == G_IM_SIZ_4b) ? (ntexels / 2) : (ntexels * ((1 << (unsigned)siz) >> 1));
}

struct n64_palette {
    struct color *texels;
    int fmt;
    size_t count;
};

struct n64_palette *
n64texconv_palette_new(size_t count, int fmt);

void
n64texconv_palette_free(struct n64_palette *pal);

struct n64_palette *
n64texconv_palette_copy(struct n64_palette *pal);

struct n64_palette *
n64texconv_palette_reformat(struct n64_palette *pal, int fmt);

struct n64_palette *
n64texconv_palette_from_png(const char *path, int fmt);

struct n64_palette *
n64texconv_palette_from_bin(void *data, size_t count, int fmt);

int
n64texconv_palette_to_png(const char *outpath, struct n64_palette *pal);

void *
n64texconv_palette_to_bin(struct n64_palette *pal, bool pad_to_8b);

int
n64texconv_palette_to_c(char **out, size_t *size_out, struct n64_palette *pal, bool pad_to_8b, unsigned int byte_width);

int
n64texconv_palette_to_c_file(const char *out_path, struct n64_palette *pal, bool pad_to_8b, unsigned int byte_width);

struct n64_image {
    size_t width;
    size_t height;
    int fmt;
    int siz;
    struct n64_palette *pal;
    struct color *texels;
    uint8_t *color_indices;
};

struct n64_image *
n64texconv_image_new(size_t width, size_t height, int fmt, int siz, struct n64_palette *pal);

void
n64texconv_image_free(struct n64_image *img);

struct n64_image *
n64texconv_image_copy(struct n64_image *img);

struct n64_image *
n64texconv_image_from_png(const char *path, int fmt, int siz, int pal_fmt);

struct n64_image *
n64texconv_image_from_bin(void *data, size_t width, size_t height, int fmt, int siz, struct n64_palette *pal,
                          bool preswapped);

struct n64_image *
n64texconv_image_reformat(struct n64_image *img, int fmt, int siz, struct n64_palette *pal);

int
n64texconv_image_to_png(const char *outpath, struct n64_image *img, bool intensity_alpha);

void *
n64texconv_image_to_bin(struct n64_image *img, bool pad_to_8b, bool preswap);

int
n64texconv_image_to_c(char **out, size_t *size_out, struct n64_image *img, bool pad_to_8b, bool preswap,
                      unsigned int byte_width);

int
n64texconv_image_to_c_file(const char *out_path, struct n64_image *img, bool pad_to_8b, bool preswap,
                           unsigned int byte_width);

const char *
n64texconv_png_extension(struct n64_image *img);

int
n64texconv_quantize_shared(uint8_t **out_indices, struct color *out_pal, size_t *out_pal_count, struct color **texels,
                           size_t *widths, size_t *heights, size_t num_images, unsigned int max_colors,
                           float dither_level);

#endif
