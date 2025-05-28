#ifndef Z_BG_BREAKWALL_H
#define Z_BG_BREAKWALL_H

#include "ultra64.h"
#include "z64actor.h"

struct BgBreakwall;

typedef void (*BgBreakwallActionFunc)(struct BgBreakwall*, struct PlayState*);

typedef struct BgBreakwall {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ Gfx* bombableWallDList;
    /* 0x0168 */ s8 colType;
    /* 0x0169 */ s8 requiredObjectSlot;
    /* 0x016C */ ColliderQuad collider;
    /* 0x01EC */ BgBreakwallActionFunc actionFunc;
} BgBreakwall; // size = 0x01F0

typedef enum BombableWallType {
    /* 0 */ BWALL_DC_ENTRANCE,  // When exploded it will play the Dodongo's Cavern intro cutscene
    /* 1 */ BWALL_WALL,         // Used a lot in Dodongo's Cavern and other places
    /* 2 */ BWALL_KD_FLOOR,     // Used in the King Dodongo boss room
    /* 3 */ BWALL_KD_LAVA_COVER // Spawned after the KD fight in order to cover the lava floor to disable damage
} BombableWallType;

#endif
