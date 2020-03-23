#ifndef _Z_EN_ARROW_H_
#define _Z_EN_ARROW_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xFC];
    /* 0x0248 */ u8 timer; // used for dissapearing when flying or hitting a wall
    /* 0x0249 */ u8 hitWall;
} EnArrow; // size = 0x0260

extern const ActorInit En_Arrow_InitVars;

#endif
