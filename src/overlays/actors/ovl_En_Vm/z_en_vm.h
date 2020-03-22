#ifndef _Z_EN_VM_H_
#define _Z_EN_VM_H_

#include <ultra64.h>
#include <global.h>

typedef struct {
    /* 0x0000 */ Actor actor;
    /* 0x014C */ char unk_14C[0x268];
} EnVm; // size = 0x03B4

extern const ActorInit En_Vm_InitVars;

#endif
