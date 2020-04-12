#ifndef _Z_BG_SPOT00_BREAK_H
#define _Z_BG_SPOT00_BREAK_H_

#include <ultra64.h>
#include <global.h>


typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ u32 dynaPolyId;
    /* 0x0150 */ char unk_150[0x14];
} BgSpot00Break; // size = 0x0164

#endif
