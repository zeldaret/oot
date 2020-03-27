#ifndef _Z_EN_FLOORMAS_H_
#define _Z_EN_FLOORMAS_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ ActorFunc actionFunc;
    /* 0x0194 */ s16 unk_194;
    /* 0x0196 */ s16 unk_196;
    /* 0x0198 */ s16 unk_198;
    /* 0x019A */ s16 unk_19A;
    /* 0x019C */ s32 unk_19C;
    /* 0x01A0 */ char unk_1A0[0x92];
    /* 0x0232 */ s16 unk_232;
    /* 0x0234 */ char unk_234[0x94];
    /* 0x02C8 */ ColliderCylinderMain colCylinder;
} EnFloormas; // size = 0x0314

extern const ActorInit En_Floormas_InitVars;

#endif
