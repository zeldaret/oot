#include "global.h"

typedef enum {
    /* 0 */ LETTERBOX_STATE_IDLE,
    /* 1 */ LETTERBOX_STATE_GROWING,
    /* 2 */ LETTERBOX_STATE_SHRINKING
} LetterboxState;

s32 sLetterboxState = LETTERBOX_STATE_IDLE;

s32 sLetterboxSizeTarget = 0;
s32 sLetterboxSize = 0;

void Letterbox_SetSizeTarget(s32 target) {
    if (R_HREG_MODE == HREG_MODE_LETTERBOX && R_LETTERBOX_ENABLE_LOGS == 1) {
        osSyncPrintf("shrink_window_setval(%d)\n", target);
    }

    sLetterboxSizeTarget = target;
}

u32 Letterbox_GetSizeTarget(void) {
    return sLetterboxSizeTarget;
}

void Letterbox_SetSize(s32 size) {
    if (R_HREG_MODE == HREG_MODE_LETTERBOX && R_LETTERBOX_ENABLE_LOGS == 1) {
        osSyncPrintf("shrink_window_setnowval(%d)\n", size);
    }

    sLetterboxSize = size;
}

u32 Letterbox_GetSize(void) {
    return sLetterboxSize;
}

void Letterbox_Init(void) {
    if (R_HREG_MODE == HREG_MODE_LETTERBOX && R_LETTERBOX_ENABLE_LOGS == 1) {
        osSyncPrintf("shrink_window_init()\n");
    }

    sLetterboxState = LETTERBOX_STATE_IDLE;
    sLetterboxSizeTarget = 0;
    sLetterboxSize = 0;
}

void Letterbox_Destroy(void) {
    if (R_HREG_MODE == HREG_MODE_LETTERBOX && R_LETTERBOX_ENABLE_LOGS == 1) {
        osSyncPrintf("shrink_window_cleanup()\n");
    }

    sLetterboxSize = 0;
}

void Letterbox_Update(s32 updateRate) {
    s32 step;

    if (updateRate == 3) {
        step = 10;
    } else {
        step = 30 / updateRate;
    }

    if (sLetterboxSize < sLetterboxSizeTarget) {
        if (sLetterboxState != LETTERBOX_STATE_GROWING) {
            sLetterboxState = LETTERBOX_STATE_GROWING;
        }

        if (sLetterboxSize + step < sLetterboxSizeTarget) {
            sLetterboxSize += step;
        } else {
            sLetterboxSize = sLetterboxSizeTarget;
        }
    } else if (sLetterboxSizeTarget < sLetterboxSize) {
        if (sLetterboxState != LETTERBOX_STATE_SHRINKING) {
            sLetterboxState = LETTERBOX_STATE_SHRINKING;
        }

        if (sLetterboxSizeTarget < sLetterboxSize - step) {
            sLetterboxSize -= step;
        } else {
            sLetterboxSize = sLetterboxSizeTarget;
        }
    } else {
        sLetterboxState = LETTERBOX_STATE_IDLE;
    }

    if (R_HREG_MODE == HREG_MODE_LETTERBOX) {
        if (R_LETTERBOX_INIT != HREG_MODE_LETTERBOX) {
            R_LETTERBOX_INIT = HREG_MODE_LETTERBOX;
            R_LETTERBOX_ENABLE_LOGS = 0;
            HREG(82) = 0; // this reg is not used in this mode
            R_LETTERBOX_STATE = 0;
            R_LETTERBOX_SIZE = 0;
            R_LETTERBOX_TARGET_SIZE = 0;
            R_LETTERBOX_STEP = 0;

            // these regs are not used in this mode
            HREG(87) = 0;
            HREG(88) = 0;
            HREG(89) = 0;
        }

        R_LETTERBOX_STATE = sLetterboxState;
        R_LETTERBOX_SIZE = sLetterboxSize;
        R_LETTERBOX_TARGET_SIZE = sLetterboxSizeTarget;
        R_LETTERBOX_STEP = step;
    }
}
