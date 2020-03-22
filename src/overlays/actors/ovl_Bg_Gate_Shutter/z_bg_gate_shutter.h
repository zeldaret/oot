#ifndef _Z_BG_GATE_SHUTTER_H_
#define _Z_BG_GATE_SHUTTER_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x30];
} BgGateShutter; // size = 0x017C

extern const ActorInit Bg_Gate_Shutter_InitVars;

#endif
