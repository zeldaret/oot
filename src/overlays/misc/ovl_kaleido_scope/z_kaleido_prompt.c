#include "z_kaleido_scope.h"

static s16 D_8082A6E0[] = { 100, 255 };

void KaleidoScope_UpdatePrompt(GlobalContext* globalCtx) {
    PauseContext* pauseCtx = &globalCtx->pauseCtx;
    Input* input = &globalCtx->state.input[0];
    s8 relStickX = input->rel.stick_x;
    s16 step;

    if (((pauseCtx->state == 7) && (pauseCtx->unk_1EC == 1)) || (pauseCtx->state == 0xE) || (pauseCtx->state == 0x10)) {
        if ((pauseCtx->promptChoice == 0) && (relStickX >= 30)) {
            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxPosScreenCenter, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            pauseCtx->promptChoice = 4;
        } else if ((pauseCtx->promptChoice != 0) && (relStickX <= -30)) {
            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxPosScreenCenter, 4, &gSfxDefaultFreqAndVolScale,
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
