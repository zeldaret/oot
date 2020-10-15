#include "global.h"

s16 sKaleidoSetupKscpPos0[] = {
    2,
    3,
    0,
    1,
};
f32 sKaleidoSetupEyeX0[] = {
    0.0f,
    64.0f,
    0.0f,
    -64.0f,
};
f32 sKaleidoSetupEyeZ0[] = {
    -64.0f,
    0.0f,
    64.0f,
    0.0f,
};

s16 sKaleidoSetupKscpPos1[] = {
    1,
    2,
    3,
    0,
};
f32 sKaleidoSetupEyeX1[] = {
    -64.0f,
    0.0f,
    64.0f,
    0.0f,
};
f32 sKaleidoSetupEyeZ1[] = {
    0.0f,
    -64.0f,
    0.0f,
    64.0f,
};

void KaleidoSetup_Update(GlobalContext* globalCtx) {
    PauseContext* pauseCtx = &globalCtx->pauseCtx;
    Input* input = &globalCtx->state.input[0];

    if (pauseCtx->state == 0 && pauseCtx->flag == 0 && globalCtx->unk_10A20 == 0 && globalCtx->sceneLoadFlag == 0 &&
        globalCtx->transitionMode == 0 && gSaveContext.cutsceneIndex < 0xFFF0 &&
        gSaveContext.nextCutsceneIndex < 0xFFF0 && !Gameplay_InCsMode(globalCtx) && globalCtx->unk_11E5C < 2 &&
        gSaveContext.unk_13F0 != 8 && gSaveContext.unk_13F0 != 9 &&
        (globalCtx->sceneNum != SCENE_BOWLING || !Flags_GetSwitch(globalCtx, 0x38))) {

        if (CHECK_BTN_ALL(input->cur.button, BTN_L) && CHECK_BTN_ALL(input->press.button, BTN_CUP)) {
            if (BREG(0)) {
                pauseCtx->flag = 3;
            }
        } else if (CHECK_BTN_ALL(input->press.button, BTN_START)) {
            gSaveContext.unk_13EE = gSaveContext.unk_13EA;
            WREG(16) = -0xAF;
            WREG(17) = 0x9B;
            pauseCtx->unk_1EA = 0;
            pauseCtx->unk_1E4 = 1;
            if (ZREG(48) == 0) {
                pauseCtx->eye.x = sKaleidoSetupEyeX0[pauseCtx->kscpPos];
                pauseCtx->eye.z = sKaleidoSetupEyeZ0[pauseCtx->kscpPos];
                pauseCtx->kscpPos = sKaleidoSetupKscpPos0[pauseCtx->kscpPos];
            } else {
                pauseCtx->eye.x = sKaleidoSetupEyeX1[pauseCtx->kscpPos];
                pauseCtx->eye.z = sKaleidoSetupEyeZ1[pauseCtx->kscpPos];
                pauseCtx->kscpPos = sKaleidoSetupKscpPos1[pauseCtx->kscpPos];
            }

            pauseCtx->mode = (u16)(pauseCtx->kscpPos * 2) + 1; // cast required
            pauseCtx->state = 1;
            osSyncPrintf("Ｍｏｄｅ=%d  eye.x=%f,  eye.z=%f  kscp_pos=%d\n", pauseCtx->mode, pauseCtx->eye.x,
                         pauseCtx->eye.z, pauseCtx->kscpPos);
        }

        if (pauseCtx->state == 1) {
            WREG(2) = -0x1860;
            R_UPDATE_RATE = 2;
            if (ShrinkWindow_GetVal()) {
                ShrinkWindow_SetVal(0);
            }
            func_800F64E0(1);
        }
    }
}

#ifdef NON_MATCHING
// regalloc differences
void KaleidoSetup_Init(GlobalContext* globalCtx) {
    PauseContext* pauseCtx = &globalCtx->pauseCtx;

    pauseCtx->state = 0;
    pauseCtx->flag = 0;
    pauseCtx->unk_208 = 0;
    pauseCtx->unk_1EA = 0;
    pauseCtx->unk_1E4 = 0;
    pauseCtx->mode = 0;
    pauseCtx->kscpPos = 0;
    pauseCtx->unk_218 = 0;
    pauseCtx->unk_1F4 = 160.0f;
    pauseCtx->unk_1F8 = 160.0f;
    pauseCtx->unk_1FC = 160.0f;
    pauseCtx->unk_200 = 160.0f;
    pauseCtx->eye.z = 64.0f;
    pauseCtx->unk_1F0 = 936.0f;
    pauseCtx->eye.x = pauseCtx->eye.y = 0.0f;
    pauseCtx->unk_204 = -314.0f;
    pauseCtx->unk_21A = VREG(30) + 3;
    pauseCtx->unk_21C = 0;
    pauseCtx->unk_21E = 1;
    pauseCtx->unk_220 = 10;
    pauseCtx->unk_222 = 0;
    pauseCtx->unk_22C = 0;
    pauseCtx->unk_224 = 0;
    pauseCtx->unk_22E = 0;
    pauseCtx->unk_226 = 0;
    pauseCtx->unk_230 = 0;
    pauseCtx->unk_228 = 1;
    pauseCtx->unk_232 = 0;
    pauseCtx->unk_23E = 999;
    pauseCtx->unk_240 = VREG(30) + 3;
    pauseCtx->unk_242 = 999;
    pauseCtx->unk_244 = 59;
    pauseCtx->unk_246 = 0;
    pauseCtx->unk_248 = VREG(30) + 3;
    pauseCtx->unk_24A = 0;
    pauseCtx->unk_24C = pauseCtx->unk_21E;
    pauseCtx->unk_25A = -40;
    pauseCtx->unk_25C = 0;
    pauseCtx->unk_25E = 0;
    pauseCtx->unk_260 = 4;
    pauseCtx->unk_264 = -1;
    pauseCtx->unk_238 = 0;

    View_Init(&pauseCtx->view, globalCtx->state.gfxCtx);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_kaleido_setup/KaleidoSetup_Init.s")
#endif

void KaleidoSetup_Destroy(GlobalContext* globalCtx) {
}
