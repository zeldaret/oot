#ifndef _Z_EN_XC_H_
#define _Z_EN_XC_H_

#include "ultra64.h"
#include "global.h"

struct EnXc;

typedef void (*EnXcActionFunc)(struct EnXc*, GlobalContext*);
typedef void (*EnXcDrawFunc)(struct Actor*, GlobalContext*);

typedef enum {
    /* 0 */ SHIEK_TYPE_0,
    /* 1 */ SHIEK_TYPE_1,
    /* 2 */ SHIEK_TYPE_2,
    /* 3 */ SHIEK_TYPE_3,
    /* 4 */ SHIEK_TYPE_4,
    /* 5 */ SHIEK_TYPE_5,
    /* 6 */ SHIEK_TYPE_MINUET,
    /* 7 */ SHIEK_TYPE_BOLERO,
    /* 8 */ SHIEK_TYPE_SERENADE,
    /* 9 */ SHIEK_TYPE_9
} EnXcType;

typedef enum {
    /* 0 */ SHIEK_DRAW_NOTHING,
    /* 1 */ SHIEK_DRAW_DEFAULT,
    /* 2 */ SHIEK_DRAW_PULLING_OUT_HARP,
    /* 3 */ SHIEK_DRAW_HARP,
    /* 4 */ SHIEK_DRAW_TRIFORCE,
    /* 5 */ SHIEK_DRAW_SQUINT
} EnXcDrawMode;

typedef enum {
    /* 00 */ SHIEK_ACTION_INIT,
    /* 01 */ SHIEK_ACTION_WAIT,
    /* 02 */ SHIEK_ACTION_GRACEFUL_FALL,
    /* 03 */ SHIEK_ACTION_ACCEL,
    /* 04 */ SHIEK_ACTION_WALK,
    /* 05 */ SHIEK_ACTION_HALT,
    /* 06 */ SHIEK_ACTION_STOPPED,
    /* 07 */ SHIEK_ACTION_7,
    /* 08 */ SHIEK_ACTION_HARP_READY,
    /* 09 */ SHIEK_PLAYING_HARP,
    /* 10 */ SHIEK_ACTION_10,
    /* 11 */ SHIEK_ACTION_PUT_HARP_AWAY,
    /* 12 */ SHIEK_ACTION_12,
    /* 13 */ SHIEK_ACTION_13,
    /* 14 */ SHIEK_ACTION_REVERSE_ACCEL,
    /* 15 */ SHIEK_ACTION_REVERSE_WALK,
    /* 16 */ SHIEK_ACTION_REVERSE_HALT,
    /* 17 */ SHIEK_ACTION_THROW_NUT,
    /* 18 */ SHIEK_ACTION_DELETE,
    /* 19 */ SHIEK_ACTION_FADE,
    /* 20 */ SHIEK_ACTION_20,
    /* 21 */ SHIEK_ACTION_21,
    /* 22 */ SHIEK_ACTION_22,
    /* 23 */ SHIEK_ACTION_23,
    /* 24 */ SHIEK_ACTION_24,
    /* 25 */ SHIEK_ACTION_25,
    /* 26 */ SHIEK_ACTION_26,
    /* 27 */ SHIEK_ACTION_27,
    /* 28 */ SHIEK_ACTION_28,
    /* 29 */ SHIEK_ACTION_SERENADE,
    /* 30 */ SHIEK_ACTION_30,
    /* 31 */ SHIEK_ACTION_31,
    /* 32 */ SHIEK_ACTION_32,
    /* 33 */ SHIEK_ACTION_33,
    /* 34 */ SHIEK_ACTION_34,
    /* 35 */ SHIEK_ACTION_35,
    /* 36 */ SHIEK_ACTION_36,
    /* 37 */ SHIEK_ACTION_37,
    /* 38 */ SHIEK_ACTION_38,
    /* 39 */ SHIEK_ACTION_39,
    /* 40 */ SHIEK_ACTION_40,
    /* 41 */ SHIEK_ACTION_41,
    /* 42 */ SHIEK_ACTION_42,
    /* 43 */ SHIEK_ACTION_43,
    /* 44 */ SHIEK_ACTION_44,
    /* 45 */ SHIEK_ACTION_45,
    /* 46 */ SHIEK_ACTION_46,
    /* 47 */ SHIEK_ACTION_47,
    /* 48 */ SHIEK_ACTION_48,
    /* 49 */ SHIEK_ACTION_49,
    /* 50 */ SHIEK_SHIEK_KNEEL,
    /* 51 */ SHIEK_ACTION_51,
    /* 52 */ SHIEK_ACTION_52,
    /* 53 */ SHIEK_ACTION_53,
    /* 54 */ SHIEK_ACTION_54,
    /* 55 */ SHIEK_ACTION_SHOW_TRIFORCE,
    /* 56 */ SHIEK_ACTION_SHOW_TRIFORCE_IDLE,
    /* 57 */ SHIEK_ACTION_NOCTURNE_INIT,
    /* 58 */ SHIEK_ACTION_NOCTURNE_IDLE,
    /* 59 */ SHIEK_ACTION_DEFENSE_STANCE,
    /* 60 */ SHIEK_ACTION_CONTORT,
    /* 61 */ SHIEK_ACTION_NOCTURNE_FALL,
    /* 62 */ SHIEK_ACTION_NOCTURNE_HIT_GROUND,
    /* 63 */ SHIEK_ACTION_63,
    /* 64 */ SHIEK_ACTION_NOCTURNE_KNEEL,
    /* 65 */ SHIEK_ACTION_65,
    /* 66 */ SHIEK_ACTION_66,
    /* 67 */ SHIEK_ACTION_67,
    /* 68 */ SHIEK_ACTION_68,
    /* 69 */ SHIEK_ACTION_69,
    /* 70 */ SHIEK_ACTION_70,
    /* 71 */ SHIEK_ACTION_71,
    /* 72 */ SHIEK_ACTION_72,
    /* 73 */ SHIEK_ACTION_NOCTURNE_REVERSE_ACCEL,
    /* 74 */ SHIEK_ACTION_NOCTURNE_REVERSE_WALK,
    /* 75 */ SHIEK_ACTION_NOCTURNE_REVERSE_HALT,
    /* 76 */ SHIEK_ACTION_NOCTURNE_THROW_NUT,
    /* 77 */ SHIEK_ACTION_77,
    /* 78 */ SHIEK_ACTION_78,
    /* 79 */ SHIEK_ACTION_BLOCK_PEDESTAL,
    /* 80 */ SHIEK_ACTION_IN_DIALOGUE
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
    /* 0x02A4 */ s16 triforceAngle;
    /* 0x02A8 */ s32 unk_2A8; // sound related
    /* 0x02AC */ s32 unk_2AC; // sound related
    /* 0x02B0 */ Vec3f handPos;
    /* 0x02BC */ s32 unk_2BC; // hand pos related
    /* 0x02C0 */ ColliderCylinder collider;
    /* 0x030C */ s32 unk_30C;
    /* 0x0310 */ Actor* flameActor;
    /* 0x0314 */ struct_80034A14_arg1 npcInfo;
} EnXc; // size = 0x033C

extern const ActorInit En_Xc_InitVars;

#endif
