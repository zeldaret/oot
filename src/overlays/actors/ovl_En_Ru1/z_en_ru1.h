#ifndef Z_EN_RU1_H
#define Z_EN_RU1_H

#include "ultra64.h"
#include "actor.h"

#include "overlays/actors/ovl_Bg_Bdan_Objects/z_bg_bdan_objects.h"
#include "overlays/actors/ovl_Door_Warp1/z_door_warp1.h"

#define ENRU1_SWITCH_FLAG(thisx) PARAMS_GET_U((thisx)->params, 8, 8)
#define ENRU1_TYPE(thisx) PARAMS_GET_U((thisx)->params, 0, 8)

struct EnRu1;

typedef void (*EnRu1ActionFunc)(struct EnRu1*, struct PlayState*);
typedef void (*EnRu1DrawFunc)(struct EnRu1*, struct PlayState*);
typedef void (*EnRu1PreLimbDrawFunc)(struct EnRu1*, struct PlayState*, s32, Vec3s*);

typedef struct EnRu1 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[17];
    /* 0x01F6 */ Vec3s morphTable[17];
    /* 0x025C */ s16 eyes;
    /* 0x025E */ s16 blinkTimer;
    /* 0x0260 */ s16 mouth;
    /* 0x0264 */ s32 action;
    /* 0x0268 */ s32 drawConfig;
    /* 0x026C */ f32 walkingFrame;
    /* 0x0270 */ f32 treadTimer;
    /* 0x0274 */ char unk_274[0x4];
    /* 0x0278 */ DoorWarp1* blueWarp;
    /* 0x027C */ f32 xzDistToPlayerInBlueWarp;
    /* 0x0280 */ s32 isFalling;
    /* 0x0284 */ s8 roomNum1;
    /* 0x0285 */ s8 roomNum2;
    /* 0x0286 */ s8 roomNum3;
    /* 0x0288 */ f32 unk_288;
    /* 0x028C */ BgBdanObjects* bigOctoPlatform;
    /* 0x0290 */ s32 preLimbDrawIndex;
    /* 0x0294 */ char unk_294[0x4];
    /* 0x0298 */ s32 unk_298;
    /* 0x029C */ char unk_29C[0x2];
    /* 0x029E */ s16 headTurnSpeed;
    /* 0x02A0 */ char unk_2A0[0x4];
    /* 0x02A4 */ f32 unk_2A4;
    /* 0x02A8 */ s32 alpha;
    /* 0x02AC */ s16 headRotTimer;
    /* 0x02B0 */ s32 headRotDirection;
    /* 0x02B4 */ ColliderCylinder standingCollider;
    /* 0x0300 */ ColliderCylinder sittingCollider;
    /* 0x034C */ s32 isSittingOCActive;
    /* 0x0350 */ s32 waterState;
    /* 0x0354 */ f32 sinkingStartPosY;
    /* 0x0358 */ f32 bobDepth;
    /* 0x035C */ s16 bobPhase;
    /* 0x0360 */ f32 isSinking;
    /* 0x0364 */ Vec3f treadStartPos;
    /* 0x0370 */ f32 carryIdleTimer;
    /* 0x0374 */ NpcInteractInfo interactInfo;
} EnRu1; // size = 0x039C

typedef enum EnRu1Action {
    /*  0 */ ENRU1_ACTION_FOUNTAIN_GAZING_AT_LINK,
    /*  1 */ ENRU1_ACTION_FOUNTAIN_DIVING,
    /*  2 */ ENRU1_ACTION_FOUNTAIN_RESURFACING,
    /*  3 */ ENRU1_ACTION_FOUNTAIN_TREADING_WATER,
    /*  4 */ ENRU1_ACTION_FOUNTAIN_STARTING_SWIM_BACK,
    /*  5 */ ENRU1_ACTION_FOUNTAIN_SWIMMING_BACK,
    /*  6 */ ENRU1_ACTION_FOUNTAIN_FINISHING_SWIM_BACK,
    /*  7 */ ENRU1_ACTION_MEETING_RANGE_CHECK,
    /*  8 */ ENRU1_ACTION_MEETING_INIT_POSITION,
    /*  9 */ ENRU1_ACTION_MEETING_FACING_LINK,
    /* 10 */ ENRU1_ACTION_MEETING_TURNING_AROUND,
    /* 11 */ ENRU1_ACTION_MEETING_WALKING_AWAY_ACCEL,
    /* 12 */ ENRU1_ACTION_MEETING_WALKING_AWAY_CONSTANT,
    /* 13 */ ENRU1_ACTION_MEETING_FALLING_DOWN_HOLE,
    /* 14 */ ENRU1_ACTION_MEETING_END,
    /* 15 */ ENRU1_ACTION_PRE_SPAWN_BOSS_ROOM,
    /* 16 */ ENRU1_ACTION_SPAWN_BOSS_ROOM,
    /* 17 */ ENRU1_ACTION_RISE_THROUGH_BLUE_WARP,
    /* 18 */ ENRU1_ACTION_WAIT_INSIDE_BLUE_WARP,
    /* 19 */ ENRU1_ACTION_LINK_WALKS_TO_POINT_IN_BLUE_WARP,
    /* 20 */ ENRU1_ACTION_WHAT_TOOK_YOU_SO_LONG,
    /* 21 */ ENRU1_ACTION_WARPING_OUT,
    /* 22 */ ENRU1_ACTION_22,
    /* 23 */ ENRU1_ACTION_23,
    /* 24 */ ENRU1_ACTION_24,
    /* 25 */ ENRU1_ACTION_25,
    /* 26 */ ENRU1_ACTION_26,
    /* 27 */ ENRU1_ACTION_27,
    /* 28 */ ENRU1_ACTION_28,
    /* 29 */ ENRU1_ACTION_29,
    /* 30 */ ENRU1_ACTION_30,
    /* 31 */ ENRU1_ACTION_31,
    /* 32 */ ENRU1_ACTION_32,
    /* 33 */ ENRU1_ACTION_33,
    /* 34 */ ENRU1_ACTION_34,
    /* 35 */ ENRU1_ACTION_35,
    /* 36 */ ENRU1_ACTION_36,
    /* 37 */ ENRU1_ACTION_37,
    /* 38 */ ENRU1_ACTION_38,
    /* 39 */ ENRU1_ACTION_39,
    /* 40 */ ENRU1_ACTION_40,
    /* 41 */ ENRU1_ACTION_41,
    /* 42 */ ENRU1_ACTION_42,
    /* 43 */ ENRU1_ACTION_43,
    /* 44 */ ENRU1_ACTION_44,
    /* 45 */ ENRU1_ACTION_45
} EnRu1Action;

typedef enum EnRu1DrawConfig {
    /* 0 */ ENRU1_DRAW_NOTHING,
    /* 1 */ ENRU1_DRAW_OPA,
    /* 2 */ ENRU1_DRAW_XLU
} EnRu1DrawConfig;

typedef enum EnRu1Type {
    /*  0 */ ENRU1_TYPE_BOSS_ROOM,
    /*  1 */ ENRU1_TYPE_FOUNTAIN,
    /*  2 */ ENRU1_TYPE_HOLES_ROOM,
    /*  3 */ ENRU1_TYPE_BASEMENT,
    /*  4 */ ENRU1_TYPE_SAPPHIRE_ROOM,
    /*  5 */ ENRU1_TYPE_BESIDE_KZ,
    /*  6 */ ENRU1_TYPE_BESIDE_DOOR_SWITCH,
#if DEBUG_FEATURES
    /* 10 */ ENRU1_TYPE_DEBUG = 10,
#endif
} EnRu1Type;

typedef enum EnRu1Eyes {
    /* 0 */ ENRU1_EYES_OPEN,
    /* 1 */ ENRU1_EYES_HALF_BLINK,
    /* 2 */ ENRU1_EYES_CLOSED,
    /* 3 */ ENRU1_EYES_UP,
    /* 4 */ ENRU1_EYES_GAZING,
    /* 5 */ ENRU1_EYES_BLUSH
} EnRu1Eyes;

typedef enum EnRu1Mouth {
    /* 0 */ ENRU1_MOUTH_SMILING,
    /* 1 */ ENRU1_MOUTH_FROWNING,
    /* 2 */ ENRU1_MOUTH_OPEN
} EnRu1Mouth;

typedef enum EnRu1WaterState {
    /* 0 */ ENRU1_WATER_OUTSIDE,
    /* 1 */ ENRU1_WATER_IMMERSED,
    /* 2 */ ENRU1_WATER_BOBBING,
    /* 3 */ ENRU1_WATER_SINKING
} EnRu1WaterState;

typedef enum RutoLimb {
    /*  0 */ RUTO_CHILD_NONE,
    /*  1 */ RUTO_CHILD_ROOT,
    /*  2 */ RUTO_CHILD_LEFT_THIGH,
    /*  3 */ RUTO_CHILD_LEFT_SHIN,
    /*  4 */ RUTO_CHILD_LEFT_FOOT,
    /*  5 */ RUTO_CHILD_RIGHT_THIGH,
    /*  6 */ RUTO_CHILD_RIGHT_SHIN,
    /*  7 */ RUTO_CHILD_RIGHT_FOOT,
    /*  8 */ RUTO_CHILD_CHEST,
    /*  9 */ RUTO_CHILD_LEFT_UPPER_ARM,
    /* 10 */ RUTO_CHILD_LEFT_FIN,
    /* 11 */ RUTO_CHILD_LEFT_HAND,
    /* 12 */ RUTO_CHILD_RIGHT_UPPER_ARM,
    /* 13 */ RUTO_CHILD_RIGHT_FIN,
    /* 14 */ RUTO_CHILD_RIGHT_HAND,
    /* 15 */ RUTO_CHILD_HEAD,
    /* 16 */ RUTO_CHILD_TORSO
} RutoLimb;

#endif
