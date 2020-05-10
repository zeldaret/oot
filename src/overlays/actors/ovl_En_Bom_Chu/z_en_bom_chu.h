#ifndef _Z_EN_BOM_CHU_H_
#define _Z_EN_BOM_CHU_H_

#include <ultra64.h>
#include <global.h>

struct EnBomChu;

typedef struct EnBomChu {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x98];
} EnBomChu; // size = 0x01E4

extern const ActorInit En_Bom_Chu_InitVars;

#endif
