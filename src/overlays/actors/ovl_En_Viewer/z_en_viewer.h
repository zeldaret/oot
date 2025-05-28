#ifndef Z_EN_VIEWER_H
#define Z_EN_VIEWER_H

#include "ultra64.h"
#include "z64actor.h"
#include "z64skin.h"

struct EnViewer;

typedef void (*EnViewerActionFunc)(struct EnViewer*, struct PlayState*);
typedef void (*EnViewerDrawFunc)(struct EnViewer*, struct PlayState*);
typedef void (*EnViewerInitAnimFunc)(struct EnViewer*, struct PlayState*, void*, AnimationHeader*);

typedef enum EnViewerType {
    /* 0 */ ENVIEWER_TYPE_0_HORSE_ZELDA,
    /* 1 */ ENVIEWER_TYPE_1_IMPA,
    /* 2 */ ENVIEWER_TYPE_2_ZELDA,
    /* 3 */ ENVIEWER_TYPE_3_GANONDORF,
    /* 4 */ ENVIEWER_TYPE_4_HORSE_GANONDORF,
    /* 5 */ ENVIEWER_TYPE_5_GANONDORF,
    /* 6 */ ENVIEWER_TYPE_6_HORSE_GANONDORF,
    /* 7 */ ENVIEWER_TYPE_7_GANONDORF,
    /* 8 */ ENVIEWER_TYPE_8_GANONDORF,
    /* 9 */ ENVIEWER_TYPE_9_GANONDORF
} EnViewerType;

typedef enum EnViewerDrawType {
    /* 0 */ ENVIEWER_DRAW_GANONDORF,
    /* 1 */ ENVIEWER_DRAW_HORSE,
    /* 2 */ ENVIEWER_DRAW_ZELDA,
    /* 3 */ ENVIEWER_DRAW_IMPA
} EnViewerDrawType;

typedef enum EnViewerShadowType {
    /* 0 */ ENVIEWER_SHADOW_NONE,
    /* 1 */ ENVIEWER_SHADOW_CIRCLE,
    /* 2 */ ENVIEWER_SHADOW_HORSE
} EnViewerShadowType;

typedef struct EnViewerInitData {
    /* 0x00 */ s16 skeletonObject;
    /* 0x02 */ s16 animObject;
    /* 0x04 */ u8 scale; // divided by 100.0f
    /* 0x05 */ s8 yOffset; // multiplied by 100
    /* 0x06 */ u8 shadowType;
    /* 0x07 */ u8 shadowScale;
    /* 0x08 */ u8 drawType;
    /* 0x0C */ void* skeletonHeaderSeg;
    /* 0x10 */ AnimationHeader* anim;
} EnViewerInitData; // size = 0x14

typedef struct EnViewerFireEffect {
    /* 0x00 */ Vec3f startPos;
    /* 0x0C */ Vec3f endPos;
    /* 0x18 */ Vec3f pos;
    /* 0x24 */ f32 lerpFactorSpeed;
    /* 0x28 */ f32 scale;
    /* 0x2C */ f32 lerpFactor;
    /* 0x30 */ u8 state;
} EnViewerFireEffect; // size = 0x34

typedef enum YoungGanondorfLimb {
    /*  0 */ YOUNG_GANONDORF_LIMB_NONE,
    /*  1 */ YOUNG_GANONDORF_LIMB_ROOT,
    /*  2 */ YOUNG_GANONDORF_LIMB_TORSO,
    /*  3 */ YOUNG_GANONDORF_LIMB_LEFT_UPPER_ARM,
    /*  4 */ YOUNG_GANONDORF_LIMB_LEFT_FOREARM,
    /*  5 */ YOUNG_GANONDORF_LIMB_LEFT_HAND,
    /*  6 */ YOUNG_GANONDORF_LIMB_RIGHT_UPPER_ARM,
    /*  7 */ YOUNG_GANONDORF_LIMB_RIGHT_FOREARM,
    /*  8 */ YOUNG_GANONDORF_LIMB_RIGHT_HAND,
    /*  9 */ YOUNG_GANONDORF_LIMB_JEWEL,
    /* 10 */ YOUNG_GANONDORF_LIMB_LEFT_UPPER_LIP,
    /* 11 */ YOUNG_GANONDORF_LIMB_JAW,
    /* 12 */ YOUNG_GANONDORF_LIMB_CHIN,
    /* 13 */ YOUNG_GANONDORF_LIMB_RIGHT_UPPER_LIP,
    /* 14 */ YOUNG_GANONDORF_LIMB_TEETH,
    /* 15 */ YOUNG_GANONDORF_LIMB_HEAD,
    /* 16 */ YOUNG_GANONDORF_LIMB_PELVIS,
    /* 17 */ YOUNG_GANONDORF_LIMB_LEFT_THIGH,
    /* 18 */ YOUNG_GANONDORF_LIMB_LEFT_SHIN,
    /* 19 */ YOUNG_GANONDORF_LIMB_LEFT_FOOT,
    /* 20 */ YOUNG_GANONDORF_LIMB_KNIFE,
    /* 21 */ YOUNG_GANONDORF_LIMB_RIGHT_THIGH,
    /* 22 */ YOUNG_GANONDORF_LIMB_RIGHT_SHIN,
    /* 23 */ YOUNG_GANONDORF_LIMB_RIGHT_FOOT,
    /* 24 */ YOUNG_GANONDORF_LIMB_MAX
} YoungGanondorfLimb;

typedef struct EnViewer {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ Skin skin;
    /* 0x01DC */ s8 animObjectSlot;
    /* 0x01DD */ u8 drawFuncIndex;
    /* 0x01E0 */ EnViewerActionFunc actionFunc;
    /* 0x01E4 */ u8 unused;
    /* 0x01E5 */ u8 state;
    /* 0x01E6 */ u8 isVisible;
    /* 0x01E8 */ EnViewerFireEffect fireEffects[20];
} EnViewer; // size = 0x05F8

#endif
