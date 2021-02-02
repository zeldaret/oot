#ifndef _Z_EN_TP_H_
#define _Z_EN_TP_H_

#include "ultra64.h"
#include "global.h"

struct EnTp;

typedef void (*EnTpActionFunc)(struct EnTp*, GlobalContext*);

typedef struct EnTp {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 unk_14C;
    /* 0x0150 */ s32 unk_150;
    /* 0x0154 */ EnTpActionFunc actionFunc;
    /* 0x0158 */ char unk_158[0x2];
    /* 0x015A */ s16 unk_15A;
    /* 0x015C */ s16 unk_15C;
    /* 0x015E */ s16 unk_15E;
    /* 0x0160 */ char unk_160[0x2];
    /* 0x0162 */ s16 unk_162;
    /* 0x0164 */ char unk_164[0x8];
    /* 0x0164 */ f32 unk_16C;
    /* 0x0164 */ char unk_170[0x4];
    /* 0x0174 */ ColliderJntSph collider;
    /* 0x0194 */ ColliderJntSphElement colliderItems[1];
    /* 0x01D4 */ Actor* unk_1D4;
} EnTp; // size = 0x01D8

extern const ActorInit En_Tp_InitVars;

#endif
