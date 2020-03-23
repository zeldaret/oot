#ifndef _Z_BG_TREEMOUTH_H_
#define _Z_BG_TREEMOUTH_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x24];
} BgTreemouth; // size = 0x0170

extern const ActorInit Bg_Treemouth_InitVars;

#endif
