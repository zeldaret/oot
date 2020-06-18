#ifndef _Z_BG_HIDAN_ROCK_H_
#define _Z_BG_HIDAN_ROCK_H_

#include <ultra64.h>
#include <global.h>

struct BgHidanRock;

typedef struct BgHidanRock {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x7C];
} BgHidanRock; // size = 0x01C8

extern const ActorInit Bg_Hidan_Rock_InitVars;

#endif
