#ifndef _Z_BG_SPOT16_BOMBSTONE_H_
#define _Z_BG_SPOT16_BOMBSTONE_H_

#include <ultra64.h>
#include <global.h>

struct BgSpot16Bombstone;

typedef struct BgSpot16Bombstone {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x4];
    /* 0x0150 */ s32 unk_150;
    /* 0x014C */ char unk_154[0x2];
    /* 0x0156 */ s16 unk_156;
    /* 0x0158 */ char unk_158[0x4];
    /* 0x015C */ s32 unk_15C;
    /* 0x0161 */ s32 unk_160;
    /* 0x0164 */ s32 unk_164;
    /* 0x0168 */ char unk_168[0x1C];
    /* 0x0184 */ s32 unk_184;
    /* 0x0188 */ char unk_188[0x90];
} BgSpot16Bombstone; // size = 0x0218

extern const ActorInit Bg_Spot16_Bombstone_InitVars;

#endif
