#include "global.h"

void GameOver_Init(GlobalContext* globalCtx) {
    globalCtx->gameOverCtx.state = GAMEOVER_INACTIVE;
}

void GameOver_FadeInLights(GlobalContext* globalCtx) {
    GameOverContext* gameOverCtx = &globalCtx->gameOverCtx;

    if ((gameOverCtx->state >= GAMEOVER_DEATH_WAIT_GROUND && gameOverCtx->state < GAMEOVER_REVIVE_START) ||
        (gameOverCtx->state >= GAMEOVER_REVIVE_RUMBLE && gameOverCtx->state < GAMEOVER_REVIVE_FADE_OUT)) {
        Kankyo_FadeInGameOverLights(globalCtx);
    }
}

// This has the same issue as z_message where data is going to rodata.
// For now, this variable is left in z_message's rodata.s file.
// This hack treating it as a const s16 array works to put it in rodata, but it does not go to the right place.
// We will tackle this issue after z_message is in C, and we hopefully know more about this rodata issue.
extern const s16 D_80153D80[];
#define NON_CONST(x, type) ((type*)(&x))
#define GAME_OVER_TIMER NON_CONST(D_80153D80, s16)[0]

void GameOver_Update(GlobalContext* globalCtx) {
    GameOverContext* gameOverCtx = &globalCtx->gameOverCtx;
    s16 i;
    s16 j;
    s32 v90;
    s32 v91;
    s32 v92;

    switch (gameOverCtx->state) {
        case GAMEOVER_DEATH_START:
            func_80106CCC(globalCtx);

            gSaveContext.timer1State = 0;
            gSaveContext.timer2State = 0;
            gSaveContext.eventInf[1] &= ~1;

            for (i = 0; i < ARRAY_COUNT(gSpoilingItems); i++) { // search for spoiling items
                if (INV_CONTENT(ITEM_POCKET_EGG) == gSpoilingItems[i]) {
                    INV_CONTENT(gSpoilingItemReverts[i]) =
                        gSpoilingItemReverts[i]; // if a spoiling item is found, revert it
                    for (j = 1; j < ARRAY_COUNT(gSaveContext.equips.buttonItems);
                         j++) { // search c buttons for the found spoiling item
                        if (gSaveContext.equips.buttonItems[j] == gSpoilingItems[i]) {
                            gSaveContext.equips.buttonItems[j] =
                                gSpoilingItemReverts[i]; // if found on a c button, revert it
                            Interface_LoadItemIcon1(globalCtx, j);
                        }
                    }
                }
            }

            // restore "temporary B" to the B Button if not a sword item
            if (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_KOKIRI &&
                gSaveContext.equips.buttonItems[0] != ITEM_SWORD_MASTER &&
                gSaveContext.equips.buttonItems[0] != ITEM_SWORD_BGS &&
                gSaveContext.equips.buttonItems[0] != ITEM_SWORD_KNIFE) {

                if (gSaveContext.buttonStatus[0] != BTN_ENABLED) {
                    gSaveContext.equips.buttonItems[0] = gSaveContext.buttonStatus[0];
                } else {
                    gSaveContext.equips.buttonItems[0] = ITEM_NONE;
                }
            }

            gSaveContext.nayrusLoveTimer = 2000;
            gSaveContext.naviTimer = 0;
            gSaveContext.seqIndex = 0xFF;
            gSaveContext.nightSeqIndex = 0xFF;
            gSaveContext.eventInf[0] = 0;
            gSaveContext.eventInf[1] = 0;
            gSaveContext.eventInf[2] = 0;
            gSaveContext.eventInf[3] = 0;
            gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                gSaveContext.buttonStatus[3] = gSaveContext.buttonStatus[4] = BTN_ENABLED;
            gSaveContext.unk_13E7 = gSaveContext.unk_13E8 = gSaveContext.unk_13EA = gSaveContext.unk_13EC = 0;

            Kankyo_InitGameOverLights(globalCtx);
            GAME_OVER_TIMER = 20;
            if (1) {}
            v90 = VREG(90);
            v91 = VREG(91);
            v92 = VREG(92);

            func_800AA000(0.0f, ((v90 > 0x64) ? 0xFF : (v90 * 0xFF) / 0x64), (CLAMP_MAX(v91 * 3, 0xFF)),
                          ((v92 > 0x64) ? 0xFF : (v92 * 0xFF) / 0x64));

            gameOverCtx->state = GAMEOVER_DEATH_WAIT_GROUND;
            break;

        case GAMEOVER_DEATH_WAIT_GROUND:
            break;

        case GAMEOVER_DEATH_DELAY_MENU:
            GAME_OVER_TIMER--;

            if (GAME_OVER_TIMER == 0) {
                globalCtx->pauseCtx.state = 8;
                gameOverCtx->state++;
                func_800AA15C();
            }
            break;

        case GAMEOVER_REVIVE_START:
            gameOverCtx->state++;
            GAME_OVER_TIMER = 0;
            Kankyo_InitGameOverLights(globalCtx);
            ShrinkWindow_SetVal(0x20);
            return;

        case GAMEOVER_REVIVE_RUMBLE:
            GAME_OVER_TIMER = 50;
            gameOverCtx->state++;
            if (1) {}

            v90 = VREG(90);
            v91 = VREG(91);
            v92 = VREG(92);

            func_800AA000(0.0f, ((v90 > 0x64) ? 0xFF : (v90 * 0xFF) / 0x64), (CLAMP_MAX(v91 * 3, 0xFF)),
                          ((v92 > 0x64) ? 0xFF : (v92 * 0xFF) / 0x64));
            break;

        case GAMEOVER_REVIVE_WAIT_GROUND:
            GAME_OVER_TIMER--;

            if (GAME_OVER_TIMER == 0) {
                GAME_OVER_TIMER = 64;
                gameOverCtx->state++;
            }
            break;

        case GAMEOVER_REVIVE_WAIT_FAIRY:
            GAME_OVER_TIMER--;

            if (GAME_OVER_TIMER == 0) {
                GAME_OVER_TIMER = 50;
                gameOverCtx->state++;
            }
            break;

        case GAMEOVER_REVIVE_FADE_OUT:
            Kankyo_FadeOutGameOverLights(globalCtx);
            GAME_OVER_TIMER--;

            if (GAME_OVER_TIMER == 0) {
                gameOverCtx->state = GAMEOVER_INACTIVE;
            }
            break;
    }
}
