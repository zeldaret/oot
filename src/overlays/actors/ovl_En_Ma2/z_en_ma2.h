#ifndef Z_EN_MA2_H
#define Z_EN_MA2_H

#include "ultra64.h"
#include "actor.h"
#include "assets/objects/object_ma2/object_ma2.h"

struct EnMa2;

typedef void (*EnMa2ActionFunc)(struct EnMa2*, struct PlayState*);

typedef struct EnMa2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnMa2ActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ NpcInteractInfo interactInfo;
    /* 0x0208 */ s16 timer;
    /* 0x020A */ s16 singingDisabled;
    /* 0x020C */ s16 blinkTimer;
    /* 0x020E */ s16 eyeIndex;
    /* 0x0210 */ s16 mouthIndex;
    /* 0x0212 */ Vec3s upperBodyRot[MALON_ADULT_LIMB_MAX];
} EnMa2; // size = 0x0284

#endif
