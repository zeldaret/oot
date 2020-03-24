#ifndef _Z_EN_CLEAR_TAG_H_
#define _Z_EN_CLEAR_TAG_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xB8];
} EnClearTag; // size = 0x0204

extern const ActorInit En_Clear_Tag_InitVars;

#endif
