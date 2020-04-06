#ifndef _Z_BG_JYA_HAHENIRON_H_
#define _Z_BG_JYA_HAHENIRON_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x68];
} BgJyaHaheniron; // size = 0x01B4

extern const ActorInit Bg_Jya_Haheniron_InitVars;

#endif
