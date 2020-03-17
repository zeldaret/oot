#include <ultra64.h>
#include <global.h>
#include <vt.h>

void func_80092320(PreNMIContext* prenmiCtx)
{
    prenmiCtx->state.running = false;
    prenmiCtx->state.init = NULL;
    prenmiCtx->state.size = 0;
}

void PreNMI_Update(PreNMIContext* prenmiCtx)
{
    osSyncPrintf(VT_COL(YELLOW, BLACK) "prenmi_move\n" VT_RST);

    // Strings existing only in rodata
    ("../z_prenmi.c");
    ("(int)volume = %d\n");

    if (prenmiCtx->timer == 0)
    {
        ViConfig_UpdateVi(1);
        func_80092320(prenmiCtx);
        return;
    }

    prenmiCtx->timer--;
}

void PreNMI_Draw(PreNMIContext* prenmiCtx)
{
    GraphicsContext* gfxCtx = prenmiCtx->state.gfxCtx;
    Gfx* gfxArr[5];

    osSyncPrintf(VT_COL(YELLOW, BLACK) "prenmi_draw\n" VT_RST);

    func_800C6AC4(gfxArr, gfxCtx, "../z_prenmi.c", 96);

    gSPSegment(gfxCtx->polyOpa.p++, 0x00, NULL);
    func_80095248(gfxCtx, 0, 0, 0);
    func_800940B0(gfxCtx);
    gDPSetFillColor(gfxCtx->polyOpa.p++, -1);
    gDPFillRectangle(gfxCtx->polyOpa.p++, 0, prenmiCtx->timer + 100, 319, prenmiCtx->timer + 100);

    func_800C6B54(gfxArr, gfxCtx, "../z_prenmi.c", 112);
}

void PreNMI_Main(PreNMIContext* prenmiCtx)
{
    PreNMI_Update(prenmiCtx);
    PreNMI_Draw(prenmiCtx);

    prenmiCtx->state.unk_A0 = 1;
}

void PreNMI_Destroy(PreNMIContext* prenmiCtx)
{

}

void PreNMI_Init(PreNMIContext* prenmiCtx)
{
    prenmiCtx->state.main = PreNMI_Main;
    prenmiCtx->state.destroy = PreNMI_Destroy;
    prenmiCtx->timer = 30;
    prenmiCtx->unk_A8 = 10;

    R_UPDATE_RATE = 1;
}
