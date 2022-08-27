#include "z_kaleido_scope.h"
#include "assets/textures/icon_item_static/icon_item_static.h"
#include "assets/textures/icon_item_24_static/icon_item_24_static.h"
#include "assets/textures/icon_item_nes_static/icon_item_nes_static.h"
#include "assets/textures/icon_item_ger_static/icon_item_ger_static.h"
#include "assets/textures/icon_item_fra_static/icon_item_fra_static.h"
#include "assets/textures/icon_item_gameover_static/icon_item_gameover_static.h"
#include "vt.h"

static void* sEquipmentFRATexs[] = {
    gPauseEquipment00FRATex, gPauseEquipment01Tex, gPauseEquipment02Tex, gPauseEquipment03Tex, gPauseEquipment04Tex,
    gPauseEquipment10FRATex, gPauseEquipment11Tex, gPauseEquipment12Tex, gPauseEquipment13Tex, gPauseEquipment14Tex,
    gPauseEquipment20FRATex, gPauseEquipment21Tex, gPauseEquipment22Tex, gPauseEquipment23Tex, gPauseEquipment24Tex,
};
static void* sSelectItemFRATexs[] = {
    gPauseSelectItem00FRATex, gPauseSelectItem01Tex,    gPauseSelectItem02Tex,    gPauseSelectItem03Tex,
    gPauseSelectItem04Tex,    gPauseSelectItem10FRATex, gPauseSelectItem11Tex,    gPauseSelectItem12Tex,
    gPauseSelectItem13Tex,    gPauseSelectItem14Tex,    gPauseSelectItem20FRATex, gPauseSelectItem21Tex,
    gPauseSelectItem22Tex,    gPauseSelectItem23Tex,    gPauseSelectItem24Tex,
};
static void* sMapFRATexs[] = {
    gPauseMap00Tex,    gPauseMap01Tex, gPauseMap02Tex, gPauseMap03Tex, gPauseMap04Tex,
    gPauseMap10FRATex, gPauseMap11Tex, gPauseMap12Tex, gPauseMap13Tex, gPauseMap14Tex,
    gPauseMap20Tex,    gPauseMap21Tex, gPauseMap22Tex, gPauseMap23Tex, gPauseMap24Tex,
};
static void* sQuestStatusFRATexs[] = {
    gPauseQuestStatus00Tex, gPauseQuestStatus01Tex,    gPauseQuestStatus02Tex, gPauseQuestStatus03Tex,
    gPauseQuestStatus04Tex, gPauseQuestStatus10FRATex, gPauseQuestStatus11Tex, gPauseQuestStatus12Tex,
    gPauseQuestStatus13Tex, gPauseQuestStatus14Tex,    gPauseQuestStatus20Tex, gPauseQuestStatus21Tex,
    gPauseQuestStatus22Tex, gPauseQuestStatus23Tex,    gPauseQuestStatus24Tex,
};
static void* sSaveFRATexs[] = {
    gPauseSave00FRATex, gPauseSave01Tex, gPauseSave02Tex, gPauseSave03Tex, gPauseSave04Tex,
    gPauseSave10FRATex, gPauseSave11Tex, gPauseSave12Tex, gPauseSave13Tex, gPauseSave14Tex,
    gPauseSave20FRATex, gPauseSave21Tex, gPauseSave22Tex, gPauseSave23Tex, gPauseSave24Tex,
};

static void* sEquipmentGERTexs[] = {
    gPauseEquipment00GERTex, gPauseEquipment01Tex, gPauseEquipment02Tex, gPauseEquipment03Tex, gPauseEquipment04Tex,
    gPauseEquipment10GERTex, gPauseEquipment11Tex, gPauseEquipment12Tex, gPauseEquipment13Tex, gPauseEquipment14Tex,
    gPauseEquipment20GERTex, gPauseEquipment21Tex, gPauseEquipment22Tex, gPauseEquipment23Tex, gPauseEquipment24Tex,
};
static void* sSelectItemGERTexs[] = {
    gPauseSelectItem00GERTex, gPauseSelectItem01Tex,    gPauseSelectItem02Tex,    gPauseSelectItem03Tex,
    gPauseSelectItem04Tex,    gPauseSelectItem10GERTex, gPauseSelectItem11Tex,    gPauseSelectItem12Tex,
    gPauseSelectItem13Tex,    gPauseSelectItem14Tex,    gPauseSelectItem20GERTex, gPauseSelectItem21Tex,
    gPauseSelectItem22Tex,    gPauseSelectItem23Tex,    gPauseSelectItem24Tex,
};
static void* sMapGERTexs[] = {
    gPauseMap00Tex,    gPauseMap01Tex, gPauseMap02Tex, gPauseMap03Tex, gPauseMap04Tex,
    gPauseMap10GERTex, gPauseMap11Tex, gPauseMap12Tex, gPauseMap13Tex, gPauseMap14Tex,
    gPauseMap20Tex,    gPauseMap21Tex, gPauseMap22Tex, gPauseMap23Tex, gPauseMap24Tex,
};
static void* sQuestStatusGERTexs[] = {
    gPauseQuestStatus00Tex, gPauseQuestStatus01Tex,    gPauseQuestStatus02Tex, gPauseQuestStatus03Tex,
    gPauseQuestStatus04Tex, gPauseQuestStatus10GERTex, gPauseQuestStatus11Tex, gPauseQuestStatus12Tex,
    gPauseQuestStatus13Tex, gPauseQuestStatus14Tex,    gPauseQuestStatus20Tex, gPauseQuestStatus21Tex,
    gPauseQuestStatus22Tex, gPauseQuestStatus23Tex,    gPauseQuestStatus24Tex,
};
static void* sSaveGERTexs[] = {
    gPauseSave00Tex,    gPauseSave01Tex, gPauseSave02Tex, gPauseSave03Tex, gPauseSave04Tex,
    gPauseSave10GERTex, gPauseSave11Tex, gPauseSave12Tex, gPauseSave13Tex, gPauseSave14Tex,
    gPauseSave20GERTex, gPauseSave21Tex, gPauseSave22Tex, gPauseSave23Tex, gPauseSave24Tex,
};

static void* sEquipmentENGTexs[] = {
    gPauseEquipment00Tex,    gPauseEquipment01Tex, gPauseEquipment02Tex, gPauseEquipment03Tex, gPauseEquipment04Tex,
    gPauseEquipment10ENGTex, gPauseEquipment11Tex, gPauseEquipment12Tex, gPauseEquipment13Tex, gPauseEquipment14Tex,
    gPauseEquipment20Tex,    gPauseEquipment21Tex, gPauseEquipment22Tex, gPauseEquipment23Tex, gPauseEquipment24Tex,
};
static void* sSelectItemENGTexs[] = {
    gPauseSelectItem00ENGTex, gPauseSelectItem01Tex,    gPauseSelectItem02Tex,    gPauseSelectItem03Tex,
    gPauseSelectItem04Tex,    gPauseSelectItem10ENGTex, gPauseSelectItem11Tex,    gPauseSelectItem12Tex,
    gPauseSelectItem13Tex,    gPauseSelectItem14Tex,    gPauseSelectItem20ENGTex, gPauseSelectItem21Tex,
    gPauseSelectItem22Tex,    gPauseSelectItem23Tex,    gPauseSelectItem24Tex,
};
static void* sMapENGTexs[] = {
    gPauseMap00Tex,    gPauseMap01Tex, gPauseMap02Tex, gPauseMap03Tex, gPauseMap04Tex,
    gPauseMap10ENGTex, gPauseMap11Tex, gPauseMap12Tex, gPauseMap13Tex, gPauseMap14Tex,
    gPauseMap20Tex,    gPauseMap21Tex, gPauseMap22Tex, gPauseMap23Tex, gPauseMap24Tex,
};
static void* sQuestStatusENGTexs[] = {
    gPauseQuestStatus00ENGTex, gPauseQuestStatus01Tex,    gPauseQuestStatus02Tex,    gPauseQuestStatus03Tex,
    gPauseQuestStatus04Tex,    gPauseQuestStatus10ENGTex, gPauseQuestStatus11Tex,    gPauseQuestStatus12Tex,
    gPauseQuestStatus13Tex,    gPauseQuestStatus14Tex,    gPauseQuestStatus20ENGTex, gPauseQuestStatus21Tex,
    gPauseQuestStatus22Tex,    gPauseQuestStatus23Tex,    gPauseQuestStatus24Tex,
};
static void* sSaveENGTexs[] = {
    gPauseSave00Tex,    gPauseSave01Tex, gPauseSave02Tex, gPauseSave03Tex, gPauseSave04Tex,
    gPauseSave10ENGTex, gPauseSave11Tex, gPauseSave12Tex, gPauseSave13Tex, gPauseSave14Tex,
    gPauseSave20Tex,    gPauseSave21Tex, gPauseSave22Tex, gPauseSave23Tex, gPauseSave24Tex,
};

static void* sGameOverTexs[] = {
    gPauseSave00Tex,     gPauseSave01Tex, gPauseSave02Tex, gPauseSave03Tex, gPauseSave04Tex,
    gPauseGameOver10Tex, gPauseSave11Tex, gPauseSave12Tex, gPauseSave13Tex, gPauseSave14Tex,
    gPauseSave20Tex,     gPauseSave21Tex, gPauseSave22Tex, gPauseSave23Tex, gPauseSave24Tex,
};

static void* sEquipmentTexs[] = {
    sEquipmentENGTexs,
    sEquipmentGERTexs,
    sEquipmentFRATexs,
};

static void* sSelectItemTexs[] = {
    sSelectItemENGTexs,
    sSelectItemGERTexs,
    sSelectItemFRATexs,
};

static void* sMapTexs[] = {
    sMapENGTexs,
    sMapGERTexs,
    sMapFRATexs,
};

static void* sQuestStatusTexs[] = {
    sQuestStatusENGTexs,
    sQuestStatusGERTexs,
    sQuestStatusFRATexs,
};

static void* sSaveTexs[] = {
    sSaveENGTexs,
    sSaveGERTexs,
    sSaveFRATexs,
};

s16 D_8082AAEC_width_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_[] = {
    32, 112, 32, 48, 32, 32, 32, 48, 32, 64, 32, 48, 48, 48, 48, 64, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 80, 64,
};

s16 D_8082AB2C_height_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_[] = {
    24, 72, 13, 22, 19, 20, 19, 27, 14, 26, 22, 21, 49, 32, 45, 60, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 16, 32, 8,
};

static u8 D_8082AB6C[][5] = {
    { BTN_ENABLED, BTN_DISABLED, BTN_DISABLED, BTN_DISABLED, BTN_ENABLED },  // PAUSE_ITEM
    { BTN_ENABLED, BTN_ENABLED, BTN_ENABLED, BTN_ENABLED, BTN_DISABLED },    // PAUSE_MAP
    { BTN_ENABLED, BTN_DISABLED, BTN_DISABLED, BTN_DISABLED, BTN_DISABLED }, // PAUSE_QUEST
    { BTN_ENABLED, BTN_DISABLED, BTN_DISABLED, BTN_DISABLED, BTN_ENABLED },  // PAUSE_EQUIP
    { BTN_ENABLED, BTN_DISABLED, BTN_DISABLED, BTN_DISABLED, BTN_ENABLED },  // PAUSE_WORLD_MAP
    { BTN_ENABLED, BTN_ENABLED, BTN_ENABLED, BTN_ENABLED, BTN_DISABLED },
};

static s16 sColor82ABRed_D_8082AB8C = 0;
static s16 sColor82ABGreen_D_8082AB90 = 0;
static s16 sColor82ABBlue_D_8082AB94 = 0;
static s16 sColor82ABGameOverPrimAlpha_D_8082AB98 = 255;

static s16 sDrawGameOverEnvColorRed_D_8082AB9C = 255;
static s16 sDrawGameOverEnvColorGreen_D_8082ABA0 = 0;
static s16 sDrawGameOverEnvColorBlue_D_8082ABA4 = 0;

static s16 sInDungeonScene = false;

// "pt" from debug string in KaleidoScope_SwitchPage
static f32 D_8082ABAC_pageSwitch_eye_dx_[] = {
    -4.0f, // PAUSE_ITEM  pt=0
    4.0f,  // PAUSE_ITEM  pt=1
    4.0f,  // PAUSE_MAP   pt=0
    4.0f,  // PAUSE_MAP   pt=1
    4.0f,  // PAUSE_QUEST pt=0
    -4.0f, // PAUSE_QUEST pt=1
    -4.0f, // PAUSE_EQUIP pt=0
    -4.0f, // PAUSE_EQUIP pt=1
};

static f32 D_8082ABCC_pageSwitch_eye_dz_[] = {
    -4.0f, // PAUSE_ITEM  pt=0
    -4.0f, // PAUSE_ITEM  pt=1
    -4.0f, // PAUSE_MAP   pt=0
    4.0f,  // PAUSE_MAP   pt=1
    4.0f,  // PAUSE_QUEST pt=0
    4.0f,  // PAUSE_QUEST pt=1
    4.0f,  // PAUSE_EQUIP pt=0
    -4.0f, // PAUSE_EQUIP pt=1
};

static u16 D_8082ABEC_modeToNewPageIndex_[] = {
    PAUSE_MAP,   // PAUSE_ITEM  pt=0
    PAUSE_EQUIP, // PAUSE_ITEM  pt=1
    PAUSE_QUEST, // PAUSE_MAP   pt=0
    PAUSE_ITEM,  // PAUSE_MAP   pt=1
    PAUSE_EQUIP, // PAUSE_QUEST pt=0
    PAUSE_MAP,   // PAUSE_QUEST pt=1
    PAUSE_ITEM,  // PAUSE_EQUIP pt=0
    PAUSE_QUEST, // PAUSE_EQUIP pt=1
};

u8 gSlotAgeReqs[] = {
    1, 9, 9, 0, 0, 9, 1, 9, 9, 0, 0, 9, 1, 9, 1, 0, 0, 9, 9, 9, 9, 9, 0, 1,
};

u8 gEquipAgeReqs[EQUIP_TYPE_MAX][4] = {
    { 0, 1, 0, 0 },
    { 9, 1, 9, 0 },
    { 0, 9, 0, 0 },
    { 9, 9, 0, 0 },
};

u8 gItemAgeReqs[] = {
    1, 9, 9, 0, 0, 9, 1, 9, 9, 9, 0, 0, 0, 9, 1, 9, 1, 0, 0, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
    9, 9, 9, 9, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 1, 0, 0, 1, 9, 0, 9, 0, 0, 9, 0, 0, 1, 1, 1, 0, 0, 0, 9, 9, 9, 1, 0, 0, 9, 9, 0,
};

u8 gAreaGsFlags[] = {
    0x0F, 0x1F, 0x0F, 0x1F, 0x1F, 0x1F, 0x1F, 0x1F, 0x07, 0x07, 0x03,
    0x0F, 0x07, 0x0F, 0x0F, 0xFF, 0xFF, 0xFF, 0x1F, 0x0F, 0x03, 0x0F,
};

static void* sCursorTexs[] = {
    gPauseMenuCursorTopLeftTex,
    gPauseMenuCursorTopRightTex,
    gPauseMenuCursorBottomLeftTex,
    gPauseMenuCursorBottomRightTex,
};

static s16 sCursorColors[][3] = {
    { 255, 255, 255 },
    { 255, 255, 0 },
    { 0, 255, 50 },
};

static void* sSavePromptTexs[] = {
    gPauseSavePromptENGTex,
    gPauseSavePromptGERTex,
    gPauseSavePromptFRATex,
};

static void* sSaveConfirmationTexs[] = {
    gPauseSaveConfirmationENGTex,
    gPauseSaveConfirmationGERTex,
    gPauseSaveConfirmationFRATex,
};

static void* sContinuePromptTexs[] = {
    gContinuePlayingENGTex,
    gContinuePlayingGERTex,
    gContinuePlayingFRATex,
};

static void* sPromptChoiceTexs[][2] = {
    { gPauseYesENGTex, gPauseNoENGTex },
    { gPauseYesGERTex, gPauseNoGERTex },
    { gPauseYesFRATex, gPauseNoFRATex },
};

static u8 D_808321A8[5];
static PreRender sPlayerPreRender;
static void* sPreRenderCvg;

void KaleidoScope_SetupPlayerPreRender(PlayState* play) {
    Gfx* gfx;
    Gfx* gfxRef;
    void* fbuf;

    fbuf = play->state.gfxCtx->curFrameBuffer;

    OPEN_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 496);

    gfxRef = POLY_OPA_DISP;
    gfx = Graph_GfxPlusOne(gfxRef);
    gSPDisplayList(WORK_DISP++, gfx);

    PreRender_SetValues(&sPlayerPreRender, PAUSE_EQUIP_PLAYER_WIDTH, PAUSE_EQUIP_PLAYER_HEIGHT, fbuf, NULL);
    func_800C1F20(&sPlayerPreRender, &gfx);
    func_800C20B4(&sPlayerPreRender, &gfx);

    gSPEndDisplayList(gfx++);
    Graph_BranchDlist(gfxRef, gfx);
    POLY_OPA_DISP = gfx;

    SREG(33) |= 1;

    CLOSE_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 509);
}

void KaleidoScope_ProcessPlayerPreRender(void) {
    Sleep_Msec(50);
    PreRender_Calc(&sPlayerPreRender);
    PreRender_Destroy(&sPlayerPreRender);
}

Gfx* KaleidoScope_QuadTextureIA4(Gfx* gfx, void* texture, s16 width, s16 height, u16 point) {
    gDPLoadTextureBlock_4b(gfx++, texture, G_IM_FMT_IA, width, height, 0, G_TX_NOMIRROR | G_TX_WRAP,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSP1Quadrangle(gfx++, point, point + 2, point + 3, point + 1, 0);

    return gfx;
}

Gfx* KaleidoScope_QuadTextureIA8(Gfx* gfx, void* texture, s16 width, s16 height, u16 point) {
    gDPLoadTextureBlock(gfx++, texture, G_IM_FMT_IA, G_IM_SIZ_8b, width, height, 0, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSP1Quadrangle(gfx++, point, point + 2, point + 3, point + 1, 0);

    return gfx;
}

void KaleidoScope_OverridePalIndexCI4(u8* texture, s32 size, s32 targetIndex, s32 newIndex) {
    s32 i;

    targetIndex &= 0xF;
    newIndex &= 0xF;

    if ((size == 0) || (targetIndex == newIndex) || (texture == NULL)) {
        return;
    }

    for (i = 0; i < size; i++) {
        s32 index1;
        s32 index2;

        index1 = index2 = texture[i];

        index1 = (index1 >> 4) & 0xF;
        index2 = index2 & 0xF;

        if (index1 == targetIndex) {
            index1 = newIndex;
        }

        if (index2 == targetIndex) {
            index2 = newIndex;
        }

        texture[i] = (index1 << 4) | index2;
    }
}

void KaleidoScope_MoveCursorToSpecialPos(PlayState* play, u16 specialPos) {
    PauseContext* pauseCtx = &play->pauseCtx;

    pauseCtx->cursorSpecialPos = specialPos;
    pauseCtx->pageSwitchTimer = 0;

    Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultReverb);
}

void KaleidoScope_DrawQuadTextureRGBA32(GraphicsContext* gfxCtx, void* texture, u16 width, u16 height, u16 point) {
    OPEN_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 748);

    gDPLoadTextureBlock(POLY_OPA_DISP++, texture, G_IM_FMT_RGBA, G_IM_SIZ_32b, width, height, 0,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);
    gSP1Quadrangle(POLY_OPA_DISP++, point, point + 2, point + 3, point + 1, 0);

    CLOSE_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 758);
}

void KaleidoScope_SetDefaultCursor(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;
    s16 s;
    s16 i;

    switch (pauseCtx->pageIndex) {
        case PAUSE_ITEM:
            s = pauseCtx->cursorSlot[PAUSE_ITEM];
            if (gSaveContext.inventory.items[s] == ITEM_NONE) {
                i = s + 1;
                while (true) {
                    if (gSaveContext.inventory.items[i] != ITEM_NONE) {
                        break;
                    }
                    i++;
                    if (i >= 24) {
                        i = 0;
                    }
                    if (i == s) {
                        pauseCtx->cursorItem[PAUSE_ITEM] = pauseCtx->namedItem = PAUSE_ITEM_NONE;
                        return;
                    }
                }
                pauseCtx->cursorItem[PAUSE_ITEM] = gSaveContext.inventory.items[i];
                pauseCtx->cursorSlot[PAUSE_ITEM] = i;
            }
            break;
        case PAUSE_MAP:
        case PAUSE_QUEST:
        case PAUSE_EQUIP:
            break;
    }
}

void KaleidoScope_SwitchPage(PauseContext* pauseCtx, u8 pt) {
    pauseCtx->unk_1E4_ps6_ = PAUSE_S6_1;
    pauseCtx->unk_1EA = 0;

    if (!pt) { // pt == 0, scroll left
        pauseCtx->mode = pauseCtx->pageIndex * 2 + 1;
        Audio_PlaySfxGeneral(NA_SE_SY_WIN_SCROLL_LEFT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        pauseCtx->cursorSpecialPos = PAUSE_CURSOR_PAGE_RIGHT;
    } else { // pt == 2, scroll left
        pauseCtx->mode = pauseCtx->pageIndex * 2;
        Audio_PlaySfxGeneral(NA_SE_SY_WIN_SCROLL_RIGHT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        pauseCtx->cursorSpecialPos = PAUSE_CURSOR_PAGE_LEFT;
    }

    gSaveContext.buttonStatus[1] = D_8082AB6C[pauseCtx->pageIndex + pt][1];
    gSaveContext.buttonStatus[2] = D_8082AB6C[pauseCtx->pageIndex + pt][2];
    gSaveContext.buttonStatus[3] = D_8082AB6C[pauseCtx->pageIndex + pt][3];
    gSaveContext.buttonStatus[4] = D_8082AB6C[pauseCtx->pageIndex + pt][4];

    osSyncPrintf("kscope->kscp_pos+pt = %d\n", pauseCtx->pageIndex + pt);

    gSaveContext.unk_13EA = 0;
    Interface_ChangeAlpha(50);
}

void KaleidoScope_HandlePageToggles(PauseContext* pauseCtx, Input* input) {
    if ((pauseCtx->debugState == 0) && CHECK_BTN_ALL(input->press.button, BTN_L)) {
        pauseCtx->debugState = 1;
        return;
    }

    if (CHECK_BTN_ALL(input->press.button, BTN_R)) {
        KaleidoScope_SwitchPage(pauseCtx, 2);
        return;
    }

    if (CHECK_BTN_ALL(input->press.button, BTN_Z)) {
        KaleidoScope_SwitchPage(pauseCtx, 0);
        return;
    }

    if (pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) {
        if (pauseCtx->stickRelX < -30) {
            pauseCtx->pageSwitchTimer++;
            if ((pauseCtx->pageSwitchTimer >= 10) || (pauseCtx->pageSwitchTimer == 0)) {
                KaleidoScope_SwitchPage(pauseCtx, 0);
            }
        } else {
            pauseCtx->pageSwitchTimer = -1;
        }
    } else if (pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_RIGHT) {
        if (pauseCtx->stickRelX > 30) {
            pauseCtx->pageSwitchTimer++;
            if ((pauseCtx->pageSwitchTimer >= 10) || (pauseCtx->pageSwitchTimer == 0)) {
                KaleidoScope_SwitchPage(pauseCtx, 2);
            }
        } else {
            pauseCtx->pageSwitchTimer = -1;
        }
    }
}

void KaleidoScope_DrawCursor(PlayState* play, u16 pageIndex) {
    PauseContext* pauseCtx = &play->pauseCtx;
    u16 temp;

    OPEN_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 955);

    temp = pauseCtx->unk_1E4_ps6_;

    if ((((pauseCtx->unk_1E4_ps6_ == PAUSE_S6_0_IDLE_) || (temp == PAUSE_S6_8_PLAYBACK_SONG_READY_)) &&
         (pauseCtx->state == PAUSECTX_STATE_6)) ||
        ((pauseCtx->pageIndex == PAUSE_QUEST) &&
         ((temp < PAUSE_S6_3) /* PAUSE_S6_0_IDLE_, PAUSE_S6_1, PAUSE_S6_2_PLAYBACK_SONG_ */ ||
          (temp == PAUSE_S6_5_PLAYER_PLAYING_SONG_) || (temp == PAUSE_S6_8_PLAYBACK_SONG_READY_)))) {

        if (pauseCtx->pageIndex == pageIndex) {
            s16 i;
            s16 j;

            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                              PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sCursorColors[pauseCtx->cursorColorSet >> 2][0],
                            sCursorColors[pauseCtx->cursorColorSet >> 2][1],
                            sCursorColors[pauseCtx->cursorColorSet >> 2][2], 255);
            gDPSetEnvColor(POLY_OPA_DISP++, sColor82ABRed_D_8082AB8C, sColor82ABGreen_D_8082AB90,
                           sColor82ABBlue_D_8082AB94, 255);
            gSPVertex(POLY_OPA_DISP++, pauseCtx->cursorVtx, 16, 0);

            for (i = j = 0; i < 4; i++, j += 4) {
                gDPLoadTextureBlock_4b(POLY_OPA_DISP++, sCursorTexs[i], G_IM_FMT_IA, 16, 16, 0,
                                       G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                       G_TX_NOLOD, G_TX_NOLOD);
                gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);
            }
        }

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 985);
}

Gfx* KaleidoScope_DrawPageSections(Gfx* gfx, Vtx* vertices, void** textures) {
    s32 i;
    s32 j;

    gSPVertex(gfx++, vertices, 32, 0);

    i = 0;

    j = 0;
    while (j < 32) {
        gDPPipeSync(gfx++);
        gDPLoadTextureBlock(gfx++, textures[i], G_IM_FMT_IA, G_IM_SIZ_8b, 80, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(gfx++, j, j + 2, j + 3, j + 1, 0);

        j += 4;
        i++;
    }

    gSPVertex(gfx++, vertices + 32, 28, 0);

    j = 0;
    while (j < 28) {
        gDPPipeSync(gfx++);
        gDPLoadTextureBlock(gfx++, textures[i], G_IM_FMT_IA, G_IM_SIZ_8b, 80, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(gfx++, j, j + 2, j + 3, j + 1, 0);

        j += 4;
        i++;
    }

    return gfx;
}

void KaleidoScope_DrawPages(PlayState* play, GraphicsContext* gfxCtx) {
    static s16 sCursorColors_D_8082ACF4[][3] = {
        // "white" ?
        { 0, 0, 0 },
        { 0, 0, 0 },
        { 0, 0, 0 },
        { 0, 0, 0 },
        // yellow
        { 255, 255, 0 },
        { 0, 0, 0 },
        { 0, 0, 0 },
        { 255, 255, 0 },
        // green
        { 0, 255, 50 },
        { 0, 0, 0 },
        { 0, 0, 0 },
        { 0, 255, 50 },
    };
    static s16 sCursorColorBlinkTimer_D_8082AD3C = 20;
    static s16 sCursorColorBlinkOffset_D_8082AD40 = 0;
    static s16 sStickXcooldownTimer_D_8082AD44 = 0;
    static s16 sStickYcooldownTimer_D_8082AD48 = 0;
    static s16 sStickXcooldownDirection_D_8082AD4C = 0;
    static s16 sStickYcooldownDirection_D_8082AD50 = 0;
    PauseContext* pauseCtx = &play->pauseCtx;
    s16 stepR;
    s16 stepG;
    s16 stepB;

    OPEN_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 1100);

    if ((pauseCtx->state <
         PAUSECTX_STATE_8) /* PAUSECTX_STATE_0, PAUSECTX_STATE_1, PAUSECTX_STATE_2, PAUSECTX_STATE_3, PAUSECTX_STATE_4,
                              PAUSECTX_STATE_5, PAUSECTX_STATE_6, PAUSECTX_STATE_7_SAVE_PROMPT_ */
        || (pauseCtx->state >
            PAUSECTX_STATE_17) /* PAUSECTX_STATE_18_FLIP_PAGES_AND_UNPAUSE, PAUSECTX_STATE_19_UNPAUSE */) {
        if (pauseCtx->state != PAUSECTX_STATE_7_SAVE_PROMPT_) {
            stepR = ABS(sColor82ABRed_D_8082AB8C -
                        sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][0]) /
                    sCursorColorBlinkTimer_D_8082AD3C;
            stepG = ABS(sColor82ABGreen_D_8082AB90 -
                        sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][1]) /
                    sCursorColorBlinkTimer_D_8082AD3C;
            stepB = ABS(sColor82ABBlue_D_8082AB94 -
                        sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][2]) /
                    sCursorColorBlinkTimer_D_8082AD3C;
            if (sColor82ABRed_D_8082AB8C >=
                sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][0]) {
                sColor82ABRed_D_8082AB8C -= stepR;
            } else {
                sColor82ABRed_D_8082AB8C += stepR;
            }
            if (sColor82ABGreen_D_8082AB90 >=
                sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][1]) {
                sColor82ABGreen_D_8082AB90 -= stepG;
            } else {
                sColor82ABGreen_D_8082AB90 += stepG;
            }
            if (sColor82ABBlue_D_8082AB94 >=
                sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][2]) {
                sColor82ABBlue_D_8082AB94 -= stepB;
            } else {
                sColor82ABBlue_D_8082AB94 += stepB;
            }

            sCursorColorBlinkTimer_D_8082AD3C--;
            if (sCursorColorBlinkTimer_D_8082AD3C == 0) {
                sColor82ABRed_D_8082AB8C =
                    sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][0];
                sColor82ABGreen_D_8082AB90 =
                    sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][1];
                sColor82ABBlue_D_8082AB94 =
                    sCursorColors_D_8082ACF4[pauseCtx->cursorColorSet + sCursorColorBlinkOffset_D_8082AD40][2];
                sCursorColorBlinkTimer_D_8082AD3C = ZREG(28 + sCursorColorBlinkOffset_D_8082AD40);
                sCursorColorBlinkOffset_D_8082AD40++;
                if (sCursorColorBlinkOffset_D_8082AD40 >= 4) {
                    sCursorColorBlinkOffset_D_8082AD40 = 0;
                }
            }

            if (pauseCtx->stickRelX < -30) {
                if (sStickXcooldownDirection_D_8082AD4C == -1) {
                    if (--sStickXcooldownTimer_D_8082AD44 < 0) {
                        sStickXcooldownTimer_D_8082AD44 = XREG(6);
                    } else {
                        pauseCtx->stickRelX = 0;
                    }
                } else {
                    sStickXcooldownTimer_D_8082AD44 = XREG(8);
                    sStickXcooldownDirection_D_8082AD4C = -1;
                }
            } else if (pauseCtx->stickRelX > 30) {
                if (sStickXcooldownDirection_D_8082AD4C == 1) {
                    if (--sStickXcooldownTimer_D_8082AD44 < 0) {
                        sStickXcooldownTimer_D_8082AD44 = XREG(6);
                    } else {
                        pauseCtx->stickRelX = 0;
                    }
                } else {
                    sStickXcooldownTimer_D_8082AD44 = XREG(8);
                    sStickXcooldownDirection_D_8082AD4C = 1;
                }
            } else {
                sStickXcooldownDirection_D_8082AD4C = 0;
            }

            if (pauseCtx->stickRelY < -30) {
                if (sStickYcooldownDirection_D_8082AD50 == -1) {
                    if (--sStickYcooldownTimer_D_8082AD48 < 0) {
                        sStickYcooldownTimer_D_8082AD48 = XREG(6);
                    } else {
                        pauseCtx->stickRelY = 0;
                    }
                } else {
                    sStickYcooldownTimer_D_8082AD48 = XREG(8);
                    sStickYcooldownDirection_D_8082AD50 = -1;
                }
            } else if (pauseCtx->stickRelY > 30) {
                if (sStickYcooldownDirection_D_8082AD50 == 1) {
                    if (--sStickYcooldownTimer_D_8082AD48 < 0) {
                        sStickYcooldownTimer_D_8082AD48 = XREG(6);
                    } else {
                        pauseCtx->stickRelY = 0;
                    }
                } else {
                    sStickYcooldownTimer_D_8082AD48 = XREG(8);
                    sStickYcooldownDirection_D_8082AD50 = 1;
                }
            } else {
                sStickYcooldownDirection_D_8082AD50 = 0;
            }
        }

        // draw non-active pages?

        if (pauseCtx->pageIndex) { // pageIndex != PAUSE_ITEM
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

            Matrix_Translate(0.0f, (f32)WREG(2) / 100.0f, -(f32)WREG(3) / 100.0f, MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateX(-pauseCtx->rotXpauseItem_unk_1F4 / 100.0f, MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1173),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->itemPageVtx,
                                                          sSelectItemTexs[gSaveContext.language]);

            KaleidoScope_DrawItemSelect(play);
        }

        if (pauseCtx->pageIndex != PAUSE_EQUIP) {
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

            Matrix_Translate(-(f32)WREG(3) / 100.0f, (f32)WREG(2) / 100.0f, 0.0f, MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateZ(pauseCtx->rotPauseEquip_unk_1F8 / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(1.57f, MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1196),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->equipPageVtx,
                                                          sEquipmentTexs[gSaveContext.language]);

            KaleidoScope_DrawEquipment(play);
        }

        if (pauseCtx->pageIndex != PAUSE_QUEST) {
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_BILERP);
            gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

            Matrix_Translate(0.0f, (f32)WREG(2) / 100.0f, (f32)WREG(3) / 100.0f, MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateX(pauseCtx->rotPauseQuest_unk_200 / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(3.14f, MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1220),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->questPageVtx,
                                                          sQuestStatusTexs[gSaveContext.language]);

            KaleidoScope_DrawQuestStatus(play, gfxCtx);
        }

        if (pauseCtx->pageIndex != PAUSE_MAP) {
            gDPPipeSync(POLY_OPA_DISP++);

            gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

            Matrix_Translate((f32)WREG(3) / 100.0f, (f32)WREG(2) / 100.0f, 0.0f, MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateZ(-pauseCtx->rotPauseMap_unk_1FC / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(-1.57f, MTXMODE_APPLY);

            gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1243),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            POLY_OPA_DISP =
                KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->mapPageVtx, sMapTexs[gSaveContext.language]);

            if (sInDungeonScene) {
                KaleidoScope_DrawDungeonMap(play, gfxCtx);
                Gfx_SetupDL_42Opa(gfxCtx);

                gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

                if (CHECK_DUNGEON_ITEM(DUNGEON_COMPASS, gSaveContext.mapIndex)) {
                    PauseMapMark_Draw(play);
                }
            } else {
                KaleidoScope_DrawWorldMap(play, gfxCtx);
            }
        }

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

        switch (pauseCtx->pageIndex) {
            case PAUSE_ITEM:
                Matrix_Translate(0.0f, (f32)WREG(2) / 100.0f, -(f32)WREG(3) / 100.0f, MTXMODE_NEW);
                Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
                Matrix_RotateX(-pauseCtx->rotXpauseItem_unk_1F4 / 100.0f, MTXMODE_APPLY);

                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1281),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

                POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->itemPageVtx,
                                                              sSelectItemTexs[gSaveContext.language]);

                KaleidoScope_DrawItemSelect(play);
                break;

            case PAUSE_MAP:
                Matrix_Translate((f32)WREG(3) / 100.0f, (f32)WREG(2) / 100.0f, 0.0f, MTXMODE_NEW);
                Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
                Matrix_RotateZ(-pauseCtx->rotPauseMap_unk_1FC / 100.0f, MTXMODE_APPLY);
                Matrix_RotateY(-1.57f, MTXMODE_APPLY);

                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1303),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

                POLY_OPA_DISP =
                    KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->mapPageVtx, sMapTexs[gSaveContext.language]);

                if (sInDungeonScene) {
                    KaleidoScope_DrawDungeonMap(play, gfxCtx);
                    Gfx_SetupDL_42Opa(gfxCtx);

                    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

                    if (pauseCtx->cursorSpecialPos == 0) {
                        KaleidoScope_DrawCursor(play, PAUSE_MAP);
                    }

                    if (CHECK_DUNGEON_ITEM(DUNGEON_COMPASS, gSaveContext.mapIndex)) {
                        PauseMapMark_Draw(play);
                    }
                } else {
                    KaleidoScope_DrawWorldMap(play, gfxCtx);
                }
                break;

            case PAUSE_QUEST:
                gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_BILERP);

                Matrix_Translate(0.0f, (f32)WREG(2) / 100.0f, (f32)WREG(3) / 100.0f, MTXMODE_NEW);
                Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
                Matrix_RotateX(pauseCtx->rotPauseQuest_unk_200 / 100.0f, MTXMODE_APPLY);
                Matrix_RotateY(3.14f, MTXMODE_APPLY);

                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1343),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

                POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->questPageVtx,
                                                              sQuestStatusTexs[gSaveContext.language]);

                KaleidoScope_DrawQuestStatus(play, gfxCtx);

                if (pauseCtx->cursorSpecialPos == 0) {
                    KaleidoScope_DrawCursor(play, PAUSE_QUEST);
                }
                break;

            case PAUSE_EQUIP:
                Matrix_Translate(-(f32)WREG(3) / 100.0f, (f32)WREG(2) / 100.0f, 0.0f, MTXMODE_NEW);
                Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
                Matrix_RotateZ(pauseCtx->rotPauseEquip_unk_1F8 / 100.0f, MTXMODE_APPLY);
                Matrix_RotateY(1.57f, MTXMODE_APPLY);

                gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1367),
                          G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

                POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->equipPageVtx,
                                                              sEquipmentTexs[gSaveContext.language]);

                KaleidoScope_DrawEquipment(play);

                if (pauseCtx->cursorSpecialPos == 0) {
                    KaleidoScope_DrawCursor(play, PAUSE_EQUIP);
                }
                break;
        }
    }

    Gfx_SetupDL_42Opa(gfxCtx);

    if ((pauseCtx->state == PAUSECTX_STATE_7_SAVE_PROMPT_) ||
        ((pauseCtx->state >= PAUSECTX_STATE_8) && (pauseCtx->state < PAUSECTX_STATE_18_FLIP_PAGES_AND_UNPAUSE))
        /* PAUSECTX_STATE_8, PAUSECTX_STATE_9, PAUSECTX_STATE_10, PAUSECTX_STATE_11, PAUSECTX_STATE_12,
           PAUSECTX_STATE_13, PAUSECTX_STATE_14, PAUSECTX_STATE_15, PAUSECTX_STATE_16, PAUSECTX_STATE_17 */
    ) {
        KaleidoScope_UpdatePrompt(play);

        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

        if (!pauseCtx->pageIndex) { // pageIndex == PAUSE_ITEM
            pauseCtx->rotXpauseItem_unk_1F4 = pauseCtx->rotXorZ_unk_204 + 314.0f;

            Matrix_Translate(0.0f, (f32)WREG(2) / 100.0f, -pauseCtx->unk_1F0 / 10.0f, MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateX(-pauseCtx->rotXorZ_unk_204 / 100.0f, MTXMODE_APPLY);
        } else if (pauseCtx->pageIndex == PAUSE_MAP) {
            pauseCtx->rotPauseMap_unk_1FC = pauseCtx->rotXorZ_unk_204 + 314.0f;

            Matrix_Translate(pauseCtx->unk_1F0 / 10.0f, (f32)WREG(2) / 100.0f, 0.0f, MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateZ(-pauseCtx->rotXorZ_unk_204 / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(-1.57f, MTXMODE_APPLY);
        } else if (pauseCtx->pageIndex == PAUSE_QUEST) {
            pauseCtx->rotPauseQuest_unk_200 = pauseCtx->rotXorZ_unk_204 + 314.0f;

            Matrix_Translate(0.0f, (f32)WREG(2) / 100.0f, pauseCtx->unk_1F0 / 10.0f, MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateX(pauseCtx->rotXorZ_unk_204 / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(3.14f, MTXMODE_APPLY);
        } else {
            pauseCtx->rotPauseEquip_unk_1F8 = pauseCtx->rotXorZ_unk_204 + 314.0f;

            Matrix_Translate(-pauseCtx->unk_1F0 / 10.0f, (f32)WREG(2) / 100.0f, 0.0f, MTXMODE_NEW);
            Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
            Matrix_RotateZ(pauseCtx->rotXorZ_unk_204 / 100.0f, MTXMODE_APPLY);
            Matrix_RotateY(1.57f, MTXMODE_APPLY);
        }

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(gfxCtx, "../z_kaleido_scope_PAL.c", 1424),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        if (((pauseCtx->state >= PAUSECTX_STATE_8) && (pauseCtx->state < PAUSECTX_STATE_18_FLIP_PAGES_AND_UNPAUSE))
        /* PAUSECTX_STATE_8, PAUSECTX_STATE_9, PAUSECTX_STATE_10, PAUSECTX_STATE_11, PAUSECTX_STATE_12,
           PAUSECTX_STATE_13, PAUSECTX_STATE_14, PAUSECTX_STATE_15, PAUSECTX_STATE_16, PAUSECTX_STATE_17 */) {
            POLY_OPA_DISP = KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->saveVtx, sGameOverTexs);
        } else {
            POLY_OPA_DISP =
                KaleidoScope_DrawPageSections(POLY_OPA_DISP, pauseCtx->saveVtx, sSaveTexs[gSaveContext.language]);
        }

        gSPVertex(POLY_OPA_DISP++, &pauseCtx->saveVtx[60], 32, 0);

        if (((pauseCtx->state == PAUSECTX_STATE_7_SAVE_PROMPT_) && (pauseCtx->unk_1EC < PAUSECTX_UNK_1EC_4)
             /* PAUSECTX_UNK_1EC_0, PAUSECTX_UNK_1EC_1, PAUSECTX_UNK_1EC_2, PAUSECTX_UNK_1EC_3 */) ||
            (pauseCtx->state == PAUSECTX_STATE_14)) {
            POLY_OPA_DISP =
                KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sSavePromptTexs[gSaveContext.language], 152, 16, 0);

            gDPSetCombineLERP(POLY_OPA_DISP++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0,
                              0, PRIMITIVE, 0);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 100, 255, 100, VREG(61));

            if (pauseCtx->promptChoice == 0) {
                gSPDisplayList(POLY_OPA_DISP++, gPromptCursorLeftDL);
            } else {
                gSPDisplayList(POLY_OPA_DISP++, gPromptCursorRightDL);
            }

            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

            POLY_OPA_DISP =
                KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sPromptChoiceTexs[gSaveContext.language][0], 48, 16, 12);

            POLY_OPA_DISP =
                KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sPromptChoiceTexs[gSaveContext.language][1], 48, 16, 16);
        } else if ((pauseCtx->state != PAUSECTX_STATE_7_SAVE_PROMPT_) || (pauseCtx->unk_1EC < PAUSECTX_UNK_1EC_4)
                   /* PAUSECTX_UNK_1EC_0, PAUSECTX_UNK_1EC_1, PAUSECTX_UNK_1EC_2, PAUSECTX_UNK_1EC_3 */) {
            if ((pauseCtx->state != PAUSECTX_STATE_15) &&
                ((pauseCtx->state == PAUSECTX_STATE_16) || (pauseCtx->state == PAUSECTX_STATE_17))) {
                POLY_OPA_DISP =
                    KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sContinuePromptTexs[gSaveContext.language], 152, 16, 0);

                gDPSetCombineLERP(POLY_OPA_DISP++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0,
                                  TEXEL0, 0, PRIMITIVE, 0);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 100, 255, 100, VREG(61));

                if (pauseCtx->promptChoice == 0) {
                    gSPDisplayList(POLY_OPA_DISP++, gPromptCursorLeftDL);
                } else {
                    gSPDisplayList(POLY_OPA_DISP++, gPromptCursorRightDL);
                }

                gDPPipeSync(POLY_OPA_DISP++);
                gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

                POLY_OPA_DISP =
                    KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sPromptChoiceTexs[gSaveContext.language][0], 48, 16, 12);

                POLY_OPA_DISP =
                    KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, sPromptChoiceTexs[gSaveContext.language][1], 48, 16, 16);
            }
        }

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

        if ((pauseCtx->state != PAUSECTX_STATE_16) && (pauseCtx->state != PAUSECTX_STATE_17)) {
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 0, pauseCtx->alpha);
            gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 1577);
}

void KaleidoScope_DrawInfoPanel(PlayState* play) {
    static void* D_8082AD54[3] = {
        gPauseToEquipENGTex,
        gPauseToEquipGERTex,
        gPauseToEquipFRATex,
    };
    static void* D_8082AD60[3] = {
        gPauseToDecideENGTex,
        gPauseToDecideGERTex,
        gPauseToDecideFRATex,
    };
    static void* D_8082AD6C[3] = {
        gPauseToPlayMelodyENGTex,
        gPauseToPlayMelodyGERTex,
        gPauseToPlayMelodyFRATex,
    };
    static void* D_8082AD78[][3] = {
        { gPauseToEquipmentENGTex, gPauseToEquipmentGERTex, gPauseToEquipmentFRATex },
        { gPauseToSelectItemENGTex, gPauseToSelectItemGERTex, gPauseToSelectItemFRATex },
        { gPauseToMapENGTex, gPauseToMapGERTex, gPauseToMapFRATex },
        { gPauseToQuestStatusENGTex, gPauseToQuestStatusGERTex, gPauseToQuestStatusFRATex },
    };
    static void* D_8082ADA8[][3] = {
        { gPauseToMapENGTex, gPauseToMapGERTex, gPauseToMapFRATex },
        { gPauseToQuestStatusENGTex, gPauseToQuestStatusGERTex, gPauseToQuestStatusFRATex },
        { gPauseToEquipmentENGTex, gPauseToEquipmentGERTex, gPauseToEquipmentFRATex },
        { gPauseToSelectItemENGTex, gPauseToSelectItemGERTex, gPauseToSelectItemFRATex },
    };
    static u16 D_8082ADD8[3] = { 56, 88, 80 };
    static u16 D_8082ADE0[3] = { 64, 88, 72 };
    static u16 D_8082ADE8[3] = { 80, 104, 112 };
    static s16 D_8082ADF0[][4] = {
        { 180, 210, 255, 220 },
        { 100, 100, 150, 220 },
    };
    static s16 D_8082AE00 = 20;
    static s16 D_8082AE04 = 0;
    static s16 D_8082AE08[] = {
        10, 16, 16, 17, 12, 13, 18, 17, 17, 19, 13, 21, 20, 21, 14, 15, 15, 15, 11, 14,
    };
    static s16 D_8082AE30[] = {
        21, 20, 19, 18, 11, 14, 10, 15, 16, 13, 12, 17,
    };
    static s16 D_808321A0;
    static s16 D_808321A2;
    static s16 D_808321A4;
    static s16 D_808321A6;
    PauseContext* pauseCtx = &play->pauseCtx;
    s16 stepR;
    s16 stepG;
    s16 stepB;
    s16 stepA;
    s16 temp;
    s16 i;
    s16 j;

    OPEN_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 1676);

    stepR = ABS(D_808321A0 - D_8082ADF0[D_8082AE04][0]) / D_8082AE00;
    stepG = ABS(D_808321A2 - D_8082ADF0[D_8082AE04][1]) / D_8082AE00;
    stepB = ABS(D_808321A4 - D_8082ADF0[D_8082AE04][2]) / D_8082AE00;
    stepA = ABS(D_808321A6 - D_8082ADF0[D_8082AE04][3]) / D_8082AE00;
    if (D_808321A0 >= D_8082ADF0[D_8082AE04][0]) {
        D_808321A0 -= stepR;
    } else {
        D_808321A0 += stepR;
    }
    if (D_808321A2 >= D_8082ADF0[D_8082AE04][1]) {
        D_808321A2 -= stepG;
    } else {
        D_808321A2 += stepG;
    }
    if (D_808321A4 >= D_8082ADF0[D_8082AE04][2]) {
        D_808321A4 -= stepB;
    } else {
        D_808321A4 += stepB;
    }
    if (D_808321A6 >= D_8082ADF0[D_8082AE04][3]) {
        D_808321A6 -= stepA;
    } else {
        D_808321A6 += stepA;
    }

    D_8082AE00--;
    if (D_8082AE00 == 0) {
        D_808321A0 = D_8082ADF0[D_8082AE04][0];
        D_808321A2 = D_8082ADF0[D_8082AE04][1];
        D_808321A4 = D_8082ADF0[D_8082AE04][2];
        D_808321A6 = D_8082ADF0[D_8082AE04][3];
        D_8082AE00 = ZREG(28);
        D_8082AE04 ^= 1;
    }

    temp = pauseCtx->infoPanelOffsetY - 76;
    for (j = 0, i = 0; i < 7; i++, j += 4) {
        pauseCtx->infoPanelVtx[j + 0].v.ob[0] = pauseCtx->infoPanelVtx[j + 2].v.ob[0] = -72;

        pauseCtx->infoPanelVtx[j + 1].v.ob[0] = pauseCtx->infoPanelVtx[j + 3].v.ob[0] = 0;

        pauseCtx->infoPanelVtx[j + 0].v.ob[1] = pauseCtx->infoPanelVtx[j + 1].v.ob[1] = temp;

        pauseCtx->infoPanelVtx[j + 2].v.ob[1] = pauseCtx->infoPanelVtx[j + 3].v.ob[1] = temp - 24;

        pauseCtx->infoPanelVtx[j + 0].v.ob[2] = pauseCtx->infoPanelVtx[j + 1].v.ob[2] =
            pauseCtx->infoPanelVtx[j + 2].v.ob[2] = pauseCtx->infoPanelVtx[j + 3].v.ob[2] = 0;

        pauseCtx->infoPanelVtx[j + 0].v.flag = pauseCtx->infoPanelVtx[j + 1].v.flag =
            pauseCtx->infoPanelVtx[j + 2].v.flag = pauseCtx->infoPanelVtx[j + 3].v.flag = 0;

        pauseCtx->infoPanelVtx[j + 0].v.tc[0] = pauseCtx->infoPanelVtx[j + 0].v.tc[1] =
            pauseCtx->infoPanelVtx[j + 1].v.tc[1] = pauseCtx->infoPanelVtx[j + 2].v.tc[0] = 0;

        pauseCtx->infoPanelVtx[j + 1].v.tc[0] = pauseCtx->infoPanelVtx[j + 3].v.tc[0] = 72 * (1 << 5);

        pauseCtx->infoPanelVtx[j + 2].v.tc[1] = pauseCtx->infoPanelVtx[j + 3].v.tc[1] = 24 * (1 << 5);

        pauseCtx->infoPanelVtx[j + 0].v.cn[0] = pauseCtx->infoPanelVtx[j + 2].v.cn[0] =
            pauseCtx->infoPanelVtx[j + 0].v.cn[1] = pauseCtx->infoPanelVtx[j + 2].v.cn[1] =
                pauseCtx->infoPanelVtx[j + 0].v.cn[2] = pauseCtx->infoPanelVtx[j + 2].v.cn[2] =
                    pauseCtx->infoPanelVtx[j + 1].v.cn[0] = pauseCtx->infoPanelVtx[j + 3].v.cn[0] =
                        pauseCtx->infoPanelVtx[j + 1].v.cn[1] = pauseCtx->infoPanelVtx[j + 3].v.cn[1] =
                            pauseCtx->infoPanelVtx[j + 1].v.cn[2] = pauseCtx->infoPanelVtx[j + 3].v.cn[2] = 200;

        pauseCtx->infoPanelVtx[j + 0].v.cn[3] = pauseCtx->infoPanelVtx[j + 2].v.cn[3] =
            pauseCtx->infoPanelVtx[j + 1].v.cn[3] = pauseCtx->infoPanelVtx[j + 3].v.cn[3] = pauseCtx->alpha;
    }

    pauseCtx->infoPanelVtx[4].v.ob[0] = pauseCtx->infoPanelVtx[6].v.ob[0] = pauseCtx->infoPanelVtx[0].v.ob[0] + 72;

    pauseCtx->infoPanelVtx[5].v.ob[0] = pauseCtx->infoPanelVtx[7].v.ob[0] = pauseCtx->infoPanelVtx[4].v.ob[0] + 72;

    if ((pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) && (pauseCtx->unk_1E4_ps6_ == PAUSE_S6_0_IDLE_)) {
        pauseCtx->infoPanelVtx[8].v.ob[0] = pauseCtx->infoPanelVtx[10].v.ob[0] = WREG(16);

        pauseCtx->infoPanelVtx[9].v.ob[0] = pauseCtx->infoPanelVtx[11].v.ob[0] = pauseCtx->infoPanelVtx[8].v.ob[0] + 24;

        pauseCtx->infoPanelVtx[8].v.ob[1] = pauseCtx->infoPanelVtx[9].v.ob[1] = WREG(18);

        pauseCtx->infoPanelVtx[10].v.ob[1] = pauseCtx->infoPanelVtx[11].v.ob[1] =
            pauseCtx->infoPanelVtx[8].v.ob[1] - 32;
    } else {
        pauseCtx->infoPanelVtx[8].v.ob[0] = pauseCtx->infoPanelVtx[10].v.ob[0] = WREG(16) + 3;

        pauseCtx->infoPanelVtx[9].v.ob[0] = pauseCtx->infoPanelVtx[11].v.ob[0] = pauseCtx->infoPanelVtx[8].v.ob[0] + 18;

        pauseCtx->infoPanelVtx[8].v.ob[1] = pauseCtx->infoPanelVtx[9].v.ob[1] = WREG(18) - 3;

        pauseCtx->infoPanelVtx[10].v.ob[1] = pauseCtx->infoPanelVtx[11].v.ob[1] =
            pauseCtx->infoPanelVtx[8].v.ob[1] - 26;
    }

    if ((pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_RIGHT) && (pauseCtx->unk_1E4_ps6_ == PAUSE_S6_0_IDLE_)) {
        pauseCtx->infoPanelVtx[12].v.ob[0] = pauseCtx->infoPanelVtx[14].v.ob[0] = WREG(17);

        pauseCtx->infoPanelVtx[13].v.ob[0] = pauseCtx->infoPanelVtx[15].v.ob[0] =
            pauseCtx->infoPanelVtx[12].v.ob[0] + 24;

        pauseCtx->infoPanelVtx[12].v.ob[1] = pauseCtx->infoPanelVtx[13].v.ob[1] = WREG(18);

        pauseCtx->infoPanelVtx[14].v.ob[1] = pauseCtx->infoPanelVtx[15].v.ob[1] =
            pauseCtx->infoPanelVtx[12].v.ob[1] - 32;
    } else {
        pauseCtx->infoPanelVtx[12].v.ob[0] = pauseCtx->infoPanelVtx[14].v.ob[0] = WREG(17) + 3;

        pauseCtx->infoPanelVtx[13].v.ob[0] = pauseCtx->infoPanelVtx[15].v.ob[0] =
            pauseCtx->infoPanelVtx[12].v.ob[0] + 18;

        pauseCtx->infoPanelVtx[12].v.ob[1] = pauseCtx->infoPanelVtx[13].v.ob[1] = WREG(18) - 3;

        pauseCtx->infoPanelVtx[14].v.ob[1] = pauseCtx->infoPanelVtx[15].v.ob[1] =
            pauseCtx->infoPanelVtx[12].v.ob[1] - 26;
    }

    pauseCtx->infoPanelVtx[9].v.tc[0] = pauseCtx->infoPanelVtx[11].v.tc[0] = pauseCtx->infoPanelVtx[13].v.tc[0] =
        pauseCtx->infoPanelVtx[15].v.tc[0] = 24 * (1 << 5);

    pauseCtx->infoPanelVtx[10].v.tc[1] = pauseCtx->infoPanelVtx[11].v.tc[1] = pauseCtx->infoPanelVtx[14].v.tc[1] =
        pauseCtx->infoPanelVtx[15].v.tc[1] = 32 * (1 << 5);

    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

    Matrix_Translate(0.0f, 0.0f, -144.0f, MTXMODE_NEW);
    Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 1755),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 90, 100, 130, 255);
    gSPVertex(POLY_OPA_DISP++, &pauseCtx->infoPanelVtx[0], 16, 0);

    gSPDisplayList(POLY_OPA_DISP++, gItemNamePanelDL);

    if ((pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) && (pauseCtx->unk_1E4_ps6_ == PAUSE_S6_0_IDLE_)) {
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, D_808321A0, D_808321A2, D_808321A4, D_808321A6);
    }

    gSPDisplayList(POLY_OPA_DISP++, gLButtonIconDL);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 180, 210, 255, 220);

    if ((pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_RIGHT) && (pauseCtx->unk_1E4_ps6_ == PAUSE_S6_0_IDLE_)) {
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, D_808321A0, D_808321A2, D_808321A4, D_808321A6);
    }

    gSPDisplayList(POLY_OPA_DISP++, gRButtonIconDL);

    if (pauseCtx->cursorSpecialPos != 0) {
        j = (pauseCtx->cursorSpecialPos * 4) - 32;
        pauseCtx->cursorVtx[0].v.ob[0] = pauseCtx->infoPanelVtx[j].v.ob[0];
        pauseCtx->cursorVtx[0].v.ob[1] = pauseCtx->infoPanelVtx[j].v.ob[1];
        KaleidoScope_DrawCursor(play, pauseCtx->pageIndex);
    }

    temp = pauseCtx->infoPanelOffsetY - 80;
    pauseCtx->infoPanelVtx[16].v.ob[1] = pauseCtx->infoPanelVtx[17].v.ob[1] = temp;

    pauseCtx->infoPanelVtx[18].v.ob[1] = pauseCtx->infoPanelVtx[19].v.ob[1] = pauseCtx->infoPanelVtx[16].v.ob[1] - 16;

    pauseCtx->infoPanelVtx[18].v.tc[1] = pauseCtx->infoPanelVtx[19].v.tc[1] = 16 * (1 << 5);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetEnvColor(POLY_OPA_DISP++, 20, 30, 40, 0);

    if ((pauseCtx->state == PAUSECTX_STATE_6) && (pauseCtx->namedItem != PAUSE_ITEM_NONE) &&
        (pauseCtx->nameDisplayTimer < WREG(89)) &&
        (!pauseCtx->unk_1E4_ps6_ /* PAUSE_S6_0_IDLE_ */ || (pauseCtx->unk_1E4_ps6_ == PAUSE_S6_2_PLAYBACK_SONG_) ||
         ((pauseCtx->unk_1E4_ps6_ >= PAUSE_S6_4_PLAYER_PLAYING_SONG_INIT_) &&
          (pauseCtx->unk_1E4_ps6_ <= PAUSE_S6_7)) /* PAUSE_S6_4_PLAYER_PLAYING_SONG_INIT_,
                                                     PAUSE_S6_5_PLAYER_PLAYING_SONG_, PAUSE_S6_6, PAUSE_S6_7 */
         || (pauseCtx->unk_1E4_ps6_ == PAUSE_S6_8_PLAYBACK_SONG_READY_)) &&
        (pauseCtx->cursorSpecialPos == 0)) {
        if (!pauseCtx->unk_1E4_ps6_ /* PAUSE_S6_0_IDLE_ */ || (pauseCtx->unk_1E4_ps6_ == PAUSE_S6_2_PLAYBACK_SONG_) ||
            ((pauseCtx->unk_1E4_ps6_ >= PAUSE_S6_4_PLAYER_PLAYING_SONG_INIT_) &&
             (pauseCtx->unk_1E4_ps6_ <= PAUSE_S6_7)) /* PAUSE_S6_4_PLAYER_PLAYING_SONG_INIT_,
                                                        PAUSE_S6_5_PLAYER_PLAYING_SONG_, PAUSE_S6_6, PAUSE_S6_7 */
            || (pauseCtx->unk_1E4_ps6_ == PAUSE_S6_8_PLAYBACK_SONG_READY_)) {
            pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] = -63;

            pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                pauseCtx->infoPanelVtx[16].v.ob[0] + 128;

            pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 128 * (1 << 5);

            gSPVertex(POLY_OPA_DISP++, &pauseCtx->infoPanelVtx[16], 4, 0);

            if (pauseCtx->nameColorSet == 1) {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 70, 70, 70, 255);
            } else {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);
            }

            POLY_OPA_DISP = KaleidoScope_QuadTextureIA4(POLY_OPA_DISP, pauseCtx->nameSegment, 128, 16, 0);
        }

        if (pauseCtx->pageIndex == PAUSE_MAP) {
            if (YREG(7) != 0) {
                osSyncPrintf(VT_FGCOL(YELLOW));
                osSyncPrintf("キンスタ数(%d) Get_KIN_STA=%x (%x)  (%x)\n", YREG(6), GET_GS_FLAGS(YREG(6)),
                             gAreaGsFlags[YREG(6)], gSaveContext.gsFlags[YREG(6) >> 2]);
                osSyncPrintf(VT_RST);

                YREG(7) = 0;
                SET_GS_FLAGS(D_8082AE30[pauseCtx->cursorPoint[PAUSE_WORLD_MAP]],
                             gAreaGsFlags[D_8082AE30[pauseCtx->cursorPoint[PAUSE_WORLD_MAP]]]);
            }
        }

        if ((pauseCtx->pageIndex == PAUSE_MAP) && !sInDungeonScene) {
            if (GET_GS_FLAGS(D_8082AE30[pauseCtx->cursorPoint[PAUSE_WORLD_MAP]]) ==
                gAreaGsFlags[D_8082AE30[pauseCtx->cursorPoint[PAUSE_WORLD_MAP]]]) {

                pauseCtx->infoPanelVtx[24].v.ob[0] = pauseCtx->infoPanelVtx[26].v.ob[0] = -74;

                pauseCtx->infoPanelVtx[25].v.ob[0] = pauseCtx->infoPanelVtx[27].v.ob[0] =
                    pauseCtx->infoPanelVtx[24].v.ob[0] + 19;

                pauseCtx->infoPanelVtx[24].v.ob[1] = pauseCtx->infoPanelVtx[25].v.ob[1] =
                    pauseCtx->infoPanelVtx[24].v.ob[1] - 2;

                pauseCtx->infoPanelVtx[26].v.ob[1] = pauseCtx->infoPanelVtx[27].v.ob[1] =
                    pauseCtx->infoPanelVtx[24].v.ob[1] - 19;

                pauseCtx->infoPanelVtx[25].v.tc[0] = pauseCtx->infoPanelVtx[27].v.tc[0] = 24 * (1 << 5);

                gDPPipeSync(POLY_OPA_DISP++);
                gSPVertex(POLY_OPA_DISP++, &pauseCtx->infoPanelVtx[24], 4, 0);

                gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                                  PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
                gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

                KaleidoScope_DrawQuadTextureRGBA32(play->state.gfxCtx, gGoldSkulltulaIconTex, 24, 24, 0);
            }
        }
    } else if ((pauseCtx->unk_1E4_ps6_ < PAUSE_S6_3) /* PAUSE_S6_0_IDLE_, PAUSE_S6_1, PAUSE_S6_2_PLAYBACK_SONG_ */
               || (pauseCtx->unk_1E4_ps6_ == PAUSE_S6_7) ||
               (pauseCtx->unk_1E4_ps6_ == PAUSE_S6_8_PLAYBACK_SONG_READY_)) {
        pauseCtx->infoPanelVtx[20].v.ob[1] = pauseCtx->infoPanelVtx[21].v.ob[1] = temp;

        pauseCtx->infoPanelVtx[22].v.ob[1] = pauseCtx->infoPanelVtx[23].v.ob[1] =
            pauseCtx->infoPanelVtx[20].v.ob[1] - 16;

        pauseCtx->infoPanelVtx[22].v.tc[1] = pauseCtx->infoPanelVtx[23].v.tc[1] = 16 * (1 << 5);

        gSPVertex(POLY_OPA_DISP++, &pauseCtx->infoPanelVtx[16], 8, 0);

        if (pauseCtx->state == PAUSECTX_STATE_7_SAVE_PROMPT_) {
            pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] = WREG(61 + gSaveContext.language);

            pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                pauseCtx->infoPanelVtx[16].v.ob[0] + 24;

            pauseCtx->infoPanelVtx[20].v.ob[0] = pauseCtx->infoPanelVtx[22].v.ob[0] =
                pauseCtx->infoPanelVtx[16].v.ob[0] + WREG(52 + gSaveContext.language);

            pauseCtx->infoPanelVtx[21].v.ob[0] = pauseCtx->infoPanelVtx[23].v.ob[0] =
                pauseCtx->infoPanelVtx[20].v.ob[0] + D_8082ADE0[gSaveContext.language];

            pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 24 * (1 << 5);

            pauseCtx->infoPanelVtx[21].v.tc[0] = pauseCtx->infoPanelVtx[23].v.tc[0] = D_8082ADE0[gSaveContext.language]
                                                                                      << 5;

            gSPDisplayList(POLY_OPA_DISP++, gAButtonIconDL);

            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);

            POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, D_8082AD60[gSaveContext.language],
                                                        D_8082ADE0[gSaveContext.language], 16, 4);
        } else if (pauseCtx->cursorSpecialPos != 0) {
            if ((pauseCtx->state == PAUSECTX_STATE_6) && (pauseCtx->unk_1E4_ps6_ == PAUSE_S6_0_IDLE_)) {
                pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] = -63;

                pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                    pauseCtx->infoPanelVtx[16].v.ob[0] + 128;

                pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 128 * (1 << 5);

                gDPPipeSync(POLY_OPA_DISP++);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 200, 0, 255);

                if (pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) {
                    POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(
                        POLY_OPA_DISP, D_8082AD78[pauseCtx->pageIndex][gSaveContext.language], 128, 16, 0);
                } else {
                    POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(
                        POLY_OPA_DISP, D_8082ADA8[pauseCtx->pageIndex][gSaveContext.language], 128, 16, 0);
                }
            }
        } else {
            if (!pauseCtx->pageIndex) { // pageIndex == PAUSE_ITEM
                pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] =
                    WREG(49 + gSaveContext.language);

                pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                    pauseCtx->infoPanelVtx[16].v.ob[0] + 48;

                pauseCtx->infoPanelVtx[20].v.ob[0] = pauseCtx->infoPanelVtx[22].v.ob[0] =
                    pauseCtx->infoPanelVtx[16].v.ob[0] + WREG(58 + gSaveContext.language);

                pauseCtx->infoPanelVtx[21].v.ob[0] = pauseCtx->infoPanelVtx[23].v.ob[0] =
                    pauseCtx->infoPanelVtx[20].v.ob[0] + D_8082ADD8[gSaveContext.language];

                pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 48 * (1 << 5);

                pauseCtx->infoPanelVtx[21].v.tc[0] = pauseCtx->infoPanelVtx[23].v.tc[0] =
                    D_8082ADD8[gSaveContext.language] << 5;

                gSPDisplayList(POLY_OPA_DISP++, gCButtonIconsDL);

                gDPPipeSync(POLY_OPA_DISP++);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);

                POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, D_8082AD54[gSaveContext.language],
                                                            D_8082ADD8[gSaveContext.language], 16, 4);
            } else if ((pauseCtx->pageIndex == PAUSE_MAP) && sInDungeonScene) {

            } else if ((pauseCtx->pageIndex == PAUSE_QUEST) && (pauseCtx->cursorSlot[PAUSE_QUEST] >= 6) &&
                       (pauseCtx->cursorSlot[PAUSE_QUEST] <= 0x11)) {
                if (pauseCtx->namedItem != PAUSE_ITEM_NONE) {
                    pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] =
                        WREG(55 + gSaveContext.language);

                    pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                        pauseCtx->infoPanelVtx[16].v.ob[0] + 24;

                    pauseCtx->infoPanelVtx[20].v.ob[0] = pauseCtx->infoPanelVtx[22].v.ob[0] =
                        pauseCtx->infoPanelVtx[16].v.ob[0] + WREG(52 + gSaveContext.language);

                    if (gSaveContext.language == LANGUAGE_GER) {
                        pauseCtx->infoPanelVtx[20].v.ob[0] = pauseCtx->infoPanelVtx[22].v.ob[0] =
                            pauseCtx->infoPanelVtx[16].v.ob[0] - 99;
                    }

                    pauseCtx->infoPanelVtx[21].v.ob[0] = pauseCtx->infoPanelVtx[23].v.ob[0] =
                        pauseCtx->infoPanelVtx[20].v.ob[0] + D_8082ADE8[gSaveContext.language];

                    pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 24 * (1 << 5);

                    pauseCtx->infoPanelVtx[21].v.tc[0] = pauseCtx->infoPanelVtx[23].v.tc[0] =
                        D_8082ADE8[gSaveContext.language] << 5;

                    gSPDisplayList(POLY_OPA_DISP++, gAButtonIconDL);

                    gDPPipeSync(POLY_OPA_DISP++);
                    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);

                    POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, D_8082AD6C[gSaveContext.language],
                                                                D_8082ADE8[gSaveContext.language], 16, 4);
                }
            } else if (pauseCtx->pageIndex == PAUSE_EQUIP) {
                pauseCtx->infoPanelVtx[16].v.ob[0] = pauseCtx->infoPanelVtx[18].v.ob[0] =
                    WREG(64 + gSaveContext.language);

                pauseCtx->infoPanelVtx[17].v.ob[0] = pauseCtx->infoPanelVtx[19].v.ob[0] =
                    pauseCtx->infoPanelVtx[16].v.ob[0] + 24;

                pauseCtx->infoPanelVtx[20].v.ob[0] = pauseCtx->infoPanelVtx[22].v.ob[0] =
                    pauseCtx->infoPanelVtx[16].v.ob[0] + WREG(52 + gSaveContext.language);

                pauseCtx->infoPanelVtx[21].v.ob[0] = pauseCtx->infoPanelVtx[23].v.ob[0] =
                    pauseCtx->infoPanelVtx[20].v.ob[0] + D_8082ADD8[gSaveContext.language];

                pauseCtx->infoPanelVtx[17].v.tc[0] = pauseCtx->infoPanelVtx[19].v.tc[0] = 24 * (1 << 5);

                pauseCtx->infoPanelVtx[21].v.tc[0] = pauseCtx->infoPanelVtx[23].v.tc[0] =
                    D_8082ADD8[gSaveContext.language] << 5;

                gSPDisplayList(POLY_OPA_DISP++, gAButtonIconDL);

                gDPPipeSync(POLY_OPA_DISP++);
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);

                POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP, D_8082AD54[gSaveContext.language],
                                                            D_8082ADD8[gSaveContext.language], 16, 4);
            }
        }
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 2032);
}

void KaleidoScope_UpdateNamePanel(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;
    u16 sp2A;

    if ((pauseCtx->namedItem != pauseCtx->cursorItem[pauseCtx->pageIndex]) ||
        ((pauseCtx->pageIndex == PAUSE_MAP) && (pauseCtx->cursorSpecialPos != 0))) {

        pauseCtx->namedItem = pauseCtx->cursorItem[pauseCtx->pageIndex];
        sp2A = pauseCtx->namedItem;

        osCreateMesgQueue(&pauseCtx->loadQueue, &pauseCtx->loadMsg, 1);

        if (pauseCtx->namedItem != PAUSE_ITEM_NONE) {
            if ((pauseCtx->pageIndex == PAUSE_MAP) && !sInDungeonScene) {
                if (gSaveContext.language) {
                    sp2A += 12;
                }
                if (gSaveContext.language == LANGUAGE_FRA) {
                    sp2A += 12;
                }

                DmaMgr_SendRequest1(pauseCtx->nameSegment, (uintptr_t)_map_name_staticSegmentRomStart + (sp2A * 0x400),
                                    0x400, "../z_kaleido_scope_PAL.c", 2093);
            } else {
                osSyncPrintf("zoom_name=%d\n", pauseCtx->namedItem);

                if (gSaveContext.language) {
                    sp2A += 123;
                }
                if (gSaveContext.language == LANGUAGE_FRA) {
                    sp2A += 123;
                }

                osSyncPrintf("J_N=%d  point=%d\n", gSaveContext.language, sp2A);

                DmaMgr_SendRequest1(pauseCtx->nameSegment, (uintptr_t)_item_name_staticSegmentRomStart + (sp2A * 0x400),
                                    0x400, "../z_kaleido_scope_PAL.c", 2120);
            }

            pauseCtx->nameDisplayTimer = 0;
        }
    } else if (pauseCtx->nameColorSet == 0) {
        if (((pauseCtx->pageIndex == PAUSE_QUEST) && (pauseCtx->cursorSlot[PAUSE_QUEST] >= 6) &&
             (pauseCtx->cursorSlot[PAUSE_QUEST] <= 0x11) &&
             (pauseCtx->unk_1E4_ps6_ == PAUSE_S6_8_PLAYBACK_SONG_READY_)) ||
            (pauseCtx->pageIndex == PAUSE_ITEM) ||
            ((pauseCtx->pageIndex == PAUSE_EQUIP) && (pauseCtx->cursorX[PAUSE_EQUIP] != 0))) {
            if (pauseCtx->namedItem != ITEM_SOLD_OUT) {
                pauseCtx->nameDisplayTimer++;
                if (pauseCtx->nameDisplayTimer > WREG(88)) {
                    pauseCtx->nameDisplayTimer = 0;
                }
            }
        } else {
            pauseCtx->nameDisplayTimer = 0;
        }
    } else {
        pauseCtx->nameDisplayTimer = 0;
    }
}

void func_808237B4(PlayState* play, Input* input) {
    PauseContext* pauseCtx = &play->pauseCtx;
    s32 cond = false;
    s32 mode;

    // ZREG(13) is always 0 unless set through the reg editor
    if (ZREG(13) && !CHECK_BTN_ALL(input->press.button, BTN_L)) {
        cond = true;
    }

    if (!cond) {
        mode = pauseCtx->mode;
        pauseCtx->eye.x += D_8082ABAC_pageSwitch_eye_dx_[mode];
        pauseCtx->eye.z += D_8082ABCC_pageSwitch_eye_dz_[mode];

        if (pauseCtx->unk_1EA < 32) {
            WREG(16) -= WREG(25) / WREG(6);
            WREG(17) -= WREG(26) / WREG(6);
        } else {
            WREG(16) += WREG(25) / WREG(6);
            WREG(17) += WREG(26) / WREG(6);
        }

        pauseCtx->unk_1EA += 4;

        if (pauseCtx->unk_1EA == 64) {
            pauseCtx->unk_1EA = 0;
            pauseCtx->pageIndex = D_8082ABEC_modeToNewPageIndex_[pauseCtx->mode];
            pauseCtx->unk_1E4_ps6_ = PAUSE_S6_0_IDLE_;
        }
    }
}

void KaleidoScope_SetView(PauseContext* pauseCtx, f32 x, f32 y, f32 z) {
    Vec3f eye;
    Vec3f lookAt;
    Vec3f up;

    eye.x = x;
    eye.y = y;
    eye.z = z;
    lookAt.x = lookAt.y = lookAt.z = 0.0f;
    up.x = up.z = 0.0f;
    up.y = 1.0f;

    View_LookAt(&pauseCtx->view, &eye, &lookAt, &up);
    View_Apply(&pauseCtx->view,
               VIEW_ALL | VIEW_FORCE_VIEWING | VIEW_FORCE_VIEWPORT | VIEW_FORCE_PROJECTION_PERSPECTIVE);
}

static u8 D_8082AE48_red[][4] = {
    { 10, 70, 70, 10 },   // FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX
    { 10, 90, 90, 10 },   // FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX
    { 80, 140, 140, 80 }, // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE
    { 80, 120, 120, 80 }, // FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX
    { 80, 140, 140, 80 }, // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE
    { 50, 110, 110, 50 }, // FUNC_80823A0C_USAGE_ARG2_SAVE_VTX
};
static u8 D_8082AE60_green[][4] = {
    { 50, 100, 100, 50 }, // FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX
    { 50, 100, 100, 50 }, // FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX
    { 40, 60, 60, 40 },   // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE
    { 80, 120, 120, 80 }, // FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX
    { 40, 60, 60, 40 },   // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE
    { 50, 110, 110, 50 }, // FUNC_80823A0C_USAGE_ARG2_SAVE_VTX
};
static u8 D_8082AE78_blue[][4] = {
    { 80, 130, 130, 80 }, // FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX
    { 40, 60, 60, 40 },   // FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX
    { 30, 60, 60, 30 },   // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE
    { 50, 70, 70, 50 },   // FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX
    { 30, 60, 60, 30 },   // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE
    { 50, 110, 110, 50 }, // FUNC_80823A0C_USAGE_ARG2_SAVE_VTX
};

#define FUNC_80823A0C_ARG3_ITEM_PAGE_VTX 0
#define FUNC_80823A0C_ARG3_EQUIP_PAGE_VTX 0
#define FUNC_80823A0C_ARG3_MAP_PAGE_VTX_IN_DUNGEON_SCENE 17
#define FUNC_80823A0C_ARG3_QUEST_PAGE_VTX 0
#define FUNC_80823A0C_ARG3_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE 32
#define FUNC_80823A0C_ARG3_SAVE_VTX 5

// +1 because C doesn't allow 0-length arrays
static s16 D_8082AE90_x_ITEM_PAGE_VTX_[FUNC_80823A0C_ARG3_ITEM_PAGE_VTX + 1] = { 0 };
static s16 D_8082AE94_x_EQUIP_PAGE_VTX_[FUNC_80823A0C_ARG3_EQUIP_PAGE_VTX + 1] = { 0 };
static s16 D_8082AE98_x_MAP_PAGE_VTX_IN_DUNGEON_SCENE_[FUNC_80823A0C_ARG3_MAP_PAGE_VTX_IN_DUNGEON_SCENE] = {
    0xFFDC, 0x000C, 0xFFEE, 0x0046, 0x0046, 0x0046, 0xFFA8, 0xFFA8, 0xFFA8,
    0xFFA8, 0xFFA8, 0xFFA8, 0xFFA8, 0xFFA8, 0xFF96, 0xFFC2, 0xFFD8,
};
static s16 D_8082AEBC_x_QUEST_PAGE_VTX_[FUNC_80823A0C_ARG3_QUEST_PAGE_VTX + 1] = { 0 };
static s16 D_8082AEC0_x_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_[FUNC_80823A0C_ARG3_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE] = {
    0x002F, 0xFFCF, 0xFFEF, 0xFFF1, 0xFFF7, 0x0018, 0x002B, 0x000E, 0x0009, 0x0026, 0x0052,
    0x0047, 0xFFB4, 0xFFA9, 0xFF94, 0xFFCA, 0xFFA3, 0xFFBD, 0xFFC8, 0xFFDF, 0xFFF6, 0x0001,
    0x000E, 0x0018, 0x0023, 0x003A, 0x004A, 0x0059, 0x0000, 0xFFC6, 0x0013, 0x001C,
};
static s16 D_8082AF00_x_SAVE_VTX_[FUNC_80823A0C_ARG3_SAVE_VTX] = {
    0xFFB4, 0xFFC6, 0x000A, 0xFFC6, 0x000A,
};
static s16 D_8082AF0C_width_ITEM_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AF10_width_EQUIP_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AF14_width_MAP_PAGE_VTX_IN_DUNGEON_SCENE_[] = {
    0x0030, 0x0030, 0x0060, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018, 0x0018,
    0x0018, 0x0018, 0x0018, 0x0018, 0x0018, 0x0010, 0x0010, 0x0018, 0x0000,
};
static s16 D_8082AF38_width_QUEST_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AF3C_width_SAVE_VTX_[] = {
    0x0098, 0x0030, 0x0030, 0x0030, 0x0030, 0x0000,
};
static s16 D_8082AF48_y_ITEM_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AF4C_y_EQUIP_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AF50_y_MAP_PAGE_VTX_IN_DUNGEON_SCENE_[] = {
    0x001C, 0x001C, 0x002E, 0x001C, 0xFFFE, 0xFFE0, 0x0032, 0x0024, 0x0016,
    0x0008, 0xFFFA, 0xFFEC, 0xFFDE, 0xFFD0, 0x0012, 0x0012, 0x0032, 0x0000,
};
static s16 D_8082AF74_y_QUEST_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AF78_y_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_[] = {
    0x000F, 0x0028, 0x000B, 0x002D, 0x0034, 0x0025, 0x0024, 0x0039, 0x0036, 0x0021, 0x001F,
    0x002D, 0x0020, 0x002A, 0x0031, 0xFFF6, 0x001F, 0x001B, 0x000F, 0xFFCF, 0x0008, 0x0026,
    0x0007, 0x002F, 0x001E, 0x0001, 0xFFF7, 0x0019, 0x0000, 0x0001, 0xFFE0, 0xFFE6,
};
static s16 D_8082AFB8_y_SAVE_VTX_[] = {
    0x0024, 0x000A, 0x000A, 0xFFFA, 0xFFFA, 0x0000,
};
static s16 D_8082AFC4_height_ITEM_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AFC8_height_EQUIP_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AFCC_height_MAP_PAGE_VTX_IN_DUNGEON_SCENE_[] = {
    0x0055, 0x0055, 0x0010, 0x0018, 0x0018, 0x0018, 0x0010, 0x0010, 0x0010,
    0x0010, 0x0010, 0x0010, 0x0010, 0x0010, 0x0010, 0x0010, 0x0018, 0x0000,
};
static s16 D_8082AFF0_height_QUEST_PAGE_VTX_[] = {
    0x0000,
    0x0000,
};
static s16 D_8082AFF4_height_SAVE_VTX_[] = {
    0x0010, 0x0030, 0x0030, 0x0010, 0x0010, 0x0000,
};

static s16* D_8082B000_x_[] = {
    D_8082AE90_x_ITEM_PAGE_VTX_,                     // FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX
    D_8082AE94_x_EQUIP_PAGE_VTX_,                    // FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX
    D_8082AE98_x_MAP_PAGE_VTX_IN_DUNGEON_SCENE_,     // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE
    D_8082AEBC_x_QUEST_PAGE_VTX_,                    // FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX
    D_8082AEC0_x_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_, // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE
    D_8082AF00_x_SAVE_VTX_,                          // FUNC_80823A0C_USAGE_ARG2_SAVE_VTX
};

static s16* D_8082B018_width_[] = {
    D_8082AF0C_width_ITEM_PAGE_VTX_,                     // FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX
    D_8082AF10_width_EQUIP_PAGE_VTX_,                    // FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX
    D_8082AF14_width_MAP_PAGE_VTX_IN_DUNGEON_SCENE_,     // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE
    D_8082AF38_width_QUEST_PAGE_VTX_,                    // FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX
    D_8082AAEC_width_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_, // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE
    D_8082AF3C_width_SAVE_VTX_,                          // FUNC_80823A0C_USAGE_ARG2_SAVE_VTX
};

static s16* D_8082B030_y_[] = {
    D_8082AF48_y_ITEM_PAGE_VTX_,                     // FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX
    D_8082AF4C_y_EQUIP_PAGE_VTX_,                    // FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX
    D_8082AF50_y_MAP_PAGE_VTX_IN_DUNGEON_SCENE_,     // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE
    D_8082AF74_y_QUEST_PAGE_VTX_,                    // FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX
    D_8082AF78_y_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_, // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE
    D_8082AFB8_y_SAVE_VTX_,                          // FUNC_80823A0C_USAGE_ARG2_SAVE_VTX
};

static s16* D_8082B048_height_[] = {
    D_8082AFC4_height_ITEM_PAGE_VTX_,                     // FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX
    D_8082AFC8_height_EQUIP_PAGE_VTX_,                    // FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX
    D_8082AFCC_height_MAP_PAGE_VTX_IN_DUNGEON_SCENE_,     // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE
    D_8082AFF0_height_QUEST_PAGE_VTX_,                    // FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX
    D_8082AB2C_height_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_, // FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE
    D_8082AFF4_height_SAVE_VTX_,                          // FUNC_80823A0C_USAGE_ARG2_SAVE_VTX
};

static s16 D_8082B060_x_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_bonus_[] = {
    0xFFC6, 0x000B, 0x001E, 0x001E, 0x000F, 0x0026, 0xFFC2, 0x003C, 0x003D, 0xFFB2, 0xFED4,
    0xFFAA, 0xFFBF, 0xFED4, 0xFED4, 0xFFEB, 0x000E, 0x000D, 0x0014, 0xFFDE, 0xFED4, 0x0000,
};

static s16 D_8082B08C_width_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_bonus_[] = {
    0x0059, 0x0014, 0x000E, 0x0023, 0x0020, 0x0011, 0x0032, 0x0010, 0x0015, 0x0014, 0xFFFF,
    0x0020, 0x0010, 0xFFFF, 0xFFFF, 0x0013, 0x0013, 0x0015, 0x0010, 0x0014, 0xFFFF, 0x0000,
};

static s16 D_8082B0B8_y_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_bonus_[] = {
    0x0001, 0x000F, 0x0014, 0x0009, 0xFFE2, 0xFFEF, 0xFFDE, 0x000F, 0x001E, 0x0001, 0xFED4,
    0x002A, 0x0007, 0xFED4, 0xFED4, 0x0018, 0x0024, 0x0035, 0x0025, 0xFFF3, 0xFED4, 0x0000,
};

static s16 D_8082B0E4_height_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_bonus_[] = {
    0x0024, 0x000F, 0x0010, 0x0017, 0x0017, 0x0010, 0x0018, 0x000D, 0x0011, 0x0012, 0x0001,
    0x0019, 0x000D, 0x0001, 0x0001, 0x000D, 0x0015, 0x000F, 0x000D, 0x000C, 0x0001, 0x0000,
};

typedef enum {
    /* 0 */ FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX,
    /* 1 */ FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX,
    /* 2 */ FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE,
    /* 3 */ FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX,
    /* 4 */ FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE,
    /* 5 */ FUNC_80823A0C_USAGE_ARG2_SAVE_VTX
} func_80823A0C_usage_arg2;

s16 func_80823A0C_makeVertices_(PlayState* play, Vtx* vtx, s16 usage_arg2, s16 arg3) {
    static s16 sTradeQuestVtxOffsetY__ = 0;
    static s16 sTradeQuestVtxOffsetTimer__ = 1;
    static s16 sTradeQuestVtxOffsetState__ = 0;
    PauseContext* pauseCtx = &play->pauseCtx;
    s16* ptr1_x_;
    s16* ptr2_width_;
    s16* ptr3_y_;
    s16* ptr4_height_;
    s16 bufI_afterFirstPartDone_;
    s16 x_firstPart_;
    s16 y_firstPart_;
    s16 i;
    s16 j;
    s16 bufI;

    // KaleidoScope_DrawPageSections

    x_firstPart_ = -200;

    for (bufI = 0, j = 0; j < 3; j++) {
        x_firstPart_ += 80;

        for (y_firstPart_ = 80, i = 0; i < 5; i++, bufI += 4, y_firstPart_ -= 32) {
            vtx[bufI + 0].v.ob[0] = vtx[bufI + 2].v.ob[0] = x_firstPart_;

            vtx[bufI + 1].v.ob[0] = vtx[bufI + 3].v.ob[0] = vtx[bufI + 0].v.ob[0] + 80;

            vtx[bufI + 0].v.ob[1] = vtx[bufI + 1].v.ob[1] = y_firstPart_ + pauseCtx->offsetY;

            vtx[bufI + 2].v.ob[1] = vtx[bufI + 3].v.ob[1] = vtx[bufI + 0].v.ob[1] - 32;

            vtx[bufI + 0].v.ob[2] = vtx[bufI + 1].v.ob[2] = vtx[bufI + 2].v.ob[2] = vtx[bufI + 3].v.ob[2] = 0;

            vtx[bufI + 0].v.flag = 0;
            vtx[bufI + 1].v.flag = 0;
            vtx[bufI + 2].v.flag = 0;
            vtx[bufI + 3].v.flag = 0;

            vtx[bufI + 0].v.tc[0] = vtx[bufI + 0].v.tc[1] = vtx[bufI + 1].v.tc[1] = vtx[bufI + 2].v.tc[0] = 0;

            vtx[bufI + 1].v.tc[0] = vtx[bufI + 3].v.tc[0] = 80 * (1 << 5);

            vtx[bufI + 2].v.tc[1] = vtx[bufI + 3].v.tc[1] = 32 * (1 << 5);

            vtx[bufI + 0].v.cn[0] = vtx[bufI + 2].v.cn[0] = D_8082AE48_red[usage_arg2][j + 0];

            vtx[bufI + 0].v.cn[1] = vtx[bufI + 2].v.cn[1] = D_8082AE60_green[usage_arg2][j + 0];

            vtx[bufI + 0].v.cn[2] = vtx[bufI + 2].v.cn[2] = D_8082AE78_blue[usage_arg2][j + 0];

            vtx[bufI + 1].v.cn[0] = vtx[bufI + 3].v.cn[0] = D_8082AE48_red[usage_arg2][j + 1];

            vtx[bufI + 1].v.cn[1] = vtx[bufI + 3].v.cn[1] = D_8082AE60_green[usage_arg2][j + 1];

            vtx[bufI + 1].v.cn[2] = vtx[bufI + 3].v.cn[2] = D_8082AE78_blue[usage_arg2][j + 1];

            vtx[bufI + 0].v.cn[3] = vtx[bufI + 2].v.cn[3] = vtx[bufI + 1].v.cn[3] = vtx[bufI + 3].v.cn[3] =
                pauseCtx->alpha;
        }
    }

    bufI_afterFirstPartDone_ = bufI;

    //

    if (arg3 != 0) {
        ptr1_x_ = D_8082B000_x_[usage_arg2];
        ptr2_width_ = D_8082B018_width_[usage_arg2];
        ptr3_y_ = D_8082B030_y_[usage_arg2];
        ptr4_height_ = D_8082B048_height_[usage_arg2];

        for (j = 0; j < arg3; j++, bufI += 4) {
            vtx[bufI + 2].v.ob[0] = vtx[bufI + 0].v.ob[0] = ptr1_x_[j];

            vtx[bufI + 1].v.ob[0] = vtx[bufI + 3].v.ob[0] = vtx[bufI + 0].v.ob[0] + ptr2_width_[j];

            if (!((pauseCtx->state >= PAUSECTX_STATE_8) && (pauseCtx->state < PAUSECTX_STATE_18_FLIP_PAGES_AND_UNPAUSE))
        /* PAUSECTX_STATE_8, PAUSECTX_STATE_9, PAUSECTX_STATE_10, PAUSECTX_STATE_11, PAUSECTX_STATE_12,
           PAUSECTX_STATE_13, PAUSECTX_STATE_14, PAUSECTX_STATE_15, PAUSECTX_STATE_16, PAUSECTX_STATE_17 */) {
                vtx[bufI + 0].v.ob[1] = vtx[bufI + 1].v.ob[1] = ptr3_y_[j] + pauseCtx->offsetY;
            } else {
                vtx[bufI + 0].v.ob[1] = vtx[bufI + 1].v.ob[1] = YREG(60 + j) + pauseCtx->offsetY;
            }

            vtx[bufI + 2].v.ob[1] = vtx[bufI + 3].v.ob[1] = vtx[bufI + 0].v.ob[1] - ptr4_height_[j];

            vtx[bufI + 0].v.ob[2] = vtx[bufI + 1].v.ob[2] = vtx[bufI + 2].v.ob[2] = vtx[bufI + 3].v.ob[2] = 0;

            vtx[bufI + 0].v.flag = vtx[bufI + 1].v.flag = vtx[bufI + 2].v.flag = vtx[bufI + 3].v.flag = 0;

            vtx[bufI + 0].v.tc[0] = vtx[bufI + 0].v.tc[1] = vtx[bufI + 1].v.tc[1] = vtx[bufI + 2].v.tc[0] = 0;

            vtx[bufI + 1].v.tc[0] = vtx[bufI + 3].v.tc[0] = ptr2_width_[j] << 5;

            vtx[bufI + 2].v.tc[1] = vtx[bufI + 3].v.tc[1] = ptr4_height_[j] << 5;

            vtx[bufI + 0].v.cn[0] = vtx[bufI + 2].v.cn[0] = vtx[bufI + 0].v.cn[1] = vtx[bufI + 2].v.cn[1] =
                vtx[bufI + 0].v.cn[2] = vtx[bufI + 2].v.cn[2] = vtx[bufI + 1].v.cn[0] = vtx[bufI + 3].v.cn[0] =
                    vtx[bufI + 1].v.cn[1] = vtx[bufI + 3].v.cn[1] = vtx[bufI + 1].v.cn[2] = vtx[bufI + 3].v.cn[2] = 255;

            vtx[bufI + 0].v.cn[3] = vtx[bufI + 2].v.cn[3] = vtx[bufI + 1].v.cn[3] = vtx[bufI + 3].v.cn[3] =
                pauseCtx->alpha;
        }

        if (usage_arg2 == FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE) {
            bufI -= 12;

            j = gSaveContext.worldMapArea;

            vtx[bufI + 0].v.ob[0] = vtx[bufI + 2].v.ob[0] = D_8082B060_x_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_bonus_[j];

            if (j) {}

            vtx[bufI + 1].v.ob[0] = vtx[bufI + 3].v.ob[0] =
                vtx[bufI + 0].v.ob[0] + D_8082B08C_width_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_bonus_[j];

            vtx[bufI + 0].v.ob[1] = vtx[bufI + 1].v.ob[1] =
                D_8082B0B8_y_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_bonus_[j] + pauseCtx->offsetY;

            vtx[bufI + 2].v.ob[1] = vtx[bufI + 3].v.ob[1] =
                vtx[bufI + 0].v.ob[1] - D_8082B0E4_height_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE_bonus_[j];

            bufI += 12;

            if (pauseCtx->tradeQuestLocation != 0xFF) {
                if (sTradeQuestVtxOffsetTimer__ == 0) {
                    sTradeQuestVtxOffsetState__++;
                    switch (sTradeQuestVtxOffsetState__) {
                        case 1:
                            sTradeQuestVtxOffsetY__ = 3;
                            sTradeQuestVtxOffsetTimer__ = 8;
                            break;
                        case 2:
                            sTradeQuestVtxOffsetY__ = 0;
                            sTradeQuestVtxOffsetTimer__ = 6;
                            sTradeQuestVtxOffsetState__ = 0;
                            break;
                    }
                } else {
                    sTradeQuestVtxOffsetTimer__--;
                }

                j = bufI_afterFirstPartDone_ + (pauseCtx->tradeQuestLocation * 4) + 64;
                i = bufI_afterFirstPartDone_ + 116;

                vtx[i + 0].v.ob[0] = vtx[i + 2].v.ob[0] = vtx[j + 0].v.ob[0];

                vtx[i + 1].v.ob[0] = vtx[i + 3].v.ob[0] = vtx[i + 0].v.ob[0] + 8;

                vtx[i + 0].v.ob[1] = vtx[i + 1].v.ob[1] = vtx[j + 0].v.ob[1] - sTradeQuestVtxOffsetY__ + 10;

                vtx[i + 0].v.ob[2] = vtx[i + 1].v.ob[2] = vtx[i + 2].v.ob[2] = vtx[i + 3].v.ob[2] = 0;

                vtx[i + 2].v.ob[1] = vtx[i + 3].v.ob[1] = vtx[i + 0].v.ob[1] - 8;

                vtx[i + 0].v.flag = vtx[i + 1].v.flag = vtx[i + 2].v.flag = vtx[i + 3].v.flag = 0;

                vtx[bufI].v.tc[0] = vtx[bufI].v.tc[1] = vtx[i + 1].v.tc[1] = vtx[i + 2].v.tc[0] = 0;

                vtx[i + 1].v.tc[0] = vtx[i + 3].v.tc[0] = 8 * (1 << 5);

                vtx[i + 2].v.tc[1] = vtx[i + 3].v.tc[1] = 8 * (1 << 5);

                vtx[i + 0].v.cn[0] = vtx[i + 2].v.cn[0] = vtx[i + 0].v.cn[1] = vtx[i + 2].v.cn[1] = vtx[i + 0].v.cn[2] =
                    vtx[i + 2].v.cn[2] = vtx[i + 1].v.cn[0] = vtx[i + 3].v.cn[0] = vtx[i + 1].v.cn[1] =
                        vtx[i + 3].v.cn[1] = vtx[i + 1].v.cn[2] = vtx[i + 3].v.cn[2] = 255;

                vtx[i + 0].v.cn[3] = vtx[i + 2].v.cn[3] = vtx[i + 1].v.cn[3] = vtx[i + 3].v.cn[3] = pauseCtx->alpha;
            }
        }
    }

    return bufI;
}

static s16 D_8082B11C[] = { 0, 4, 8, 12, 24, 32, 56 }; // itemVtx

static s16 D_8082B12C_x_equipVtx_[] = { -114, 12, 44, 76 };

static u8 D_8082B134[] = { 1, 5, 9, 13 }; // equipVtx

static s16 D_8082B138_x_questVtx[] = {
    // QUEST_MEDALLION_FOREST-QUEST_HEART_PIECE
    74, 74, 46, 18, 18, 46, -108, -90, -72, -54, -36, -18, -108, -90, -72, -54, -36, -18, 20, 46, 72, -110, -86, -110,
    -54,
    //
    -98, -86, -74, -62, -50, -38, -26, -14, -98, -86, -74, -62, -50, -38, -26, -14, -88, -81, -72, -90, -83, -74
};

static s16 D_8082B198_y_questVtx[] = {
    // QUEST_MEDALLION_FOREST-QUEST_HEART_PIECE
    38, 6, -12, 6, 38, 56, -20, -20, -20, -20, -20, -20, 2, 2, 2, 2, 2, 2, -46, -46, -46, 58, 58, 34, 58,
    //
    -52, -52, -52, -52, -52, -52, -52, -52, -52, -52, -52, -52, -52, -52, -52, -52, 34, 34, 34, 36, 36, 36
};

static s16 D_8082B1F8_width_questVtx_[] = {
    // QUEST_MEDALLION_FOREST-QUEST_HEART_PIECE
    24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 48,
    //
    16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16
};

void KaleidoScope_InitVertices(PlayState* play, GraphicsContext* gfxCtx) {
    PauseContext* pauseCtx = &play->pauseCtx;
    s16 vtx_x_;
    s16 i;
    s16 phi_t2_2_width__;
    s16 j;
    s16 k;
    s16 vtx_y;

    pauseCtx->offsetY = 0;

    if ((pauseCtx->state == PAUSECTX_STATE_4) ||
        (pauseCtx->state >= PAUSECTX_STATE_18_FLIP_PAGES_AND_UNPAUSE) /* PAUSECTX_STATE_18_FLIP_PAGES_AND_UNPAUSE, PAUSECTX_STATE_19_UNPAUSE */ ||
        ((pauseCtx->state == PAUSECTX_STATE_7_SAVE_PROMPT_) && ((pauseCtx->unk_1EC == PAUSECTX_UNK_1EC_2) || (pauseCtx->unk_1EC == PAUSECTX_UNK_1EC_5))) ||
        ((pauseCtx->state >= PAUSECTX_STATE_8) && (pauseCtx->state <= PAUSECTX_STATE_13))
        /* PAUSECTX_STATE_8, PAUSECTX_STATE_9, PAUSECTX_STATE_10, PAUSECTX_STATE_11, PAUSECTX_STATE_12, PAUSECTX_STATE_13 */) {
        pauseCtx->offsetY = 80;
    }

    pauseCtx->itemPageVtx = Graph_Alloc(gfxCtx, ((15 + FUNC_80823A0C_ARG3_ITEM_PAGE_VTX) * 4) * sizeof(Vtx));
    func_80823A0C_makeVertices_(play, pauseCtx->itemPageVtx, FUNC_80823A0C_USAGE_ARG2_ITEM_PAGE_VTX,
                                FUNC_80823A0C_ARG3_ITEM_PAGE_VTX);

    pauseCtx->equipPageVtx = Graph_Alloc(gfxCtx, ((15 + FUNC_80823A0C_ARG3_EQUIP_PAGE_VTX) * 4) * sizeof(Vtx));
    func_80823A0C_makeVertices_(play, pauseCtx->equipPageVtx, FUNC_80823A0C_USAGE_ARG2_EQUIP_PAGE_VTX,
                                FUNC_80823A0C_ARG3_EQUIP_PAGE_VTX);

    if (!sInDungeonScene) {
        pauseCtx->mapPageVtx =
            Graph_Alloc(gfxCtx, ((15 + FUNC_80823A0C_ARG3_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE + 15) * 4) * sizeof(Vtx));
        j = func_80823A0C_makeVertices_(play, pauseCtx->mapPageVtx,
                                        FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE,
                                        FUNC_80823A0C_ARG3_MAP_PAGE_VTX_NOT_IN_DUNGEON_SCENE);

        for (i = 0, vtx_y = 58; i < 15; i++, j += 4, vtx_y -= 9) {
            pauseCtx->mapPageVtx[j + 0].v.ob[0] = pauseCtx->mapPageVtx[j + 2].v.ob[0] = -108;

            pauseCtx->mapPageVtx[j + 1].v.ob[0] = pauseCtx->mapPageVtx[j + 3].v.ob[0] =
                pauseCtx->mapPageVtx[j + 0].v.ob[0] + 216;

            pauseCtx->mapPageVtx[j + 0].v.ob[1] = pauseCtx->mapPageVtx[j + 1].v.ob[1] = vtx_y + pauseCtx->offsetY;

            pauseCtx->mapPageVtx[j + 2].v.ob[1] = pauseCtx->mapPageVtx[j + 3].v.ob[1] =
                pauseCtx->mapPageVtx[j + 0].v.ob[1] - 9;

            pauseCtx->mapPageVtx[j + 0].v.ob[2] = pauseCtx->mapPageVtx[j + 1].v.ob[2] =
                pauseCtx->mapPageVtx[j + 2].v.ob[2] = pauseCtx->mapPageVtx[j + 3].v.ob[2] = 0;

            pauseCtx->mapPageVtx[j + 0].v.flag = pauseCtx->mapPageVtx[j + 1].v.flag =
                pauseCtx->mapPageVtx[j + 2].v.flag = pauseCtx->mapPageVtx[j + 3].v.flag = 0;

            pauseCtx->mapPageVtx[j + 0].v.tc[0] = pauseCtx->mapPageVtx[j + 0].v.tc[1] =
                pauseCtx->mapPageVtx[j + 1].v.tc[1] = pauseCtx->mapPageVtx[j + 2].v.tc[0] = 0;

            pauseCtx->mapPageVtx[j + 1].v.tc[0] = pauseCtx->mapPageVtx[j + 3].v.tc[0] = 216 * (1 << 5);

            pauseCtx->mapPageVtx[j + 2].v.tc[1] = pauseCtx->mapPageVtx[j + 3].v.tc[1] = 9 * (1 << 5);

            pauseCtx->mapPageVtx[j + 0].v.cn[0] = pauseCtx->mapPageVtx[j + 2].v.cn[0] =
                pauseCtx->mapPageVtx[j + 0].v.cn[1] = pauseCtx->mapPageVtx[j + 2].v.cn[1] =
                    pauseCtx->mapPageVtx[j + 0].v.cn[2] = pauseCtx->mapPageVtx[j + 2].v.cn[2] =
                        pauseCtx->mapPageVtx[j + 1].v.cn[0] = pauseCtx->mapPageVtx[j + 3].v.cn[0] =
                            pauseCtx->mapPageVtx[j + 1].v.cn[1] = pauseCtx->mapPageVtx[j + 3].v.cn[1] =
                                pauseCtx->mapPageVtx[j + 1].v.cn[2] = pauseCtx->mapPageVtx[j + 3].v.cn[2] =
                                    pauseCtx->mapPageVtx[j + 0].v.cn[3] = pauseCtx->mapPageVtx[j + 2].v.cn[3] =
                                        pauseCtx->mapPageVtx[j + 1].v.cn[3] = pauseCtx->mapPageVtx[j + 3].v.cn[3] =
                                            pauseCtx->alpha;
        }

        pauseCtx->mapPageVtx[j - 2].v.ob[1] = pauseCtx->mapPageVtx[j - 1].v.ob[1] =
            pauseCtx->mapPageVtx[j - 4].v.ob[1] - 2;

        pauseCtx->mapPageVtx[j - 2].v.tc[1] = pauseCtx->mapPageVtx[j - 1].v.tc[1] = 2 * (1 << 5);
    } else {
        pauseCtx->mapPageVtx =
            Graph_Alloc(gfxCtx, ((15 + FUNC_80823A0C_ARG3_MAP_PAGE_VTX_IN_DUNGEON_SCENE) * 4) * sizeof(Vtx));
        func_80823A0C_makeVertices_(play, pauseCtx->mapPageVtx, FUNC_80823A0C_USAGE_ARG2_MAP_PAGE_VTX_IN_DUNGEON_SCENE,
                                    FUNC_80823A0C_ARG3_MAP_PAGE_VTX_IN_DUNGEON_SCENE);
    }

    pauseCtx->questPageVtx = Graph_Alloc(gfxCtx, ((15 + FUNC_80823A0C_ARG3_QUEST_PAGE_VTX) * 4) * sizeof(Vtx));
    func_80823A0C_makeVertices_(play, pauseCtx->questPageVtx, FUNC_80823A0C_USAGE_ARG2_QUEST_PAGE_VTX,
                                FUNC_80823A0C_ARG3_QUEST_PAGE_VTX);

    pauseCtx->cursorVtx = Graph_Alloc(gfxCtx, 20 * sizeof(Vtx));

    for (i = 0; i < 20; i++) {
        pauseCtx->cursorVtx[i].v.ob[0] = pauseCtx->cursorVtx[i].v.ob[1] = pauseCtx->cursorVtx[i].v.ob[2] = 0;

        pauseCtx->cursorVtx[i].v.flag = 0;

        pauseCtx->cursorVtx[i].v.tc[0] = pauseCtx->cursorVtx[i].v.tc[1] = 0;

        pauseCtx->cursorVtx[i].v.cn[0] = pauseCtx->cursorVtx[i].v.cn[1] = pauseCtx->cursorVtx[i].v.cn[2] =
            pauseCtx->cursorVtx[i].v.cn[3] = 255;
    }

    pauseCtx->cursorVtx[1].v.tc[0] = pauseCtx->cursorVtx[2].v.tc[1] = pauseCtx->cursorVtx[3].v.tc[0] =
        pauseCtx->cursorVtx[3].v.tc[1] = pauseCtx->cursorVtx[5].v.tc[0] = pauseCtx->cursorVtx[6].v.tc[1] =
            pauseCtx->cursorVtx[7].v.tc[0] = pauseCtx->cursorVtx[7].v.tc[1] = pauseCtx->cursorVtx[9].v.tc[0] =
                pauseCtx->cursorVtx[10].v.tc[1] = pauseCtx->cursorVtx[11].v.tc[0] = pauseCtx->cursorVtx[11].v.tc[1] =
                    pauseCtx->cursorVtx[13].v.tc[0] = pauseCtx->cursorVtx[14].v.tc[1] =
                        pauseCtx->cursorVtx[15].v.tc[0] = pauseCtx->cursorVtx[15].v.tc[1] = 16 * (1 << 5);

    pauseCtx->cursorVtx[17].v.tc[0] = pauseCtx->cursorVtx[18].v.tc[1] = pauseCtx->cursorVtx[19].v.tc[0] =
        pauseCtx->cursorVtx[19].v.tc[1] = 32 * (1 << 5);

    pauseCtx->itemVtx = Graph_Alloc(gfxCtx, ((4 * 6 + 3 + 7 * 2) * 4) * sizeof(Vtx));

    for (k = 0, i = 0, vtx_y = 58; k < 4; k++, vtx_y -= 32) {
        for (vtx_x_ = -96, j = 0; j < 6; j++, i += 4, vtx_x_ += 32) {
            pauseCtx->itemVtx[i + 0].v.ob[0] = pauseCtx->itemVtx[i + 2].v.ob[0] = vtx_x_ + 2;

            pauseCtx->itemVtx[i + 1].v.ob[0] = pauseCtx->itemVtx[i + 3].v.ob[0] =
                pauseCtx->itemVtx[i + 0].v.ob[0] + 0x1C;

            pauseCtx->itemVtx[i + 0].v.ob[1] = pauseCtx->itemVtx[i + 1].v.ob[1] = vtx_y + pauseCtx->offsetY - 2;

            pauseCtx->itemVtx[i + 2].v.ob[1] = pauseCtx->itemVtx[i + 3].v.ob[1] =
                pauseCtx->itemVtx[i + 0].v.ob[1] - 0x1C;

            pauseCtx->itemVtx[i + 0].v.ob[2] = pauseCtx->itemVtx[i + 1].v.ob[2] = pauseCtx->itemVtx[i + 2].v.ob[2] =
                pauseCtx->itemVtx[i + 3].v.ob[2] = 0;

            pauseCtx->itemVtx[i + 0].v.flag = pauseCtx->itemVtx[i + 1].v.flag = pauseCtx->itemVtx[i + 2].v.flag =
                pauseCtx->itemVtx[i + 3].v.flag = 0;

            pauseCtx->itemVtx[i + 0].v.tc[0] = pauseCtx->itemVtx[i + 0].v.tc[1] = pauseCtx->itemVtx[i + 1].v.tc[1] =
                pauseCtx->itemVtx[i + 2].v.tc[0] = 0;

            pauseCtx->itemVtx[i + 1].v.tc[0] = pauseCtx->itemVtx[i + 2].v.tc[1] = pauseCtx->itemVtx[i + 3].v.tc[0] =
                pauseCtx->itemVtx[i + 3].v.tc[1] = 32 * (1 << 5);

            pauseCtx->itemVtx[i + 0].v.cn[0] = pauseCtx->itemVtx[i + 1].v.cn[0] = pauseCtx->itemVtx[i + 2].v.cn[0] =
                pauseCtx->itemVtx[i + 3].v.cn[0] = pauseCtx->itemVtx[i + 0].v.cn[1] = pauseCtx->itemVtx[i + 1].v.cn[1] =
                    pauseCtx->itemVtx[i + 2].v.cn[1] = pauseCtx->itemVtx[i + 3].v.cn[1] =
                        pauseCtx->itemVtx[i + 0].v.cn[2] = pauseCtx->itemVtx[i + 1].v.cn[2] =
                            pauseCtx->itemVtx[i + 2].v.cn[2] = pauseCtx->itemVtx[i + 3].v.cn[2] = 255;

            pauseCtx->itemVtx[i + 0].v.cn[3] = pauseCtx->itemVtx[i + 1].v.cn[3] = pauseCtx->itemVtx[i + 2].v.cn[3] =
                pauseCtx->itemVtx[i + 3].v.cn[3] = 255;
        }
    }

    for (j = 1; j < 4; j++, i += 4) {
        if (gSaveContext.equips.cButtonSlots[j - 1] != ITEM_NONE) {
            k = gSaveContext.equips.cButtonSlots[j - 1] * 4;

            pauseCtx->itemVtx[i + 0].v.ob[0] = pauseCtx->itemVtx[i + 2].v.ob[0] = pauseCtx->itemVtx[k].v.ob[0] - 2;

            pauseCtx->itemVtx[i + 1].v.ob[0] = pauseCtx->itemVtx[i + 3].v.ob[0] = pauseCtx->itemVtx[i + 0].v.ob[0] + 32;

            pauseCtx->itemVtx[i + 0].v.ob[1] = pauseCtx->itemVtx[i + 1].v.ob[1] = pauseCtx->itemVtx[k].v.ob[1] + 2;

            pauseCtx->itemVtx[i + 2].v.ob[1] = pauseCtx->itemVtx[i + 3].v.ob[1] = pauseCtx->itemVtx[i + 0].v.ob[1] - 32;

            pauseCtx->itemVtx[i + 0].v.ob[2] = pauseCtx->itemVtx[i + 1].v.ob[2] = pauseCtx->itemVtx[i + 2].v.ob[2] =
                pauseCtx->itemVtx[i + 3].v.ob[2] = 0;

            pauseCtx->itemVtx[i + 0].v.flag = pauseCtx->itemVtx[i + 1].v.flag = pauseCtx->itemVtx[i + 2].v.flag =
                pauseCtx->itemVtx[i + 3].v.flag = 0;

            pauseCtx->itemVtx[i + 0].v.tc[0] = pauseCtx->itemVtx[i + 0].v.tc[1] = pauseCtx->itemVtx[i + 1].v.tc[1] =
                pauseCtx->itemVtx[i + 2].v.tc[0] = 0;

            pauseCtx->itemVtx[i + 1].v.tc[0] = pauseCtx->itemVtx[i + 2].v.tc[1] = pauseCtx->itemVtx[i + 3].v.tc[0] =
                pauseCtx->itemVtx[i + 3].v.tc[1] = 32 * (1 << 5);

            pauseCtx->itemVtx[i + 0].v.cn[0] = pauseCtx->itemVtx[i + 1].v.cn[0] = pauseCtx->itemVtx[i + 2].v.cn[0] =
                pauseCtx->itemVtx[i + 3].v.cn[0] = pauseCtx->itemVtx[i + 0].v.cn[1] = pauseCtx->itemVtx[i + 1].v.cn[1] =
                    pauseCtx->itemVtx[i + 2].v.cn[1] = pauseCtx->itemVtx[i + 3].v.cn[1] =
                        pauseCtx->itemVtx[i + 0].v.cn[2] = pauseCtx->itemVtx[i + 1].v.cn[2] =
                            pauseCtx->itemVtx[i + 2].v.cn[2] = pauseCtx->itemVtx[i + 3].v.cn[2] = 255;

            pauseCtx->itemVtx[i + 0].v.cn[3] = pauseCtx->itemVtx[i + 1].v.cn[3] = pauseCtx->itemVtx[i + 2].v.cn[3] =
                pauseCtx->itemVtx[i + 3].v.cn[3] = pauseCtx->alpha;
        } else {
            pauseCtx->itemVtx[i + 0].v.ob[0] = pauseCtx->itemVtx[i + 2].v.ob[0] = -300;

            pauseCtx->itemVtx[i + 1].v.ob[0] = pauseCtx->itemVtx[i + 3].v.ob[0] = pauseCtx->itemVtx[i + 0].v.ob[0] + 32;

            pauseCtx->itemVtx[i + 0].v.ob[1] = pauseCtx->itemVtx[i + 1].v.ob[1] = 300;

            pauseCtx->itemVtx[i + 2].v.ob[1] = pauseCtx->itemVtx[i + 3].v.ob[1] = pauseCtx->itemVtx[i + 0].v.ob[1] - 32;
        }
    }

    for (i = (4 * 6 + 3) * 4, j = 0; j < 7; j++) {
        k = D_8082B11C[j];

        pauseCtx->itemVtx[i + 0].v.ob[0] = pauseCtx->itemVtx[i + 2].v.ob[0] = pauseCtx->itemVtx[k].v.ob[0];

        pauseCtx->itemVtx[i + 1].v.ob[0] = pauseCtx->itemVtx[i + 3].v.ob[0] = pauseCtx->itemVtx[i + 0].v.ob[0] + 8;

        pauseCtx->itemVtx[i + 0].v.ob[1] = pauseCtx->itemVtx[i + 1].v.ob[1] = pauseCtx->itemVtx[k].v.ob[1] - 22;

        pauseCtx->itemVtx[i + 2].v.ob[1] = pauseCtx->itemVtx[i + 3].v.ob[1] = pauseCtx->itemVtx[i + 0].v.ob[1] - 8;

        pauseCtx->itemVtx[i + 4].v.ob[0] = pauseCtx->itemVtx[i + 6].v.ob[0] = pauseCtx->itemVtx[i + 0].v.ob[0] + 6;

        pauseCtx->itemVtx[i + 5].v.ob[0] = pauseCtx->itemVtx[i + 7].v.ob[0] = pauseCtx->itemVtx[i + 4].v.ob[0] + 8;

        pauseCtx->itemVtx[i + 4].v.ob[1] = pauseCtx->itemVtx[i + 5].v.ob[1] = pauseCtx->itemVtx[i + 0].v.ob[1];

        pauseCtx->itemVtx[i + 6].v.ob[1] = pauseCtx->itemVtx[i + 7].v.ob[1] = pauseCtx->itemVtx[i + 4].v.ob[1] - 8;

        for (k = 0; k < 2; k++, i += 4) {
            pauseCtx->itemVtx[i + 0].v.ob[2] = pauseCtx->itemVtx[i + 1].v.ob[2] = pauseCtx->itemVtx[i + 2].v.ob[2] =
                pauseCtx->itemVtx[i + 3].v.ob[2] = 0;

            pauseCtx->itemVtx[i + 0].v.flag = pauseCtx->itemVtx[i + 1].v.flag = pauseCtx->itemVtx[i + 2].v.flag =
                pauseCtx->itemVtx[i + 3].v.flag = 0;

            pauseCtx->itemVtx[i + 0].v.tc[0] = pauseCtx->itemVtx[i + 0].v.tc[1] = pauseCtx->itemVtx[i + 1].v.tc[1] =
                pauseCtx->itemVtx[i + 2].v.tc[0] = 0;

            pauseCtx->itemVtx[i + 1].v.tc[0] = pauseCtx->itemVtx[i + 2].v.tc[1] = pauseCtx->itemVtx[i + 3].v.tc[0] =
                pauseCtx->itemVtx[i + 3].v.tc[1] = 8 * (1 << 5);

            pauseCtx->itemVtx[i + 0].v.cn[0] = pauseCtx->itemVtx[i + 1].v.cn[0] = pauseCtx->itemVtx[i + 2].v.cn[0] =
                pauseCtx->itemVtx[i + 3].v.cn[0] = pauseCtx->itemVtx[i + 0].v.cn[1] = pauseCtx->itemVtx[i + 1].v.cn[1] =
                    pauseCtx->itemVtx[i + 2].v.cn[1] = pauseCtx->itemVtx[i + 3].v.cn[1] =
                        pauseCtx->itemVtx[i + 0].v.cn[2] = pauseCtx->itemVtx[i + 1].v.cn[2] =
                            pauseCtx->itemVtx[i + 2].v.cn[2] = pauseCtx->itemVtx[i + 3].v.cn[2] = 255;

            pauseCtx->itemVtx[i + 0].v.cn[3] = pauseCtx->itemVtx[i + 1].v.cn[3] = pauseCtx->itemVtx[i + 2].v.cn[3] =
                pauseCtx->itemVtx[i + 3].v.cn[3] = pauseCtx->alpha;
        }
    }

    pauseCtx->equipVtx = Graph_Alloc(gfxCtx, 112 * sizeof(Vtx));

    for (k = 0, i = 0, vtx_y = 58; i < 4; i++, vtx_y -= 32) {
        for (j = 0; j < 4; j++, k += 4) {
            pauseCtx->equipVtx[k + 0].v.ob[0] = pauseCtx->equipVtx[k + 2].v.ob[0] = D_8082B12C_x_equipVtx_[j] + 2;

            pauseCtx->equipVtx[k + 1].v.ob[0] = pauseCtx->equipVtx[k + 3].v.ob[0] =
                pauseCtx->equipVtx[k + 0].v.ob[0] + 28;

            pauseCtx->equipVtx[k + 0].v.ob[1] = pauseCtx->equipVtx[k + 1].v.ob[1] = vtx_y + pauseCtx->offsetY - 2;

            pauseCtx->equipVtx[k + 2].v.ob[1] = pauseCtx->equipVtx[k + 3].v.ob[1] =
                pauseCtx->equipVtx[k + 0].v.ob[1] - 28;

            pauseCtx->equipVtx[k + 0].v.ob[2] = pauseCtx->equipVtx[k + 1].v.ob[2] = pauseCtx->equipVtx[k + 2].v.ob[2] =
                pauseCtx->equipVtx[k + 3].v.ob[2] = 0;

            pauseCtx->equipVtx[k + 0].v.flag = pauseCtx->equipVtx[k + 1].v.flag = pauseCtx->equipVtx[k + 2].v.flag =
                pauseCtx->equipVtx[k + 3].v.flag = 0;

            pauseCtx->equipVtx[k + 0].v.tc[0] = pauseCtx->equipVtx[k + 0].v.tc[1] = pauseCtx->equipVtx[k + 1].v.tc[1] =
                pauseCtx->equipVtx[k + 2].v.tc[0] = 0;

            pauseCtx->equipVtx[k + 1].v.tc[0] = pauseCtx->equipVtx[k + 2].v.tc[1] = pauseCtx->equipVtx[k + 3].v.tc[0] =
                pauseCtx->equipVtx[k + 3].v.tc[1] = 32 * (1 << 5);

            pauseCtx->equipVtx[k + 0].v.cn[0] = pauseCtx->equipVtx[k + 1].v.cn[0] = pauseCtx->equipVtx[k + 2].v.cn[0] =
                pauseCtx->equipVtx[k + 3].v.cn[0] = pauseCtx->equipVtx[k + 0].v.cn[1] =
                    pauseCtx->equipVtx[k + 1].v.cn[1] = pauseCtx->equipVtx[k + 2].v.cn[1] =
                        pauseCtx->equipVtx[k + 3].v.cn[1] = pauseCtx->equipVtx[k + 0].v.cn[2] =
                            pauseCtx->equipVtx[k + 1].v.cn[2] = pauseCtx->equipVtx[k + 2].v.cn[2] =
                                pauseCtx->equipVtx[k + 3].v.cn[2] = 255;

            pauseCtx->equipVtx[k + 0].v.cn[3] = pauseCtx->equipVtx[k + 1].v.cn[3] = pauseCtx->equipVtx[k + 2].v.cn[3] =
                pauseCtx->equipVtx[k + 3].v.cn[3] = pauseCtx->alpha;
        }
    }

    for (j = 0; j < 4; j++, k += 4) {
        if (CUR_EQUIP_VALUE(j) != 0) {
            i = (CUR_EQUIP_VALUE(j) + D_8082B134[j] - 1) * 4;

            pauseCtx->equipVtx[k + 0].v.ob[0] = pauseCtx->equipVtx[k + 2].v.ob[0] = pauseCtx->equipVtx[i].v.ob[0] - 2;

            pauseCtx->equipVtx[k + 1].v.ob[0] = pauseCtx->equipVtx[k + 3].v.ob[0] =
                pauseCtx->equipVtx[k + 0].v.ob[0] + 32;

            pauseCtx->equipVtx[k + 0].v.ob[1] = pauseCtx->equipVtx[k + 1].v.ob[1] = pauseCtx->equipVtx[i].v.ob[1] + 2;

            pauseCtx->equipVtx[k + 2].v.ob[1] = pauseCtx->equipVtx[k + 3].v.ob[1] =
                pauseCtx->equipVtx[k + 0].v.ob[1] - 32;

            pauseCtx->equipVtx[k + 0].v.ob[2] = pauseCtx->equipVtx[k + 1].v.ob[2] = pauseCtx->equipVtx[k + 2].v.ob[2] =
                pauseCtx->equipVtx[k + 3].v.ob[2] = 0;

            pauseCtx->equipVtx[k + 0].v.flag = pauseCtx->equipVtx[k + 1].v.flag = pauseCtx->equipVtx[k + 2].v.flag =
                pauseCtx->equipVtx[k + 3].v.flag = 0;

            pauseCtx->equipVtx[k + 0].v.tc[0] = pauseCtx->equipVtx[k + 0].v.tc[1] = pauseCtx->equipVtx[k + 1].v.tc[1] =
                pauseCtx->equipVtx[k + 2].v.tc[0] = 0;

            pauseCtx->equipVtx[k + 1].v.tc[0] = pauseCtx->equipVtx[k + 2].v.tc[1] = pauseCtx->equipVtx[k + 3].v.tc[0] =
                pauseCtx->equipVtx[k + 3].v.tc[1] = 32 * (1 << 5);

            pauseCtx->equipVtx[k + 0].v.cn[0] = pauseCtx->equipVtx[k + 1].v.cn[0] = pauseCtx->equipVtx[k + 2].v.cn[0] =
                pauseCtx->equipVtx[k + 3].v.cn[0] = pauseCtx->equipVtx[k + 0].v.cn[1] =
                    pauseCtx->equipVtx[k + 1].v.cn[1] = pauseCtx->equipVtx[k + 2].v.cn[1] =
                        pauseCtx->equipVtx[k + 3].v.cn[1] = pauseCtx->equipVtx[k + 0].v.cn[2] =
                            pauseCtx->equipVtx[k + 1].v.cn[2] = pauseCtx->equipVtx[k + 2].v.cn[2] =
                                pauseCtx->equipVtx[k + 3].v.cn[2] = 255;

            pauseCtx->equipVtx[k + 0].v.cn[3] = pauseCtx->equipVtx[k + 1].v.cn[3] = pauseCtx->equipVtx[k + 2].v.cn[3] =
                pauseCtx->equipVtx[k + 3].v.cn[3] = pauseCtx->alpha;
        }
    }

    vtx_x_ = 112;
    vtx_y = 50;
    while (true) {
        pauseCtx->equipVtx[k + 0].v.ob[0] = pauseCtx->equipVtx[k + 2].v.ob[0] = -64;

        pauseCtx->equipVtx[k + 1].v.ob[0] = pauseCtx->equipVtx[k + 3].v.ob[0] = pauseCtx->equipVtx[k + 0].v.ob[0] + 64;

        pauseCtx->equipVtx[k + 0].v.ob[1] = pauseCtx->equipVtx[k + 1].v.ob[1] = vtx_y + pauseCtx->offsetY;

        pauseCtx->equipVtx[k + 2].v.ob[1] = pauseCtx->equipVtx[k + 3].v.ob[1] = pauseCtx->equipVtx[k + 0].v.ob[1] - 32;

        pauseCtx->equipVtx[k + 0].v.ob[2] = pauseCtx->equipVtx[k + 1].v.ob[2] = pauseCtx->equipVtx[k + 2].v.ob[2] =
            pauseCtx->equipVtx[k + 3].v.ob[2] = 0;

        pauseCtx->equipVtx[k + 0].v.flag = pauseCtx->equipVtx[k + 1].v.flag = pauseCtx->equipVtx[k + 2].v.flag =
            pauseCtx->equipVtx[k + 3].v.flag = 0;

        pauseCtx->equipVtx[k + 0].v.tc[0] = pauseCtx->equipVtx[k + 0].v.tc[1] = pauseCtx->equipVtx[k + 1].v.tc[1] =
            pauseCtx->equipVtx[k + 2].v.tc[0] = 0;

        pauseCtx->equipVtx[k + 1].v.tc[0] = pauseCtx->equipVtx[k + 3].v.tc[0] = 64 * (1 << 5);

        pauseCtx->equipVtx[k + 2].v.tc[1] = pauseCtx->equipVtx[k + 3].v.tc[1] = 32 * (1 << 5);

        pauseCtx->equipVtx[k + 0].v.cn[0] = pauseCtx->equipVtx[k + 1].v.cn[0] = pauseCtx->equipVtx[k + 2].v.cn[0] =
            pauseCtx->equipVtx[k + 3].v.cn[0] = pauseCtx->equipVtx[k + 0].v.cn[1] = pauseCtx->equipVtx[k + 1].v.cn[1] =
                pauseCtx->equipVtx[k + 2].v.cn[1] = pauseCtx->equipVtx[k + 3].v.cn[1] =
                    pauseCtx->equipVtx[k + 0].v.cn[2] = pauseCtx->equipVtx[k + 1].v.cn[2] =
                        pauseCtx->equipVtx[k + 2].v.cn[2] = pauseCtx->equipVtx[k + 3].v.cn[2] = 255;

        pauseCtx->equipVtx[k + 0].v.cn[3] = pauseCtx->equipVtx[k + 1].v.cn[3] = pauseCtx->equipVtx[k + 2].v.cn[3] =
            pauseCtx->equipVtx[k + 3].v.cn[3] = pauseCtx->alpha;

        vtx_x_ -= 32;
        vtx_y -= 32;
        if (vtx_x_ < 0) {
            pauseCtx->equipVtx[k + 2].v.ob[1] = pauseCtx->equipVtx[k + 3].v.ob[1] =
                pauseCtx->equipVtx[k + 0].v.ob[1] - 16;

            pauseCtx->equipVtx[k + 2].v.tc[1] = pauseCtx->equipVtx[k + 3].v.tc[1] = 16 * (1 << 5);
            break;
        }

        k += 4;
    }

    pauseCtx->questVtx = Graph_Alloc(gfxCtx, (47 * 4) * sizeof(Vtx));

    for (k = 0, j = 0; j < 47; j++, k += 4) {
        phi_t2_2_width__ = D_8082B1F8_width_questVtx_[j];

        if ((j < QUEST_SONG_MINUET) || (j >= 41)) {
            pauseCtx->questVtx[k + 0].v.ob[0] = pauseCtx->questVtx[k + 2].v.ob[0] = D_8082B138_x_questVtx[j];

            pauseCtx->questVtx[k + 1].v.ob[0] = pauseCtx->questVtx[k + 3].v.ob[0] =
                pauseCtx->questVtx[k + 0].v.ob[0] + D_8082B1F8_width_questVtx_[j];

            pauseCtx->questVtx[k + 0].v.ob[1] = pauseCtx->questVtx[k + 1].v.ob[1] =
                D_8082B198_y_questVtx[j] + pauseCtx->offsetY;

            pauseCtx->questVtx[k + 2].v.ob[1] = pauseCtx->questVtx[k + 3].v.ob[1] =
                pauseCtx->questVtx[k + 0].v.ob[1] - D_8082B1F8_width_questVtx_[j];

            if (j >= 41) {
                pauseCtx->questVtx[k + 1].v.ob[0] = pauseCtx->questVtx[k + 3].v.ob[0] =
                    pauseCtx->questVtx[k + 0].v.ob[0] + 8;

                pauseCtx->questVtx[k + 0].v.ob[1] = pauseCtx->questVtx[k + 1].v.ob[1] =
                    D_8082B198_y_questVtx[j] + pauseCtx->offsetY - 6;

                pauseCtx->questVtx[k + 2].v.ob[1] = pauseCtx->questVtx[k + 3].v.ob[1] =
                    pauseCtx->questVtx[k + 0].v.ob[1] - 16;

                phi_t2_2_width__ = 8;
            }
        } else {
            if ((j >= QUEST_SONG_MINUET) && (j < QUEST_KOKIRI_EMERALD)) {
                phi_t2_2_width__ = 16;
            }

            pauseCtx->questVtx[k + 0].v.ob[0] = pauseCtx->questVtx[k + 2].v.ob[0] = D_8082B138_x_questVtx[j] + 2;

            pauseCtx->questVtx[k + 1].v.ob[0] = pauseCtx->questVtx[k + 3].v.ob[0] =
                pauseCtx->questVtx[k + 0].v.ob[0] + phi_t2_2_width__ - 4;

            pauseCtx->questVtx[k + 0].v.ob[1] = pauseCtx->questVtx[k + 1].v.ob[1] =
                D_8082B198_y_questVtx[j] + pauseCtx->offsetY - 2;

            pauseCtx->questVtx[k + 2].v.ob[1] = pauseCtx->questVtx[k + 3].v.ob[1] =
                pauseCtx->questVtx[k + 0].v.ob[1] - D_8082B1F8_width_questVtx_[j] + 4;
        }

        pauseCtx->questVtx[k + 0].v.ob[2] = pauseCtx->questVtx[k + 1].v.ob[2] = pauseCtx->questVtx[k + 2].v.ob[2] =
            pauseCtx->questVtx[k + 3].v.ob[2] = 0;

        pauseCtx->questVtx[k + 0].v.flag = pauseCtx->questVtx[k + 1].v.flag = pauseCtx->questVtx[k + 2].v.flag =
            pauseCtx->questVtx[k + 3].v.flag = 0;

        pauseCtx->questVtx[k + 0].v.tc[0] = pauseCtx->questVtx[k + 0].v.tc[1] = pauseCtx->questVtx[k + 1].v.tc[1] =
            pauseCtx->questVtx[k + 2].v.tc[0] = 0;

        pauseCtx->questVtx[k + 1].v.tc[0] = pauseCtx->questVtx[k + 3].v.tc[0] = phi_t2_2_width__ << 5;
        pauseCtx->questVtx[k + 2].v.tc[1] = pauseCtx->questVtx[k + 3].v.tc[1] = D_8082B1F8_width_questVtx_[j] << 5;

        pauseCtx->questVtx[k + 0].v.cn[0] = pauseCtx->questVtx[k + 1].v.cn[0] = pauseCtx->questVtx[k + 2].v.cn[0] =
            pauseCtx->questVtx[k + 3].v.cn[0] = pauseCtx->questVtx[k + 0].v.cn[1] = pauseCtx->questVtx[k + 1].v.cn[1] =
                pauseCtx->questVtx[k + 2].v.cn[1] = pauseCtx->questVtx[k + 3].v.cn[1] =
                    pauseCtx->questVtx[k + 0].v.cn[2] = pauseCtx->questVtx[k + 1].v.cn[2] =
                        pauseCtx->questVtx[k + 2].v.cn[2] = pauseCtx->questVtx[k + 3].v.cn[2] = 255;

        pauseCtx->questVtx[k + 0].v.cn[3] = pauseCtx->questVtx[k + 1].v.cn[3] = pauseCtx->questVtx[k + 2].v.cn[3] =
            pauseCtx->questVtx[k + 3].v.cn[3] = pauseCtx->alpha;
    }

    pauseCtx->infoPanelVtx = Graph_Alloc(gfxCtx, 28 * sizeof(Vtx));

    pauseCtx->saveVtx = Graph_Alloc(gfxCtx, ((15 + FUNC_80823A0C_ARG3_SAVE_VTX) * 4) * sizeof(Vtx));
    func_80823A0C_makeVertices_(play, pauseCtx->saveVtx, FUNC_80823A0C_USAGE_ARG2_SAVE_VTX,
                                FUNC_80823A0C_ARG3_SAVE_VTX);
}

void KaleidoScope_DrawGameOver(PlayState* play) {
    GraphicsContext* gfxCtx = play->state.gfxCtx;

    OPEN_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 3122);

    Gfx_SetupDL_39Opa(gfxCtx);

    gDPSetCycleType(POLY_OPA_DISP++, G_CYC_2CYCLE);
    gDPSetRenderMode(POLY_OPA_DISP++, G_RM_PASS, G_RM_XLU_SURF2);
    gDPSetCombineLERP(POLY_OPA_DISP++, TEXEL1, TEXEL0, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, TEXEL0, PRIMITIVE, ENVIRONMENT,
                      COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 80, sColor82ABRed_D_8082AB8C, sColor82ABGreen_D_8082AB90,
                    sColor82ABBlue_D_8082AB94, sColor82ABGameOverPrimAlpha_D_8082AB98);
    gDPSetEnvColor(POLY_OPA_DISP++, sDrawGameOverEnvColorRed_D_8082AB9C, sDrawGameOverEnvColorGreen_D_8082ABA0,
                   sDrawGameOverEnvColorBlue_D_8082ABA4, 255);

    VREG(89) -= 2;

    gDPLoadMultiBlock(POLY_OPA_DISP++, gGameOverP1Tex, 0x0000, G_TX_RENDERTILE, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0,
                      G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                      G_TX_NOLOD);

    gDPLoadMultiBlock(POLY_OPA_DISP++, gGameOverMaskTex, 0x0100, 1, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0,
                      G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, 5, G_TX_NOLOD, G_TX_NOLOD);

    gDPSetTileSize(POLY_OPA_DISP++, 1, 0, VREG(89) & 0x7F, 63 << 2, (31 << 2) + (VREG(89) & 0x7F));

    gSPTextureRectangle(POLY_OPA_DISP++, VREG(87) << 2, VREG(88) << 2, (VREG(87) + 64) << 2, (VREG(88) + 32) << 2,
                        G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

    gDPLoadMultiBlock(POLY_OPA_DISP++, gGameOverP2Tex, 0x0000, G_TX_RENDERTILE, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0,
                      G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                      G_TX_NOLOD);

    gSPTextureRectangle(POLY_OPA_DISP++, (VREG(87) + 64) << 2, VREG(88) << 2, (VREG(87) + 128) << 2,
                        (VREG(88) + 32) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

    gDPLoadMultiBlock(POLY_OPA_DISP++, gGameOverP3Tex, 0x0000, G_TX_RENDERTILE, G_IM_FMT_IA, G_IM_SIZ_8b, 64, 32, 0,
                      G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                      G_TX_NOLOD);
    gSPTextureRectangle(POLY_OPA_DISP++, (VREG(87) + 128) << 2, VREG(88) << 2, (VREG(87) + 192) << 2,
                        (VREG(88) + 32) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

    CLOSE_DISPS(gfxCtx, "../z_kaleido_scope_PAL.c", 3169);
}

void KaleidoScope_Draw(PlayState* play) {
    Input* input = &play->state.input[0];
    PauseContext* pauseCtx = &play->pauseCtx;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;

    OPEN_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 3188);

    pauseCtx->stickRelX = input->rel.stick_x;
    pauseCtx->stickRelY = input->rel.stick_y;

    gSPSegment(POLY_OPA_DISP++, 0x02, interfaceCtx->parameterSegment);
    gSPSegment(POLY_OPA_DISP++, 0x07, pauseCtx->playerSegment);
    gSPSegment(POLY_OPA_DISP++, 0x08, pauseCtx->iconItemSegment);
    gSPSegment(POLY_OPA_DISP++, 0x09, pauseCtx->iconItem24Segment);
    gSPSegment(POLY_OPA_DISP++, 0x0A, pauseCtx->nameSegment);
    gSPSegment(POLY_OPA_DISP++, 0x0C, pauseCtx->iconItemAltSegment);
    gSPSegment(POLY_OPA_DISP++, 0x0D, pauseCtx->iconItemLangSegment);

    if (pauseCtx->debugState == 0) {
        KaleidoScope_SetView(pauseCtx, pauseCtx->eye.x, pauseCtx->eye.y, pauseCtx->eye.z);

        Gfx_SetupDL_42Opa(play->state.gfxCtx);
        KaleidoScope_InitVertices(play, play->state.gfxCtx);
        KaleidoScope_DrawPages(play, play->state.gfxCtx);

        Gfx_SetupDL_42Opa(play->state.gfxCtx);
        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

        KaleidoScope_SetView(pauseCtx, 0.0f, 0.0f, 64.0f);

        if (!((pauseCtx->state >= PAUSECTX_STATE_8) && (pauseCtx->state < PAUSECTX_STATE_18_FLIP_PAGES_AND_UNPAUSE))
        /* PAUSECTX_STATE_8, PAUSECTX_STATE_9, PAUSECTX_STATE_10, PAUSECTX_STATE_11, PAUSECTX_STATE_12,
           PAUSECTX_STATE_13, PAUSECTX_STATE_14, PAUSECTX_STATE_15, PAUSECTX_STATE_16, PAUSECTX_STATE_17 */) {
            KaleidoScope_DrawInfoPanel(play);
        }
    }

    if ((pauseCtx->state >= PAUSECTX_STATE_11) && (pauseCtx->state <= PAUSECTX_STATE_17)
    /* PAUSECTX_STATE_11, PAUSECTX_STATE_12, PAUSECTX_STATE_13, PAUSECTX_STATE_14, PAUSECTX_STATE_15, PAUSECTX_STATE_16, PAUSECTX_STATE_17 */) {
        KaleidoScope_DrawGameOver(play);
    }

    if ((pauseCtx->debugState == 1) || (pauseCtx->debugState == 2)) {
        KaleidoScope_DrawDebugEditor(play);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_kaleido_scope_PAL.c", 3254);
}

void KaleidoScope_GrayOutTextureRGBA32(u32* texture, u16 pixelCount) {
    u32 rgb;
    u16 gray;
    u16 i;

    for (i = 0; i < pixelCount; i++) {
        if ((texture[i] & 0xFFFFFF00) != 0) {
            rgb = texture[i] >> 8;
            gray = ((((rgb & 0xFF0000) >> 16) + ((rgb & 0xFF00) >> 7) + (rgb & 0xFF)) / 7) & 0xFF;

            rgb = gray;
            rgb <<= 8;
            rgb |= gray;
            rgb <<= 8;
            rgb |= gray;

            texture[i] = (rgb << 8) | (texture[i] & 0xFF);
        }
    }
}

void func_808265BC_switchPageToSave___(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;

    pauseCtx->eye.x += D_8082ABAC_pageSwitch_eye_dx_[pauseCtx->mode] * ZREG(46);
    pauseCtx->eye.z += D_8082ABCC_pageSwitch_eye_dz_[pauseCtx->mode] * ZREG(46);
    pauseCtx->unk_1EA += 4 * ZREG(46);

    if (pauseCtx->unk_1EA == (64 * ZREG(47))) {
        func_80084BF4(play, 1);
        gSaveContext.buttonStatus[0] = D_8082AB6C[pauseCtx->pageIndex][0];
        gSaveContext.buttonStatus[1] = D_8082AB6C[pauseCtx->pageIndex][1];
        gSaveContext.buttonStatus[2] = D_8082AB6C[pauseCtx->pageIndex][2];
        gSaveContext.buttonStatus[3] = D_8082AB6C[pauseCtx->pageIndex][3];
        gSaveContext.buttonStatus[4] = D_8082AB6C[pauseCtx->pageIndex][4];
        pauseCtx->pageIndex = D_8082ABEC_modeToNewPageIndex_[pauseCtx->mode];
        pauseCtx->unk_1E4_ps6_ = PAUSE_S6_0_IDLE_;
        pauseCtx->state++; // PAUSECTX_STATE_5 or PAUSECTX_STATE_6
        pauseCtx->alpha = 255;
        Interface_LoadActionLabelB(play, DO_ACTION_SAVE);
    } else if (pauseCtx->unk_1EA == 64) {
        pauseCtx->pageIndex = D_8082ABEC_modeToNewPageIndex_[pauseCtx->mode];
        pauseCtx->mode = (u16)(pauseCtx->pageIndex * 2) + 1;
    }
}

void KaleidoScope_UpdateCursorSize(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;
    s32 temp1;
    s32 temp2;
    s32 temp3;
    s32 temp4;

    if (pauseCtx->cursorSpecialPos == 0) {
        temp1 = -1;
        temp2 = 1;
        temp3 = 14;
        temp4 = 14;
        if (pauseCtx->pageIndex == PAUSE_MAP) {
            if (!sInDungeonScene) {
                temp1 = -6;
                temp2 = 6;
                temp3 = 4;
                temp4 = 4;
            } else if (pauseCtx->cursorSlot[pauseCtx->pageIndex] >= 3) {
                temp1 = -6;
                temp2 = 5;
                temp4 = 7;
                temp3 = 19;
            } else {
                temp1 = -3;
                temp2 = 3;
                temp3 = 13;
                temp4 = 13;
            }
        } else if (pauseCtx->pageIndex == PAUSE_QUEST) {
            temp1 = -4;
            temp2 = 4;
            temp3 = 12;
            temp4 = 12;
            if (pauseCtx->cursorSlot[pauseCtx->pageIndex] == 0x18) {
                temp1 = -2;
                temp2 = 2;
                temp3 = 32;
                temp4 = 32;
            } else if (pauseCtx->cursorSlot[pauseCtx->pageIndex] == 0x17) {
                temp1 = -4;
                temp2 = 4;
                temp4 = 13;
                temp3 = 34;
            } else if (pauseCtx->cursorSlot[pauseCtx->pageIndex] < 6) {
                temp1 = -1;
                temp2 = 1;
                temp3 = 10;
                temp4 = 10;
            } else if ((pauseCtx->cursorSlot[pauseCtx->pageIndex] >= 6) &&
                       (pauseCtx->cursorSlot[pauseCtx->pageIndex] < 0x12)) {
                temp1 = -5;
                temp2 = 3;
                temp3 = 8;
                temp4 = 8;
            }
        }
    } else {
        temp1 = -4;
        temp2 = 4;
        temp3 = 16;
        temp4 = 16;
    }

    pauseCtx->cursorVtx[0].v.ob[0] = pauseCtx->cursorVtx[2].v.ob[0] = pauseCtx->cursorVtx[0].v.ob[0] + temp1;
    pauseCtx->cursorVtx[1].v.ob[0] = pauseCtx->cursorVtx[3].v.ob[0] = pauseCtx->cursorVtx[0].v.ob[0] + 16;
    pauseCtx->cursorVtx[0].v.ob[1] = pauseCtx->cursorVtx[1].v.ob[1] = pauseCtx->cursorVtx[0].v.ob[1] + temp2;
    pauseCtx->cursorVtx[2].v.ob[1] = pauseCtx->cursorVtx[3].v.ob[1] = pauseCtx->cursorVtx[0].v.ob[1] - 16;

    pauseCtx->cursorVtx[4].v.ob[0] = pauseCtx->cursorVtx[6].v.ob[0] = pauseCtx->cursorVtx[0].v.ob[0] + temp3;
    pauseCtx->cursorVtx[5].v.ob[0] = pauseCtx->cursorVtx[7].v.ob[0] = pauseCtx->cursorVtx[4].v.ob[0] + 16;
    pauseCtx->cursorVtx[4].v.ob[1] = pauseCtx->cursorVtx[5].v.ob[1] = pauseCtx->cursorVtx[0].v.ob[1];
    pauseCtx->cursorVtx[6].v.ob[1] = pauseCtx->cursorVtx[7].v.ob[1] = pauseCtx->cursorVtx[4].v.ob[1] - 16;

    pauseCtx->cursorVtx[8].v.ob[0] = pauseCtx->cursorVtx[10].v.ob[0] = pauseCtx->cursorVtx[0].v.ob[0];
    pauseCtx->cursorVtx[9].v.ob[0] = pauseCtx->cursorVtx[11].v.ob[0] = pauseCtx->cursorVtx[8].v.ob[0] + 16;
    pauseCtx->cursorVtx[8].v.ob[1] = pauseCtx->cursorVtx[9].v.ob[1] = pauseCtx->cursorVtx[0].v.ob[1] - temp4;
    pauseCtx->cursorVtx[10].v.ob[1] = pauseCtx->cursorVtx[11].v.ob[1] = pauseCtx->cursorVtx[8].v.ob[1] - 16;

    pauseCtx->cursorVtx[12].v.ob[0] = pauseCtx->cursorVtx[14].v.ob[0] = pauseCtx->cursorVtx[0].v.ob[0] + temp3;
    pauseCtx->cursorVtx[13].v.ob[0] = pauseCtx->cursorVtx[15].v.ob[0] = pauseCtx->cursorVtx[12].v.ob[0] + 16;
    pauseCtx->cursorVtx[12].v.ob[1] = pauseCtx->cursorVtx[13].v.ob[1] = pauseCtx->cursorVtx[0].v.ob[1] - temp4;
    pauseCtx->cursorVtx[14].v.ob[1] = pauseCtx->cursorVtx[15].v.ob[1] = pauseCtx->cursorVtx[12].v.ob[1] - 16;
}

void KaleidoScope_LoadDungeonMap(PlayState* play) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    s32 pad;

    DmaMgr_SendRequest1(interfaceCtx->mapSegment,
                        (uintptr_t)_map_48x85_staticSegmentRomStart + (R_MAP_TEX_INDEX * 2040), 2040,
                        "../z_kaleido_scope_PAL.c", 3467);

    DmaMgr_SendRequest1(interfaceCtx->mapSegment + 0x800,
                        (uintptr_t)_map_48x85_staticSegmentRomStart + ((R_MAP_TEX_INDEX + 1) * 2040), 2040,
                        "../z_kaleido_scope_PAL.c", 3471);
}

void KaleidoScope_UpdateDungeonMap(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;

    osSyncPrintf("ＭＡＰ ＤＭＡ = %d\n", play->interfaceCtx.mapPaletteIndex);

    KaleidoScope_LoadDungeonMap(play);
    Map_SetFloorPalettesData(play, pauseCtx->dungeonMapSlot - 3);

    if ((play->sceneId >= SCENE_YDAN) && (play->sceneId <= SCENE_TAKARAYA)) {
        if ((VREG(30) + 3) == pauseCtx->cursorPoint[PAUSE_MAP]) {
            KaleidoScope_OverridePalIndexCI4(interfaceCtx->mapSegment, 2040, interfaceCtx->mapPaletteIndex, 14);
        }
    }

    if ((play->sceneId >= SCENE_YDAN) && (play->sceneId <= SCENE_TAKARAYA)) {
        if ((VREG(30) + 3) == pauseCtx->cursorPoint[PAUSE_MAP]) {
            KaleidoScope_OverridePalIndexCI4(interfaceCtx->mapSegment + 0x800, 2040, interfaceCtx->mapPaletteIndex, 14);
        }
    }
}

void KaleidoScope_Update(PlayState* play) {
    static s16 D_8082B258_sState66NextState_ = PAUSE_S6_0_IDLE_;
    static s16 D_8082B25C_sState66NextStateTimer_ = 10;
    static s16 sTimer_D_8082B260 = 0;
    PauseContext* pauseCtx = &play->pauseCtx;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    GameOverContext* gameOverCtx = &play->gameOverCtx;
    Player* player = GET_PLAYER(play);
    Input* input = &play->state.input[0];
    u32 size;
    u32 size0;
    u32 size1;
    u32 size2;
    u16 i;
    s16 stepR;
    s16 stepG;
    s16 stepB;
    s16 stepA;
    s32 pad;

    if ((R_PAUSE_MENU_MODE >= 3) && (((pauseCtx->state >= PAUSECTX_STATE_4) &&
                                      (pauseCtx->state <= PAUSECTX_STATE_7_SAVE_PROMPT_)) /* PAUSECTX_STATE_4, PAUSECTX_STATE_5,
                                                                                PAUSECTX_STATE_6, PAUSECTX_STATE_7_SAVE_PROMPT_ */
                            || ((pauseCtx->state >= PAUSECTX_STATE_10) && (pauseCtx
                                                                                        ->state <= PAUSECTX_STATE_18_FLIP_PAGES_AND_UNPAUSE)) 
        /* PAUSECTX_STATE_10, PAUSECTX_STATE_11, PAUSECTX_STATE_12, PAUSECTX_STATE_13, PAUSECTX_STATE_14, PAUSECTX_STATE_15, PAUSECTX_STATE_16, PAUSECTX_STATE_17, PAUSECTX_STATE_18_FLIP_PAGES_AND_UNPAUSE */)) {

        if ((!pauseCtx->unk_1E4_ps6_ /* PAUSE_S6_0_IDLE_ */ ||
             (pauseCtx->unk_1E4_ps6_ == PAUSE_S6_8_PLAYBACK_SONG_READY_)) &&
            (pauseCtx->state == PAUSECTX_STATE_6)) {
            pauseCtx->stickRelX = input->rel.stick_x;
            pauseCtx->stickRelY = input->rel.stick_y;
            KaleidoScope_UpdateCursorSize(play);
            KaleidoScope_HandlePageToggles(pauseCtx, input);
        } else if ((pauseCtx->pageIndex == PAUSE_QUEST) &&
                   ((pauseCtx->unk_1E4_ps6_ < PAUSE_S6_3) /* PAUSE_S6_0_IDLE_, PAUSE_S6_1, PAUSE_S6_2_PLAYBACK_SONG_ */
                    || (pauseCtx->unk_1E4_ps6_ == PAUSE_S6_5_PLAYER_PLAYING_SONG_))) {
            KaleidoScope_UpdateCursorSize(play);
        }

        if (pauseCtx->state == PAUSECTX_STATE_6) {
            KaleidoScope_UpdateNamePanel(play);
        }
    }

    switch (pauseCtx->state) {
        case PAUSECTX_STATE_3:
            D_808321A8[0] = gSaveContext.buttonStatus[0];
            D_808321A8[1] = gSaveContext.buttonStatus[1];
            D_808321A8[2] = gSaveContext.buttonStatus[2];
            D_808321A8[3] = gSaveContext.buttonStatus[3];
            D_808321A8[4] = gSaveContext.buttonStatus[4];

            pauseCtx->cursorX[PAUSE_MAP] = 0;
            pauseCtx->cursorSlot[PAUSE_MAP] = pauseCtx->cursorPoint[PAUSE_MAP] = pauseCtx->dungeonMapSlot =
                VREG(30) + 3;

            WREG(16) = -175;
            WREG(17) = 155;

            pauseCtx->rotXorZ_unk_204 = -314.0f;

            //! @bug messed up alignment, should match `ALIGN64`
            pauseCtx->playerSegment = (void*)(((uintptr_t)play->objectCtx.spaceStart + 0x30) & ~0x3F);

            size1 = func_80091738(play, pauseCtx->playerSegment, &pauseCtx->playerSkelAnime);
            osSyncPrintf("プレイヤー size1＝%x\n", size1);

            pauseCtx->iconItemSegment = (void*)ALIGN16((uintptr_t)pauseCtx->playerSegment + size1);

            size0 = (uintptr_t)_icon_item_staticSegmentRomEnd - (uintptr_t)_icon_item_staticSegmentRomStart;
            osSyncPrintf("icon_item size0=%x\n", size0);
            DmaMgr_SendRequest1(pauseCtx->iconItemSegment, (uintptr_t)_icon_item_staticSegmentRomStart, size0,
                                "../z_kaleido_scope_PAL.c", 3662);

            gSegments[8] = VIRTUAL_TO_PHYSICAL(pauseCtx->iconItemSegment);

            for (i = 0; i < ARRAY_COUNTU(gItemAgeReqs); i++) {
                if ((gItemAgeReqs[i] != 9) && (gItemAgeReqs[i] != ((void)0, gSaveContext.linkAge))) {
                    KaleidoScope_GrayOutTextureRGBA32(SEGMENTED_TO_VIRTUAL(gItemIcons[i]), 0x400);
                }
            }

            pauseCtx->iconItem24Segment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItemSegment + size0);

            size = (uintptr_t)_icon_item_24_staticSegmentRomEnd - (uintptr_t)_icon_item_24_staticSegmentRomStart;
            osSyncPrintf("icon_item24 size=%x\n", size);
            DmaMgr_SendRequest1(pauseCtx->iconItem24Segment, (uintptr_t)_icon_item_24_staticSegmentRomStart, size,
                                "../z_kaleido_scope_PAL.c", 3675);

            pauseCtx->iconItemAltSegment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItem24Segment + size);

            switch (play->sceneId) {
                case SCENE_YDAN:
                case SCENE_DDAN:
                case SCENE_BDAN:
                case SCENE_BMORI1:
                case SCENE_HIDAN:
                case SCENE_MIZUSIN:
                case SCENE_JYASINZOU:
                case SCENE_HAKADAN:
                case SCENE_HAKADANCH:
                case SCENE_ICE_DOUKUTO:
                case SCENE_YDAN_BOSS:
                case SCENE_DDAN_BOSS:
                case SCENE_BDAN_BOSS:
                case SCENE_MORIBOSSROOM:
                case SCENE_FIRE_BS:
                case SCENE_MIZUSIN_BS:
                case SCENE_JYASINBOSS:
                case SCENE_HAKADAN_BS:
                    sInDungeonScene = true;
                    size2 = (uintptr_t)_icon_item_dungeon_staticSegmentRomEnd -
                            (uintptr_t)_icon_item_dungeon_staticSegmentRomStart;
                    osSyncPrintf("icon_item_dungeon dungeon-size2=%x\n", size2);
                    DmaMgr_SendRequest1(pauseCtx->iconItemAltSegment,
                                        (uintptr_t)_icon_item_dungeon_staticSegmentRomStart, size2,
                                        "../z_kaleido_scope_PAL.c", 3712);

                    interfaceCtx->mapPalette[28] = 6;
                    interfaceCtx->mapPalette[29] = 99;
                    KaleidoScope_UpdateDungeonMap(play);
                    break;

                default:
                    sInDungeonScene = false;
                    size2 = (uintptr_t)_icon_item_field_staticSegmentRomEnd -
                            (uintptr_t)_icon_item_field_staticSegmentRomStart;
                    osSyncPrintf("icon_item_field field-size2=%x\n", size2);
                    DmaMgr_SendRequest1(pauseCtx->iconItemAltSegment, (uintptr_t)_icon_item_field_staticSegmentRomStart,
                                        size2, "../z_kaleido_scope_PAL.c", 3726);
                    break;
            }

            pauseCtx->iconItemLangSegment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItemAltSegment + size2);

            if (gSaveContext.language == LANGUAGE_ENG) {
                size = (uintptr_t)_icon_item_nes_staticSegmentRomEnd - (uintptr_t)_icon_item_nes_staticSegmentRomStart;
                osSyncPrintf("icon_item_dungeon dungeon-size=%x\n", size);
                DmaMgr_SendRequest1(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_nes_staticSegmentRomStart,
                                    size, "../z_kaleido_scope_PAL.c", 3739);
            } else if (gSaveContext.language == LANGUAGE_GER) {
                size = (uintptr_t)_icon_item_ger_staticSegmentRomEnd - (uintptr_t)_icon_item_ger_staticSegmentRomStart;
                osSyncPrintf("icon_item_dungeon dungeon-size=%x\n", size);
                DmaMgr_SendRequest1(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_ger_staticSegmentRomStart,
                                    size, "../z_kaleido_scope_PAL.c", 3746);
            } else {
                size = (uintptr_t)_icon_item_fra_staticSegmentRomEnd - (uintptr_t)_icon_item_fra_staticSegmentRomStart;
                osSyncPrintf("icon_item_dungeon dungeon-size=%x\n", size);
                DmaMgr_SendRequest1(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_fra_staticSegmentRomStart,
                                    size, "../z_kaleido_scope_PAL.c", 3753);
            }

            pauseCtx->nameSegment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItemLangSegment + size);

            osSyncPrintf("サイズ＝%x\n", size2 + size1 + size0 + size);
            osSyncPrintf("item_name I_N_PT=%x\n", 0x800);
            Interface_SetDoAction(play, DO_ACTION_DECIDE);
            osSyncPrintf("サイズ＝%x\n", size2 + size1 + size0 + size + 0x800);

            if (((void)0, gSaveContext.worldMapArea) < 22) {
                if (gSaveContext.language == LANGUAGE_ENG) {
                    DmaMgr_SendRequest1(pauseCtx->nameSegment + 0x400,
                                        (uintptr_t)_map_name_staticSegmentRomStart +
                                            (((void)0, gSaveContext.worldMapArea) * 0xA00) + 0x9000,
                                        0xA00, "../z_kaleido_scope_PAL.c", 3776);
                } else if (gSaveContext.language == LANGUAGE_GER) {
                    DmaMgr_SendRequest1(pauseCtx->nameSegment + 0x400,
                                        (uintptr_t)_map_name_staticSegmentRomStart +
                                            (((void)0, gSaveContext.worldMapArea) * 0xA00) + 0x16C00,
                                        0xA00, "../z_kaleido_scope_PAL.c", 3780);
                } else {
                    DmaMgr_SendRequest1(pauseCtx->nameSegment + 0x400,
                                        (uintptr_t)_map_name_staticSegmentRomStart +
                                            (((void)0, gSaveContext.worldMapArea) * 0xA00) + 0x24800,
                                        0xA00, "../z_kaleido_scope_PAL.c", 3784);
                }
            }

            sPreRenderCvg = (void*)ALIGN16((uintptr_t)pauseCtx->nameSegment + 0x400 + 0xA00);

            PreRender_Init(&sPlayerPreRender);
            PreRender_SetValuesSave(&sPlayerPreRender, PAUSE_EQUIP_PLAYER_WIDTH, PAUSE_EQUIP_PLAYER_HEIGHT,
                                    pauseCtx->playerSegment, NULL, sPreRenderCvg);

            KaleidoScope_DrawPlayerWork(play);
            KaleidoScope_SetupPlayerPreRender(play);

            for (i = 0; i < ARRAY_COUNT(pauseCtx->worldMapPoints); i++) {
                pauseCtx->worldMapPoints[i] = 0;
            }

            if (CHECK_QUEST_ITEM(QUEST_GERUDO_CARD)) {
                pauseCtx->worldMapPoints[0] = 2;
            }

            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_SPIRIT)) {
                pauseCtx->worldMapPoints[0] = 1;
            }

            if (INV_CONTENT(ITEM_LONGSHOT) == ITEM_LONGSHOT) {
                pauseCtx->worldMapPoints[1] = 2;
            }

            if (CHECK_QUEST_ITEM(QUEST_GERUDO_CARD)) {
                pauseCtx->worldMapPoints[1] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_B2)) {
                pauseCtx->worldMapPoints[2] = 1;
            }

            if (INV_CONTENT(ITEM_LONGSHOT) == ITEM_LONGSHOT) {
                pauseCtx->worldMapPoints[2] = 2;
            }

            if (CHECK_QUEST_ITEM(QUEST_GERUDO_CARD)) {
                pauseCtx->worldMapPoints[2] = 1;
            }

            if (CUR_UPG_VALUE(UPG_SCALE)) {
                pauseCtx->worldMapPoints[3] = 1;
            }

            if (CHECK_OWNED_EQUIP(EQUIP_TYPE_BOOTS, EQUIP_INV_BOOTS_IRON)) {
                pauseCtx->worldMapPoints[3] = 2;
            }

            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_WATER)) {
                pauseCtx->worldMapPoints[3] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_09)) {
                pauseCtx->worldMapPoints[4] = 1;
            }

            if (INV_CONTENT(ITEM_OCARINA_FAIRY) != ITEM_NONE) {
                pauseCtx->worldMapPoints[4] = 2;
            }

            if (CHECK_QUEST_ITEM(QUEST_SONG_EPONA)) {
                pauseCtx->worldMapPoints[4] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_6A)) {
                pauseCtx->worldMapPoints[4] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_18)) {
                pauseCtx->worldMapPoints[4] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_09)) {
                pauseCtx->worldMapPoints[5] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
                pauseCtx->worldMapPoints[5] = 1;
            }

            if (INV_CONTENT(ITEM_OCARINA_TIME) == ITEM_OCARINA_TIME) {
                pauseCtx->worldMapPoints[5] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_45)) {
                pauseCtx->worldMapPoints[5] = 1;
            }

            if (INV_CONTENT(ITEM_ARROW_LIGHT) == ITEM_ARROW_LIGHT) {
                pauseCtx->worldMapPoints[5] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_09)) {
                pauseCtx->worldMapPoints[6] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_40)) {
                pauseCtx->worldMapPoints[7] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_25)) {
                pauseCtx->worldMapPoints[7] = 1;
            }

            if (INV_CONTENT(ITEM_HOOKSHOT) == ITEM_HOOKSHOT) {
                pauseCtx->worldMapPoints[7] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_49)) {
                pauseCtx->worldMapPoints[7] = 1;
            }

            if (gBitFlags[1] & gSaveContext.worldMapAreaData) {
                pauseCtx->worldMapPoints[8] = 1;
            }

            if (CHECK_QUEST_ITEM(QUEST_SONG_LULLABY)) {
                pauseCtx->worldMapPoints[8] = 2;
            }

            if (CHECK_QUEST_ITEM(QUEST_SONG_SUN)) {
                pauseCtx->worldMapPoints[8] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_45)) {
                pauseCtx->worldMapPoints[8] = 2;
            }

            if (INV_CONTENT(ITEM_HOOKSHOT) == ITEM_HOOKSHOT) {
                pauseCtx->worldMapPoints[8] = 1;
            }

            if (CHECK_QUEST_ITEM(QUEST_SONG_STORMS)) {
                pauseCtx->worldMapPoints[8] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_67)) {
                pauseCtx->worldMapPoints[8] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_AA)) {
                pauseCtx->worldMapPoints[8] = 2;
            }

            if (CHECK_QUEST_ITEM(QUEST_MEDALLION_SHADOW)) {
                pauseCtx->worldMapPoints[8] = 1;
            }

            if (gBitFlags[10] & gSaveContext.worldMapAreaData) {
                pauseCtx->worldMapPoints[9] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_0F)) {
                pauseCtx->worldMapPoints[9] = 2;
            }

            if (CHECK_QUEST_ITEM(QUEST_SONG_SARIA)) {
                pauseCtx->worldMapPoints[9] = 1;
            }

            if (INV_CONTENT(ITEM_HOOKSHOT) == ITEM_HOOKSHOT) {
                pauseCtx->worldMapPoints[9] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_48)) {
                pauseCtx->worldMapPoints[9] = 1;
            }

            pauseCtx->worldMapPoints[10] = 2;

            if (GET_EVENTCHKINF(EVENTCHKINF_09)) {
                pauseCtx->worldMapPoints[10] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_6E)) {
                pauseCtx->worldMapPoints[10] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_0F)) {
                pauseCtx->worldMapPoints[10] = 1;
            }

            if (CHECK_QUEST_ITEM(QUEST_SONG_LULLABY)) {
                pauseCtx->worldMapPoints[11] = 1;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_25)) {
                pauseCtx->worldMapPoints[11] = 2;
            }

            if (GET_EVENTCHKINF(EVENTCHKINF_37)) {
                pauseCtx->worldMapPoints[11] = 1;
            }

            if (INV_CONTENT(ITEM_HOOKSHOT) == ITEM_HOOKSHOT) {
                pauseCtx->worldMapPoints[11] = 2;
            }

            if (CHECK_OWNED_EQUIP(EQUIP_TYPE_BOOTS, EQUIP_INV_BOOTS_IRON)) {
                pauseCtx->worldMapPoints[11] = 1;
            }

            pauseCtx->tradeQuestLocation = 0xFF;

            i = INV_CONTENT(ITEM_TRADE_ADULT);
            if (LINK_AGE_IN_YEARS == YEARS_ADULT) {
                if ((i <= ITEM_POCKET_CUCCO) || (i == ITEM_ODD_MUSHROOM)) {
                    pauseCtx->tradeQuestLocation = 8;
                }
                if ((i == ITEM_COJIRO) || (i == ITEM_ODD_POTION)) {
                    pauseCtx->tradeQuestLocation = 9;
                }
                if (i == ITEM_SAW) {
                    pauseCtx->tradeQuestLocation = 2;
                }
                if ((i == ITEM_SWORD_BROKEN) || (i == ITEM_EYEDROPS)) {
                    pauseCtx->tradeQuestLocation = 7;
                }
                if (i == ITEM_PRESCRIPTION) {
                    pauseCtx->tradeQuestLocation = 11;
                }
                if (i == ITEM_FROG) {
                    pauseCtx->tradeQuestLocation = 3;
                }
                if ((i == ITEM_CLAIM_CHECK) && (gSaveContext.bgsFlag == 0)) {
                    pauseCtx->tradeQuestLocation = 7;
                }
            }

            pauseCtx->state = PAUSECTX_STATE_4;
            break;

        case PAUSECTX_STATE_4:
            if (pauseCtx->rotXpauseItem_unk_1F4 == 160.0f) {
                KaleidoScope_SetDefaultCursor(play);
                KaleidoScope_ProcessPlayerPreRender();
            }

            pauseCtx->rotXpauseItem_unk_1F4 = pauseCtx->rotPauseEquip_unk_1F8 = pauseCtx->rotPauseMap_unk_1FC =
                pauseCtx->rotPauseQuest_unk_200 -= 160.0f / WREG(6);
            pauseCtx->infoPanelOffsetY += 40 / WREG(6);
            interfaceCtx->startAlpha += 255 / WREG(6);
            WREG(16) += WREG(25) / WREG(6);
            WREG(17) += WREG(26) / WREG(6);
            XREG(5) += 150 / WREG(6);
            pauseCtx->alpha += (u16)(255 / (WREG(6) + WREG(4)));

            if (pauseCtx->rotXpauseItem_unk_1F4 == 0) {
                interfaceCtx->startAlpha = 255;
                WREG(2) = 0;
                pauseCtx->state = PAUSECTX_STATE_5;
            }

            func_808265BC_switchPageToSave___(play);
            break;

        case PAUSECTX_STATE_5:
            pauseCtx->alpha += (u16)(255 / (WREG(6) + WREG(4)));
            func_808265BC_switchPageToSave___(play);
            if (pauseCtx->state == PAUSECTX_STATE_6) {
                KaleidoScope_UpdateNamePanel(play);
            }
            break;

        case PAUSECTX_STATE_6:
            switch (pauseCtx->unk_1E4_ps6_) {
                case PAUSE_S6_0_IDLE_:
                    if (CHECK_BTN_ALL(input->press.button, BTN_START)) {
                        Interface_SetDoAction(play, DO_ACTION_NONE);
                        pauseCtx->state = PAUSECTX_STATE_18_FLIP_PAGES_AND_UNPAUSE;
                        WREG(2) = -6240;
                        func_800F64E0(0);
                    } else if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
                        pauseCtx->mode = 0;
                        pauseCtx->promptChoice = 0;
                        Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                            gSaveContext.buttonStatus[3] = BTN_DISABLED;
                        gSaveContext.buttonStatus[4] = BTN_ENABLED;
                        gSaveContext.unk_13EA = 0;
                        Interface_ChangeAlpha(50);
                        pauseCtx->unk_1EC = PAUSECTX_UNK_1EC_0;
                        pauseCtx->state = PAUSECTX_STATE_7_SAVE_PROMPT_;
                    }
                    break;

                case PAUSE_S6_1:
                    func_808237B4(play, play->state.input);
                    break;

                case PAUSE_S6_2_PLAYBACK_SONG_:
                    pauseCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
                    if (pauseCtx->ocarinaStaff->state == 0) {
                        // Song playback is finished
                        pauseCtx->unk_1E4_ps6_ = PAUSE_S6_4_PLAYER_PLAYING_SONG_INIT_;
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                    }
                    break;

                case PAUSE_S6_3:
                    KaleidoScope_UpdateItemEquip(play);
                    break;

                case PAUSE_S6_4_PLAYER_PLAYING_SONG_INIT_:
                    break;

                case PAUSE_S6_5_PLAYER_PLAYING_SONG_:
                    pauseCtx->ocarinaStaff = AudioOcarina_GetPlayingStaff();

                    if (CHECK_BTN_ALL(input->press.button, BTN_START)) {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                        Interface_SetDoAction(play, DO_ACTION_NONE);
                        pauseCtx->state = PAUSECTX_STATE_18_FLIP_PAGES_AND_UNPAUSE;
                        WREG(2) = -6240;
                        func_800F64E0(0);
                        pauseCtx->unk_1E4_ps6_ = PAUSE_S6_0_IDLE_;
                        break;
                    } else if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                        pauseCtx->unk_1E4_ps6_ = PAUSE_S6_0_IDLE_;
                        pauseCtx->mode = 0;
                        pauseCtx->promptChoice = 0;
                        Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                            gSaveContext.buttonStatus[3] = BTN_DISABLED;
                        gSaveContext.buttonStatus[4] = BTN_ENABLED;
                        gSaveContext.unk_13EA = 0;
                        Interface_ChangeAlpha(50);
                        pauseCtx->unk_1EC = PAUSECTX_UNK_1EC_0;
                        pauseCtx->state = PAUSECTX_STATE_7_SAVE_PROMPT_;
                    } else if (pauseCtx->ocarinaStaff->state == pauseCtx->ocarinaSongIdx) {
                        // The player successfully played the song

                        Audio_PlaySfxGeneral(NA_SE_SY_TRE_BOX_APPEAR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                        D_8082B258_sState66NextState_ = PAUSE_S6_0_IDLE_;
                        D_8082B25C_sState66NextStateTimer_ = 30;
                        pauseCtx->unk_1E4_ps6_ = PAUSE_S6_6;
                    } else if (pauseCtx->ocarinaStaff->state == 0xFF) {
                        // The player failed to play the song

                        Audio_PlaySfxGeneral(NA_SE_SY_OCARINA_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                        D_8082B258_sState66NextState_ = PAUSE_S6_4_PLAYER_PLAYING_SONG_INIT_;
                        D_8082B25C_sState66NextStateTimer_ = 20;
                        pauseCtx->unk_1E4_ps6_ = PAUSE_S6_6;
                    }
                    break;

                case PAUSE_S6_6:
                    D_8082B25C_sState66NextStateTimer_--;
                    if (D_8082B25C_sState66NextStateTimer_ == 0) {
                        pauseCtx->unk_1E4_ps6_ = D_8082B258_sState66NextState_;
                        if (pauseCtx->unk_1E4_ps6_ == PAUSE_S6_0_IDLE_) {
                            AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                        }
                    }
                    break;

                case PAUSE_S6_7:
                    break;

                case PAUSE_S6_8_PLAYBACK_SONG_READY_:
                    if (CHECK_BTN_ALL(input->press.button, BTN_START)) {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                        Interface_SetDoAction(play, DO_ACTION_NONE);
                        pauseCtx->state = PAUSECTX_STATE_18_FLIP_PAGES_AND_UNPAUSE;
                        WREG(2) = -6240;
                        func_800F64E0(0);
                        pauseCtx->unk_1E4_ps6_ = PAUSE_S6_0_IDLE_;
                    } else if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                        pauseCtx->unk_1E4_ps6_ = PAUSE_S6_0_IDLE_;
                        pauseCtx->mode = 0;
                        pauseCtx->promptChoice = 0;
                        Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                            gSaveContext.buttonStatus[3] = BTN_DISABLED;
                        gSaveContext.buttonStatus[4] = BTN_ENABLED;
                        gSaveContext.unk_13EA = 0;
                        Interface_ChangeAlpha(50);
                        pauseCtx->unk_1EC = PAUSECTX_UNK_1EC_0;
                        pauseCtx->state = PAUSECTX_STATE_7_SAVE_PROMPT_;
                    }
                    break;

                case PAUSE_S6_9_PLAYBACK_SONG_START_:
                    break;

                default:
                    pauseCtx->unk_1E4_ps6_ = PAUSE_S6_0_IDLE_;
                    break;
            }
            break;

        case PAUSECTX_STATE_7_SAVE_PROMPT_:
            switch (pauseCtx->unk_1EC) {
                case PAUSECTX_UNK_1EC_0:
                    pauseCtx->rotXorZ_unk_204 -= 314.0f / WREG(6);
                    WREG(16) -= WREG(25) / WREG(6);
                    WREG(17) -= WREG(26) / WREG(6);
                    if (pauseCtx->rotXorZ_unk_204 <= -628.0f) {
                        pauseCtx->rotXorZ_unk_204 = -628.0f;
                        pauseCtx->unk_1EC = PAUSECTX_UNK_1EC_1;
                    }
                    break;

                case PAUSECTX_UNK_1EC_1:
                    if (CHECK_BTN_ALL(input->press.button, BTN_A)) {
                        if (pauseCtx->promptChoice != 0) {
                            Interface_SetDoAction(play, DO_ACTION_NONE);
                            gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                                gSaveContext.buttonStatus[3] = BTN_ENABLED;
                            gSaveContext.unk_13EA = 0;
                            Interface_ChangeAlpha(50);
                            pauseCtx->unk_1EC = PAUSECTX_UNK_1EC_2;
                            WREG(2) = -6240;
                            YREG(8) = pauseCtx->rotXorZ_unk_204;
                            func_800F64E0(0);
                        } else {
                            Audio_PlaySfxGeneral(NA_SE_SY_PIECE_OF_HEART, &gSfxDefaultPos, 4,
                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                 &gSfxDefaultReverb);
                            Play_SaveSceneFlags(play);
                            gSaveContext.savedSceneId = play->sceneId;
                            Sram_WriteSave(&play->sramCtx);
                            pauseCtx->unk_1EC = PAUSECTX_UNK_1EC_4;
                            D_8082B25C_sState66NextStateTimer_ = 3;
                        }
                    } else if (CHECK_BTN_ALL(input->press.button, BTN_START) ||
                               CHECK_BTN_ALL(input->press.button, BTN_B)) {
                        Interface_SetDoAction(play, DO_ACTION_NONE);
                        pauseCtx->unk_1EC = PAUSECTX_UNK_1EC_2;
                        WREG(2) = -6240;
                        YREG(8) = pauseCtx->rotXorZ_unk_204;
                        func_800F64E0(0);
                        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                            gSaveContext.buttonStatus[3] = BTN_ENABLED;
                        gSaveContext.unk_13EA = 0;
                        Interface_ChangeAlpha(50);
                    }
                    break;

                case PAUSECTX_UNK_1EC_4:
                    if (CHECK_BTN_ALL(input->press.button, BTN_B) || CHECK_BTN_ALL(input->press.button, BTN_A) ||
                        CHECK_BTN_ALL(input->press.button, BTN_START) || (--D_8082B25C_sState66NextStateTimer_ == 0)) {
                        Interface_SetDoAction(play, DO_ACTION_NONE);
                        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                            gSaveContext.buttonStatus[3] = BTN_ENABLED;
                        gSaveContext.unk_13EA = 0;
                        Interface_ChangeAlpha(50);
                        pauseCtx->unk_1EC = PAUSECTX_UNK_1EC_5;
                        WREG(2) = -6240;
                        YREG(8) = pauseCtx->rotXorZ_unk_204;
                        func_800F64E0(0);
                    }
                    break;

                case PAUSECTX_UNK_1EC_3:
                case PAUSECTX_UNK_1EC_6:
                    pauseCtx->rotXorZ_unk_204 += 314.0f / WREG(6);
                    WREG(16) += WREG(25) / WREG(6);
                    WREG(17) += WREG(26) / WREG(6);
                    if (pauseCtx->rotXorZ_unk_204 >= -314.0f) {
                        pauseCtx->state = PAUSECTX_STATE_6;
                        pauseCtx->unk_1EC = PAUSECTX_UNK_1EC_0;
                        pauseCtx->rotXpauseItem_unk_1F4 = pauseCtx->rotPauseEquip_unk_1F8 =
                            pauseCtx->rotPauseMap_unk_1FC = pauseCtx->rotPauseQuest_unk_200 = 0.0f;
                        pauseCtx->rotXorZ_unk_204 = -314.0f;
                    }
                    break;

                case PAUSECTX_UNK_1EC_2:
                case PAUSECTX_UNK_1EC_5:
                    if (pauseCtx->rotXorZ_unk_204 != (YREG(8) + 160.0f)) {
                        pauseCtx->rotXpauseItem_unk_1F4 = pauseCtx->rotPauseEquip_unk_1F8 =
                            pauseCtx->rotPauseMap_unk_1FC = pauseCtx->rotPauseQuest_unk_200 += 160.0f / WREG(6);
                        pauseCtx->rotXorZ_unk_204 += 160.0f / WREG(6);
                        pauseCtx->infoPanelOffsetY -= 40 / WREG(6);
                        WREG(16) -= WREG(25) / WREG(6);
                        WREG(17) -= WREG(26) / WREG(6);
                        XREG(5) -= 150 / WREG(6);
                        pauseCtx->alpha -= (u16)(255 / WREG(6));
                        if (pauseCtx->rotXorZ_unk_204 == (YREG(8) + 160.0f)) {
                            pauseCtx->alpha = 0;
                        }
                    } else {
                        pauseCtx->debugState = 0;
                        pauseCtx->state = PAUSECTX_STATE_19_UNPAUSE;
                        pauseCtx->rotXpauseItem_unk_1F4 = pauseCtx->rotPauseEquip_unk_1F8 =
                            pauseCtx->rotPauseMap_unk_1FC = pauseCtx->rotPauseQuest_unk_200 = 160.0f;
                        pauseCtx->namedItem = PAUSE_ITEM_NONE;
                        pauseCtx->unk_1E4_ps6_ = PAUSE_S6_0_IDLE_;
                        pauseCtx->rotXorZ_unk_204 = -434.0f;
                    }
                    break;
            }
            break;

        case PAUSECTX_STATE_10:
            pauseCtx->cursorSlot[PAUSE_MAP] = pauseCtx->cursorPoint[PAUSE_MAP] = pauseCtx->dungeonMapSlot =
                VREG(30) + 3;
            WREG(16) = -175;
            WREG(17) = 155;
            pauseCtx->rotXorZ_unk_204 = -434.0f;
            Interface_ChangeAlpha(1);

            //! @bug messed up alignment, should match `ALIGN64`
            pauseCtx->iconItemSegment = (void*)(((uintptr_t)play->objectCtx.spaceStart + 0x30) & ~0x3F);
            size0 = (uintptr_t)_icon_item_staticSegmentRomEnd - (uintptr_t)_icon_item_staticSegmentRomStart;
            osSyncPrintf("icon_item size0=%x\n", size0);
            DmaMgr_SendRequest1(pauseCtx->iconItemSegment, (uintptr_t)_icon_item_staticSegmentRomStart, size0,
                                "../z_kaleido_scope_PAL.c", 4356);

            pauseCtx->iconItem24Segment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItemSegment + size0);
            size = (uintptr_t)_icon_item_24_staticSegmentRomEnd - (uintptr_t)_icon_item_24_staticSegmentRomStart;
            osSyncPrintf("icon_item24 size=%x\n", size);
            DmaMgr_SendRequest1(pauseCtx->iconItem24Segment, (uintptr_t)_icon_item_24_staticSegmentRomStart, size,
                                "../z_kaleido_scope_PAL.c", 4363);

            pauseCtx->iconItemAltSegment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItem24Segment + size);
            size2 = (uintptr_t)_icon_item_gameover_staticSegmentRomEnd -
                    (uintptr_t)_icon_item_gameover_staticSegmentRomStart;
            osSyncPrintf("icon_item_dungeon gameover-size2=%x\n", size2);
            DmaMgr_SendRequest1(pauseCtx->iconItemAltSegment, (uintptr_t)_icon_item_gameover_staticSegmentRomStart,
                                size2, "../z_kaleido_scope_PAL.c", 4370);

            pauseCtx->iconItemLangSegment = (void*)ALIGN16((uintptr_t)pauseCtx->iconItemAltSegment + size2);

            if (gSaveContext.language == LANGUAGE_ENG) {
                size = (uintptr_t)_icon_item_nes_staticSegmentRomEnd - (uintptr_t)_icon_item_nes_staticSegmentRomStart;
                osSyncPrintf("icon_item_dungeon dungeon-size=%x\n", size);
                DmaMgr_SendRequest1(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_nes_staticSegmentRomStart,
                                    size, "../z_kaleido_scope_PAL.c", 4379);
            } else if (gSaveContext.language == LANGUAGE_GER) {
                size = (uintptr_t)_icon_item_ger_staticSegmentRomEnd - (uintptr_t)_icon_item_ger_staticSegmentRomStart;
                osSyncPrintf("icon_item_dungeon dungeon-size=%x\n", size);
                DmaMgr_SendRequest1(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_ger_staticSegmentRomStart,
                                    size, "../z_kaleido_scope_PAL.c", 4386);
            } else {
                size = (uintptr_t)_icon_item_fra_staticSegmentRomEnd - (uintptr_t)_icon_item_fra_staticSegmentRomStart;
                osSyncPrintf("icon_item_dungeon dungeon-size=%x\n", size);
                DmaMgr_SendRequest1(pauseCtx->iconItemLangSegment, (uintptr_t)_icon_item_fra_staticSegmentRomStart,
                                    size, "../z_kaleido_scope_PAL.c", 4393);
            }

            sColor82ABRed_D_8082AB8C = 255;
            sColor82ABGreen_D_8082AB90 = 130;
            sColor82ABBlue_D_8082AB94 = 0;
            sColor82ABGameOverPrimAlpha_D_8082AB98 = 0;
            sDrawGameOverEnvColorRed_D_8082AB9C = 30;
            sDrawGameOverEnvColorGreen_D_8082ABA0 = 0;
            sDrawGameOverEnvColorBlue_D_8082ABA4 = 0;
            sTimer_D_8082B260 = 30;
            VREG(88) = 98;
            pauseCtx->promptChoice = 0;
            pauseCtx->state++; // PAUSECTX_STATE_11
            break;

        case PAUSECTX_STATE_11:
            stepR = ABS(sColor82ABRed_D_8082AB8C - 30) / sTimer_D_8082B260;
            stepG = ABS(sColor82ABGreen_D_8082AB90) / sTimer_D_8082B260;
            stepB = ABS(sColor82ABBlue_D_8082AB94) / sTimer_D_8082B260;
            stepA = ABS(sColor82ABGameOverPrimAlpha_D_8082AB98 - 255) / sTimer_D_8082B260;
            if (sColor82ABRed_D_8082AB8C >= 30) {
                sColor82ABRed_D_8082AB8C -= stepR;
            } else {
                sColor82ABRed_D_8082AB8C += stepR;
            }
            if (sColor82ABGreen_D_8082AB90 >= 0) {
                sColor82ABGreen_D_8082AB90 -= stepG;
            } else {
                sColor82ABGreen_D_8082AB90 += stepG;
            }
            if (sColor82ABBlue_D_8082AB94 >= 0) {
                sColor82ABBlue_D_8082AB94 -= stepB;
            } else {
                sColor82ABBlue_D_8082AB94 += stepB;
            }
            if (sColor82ABGameOverPrimAlpha_D_8082AB98 >= 255) {
                sColor82ABGameOverPrimAlpha_D_8082AB98 -= stepA;
            } else {
                sColor82ABGameOverPrimAlpha_D_8082AB98 += stepA;
            }

            stepR = ABS(sDrawGameOverEnvColorRed_D_8082AB9C - 255) / sTimer_D_8082B260;
            stepG = ABS(sDrawGameOverEnvColorGreen_D_8082ABA0 - 130) / sTimer_D_8082B260;
            stepB = ABS(sDrawGameOverEnvColorBlue_D_8082ABA4) / sTimer_D_8082B260;
            if (sDrawGameOverEnvColorRed_D_8082AB9C >= 255) {
                sDrawGameOverEnvColorRed_D_8082AB9C -= stepR;
            } else {
                sDrawGameOverEnvColorRed_D_8082AB9C += stepR;
            }
            if (sDrawGameOverEnvColorGreen_D_8082ABA0 >= 130) {
                sDrawGameOverEnvColorGreen_D_8082ABA0 -= stepG;
            } else {
                sDrawGameOverEnvColorGreen_D_8082ABA0 += stepG;
            }
            if (sDrawGameOverEnvColorBlue_D_8082ABA4 >= 0) {
                sDrawGameOverEnvColorBlue_D_8082ABA4 -= stepB;
            } else {
                sDrawGameOverEnvColorBlue_D_8082ABA4 += stepB;
            }

            sTimer_D_8082B260--;
            if (sTimer_D_8082B260 == 0) {
                sColor82ABRed_D_8082AB8C = 30;
                sColor82ABGreen_D_8082AB90 = 0;
                sColor82ABBlue_D_8082AB94 = 0;
                sColor82ABGameOverPrimAlpha_D_8082AB98 = 255;

                sDrawGameOverEnvColorRed_D_8082AB9C = 255;
                sDrawGameOverEnvColorGreen_D_8082ABA0 = 130;
                sDrawGameOverEnvColorBlue_D_8082ABA4 = 0;

                pauseCtx->state++; // PAUSECTX_STATE_12
                sTimer_D_8082B260 = 40;
            }
            break;

        case PAUSECTX_STATE_12:
            sTimer_D_8082B260--;
            if (sTimer_D_8082B260 == 0) {
                pauseCtx->state = PAUSECTX_STATE_13;
            }
            break;

        case PAUSECTX_STATE_13:
            pauseCtx->rotXpauseItem_unk_1F4 = pauseCtx->rotPauseEquip_unk_1F8 = pauseCtx->rotPauseMap_unk_1FC =
                pauseCtx->rotPauseQuest_unk_200 = pauseCtx->rotXorZ_unk_204 -= 160.0f / WREG(6);
            pauseCtx->infoPanelOffsetY += 40 / WREG(6);
            interfaceCtx->startAlpha += 255 / WREG(6);
            VREG(88) -= 3;
            WREG(16) += WREG(25) / WREG(6);
            WREG(17) += WREG(26) / WREG(6);
            XREG(5) += 150 / WREG(6);
            pauseCtx->alpha += (u16)(255 / (WREG(6) + WREG(4)));
            if (pauseCtx->rotXorZ_unk_204 < -628.0f) {
                pauseCtx->rotXorZ_unk_204 = -628.0f;
                interfaceCtx->startAlpha = 255;
                VREG(88) = 66;
                WREG(2) = 0;
                pauseCtx->alpha = 255;
                pauseCtx->state = PAUSECTX_STATE_14;
                gSaveContext.deaths++;
                if (gSaveContext.deaths > 999) {
                    gSaveContext.deaths = 999;
                }
            }
            osSyncPrintf("kscope->angle_s = %f\n", pauseCtx->rotXorZ_unk_204);
            break;

        case PAUSECTX_STATE_14:
            if (CHECK_BTN_ALL(input->press.button, BTN_A)) {
                if (pauseCtx->promptChoice != 0) {
                    pauseCtx->promptChoice = 0;
                    Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    pauseCtx->state = PAUSECTX_STATE_16;
                    gameOverCtx->state++;
                } else {
                    Audio_PlaySfxGeneral(NA_SE_SY_PIECE_OF_HEART, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    pauseCtx->promptChoice = 0;
                    Play_SaveSceneFlags(play);
                    gSaveContext.savedSceneId = play->sceneId;
                    Sram_WriteSave(&play->sramCtx);
                    pauseCtx->state = PAUSECTX_STATE_15;
                    D_8082B25C_sState66NextStateTimer_ = 3;
                }
            }
            break;

        case PAUSECTX_STATE_15:
            D_8082B25C_sState66NextStateTimer_--;
            if (D_8082B25C_sState66NextStateTimer_ == 0) {
                pauseCtx->state = PAUSECTX_STATE_16;
                gameOverCtx->state++;
            } else if ((D_8082B25C_sState66NextStateTimer_ <= 80) &&
                       (CHECK_BTN_ALL(input->press.button, BTN_A) || CHECK_BTN_ALL(input->press.button, BTN_START))) {
                pauseCtx->state = PAUSECTX_STATE_16;
                gameOverCtx->state++;
                func_800F64E0(0);
            }
            break;

        case PAUSECTX_STATE_16:
            if (CHECK_BTN_ALL(input->press.button, BTN_A) || CHECK_BTN_ALL(input->press.button, BTN_START)) {
                if (pauseCtx->promptChoice == 0) {
                    Audio_PlaySfxGeneral(NA_SE_SY_PIECE_OF_HEART, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    Play_SaveSceneFlags(play);

                    switch (gSaveContext.entranceIndex) {
                        case ENTR_YDAN_0:
                        case ENTR_DDAN_0:
                        case ENTR_BDAN_0:
                        case ENTR_BMORI1_0:
                        case ENTR_HIDAN_0:
                        case ENTR_MIZUSIN_0:
                        case ENTR_JYASINZOU_0:
                        case ENTR_HAKADAN_0:
                        case ENTR_GANON_0:
                        case ENTR_MEN_0:
                        case ENTR_ICE_DOUKUTO_0:
                        case ENTR_GERUDOWAY_0:
                        case ENTR_HAKADANCH_0:
                        case ENTR_GANONTIKA_0:
                        case ENTR_GANON_SONOGO_0:
                            break;

                        case ENTR_YDAN_BOSS_0:
                            gSaveContext.entranceIndex = ENTR_YDAN_0;
                            break;

                        case ENTR_DDAN_BOSS_0:
                            gSaveContext.entranceIndex = ENTR_DDAN_0;
                            break;

                        case ENTR_BDAN_BOSS_0:
                            gSaveContext.entranceIndex = ENTR_BDAN_0;
                            break;

                        case ENTR_MORIBOSSROOM_0:
                            gSaveContext.entranceIndex = ENTR_BMORI1_0;
                            break;

                        case ENTR_FIRE_BS_0:
                            gSaveContext.entranceIndex = ENTR_HIDAN_0;
                            break;

                        case ENTR_MIZUSIN_BS_0:
                            gSaveContext.entranceIndex = ENTR_MIZUSIN_0;
                            break;

                        case ENTR_JYASINBOSS_0:
                            gSaveContext.entranceIndex = ENTR_JYASINZOU_0;
                            break;

                        case ENTR_HAKADAN_BS_0:
                            gSaveContext.entranceIndex = ENTR_HAKADAN_0;
                            break;

                        case ENTR_GANON_BOSS_0:
                            gSaveContext.entranceIndex = ENTR_GANON_0;
                            break;
                    }
                } else {
                    Audio_PlaySfxGeneral(NA_SE_SY_DECIDE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                }

                pauseCtx->state = PAUSECTX_STATE_17;
            }
            break;

        case PAUSECTX_STATE_17:
            if (interfaceCtx->unk_244 != 255) {
                interfaceCtx->unk_244 += 10;
                if (interfaceCtx->unk_244 >= 255) {
                    interfaceCtx->unk_244 = 255;
                    pauseCtx->state = PAUSECTX_STATE_0;
                    R_UPDATE_RATE = 3;
                    R_PAUSE_MENU_MODE = 0;
                    func_800981B8(&play->objectCtx);
                    func_800418D0(&play->colCtx, play);
                    if (pauseCtx->promptChoice == 0) {
                        Play_TriggerRespawn(play);
                        gSaveContext.respawnFlag = -2;
                        gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                        gSaveContext.health = 0x30;
                        Audio_QueueSeqCmd(0xF << 28 | SEQ_PLAYER_BGM_MAIN << 24 | 0xA);
                        gSaveContext.healthAccumulator = 0;
                        gSaveContext.magicState = MAGIC_STATE_IDLE;
                        gSaveContext.prevMagicState = MAGIC_STATE_IDLE;
                        osSyncPrintf(VT_FGCOL(YELLOW));
                        osSyncPrintf("MAGIC_NOW=%d ", gSaveContext.magic);
                        osSyncPrintf("Z_MAGIC_NOW_NOW=%d   →  ", gSaveContext.magicFillTarget);
                        gSaveContext.magicCapacity = 0;
                        // Set the fill target to be the magic amount before game over
                        gSaveContext.magicFillTarget = gSaveContext.magic;
                        // Set `magicLevel` and `magic` to 0 so `magicCapacity` then `magic` grows from nothing
                        // to respectively the full capacity and `magicFillTarget`
                        gSaveContext.magicLevel = gSaveContext.magic = 0;
                        osSyncPrintf("MAGIC_NOW=%d ", gSaveContext.magic);
                        osSyncPrintf("Z_MAGIC_NOW_NOW=%d\n", gSaveContext.magicFillTarget);
                        osSyncPrintf(VT_RST);
                    } else {
                        play->state.running = false;
                        SET_NEXT_GAMESTATE(&play->state, TitleSetup_Init, TitleSetupState);
                    }
                }
            }
            break;

        case PAUSECTX_STATE_18_FLIP_PAGES_AND_UNPAUSE:
            if (pauseCtx->rotXpauseItem_unk_1F4 != 160.0f) {
                pauseCtx->rotXpauseItem_unk_1F4 = pauseCtx->rotPauseEquip_unk_1F8 = pauseCtx->rotPauseMap_unk_1FC =
                    pauseCtx->rotPauseQuest_unk_200 += 160.0f / WREG(6);
                pauseCtx->infoPanelOffsetY -= 40 / WREG(6);
                interfaceCtx->startAlpha -= 255 / WREG(6);
                WREG(16) -= WREG(25) / WREG(6);
                WREG(17) -= WREG(26) / WREG(6);
                XREG(5) -= 150 / WREG(6);
                pauseCtx->alpha -= (u16)(255 / WREG(6));
                if (pauseCtx->rotXpauseItem_unk_1F4 == 160.0f) {
                    pauseCtx->alpha = 0;
                }
            } else {
                pauseCtx->debugState = 0;
                pauseCtx->state = PAUSECTX_STATE_19_UNPAUSE;
                pauseCtx->rotXpauseItem_unk_1F4 = pauseCtx->rotPauseEquip_unk_1F8 = pauseCtx->rotPauseMap_unk_1FC =
                    pauseCtx->rotPauseQuest_unk_200 = 160.0f;
                pauseCtx->namedItem = PAUSE_ITEM_NONE;
                play->interfaceCtx.startAlpha = 0;
            }
            break;

        case PAUSECTX_STATE_19_UNPAUSE:
            pauseCtx->state = PAUSECTX_STATE_0;
            R_UPDATE_RATE = 3;
            R_PAUSE_MENU_MODE = 0;
            func_800981B8(&play->objectCtx);
            func_800418D0(&play->colCtx, play);

            switch (play->sceneId) {
                case SCENE_YDAN:
                case SCENE_DDAN:
                case SCENE_BDAN:
                case SCENE_BMORI1:
                case SCENE_HIDAN:
                case SCENE_MIZUSIN:
                case SCENE_JYASINZOU:
                case SCENE_HAKADAN:
                case SCENE_HAKADANCH:
                case SCENE_ICE_DOUKUTO:
                case SCENE_YDAN_BOSS:
                case SCENE_DDAN_BOSS:
                case SCENE_BDAN_BOSS:
                case SCENE_MORIBOSSROOM:
                case SCENE_FIRE_BS:
                case SCENE_MIZUSIN_BS:
                case SCENE_JYASINBOSS:
                case SCENE_HAKADAN_BS:
                    Map_InitData(play, play->interfaceCtx.mapRoomNum);
                    break;
            }

            gSaveContext.buttonStatus[0] = D_808321A8[0];
            gSaveContext.buttonStatus[1] = D_808321A8[1];
            gSaveContext.buttonStatus[2] = D_808321A8[2];
            gSaveContext.buttonStatus[3] = D_808321A8[3];
            gSaveContext.buttonStatus[4] = D_808321A8[4];
            interfaceCtx->unk_1FA = interfaceCtx->unk_1FC = 0;
            osSyncPrintf(VT_FGCOL(YELLOW));
            osSyncPrintf("i=%d  LAST_TIME_TYPE=%d\n", i, gSaveContext.unk_13EE);
            gSaveContext.unk_13EA = 0;
            Interface_ChangeAlpha(gSaveContext.unk_13EE);
            player->targetActor = NULL;
            Player_SetEquipmentData(play, player);
            osSyncPrintf(VT_RST);
            break;
    }
}
