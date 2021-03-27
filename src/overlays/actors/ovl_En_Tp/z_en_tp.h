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
    /* 0x0158 */ u8 unk_158;
    /* 0x015A */ s16 unk_15A;
    /* 0x015C */ s16 unk_15C;
    /* 0x015E */ s16 unk_15E;
    /* 0x0160 */ s16 unk_160;
    /* 0x0162 */ s16 unk_162;
    /* 0x0164 */ s16 unk_164;
    /* 0x0168 */ f32 unk_168;
    /* 0x016C */ f32 unk_16C;
    /* 0x0170 */ f32 unk_170;
    /* 0x0174 */ ColliderJntSph collider;
    /* 0x0194 */ ColliderJntSphElement colliderItems[1];
    /* 0x01D4 */ struct EnTp* unk_1D4;
} EnTp; // size = 0x01D8

extern const ActorInit En_Tp_InitVars;

#endif
