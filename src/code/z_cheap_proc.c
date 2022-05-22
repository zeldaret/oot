#include "global.h"

void Gfx_DrawDListOpa(PlayState* play, Gfx* dlist) {
    OPEN_DISPS(play->state.gfxCtx, "../z_cheap_proc.c", 214);

    func_80093D18(play->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_cheap_proc.c", 216),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, dlist);

    CLOSE_DISPS(play->state.gfxCtx, "../z_cheap_proc.c", 219);
}

void Gfx_DrawDListXlu(PlayState* play, Gfx* dlist) {
    OPEN_DISPS(play->state.gfxCtx, "../z_cheap_proc.c", 228);

    func_80093D84(play->state.gfxCtx);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_cheap_proc.c", 230),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPDisplayList(POLY_XLU_DISP++, dlist);

    CLOSE_DISPS(play->state.gfxCtx, "../z_cheap_proc.c", 233);
}
