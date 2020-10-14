#include "global.h"

OSViContext vi[2] = { 0 };
OSViContext* __osViCurr = &vi[0];
OSViContext* __osViNext = &vi[1];

void __osViInit() {
    bzero(vi, sizeof(vi));
    __osViCurr = &vi[0];
    __osViNext = &vi[1];

    __osViNext->retraceCount = 1;
    __osViCurr->retraceCount = 1;
    __osViNext->buffer = (void*)0x80000000;
    __osViCurr->buffer = (void*)0x80000000;

    if (osTvType == 0) {
        __osViNext->modep = &osViModePalLan1;
    } else if (osTvType == 2) {
        __osViNext->modep = &osViModeMpalLan1;
    } else {
        __osViNext->modep = &osViModeNtscLan1;
    }

    __osViNext->state = 0x20;
    __osViNext->features = __osViNext->modep->comRegs.ctrl;

    while (HW_REG(VI_CURRENT_REG, u32) > 10) {
        ;
    }

    HW_REG(VI_CONTROL_REG, u32) = 0;
    __osViSwapContext();
}
