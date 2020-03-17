#ifndef _Z_EN_BA_H_
#define _Z_EN_BA_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x274];
} EnBa; // size = 0x03C0

extern const ActorInit En_Ba_InitVars;

#endif
