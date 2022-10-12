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

            gSaveContext.timer1State = 0;
            gSaveContext.timer2State = 0;
            CLEAR_EVENTINF(EVENTINF_10);

            // search inventory for spoiling items and revert if necessary
            for (i = 0; i < ARRAY_COUNT(gSpoilingItems); i++) {
                if (INV_CONTENT(ITEM_POCKET_EGG) == gSpoilingItems[i]) {
                    INV_CONTENT(gSpoilingItemReverts[i]) = gSpoilingItemReverts[i];

                    // search c buttons for the found spoiling item and revert if necessary
                    for (j = IBTN_BC_C_FIRST; j <= IBTN_BC_C_LAST; j++) {
                        if (gSaveContext.equips.buttonItems[j] == gSpoilingItems[i]) {
                            gSaveContext.equips.buttonItems[j] = gSpoilingItemReverts[i];
                            Interface_LoadItemIcon1(play, j);
                        }
                    }
                }
            }

            // restore "temporary B" to the B Button if not a sword item
            if (gSaveContext.equips.buttonItems[IBTN_BC_B] != ITEM_SWORD_KOKIRI &&
                gSaveContext.equips.buttonItems[IBTN_BC_B] != ITEM_SWORD_MASTER &&
                gSaveContext.equips.buttonItems[IBTN_BC_B] != ITEM_SWORD_BGS &&
                gSaveContext.equips.buttonItems[IBTN_BC_B] != ITEM_SWORD_KNIFE) {

                if (gSaveContext.buttonStatus[IBTN_BCA_B] != BTN_ENABLED) {
                    gSaveContext.equips.buttonItems[IBTN_BC_B] = gSaveContext.buttonStatus[IBTN_BCA_B];
                } else {
                    gSaveContext.equips.buttonItems[IBTN_BC_B] = ITEM_NONE;
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
            gSaveContext.buttonStatus[IBTN_BCA_B] = gSaveContext.buttonStatus[IBTN_BCA_C_LEFT] =
                gSaveContext.buttonStatus[IBTN_BCA_C_DOWN] = gSaveContext.buttonStatus[IBTN_BCA_C_RIGHT] =
                    gSaveContext.buttonStatus[IBTN_BCA_A] = BTN_ENABLED;
            gSaveContext.unk_13E7 = gSaveContext.unk_13E8 = gSaveContext.unk_13EA = gSaveContext.unk_13EC = 0;

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
