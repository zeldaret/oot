#include "global.h"

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

    if (!IS_PAUSED(pauseCtx) && play->gameOverCtx.state == GAMEOVER_INACTIVE &&
        play->transitionTrigger == TRANS_TRIGGER_OFF && play->transitionMode == TRANS_MODE_OFF &&
        gSaveContext.cutsceneIndex < 0xFFF0 && gSaveContext.nextCutsceneIndex < 0xFFF0 && !Play_InCsMode(play) &&
        play->shootingGalleryStatus <= 1 && gSaveContext.magicState != MAGIC_STATE_STEP_CAPACITY &&
        gSaveContext.magicState != MAGIC_STATE_FILL &&
        (play->sceneId != SCENE_BOMBCHU_BOWLING_ALLEY || !Flags_GetSwitch(play, 0x38))) {

        if (CHECK_BTN_ALL(input->cur.button, BTN_L) && CHECK_BTN_ALL(input->press.button, BTN_CUP)) {
            if (BREG(0)) {
                pauseCtx->debugState = 3;
            }
        } else if (CHECK_BTN_ALL(input->press.button, BTN_START)) {
            // The start button was pressed, pause

            gSaveContext.prevHudVisibilityMode = gSaveContext.hudVisibilityMode;

            R_PAUSE_CURSOR_LEFT_X = -175;
            R_PAUSE_CURSOR_RIGHT_X = 155;

            pauseCtx->switchPageTimer = 0;
            pauseCtx->mainState = PAUSE_MAIN_STATE_SWITCHING_PAGE; // irrelevant

            if (R_START_LABEL_DD(0) == 0) {
                // Never reached, unused, and the data would be wrong anyway
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

            osSyncPrintf("Ｍｏｄｅ=%d  eye.x=%f,  eye.z=%f  kscp_pos=%d\n", pauseCtx->nextPageMode, pauseCtx->eye.x,
                         pauseCtx->eye.z, pauseCtx->pageIndex);
        }

        if (pauseCtx->state == PAUSE_STATE_WAIT_LETTERBOX) {
            R_PAUSE_OFFSET_VERTICAL = -6240;
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
    u64 temp = 0; // Necessary to match

    pauseCtx->state = PAUSE_STATE_OFF;
    pauseCtx->debugState = 0;
    pauseCtx->alpha = 0;
    pauseCtx->switchPageTimer = 0;
    pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
    pauseCtx->nextPageMode = 0;
    pauseCtx->pageIndex = PAUSE_ITEM;

    pauseCtx->itemPageRoll = pauseCtx->equipPageRoll = pauseCtx->mapPageRoll = pauseCtx->questPageRoll = 160.0f;
    pauseCtx->eye.z = 64.0f;
    pauseCtx->savePromptOffsetDepth_ = 936.0f;
    pauseCtx->eye.x = pauseCtx->eye.y = 0.0f;
    pauseCtx->rollRotSavePrompt_ = -314.0f;

    pauseCtx->cursorPoint[PAUSE_ITEM] = 0;
    pauseCtx->cursorPoint[PAUSE_MAP] = VREG(30) + 3;
    pauseCtx->cursorPoint[PAUSE_QUEST] = QUEST_MEDALLION_FOREST;
    pauseCtx->cursorPoint[PAUSE_EQUIP] = 1;
    pauseCtx->cursorPoint[PAUSE_WORLD_MAP] = 10;

    pauseCtx->cursorX[PAUSE_ITEM] = 0;
    pauseCtx->cursorY[PAUSE_ITEM] = 0;
    pauseCtx->cursorX[PAUSE_MAP] = 0;
    pauseCtx->cursorY[PAUSE_MAP] = 0;
    pauseCtx->cursorX[PAUSE_QUEST] = temp;
    pauseCtx->cursorY[PAUSE_QUEST] = temp;
    pauseCtx->cursorX[PAUSE_EQUIP] = EQUIP_VALUE_SWORD_KOKIRI;
    pauseCtx->cursorY[PAUSE_EQUIP] = EQUIP_TYPE_SWORD;

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
}

void KaleidoSetup_Destroy(PlayState* play) {
}
