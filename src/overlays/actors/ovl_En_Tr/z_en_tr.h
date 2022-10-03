#ifndef Z_EN_TR_H
#define Z_EN_TR_H

#include "ultra64.h"
#include "global.h"

struct EnTr;

typedef void (*EnTrActionFunc)(struct EnTr*, PlayState*);

typedef enum KotakeKoumeLimb {
    /* 0x00 */ KOTAKE_KOUME_LIMB_NONE,
    /* 0x01 */ KOTAKE_KOUME_LIMB_PELVIS,
    /* 0x02 */ KOTAKE_KOUME_LIMB_LEFT_THIGH,
    /* 0x03 */ KOTAKE_KOUME_LIMB_LEFT_SHIN,
    /* 0x04 */ KOTAKE_KOUME_LIMB_LEFT_FOOT,
    /* 0x05 */ KOTAKE_KOUME_LIMB_RIGH_THIGH,
    /* 0x06 */ KOTAKE_KOUME_LIMB_RIGHT_SHIN,
    /* 0x07 */ KOTAKE_KOUME_LIMB_RIGHT_FOOT,
    /* 0x08 */ KOTAKE_KOUME_LIMB_TORSO_LIMB,
    /* 0x09 */ KOTAKE_KOUME_LIMB_LEFT_SLEEVE_START,
    /* 0x0A */ KOTAKE_KOUME_LIMB_LEFT_SLEEVE_MID,
    /* 0x0B */ KOTAKE_KOUME_LIMB_LEFT_SLEEVE_END,
    /* 0x0C */ KOTAKE_KOUME_LIMB_LEFT_SLEEVE_FRONT,
    /* 0x0D */ KOTAKE_KOUME_LIMB_LEFT_HAND,
    /* 0x0E */ KOTAKE_KOUME_LIMB_BROOM,
    /* 0x0F */ KOTAKE_KOUME_LIMB_RIGHT_SLEEVE_START,
    /* 0x10 */ KOTAKE_KOUME_LIMB_RIGHT_SLEEVE_MID,
    /* 0x11 */ KOTAKE_KOUME_LIMB_RIGHT_SLEEVE_END,
    /* 0x12 */ KOTAKE_KOUME_LIMB_RIGHT_SLEEVE_FRONT,
    /* 0x13 */ KOTAKE_KOUME_LIMB_RIGHT_HAND,
    /* 0x14 */ KOTAKE_KOUME_LIMB_NECK,
    /* 0x15 */ KOTAKE_KOUME_LIMB_HEAD,
    /* 0x16 */ KOTAKE_KOUME_LIMB_RIGHT_HAIR_PIECE_START,
    /* 0x17 */ KOTAKE_KOUME_LIMB_RIGHT_HAIR_PIECE_END,
    /* 0x18 */ KOTAKE_KOUME_LIMB_TEETH,
    /* 0x19 */ KOTAKE_KOUME_LIMB_LEFT_HAIR_PIECE_START,
    /* 0x1A */ KOTAKE_KOUME_LIMB_LEFT_HAIR_PIECE_END,
    /* 0x1B */ KOTAKE_KOUME_LIMB_MAX
} KotakeKoumeLimb;

typedef struct EnTr {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[KOTAKE_KOUME_LIMB_MAX];
    /* 0x0232 */ Vec3s morphTable[KOTAKE_KOUME_LIMB_MAX];
    /* 0x02D4 */ s16 unk_2D4;
    /* 0x02D6 */ u16 timer; // Also used as an angle
    /* 0x02D8 */ s16 actionIndex;
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
