#include "global.h"

s32 D_8012CED0 = 0;

s32 sShrinkWindowVal = 0;
s32 sShrinkWindowCurrentVal = 0;

void ShrinkWindow_SetVal(s32 value) {
    if (HREG(80) == HREG_MODE_LETTERBOX && R_LETTERBOX_ENABLE_LOGS == 1) {
        osSyncPrintf("shrink_window_setval(%d)\n", value);
    }
    sShrinkWindowVal = value;
}

u32 ShrinkWindow_GetVal(void) {
    return sShrinkWindowVal;
}

void ShrinkWindow_SetCurrentVal(s32 currentVal) {
    if (HREG(80) == HREG_MODE_LETTERBOX && R_LETTERBOX_ENABLE_LOGS == 1) {
        osSyncPrintf("shrink_window_setnowval(%d)\n", currentVal);
    }
    sShrinkWindowCurrentVal = currentVal;
}

u32 ShrinkWindow_GetCurrentVal(void) {
    return sShrinkWindowCurrentVal;
}

void ShrinkWindow_Init(void) {
    if (HREG(80) == HREG_MODE_LETTERBOX && R_LETTERBOX_ENABLE_LOGS == 1) {
        osSyncPrintf("shrink_window_init()\n");
    }
    D_8012CED0 = 0;
    sShrinkWindowVal = 0;
    sShrinkWindowCurrentVal = 0;
}

void ShrinkWindow_Destroy(void) {
    if (HREG(80) == HREG_MODE_LETTERBOX && R_LETTERBOX_ENABLE_LOGS == 1) {
        osSyncPrintf("shrink_window_cleanup()\n");
    }
    sShrinkWindowCurrentVal = 0;
}

void ShrinkWindow_Update(s32 updateRate) {
    s32 step;

    if (updateRate == 3) {
        step = 10;
    } else {
        step = 30 / updateRate;
    }

    if (sShrinkWindowCurrentVal < sShrinkWindowVal) {
        if (D_8012CED0 != 1) {
            D_8012CED0 = 1;
        }

        if (sShrinkWindowCurrentVal + step < sShrinkWindowVal) {
            sShrinkWindowCurrentVal += step;
        } else {
            sShrinkWindowCurrentVal = sShrinkWindowVal;
        }
    } else if (sShrinkWindowVal < sShrinkWindowCurrentVal) {
        if (D_8012CED0 != 2) {
            D_8012CED0 = 2;
        }

        if (sShrinkWindowVal < sShrinkWindowCurrentVal - step) {
            sShrinkWindowCurrentVal -= step;
        } else {
            sShrinkWindowCurrentVal = sShrinkWindowVal;
        }
    } else {
        D_8012CED0 = 0;
    }

    if (R_HREG_MODE == HREG_MODE_LETTERBOX) {
        if (R_LETTERBOX_INIT != HREG_MODE_LETTERBOX) {
            R_LETTERBOX_INIT = HREG_MODE_LETTERBOX;
            R_LETTERBOX_ENABLE_LOGS = 0;
            HREG(82) = 0; // this reg is not used in this mode
            R_LETTERBOX_STATE = 0;
            R_LETTERBOX_SIZE = 0;
            R_LETTERBOX_TARGET_SIZE = 0;

            // these regs are not used in this mode
            HREG(86) = 0;
            HREG(87) = 0;
            HREG(88) = 0;
            HREG(89) = 0;
        }
        
        R_LETTERBOX_STATE = D_8012CED0;
        R_LETTERBOX_SIZE = sShrinkWindowCurrentVal;
        R_LETTERBOX_TARGET_SIZE = sShrinkWindowVal;
        R_LETTERBOX_STEP = step;
    }
}
