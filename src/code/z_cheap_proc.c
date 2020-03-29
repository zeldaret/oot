#include <ultra64.h>
#include <global.h>

void Gfx_DrawDListOpa(GlobalContext* globalCtx, u32 dlist) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* gfxArr[4];

    func_800C6AC4(gfxArr, globalCtx->state.gfxCtx, "../z_cheap_proc.c", 214);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_cheap_proc.c", 216),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, dlist);

    func_800C6B54(gfxArr, globalCtx->state.gfxCtx, "../z_cheap_proc.c", 219);
}

void Gfx_DrawDListXlu(GlobalContext* globalCtx, u32 dlist) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* gfxArr[4];

    func_800C6AC4(gfxArr, globalCtx->state.gfxCtx, "../z_cheap_proc.c", 228);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_cheap_proc.c", 230),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, dlist);

    func_800C6B54(gfxArr, globalCtx->state.gfxCtx, "../z_cheap_proc.c", 233);
}
