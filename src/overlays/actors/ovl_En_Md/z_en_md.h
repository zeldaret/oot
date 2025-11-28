#ifndef Z_EN_MD_H
#define Z_EN_MD_H

#include "ultra64.h"
#include "actor.h"
#include "assets/objects/object_md/object_md.h"

struct EnMd;

typedef void (*EnMdActionFunc)(struct EnMd*, struct PlayState*);

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
    /* 0x0214 */ s16 fidgetTableY[MIDO_LIMB_MAX];
    /* 0x0236 */ s16 fidgetTableZ[MIDO_LIMB_MAX];
    /* 0x0258 */ Vec3s jointTable[MIDO_LIMB_MAX];
    /* 0x02BE */ Vec3s morphTable[MIDO_LIMB_MAX];
} EnMd; // size = 0x0324

#endif
