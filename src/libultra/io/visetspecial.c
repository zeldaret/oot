#include "global.h"
#include "ultra64/viint.h"

void osViSetSpecialFeatures(u32 func) {
    register u32 prevInt = __osDisableInt();

    if (func & OS_VI_GAMMA_ON) {
        __osViNext->features |= VI_CTRL_GAMMA_ON;
    }
    if (func & OS_VI_GAMMA_OFF) {
        __osViNext->features &= ~VI_CTRL_GAMMA_ON;
    }

    if (func & OS_VI_GAMMA_DITHER_ON) {
        __osViNext->features |= VI_CTRL_GAMMA_DITHER_ON;
    }
    if (func & OS_VI_GAMMA_DITHER_OFF) {
        __osViNext->features &= ~VI_CTRL_GAMMA_DITHER_ON;
    }

    if (func & OS_VI_DIVOT_ON) {
        __osViNext->features |= VI_CTRL_DIVOT_ON;
    }
    if (func & OS_VI_DIVOT_OFF) {
        __osViNext->features &= ~VI_CTRL_DIVOT_ON;
    }

    if (func & OS_VI_DITHER_FILTER_ON) {
        __osViNext->features |= VI_CTRL_DITHER_FILTER_ON;
        __osViNext->features &= ~VI_CTRL_ANTIALIAS_MODE_3;
    }
    if (func & OS_VI_DITHER_FILTER_OFF) {
        __osViNext->features &= ~VI_CTRL_DITHER_FILTER_ON;
        __osViNext->features |= __osViNext->modep->comRegs.ctrl & VI_CTRL_ANTIALIAS_MODE_3;
    }

    __osViNext->state |= VI_STATE_CTRL_UPDATED;

    __osRestoreInt(prevInt);
}
