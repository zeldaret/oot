#ifndef _Z_BG_GND_DARKMEIRO_H_
#define _Z_BG_GND_DARKMEIRO_H_

#include <ultra64.h>
#include <global.h>

struct BgGndDarkmeiro;

typedef void (*BgGndDarkmeiroActionFunc)(struct BgGndDarkmeiro*, GlobalContext*);

typedef struct BgGndDarkmeiro {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ u16 actorState; // Bitflags for whether a platform or timer is on. 0x8 for timer 2, 0x4 for timer 1, 0x2 for whether a platform is on.
	/* 0x0166 */ s16 timer1; //Timer for switch flag N+1. Platforms use it to count down to vanishing after the switch flag is unset.
	/* 0x0168 */ s16 timer2; //Timer for switch flag N+2. Platforms use it to control their transparency (does not work).
	/* 0x016A */ s16 unk16A; //unused
    /* 0x016C */ BgGndDarkmeiroActionFunc actionFunc;
} BgGndDarkmeiro; // size = 0x0170

extern const ActorInit Bg_Gnd_Darkmeiro_InitVars;

#endif
