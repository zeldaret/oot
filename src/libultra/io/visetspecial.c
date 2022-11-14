#include "global.h"
#include "ultra64/viint.h"

/**
 * Configures VI "special features" to be applied on the next context swap.
 *
 * "Special features" refer to the mode bits in the Video Interface control register that enable effects such as gamma
 * correction, gamma dither, dither filtering, anti-aliasing filtering and divot filtering. Configuring the same
 * setting ON and OFF in the same call will result in OFF taking precedence.
 *
 * Any unrecognized bits will be ignored. Note that this is very intentional as in early revisions of retail N64
 * hardware setting bit 5 in the `features` field of OSViContext may cause physical damage to the console once it is
 * fed to VI_CONTROL_REG on next context swap.
 *
 * @param func OS_VI_*_ON / OS_VI_*_OFF bits to enable or disable a setting.
 */
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
        // If the dither filter is enabled, also force anti-alias mode 0 irrespective of the current OSViMode.
        __osViNext->features |= VI_CTRL_DITHER_FILTER_ON;
        __osViNext->features &= ~VI_CTRL_ANTIALIAS_MASK;
    }
    if (func & OS_VI_DITHER_FILTER_OFF) {
        // If the dither filter is disabled, use the anti-alias mode from the current OSViMode.
        __osViNext->features &= ~VI_CTRL_DITHER_FILTER_ON;
        __osViNext->features |= __osViNext->modep->comRegs.ctrl & VI_CTRL_ANTIALIAS_MASK;
    }

    __osViNext->state |= VI_STATE_CTRL_SET;

    __osRestoreInt(prevInt);
}
