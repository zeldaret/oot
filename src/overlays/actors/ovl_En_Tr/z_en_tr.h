#ifndef Z_EN_TR_H
#define Z_EN_TR_H

#include "ultra64.h"
#include "actor.h"

struct EnTr;

typedef void (*EnTrActionFunc)(struct EnTr*, struct PlayState*);

typedef enum KotakeKoumeLimb {
    /*  0 */ KOTAKE_KOUME_LIMB_NONE,
    /*  1 */ KOTAKE_KOUME_LIMB_PELVIS,
    /*  2 */ KOTAKE_KOUME_LIMB_LEFT_THIGH,
    /*  3 */ KOTAKE_KOUME_LIMB_LEFT_SHIN,
    /*  4 */ KOTAKE_KOUME_LIMB_LEFT_FOOT,
    /*  5 */ KOTAKE_KOUME_LIMB_RIGH_THIGH,
    /*  6 */ KOTAKE_KOUME_LIMB_RIGHT_SHIN,
    /*  7 */ KOTAKE_KOUME_LIMB_RIGHT_FOOT,
    /*  8 */ KOTAKE_KOUME_LIMB_TORSO_LIMB,
    /*  9 */ KOTAKE_KOUME_LIMB_LEFT_SLEEVE_START,
    /* 10 */ KOTAKE_KOUME_LIMB_LEFT_SLEEVE_MID,
    /* 11 */ KOTAKE_KOUME_LIMB_LEFT_SLEEVE_END,
    /* 12 */ KOTAKE_KOUME_LIMB_LEFT_SLEEVE_FRONT,
    /* 13 */ KOTAKE_KOUME_LIMB_LEFT_HAND,
    /* 14 */ KOTAKE_KOUME_LIMB_BROOM,
    /* 15 */ KOTAKE_KOUME_LIMB_RIGHT_SLEEVE_START,
    /* 16 */ KOTAKE_KOUME_LIMB_RIGHT_SLEEVE_MID,
    /* 17 */ KOTAKE_KOUME_LIMB_RIGHT_SLEEVE_END,
    /* 18 */ KOTAKE_KOUME_LIMB_RIGHT_SLEEVE_FRONT,
    /* 19 */ KOTAKE_KOUME_LIMB_RIGHT_HAND,
    /* 20 */ KOTAKE_KOUME_LIMB_NECK,
    /* 21 */ KOTAKE_KOUME_LIMB_HEAD,
    /* 22 */ KOTAKE_KOUME_LIMB_RIGHT_HAIR_PIECE_START,
    /* 23 */ KOTAKE_KOUME_LIMB_RIGHT_HAIR_PIECE_END,
    /* 24 */ KOTAKE_KOUME_LIMB_TEETH,
    /* 25 */ KOTAKE_KOUME_LIMB_LEFT_HAIR_PIECE_START,
    /* 26 */ KOTAKE_KOUME_LIMB_LEFT_HAIR_PIECE_END,
    /* 27 */ KOTAKE_KOUME_LIMB_MAX
} KotakeKoumeLimb;

typedef struct EnTr {
    /* 0x000 */ Actor actor;
    /* 0x14C */ SkelAnime unk14C;
    /* 0x190 */ Vec3s unk190[KOTAKE_KOUME_LIMB_MAX];
    /* 0x232 */ Vec3s unk232[KOTAKE_KOUME_LIMB_MAX];
    /* 0x2D4 */ s16 unk2D4;
    /* 0x2D6 */ u16 unk2D6;
    /* 0x2D8 */ s16 cueChannel;
    /* 0x2DA */ char pad2DA[2];
    /* 0x2DC */ EnTrActionFunc actionFunc;
    /* 0x2E0 */ s16 unk2E0;
    /* 0x2E2 */ s16 unk2E2;
    /* 0x2E4 */ AnimationHeader* unk2E4;
} EnTr; // size = 0x2E8

#endif
