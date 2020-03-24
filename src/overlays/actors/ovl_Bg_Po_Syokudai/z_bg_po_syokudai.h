#ifndef _Z_BG_PO_SYOKUDAI_H_
#define _Z_BG_PO_SYOKUDAI_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x64];
} BgPoSyokudai; // size = 0x01B0

extern const ActorInit Bg_Po_Syokudai_InitVars;

#endif
