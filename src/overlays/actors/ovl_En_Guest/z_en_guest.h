#ifndef Z_EN_GUEST_H
#define Z_EN_GUEST_H

#include "ultra64.h"
#include "global.h"

struct EnGuest;

typedef void (*EnGuestActionFunc)(struct EnGuest* this, PlayState* play);

#define GUEST_LIMB_MAX 16

typedef struct EnGuest {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ Vec3s jointTable[GUEST_LIMB_MAX];
    /* 0x01F0 */ Vec3s morphTable[GUEST_LIMB_MAX];
    /* 0x0250 */ EnGuestActionFunc actionFunc;
    /* 0x0254 */ ColliderCylinder collider;
    /* 0x02A0 */ NpcInteractInfo interactInfo;
    /* 0x02C8 */ s16 unk_2C8;
    /* 0x02CA */ s16 unk_2CA;
    /* 0x02CC */ s16 limbOverridesY[GUEST_LIMB_MAX];
    /* 0x02EC */ s16 limbOverridesZ[GUEST_LIMB_MAX];
    /* 0x030C */ s8 osAnimeObjectSlot;
    /* 0x030D */ u8 unk_30D;
    /* 0x030E */ u8 unk_30E;
} EnGuest; // size = 0x0310

#endif
