#ifndef _Z_BG_YDAN_HASI_H_
#define _Z_BG_YDAN_HASI_H_

#include <ultra64.h>
#include <global.h>

struct BgYdanHasi;

typedef struct BgYdanHasi {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x20];
} BgYdanHasi; // size = 0x016C

extern const ActorInit Bg_Ydan_Hasi_InitVars;

#endif
