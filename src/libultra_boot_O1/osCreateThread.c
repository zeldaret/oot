#include "global.h"

OSThread* __osThreadTail[2] = { NULL, (OSThread*)-1 };
OSThread* __osRunQueue = (OSThread*)__osThreadTail;
OSThread* __osActiveQueue = (OSThread*)__osThreadTail;
OSThread* __osRunningThread = NULL;
OSThread* __osFaultedThread = NULL;

void osCreateThread(OSThread* thread, OSId id, void (*entry)(void*), void* arg, void* sp, OSPri pri) {
    register u32 prevInt;
    u32 t8;

    thread->id = id;
    thread->priority = pri;
    thread->next = NULL;
    thread->queue = NULL;
    thread->context.pc = (u32)entry;
    thread->context.a0 = arg;
    thread->context.sp = (u64)(s32)sp - 16;
    thread->context.ra = __osCleanupThread;
    t8 = 0x3FFF01;
    thread->context.sr = (t8 & 0xFF01) | 2;
    thread->context.rcp = (t8 & 0x3F0000) >> 16;
    thread->context.fpcsr = 0x01000800;
    thread->fp = 0;
    thread->state = 1;
    thread->flags = 0;

    prevInt = __osDisableInt();
    thread->tlnext = __osActiveQueue;
    __osActiveQueue = thread;
    __osRestoreInt(prevInt);
}
