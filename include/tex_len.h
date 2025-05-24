#ifndef TEX_LEN_H
#define TEX_LEN_H

/**
 * Compute a length for an array holding a texture.
 * `type` is the array's element type
 * `width`, `height` are the texture dimensions
 * `bpp` is the texture's format's bits-per-pixels
 */
#define TEX_LEN(type, width, height, bpp) ((width) * (height) * (bpp) / 8 / sizeof(type))

#endif
