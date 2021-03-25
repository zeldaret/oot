#include "global.h"

void FrameAdvance_Init(FrameAdvanceContext* frameAdvCtx) {
    frameAdvCtx->timer = 0;
    frameAdvCtx->enabled = false;
}

/**
 * Frame advance allows you to advance through the game one frame at a time on command.
 * To enable, hold R and press Dpad Down on the provided controller.
 * To advance a frame, hold Z and press R.
 * Holding Z and R will advance a frame every half second.
 *
 * This function returns true when frame advance is not active (game will run normally)
 */
s32 FrameAdvance_Update(FrameAdvanceContext* frameAdvCtx, Input* input) {
    if (CHECK_BTN_ALL(input->cur.button, BTN_R) && CHECK_BTN_ALL(input->press.button, BTN_DDOWN)) {
        frameAdvCtx->enabled = !frameAdvCtx->enabled;
    }

    if (!frameAdvCtx->enabled) {
        goto advance;
    }

    if (CHECK_BTN_ALL(input->cur.button, BTN_Z)) {
        if (CHECK_BTN_ALL(input->press.button, BTN_R)) {
            goto advance;
        }

        if (CHECK_BTN_ALL(input->cur.button, BTN_R)) {
            frameAdvCtx->timer++;
            if (frameAdvCtx->timer >= 9) {
                goto advance;
            }
        }
    }

    goto freeze;

advance:
    frameAdvCtx->timer = 0;
    return true;

freeze:
    return false;
}