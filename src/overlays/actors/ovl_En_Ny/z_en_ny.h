#ifndef _Z_EN_NY_H_
#define _Z_EN_NY_H_

#include "ultra64.h"
#include "global.h"

struct EnNy;

typedef void (*EnNyActionFunc)(struct EnNy*, GlobalContext*);

typedef struct EnNy {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnNyActionFunc actionFunc;
    /* 0x0150 */ ColliderJntSph collider;
    /* 0x0170 */ ColliderJntSphItem items;
    /* 0x01B0 */ char unk_1B0[0x1A];
    /* 0x01CA */ u16 unk_1CA;
    /* 0x01CC */ u16 unk_1CC;
    /* 0x01CE */ u16 unk_1CE;
    /* 0x01D0 */ u8 unk_1D0;
    /* 0x01D1 */ s8 unk_1D1;
    /* 0x01D2 */ char unk_1D2[2];
    /* 0x01D4 */ s32 unk_1D4;
    /* 0x01D8 */ s32 unk_1D8;
    /* 0x01DC */ s32 unk_1DC;
    /* 0x01E0 */ f32 unk_1E0;
    /* 0x01E4 */ char unk_1E4[4];
    /* 0x01E8 */ f32 unk_1E8;
    /* 0x01EC */ char unk_1EC[0x8];
    /* 0x01F4 */ f32 unk_1F4;
    /* 0x01F8 */ char unk_1F8[0xC0];
} EnNy; // size = 0x02B8

extern const ActorInit En_Ny_InitVars;

#endif
