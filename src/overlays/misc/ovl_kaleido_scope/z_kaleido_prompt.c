#include "z_kaleido_scope.h"

static s16 D_8082A6E0[] = { 100, 255 };

void KaleidoScope_UpdatePrompt(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;
    Input* input = &play->state.input[0];
    s8 relStickX = input->rel.stick_x;
    s16 step;

    if (((pauseCtx->state == PAUSECTX_STATE_7_SAVE_PROMPT_) && (pauseCtx->unk_1EC == PAUSECTX_UNK_1EC_1)) ||
        (pauseCtx->state == PAUSECTX_STATE_14) || (pauseCtx->state == PAUSECTX_STATE_16)) {
        if ((pauseCtx->promptChoice == 0) && (relStickX >= 30)) {
            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            pauseCtx->promptChoice = 4;
        } else if ((pauseCtx->promptChoice != 0) && (relStickX <= -30)) {
            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            pauseCtx->promptChoice = 0;
        }

        step = ABS(VREG(61) - D_8082A6E0[VREG(62)]) / VREG(63);
        if (VREG(61) >= D_8082A6E0[VREG(62)]) {
            VREG(61) -= step;
        } else {
            VREG(61) += step;
        }

        VREG(63)--;
        if (VREG(63) == 0) {
            VREG(61) = D_8082A6E0[VREG(62)];
            VREG(63) = VREG(60) + VREG(62);
            VREG(62) ^= 1;
        }
    }
}
