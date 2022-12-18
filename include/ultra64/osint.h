#ifndef ULTRA64_OSINT_H
#define ULTRA64_OSINT_H

#include "internal.h"

void __osTimerServicesInit(void);
void __osTimerInterrupt(void);
void __osSetTimerIntr(OSTime);
OSTime __osInsertTimer(OSTimer*);

s32 __osSpDeviceBusy(void);

u32 __osProbeTLB(void*);

typedef struct {
    OSThread* next;
    OSPri priority;
} __OSThreadTail; // size = 0x8

typedef struct  {
    /* 0x00 */ OSMesgQueue* queue;
    /* 0x04 */ OSMesg msg;
} __OSEventState; // size = 0x08

extern __OSEventState __osEventStateTab[OS_NUM_EVENTS];

extern u32 __osShutdown;
extern s32 osViClock;

extern __OSThreadTail __osThreadTail;
extern OSThread* __osRunQueue;
extern OSThread* __osActiveQueue;
extern OSThread* __osRunningThread;
extern OSThread* __osFaultedThread;
extern OSTimer* __osTimerList;

extern u32 __osBaseCounter;
extern u32 __osViIntrCount;
extern u32 __osTimerCounter;
extern OSTime __osCurrentTime;

#endif
