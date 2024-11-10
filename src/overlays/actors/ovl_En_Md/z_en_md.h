#ifndef Z_EN_MD_H
#define Z_EN_MD_H

#include "ultra64.h"
#include "global.h"

struct EnMd;

typedef enum EnMdLimb {
    ENMD_LIMB_NONE,
    ENMD_LIMB_ROOT,
    ENMD_LIMB_WAIST,
    ENMD_LIMB_LEFT_THIGH,
    ENMD_LIMB_LEFT_LEG,
    ENMD_LIMB_LEFT_FOOT,
    ENMD_LIMB_RIGHT_THIGH,
    ENMD_LIMB_RIGHT_LEG,
    ENMD_LIMB_RIGHT_FOOT,
    ENMD_LIMB_TORSO,
    ENMD_LIMB_LEFT_UPPER_ARM,
    ENMD_LIMB_LEFT_FOREARM,
    ENMD_LIMB_LEFT_HAND,
    ENMD_LIMB_RIGHT_UPPER_ARM,
    ENMD_LIMB_RIGHT_FOREARM,
    ENMD_LIMB_RIGHT_HAND,
    ENMD_LIMB_HEAD,
    ENMD_LIMB_MAX
} EnMdLimb;

typedef enum EnMdEye {
    ENMD_EYE_OPEN,
    ENMD_EYE_HALF,
    ENMD_EYE_CLOSED,
    ENMD_EYE_ANGRY,
    ENMD_EYE_LOOKING_UP,
    ENMD_EYE_MAX
} EnMdEye;

typedef void (*EnMdActionFunc)(struct EnMd*, PlayState*);

typedef struct EnMd {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnMdActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ NpcInteractInfo interactInfo;
    /* 0x0208 */ u8 messageEntry; // tracks message state changes, in place of `.actor.textId`
    /* 0x0209 */ u8 messageState; // last known result of `Message_GetState`
    /* 0x020A */ u8 animEntry;    // each one changes animation info and waits
    /* 0x020B */ u8 animState;    // defines a sequence of animation entries
    /* 0x020C */ s16 blinkTimer;
    /* 0x020E */ s16 eyeTexIndex;
    /* 0x0210 */ s16 alpha;
    /* 0x0212 */ s16 waypoint;
    /* 0x0214 */ s16 unk_214[ENMD_LIMB_MAX];
    /* 0x0236 */ s16 unk_236[ENMD_LIMB_MAX];
    /* 0x0258 */ Vec3s jointTable[ENMD_LIMB_MAX];
    /* 0x02BE */ Vec3s morphTable[ENMD_LIMB_MAX];
} EnMd; // size = 0x0324

#endif
