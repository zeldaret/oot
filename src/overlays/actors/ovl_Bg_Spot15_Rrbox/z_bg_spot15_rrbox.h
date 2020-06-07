#ifndef _Z_BG_SPOT15_RRBOX_H_
#define _Z_BG_SPOT15_RRBOX_H_

#include <ultra64.h>
#include <global.h>

struct BgSpot15Rrbox;

typedef struct BgSpot15Rrbox {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x38];
} BgSpot15Rrbox; // size = 0x0184

extern const ActorInit Bg_Spot15_Rrbox_InitVars;

#endif
