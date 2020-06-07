#ifndef _ULTRA64_OS_INTERNAL_H_
#define _ULTRA64_OS_INTERNAL_H_

/* Internal functions used by the operating system */
/* Do not include this header in application code */

/* Variables */

typedef struct
{
    u32 initialized;
    OSThread *mgrThread;
    OSMesgQueue *cmdQueue;
    OSMesgQueue *eventQueue;
    OSMesgQueue *acccessQueue;
    s32 (*piDmaCallback)(s32, u32, void*, size_t);
    s32 (*epiDmaCallback)(OSPiHandle *, s32, u32, void *, size_t);
} OSMgrArgs;

typedef struct 
{
    OSMesgQueue* queue;
    OSMesg msg;
} __osHwInt;

typedef struct 
{
    OSMesgQueue* queue;
    OSMesg msg;
} __OSEventState;

/* Functions */

u32 __osProbeTLB(void *);
s32 __osDisableInt(void);
OSThread *__osPopThread(OSThread**);
void __osCleanupThread(void);

#endif
