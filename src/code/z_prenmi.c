#include "gfx.h"
#include "gfx_setupdl.h"
#include "prenmi_state.h"
#include "printf.h"
#include "regs.h"
#include "terminal.h"
#include "versions.h"
#include "vi_mode.h"

void func_80092320(PreNMIState* this) {
    this->state.running = false;
    this->state.init = NULL;
    this->state.size = 0;
}

void PreNMI_Update(PreNMIState* this) {
    PRINTF(VT_COL(YELLOW, BLACK) "prenmi_move\n" VT_RST);

    // Strings existing only in rodata
    if (0) {
        PRINTF("../z_prenmi.c");
        PRINTF("(int)volume = %d\n");
    }

    if (this->timer == 0) {
#if OOT_VERSION < PAL_1_0
        osViSetYScale(1.0f);
        osViBlack(true);
#else
        ViConfig_UpdateVi(true);
#endif
        func_80092320(this);
        return;
    }

    this->timer--;
}

void PreNMI_Draw(PreNMIState* this) {
    GraphicsContext* gfxCtx = this->state.gfxCtx;

    PRINTF(VT_COL(YELLOW, BLACK) "prenmi_draw\n" VT_RST);

    OPEN_DISPS(gfxCtx, "../z_prenmi.c", 96);

    gSPSegment(POLY_OPA_DISP++, 0x00, NULL);
    Gfx_SetupFrame(gfxCtx, 0, 0, 0);
    Gfx_SetupDL_36Opa(gfxCtx);
    gDPSetFillColor(POLY_OPA_DISP++, (GPACK_RGBA5551(255, 255, 255, 1) << 16) | GPACK_RGBA5551(255, 255, 255, 1));
    gDPFillRectangle(POLY_OPA_DISP++, 0, this->timer + 100, SCREEN_WIDTH - 1, this->timer + 100);

    CLOSE_DISPS(gfxCtx, "../z_prenmi.c", 112);
}

void PreNMI_Main(GameState* thisx) {
    PreNMIState* this = (PreNMIState*)thisx;

    PreNMI_Update(this);
    PreNMI_Draw(this);

    this->state.inPreNMIState = true;
}

void PreNMI_Destroy(GameState* thisx) {
}

void PreNMI_Init(GameState* thisx) {
    PreNMIState* this = (PreNMIState*)thisx;

    this->state.main = PreNMI_Main;
    this->state.destroy = PreNMI_Destroy;
    this->timer = 30;
    this->unk_A8 = 10;

    R_UPDATE_RATE = 1;
}
