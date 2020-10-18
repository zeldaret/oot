/*
 * File: z_title.c
 * Overlay: ovl_title
 * Description: Displays the Nintendo Logo
 */

#include "global.h"
#include "alloca.h"

extern Gfx D_01002720[];
extern u8 D_01001800[];
extern u8 D_01000000[];

void Title_PrintBuildInfo(Gfx** gfxp) {
    Gfx* g;
    GfxPrint* printer;

    g = *gfxp;
    g = func_8009411C(g);
    printer = alloca(sizeof(GfxPrint));
    GfxPrint_Init(printer);
    GfxPrint_Open(printer, g);
    GfxPrint_SetColor(printer, 255, 155, 255, 255);
    GfxPrint_SetPos(printer, 9, 21);
    GfxPrint_Printf(printer, "NOT MARIO CLUB VERSION");
    GfxPrint_SetColor(printer, 255, 255, 255, 255);
    GfxPrint_SetPos(printer, 7, 23);
    GfxPrint_Printf(printer, "[Creator:%s]", gBuildTeam);
    GfxPrint_SetPos(printer, 7, 24);
    GfxPrint_Printf(printer, "[Date:%s]", gBuildDate);
    g = GfxPrint_Close(printer);
    GfxPrint_Destroy(printer);
    *gfxp = g;
}

// Note: In other rom versions this function also updates unk_1D4, coverAlpha, addAlpha, visibleDuration to calculate
// the fade-in/fade-out + the duration of the n64 logo animation
void Title_Calc(TitleContext* this) {
    this->exit = 1;
}

void Title_SetupView(TitleContext* this, f32 x, f32 y, f32 z) {
    View* view;
    Vec3f v1;
    Vec3f v2;
    Vec3f v3;

    view = &this->view;
    v3.z = 0;
    v3.x = 0;
    v2.z = 0;
    v2.y = 0;
    v2.x = 0;
    v1.x = x;
    v1.y = y;
    v1.z = z;
    v3.y = 1.0;

    func_800AA460(view, 30.0f, 10.0f, 12800.0f);
    func_800AA358(view, &v1, &v2, &v3);
    func_800AAA50(view, 0xF);
}

void Title_Draw(TitleContext* this) {
    static s16 sTitleRotY = 0;
    static Lights1 sTitleLights = gdSPDefLights1(0x64, 0x64, 0x64, 0xFF, 0xFF, 0xFF, 0x45, 0x45, 0x45);

    u16 y;
    u16 idx;
    s32 pad1;
    Vec3f v3;
    Vec3f v1;
    Vec3f v2;
    s32 pad2[2];

    OPEN_DISPS(this->state.gfxCtx, "../z_title.c", 395);

    v3.x = 69;
    v3.y = 69;
    v3.z = 69;
    v2.x = -4949.148;
    v2.y = 4002.5417;
    v1.x = 0;
    v1.y = 0;
    v1.z = 0;
    v2.z = 1119.0837;

    func_8002EABC(&v1, &v2, &v3, this->state.gfxCtx);
    gSPSetLights1(oGfxCtx->polyOpa.p++, sTitleLights);
    Title_SetupView(this, 0, 150.0, 300.0);
    func_80093D18(this->state.gfxCtx);
    Matrix_Translate(-53.0, -5.0, 0, MTXMODE_NEW);
    Matrix_Scale(1.0, 1.0, 1.0, MTXMODE_APPLY);
    Matrix_RotateRPY(0, sTitleRotY, 0, MTXMODE_APPLY);

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(this->state.gfxCtx, "../z_title.c", 424), G_MTX_LOAD);
    gSPDisplayList(oGfxCtx->polyOpa.p++, &D_01002720);
    func_800944C4(this->state.gfxCtx);
    gDPPipeSync(oGfxCtx->polyOpa.p++);
    gDPSetCycleType(oGfxCtx->polyOpa.p++, G_CYC_2CYCLE);
    gDPSetRenderMode(oGfxCtx->polyOpa.p++, G_RM_XLU_SURF2, G_RM_OPA_CI | CVG_DST_WRAP);
    gDPSetCombineLERP(oGfxCtx->polyOpa.p++, TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, 0, 0, 0, TEXEL0, PRIMITIVE,
                      ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0);
    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 170, 255, 255, 255);
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0, 0, 255, 128);

    gDPLoadMultiBlock(oGfxCtx->polyOpa.p++, &D_01001800, 0x100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0,
                      G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 11);

    for (idx = 0, y = 94; idx < 16; idx++, y += 2) {
        gDPLoadTextureBlock(oGfxCtx->polyOpa.p++, &D_01000000[0x180 * idx], G_IM_FMT_I, G_IM_SIZ_8b, 192, 2, 0,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);

        gDPSetTileSize(oGfxCtx->polyOpa.p++, 1, this->uls, (this->ult & 0x7F) - idx * 4, 0, 0);
        gSPTextureRectangle(oGfxCtx->polyOpa.p++, 388, y << 2, 1156, (y + 2) << 2, G_TX_RENDERTILE, 0, 0, 1024, 1024);
    }

    func_8007672C(this->state.gfxCtx, 0, 0, 0, (s16)this->coverAlpha, 2);

    sTitleRotY += 300;

    CLOSE_DISPS(this->state.gfxCtx, "../z_title.c", 483);
}

void Title_Main(GameState* thisx) {
    TitleContext* this = (TitleContext*)thisx;

    OPEN_DISPS(this->state.gfxCtx, "../z_title.c", 494);

    gSPSegment(oGfxCtx->polyOpa.p++, 0, NULL);
    gSPSegment(oGfxCtx->polyOpa.p++, 1, this->staticSegment);
    func_80095248(this->state.gfxCtx, 0, 0, 0);
    Title_Calc(this);
    Title_Draw(this);

    if (D_8012DBC0) {
        Gfx* gfx = oGfxCtx->polyOpa.p;
        s32 pad;

        Title_PrintBuildInfo(&gfx);
        oGfxCtx->polyOpa.p = gfx;
    }

    if (this->exit) {
        gSaveContext.seqIndex = 0xFF;
        gSaveContext.nightSeqIndex = 0xFF;
        gSaveContext.gameMode = 1;
        this->state.running = false;
        SET_NEXT_GAMESTATE(&this->state, Opening_Init, OpeningContext);
    }

    CLOSE_DISPS(this->state.gfxCtx, "../z_title.c", 541);
}

void Title_Destroy(GameState* thisx) {
    TitleContext* this = (TitleContext*)thisx;

    Sram_InitSram(this, &this->sramCtx);
}

void Title_Init(GameState* thisx) {
    u32 size = (u32)_nintendo_rogo_staticSegmentRomEnd - (u32)_nintendo_rogo_staticSegmentRomStart;
    TitleContext* this = (TitleContext*)thisx;

    this->staticSegment = GameState_Alloc(&this->state, size, "../z_title.c", 611);
    osSyncPrintf("z_title.c\n");
    if (this->staticSegment == NULL) {
        __assert("this->staticSegment != NULL", "../z_title.c", 614);
    }
    DmaMgr_SendRequest1(this->staticSegment, (u32)_nintendo_rogo_staticSegmentRomStart, size, "../z_title.c", 615);
    R_UPDATE_RATE = 1;
    Matrix_Init(&this->state);
    View_Init(&this->view, this->state.gfxCtx);
    this->state.main = Title_Main;
    this->state.destroy = Title_Destroy;
    this->exit = false;
    gSaveContext.fileNum = 0xFF;
    Sram_Alloc(&this->state, &this->sramCtx);
    this->ult = 0;
    this->unk_1D4 = 0x14;
    this->coverAlpha = 255;
    this->addAlpha = -3;
    this->visibleDuration = 0x3C;
}
