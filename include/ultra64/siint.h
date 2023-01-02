#ifndef ULTRA64_SIINT_H
#define ULTRA64_SIINT_H

#include "internal.h"
#include "rcp.h"

extern u8 __osPfsInodeCacheBank;
extern s32 __osPfsLastChannel;

void __osSiGetAccess(void);
void __osSiRelAccess(void);
void __osSiCreateAccessQueue(void);

s32 __osSiDeviceBusy(void);

#endif
