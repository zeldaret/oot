#include "gfx.h"
#include "gfx_setupdl.h"
#include "sys_matrix.h"
#include "play_state.h"

void Gfx_DrawDListOpa(PlayState* play, Gfx* dlist) {
    OPEN_DISPS(play->state.gfxCtx, "../z_cheap_proc.c", 214);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_cheap_proc.c", 216);
    gSPDisplayList(POLY_OPA_DISP++, dlist);

    CLOSE_DISPS(play->state.gfxCtx, "../z_cheap_proc.c", 219);
}

void Gfx_DrawDListXlu(PlayState* play, Gfx* dlist) {
    OPEN_DISPS(play->state.gfxCtx, "../z_cheap_proc.c", 228);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_cheap_proc.c", 230);
    gSPDisplayList(POLY_XLU_DISP++, dlist);

    CLOSE_DISPS(play->state.gfxCtx, "../z_cheap_proc.c", 233);
}
