#ifndef Z_BG_MIZU_MOVEBG_H
#define Z_BG_MIZU_MOVEBG_H

#include "ultra64.h"
#include "global.h"

typedef enum BgMizuMovebgType {
    /* 0 */ MIZUMOVEBG_TYPE_FLOATING_PLATFORM_OUTSIDE_CENTER_PILLAR,
    /* 1 */ MIZUMOVEBG_TYPE_FLOATING_PLATFORM_WEST,
    /* 2 */ MIZUMOVEBG_TYPE_FLOATING_PLATFORM_INSIDE_CENTER_PILLAR,
    /* 3 */ MIZUMOVEBG_TYPE_DRAGON_STATUE_BOSS_ROOM, // Dragon Statue leading to the Water Temple boss room
    /* 4 */ MIZUMOVEBG_TYPE_DRAGON_STATUE_2,         // Same behavior as ``MIZUMOVEBG_TYPE_DRAGON_STATUE_3``
    /* 5 */ MIZUMOVEBG_TYPE_DRAGON_STATUE_3,         // Dragon Statues used in Water Temple puzzles
    /* 6 */ MIZUMOVEBG_TYPE_DRAGON_STATUE_4,         // Same behavior as ``MIZUMOVEBG_TYPE_DRAGON_STATUE_3``
    /* 7 */ MIZUMOVEBG_TYPE_HOOKSHOT_PLATFORM,
    /* 8 */ MIZUMOVEBG_TYPE_MAX
} BgMizuMovebgType;

struct BgMizuMovebg;

typedef void (*BgMizuMovebgActionFunc)(struct BgMizuMovebg*, PlayState*);

typedef struct BgMizuMovebg {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ BgMizuMovebgActionFunc actionFunc;
    /* 0x0168 */ f32 homeY;
    /* 0x016C */ s32 scrollAlpha1;
    /* 0x0170 */ s32 scrollAlpha2;
    /* 0x0174 */ s32 scrollAlpha3;
    /* 0x0178 */ s32 scrollAlpha4;
    /* 0x017C */ u8 sfxFlags;
    /* 0x0180 */ Gfx* dList;
    /* 0x0184 */ s32 waypointId;
} BgMizuMovebg; // size = 0x0188

#endif
