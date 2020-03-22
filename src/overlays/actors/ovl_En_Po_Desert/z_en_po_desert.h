#ifndef _Z_EN_PO_DESERT_H_
#define _Z_EN_PO_DESERT_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x138];
} EnPoDesert; // size = 0x0284

extern const ActorInit En_Po_Desert_InitVars;

#endif
