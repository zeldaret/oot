/*
 * File: z_title.c
 * Overlay: ovl_title
 * Description: Displays the Nintendo Logo
 */

#include "global.h"
#include "alloca.h"
#include "assets/textures/nintendo_rogo_static/nintendo_rogo_static.h"

void ConsoleLogo_PrintBuildInfo(Gfx** gfxp) {
    Gfx* g;
    GfxPrint* printer;

    g = *gfxp;
    g = Gfx_SetupDL_28(g);
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
void ConsoleLogo_Calc(ConsoleLogoState* this) {
    this->exit = true;
}

void ConsoleLogo_SetupView(ConsoleLogoState* this, f32 x, f32 y, f32 z) {
    View* view = &this->view;
    Vec3f eye;
    Vec3f lookAt;
    Vec3f up;

    eye.x = x;
    eye.y = y;
    eye.z = z;
    up.x = up.z = 0.0f;
    lookAt.x = lookAt.y = lookAt.z = 0.0f;
    up.y = 1.0f;

    View_SetPerspective(view, 30.0f, 10.0f, 12800.0f);
    View_LookAt(view, &eye, &lookAt, &up);
    View_Apply(view, VIEW_ALL);
}

void ConsoleLogo_Draw(ConsoleLogoState* this) {
    static s16 sTitleRotY = 0;
    static Lights1 sTitleLights = gdSPDefLights1(100, 100, 100, 255, 255, 255, 69, 69, 69);

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
    gSPSetLights1(POLY_OPA_DISP++, sTitleLights);
    ConsoleLogo_SetupView(this, 0, 150.0, 300.0);
    Gfx_SetupDL_25Opa(this->state.gfxCtx);
    Matrix_Translate(-53.0, -5.0, 0, MTXMODE_NEW);
    Matrix_Scale(1.0, 1.0, 1.0, MTXMODE_APPLY);
    Matrix_RotateZYX(0, sTitleRotY, 0, MTXMODE_APPLY);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(this->state.gfxCtx, "../z_title.c", 424), G_MTX_LOAD);
    gSPDisplayList(POLY_OPA_DISP++, gNintendo64LogoDL);
    Gfx_SetupDL_39Opa(this->state.gfxCtx);
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCycleType(POLY_OPA_DISP++, G_CYC_2CYCLE);
    gDPSetRenderMode(POLY_OPA_DISP++, G_RM_XLU_SURF2, G_RM_OPA_CI | CVG_DST_WRAP);
    gDPSetCombineLERP(POLY_OPA_DISP++, TEXEL1, PRIMITIVE, ENV_ALPHA, TEXEL0, 0, 0, 0, TEXEL0, PRIMITIVE, ENVIRONMENT,
                      COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 170, 255, 255, 255);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 255, 128);

    gDPLoadMultiBlock(POLY_OPA_DISP++, nintendo_rogo_static_Tex_001800, 0x100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0,
                      G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 11);

    for (idx = 0, y = 94; idx < 16; idx++, y += 2) {
        gDPLoadTextureBlock(POLY_OPA_DISP++, &((u8*)nintendo_rogo_static_Tex_000000)[0x180 * idx], G_IM_FMT_I,
                            G_IM_SIZ_8b, 192, 2, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                            G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        gDPSetTileSize(POLY_OPA_DISP++, 1, this->uls, (this->ult & 0x7F) - idx * 4, 0, 0);
        gSPTextureRectangle(POLY_OPA_DISP++, 97 << 2, y << 2, 289 << 2, (y + 2) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10,
                            1 << 10);
    }

    Environment_FillScreen(this->state.gfxCtx, 0, 0, 0, (s16)this->coverAlpha, FILL_SCREEN_XLU);

    sTitleRotY += 300;

    CLOSE_DISPS(this->state.gfxCtx, "../z_title.c", 483);
}

void ConsoleLogo_Main(GameState* thisx) {
    ConsoleLogoState* this = (ConsoleLogoState*)thisx;

    OPEN_DISPS(this->state.gfxCtx, "../z_title.c", 494);

    gSPSegment(POLY_OPA_DISP++, 0, NULL);
    gSPSegment(POLY_OPA_DISP++, 1, this->staticSegment);
    func_80095248(this->state.gfxCtx, 0, 0, 0);
    ConsoleLogo_Calc(this);
    ConsoleLogo_Draw(this);

    if (gIsCtrlr2Valid) {
        Gfx* gfx = POLY_OPA_DISP;
        s32 pad;

        ConsoleLogo_PrintBuildInfo(&gfx);
        POLY_OPA_DISP = gfx;
    }

    if (this->exit) {
        gSaveContext.seqId = (u8)NA_BGM_DISABLED;
        gSaveContext.natureAmbienceId = 0xFF;
        gSaveContext.gameMode = 1;
        this->state.running = false;
        SET_NEXT_GAMESTATE(&this->state, TitleSetup_Init, TitleSetupState);
    }

    CLOSE_DISPS(this->state.gfxCtx, "../z_title.c", 541);
}

void ConsoleLogo_Destroy(GameState* thisx) {
    ConsoleLogoState* this = (ConsoleLogoState*)thisx;

    Sram_InitSram(&this->state, &this->sramCtx);
}

void ConsoleLogo_Init(GameState* thisx) {
    u32 size = (u32)_nintendo_rogo_staticSegmentRomEnd - (u32)_nintendo_rogo_staticSegmentRomStart;
    ConsoleLogoState* this = (ConsoleLogoState*)thisx;

    this->staticSegment = GameState_Alloc(&this->state, size, "../z_title.c", 611);
    osSyncPrintf("z_title.c\n");
    ASSERT(this->staticSegment != NULL, "this->staticSegment != NULL", "../z_title.c", 614);
    DmaMgr_SendRequest1(this->staticSegment, (u32)_nintendo_rogo_staticSegmentRomStart, size, "../z_title.c", 615);
    R_UPDATE_RATE = 1;
    Matrix_Init(&this->state);
    View_Init(&this->view, this->state.gfxCtx);
    this->state.main = ConsoleLogo_Main;
    this->state.destroy = ConsoleLogo_Destroy;
    this->exit = false;
    gSaveContext.fileNum = 0xFF;
    Sram_Alloc(&this->state, &this->sramCtx);
    this->ult = 0;
    this->unk_1D4 = 0x14;
    this->coverAlpha = 255;
    this->addAlpha = -3;
    this->visibleDuration = 0x3C;
}
