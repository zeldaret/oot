#ifndef _Z_EN_SSH_H_
#define _Z_EN_SSH_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x488];
} EnSsh; // size = 0x05D4

extern const ActorInit En_Ssh_InitVars;

#endif
