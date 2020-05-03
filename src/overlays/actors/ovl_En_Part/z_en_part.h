#ifndef _Z_EN_PART_H_
#define _Z_EN_PART_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x000 */ Actor actor;
    /* 0x14C */ u8 unk_14C;
    /* 0x14E */ s16 unk_14E;
    /* 0x150 */ s32 unk_150;
    /* 0x154 */ f32 unk_154;
    /* 0x158 */ f32 unk_158;
} EnPart; // size = 0x015C

extern const ActorInit En_Part_InitVars;

#endif
