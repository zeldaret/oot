#ifndef REMAP_H
#define REMAP_H

LIQ_PRIVATE float remap_to_palette(liq_image *const input_image, unsigned char *const *const output_pixels, colormap *const map) LIQ_NONNULL;
LIQ_PRIVATE bool remap_to_palette_floyd(liq_image *input_image, unsigned char *const output_pixels[], liq_remapping_result *quant, const float max_dither_error, const bool output_image_is_remapped) LIQ_NONNULL;

#endif
