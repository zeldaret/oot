#ifndef _Z_BG_HIDAN_KOUSI_H_
#define _Z_BG_HIDAN_KOUSI_H_

#include <ultra64.h>
#include <global.h>

struct BgHidanKousi;

typedef struct BgHidanKousi {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x20];
} BgHidanKousi; // size = 0x016C

extern const ActorInit Bg_Hidan_Kousi_InitVars;

#endif
