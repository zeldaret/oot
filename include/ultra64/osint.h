#ifndef ULTRA64_OSINT_H
#define ULTRA64_OSINT_H

#include "time.h"
#include "thread.h"
#include "ultratypes.h"

extern __OSThreadTail __osThreadTail;

extern OSThread* __osRunningThread;
extern OSThread* __osActiveQueue;
extern OSThread* __osFaultedThread;
extern OSThread* __osRunQueue;

extern OSTimer* __osTimerList;
extern u32 __osBaseCounter;
extern OSTime __osCurrentTime;
extern u32 __osViIntrCount;
extern u32 __osTimerCounter;
extern u32 __osShutdown;

#endif
