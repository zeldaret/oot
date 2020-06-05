#include <ultra64.h>
#include <global.h>

/*
 * File: z_kaleido_scope.c
 * Overlay: ovl_kaleido_scope
 * Description: Manages the pause and game over screens.
 */

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80813820.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80815CC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80815CE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80815FD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_808161AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80817D50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8081819C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80818340.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_808198A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80819E14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80819E40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80819E6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8081AD44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8081BB10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8081D398.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8081EFF0.s")

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

extern const char D_8082FD78[], D_8082FD94[];

void KaleidoScope_Draw(GlobalContext* globalCtx) {
    Input* input = &globalCtx->state.input[0];
    PauseContext* pCtx = &globalCtx->pauseCtx;
    InterfaceContext* iCtx = &globalCtx->interfaceCtx;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    /* "../z_kaleido_map_PAL.c" */
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, D_8082FD78, 3188);

    pCtx->inputX = (s16)input->rel.in.x;
    pCtx->inputY = (s16)input->rel.in.y;

    gSPSegment(gfxCtx->polyOpa.p++, 0x02, iCtx->parameterSegment);
    gSPSegment(gfxCtx->polyOpa.p++, 0x07, pCtx->unk_13C);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, pCtx->unk_128);
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, pCtx->unk_12C);
    gSPSegment(gfxCtx->polyOpa.p++, 0x0A, pCtx->unk_138);
    gSPSegment(gfxCtx->polyOpa.p++, 0x0C, pCtx->unk_130);
    gSPSegment(gfxCtx->polyOpa.p++, 0x0D, pCtx->unk_134);

    if (pCtx->flag == 0) {
        func_80823994(pCtx, pCtx->unk_1D8.x, pCtx->unk_1D8.y, pCtx->unk_1D8.z);
        func_800949A8(globalCtx->state.gfxCtx);
        func_8082409C(globalCtx, globalCtx->state.gfxCtx);
        func_80820434(globalCtx, globalCtx->state.gfxCtx);
        func_800949A8(globalCtx->state.gfxCtx);

        gDPSetCombineLERP(gfxCtx->polyOpa.p++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

        func_80823994(pCtx, 0.0f, 0.0f, 64.0f);
        if (pCtx->state < 8 || 17 < pCtx->state) {
            func_80821C10(globalCtx);
        }
    }
    if (pCtx->state > 10 && pCtx->state <= 17) {
        func_80825C14(globalCtx);
    }
    if (pCtx->flag == 1 || pCtx->flag == 2) {
        func_808161AC(globalCtx);
    }

    /* "../z_kaleido_map_PAL.c" */
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, D_8082FD94, 3254);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8082650C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_808265BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_808267AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80826AEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80826BA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/KaleidoScope_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80829960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_80829990.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_808299A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_kaleido_scope/func_8082A00C.s")
