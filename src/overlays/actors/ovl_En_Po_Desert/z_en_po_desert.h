#ifndef _Z_EN_PO_DESERT_H_
#define _Z_EN_PO_DESERT_H_

#include "ultra64.h"
#include "global.h"

struct EnPoDesert;

typedef void (*EnPoDesertActionFunc)(struct EnPoDesert*, GlobalContext*);

typedef struct EnPoDesert {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnPoDesertActionFunc actionFunc;
    /* 0x0194 */ s16 actionTimer;
    /* 0x0196 */ s16 speedModifier;
    /* 0x0198 */ s32 currentPathPoint;
    /* 0x019C */ f32 initDistToNextPoint;
    /* 0x01A0 */ f32 yDiff;
    /* 0x01A4 */ f32 targetY;
    /* 0x01A8 */ Vec3s jointTbl[10];
    /* 0x01E4 */ Vec3s morphTbl[10];
    /* 0x0220 */ Color_RGBA8 lightColor;
    /* 0x0224 */ LightNode* lightNode;
    /* 0x0228 */ LightInfo lightInfo;
    /* 0x0238 */ ColliderCylinder collider;
} EnPoDesert; // size = 0x0284

extern const ActorInit En_Po_Desert_InitVars;

#endif
