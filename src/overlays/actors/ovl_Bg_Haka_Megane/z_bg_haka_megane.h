#ifndef Z_BG_HAKA_MEGANE_H
#define Z_BG_HAKA_MEGANE_H

#include "ultra64.h"
#include "actor.h"

typedef enum BgHakaMeganeType {
    /* 00 */ BGHAKAMEGANE_TYPE_BOTW_ROOM_0_FAKE,
    /* 01 */ BGHAKAMEGANE_TYPE_BOTW_ROOM_3_FAKE,
    /* 02 */ BGHAKAMEGANE_TYPE_BOTW_ROOM_5_HIDDEN,
    /* 03 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_0_FAKE_WALL,
    /* 04 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_2_FAKE_WALL,
    /* 05 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_3_HIDDEN,
    /* 06 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_5_FAKE,
    /* 07 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_6_FAKE,
    /* 08 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_9_HIDDEN,
    /* 09 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_10_FAKE,
    /* 10 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_15_HIDDEN,
    /* 11 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_18_FAKE,
    /* 12 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_11_HIDDEN,
} BgHakaMeganeType;

struct BgHakaMegane;

typedef void (*BgHakaMeganeActionFunc)(struct BgHakaMegane*, struct PlayState*);

typedef struct BgHakaMegane {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgHakaMeganeActionFunc actionFunc;
    /* 0x0168 */ char unk_168[0x1];
    /* 0x0169 */ s8 requiredObjectSlot;
} BgHakaMegane; // size = 0x016C

#endif
