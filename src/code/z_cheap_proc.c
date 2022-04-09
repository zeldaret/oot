#include "global.h"

void Gfx_DrawDListOpa(GlobalContext* globalCtx, Gfx* dlist) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_cheap_proc.c", 214);

    Gfx_SetupDL25Opa(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_cheap_proc.c", 216),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, dlist);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_cheap_proc.c", 219);
}

void Gfx_DrawDListXlu(GlobalContext* globalCtx, Gfx* dlist) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_cheap_proc.c", 228);

    Gfx_SetupDL25Xlu(globalCtx->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_cheap_proc.c", 230),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, dlist);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_cheap_proc.c", 233);
}
