#ifndef _Z_EN_WONDER_TALK_H_
#define _Z_EN_WONDER_TALK_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x1C];
} EnWonderTalk; // size = 0x0168

extern const ActorInit En_Wonder_Talk_InitVars;

#endif
