#ifndef Z_EN_TORYO_H
#define Z_EN_TORYO_H

#include "ultra64.h"
#include "z64actor.h"

struct EnToryo;

typedef void (*EnToryoActionFunc)(struct EnToryo* this, struct PlayState* play);

typedef struct EnToryo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnToryoActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ s32 exchangeItemId;
    /* 0x01E4 */ s32 messageState;
    /* 0x01E8 */ u16 stateFlags;
    /* 0x01EC */ NpcInteractInfo interactInfo;
    /* 0x0214 */ Vec3s jointTable[17];
    /* 0x027A */ Vec3s morphTable[17];
} EnToryo; // size = 0x02E0

#endif
