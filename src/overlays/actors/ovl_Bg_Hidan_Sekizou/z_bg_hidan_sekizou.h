#ifndef _Z_BG_HIDAN_SEKIZOU_H_
#define _Z_BG_HIDAN_SEKIZOU_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1C8];
} BgHidanSekizou; // size = 0x0314

extern const ActorInit Bg_Hidan_Sekizou_InitVars;

#endif
