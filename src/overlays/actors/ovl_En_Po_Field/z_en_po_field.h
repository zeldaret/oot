#ifndef _Z_EN_PO_FIELD_H_
#define _Z_EN_PO_FIELD_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x190];
} EnPoField; // size = 0x02DC

extern const ActorInit En_Po_Field_InitVars;

#endif
