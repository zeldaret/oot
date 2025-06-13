#ifndef Z_EN_MA3_H
#define Z_EN_MA3_H

#include "ultra64.h"
#include "actor.h"
#include "assets/objects/object_ma2/object_ma2.h"

struct EnMa3;

typedef void (*EnMa3ActionFunc)(struct EnMa3*, struct PlayState*);

typedef struct EnMa3 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnMa3ActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ NpcInteractInfo interactInfo;
    /* 0x0208 */ s16 unk_208;
    /* 0x020A */ s16 isNotSinging;
    /* 0x020C */ s16 blinkTimer;
    /* 0x020E */ s16 eyeIndex;
    /* 0x0210 */ s16 mouthIndex;
    /* 0x0212 */ Vec3s unk_212[MALON_ADULT_LIMB_MAX];
} EnMa3; // size = 0x0284

#endif
