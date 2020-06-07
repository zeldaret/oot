#ifndef _Z_EN_FW_H_
#define _Z_EN_FW_H_

#include <ultra64.h>
#include <global.h>

struct EnFw;

typedef struct EnFw {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x5B4];
} EnFw; // size = 0x0700

extern const ActorInit En_Fw_InitVars;

#endif
