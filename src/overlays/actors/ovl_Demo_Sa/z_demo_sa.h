#ifndef Z_DEMO_SA_H
#define Z_DEMO_SA_H

#include "ultra64.h"
#include "actor.h"

struct DemoSa;

typedef void (*DemoSaActionFunc)(struct DemoSa*, struct PlayState*);
typedef void (*DemoSaDrawFunc)(struct DemoSa*, struct PlayState*);

typedef struct DemoSa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ s16 eyeIndex;
    /* 0x0192 */ s16 blinkTimer;
    /* 0x0194 */ s16 mouthIndex;
    /* 0x0198 */ s32 action;
    /* 0x019C */ s32 drawConfig;
    /* 0x01A0 */ f32 fadeTimer;
    /* 0x01A4 */ s32 alpha;
    /* 0x01A8 */ s32 isLightBall;
    /* 0x01AC */ s32 cueId;
    /* 0x01B0 */ s32 isHoldingOcarina;
} DemoSa; // size = 0x01B4

typedef enum DemoSaAction {
    /* 00 */ DEMOSA_ACTION_SETUP_FOREST_MEDALLION_CS,
    /* 01 */ DEMOSA_ACTION_AWAIT_BLUE_WARP,
    /* 02 */ DEMOSA_ACTION_RISE_THROUGH_BLUE_WARP,
    /* 03 */ DEMOSA_ACTION_SAGE_OF_FOREST_DIALOG,
    /* 04 */ DEMOSA_ACTION_RAISE_ARMS_FOR_MEDALLION,
    /* 05 */ DEMOSA_ACTION_AWAIT_FOREST_MEDALLION,
    /* 06 */ DEMOSA_ACTION_FINISH_FOREST_MEDALLION_CS,
    /* 07 */ DEMOSA_ACTION_FOREST_TRIAL_INVISIBLE,
    /* 08 */ DEMOSA_ACTION_FOREST_TRIAL_FADE,
    /* 09 */ DEMOSA_ACTION_AWAIT_SPAWN_LIGHT_BALL,
    /* 10 */ DEMOSA_ACTION_UNKNOWN,
    /* 11 */ DEMOSA_ACTION_CREDITS_INVISIBLE,
    /* 12 */ DEMOSA_ACTION_CREDITS_FADE_IN,
    /* 13 */ DEMOSA_ACTION_CREDITS_FACING_FORWARD,
    /* 14 */ DEMOSA_ACTION_CREDITS_LOOK_DOWN,
    /* 15 */ DEMOSA_ACTION_CREDITS_LOOK_UP,
    /* 16 */ DEMOSA_ACTION_BRIDGE_INVISIBLE,
    /* 17 */ DEMOSA_ACTION_BRIDGE_FADE_IN,
    /* 18 */ DEMOSA_ACTION_BRIDGE_LOOKING_SAD,
    /* 19 */ DEMOSA_ACTION_BRIDGE_CLUTCH_OCARINA,
    /* 20 */ DEMOSA_ACTION_BRIDGE_GIVE_OCARINA
} DemoSaAction;

typedef enum DemoSaDrawConfig {
    /* 0 */ DEMOSA_DRAW_NOTHING,
    /* 1 */ DEMOSA_DRAW_OPA,
    /* 2 */ DEMOSA_DRAW_XLU
} DemoSaDrawConfig;

#endif
