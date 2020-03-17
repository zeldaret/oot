#ifndef _Z_ITEM_ETCETERA_H_
#define _Z_ITEM_ETCETERA_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x14];
} ItemEtcetera; // size = 0x0160

extern const ActorInit Item_Etcetera_InitVars;

#endif
