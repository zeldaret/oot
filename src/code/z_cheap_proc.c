#include "global.h"

void Gfx_DrawDListOpa(GlobalContext* globalCtx, Gfx* dlist) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_cheap_proc.c", 214);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_cheap_proc.c", 216),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(oGfxCtx->polyOpa.p++, dlist);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_cheap_proc.c", 219);
}

void Gfx_DrawDListXlu(GlobalContext* globalCtx, Gfx* dlist) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_cheap_proc.c", 228);

    func_80093D84(globalCtx->state.gfxCtx);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_cheap_proc.c", 230),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(oGfxCtx->polyXlu.p++, dlist);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_cheap_proc.c", 233);
}
