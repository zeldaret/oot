#include "global.h"

OSTimer __osBaseTimer;
OSTime __osCurrentTime;
u32 __osBaseCounter;
u32 __osViIntrCount;
u32 __osTimerCounter;
OSTimer* __osTimerList = &__osBaseTimer;

void __osTimerServicesInit() {
    __osCurrentTime = 0;
    __osBaseCounter = 0;
    __osViIntrCount = 0;
    __osTimerList->prev = __osTimerList;
    __osTimerList->next = __osTimerList->prev;
    __osTimerList->value = 0;
    __osTimerList->interval = __osTimerList->value;
    __osTimerList->mq = NULL;
    __osTimerList->msg = NULL;
}

void __osTimerInterrupt() {
    OSTimer* sp24;
    u32 sp20;
    u32 sp1c;
    if (__osTimerList->next == __osTimerList) {
        return;
    }
    while (1) {
        sp24 = __osTimerList->next;
        if (sp24 == __osTimerList) {
            __osSetCompare(0);
            __osTimerCounter = 0;
            break;
        }
        sp20 = osGetCount();
        sp1c = sp20 - __osTimerCounter;
        __osTimerCounter = sp20;
        if (sp1c < sp24->value) {
            sp24->value -= sp1c;
            __osSetTimerIntr(sp24->value);
            return;
        } else {
            sp24->prev->next = sp24->next;
            sp24->next->prev = sp24->prev;
            sp24->next = NULL;
            sp24->prev = NULL;
            if (sp24->mq != NULL) {
                osSendMesg(sp24->mq, sp24->msg, OS_MESG_NOBLOCK);
            }
            if (sp24->interval != 0) {
                sp24->value = sp24->interval;
                __osInsertTimer(sp24);
            }
        }
    }
}

void __osSetTimerIntr(OSTime tim) {
    OSTime NewTime;
    u32 savedMask;

    if (tim < 468) {
        tim = 468;
    }

    savedMask = __osDisableInt();

    __osTimerCounter = osGetCount();
    NewTime = tim + __osTimerCounter;
    __osSetCompare((u32)NewTime);
    __osRestoreInt(savedMask);
}

OSTime __osInsertTimer(OSTimer* a0) {
    OSTimer* sp34;
    u64 sp28;
    s32 intDisabled;
    intDisabled = __osDisableInt();
    for (sp34 = __osTimerList->next, sp28 = a0->value; sp34 != __osTimerList && sp28 > sp34->value;
         sp28 -= sp34->value, sp34 = sp34->next) {
        ;
    }
    a0->value = sp28;
    if (sp34 != __osTimerList) {
        sp34->value -= sp28;
    }
    a0->next = sp34;
    a0->prev = sp34->prev;
    sp34->prev->next = a0;
    sp34->prev = a0;
    __osRestoreInt(intDisabled);
    return sp28;
}
