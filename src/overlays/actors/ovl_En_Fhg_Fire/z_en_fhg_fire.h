#ifndef _Z_EN_FHG_FIRE_H_
#define _Z_EN_FHG_FIRE_H_

#include "ultra64.h"
#include "global.h"

struct EnFhgFire;

typedef void (*EnFhgFireUpdateFunc)(struct EnFhgFire*, GlobalContext *globalCtx);

typedef enum {
    /*   1 */ FHGFIRE_LIGHTNING_STRIKE = 1,
    /*  35 */ FHGFIRE_LIGHTNING_SHOCK = 35,
    /*  36 */ FHGFIRE_LIGHTNING_BURST,
    /*  38 */ FHGFIRE_SPEAR_LIGHT = 38,
    /*  39 */ FHGFIRE_WARP_EMERGE,
    /*  40 */ FHGFIRE_WARP_RETREAT,
    /*  41 */ FHGFIRE_WARP_DEATH,
    /*  50 */ FHGFIRE_ENERGY_BALL = 50,
    /* 100 */ FHGFIRE_LIGHTNING_TRAIL = 100
} FhgFireParams;

typedef enum {
    /* 0 */ FHGFIRE_LIGHT_GREEN,
    /* 1 */ FHGFIRE_LIGHT_BLUE,
    /* 2 */ FHGFIRE_LIGHT_REFLECT
} FhgLightMode;

typedef struct EnFhgFire {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnFhgFireUpdateFunc updateFunc;
    /* 0x0150 */ s16 timer;
    /* 0x0152 */ s16 effectsTimer;
    /* 0x0154 */ char unk_154[2];
    /* 0x0156 */ s16 varianceTimer;
    /* 0x0158 */ s16 fireMode;
    /* 0x015a */ s16 returnCount;
    /* 0x015C */ s16 killTimer;
    /* 0x0160 */ f32 alpha;
    /* 0x0164 */ char unk_164[8];
    /* 0x016C */ f32 scale;
    /* 0x0170 */ char unk_170[4];
    /* 0x0174 */ f32 warpTex1x;
    /* 0x0178 */ f32 warpTex1y;
    /* 0x017C */ f32 warpTex2x;
    /* 0x0180 */ f32 warpTex2y;
    /* 0x0184 */ f32 warpTexSpeed;
    /* 0x0188 */ f32 warpAlpha;
    /* 0x018C */ f32 burstScale;
    /* 0x0190 */ char unk_190[0xC];
    /* 0x019C */ LightNode* lightNode;
    /* 0x01A0 */ LightInfo lightInfo;
    /* 0x01B0 */ ColliderCylinder collider;
    /* 0x01FC */ u8 unkFlag;
    /* 0x01FE */ s16 unkTimer;
    /* 0x0200 */ f32 unkFloat;
} EnFhgFire; // size = 0x0204

extern const ActorInit En_Fhg_Fire_InitVars;

#endif
