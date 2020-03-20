#ifndef _Z_DEMO_GEFF_H_
#define _Z_DEMO_GEFF_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 action;
    /* 0x0150 */ s32 unk_150;
    /* 0x0154 */ s32 unk_154;
    /* 0x0158 */ Actor* unk_158;
    /* 0x015C */ f32 unk_15C;
    /* 0x0160 */ f32 unk_160;
    /* 0x0164 */ f32 unk_164;
} DemoGeff; // size = 0x0168

extern const ActorInit Demo_Geff_InitVars;

#endif
