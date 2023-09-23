#ifndef Z64PRENMI_BUFF_H
#define Z64PRENMI_BUFF_H

#include "ultra64.h"

typedef struct PreNmiBuff {
    /* 0x00 */ u32 resetting;
    /* 0x04 */ u32 resetCount;
    /* 0x08 */ OSTime duration;
    /* 0x10 */ OSTime resetTime;
} PreNmiBuff; // size = 0x18 (actually osAppNMIBuffer is 0x40 bytes large but the rest is unused)

void PreNmiBuff_Init(PreNmiBuff* this);
void PreNmiBuff_SetReset(PreNmiBuff* this);
u32 PreNmiBuff_IsResetting(PreNmiBuff* this);

extern PreNmiBuff* gAppNmiBufferPtr;

#endif
