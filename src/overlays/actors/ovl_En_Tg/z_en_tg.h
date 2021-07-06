#ifndef _Z_EN_TG_H_
#define _Z_EN_TG_H_

#include "ultra64.h"
#include "global.h"

struct EnTg;

typedef struct EnTg {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ char unk_190[0x04];
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ char unk_1E0[0x2C];
} EnTg; // size = 0x020C

extern const ActorInit En_Tg_InitVars;

#endif
