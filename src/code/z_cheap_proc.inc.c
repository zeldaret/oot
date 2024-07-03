#include "global.h"

void Gfx_DrawDListOpa(PlayState* play, Gfx* dlist) {
    OPEN_DISPS(play->state.gfxCtx, "../z_cheap_proc.c", 214);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPMATRIX_SET_NEW(POLY_OPA_DISP++, play->state.gfxCtx, "../z_cheap_proc.c", 216);
    gSPDisplayList(POLY_OPA_DISP++, dlist);

    CLOSE_DISPS(play->state.gfxCtx, "../z_cheap_proc.c", 219);
}

void Gfx_DrawDListXlu(PlayState* play, Gfx* dlist) {
    OPEN_DISPS(play->state.gfxCtx, "../z_cheap_proc.c", 228);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPMATRIX_SET_NEW(POLY_XLU_DISP++, play->state.gfxCtx, "../z_cheap_proc.c", 230);
    gSPDisplayList(POLY_XLU_DISP++, dlist);

    CLOSE_DISPS(play->state.gfxCtx, "../z_cheap_proc.c", 233);
}
