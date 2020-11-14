#ifndef _Z_BOSS_DODONGO_H_
#define _Z_BOSS_DODONGO_H_

#include "ultra64.h"
#include "global.h"

struct BossDodongo;

typedef struct BossDodongo {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime skelAnime;
    /* 0x0190 */ char unk_190[4];
    /* 0x0194 */ u16 unk_194;
    /* 0x0196 */ char unk_196[0x62];
    /* 0x01F8 */ f32 unk_1F8;
    /* 0x01FC */ char unk_1FC[0x20];
    /* 0x021C */ f32 unk_21C;
    /* 0x0220 */ f32 unk_220;
    /* 0x0224 */ f32 unk_224;
    /* 0x0228 */ f32 unk_228;
    /* 0x022C */ char unk_22C[0x214];
    /* 0x0440 */ ColliderJntSph collider;
    /* 0x0460 */ ColliderJntSphItem items[19];
    /* 0x0920 */ s32 unk_920;
    /* 0x0924 */ char unk_924[0xEFC];
    /* 0x0460 */ //unk_48C[0x1394];
} BossDodongo; // size = 0x1820

extern const ActorInit Boss_Dodongo_InitVars;

#endif
