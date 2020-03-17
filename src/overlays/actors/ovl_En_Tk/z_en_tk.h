#ifndef _Z_EN_TK_H_
#define _Z_EN_TK_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x624];
} EnTk; // size = 0x0770

extern const ActorInit En_Tk_InitVars;

#endif
