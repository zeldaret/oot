#ifndef Z_BG_HAKA_ZOU_H
#define Z_BG_HAKA_ZOU_H

#include "ultra64.h"
#include "actor.h"

typedef enum BgHakaZouType {
    /* 0x0 */ BGHAKAZOU_TYPE_GIANT_BIRD_STATUE,
    /* 0x1 */ BGHAKAZOU_TYPE_BOMBABLE_SKULL_WALL,
    /* 0x2 */ BGHAKAZOU_TYPE_BOMBABLE_RUBBLE,
    /* 0x3 */ BGHAKAZOU_TYPE_SKULL_WALL_RUBBLE
} BgHakaZouType;

struct BgHakaZou;

typedef void (*BgHakaZouActionFunc)(struct BgHakaZou*, struct PlayState*);

typedef struct BgHakaZou {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHakaZouActionFunc actionFunc;
    /* 0x0168 */ s8 requiredObjectSlot;
    /* 0x0169 */ u8 switchFlag;
    /* 0x016A */ s16 timer;
    /* 0x016C */ ColliderCylinder collider;
} BgHakaZou; // size = 0x01B8

#endif
