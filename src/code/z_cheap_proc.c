#include <ultra64.h>
#include <global.h>

void Gfx_DrawDListOpa(GlobalContext* globalCtx, u32 dlist) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_cheap_proc.c", 214);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_cheap_proc.c", 216),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyOpa.p++, dlist);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_cheap_proc.c", 219);
}

void Gfx_DrawDListXlu(GlobalContext* globalCtx, u32 dlist) {
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_cheap_proc.c", 228);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_cheap_proc.c", 230),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(gfxCtx->polyXlu.p++, dlist);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_cheap_proc.c", 233);
}
