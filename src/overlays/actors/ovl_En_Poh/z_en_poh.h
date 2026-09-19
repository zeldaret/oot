#ifndef Z_EN_POH_H
#define Z_EN_POH_H

#include "ultra64.h"
#include "actor.h"
#include "light.h"

struct EnPoh;

typedef void (*EnPohActionFunc)(struct EnPoh*, struct PlayState*);

typedef enum EnPohType {
    EN_POH_NORMAL,
    EN_POH_RUPEE,
    EN_POH_SHARP,
    EN_POH_FLAT
} EnPohType;

typedef enum EnPohInfoType {
    EN_POH_INFO_NORMAL,
    EN_POH_INFO_COMPOSER
} EnPohInfoType;

typedef struct EnPohInfo {
    /* 0x0000 */ Color_RGB8 primColor;
    /* 0x0003 */ Color_RGB8 lightColor;
    /* 0x0006 */ u8 lanternLimb;
    /* 0x0007 */ u8 burnLimb;
    /* 0x0008 */ s8 soulScrollRate;
    /* 0x000C */ AnimationHeader* idleAnim;
    /* 0x0010 */ AnimationHeader* idleAnim2;
    /* 0x0014 */ AnimationHeader* damageAnim;
    /* 0x0018 */ AnimationHeader* fleeAnim;
    /* 0x001C */ Gfx* lanternDisplayList;
    /* 0x0020 */ Gfx* burnDisplayList;
    /* 0x0024 */ Gfx* soulDisplayList;
} EnPohInfo; // size = 0x28

typedef struct EnPoh {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnPohActionFunc actionFunc;
    /* 0x0194 */ u8 lockOnTimer;
    /* 0x0195 */ u8 bobPhase;
    /* 0x0196 */ s8 requiredObjectSlot;
    /* 0x0197 */ u8 infoIdx;
    /* 0x0198 */ s16 timer;
    /* 0x019A */ s16 visibilityTimer;
    /* 0x019C */ s16 targetYaw;
    /* 0x019E */ Vec3s jointTable[21];
    /* 0x021C */ Vec3s morphTable[21];
    /* 0x029A */ Color_RGBA8 lightColor;
    /* 0x029E */ Color_RGBA8 envColor;
    /* 0x02A4 */ EnPohInfo* info;
    /* 0x02A8 */ LightNode* lightNode;
    /* 0x02AC */ LightInfo lightInfo;
    /* 0x02BC */ ColliderCylinder colliderCylinder;
    /* 0x0308 */ ColliderJntSph colliderJntSph;
    /* 0x0328 */ ColliderJntSphElement colliderJntSphElements[1];
    /* 0x0368 */ MtxF lanternMtxF;
} EnPoh; // size = 0x03A8

#endif
