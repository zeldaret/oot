#ifndef ULTRA64_PIINT_H
#define ULTRA64_PIINT_H

#include "internal.h"
#include "rcp.h"

void __osDevMgrMain(void*);

OSMesgQueue* osPiGetCmdQueue(void);

void __osPiCreateAccessQueue(void);
void __osPiGetAccess(void);
void __osPiRelAccess(void);

s32 __osPiRawStartDma(s32, u32, void*, size_t);
s32 __osEPiRawReadIo(OSPiHandle*, u32, u32*);
s32 __osEPiRawWriteIo(OSPiHandle*, u32, u32);
s32 __osEPiRawStartDma(OSPiHandle*, s32, u32, void*, size_t);

extern OSDevMgr __osPiDevMgr;
extern OSMesgQueue __osPiAccessQueue;
extern u32 __osPiAccessQueueEnabled;
extern OSPiHandle* __osCurrentHandle[2];

extern OSPiHandle __Dom1SpeedParam;
extern OSPiHandle __Dom2SpeedParam;

#endif
