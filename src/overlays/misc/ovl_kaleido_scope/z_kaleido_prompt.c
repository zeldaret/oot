#include "z_kaleido_scope.h"

static s16 sKaleidoPromptCursorAlphaVals[] = { 100, 255 };

void KaleidoScope_UpdatePrompt(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;
    Input* input = &play->state.input[0];
    s8 stickAdjX = input->rel.stick_x;
    s16 step;

    if (((pauseCtx->state == PAUSE_STATE_SAVE_PROMPT) &&
         (pauseCtx->savePromptState == PAUSE_SAVE_PROMPT_STATE_WAIT_CHOICE)) ||
        (pauseCtx->state == PAUSE_STATE_GAME_OVER_SAVE_PROMPT) ||
        (pauseCtx->state == PAUSE_STATE_GAME_OVER_CONTINUE_PROMPT)) {

        if ((pauseCtx->promptChoice == 0) && (stickAdjX >= 30)) {
            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            pauseCtx->promptChoice = 4;
        } else if ((pauseCtx->promptChoice != 0) && (stickAdjX <= -30)) {
            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            pauseCtx->promptChoice = 0;
        }

        step = ABS(R_KALEIDO_PROMPT_CURSOR_ALPHA - sKaleidoPromptCursorAlphaVals[R_KALEIDO_PROMPT_CURSOR_ALPHA_STATE]) /
               R_KALEIDO_PROMPT_CURSOR_ALPHA_TIMER;
        if (R_KALEIDO_PROMPT_CURSOR_ALPHA >= sKaleidoPromptCursorAlphaVals[R_KALEIDO_PROMPT_CURSOR_ALPHA_STATE]) {
            R_KALEIDO_PROMPT_CURSOR_ALPHA -= step;
        } else {
            R_KALEIDO_PROMPT_CURSOR_ALPHA += step;
        }

        R_KALEIDO_PROMPT_CURSOR_ALPHA_TIMER--;
        if (R_KALEIDO_PROMPT_CURSOR_ALPHA_TIMER == 0) {
            R_KALEIDO_PROMPT_CURSOR_ALPHA = sKaleidoPromptCursorAlphaVals[R_KALEIDO_PROMPT_CURSOR_ALPHA_STATE];
            R_KALEIDO_PROMPT_CURSOR_ALPHA_TIMER =
                R_KALEIDO_PROMPT_CURSOR_ALPHA_TIMER_BASE + R_KALEIDO_PROMPT_CURSOR_ALPHA_STATE;
            R_KALEIDO_PROMPT_CURSOR_ALPHA_STATE ^= 1;
        }
    }
}
