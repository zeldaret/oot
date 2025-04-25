#ifndef MACROS_H
#define MACROS_H

#include "versions.h"

#define SCREEN_WIDTH  320
#define SCREEN_HEIGHT 240

#ifndef AVOID_UB
#define BAD_RETURN(type) type
#else
#define BAD_RETURN(type) void
#endif

#define ABS(x) ((x) >= 0 ? (x) : -(x))
#define DECR(x) ((x) == 0 ? 0 : --(x))
#define CLAMP(x, min, max) ((x) < (min) ? (min) : (x) > (max) ? (max) : (x))
#define CLAMP_MAX(x, max) ((x) > (max) ? (max) : (x))
#define CLAMP_MIN(x, min) ((x) < (min) ? (min) : (x))

#define SWAP(type, a, b)    \
    {                       \
        type _temp = (a);   \
        (a) = (b);          \
        (b) = _temp;        \
    }                       \
    (void)0

#define RGBA8(r, g, b, a) ((((r) & 0xFF) << 24) | (((g) & 0xFF) << 16) | (((b) & 0xFF) << 8) | (((a) & 0xFF) << 0))

#define CHECK_FLAG_ALL(flags, mask) (((flags) & (mask)) == (mask))

#if PLATFORM_N64 || DEBUG_FEATURES
#define HUNGUP_AND_CRASH(file, line) Fault_AddHungupAndCrash(file, line)
#else
#define HUNGUP_AND_CRASH(file, line) LogUtils_HungupThread(file, line)
#endif

#define MATRIX_FINALIZE_AND_LOAD(pkt, gfxCtx, file, line) \
    gSPMatrix(pkt, MATRIX_FINALIZE(gfxCtx, file, line), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW)

#if OOT_NTSC
#define LANGUAGE_ARRAY(jpn, eng, ger, fra) { jpn, eng }
#else
#define LANGUAGE_ARRAY(jpn, eng, ger, fra) { eng, ger, fra }
#endif

/**
 * `x` vertex x
 * `y` vertex y
 * `z` vertex z
 * `s` texture s coordinate
 * `t` texture t coordinate
 * `crnx` red component of color vertex, or x component of normal vertex
 * `cgny` green component of color vertex, or y component of normal vertex
 * `cbnz` blue component of color vertex, or z component of normal vertex
 * `a` alpha
 */
#define VTX(x,y,z,s,t,crnx,cgny,cbnz,a) { { { x, y, z }, 0, { s, t }, { crnx, cgny, cbnz, a } } }

#define VTX_T(x,y,z,s,t,cr,cg,cb,a) { { x, y, z }, 0, { s, t }, { cr, cg, cb, a } }

#define gDPSetTileCustom(pkt, fmt, siz, uls, ult, lrs, lrt, pal,        \
                         cms, cmt, masks, maskt, shifts, shiftt)        \
_DW({                                                                   \
    gDPPipeSync(pkt);                                                   \
    gDPTileSync(pkt);                                                   \
    gDPSetTile(pkt, fmt, siz,                                           \
        (((((lrs) - (uls) + 1) * siz##_TILE_BYTES) + 7) >> 3), 0,       \
        G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, masks,               \
        shifts);                                                        \
    gDPTileSync(pkt);                                                   \
    gDPSetTile(pkt, fmt, siz,                                           \
        (((((lrs) - (uls) + 1) * siz##_LINE_BYTES) + 7) >> 3), 0,       \
        G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts);  \
    gDPSetTileSize(pkt, G_TX_RENDERTILE,                                \
        (uls) << G_TEXTURE_IMAGE_FRAC,                                  \
        (ult) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrs) << G_TEXTURE_IMAGE_FRAC,                                  \
        (lrt) << G_TEXTURE_IMAGE_FRAC);                                 \
})

#endif
