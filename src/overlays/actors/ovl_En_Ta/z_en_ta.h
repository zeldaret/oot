#ifndef Z_EN_TA_H
#define Z_EN_TA_H

#include "ultra64.h"
#include "global.h"

#include "overlays/actors/ovl_En_Niw/z_en_niw.h"

struct EnTa;

typedef void (*EnTaActionFunc)(struct EnTa*, PlayState*);
typedef void (*EnTaBlinkFunc)(struct EnTa*);
typedef void (*EnTaAnimFunc)(struct EnTa*);

typedef enum {
    ENTA_OTHER, // child time
    ENTA_IN_KAKARIKO,
    ENTA_RETURNED_FROM_KAKARIKO
 } EnTaType;

typedef enum {
    ENTA_LIMB_NONE,
    ENTA_LIMB_ROOT,
    ENTA_LIMB_LEFT_THIGH,
    ENTA_LIMB_LEFT_LEG,
    ENTA_LIMB_LEFT_FOOT,
    ENTA_LIMB_RIGHT_THIGH,
    ENTA_LIMB_RIGHT_LEG,
    ENTA_LIMB_RIGHT_FOOT,
    ENTA_LIMB_CHEST,
    ENTA_LIMB_LEFT_SHOULDER,
    ENTA_LIMB_LEFT_ARM,
    ENTA_LIMB_LEFT_HAND,
    ENTA_LIMB_RIGHT_SHOULDER,
    ENTA_LIMB_RIGHT_ARM,
    ENTA_LIMB_RIGHT_HAND,
    ENTA_LIMB_HEAD,
    ENTA_LIMB_TORSO,
    ENTA_LIMB_MAX
} EnTaLimb;

typedef struct EnTa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[ENTA_LIMB_MAX];
    /* 0x01F6 */ Vec3s morphTable[ENTA_LIMB_MAX]; 
    /* 0x025C */ EnTaActionFunc actionFunc;
    /* 0x0260 */ EnTaAnimFunc animFunc;
    /* 0x0264 */ ColliderCylinder collider;
    /* 0x02B0 */ EnTaBlinkFunc blinkFunc;
    /* 0x02B4 */ s16 eyeIndex;
    /* 0x02B6 */ s16 blinkTimer;
    /* 0x02B8 */ EnNiw* superCuccos[3];
    /* 0x02C4 */ s16 superCuccoTimers[3]; // This is used to time animations and actions for super-cuccos
    /* 0x02CA */ u8 lastFoundSuperCuccoIdx;
    /* 0x02CC */ s16 animTimer;
    /* 0x02CE */ s16 rapidBlinks;
    /* 0x02D0 */ s16 subCamId;
    /* 0x02D2 */ s16 returnToCamId;
    /* 0x02D4 */ Vec3s headRotStep;
    /* 0x02DA */ Vec3s torsoRot;
    /* 0x02E0 */ u16 stateFlags;
    /* 0x02E2 */ s16 nodOffTimer;
    /* 0x02E4 */ AnimationHeader* currentAnimation;
} EnTa; // size = 0x02E8


#endif
