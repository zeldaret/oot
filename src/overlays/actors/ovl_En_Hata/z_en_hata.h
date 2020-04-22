#ifndef _Z_EN_HATA_H_
#define _Z_EN_HATA_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x130];
} EnHata; // size = 0x027C

extern const ActorInit En_Hata_InitVars;

#endif
