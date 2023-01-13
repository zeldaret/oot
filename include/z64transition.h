#ifndef Z64TRANSITION_H
#define Z64TRANSITION_H

#include "ultra64/ultratypes.h"
#include "ultra64/gbi.h" // for Gfx
#include "z64transition_instances.h"

#define TRANS_TRIGGER_OFF 0 // transition is not active
#define TRANS_TRIGGER_START 20 // start transition (exiting an area)
#define TRANS_TRIGGER_END -20 // transition is ending (arriving in a new area)

typedef enum {
    /*  0 */ TRANS_MODE_OFF,
    /*  1 */ TRANS_MODE_SETUP,
    /*  2 */ TRANS_MODE_INSTANCE_INIT,
    /*  3 */ TRANS_MODE_INSTANCE_RUNNING,
    /*  4 */ TRANS_MODE_FILL_WHITE_INIT,
    /*  5 */ TRANS_MODE_FILL_IN,
    /*  6 */ TRANS_MODE_FILL_OUT,
    /*  7 */ TRANS_MODE_FILL_BROWN_INIT,
    /*  8 */ TRANS_MODE_08, // unused
    /*  9 */ TRANS_MODE_09, // unused
    /* 10 */ TRANS_MODE_INSTANT,
    /* 11 */ TRANS_MODE_INSTANCE_WAIT,
    /* 12 */ TRANS_MODE_SANDSTORM_INIT,
    /* 13 */ TRANS_MODE_SANDSTORM,
    /* 14 */ TRANS_MODE_SANDSTORM_END_INIT,
    /* 15 */ TRANS_MODE_SANDSTORM_END,
    /* 16 */ TRANS_MODE_CS_BLACK_FILL_INIT,
    /* 17 */ TRANS_MODE_CS_BLACK_FILL
} TransitionMode;

typedef enum {
    /*  0 */ TRANS_TYPE_WIPE,
    /*  1 */ TRANS_TYPE_TRIFORCE,
    /*  2 */ TRANS_TYPE_FADE_BLACK,
    /*  3 */ TRANS_TYPE_FADE_WHITE,
    /*  4 */ TRANS_TYPE_FADE_BLACK_FAST,
    /*  5 */ TRANS_TYPE_FADE_WHITE_FAST,
    /*  6 */ TRANS_TYPE_FADE_BLACK_SLOW,
    /*  7 */ TRANS_TYPE_FADE_WHITE_SLOW,
    /*  8 */ TRANS_TYPE_WIPE_FAST,
    /*  9 */ TRANS_TYPE_FILL_WHITE2,
    /* 10 */ TRANS_TYPE_FILL_WHITE,
    /* 11 */ TRANS_TYPE_INSTANT,
    /* 12 */ TRANS_TYPE_FILL_BROWN,
    /* 13 */ TRANS_TYPE_FADE_WHITE_CS_DELAYED,
    /* 14 */ TRANS_TYPE_SANDSTORM_PERSIST,
    /* 15 */ TRANS_TYPE_SANDSTORM_END,
    /* 16 */ TRANS_TYPE_CS_BLACK_FILL,
    /* 17 */ TRANS_TYPE_FADE_WHITE_INSTANT,
    /* 18 */ TRANS_TYPE_FADE_GREEN,
    /* 19 */ TRANS_TYPE_FADE_BLUE,
    // transition types 20 - 31 are unused
    // transition types 32 - 55 are constructed using the TRANS_TYPE_CIRCLE macro
    /* 56 */ TRANS_TYPE_MAX = 56
} TransitionType;

#define TRANS_NEXT_TYPE_DEFAULT 0xFF // when `nextTransitionType` is set to default, the type will be taken from the entrance table for the ending transition

#define TC_SET_PARAMS (1 << 7)

#define TRANS_TYPE_CIRCLE(appearance, color, speed) ((1 << 5) | ((color & 3) << 3) | ((appearance & 3) << 1) | (speed & 1))

typedef struct {
    union {
        TransitionFade fade;
        TransitionCircle circle;
        TransitionTriforce triforce;
        TransitionWipe wipe;
    } instanceData;
    /* 0x228 */ s32   transitionType;
    /* 0x22C */ void* (*init)(void* transition);
    /* 0x230 */ void  (*destroy)(void* transition);
    /* 0x234 */ void  (*update)(void* transition, s32 updateRate);
    /* 0x238 */ void  (*draw)(void* transition, Gfx** gfxP);
    /* 0x23C */ void  (*start)(void* transition);
    /* 0x240 */ void  (*setType)(void* transition, s32 type);
    /* 0x244 */ void  (*setColor)(void* transition, u32 color);
    /* 0x248 */ void  (*setUnkColor)(void* transition, u32 color);
    /* 0x24C */ s32   (*isDone)(void* transition);
} TransitionContext; // size = 0x250

#endif
