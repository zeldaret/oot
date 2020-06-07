#ifndef _Z_EN_WONDER_TALK2_H_
#define _Z_EN_WONDER_TALK2_H_

#include <ultra64.h>
#include <global.h>

struct EnWonderTalk2;

typedef struct EnWonderTalk2 {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x24];
} EnWonderTalk2; // size = 0x0170

extern const ActorInit En_Wonder_Talk2_InitVars;

#endif
