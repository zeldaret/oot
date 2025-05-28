#ifndef Z_BG_JYA_MEGAMI_H
#define Z_BG_JYA_MEGAMI_H

#include "ultra64.h"
#include "z64actor.h"

struct BgJyaMegami;

typedef void (*BgJyaMegamiActionFunc)(struct BgJyaMegami*, struct PlayState*);

typedef struct BgJyaMegamiPiece {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ Vec3f vel;
    /* 0x18 */ s16 rotVelX;
    /* 0x1A */ s16 rotVelY;
} BgJyaMegamiPiece; // size = 0x1C

typedef struct BgJyaMegami {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgJyaMegamiActionFunc actionFunc;
    /* 0x0168 */ ColliderJntSph collider;
    /* 0x0188 */ ColliderJntSphElement colliderElements[1];
    /* 0x01C8 */ s16 lightTimer;
    /* 0x01CA */ s16 explosionTimer;
    /* 0x01CC */ s16 crumbleIndex;
    /* 0x01D0 */ BgJyaMegamiPiece pieces[13];
} BgJyaMegami; // size = 0x033C

#endif
