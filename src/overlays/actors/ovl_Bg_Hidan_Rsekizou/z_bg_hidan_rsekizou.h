#ifndef _Z_BG_HIDAN_RSEKIZOU_H_
#define _Z_BG_HIDAN_RSEKIZOU_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1BC];
} BgHidanRsekizou; // size = 0x0308

extern const ActorInit Bg_Hidan_Rsekizou_InitVars;

#endif
