#ifndef _Z_EN_FLOORMAS_H_
#define _Z_EN_FLOORMAS_H_

#include <ultra64.h>
#include <global.h>

#define SPAWN_INVISIBLE 0x8000
#define SPAWN_SMALL 0x10

// Merge params
#define MERGE_MASTER 0x40
#define MERGE_SLAVE 0x20

typedef struct EnFloormas EnFloormas;

typedef void (*EnFloormasActionFunc)(EnFloormas* this, GlobalContext* globalCtx);

struct EnFloormas{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnFloormasActionFunc actionFunc;
    /* 0x0194 */ s16 actionTimer;
    /* 0x0196 */ s16 actionTarget;
    /* 0x0198 */ s16 zOffset;
    /* 0x019A */ s16 smActionTimer;
    /* 0x019C */ Vec3s limbDrawTable[25];
    /* 0x0232 */ Vec3s transitionDrawTable [25];
    /* 0x02C8 */ ColliderCylinder collider;
}; // size = 0x0314

extern const ActorInit En_Floormas_InitVars;

#endif
