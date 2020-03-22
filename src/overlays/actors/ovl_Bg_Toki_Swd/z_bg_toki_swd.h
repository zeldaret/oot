#ifndef _Z_BG_TOKI_SWD_H_
#define _Z_BG_TOKI_SWD_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ActorFunc actionFunc;
    /* 0x0150 */ ColliderCylinderMain collider;
} BgTokiSwd; // size = 0x019C

extern const ActorInit Bg_Toki_Swd_InitVars;

#endif
