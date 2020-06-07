#ifndef _Z_BG_ICE_SHELTER_H_
#define _Z_BG_ICE_SHELTER_H_

#include <ultra64.h>
#include <global.h>

struct BgIceShelter;

typedef struct BgIceShelter {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xB8];
} BgIceShelter; // size = 0x0204

extern const ActorInit Bg_Ice_Shelter_InitVars;

#endif
