#ifndef _Z_BG_JYA_IRONOBJ_H_
#define _Z_BG_JYA_IRONOBJ_H_

#include <ultra64.h>
#include <global.h>

struct BgJyaIronobj;

typedef struct BgJyaIronobj {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x68];
} BgJyaIronobj; // size = 0x01B4

extern const ActorInit Bg_Jya_Ironobj_InitVars;

#endif
