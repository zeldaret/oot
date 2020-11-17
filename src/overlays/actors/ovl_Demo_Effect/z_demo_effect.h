#ifndef _Z_DEMO_EFFECT_H_
#define _Z_DEMO_EFFECT_H_

#include "ultra64.h"
#include "global.h"

struct DemoEffect;

typedef void (*DemoEffectFunc)(struct DemoEffect* this, GlobalContext* globalCtx);

typedef struct DemoEffectFireBall {
    u8 timer;
} DemoEffectFireBall;

typedef struct DemoEffectBlueOrb {
    u8 opacity;
    u8 scale;
    u8 pad;
    s16 rotation;
} DemoEffectBlueOrb;

typedef struct DemoEffectLight {
    u8 opacity;
    u8 scaleFlag;
    u8 flicker;
    s16 rotation;
} DemoEffectLight;

typedef struct DemoEffectLgtShower {
    u8 opacity;
} DemoEffectLgtShower;

typedef struct DemoEffectGodLgt {
    u8 type;
    u8 lightRingSpawnDelay;
    u8 rotation;
    s16 lightRingSpawnTimer;
} DemoEffectGodLgt;

typedef struct DemoEffectLightRing {
    u8 timerIncrement;
    u8 opacity;
    u8 pad;
    s16 timer;
} DemoEffectLightRing;

typedef struct DemoEffectTriforceSpot {
    u8 triforceSpotOpacity;
    u8 lightColumnOpacity;
    u8 crystalLightOpacity;
    s16 rotation;
} DemoEffectTriforceSpot;

typedef struct DemoEffectGetItem {
    u8 isPositionInit;
    u8 isLoaded;
    u8 giIndex;
    s16 rotation;
} DemoEffectGetItem;

typedef struct DemoEffectTimeWarp {
    u8 pad;
    u8 pad2;
    u8 pad3;
    s16 shrinkTimer;
} DemoEffectTimeWarp;

typedef struct DemoEffectJewel {
    u8 type;
    u8 isPositionInit;
    u8 opacity;
    s16 timer;
} DemoEffectJewel;

typedef struct DemoEffectDust {
    u8 timer;
} DemoEffectDust;

typedef struct DemoEffect {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnimeCurve skelCurve;
    /* 0x016C */ u8 initObjectBankIndex;
    /* 0x0170 */ Gfx* jewelDisplayList;
    /* 0x0174 */ Gfx* jewelHolderDisplayList;
    /* 0x0178 */ u8 primXluColor[3];
    /* 0x017B */ u8 envXluColor[3];
    /* 0x017E */ u8 primOpaColor[3];
    /* 0x0181 */ u8 envOpaColor[3];
    /* 0x0184 */ union {
        DemoEffectFireBall fireBall;
        DemoEffectBlueOrb blueOrb;
        DemoEffectLight light;
        DemoEffectLgtShower lgtShower;
        DemoEffectGodLgt godLgt;
        DemoEffectLightRing lightRing;
        DemoEffectTriforceSpot triforceSpot;
        DemoEffectGetItem getItem;
        DemoEffectTimeWarp timeWarp;
        DemoEffectJewel jewel;
        DemoEffectDust dust;
    };
    /* 0x018A */ s16 effectFlags;
    /* 0x018C */ s16 csActionId;
    /* 0x018E */ Vec3s jewelCsRotation;
    /* 0x0194 */ DemoEffectFunc initUpdateFunc;
    /* 0x0198 */ DemoEffectFunc initDrawFunc;
    /* 0x019C */ DemoEffectFunc updateFunc;
} DemoEffect; // size = 0x01A0

// These names come from the objects that correspond to this actor type.
typedef enum DEMO_EFFECT_TYPE {
    /* 0x00 */ DEMO_EFFECT_CRYSTAL_LIGHT,
    /* 0x01 */ DEMO_EFFECT_FIRE_BALL,
    /* 0x02 */ DEMO_EFFECT_BLUE_ORB, // Object is in GAMEPLAY_KEEP. Not a name from object. It's a blue orb.
    /* 0x03 */ DEMO_EFFECT_LGT_SHOWER,
    /* 0x04 */ DEMO_EFFECT_GOD_LGT_DIN,
    /* 0x05 */ DEMO_EFFECT_GOD_LGT_NAYRU,
    /* 0x06 */ DEMO_EFFECT_GOD_LGT_FARORE,
    /* 0x07 */ DEMO_EFFECT_LIGHTRING_EXPANDING,
    /* 0x08 */ DEMO_EFFECT_TRIFORCE_SPOT,
    /* 0x09 */ DEMO_EFFECT_MEDAL_FIRE,
    /* 0x0A */ DEMO_EFFECT_MEDAL_WATER,
    /* 0x0B */ DEMO_EFFECT_MEDAL_FOREST,
    /* 0x0C */ DEMO_EFFECT_MEDAL_SPIRIT,
    /* 0x0D */ DEMO_EFFECT_MEDAL_SHADOW,
    /* 0x0E */ DEMO_EFFECT_MEDAL_LIGHT,
    /* 0x0F */ DEMO_EFFECT_TIMEWARP_MASTERSWORD,
    /* 0x10 */ DEMO_EFFECT_LIGHTRING_SHRINKING,
    /* 0x11 */ DEMO_EFFECT_LIGHTRING_TRIFORCE,
    /* 0x12 */ DEMO_EFFECT_LIGHT,
    /* 0x13 */ DEMO_EFFECT_JEWEL_KOKIRI,
    /* 0x14 */ DEMO_EFFECT_JEWEL_GORON,
    /* 0x15 */ DEMO_EFFECT_JEWEL_ZORA,
    /* 0x16 */ DEMO_EFFECT_DUST, // Object is jewel, but this is really the dust in the ToT light arrow cutscene.
    /* 0x17 */ DEMO_EFFECT_LIGHTARROW,
    /* 0x18 */ DEMO_EFFECT_TIMEWARP_TIMEBLOCK_LARGE,
    /* 0x19 */ DEMO_EFFECT_TIMEWARP_TIMEBLOCK_SMALL,
    /* 0x1A */ DEMO_EFFECT_MAX_TYPE
} DEMO_EFFECT_TYPE;

typedef enum DEMO_EFFECT_LIGHT_COLOR {
    /* 0x00 */ DEMO_EFFECT_LIGHT_RED,
    /* 0x01 */ DEMO_EFFECT_LIGHT_BLUE,
    /* 0x02 */ DEMO_EFFECT_LIGHT_GREEN,
    /* 0x03 */ DEMO_EFFECT_LIGHT_ORANGE,
    /* 0x04 */ DEMO_EFFECT_LIGHT_YELLOW,
    /* 0x05 */ DEMO_EFFECT_LIGHT_PURPLE,
    /* 0x06 */ DEMO_EFFECT_LIGHT_GREEN2
} DEMO_EFFECT_LIGHT_COLOR;

typedef enum DEMO_EFFECT_GOD_LGT_TYPE {
    /* 0x00 */ GOD_LGT_DIN,
    /* 0x01 */ GOD_LGT_NAYRU,
    /* 0x02 */ GOD_LGT_FARORE
} DEMO_EFFECT_GOD_LGT_TYPE;

#define GET_EFFECT_TYPE(thisx) ((thisx)->params & 0x00FF)
#define GET_LIGHT_SIZE_PARAM(thisx) (((thisx)->params & 0x0F00) >> 8)
#define GET_LIGHT_COLOR_PARAM(thisx) (((thisx)->params & 0xF000) >> 12)
#define DEMO_EFFECT_PARAM(effectType, lightSize, lightColor) (((effectType & 0x00FF) << 0) | ((lightSize & 0x000F) << 8) | ((lightColor & 0x000F) << 12))

#endif
