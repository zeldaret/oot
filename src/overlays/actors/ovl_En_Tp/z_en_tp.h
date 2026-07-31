#ifndef Z_EN_TP_H
#define Z_EN_TP_H

#include "ultra64.h"
#include "actor.h"

typedef enum EnTpType {
    ENTP_TYPE_HEAD = -1, // To be used for the initial spawn
    ENTP_TYPE_BODYELEM,
    ENTP_TYPE_BODYELEMREMNANT = 10,
    ENTP_TYPE_BODYELEM_DYING,
    ENTP_TYPE_HEAD_DYING
} EnTpType;

struct EnTp;

typedef struct EnTp {
    /* 0x000 */ Actor actor;
    /* 0x14C */ s32 action;
    /* 0x150 */ s32 modeVar;
    /* 0x154 */ void (*actionFunc)(struct EnTp*, struct PlayState*);
    /* 0x158 */ u8 unk_158;
    /* 0x159 */ char pad_159[1];
    /* 0x15A */ s16 timer;
    /* 0x15C */ s16 timer2;
    /* 0x15E */ s16 bodyElemAlpha;
    /* 0x160 */ s16 redShineAmount;
    /* 0x162 */ s16 sparkTimer;
    /* 0x164 */ s16 unk_164;
    /* 0x166 */ char pad_166[2];
    /* 0x168 */ f32 unk_168;
    /* 0x16C */ f32 bodyElemDist;
    /* 0x170 */ f32 unk_170;
    /* 0x174 */ ColliderJntSph collider;
    /* 0x194 */ ColliderJntSphElement colliderElements[1];
    /* 0x1D4 */ struct EnTp* headInstance;
} EnTp; // size = 0x1D8

#endif
