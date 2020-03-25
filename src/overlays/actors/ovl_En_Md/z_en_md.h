#ifndef _Z_EN_MD_H_
#define _Z_EN_MD_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1D8];
} EnMd; // size = 0x0324

extern const ActorInit En_Md_InitVars;

#endif
