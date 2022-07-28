#include "global.h"
#include "ultra64/viint.h"

OSViContext vi[2] = { 0 };
OSViContext* __osViCurr = &vi[0];
OSViContext* __osViNext = &vi[1];

void __osViInit(void) {
    bzero(vi, sizeof(vi));
    __osViCurr = &vi[0];
    __osViNext = &vi[1];

    __osViNext->retraceCount = 1;
    __osViCurr->retraceCount = 1;
    __osViNext->framep = (void*)K0BASE;
    __osViCurr->framep = (void*)K0BASE;

    if (osTvType == OS_TV_PAL) {
        __osViNext->modep = &osViModePalLan1;
    } else if (osTvType == OS_TV_MPAL) {
        __osViNext->modep = &osViModeMpalLan1;
    } else {
        __osViNext->modep = &osViModeNtscLan1;
    }

    __osViNext->state = VI_STATE_BLACK;
    __osViNext->features = __osViNext->modep->comRegs.ctrl;

    while (HW_REG(VI_CURRENT_REG, u32) > 10) {
        ;
    }

    HW_REG(VI_CONTROL_REG, u32) = 0;
    __osViSwapContext();
}
