#ifndef _Z_EN_XC_H_
#define _Z_EN_XC_H_

#include "ultra64.h"
#include "global.h"

struct EnXc;

typedef void (*EnXcActionFunc)(struct EnXc*, GlobalContext*);
typedef void (*EnXcDrawFunc)(struct Actor*, GlobalContext*);

typedef enum {
    /* 0 */ XC_TYPE_0,
    /* 1 */ XC_TYPE_1,
    /* 2 */ XC_TYPE_2,
    /* 3 */ XC_TYPE_3,
    /* 4 */ XC_TYPE_4,
    /* 5 */ XC_TYPE_5,
    /* 6 */ XC_TYPE_MINUET,
    /* 7 */ XC_TYPE_BOLERO,
    /* 8 */ XC_TYPE_SERENADE,
    /* 9 */ XC_TYPE_9
} EnXcType;

typedef enum {
    /* 0 */ XC_DRAW_NOTHING,
    /* 1 */ XC_DRAW_DEFAULT,
    /* 2 */ XC_DRAW_PULLING_OUT_HARP,
    /* 3 */ XC_DRAW_HARP,
    /* 4 */ XC_DRAW_TRIFORCE,
    /* 5 */ XC_DRAW_SQUINT
} EnXcDrawMode;

typedef enum {
    /* 00 */ XC_ACTION_INIT,
    /* 01 */ XC_ACTION_WAIT,
    /* 02 */ XC_ACTION_GRACEFUL_FALL,
    /* 03 */ XC_ACTION_ACCEL,
    /* 04 */ XC_ACTION_WALK,
    /* 05 */ XC_ACTION_HALT,
    /* 06 */ XC_ACTION_STOPPED,
    /* 07 */ XC_ACTION_7,
    /* 08 */ XC_ACTION_HARP_READY,
    /* 09 */ XC_PLAYING_HARP,
    /* 10 */ XC_ACTION_10,
    /* 11 */ XC_ACTION_PUT_HARP_AWAY,
    /* 12 */ XC_ACTION_12,
    /* 13 */ XC_ACTION_13,
    /* 14 */ XC_ACTION_REVERSE_ACCEL,
    /* 15 */ XC_ACTION_REVERSE_WALK,
    /* 16 */ XC_ACTION_REVERSE_HALT,
    /* 17 */ XC_ACTION_THROW_NUT,
    /* 18 */ XC_ACTION_DELETE,
    /* 19 */ XC_ACTION_FADE,
    /* 20 */ XC_ACTION_20,
    /* 21 */ XC_ACTION_21,
    /* 22 */ XC_ACTION_22,
    /* 23 */ XC_ACTION_23,
    /* 24 */ XC_ACTION_24,
    /* 25 */ XC_ACTION_25,
    /* 26 */ XC_ACTION_26,
    /* 27 */ XC_ACTION_27,
    /* 28 */ XC_ACTION_28,
    /* 29 */ XC_ACTION_SERENADE,
    /* 30 */ XC_ACTION_30,
    /* 31 */ XC_ACTION_31,
    /* 32 */ XC_ACTION_32,
    /* 33 */ XC_ACTION_33,
    /* 34 */ XC_ACTION_34,
    /* 35 */ XC_ACTION_35,
    /* 36 */ XC_ACTION_36,
    /* 37 */ XC_ACTION_37,
    /* 38 */ XC_ACTION_38,
    /* 39 */ XC_ACTION_39,
    /* 40 */ XC_ACTION_40,
    /* 41 */ XC_ACTION_41,
    /* 42 */ XC_ACTION_42,
    /* 43 */ XC_ACTION_43,
    /* 44 */ XC_ACTION_44,
    /* 45 */ XC_ACTION_45,
    /* 46 */ XC_ACTION_46,
    /* 47 */ XC_ACTION_47,
    /* 48 */ XC_ACTION_48,
    /* 49 */ XC_ACTION_49,
    /* 50 */ XC_SHIEK_KNEEL,
    /* 51 */ XC_ACTION_51,
    /* 52 */ XC_ACTION_52,
    /* 53 */ XC_ACTION_53,
    /* 54 */ XC_ACTION_54,
    /* 55 */ XC_ACTION_SHOW_TRIFORCE,
    /* 56 */ XC_ACTION_SHOW_TRIFORCE_IDLE,
    /* 57 */ XC_ACTION_NOCTURNE_INIT,
    /* 58 */ XC_ACTION_NOCTURNE_IDLE,
    /* 59 */ XC_ACTION_DEFENSE_STANCE,
    /* 60 */ XC_ACTION_CONTORT,
    /* 61 */ XC_ACTION_NOCTURNE_FALL,
    /* 62 */ XC_ACTION_NOCTURNE_HIT_GROUND,
    /* 63 */ XC_ACTION_63,
    /* 64 */ XC_ACTION_NOCTURNE_KNEEL,
    /* 65 */ XC_ACTION_65,
    /* 66 */ XC_ACTION_66,
    /* 67 */ XC_ACTION_67,
    /* 68 */ XC_ACTION_68,
    /* 69 */ XC_ACTION_69,
    /* 70 */ XC_ACTION_70,
    /* 71 */ XC_ACTION_71,
    /* 72 */ XC_ACTION_72,
    /* 73 */ XC_ACTION_NOCTURNE_REVERSE_ACCEL,
    /* 74 */ XC_ACTION_NOCTURNE_REVERSE_WALK,
    /* 75 */ XC_ACTION_NOCTURNE_REVERSE_HALT,
    /* 76 */ XC_ACTION_NOCTURNE_THROW_NUT,
    /* 77 */ XC_ACTION_77,
    /* 78 */ XC_ACTION_78,
    /* 79 */ XC_ACTION_BLOCK_PEDESTAL,
    /* 80 */ XC_ACTION_IN_DIALOGUE
} EnXcAction;

typedef struct EnXc {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[17];
    /* 0x01F6 */ Vec3s morphTable[17];
    /* 0x025C */ s16 eyeIdx;
    /* 0x025E */ s16 blinkTimer;
    /* 0x0260 */ s32 action;
    /* 0x0264 */ s32 drawMode;
    /* 0x0268 */ f32 timer;
    /* 0x026C */ s32 unk_26C;
    /* 0x0270 */ s32 unk_270; // some sort of flag
    /* 0x0274 */ s32 unk_274;
    /* 0x0278 */ s32 triforcePrimColor[4];
    /* 0x0288 */ s32 triforceEnvColor[4];
    /* 0x0298 */ f32 triforceScale[3];
    /* 0x02A4 */ s16 unk_2A4; // some sort of angle
    /* 0x02A8 */ s32 unk_2A8; // sound related
    /* 0x02AC */ s32 unk_2AC; // sound related
    /* 0x02B0 */ Vec3f handPos; // hand pos?
    /* 0x02BC */ s32 unk_2BC; // hand pos related
    /* 0x02C0 */ ColliderCylinder collider;
    /* 0x030C */ s32 unk_30C;
    /* 0x0310 */ Actor* attached;
    /* 0x0314 */ struct_80034A14_arg1 struct_314;
} EnXc; // size = 0x033C

extern const ActorInit En_Xc_InitVars;

#endif
