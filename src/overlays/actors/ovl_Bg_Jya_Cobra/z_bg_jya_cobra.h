#ifndef _Z_BG_JYA_COBRA_H_
#define _Z_BG_JYA_COBRA_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1058];
} BgJyaCobra; // size = 0x11A4

extern const ActorInit Bg_Jya_Cobra_InitVars;

#endif
