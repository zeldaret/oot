#ifndef _Z_EN_STREAM_H_
#define _Z_EN_STREAM_H_

#include <ultra64.h>
#include <global.h>

typedef struct
{
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0xC];
} EnStream; // size = 0x0158

extern const ActorInit En_Stream_InitVars;

#endif
