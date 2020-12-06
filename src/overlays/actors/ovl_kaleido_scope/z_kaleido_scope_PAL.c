#include "global.h"

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8081F1F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8081F2FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8081F334.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8081F50C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8081F6E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8081F81C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8081F87C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8081FABC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8081FB7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8081FCF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8081FE30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8082018C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80820434.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80821C10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80823548.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_808237B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80823994.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80823A0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8082409C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80825C14.s")

void KaleidoScope_Draw(GlobalContext* globalCtx) {
    Input* input = &globalCtx->state.input[0];
    PauseContext* pauseCtx = &globalCtx->pauseCtx;
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_kaleido_scope_PAL.c", 3188);

    pauseCtx->inputX = input->rel.stick_x;
    pauseCtx->inputY = input->rel.stick_y;

    gSPSegment(POLY_OPA_DISP++, 0x02, interfaceCtx->parameterSegment);
    gSPSegment(POLY_OPA_DISP++, 0x07, pauseCtx->unk_13C);
    gSPSegment(POLY_OPA_DISP++, 0x08, pauseCtx->unk_128);
    gSPSegment(POLY_OPA_DISP++, 0x09, pauseCtx->unk_12C);
    gSPSegment(POLY_OPA_DISP++, 0x0A, pauseCtx->unk_138);
    gSPSegment(POLY_OPA_DISP++, 0x0C, pauseCtx->unk_130);
    gSPSegment(POLY_OPA_DISP++, 0x0D, pauseCtx->unk_134);

    if (pauseCtx->flag == 0) {
        func_80823994(pauseCtx, pauseCtx->eye.x, pauseCtx->eye.y, pauseCtx->eye.z);
        func_800949A8(globalCtx->state.gfxCtx);
        func_8082409C(globalCtx, globalCtx->state.gfxCtx);
        func_80820434(globalCtx, globalCtx->state.gfxCtx);
        func_800949A8(globalCtx->state.gfxCtx);

        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

        func_80823994(pauseCtx, 0.0f, 0.0f, 64.0f);
        if (pauseCtx->state < 8 || 17 < pauseCtx->state) {
            func_80821C10(globalCtx);
        }
    }
    if (pauseCtx->state > 10 && pauseCtx->state <= 17) {
        func_80825C14(globalCtx);
    }
    if (pauseCtx->flag == 1 || pauseCtx->flag == 2) {
        func_808161AC(globalCtx);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_kaleido_scope_PAL.c", 3254);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8082650C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_808265BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_808267AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80826AEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80826BA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/KaleidoScope_Update.s")
