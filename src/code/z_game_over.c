#include "global.h"

void GameOver_Init(PlayState* play) {
    play->gameOverCtx.state = GAMEOVER_INACTIVE;
}

void GameOver_FadeInLights(PlayState* play) {
    GameOverContext* gameOverCtx = &play->gameOverCtx;

    if ((gameOverCtx->state >= GAMEOVER_DEATH_WAIT_GROUND && gameOverCtx->state < GAMEOVER_REVIVE_START) ||
        (gameOverCtx->state >= GAMEOVER_REVIVE_RUMBLE && gameOverCtx->state < GAMEOVER_REVIVE_FADE_OUT)) {
        Environment_FadeInGameOverLights(play);
    }
}

// This variable cannot be moved into this file as all of z_message_PAL rodata is in the way
extern s16 gGameOverTimer;

void GameOver_Update(PlayState* play) {
    GameOverContext* gameOverCtx = &play->gameOverCtx;
    s16 i;
    s16 j;
    s32 rumbleStrength;
    s32 rumbleDuration;
    s32 rumbleDecreaseRate;

    switch (gameOverCtx->state) {
        case GAMEOVER_DEATH_START:
            Message_CloseTextbox(play);

            gSaveContext.timerState = TIMER_STATE_OFF;
            gSaveContext.subTimerState = SUBTIMER_STATE_OFF;
            CLEAR_EVENTINF(EVENTINF_MARATHON_ACTIVE);

            // search inventory for spoiling items and revert if necessary
            for (i = 0; i < ARRAY_COUNT(gSpoilingItems); i++) {
                if (INV_CONTENT(ITEM_POCKET_EGG) == gSpoilingItems[i]) {
                    INV_CONTENT(gSpoilingItemReverts[i]) = gSpoilingItemReverts[i];

                    // search c buttons for the found spoiling item and revert if necessary
                    for (j = 1; j < ARRAY_COUNT(gSaveContext.equips.buttonItems); j++) {
                        if (gSaveContext.equips.buttonItems[j] == gSpoilingItems[i]) {
                            gSaveContext.equips.buttonItems[j] = gSpoilingItemReverts[i];
                            Interface_LoadItemIcon1(play, j);
                        }
                    }
                }
            }

            // restore "temporary B" to the B Button if not a sword item
            if (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_KOKIRI &&
                gSaveContext.equips.buttonItems[0] != ITEM_SWORD_MASTER &&
                gSaveContext.equips.buttonItems[0] != ITEM_SWORD_BIGGORON &&
                gSaveContext.equips.buttonItems[0] != ITEM_GIANTS_KNIFE) {

                if (gSaveContext.buttonStatus[0] != BTN_ENABLED) {
                    gSaveContext.equips.buttonItems[0] = gSaveContext.buttonStatus[0];
                } else {
                    gSaveContext.equips.buttonItems[0] = ITEM_NONE;
                }
            }

            gSaveContext.nayrusLoveTimer = 2000;
            gSaveContext.naviTimer = 0;
            gSaveContext.seqId = (u8)NA_BGM_DISABLED;
            gSaveContext.natureAmbienceId = NATURE_ID_DISABLED;
            gSaveContext.eventInf[0] = 0;
            gSaveContext.eventInf[1] = 0;
            gSaveContext.eventInf[2] = 0;
            gSaveContext.eventInf[3] = 0;
            gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                gSaveContext.buttonStatus[3] = gSaveContext.buttonStatus[4] = BTN_ENABLED;
            gSaveContext.forceRisingButtonAlphas = gSaveContext.nextHudVisibilityMode = gSaveContext.hudVisibilityMode =
                gSaveContext.hudVisibilityModeTimer = 0; // false, HUD_VISIBILITY_NO_CHANGE

            Environment_InitGameOverLights(play);
            gGameOverTimer = 20;

            if (1) {}
            rumbleStrength = R_GAME_OVER_RUMBLE_STRENGTH;
            rumbleDuration = R_GAME_OVER_RUMBLE_DURATION;
            rumbleDecreaseRate = R_GAME_OVER_RUMBLE_DECREASE_RATE;

            Rumble_Request(0.0f, ((rumbleStrength > 100) ? 255 : (rumbleStrength * 255) / 100),
                           (CLAMP_MAX(rumbleDuration * 3, 255)),
                           ((rumbleDecreaseRate > 100) ? 255 : (rumbleDecreaseRate * 255) / 100));

            gameOverCtx->state = GAMEOVER_DEATH_WAIT_GROUND;
            break;

        case GAMEOVER_DEATH_WAIT_GROUND:
            break;

        case GAMEOVER_DEATH_DELAY_MENU:
            gGameOverTimer--;

            if (gGameOverTimer == 0) {
                play->pauseCtx.state = 8;
                gameOverCtx->state++;
                Rumble_Reset();
            }
            break;

        case GAMEOVER_REVIVE_START:
            gameOverCtx->state++;
            gGameOverTimer = 0;
            Environment_InitGameOverLights(play);
            Letterbox_SetSizeTarget(32);
            return;

        case GAMEOVER_REVIVE_RUMBLE:
            gGameOverTimer = 50;
            gameOverCtx->state++;

            if (1) {}
            rumbleStrength = R_GAME_OVER_RUMBLE_STRENGTH;
            rumbleDuration = R_GAME_OVER_RUMBLE_DURATION;
            rumbleDecreaseRate = R_GAME_OVER_RUMBLE_DECREASE_RATE;

            Rumble_Request(0.0f, ((rumbleStrength > 100) ? 255 : (rumbleStrength * 255) / 100),
                           (CLAMP_MAX(rumbleDuration * 3, 255)),
                           ((rumbleDecreaseRate > 100) ? 255 : (rumbleDecreaseRate * 255) / 100));
            break;

        case GAMEOVER_REVIVE_WAIT_GROUND:
            gGameOverTimer--;

            if (gGameOverTimer == 0) {
                gGameOverTimer = 64;
                gameOverCtx->state++;
            }
            break;

        case GAMEOVER_REVIVE_WAIT_FAIRY:
            gGameOverTimer--;

            if (gGameOverTimer == 0) {
                gGameOverTimer = 50;
                gameOverCtx->state++;
            }
            break;

        case GAMEOVER_REVIVE_FADE_OUT:
            Environment_FadeOutGameOverLights(play);
            gGameOverTimer--;

            if (gGameOverTimer == 0) {
                gameOverCtx->state = GAMEOVER_INACTIVE;
            }
            break;
    }
}
