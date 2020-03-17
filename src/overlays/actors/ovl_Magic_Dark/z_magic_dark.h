#ifndef _Z_MAGIC_DARK_H_
#define _Z_MAGIC_DARK_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x18];
} MagicDark; // size = 0x0164

extern const ActorInit Magic_Dark_InitVars;

#endif
