#ifndef GDP_LOADTEXTUREBLOCK_RUNTIME_INC_C
#define GDP_LOADTEXTUREBLOCK_RUNTIME_INC_C

#include "gfx.h"

#ifndef GDP_LOADTEXTUREBLOCK_RUNTIME_QUALIFIERS
#define GDP_LOADTEXTUREBLOCK_RUNTIME_QUALIFIERS
#endif

// The Following arrays must be defined as const in z_lmap_mark.c to appear in rodata

static GDP_LOADTEXTUREBLOCK_RUNTIME_QUALIFIERS u32 sLoadTextureBlock_siz[] = {
    G_IM_SIZ_4b,
    G_IM_SIZ_8b,
    G_IM_SIZ_16b,
    G_IM_SIZ_32b,
};
static GDP_LOADTEXTUREBLOCK_RUNTIME_QUALIFIERS u32 sLoadTextureBlock_siz_LOAD_BLOCK[] = {
    G_IM_SIZ_4b_LOAD_BLOCK,
    G_IM_SIZ_8b_LOAD_BLOCK,
    G_IM_SIZ_16b_LOAD_BLOCK,
    G_IM_SIZ_32b_LOAD_BLOCK,
};
static GDP_LOADTEXTUREBLOCK_RUNTIME_QUALIFIERS u32 sLoadTextureBlock_siz_INCR[] = {
    G_IM_SIZ_4b_INCR,
    G_IM_SIZ_8b_INCR,
    G_IM_SIZ_16b_INCR,
    G_IM_SIZ_32b_INCR,
};
static GDP_LOADTEXTUREBLOCK_RUNTIME_QUALIFIERS u32 sLoadTextureBlock_siz_SHIFT[] = {
    G_IM_SIZ_4b_SHIFT,
    G_IM_SIZ_8b_SHIFT,
    G_IM_SIZ_16b_SHIFT,
    G_IM_SIZ_32b_SHIFT,
};
static GDP_LOADTEXTUREBLOCK_RUNTIME_QUALIFIERS u32 sLoadTextureBlock_siz_BYTES[] = {
    G_IM_SIZ_4b_BYTES,
    G_IM_SIZ_8b_BYTES,
    G_IM_SIZ_16b_BYTES,
    G_IM_SIZ_32b_BYTES,
};
static GDP_LOADTEXTUREBLOCK_RUNTIME_QUALIFIERS u32 sLoadTextureBlock_siz_LINE_BYTES[] = {
    G_IM_SIZ_4b_LINE_BYTES,
    G_IM_SIZ_8b_LINE_BYTES,
    G_IM_SIZ_16b_LINE_BYTES,
    G_IM_SIZ_32b_LINE_BYTES,
};

/**
 * Implements a version of gDPLoadTextureBlock using table lookups instead of token pasting, to allow values to be
 * passed into `siz` during runtime.
 */
#define gDPLoadTextureBlock_Runtime(pkt, timg, fmt, siz, width, height, pal, cms, cmt, masks, maskt, shifts, shiftt)   \
    _DW({                                                                                                              \
        gDPSetTextureImage(pkt, fmt, sLoadTextureBlock_siz_LOAD_BLOCK[siz], 1, timg);                                  \
        gDPSetTile(pkt, fmt, sLoadTextureBlock_siz_LOAD_BLOCK[siz], 0, 0, G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms,   \
                   masks, shifts);                                                                                     \
        gDPLoadSync(pkt);                                                                                              \
        gDPLoadBlock(pkt, G_TX_LOADTILE, 0, 0,                                                                         \
                     (((width) * (height) + sLoadTextureBlock_siz_INCR[siz]) >> sLoadTextureBlock_siz_SHIFT[siz]) - 1, \
                     CALC_DXT(width, sLoadTextureBlock_siz_BYTES[siz]));                                               \
        gDPPipeSync(pkt);                                                                                              \
        gDPSetTile(pkt, fmt, sLoadTextureBlock_siz[siz], (((width)*sLoadTextureBlock_siz_LINE_BYTES[siz]) + 7) >> 3,   \
                   0, G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts);                                   \
        gDPSetTileSize(pkt, G_TX_RENDERTILE, 0, 0, ((width)-1) << G_TEXTURE_IMAGE_FRAC,                                \
                       ((height)-1) << G_TEXTURE_IMAGE_FRAC);                                                          \
    })
#endif
