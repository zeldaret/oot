#ifndef _Z_EN_TP_H_
#define _Z_EN_TP_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x8C];
} EnTp; // size = 0x01D8

extern const ActorInit En_Tp_InitVars;

#endif
