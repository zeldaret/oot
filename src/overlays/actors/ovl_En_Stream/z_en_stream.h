#ifndef _Z_EN_STREAM_H_
#define _Z_EN_STREAM_H_

#include "ultra64.h"
#include "global.h"

struct EnStream;

typedef void (*EnStreamActionFunc)(struct EnStream*, GlobalContext*);

typedef struct EnStream {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ EnStreamActionFunc actionFunc;
    /* 0x0150 */ s32 unk_150;
    /* 0x0154 */ char unk_154[0x4];
} EnStream; // size = 0x0158

extern const ActorInit En_Stream_InitVars;

#endif
