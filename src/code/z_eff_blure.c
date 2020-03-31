#include <ultra64.h>
#include <global.h>

#pragma GLOBAL_ASM("asm/non_matchings/code/z_eff_blure/func_8001FDF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_eff_blure/func_80020184.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_eff_blure/func_800208E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_eff_blure/func_80020A50.s")

void func_80020F60(u32 unused, GraphicsContext* gfxCtx) {
    Gfx* gfxArr[5];

    func_800C6AC4(gfxArr, gfxCtx, D_80135180, 809);

    gfxCtx->polyXlu.p = Gfx_CallSetupDL(gfxCtx->polyXlu.p, 0x26);

    func_800C6B54(gfxArr, gfxCtx, D_80135194, 813);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/z_eff_blure/func_80020FC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_eff_blure/func_800214D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_eff_blure/func_80021F00.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_eff_blure/func_800224F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/z_eff_blure/func_80022A10.s")
