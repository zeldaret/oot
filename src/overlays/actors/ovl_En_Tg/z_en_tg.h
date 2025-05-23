#ifndef Z_EN_TG_H
#define Z_EN_TG_H

#include "ultra64.h"
#include "z64actor.h"

struct EnTg;

typedef void (*EnTgActionFunc)(struct EnTg*, struct PlayState*);

typedef struct EnTg {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ EnTgActionFunc actionFunc;
    /* 0x0194 */ ColliderCylinder collider;
    /* 0x01E0 */ NpcInteractInfo interactInfo;
    /* 0x0208 */ u8 nextDialogue;
} EnTg; // size = 0x020C

#endif
