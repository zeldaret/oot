#ifndef _Z_ELF_MSG2_H_
#define _Z_ELF_MSG2_H_

#include "ultra64.h"
#include "global.h"

struct ElfMsg2;

typedef void (*ElfMsg2ActionFunc)(struct ElfMsg2*, GlobalContext*);

typedef struct ElfMsg2 {
    /* 0x0000 */ Actor              actor;
    /* 0x014C */ ElfMsg2ActionFunc  actionFunc;
} ElfMsg2; // size = 0x0150

extern const ActorInit Elf_Msg2_InitVars;

#endif
