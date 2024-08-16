#include "global.h"
#if PLATFORM_N64
#include "n64dd.h"
#endif

/*
 * The following three arrays are effectively unused.
 * They are partly equivalent to the `sKaleidoSetupRightPage*` arrays below,
 * but make each page correspond to the opposite page instead of the page to the right.
 */

s16 sKaleidoSetupUnusedPageIndex[] = {
    PAUSE_QUEST, // PAUSE_ITEM
    PAUSE_EQUIP, // PAUSE_MAP
    PAUSE_ITEM,  // PAUSE_QUEST
    PAUSE_MAP,   // PAUSE_EQUIP
};

f32 sKaleidoSetupUnusedEyeX[] = {
    PAUSE_EYE_DIST * -PAUSE_QUEST_X, // PAUSE_ITEM
    PAUSE_EYE_DIST * -PAUSE_EQUIP_X, // PAUSE_MAP
    PAUSE_EYE_DIST * -PAUSE_ITEM_X,  // PAUSE_QUEST
    PAUSE_EYE_DIST * -PAUSE_MAP_X,   // PAUSE_EQUIP
};

f32 sKaleidoSetupUnusedEyeZ[] = {
    PAUSE_EYE_DIST * -PAUSE_QUEST_Z, // PAUSE_ITEM
    PAUSE_EYE_DIST * -PAUSE_EQUIP_Z, // PAUSE_MAP
    PAUSE_EYE_DIST * -PAUSE_ITEM_Z,  // PAUSE_QUEST
    PAUSE_EYE_DIST * -PAUSE_MAP_Z,   // PAUSE_EQUIP
};

/*
 * The following three arrays are used when opening the pause menu to set up a page switch such that scrolling left
 * brings to the initial page.
 * For example to open the menu on page PAUSE_ITEM, the menu would open on PAUSE_MAP and scroll left to PAUSE_ITEM.
 */

s16 sKaleidoSetupRightPageIndex[] = {
    PAUSE_MAP,   // PAUSE_ITEM
    PAUSE_QUEST, // PAUSE_MAP
    PAUSE_EQUIP, // PAUSE_QUEST
    PAUSE_ITEM,  // PAUSE_EQUIP
};

f32 sKaleidoSetupRightPageEyeX[] = {
    PAUSE_EYE_DIST * -PAUSE_MAP_X,   // PAUSE_ITEM
    PAUSE_EYE_DIST * -PAUSE_QUEST_X, // PAUSE_MAP
    PAUSE_EYE_DIST * -PAUSE_EQUIP_X, // PAUSE_QUEST
    PAUSE_EYE_DIST * -PAUSE_ITEM_X,  // PAUSE_EQUIP
};

f32 sKaleidoSetupRightPageEyeZ[] = {
    PAUSE_EYE_DIST * -PAUSE_MAP_Z,   // PAUSE_ITEM
    PAUSE_EYE_DIST * -PAUSE_QUEST_Z, // PAUSE_MAP
    PAUSE_EYE_DIST * -PAUSE_EQUIP_Z, // PAUSE_QUEST
    PAUSE_EYE_DIST * -PAUSE_ITEM_Z,  // PAUSE_EQUIP
};

void KaleidoSetup_Update(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;
    Input* input = &play->state.input[0];
#if PLATFORM_N64
    s32 pad;
#endif

    if (!IS_PAUSED(pauseCtx) && play->gameOverCtx.state == GAMEOVER_INACTIVE &&
        play->transitionTrigger == TRANS_TRIGGER_OFF && play->transitionMode == TRANS_MODE_OFF &&
        gSaveContext.save.cutsceneIndex < 0xFFF0 && gSaveContext.nextCutsceneIndex < 0xFFF0 && !Play_InCsMode(play) &&
        play->shootingGalleryStatus <= 1 && gSaveContext.magicState != MAGIC_STATE_STEP_CAPACITY &&
        gSaveContext.magicState != MAGIC_STATE_FILL &&
        (play->sceneId != SCENE_BOMBCHU_BOWLING_ALLEY || !Flags_GetSwitch(play, 0x38))) {

        if (CHECK_BTN_ALL(input->cur.button, BTN_L) && CHECK_BTN_ALL(input->press.button, BTN_CUP)) {
            if (OOT_DEBUG && BREG(0)) {
                pauseCtx->debugState = 3;
            }
        } else if (CHECK_BTN_ALL(input->press.button, BTN_START)) {
            // The start button was pressed, pause
            gSaveContext.prevHudVisibilityMode = gSaveContext.hudVisibilityMode;

            WREG(16) = -175;
            WREG(17) = 155;

            pauseCtx->pageSwitchTimer = 0;

            // Setting mainState here is irrelevant, mainState is only used under PAUSE_STATE_MAIN,
            // which isn't involved in the initial pause menu opening page scrolling animation.
            // mainState is also overwritten later before being used.
            pauseCtx->mainState = PAUSE_MAIN_STATE_SWITCHING_PAGE;

            //! @bug REG collision, ZREG(48) is also R_START_LABEL_SCALE for NTSC and R_START_LABEL_DD(0) for PAL
            if (ZREG(48) == 0) {
                // Never reached, unused, and the data would be wrong anyway
                // (scrolling left from this would not bring to the initial page)
                pauseCtx->eye.x = sKaleidoSetupUnusedEyeX[pauseCtx->pageIndex];
                pauseCtx->eye.z = sKaleidoSetupUnusedEyeZ[pauseCtx->pageIndex];
                pauseCtx->pageIndex = sKaleidoSetupUnusedPageIndex[pauseCtx->pageIndex];
            } else {
                // Set eye position and pageIndex such that scrolling left brings to the desired page
                pauseCtx->eye.x = sKaleidoSetupRightPageEyeX[pauseCtx->pageIndex];
                pauseCtx->eye.z = sKaleidoSetupRightPageEyeZ[pauseCtx->pageIndex];
                pauseCtx->pageIndex = sKaleidoSetupRightPageIndex[pauseCtx->pageIndex];
            }

            // Set next page mode to scroll left
            pauseCtx->nextPageMode = (u16)(pauseCtx->pageIndex * 2) + 1;
            pauseCtx->state = PAUSE_STATE_WAIT_LETTERBOX;

            PRINTF("Ｍｏｄｅ=%d  eye.x=%f,  eye.z=%f  kscp_pos=%d\n", pauseCtx->nextPageMode, pauseCtx->eye.x,
                   pauseCtx->eye.z, pauseCtx->pageIndex);
        }

        if (pauseCtx->state == PAUSE_STATE_WAIT_LETTERBOX) {
            WREG(2) = -6240;
            R_UPDATE_RATE = 2;

            if (Letterbox_GetSizeTarget() != 0) {
                Letterbox_SetSizeTarget(0);
            }

            func_800F64E0(1);
        }
    }
}

void KaleidoSetup_Init(PlayState* play) {
    PauseContext* pauseCtx = &play->pauseCtx;

    pauseCtx->state = PAUSE_STATE_OFF;
    pauseCtx->debugState = 0;

    pauseCtx->eye.x = pauseCtx->eye.y = 0.0f;
    pauseCtx->eye.z = 64.0f;
    pauseCtx->unk_1F0 = 936.0f;
    pauseCtx->unk_1F4 = pauseCtx->unk_1F8 = pauseCtx->unk_1FC = pauseCtx->unk_200 = 160.0f;

    pauseCtx->alpha = 0;

    // mainState = PAUSE_MAIN_STATE_IDLE , pageIndex = PAUSE_ITEM
    pauseCtx->pageSwitchTimer = pauseCtx->mainState = pauseCtx->nextPageMode = pauseCtx->pageIndex = 0;

    pauseCtx->unk_204 = -314.0f;

    pauseCtx->cursorPoint[PAUSE_ITEM] = 0;
    pauseCtx->cursorPoint[PAUSE_MAP] = VREG(30) + 3;
    pauseCtx->cursorPoint[PAUSE_QUEST] = 0;
    pauseCtx->cursorPoint[PAUSE_EQUIP] = 1;
    pauseCtx->cursorPoint[PAUSE_WORLD_MAP] = 10;

    pauseCtx->cursorX[PAUSE_ITEM] = 0;
    pauseCtx->cursorY[PAUSE_ITEM] = 0;
    pauseCtx->cursorX[PAUSE_MAP] = 0;
    pauseCtx->cursorY[PAUSE_MAP] = 0;
    pauseCtx->cursorX[PAUSE_QUEST] = 0;
    pauseCtx->cursorY[PAUSE_QUEST] = 0;
    pauseCtx->cursorX[PAUSE_EQUIP] = 1;
    pauseCtx->cursorY[PAUSE_EQUIP] = 0;

    pauseCtx->cursorItem[PAUSE_ITEM] = PAUSE_ITEM_NONE;
    pauseCtx->cursorItem[PAUSE_MAP] = VREG(30) + 3;
    pauseCtx->cursorItem[PAUSE_QUEST] = PAUSE_ITEM_NONE;
    pauseCtx->cursorItem[PAUSE_EQUIP] = ITEM_SWORD_KOKIRI;

    pauseCtx->cursorSlot[PAUSE_ITEM] = 0;
    pauseCtx->cursorSlot[PAUSE_MAP] = VREG(30) + 3;
    pauseCtx->cursorSlot[PAUSE_QUEST] = 0;
    pauseCtx->cursorSlot[PAUSE_EQUIP] = pauseCtx->cursorPoint[PAUSE_EQUIP];

    pauseCtx->infoPanelOffsetY = -40;
    pauseCtx->nameDisplayTimer = 0;
    pauseCtx->nameColorSet = 0;
    pauseCtx->cursorColorSet = 4;
    pauseCtx->ocarinaSongIdx = -1;
    pauseCtx->cursorSpecialPos = 0;

    View_Init(&pauseCtx->view, play->state.gfxCtx);

#if PLATFORM_N64
    if (B_80121AF0 != NULL) {
        if (B_80121AF0->unk_3C != NULL) {
            B_80121AF0->unk_3C();
        }
    }
#endif
}

void KaleidoSetup_Destroy(PlayState* play) {
#if PLATFORM_N64
    if (B_80121AF0 != NULL) {
        if (B_80121AF0->unk_40 != NULL) {
            B_80121AF0->unk_40();
        }
    }
#endif
}
