#ifndef _Z_FISHING_H_
#define _Z_FISHING_H_

#include "ultra64.h"
#include "global.h"

struct Fishing;

typedef struct Fishing {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x004];
    /* 0x0150 */ u8 unk_150;
    /* 0x0151 */ char unk_151[0x007];
    /* 0x0158 */ s16 unk_158;
    /* 0x015A */ s16 unk_15A;
    /* 0x015C */ char unk_15C[0x04C];
    /* 0x01A8 */ f32 unk_1A8;
    /* 0x01AC */ f32 unk_1AC;
    /* 0x01B0 */ char unk_1B0[0x010];
    /* 0x01C0 */ Vec3f unk_1C0;
    /* 0x01CC */ char unk_1CC[0x00C];
    /* 0x01D8 */ SkelAnime skelAnime;
    /* 0x021C */ LightNode* lightNode;
    /* 0x0220 */ LightInfo lightInfo;
    /* 0x0230 */ ColliderJntSph collider;
    /* 0x0250 */ ColliderJntSphElement colliderElements[12];
} Fishing; // size = 0x0550

extern const ActorInit Fishing_InitVars;

#endif
