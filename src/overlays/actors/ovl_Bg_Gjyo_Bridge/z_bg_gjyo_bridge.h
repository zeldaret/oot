#ifndef _Z_BG_GJYO_BRIDGE_H_
#define _Z_BG_GJYO_BRIDGE_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1C];
} BgGjyoBridge; // size = 0x0168

extern const ActorInit Bg_Gjyo_Bridge_InitVars;

#endif
