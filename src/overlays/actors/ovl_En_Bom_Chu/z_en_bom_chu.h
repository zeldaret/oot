#ifndef _Z_EN_BOM_CHU_H_
#define _Z_EN_BOM_CHU_H_

#include "ultra64.h"
#include "global.h"

struct EnBomChu;

typedef void (*EnBomChuActionFunc)(struct EnBomChu*, GlobalContext*);

typedef struct EnBomChu {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnBomChuActionFunc actionFunc;
    /* 0x0150 */ u16 unk_150;
    /* 0x0152 */ char unk_152[0x92];
} EnBomChu; // size = 0x01E4

extern const ActorInit En_Bom_Chu_InitVars;

#endif
