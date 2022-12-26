#ifndef Z_EN_TR_H
#define Z_EN_TR_H

#include "ultra64.h"
#include "global.h"

struct EnTr;

typedef void (*EnTrActionFunc)(struct EnTr*, PlayState*);

typedef enum {
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
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[KOTAKE_KOUME_LIMB_MAX];
    /* 0x0232 */ Vec3s morphTable[KOTAKE_KOUME_LIMB_MAX];
    /* 0x02D4 */ s16 unk_2D4;
    /* 0x02D6 */ u16 timer; // Also used as an angle
    /* 0x02D8 */ s16 cueChannel;
    /* 0x02DC */ EnTrActionFunc actionFunc;
    /* 0x02E0 */ s16 eyeIndex;
    /* 0x02E2 */ s16 blinkTimer;
    /* 0x02E4 */ AnimationHeader* animation;
} EnTr; // size = 0x02E8

typedef enum {
    /* 0 */ TR_KOUME,
    /* 1 */ TR_KOTAKE
} TwinrovaType;

#endif
