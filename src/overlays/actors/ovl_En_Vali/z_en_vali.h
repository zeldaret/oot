#ifndef _Z_EN_VALI_H_
#define _Z_EN_VALI_H_

#include <ultra64.h>
#include <global.h>

struct EnVali;

typedef struct EnVali {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x2FC];
} EnVali; // size = 0x0448

extern const ActorInit En_Vali_InitVars;

#endif
