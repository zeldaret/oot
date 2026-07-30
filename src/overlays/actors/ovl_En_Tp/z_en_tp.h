#ifndef Z_EN_TP_H
#define Z_EN_TP_H

#include "ultra64.h"
#include "actor.h"

struct EnTp;

typedef struct EnTp {
    /* 0x000 */ Actor actor;
    /* 0x14C */ s32 unk_14C;
    /* 0x150 */ s32 unk_150;
    /* 0x154 */ void (*unk_154)(struct EnTp*, struct PlayState*);
    /* 0x158 */ u8 unk_158;
    /* 0x159 */ char pad_159[1];
    /* 0x15A */ s16 unk_15A;
    /* 0x15C */ s16 unk_15C;
    /* 0x15E */ s16 unk_15E;
    /* 0x160 */ s16 unk_160;
    /* 0x162 */ s16 unk_162;
    /* 0x164 */ s16 unk_164;
    /* 0x166 */ char pad_166[2];
    /* 0x168 */ f32 unk_168;
    /* 0x16C */ f32 unk_16C;
    /* 0x170 */ f32 unk_170;
    /* 0x174 */ ColliderJntSph collider;
    /* 0x194 */ ColliderJntSphElement colliderElements[1];
    /* 0x1D4 */ struct EnTp* unk_1D4;
} EnTp; // size = 0x1D8

#endif
