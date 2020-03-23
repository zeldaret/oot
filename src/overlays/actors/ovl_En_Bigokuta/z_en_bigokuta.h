#ifndef _Z_EN_BIGOKUTA_H_
#define _Z_EN_BIGOKUTA_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x238];
} EnBigokuta; // size = 0x0384

extern const ActorInit En_Bigokuta_InitVars;

#endif
