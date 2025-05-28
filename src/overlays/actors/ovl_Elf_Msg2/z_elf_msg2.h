#ifndef Z_ELF_MSG2_H
#define Z_ELF_MSG2_H

#include "ultra64.h"
#include "z64actor.h"

struct ElfMsg2;

typedef void (*ElfMsg2ActionFunc)(struct ElfMsg2*, struct PlayState*);

typedef struct ElfMsg2 {
    /* 0x0000 */ Actor              actor;
    /* 0x014C */ ElfMsg2ActionFunc  actionFunc;
} ElfMsg2; // size = 0x0150

#endif
