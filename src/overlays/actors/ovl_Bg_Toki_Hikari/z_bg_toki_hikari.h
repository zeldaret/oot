#ifndef Z_BG_TOKI_HIKARI_H
#define Z_BG_TOKI_HIKARI_H

#include "ultra64.h"
#include "actor.h"

struct BgTokiHikari;

typedef struct BgTokiHikari {
    /* 0x000 */ Actor actor;
    /* 0x14C */ f32 unk14C;
    /* 0x150 */ void (*unk150)(struct BgTokiHikari*, struct PlayState*);
} BgTokiHikari; // size = 0x154

#endif
