#ifndef _Z_BG_GND_NISEKABE_H_
#define _Z_BG_GND_NISEKABE_H_

#include <ultra64.h>
#include <global.h>

struct BgGndNisekabe;

typedef struct BgGndNisekabe {
    /* 0x0000 */ Actor actor;
} BgGndNisekabe; // size = 0x014C

extern const ActorInit Bg_Gnd_Nisekabe_InitVars;

#endif
