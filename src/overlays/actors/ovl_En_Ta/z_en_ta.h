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
    /* 0xFFFF */ ENTA_CHILD_ERA = -1,
    /* 0x0001 */ ENTA_IN_KAKARIKO = 1,
    /* 0x0002 */ ENTA_RETURNED_FROM_KAKARIKO
 } EnTaType;

typedef enum {
    /* 0x00 */ ENTA_LIMB_NONE,
    /* 0x01 */ ENTA_LIMB_ROOT,
    /* 0x02 */ ENTA_LIMB_LEFT_THIGH,
    /* 0x03 */ ENTA_LIMB_LEFT_LEG,
    /* 0x04 */ ENTA_LIMB_LEFT_FOOT,
    /* 0x05 */ ENTA_LIMB_RIGHT_THIGH,
    /* 0x06 */ ENTA_LIMB_RIGHT_LEG,
    /* 0x07 */ ENTA_LIMB_RIGHT_FOOT,
    /* 0x08 */ ENTA_LIMB_CHEST,
    /* 0x09 */ ENTA_LIMB_LEFT_SHOULDER,
    /* 0x0A */ ENTA_LIMB_LEFT_ARM,
    /* 0x0B */ ENTA_LIMB_LEFT_HAND,
    /* 0x0C */ ENTA_LIMB_RIGHT_SHOULDER,
    /* 0x0D */ ENTA_LIMB_RIGHT_ARM,
    /* 0x0E */ ENTA_LIMB_RIGHT_HAND,
    /* 0x0F */ ENTA_LIMB_HEAD,
    /* 0x10 */ ENTA_LIMB_TORSO,
    /* 0x11 */ ENTA_LIMB_MAX
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
    /* 0x02CC */ s16 timer;
    /* 0x02CE */ s16 rapidBlinks;
    /* 0x02D0 */ s16 subCamId;
    /* 0x02D2 */ s16 returnToCamId;
    /* 0x02D4 */ Vec3s headRot;
    /* 0x02DA */ Vec3s torsoRot;
    /* 0x02E0 */ u16 stateFlags;
    /* 0x02E2 */ s16 nodOffTimer;
    /* 0x02E4 */ AnimationHeader* currentAnimation;
} EnTa; // size = 0x02E8


#endif
