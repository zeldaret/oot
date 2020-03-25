#ifndef _Z_EN_HORSE_GANON_H_
#define _Z_EN_HORSE_GANON_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ s32 unk_14C;
    /* 0x0150 */ s32 unk_150;
    /* 0x0154 */ s32 unk_154;
    /* 0x0158 */ char unk_158[0x48];
    /* 0x01a0 */ SkelAnime skelAnime;
    /* 0x01e4 */ char unk_1a4[0x18];
    /* 0x01FC */ ColliderCylinderMain collider;
    /* 0x0248 */ u32 unk_248; // not sure what this is supposed to be, maybe ColliderCustomMain from z_bg_bdan_switch.c
    /* 0x024C */ char unk_24C[0x1C];
    /* 0x0268 */ s32 unk_268;
    /* 0x026C */ char unk_26C[0x3C];
} EnHorseGanon; // size = 0x02A8

extern const ActorInit En_Horse_Ganon_InitVars;

#endif
