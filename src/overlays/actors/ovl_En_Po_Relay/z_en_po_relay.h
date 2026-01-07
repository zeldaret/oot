#ifndef Z_EN_PO_RELAY_H
#define Z_EN_PO_RELAY_H

#include "ultra64.h"
#include "actor.h"
#include "light.h"
#include "assets/objects/object_tk/object_tk.h"

struct EnPoRelay;

typedef void (*EnPoRelayActionFunc)(struct EnPoRelay*, struct PlayState*);

typedef struct EnPoRelay {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnPoRelayActionFunc actionFunc;
    /* 0x0194 */ u8 hookshotSlotFull;
    /* 0x0195 */ u8 bobTimer; // used for the up & down bobbing
    /* 0x0196 */ s16 actionTimer;
    /* 0x0198 */ s16 pathPoint; // current (upcoming) path point
    /* 0x019A */ s16 yawTowardsPathPoint; // yaw towards the current (upcoming) path point
    /* 0x019C */ u16 textId; // mirrors actor.textId
    /* 0x019E */ u16 eyeTextureIdx;
    /* 0x01A0 */ Vec3s jointTable[LIMB_OBJECT_TK_00BE40_MAX];
    /* 0x020C */ Vec3s morphTable[LIMB_OBJECT_TK_00BE40_MAX];
    /* 0x0278 */ Color_RGBA8 lightColor;
    /* 0x027C */ LightNode* lightNode;
    /* 0x0280 */ LightInfo lightInfo;
    /* 0x0290 */ ColliderCylinder collider;
} EnPoRelay; // size = 0x02DC

#endif
