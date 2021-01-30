#ifndef _Z_EN_STH_H_
#define _Z_EN_STH_H_

#include "ultra64.h"
#include "global.h"

struct EnSth;

typedef void (*EnSthActionFunc)(struct EnSth*, GlobalContext*);

typedef struct EnSth {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ColliderCylinder collider;
    /* 0x0198 */ SkelAnime skelAnime;
    /* 0x01DC */ Vec3s jointTable[16];
    /* 0x023C */ Vec3s morphTable[16];
    /* 0x029C */ u16 unk_29C; // save flag
    /* 0x029E */ char unk_29E[2];
    /* 0x02A0 */ ActorFunc unk_2A0; // draw func
    /* 0x02A4 */ u8 unk_2A4;        // objectBankIdx
    /* 0x02A5 */ char unk_2A5[1];
    /* 0x02A6 */ Vec3s unk_2A6;
    /* 0x02AC */ Vec3s unk_2AC;
    /* 0x02B2 */ u16 unk_2B2;
    /* 0x02B4 */ s16 unk_2B4;
    /* 0x02B6 */ s16 unk_2B6;
    /* 0x02B8 */ EnSthActionFunc actionFunc;
} EnSth; // size = 0x02BC

extern const ActorInit En_Sth_InitVars;

#endif
