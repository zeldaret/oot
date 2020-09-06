#ifndef _Z_BG_GND_DARKMEIRO_H_
#define _Z_BG_GND_DARKMEIRO_H_

#include <ultra64.h>
#include <global.h>

struct BgGndDarkmeiro;

typedef void (*BgGndDarkmeiroActionFunc)(struct BgGndDarkmeiro*, GlobalContext*);

typedef struct BgGndDarkmeiro {
    /* 0x0000 */ DynaPolyActor dyna;
    /* 0x0164 */ u16 actionState;    /* Bitflags for whether a block or timer is on.
                                        0x8 for timer 2, 0x4 for timer 1, 0x2 for blocks.   */
    /* 0x0166 */ s16 timer1;         /* Timer for switch flag N+1. Blocks use it to count 
                                        down to vanishing when their switch flag is cleared.*/
    /* 0x0168 */ s16 timer2;         /* Timer for switch flag N+2. Blocks use it to control
                                        their transparency (does not work).                 */
    /* 0x016C */ BgGndDarkmeiroActionFunc actionFunc;
} BgGndDarkmeiro; // size = 0x0170

typedef enum {
    /* 0 */ DARKMEIRO_MODE_ZERO,   /* This does nothing and has a display list which apparently
                                      draws nothing.                                               */
    /* 1 */ DARKMEIRO_CLEAR_BLOCK, /* Clear blocks appear when their switch flag is set and
                                      disappear 64 frames after their flag is cleared. Clear
                                      blocks with flag 0x3F are always on.                         */
    /* 2 */ DARKMEIRO_BLOCK_TIMER  /* A block timer with switch flag N reacts to switch flags N+1
                                      and N+2 being set, setting its own switch flag and a timer
                                      for 304 frames. There are separate timers for N+1 and N+2,
                                      and the timer sets flag N if either timer is above 64 frames.
                                      Block timers work with any switched objects and do not need
                                      clear blocks to be present to function.                      */
} DarkmeiroType;

extern const ActorInit Bg_Gnd_Darkmeiro_InitVars;

#endif
