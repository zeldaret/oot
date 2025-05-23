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

typedef void (*EnMdActionFunc)(struct EnMd*, PlayState*);

#define ENMD_GET_PATH_INDEX(this) PARAMS_GET_S(this->actor.params, 8, 8)
#define ENMD_GET_PATH_INDEX_NOSHIFT(this) PARAMS_GET_NOSHIFT(this->actor.params, 8, 8)

#define ENMD_PATH_NONE 0xFF

typedef struct EnMd {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnMdActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ NpcInteractInfo interactInfo;
    /* 0x0208 */ u8 messageEntry; // tracks message state changes, like with `BOX_BREAK` or `TEXTID`
    /* 0x0209 */ u8 messageState; // last known result of `Message_GetState`
    /* 0x020A */ u8 animSequenceEntry; // each one changes animation info and waits
    /* 0x020B */ u8 animSequence;
    /* 0x020C */ s16 blinkTimer;
    /* 0x020E */ s16 eyeTexIndex;
    /* 0x0210 */ s16 alpha;
    /* 0x0212 */ s16 waypoint;
    /* 0x0214 */ s16 fidgetTableY[ENMD_LIMB_MAX];
    /* 0x0236 */ s16 fidgetTableZ[ENMD_LIMB_MAX];
    /* 0x0258 */ Vec3s jointTable[ENMD_LIMB_MAX];
    /* 0x02BE */ Vec3s morphTable[ENMD_LIMB_MAX];
} EnMd; // size = 0x0324

#endif
