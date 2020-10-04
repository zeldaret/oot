#ifndef _Z_EN_ENCOUNT1_H_
#define _Z_EN_ENCOUNT1_H_

#include "ultra64.h"
#include "global.h"

struct EnEncount1;

typedef struct EnEncount1 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x6];
    /* 0x0152 */ s16 unk_152;
    /* 0x0154 */ char unk_154[0xA];
    /* 0x015E */ s16 numLeeversDead;
    /* 0x0160 */ char unk_160[0x4];
    /* 0x0164 */ s16 unk_164;
    /* 0x0166 */ char unk_166[0x6];
    /* 0x016C */ UNK_TYPE unk_16C;
} EnEncount1; // size = 0x0170

extern const ActorInit En_Encount1_InitVars;

#endif
