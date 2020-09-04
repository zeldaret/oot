#ifndef _Z_BG_SPOT15_RRBOX_H_
#define _Z_BG_SPOT15_RRBOX_H_

#include <ultra64.h>
#include <global.h>

struct BgSpot15Rrbox;

typedef struct BgSpot15Rrbox {
    /* 0x0000 */ DynaPolyActor dyna;

    /* 0x0164 */ char unk_164[28];
    /* 0x0180 */ s32 unk_180;
} BgSpot15Rrbox; // size = 0x0184

extern const ActorInit Bg_Spot15_Rrbox_InitVars;

#endif
