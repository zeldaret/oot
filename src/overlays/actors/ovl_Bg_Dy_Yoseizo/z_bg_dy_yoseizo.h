#ifndef _Z_BG_DY_YOSEIZO_H_
#define _Z_BG_DY_YOSEIZO_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ActorFunc actionFunc;
    /* 0x0150 */ SkelAnime skelAnime;
    /* 0x0194 */ Vec3s unk_194;
    /* 0x019A */ char unk_19A[0xA2];
    /* 0x023C */ Vec3s unk_23C;
    /* 0x0242 */ char unk_242[0xF2];
    /* 0x0334 */ Vec3s unk_334;
    /* 0x033A */ Vec3s unk_33A;
    /* 0x0340 */ Vec3s unk_340;
    /* 0x0346 */ char unk_346[0x356E];
} BgDyYoseizo; // size = 0x38B4

extern const ActorInit Bg_Dy_Yoseizo_InitVars;

#endif
