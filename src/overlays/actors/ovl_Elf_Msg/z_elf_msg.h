#ifndef Z_ELF_MSG_H
#define Z_ELF_MSG_H

#include "ultra64.h"
#include "z64actor.h"

struct ElfMsg;

typedef void (*ElfMsgActionFunc)(struct ElfMsg*, struct PlayState*);

typedef struct ElfMsg {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ ElfMsgActionFunc actionFunc;
} ElfMsg; // size = 0x0150

#endif
