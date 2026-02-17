#ifndef Z_BG_HAKA_MEGANE_H
#define Z_BG_HAKA_MEGANE_H

#include "ultra64.h"
#include "actor.h"

typedef enum BgHakaMeganeType {
    /*  0 */ BGHAKAMEGANE_TYPE_BOTW_ROOM_0_FAKE,
    /*  1 */ BGHAKAMEGANE_TYPE_BOTW_ROOM_3_FAKE,
    /*  2 */ BGHAKAMEGANE_TYPE_BOTW_ROOM_5_HIDDEN,
    /*  3 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_0_FAKE_WALL,
    /*  4 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_2_FAKE_WALL,
    /*  5 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_3_HIDDEN,
    /*  6 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_5_FAKE,
    /*  7 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_6_FAKE,
    /*  8 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_9_HIDDEN,
    /*  9 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_10_FAKE,
    /* 10 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_15_HIDDEN,
    /* 11 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_18_FAKE,
    /* 12 */ BGHAKAMEGANE_TYPE_SHADOW_ROOM_11_HIDDEN,
    /* 13 */ BGHAKAMEGANE_TYPE_MAX
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
