#ifndef Z_EN_MU_H
#define Z_EN_MU_H

#include "ultra64.h"
#include "global.h"

struct EnMu;

typedef void (*EnMuActionFunc)(struct EnMu*, struct PlayState*);

#define MU_LIMB_MAX 16     // @note: correct, because `Actor_UpdateFidgetTables` uses it
#define MU_LIMB_MAX_BUG 17 // @bug: should be the same value

typedef struct EnMu {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnMuActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ NpcInteractInfo npcInfo;
    /* 0x0208 */ u16 defaultTextId;
    /* 0x020A */ s16 fidgetTableY[MU_LIMB_MAX];
    /* 0x022A */ s16 fidgetTableZ[MU_LIMB_MAX_BUG];
} EnMu; // size = 0x024C

#endif
