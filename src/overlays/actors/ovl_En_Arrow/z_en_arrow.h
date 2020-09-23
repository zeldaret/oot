#ifndef _Z_EN_ARROW_H_
#define _Z_EN_ARROW_H_

#include <ultra64.h>
#include <global.h>

struct EnArrow;

typedef struct EnArrow {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x5C];
    /* 0x01A8 */ s32 unk_1A8; // related to arrows being on fire
    /* 0x01AC */ char unk_1AC[0x9C];
    /* 0x0248 */ u8 timer; // used for dissapearing when flying or hitting a wall
    /* 0x0249 */ u8 hitWall;
    /* 0x024A */ char unk_24A[0x16];
} EnArrow; // size = 0x0260

extern const ActorInit En_Arrow_InitVars;

#endif
