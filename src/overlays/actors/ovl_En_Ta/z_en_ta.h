#ifndef Z_EN_TA_H
#define Z_EN_TA_H

#include "ultra64.h"
#include "actor.h"
#include "assets/objects/object_ta/object_ta.h"

struct EnTa;

typedef void (*EnTaActionFunc)(struct EnTa*, struct PlayState*);
typedef void (*EnTaBlinkFunc)(struct EnTa*);
typedef void (*EnTaAnimFunc)(struct EnTa*);

typedef enum EnTaType {
    /* 0xFFFF */ ENTA_CHILD_ERA = -1,
    /* 0x0001 */ ENTA_IN_KAKARIKO = 1,
    /* 0x0002 */ ENTA_RETURNED_FROM_KAKARIKO
 } EnTaType;

typedef struct EnTa {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[TALON_LIMB_MAX];
    /* 0x01F6 */ Vec3s morphTable[TALON_LIMB_MAX];
    /* 0x025C */ EnTaActionFunc actionFunc;
    /* 0x0260 */ EnTaAnimFunc animFunc;
    /* 0x0264 */ ColliderCylinder collider;
    /* 0x02B0 */ EnTaBlinkFunc blinkFunc;
    /* 0x02B4 */ s16 eyeIndex;
    /* 0x02B6 */ s16 blinkTimer;
    /* 0x02B8 */ struct EnNiw* superCuccos[3];
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
