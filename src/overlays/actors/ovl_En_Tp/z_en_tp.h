#ifndef Z_EN_TP_H
#define Z_EN_TP_H

#include "ultra64.h"
#include "actor.h"

struct EnTp;

typedef struct EnTp {
    /* 0x000 */ Actor actor;
    /* 0x14C */ s32 unk14C;
    /* 0x150 */ s32 unk150;
    /* 0x154 */ void (*unk154)(struct EnTp*, struct PlayState*);
    /* 0x158 */ u8 unk158;
    /* 0x159 */ char pad159[1];
    /* 0x15A */ s16 unk15A;
    /* 0x15C */ s16 unk15C;
    /* 0x15E */ s16 unk15E;
    /* 0x160 */ s16 unk160;
    /* 0x162 */ s16 unk162;
    /* 0x164 */ s16 unk164;
    /* 0x166 */ char pad166[2];
    /* 0x168 */ f32 unk168;
    /* 0x16C */ f32 unk16C;
    /* 0x170 */ f32 unk170;
    /* 0x174 */ ColliderJntSph unk174;
    /* 0x194 */ ColliderJntSphElement unk194;
    /* 0x1D4 */ struct EnTp* unk1D4;
} EnTp; // size = 0x1D8

#endif
