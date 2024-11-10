#ifndef Z_EN_GO_H
#define Z_EN_GO_H

#include "ultra64.h"
#include "global.h"

struct EnGo;

typedef void (*EnGoActionFunc)(struct EnGo*, PlayState*);

typedef enum GoronLimb {
    /*  0 */ GORON_LIMB_NONE, // skeleton itself
    /*  1 */ GORON_LIMB_ROOT,
    /*  2 */ GORON_LIMB_WAIST, // drives bottom submesh
    /*  3 */ GORON_LIMB_LEGS,
    /*  4 */ GORON_LIMB_LEFT_THIGH,
    /*  5 */ GORON_LIMB_LEFT_SHIN,
    /*  6 */ GORON_LIMB_LEFT_FOOT,
    /*  7 */ GORON_LIMB_RIGHT_THIGH,
    /*  8 */ GORON_LIMB_RIGHT_SHIN,
    /*  9 */ GORON_LIMB_RIGHT_FOOT,
    /* 10 */ GORON_LIMB_TORSO, // drives top submesh
    /* 11 */ GORON_LIMB_LEFT_ARM,
    /* 12 */ GORON_LIMB_LEFT_FOREARM,
    /* 13 */ GORON_LIMB_LEFT_HAND,
    /* 14 */ GORON_LIMB_RIGHT_ARM,
    /* 15 */ GORON_LIMB_RIGHT_FOREARM,
    /* 16 */ GORON_LIMB_RIGHT_HAND,
    /* 17 */ GORON_LIMB_HEAD,
    /* 18 */ GORON_LIMB_MAX
} GoronLimb;

#define EN_GO_EFFECT_COUNT 20

typedef struct EnGoEffect {
    /* 0x0000 */ u8 type;
    /* 0x0001 */ u8 timer;
    /* 0x0002 */ u8 initialTimer;
    /* 0x0004 */ f32 scale;
    /* 0x0008 */ f32 scaleStep;
    /* 0x000C */ Color_RGBA8 color;
    /* 0x0010 */ char unk_10[4];
    /* 0x0014 */ Vec3f pos;
    /* 0x0020 */ Vec3f velocity;
    /* 0x002C */ Vec3f accel;
} EnGoEffect; // size = 0x38

typedef struct EnGo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnGoActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ NpcInteractInfo interactInfo;
    /* 0x0208 */ char unk_208[0x4];
    /* 0x020C */ s16 unk_20C;
    /* 0x020E */ s16 unk_20E;
    /* 0x0210 */ s16 unk_210;
    /* 0x0212 */ s16 unk_212;
    /* 0x0214 */ s16 unk_214;
    /* 0x0216 */ s16 unk_216;
    /* 0x0218 */ s16 unk_218;
    /* 0x021A */ s16 unk_21A;
    /* 0x021C */ s16 unk_21C;
    /* 0x021E */ s16 unk_21E;
    /* 0x0220 */ s16 jointTable[GORON_LIMB_MAX];
    /* 0x0244 */ s16 morphTable[GORON_LIMB_MAX];
    /* 0x0268 */ EnGoEffect effects[EN_GO_EFFECT_COUNT];
} EnGo; // size = 0x06C8

#endif
