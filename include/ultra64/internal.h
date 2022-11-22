#ifndef ULTRA64_INTERNAL_H
#define ULTRA64_INTERNAL_H

#include "pi.h"

typedef struct {
    /* 0x00 */ u32 active;
    /* 0x04 */ OSThread* thread;
    /* 0x08 */ OSMesgQueue* cmdQueue;
    /* 0x0C */ OSMesgQueue* evtQueue;
    /* 0x10 */ OSMesgQueue* acsQueue;
    /* 0x14 */ s32 (*dma)(s32, u32, void*, size_t);
    /* 0x18 */ s32 (*edma)(OSPiHandle*, s32, u32, void*, size_t);
} OSDevMgr; // size = 0x1C

typedef struct  {
    /* 0x00 */ OSMesgQueue* queue;
    /* 0x04 */ OSMesg msg;
} __OSEventState; // size = 0x08

extern OSDevMgr __osPiDevMgr;
extern __OSEventState __osEventStateTab[];

#endif
