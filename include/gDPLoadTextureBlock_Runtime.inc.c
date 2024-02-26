#ifndef GDP_LOADTEXTUREBLOCK_RUNTIME_C
#define GDP_LOADTEXTUREBLOCK_RUNTIME_C

#include "global.h"
#include "gfx.h"

// The Following arrays must be defined as const in z_lmap_mark.c to appear in rodata

#ifndef GDP_LOADTEXTUREBLOCK_RUNTIME_CONST
#define ZCONST
#else
#define ZCONST const
#endif

static ZCONST s32 sLoadTextureBlock_siz[] = {
    G_IM_SIZ_4b,
    G_IM_SIZ_8b,
    G_IM_SIZ_16b,
    G_IM_SIZ_32b,
};
static ZCONST s32 sLoadTextureBlock_siz_LOAD_BLOCK[] = {
    G_IM_SIZ_4b_LOAD_BLOCK,
    G_IM_SIZ_8b_LOAD_BLOCK,
    G_IM_SIZ_16b_LOAD_BLOCK,
    G_IM_SIZ_32b_LOAD_BLOCK,
};
static ZCONST u32 sLoadTextureBlock_siz_INCR[] = {
    G_IM_SIZ_4b_INCR,
    G_IM_SIZ_8b_INCR,
    G_IM_SIZ_16b_INCR,
    G_IM_SIZ_32b_INCR,
};
static ZCONST s32 sLoadTextureBlock_siz_SHIFT[] = {
    G_IM_SIZ_4b_SHIFT,
    G_IM_SIZ_8b_SHIFT,
    G_IM_SIZ_16b_SHIFT,
    G_IM_SIZ_32b_SHIFT,
};
static ZCONST s32 sLoadTextureBlock_siz_BYTES[] = {
    G_IM_SIZ_4b_BYTES,
    G_IM_SIZ_8b_BYTES,
    G_IM_SIZ_16b_BYTES,
    G_IM_SIZ_32b_BYTES,
};
static ZCONST s32 sLoadTextureBlock_siz_LINE_BYTES[] = {
    G_IM_SIZ_4b_LINE_BYTES,
    G_IM_SIZ_8b_LINE_BYTES,
    G_IM_SIZ_16b_LINE_BYTES,
    G_IM_SIZ_32b_LINE_BYTES,
};

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
