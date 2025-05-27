#ifndef TEX_LEN_H
#define TEX_LEN_H

/**
 * Compute a length for an array holding a texture.
 * `type` is the array's element type.
 * `width`, `height` are the texture dimensions.
 * `bpp` is the texture's pixel size, in bits per pixels.
 * The calculation computes the size of the texture in bits `width * height * bpp`,
 * then divides by 8 to get the size in bytes, then divides by the element type size.
 */
#define TEX_LEN(type, width, height, bpp) ((width) * (height) * (bpp) / 8 / sizeof(type))

#endif
