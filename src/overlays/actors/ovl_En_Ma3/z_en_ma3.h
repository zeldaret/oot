#ifndef _Z_EN_MA3_H_
#define _Z_EN_MA3_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x138];
} EnMa3; // size = 0x0284

extern const ActorInit En_Ma3_InitVars;

#endif
