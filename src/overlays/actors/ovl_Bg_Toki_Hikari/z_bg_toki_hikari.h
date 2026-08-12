#ifndef Z_BG_TOKI_HIKARI_H
#define Z_BG_TOKI_HIKARI_H

#include "ultra64.h"
#include "actor.h"

typedef enum BgTokiHikariType {
    BG_TOKI_HIKARI_TYPE_WINDOWS_AND_LIGHT,
    BG_TOKI_HIKARI_TYPE_TRIFORCE_FLASH
} BgTokiHikariType;

struct BgTokiHikari;

typedef struct BgTokiHikari {
    /* 0x000 */ Actor actor;
    /* 0x14C */ f32 triforceFlashIntensity;
    /* 0x150 */ void (*actionFunc)(struct BgTokiHikari*, struct PlayState*);
} BgTokiHikari; // size = 0x154

#endif
