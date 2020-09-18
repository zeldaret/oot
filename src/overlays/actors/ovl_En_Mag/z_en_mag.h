#ifndef _Z_EN_MAG_H_
#define _Z_EN_MAG_H_

#include <ultra64.h>
#include <global.h>

struct EnMag;

typedef struct EnMag {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x0004];
    /* 0x0150 */ char unk_150[0xE188];
    /* 0xE2D8 */ s16 unk_E2D8;
    /* 0xE2DA */ s16 unk_E2DA;
    /* 0xE2DC */ s16 unk_E2DC;
    /* 0xE2DE */ char unk_E2DE[0x0002];
    /* 0xE2E0 */ f32 unk_E2E0;
    /* 0xE2E4 */ f32 unk_E2E4[3];
    /* 0xE2F0 */ f32 unk_E2F0[3];
    /* 0xE2FC */ f32 unk_E2FC;
    /* 0xE300 */ f32 unk_E300;
    /* 0xE304 */ f32 unk_E304;
    /* 0xE308 */ f32 unk_E308;
    /* 0xE30C */ s16 unk_E30C;
    /* 0xE30E */ s16 unk_E30E;
    /* 0xE310 */ char unk_E310[0x0002];
    /* 0xE312 */ s16 unk_E312;
    /* 0xE314 */ s16 unk_E314;
    /* 0xE316 */ s16 unk_E316;
    /* 0xE318 */ s16 unk_E318;
    /* 0xE31C */ s32 unk_E31C;
    /* 0xE320 */ s32 unk_E320;
    /* 0xE324 */ char unk_E324[0x0004];
} EnMag; // size = 0xE328

extern const ActorInit En_Mag_InitVars;

#define gSetTileCustom(pkt, fmt, siz, width, height, pal, cms, cmt, masks, maskt, shifts, shiftt)                      \
    do {                                                                                                               \
        gDPPipeSync(pkt);                                                                                              \
        gDPTileSync(pkt);                                                                                              \
        gDPSetTile(pkt, fmt, siz, (((width)*siz##_TILE_BYTES) + 7) >> 3, 0, G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, \
                   masks, shifts);                                                                                     \
        gDPTileSync(pkt);                                                                                              \
        gDPSetTile(pkt, fmt, siz, (((width)*siz##_TILE_BYTES) + 7) >> 3, 0, G_TX_RENDERTILE, pal, cmt, maskt, shiftt,  \
                   cms, masks, shifts);                                                                                \
        gDPSetTileSize(pkt, G_TX_RENDERTILE, 0, 0, ((width)-1) << G_TEXTURE_IMAGE_FRAC,                                \
                       ((height)-1) << G_TEXTURE_IMAGE_FRAC);                                                          \
    } while (0);

#endif
