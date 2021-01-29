#ifndef _Z_DEMO_DU_H_
#define _Z_DEMO_DU_H_

#include "ultra64.h"
#include "global.h"

struct DemoDu;

typedef struct DemoDu {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ SkelAnime unk_14C;
    /* 0x0190 */ s16 unk_190;
    /* 0x0192 */ char unk_192[0x02];
    /* 0x0194 */ s16 unk_194;
    /* 0x0196 */ char unk_196[0x02];
    /* 0x0198 */ s32 unk_198;
    /* 0x019C */ void* unk_19C;
    /* 0x01A0 */ char unk_1A0[0x14];
} DemoDu; // size = 0x01B4

extern const ActorInit Demo_Du_InitVars;

#endif
