#include <global.h>

s32 D_8012CED0 = 0;

s32 sShrinkWindowVal = 0;

s32 sShrinkWindowNowVal = 0;

void ShrinkWindow_SetVal(s32 value) {

    if (HREG(80) == 0x13 && HREG(81) == 1) {
        osSyncPrintf("shrink_window_setval(%d)\n", value);
    }
    sShrinkWindowVal = value;
}

u32 ShrinkWindow_GetVal(void) {
    return sShrinkWindowVal;
}

void ShrinkWindow_SetNowVal(s32 nowVal) {
    if (HREG(80) == 0x13 && HREG(81) == 1) {
        osSyncPrintf("shrink_window_setnowval(%d)\n", nowVal);
    }
    sShrinkWindowNowVal = nowVal;
}

u32 ShrinkWindow_GetNowVal(void) {
    return sShrinkWindowNowVal;
}

void ShrinkWindow_Init(void) {
    if (HREG(80) == 0x13 && HREG(81) == 1) {
        osSyncPrintf("shrink_window_init()\n");
    }
    D_8012CED0 = 0;
    sShrinkWindowVal = 0;
    sShrinkWindowNowVal = 0;
}

void ShrinkWindow_Destroy(void) {
    if (HREG(80) == 0x13 && HREG(81) == 1) {
        osSyncPrintf("shrink_window_cleanup()\n");
    }
    sShrinkWindowNowVal = 0;
}

void ShrinkWindow_Update(s32 updateRate) {
    s32 off;

    if (updateRate == 3) {
        off = 10;
    } else {
        off = 30 / updateRate;
    }

    if (sShrinkWindowNowVal < sShrinkWindowVal) {
        if (D_8012CED0 != 1) {
            D_8012CED0 = 1;
        }

        if (sShrinkWindowNowVal + off < sShrinkWindowVal) {
            sShrinkWindowNowVal += off;
        } else {
            sShrinkWindowNowVal = sShrinkWindowVal;
        }
    } else  if (sShrinkWindowVal < sShrinkWindowNowVal) {
        if (D_8012CED0 != 2) {
            D_8012CED0 = 2;
        }

        if (sShrinkWindowVal < sShrinkWindowNowVal - off) {
            sShrinkWindowNowVal -= off;
        } else {
            sShrinkWindowNowVal = sShrinkWindowVal;
        }
    } else {
        D_8012CED0 = 0;
    }

    if (HREG(80) == 0x13) {
        if (HREG(94) != 0x13) {
            HREG(94) = 0x13;
            HREG(81) = 0;
            HREG(82) = 0;
            HREG(83) = 0;
            HREG(84) = 0;
            HREG(85) = 0;
            HREG(86) = 0;
            HREG(87) = 0;
            HREG(88) = 0;
            HREG(89) = 0;
        }
        HREG(83) = D_8012CED0;
        HREG(84) = sShrinkWindowNowVal;
        HREG(85) = sShrinkWindowVal;
        HREG(86) = off;
    }
}
