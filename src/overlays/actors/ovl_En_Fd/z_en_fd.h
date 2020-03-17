#ifndef _Z_EN_FD_H_
#define _Z_EN_FD_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x3094];
} EnFd; // size = 0x31E0

extern const ActorInit En_Fd_InitVars;

#endif
