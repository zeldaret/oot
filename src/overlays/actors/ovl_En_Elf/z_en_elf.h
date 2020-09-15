#ifndef _Z_EN_ELF_H_
#define _Z_EN_ELF_H_

#include "ultra64.h"
#include "global.h"

struct EnElf;

typedef struct EnElf {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x14C];
    /* 0x0298 */ Actor* unk_298;
    /* 0x029C */ char unk_29C[0x34];
} EnElf; // size = 0x02D0

extern const ActorInit En_Elf_InitVars;

#endif
