#include "z_kaleido_scope.h"
#include "assets/textures/parameter_static/parameter_static.h"
#include "assets/textures/icon_item_static/icon_item_static.h"

#define SONG_MAX_LENGTH 8

#if !PLATFORM_GC
#define KALEIDO_COLOR_COLLECT_UNK_R 80
#define KALEIDO_COLOR_COLLECT_UNK_G 150
#define KALEIDO_COLOR_COLLECT_UNK_B 255
#else
#define KALEIDO_COLOR_COLLECT_UNK_R 80
#define KALEIDO_COLOR_COLLECT_UNK_G 255
#define KALEIDO_COLOR_COLLECT_UNK_B 150
#endif

// FIXME this branch breaks this function matching on ntsc-1.2
void KaleidoScope_DrawQuestStatus(PlayState* play, GraphicsContext* gfxCtx) {
    static s16 sHpPrimColors[][4] = {
        { 255, 0, 0, 255 },
        { 255, 70, 0, 150 },
        { 255, 70, 0, 150 },
        { 255, 0, 0, 255 },
    };

    // Shining medallions
    static s16 sMedallionsEnvColors[6 + 6][3] = {
        // Target env color when sMedallionsEnvShineState == 0
        { 0, 0, 0 },// QUEST_MEDALLION_FOREST
        { 0, 0, 0 },// QUEST_MEDALLION_FIRE
        { 0, 0, 0 },// QUEST_MEDALLION_WATER
        { 0, 0, 0 },// QUEST_MEDALLION_SPIRIT
        { 0, 0, 0 },// QUEST_MEDALLION_SHADOW
        { 0, 0, 0 },// QUEST_MEDALLION_LIGHT
        // Target env color when sMedallionsEnvShineState == 2
        { 0, 60, 0 },// QUEST_MEDALLION_FOREST
        { 90, 0, 0 },// QUEST_MEDALLION_FIRE
        { 0, 40, 110 },// QUEST_MEDALLION_WATER
        { 80, 40, 0 },// QUEST_MEDALLION_SPIRIT
        { 70, 0, 90 },// QUEST_MEDALLION_SHADOW
        { 90, 90, 0 },// QUEST_MEDALLION_LIGHT
    };
    // Current (animated) env color for each medallion
    static s16 sMedallionsEnvRed[6] = { 255, 255, 255, 255, 255, 255 };
    static s16 sMedallionsEnvGreen[6] = { 255, 255, 255, 255, 255, 255 };
    static s16 sMedallionsEnvBlue[6] = { 150, 150, 150, 150, 150, 150 };
    static s16 sMedallionsEnvTimer = 20;
    static s16 sMedallionsEnvShineState = 0;

    static s16 sHpPrimRed = 0;
    static s16 sHpPrimGreen = 0;
    static s16 sHpPrimBlue = 0;
    static s16 sHpPrimAlpha = 0;
    static s16 sHpPrimTimer = 20;
    static s16 sHpPrimState = 0;

    static s16 sPlayedSongBtnsNum = 0;
    static s16 sPlaybackSongStartDelayTimer = 0;
    static u8 sPlayedSongBtns[SONG_MAX_LENGTH] = { 0 };
    static s32 sUnused1 = 0;
    static void* sOcarinaBtnTextures[] = {
        gOcarinaBtnIconATex,      // OCARINA_BTN_A
        gOcarinaBtnIconCDownTex,  // OCARINA_BTN_C_DOWN
        gOcarinaBtnIconCRightTex, // OCARINA_BTN_C_RIGHT
        gOcarinaBtnIconCLeftTex,  // OCARINA_BTN_C_LEFT
        gOcarinaBtnIconCUpTex,    // OCARINA_BTN_C_UP
    };
    static u16 D_8082A144[] = {
        0xFFCC, 0xFFCC, 0xFFCC, 0xFFCC, 0xFFCC,
    };
    static s16 sPlayedSongBtnsAlpha[SONG_MAX_LENGTH] = { 0 };
    static s32 sUnused2 = 0;

    static s16 sSongsPrimRed[] = {
        150, // QUEST_SONG_MINUET
        255, // QUEST_SONG_BOLERO
        100, // QUEST_SONG_SERENADE
        255, // QUEST_SONG_REQUIEM
        255, // QUEST_SONG_NOCTURNE
        255, // QUEST_SONG_PRELUDE
        255, // QUEST_SONG_LULLABY
        255, // QUEST_SONG_EPONA
        255, // QUEST_SONG_SARIA
        255, // QUEST_SONG_SUN
        255, // QUEST_SONG_TIME
        255, // QUEST_SONG_STORMS
    };
    static s16 sSongsPrimGreen[] = {
        255, // QUEST_SONG_MINUET
        80,  // QUEST_SONG_BOLERO
        150, // QUEST_SONG_SERENADE
        160, // QUEST_SONG_REQUIEM
        100, // QUEST_SONG_NOCTURNE
        240, // QUEST_SONG_PRELUDE
        255, // QUEST_SONG_LULLABY
        255, // QUEST_SONG_EPONA
        255, // QUEST_SONG_SARIA
        255, // QUEST_SONG_SUN
        255, // QUEST_SONG_TIME
        255, // QUEST_SONG_STORMS
    };
    static s16 sSongsPrimBlue[] = {
        100, // QUEST_SONG_MINUET
        40,  // QUEST_SONG_BOLERO
        255, // QUEST_SONG_SERENADE
        0,   // QUEST_SONG_REQUIEM
        255, // QUEST_SONG_NOCTURNE
        100, // QUEST_SONG_PRELUDE
        255, // QUEST_SONG_LULLABY
        255, // QUEST_SONG_EPONA
        255, // QUEST_SONG_SARIA
        255, // QUEST_SONG_SUN
        255, // QUEST_SONG_TIME
        255, // QUEST_SONG_STORMS
    };

    enum {
        /* -3 */ CURSOR_TO_LEFT = -3, // Cursor on the "scroll to left page" position
        /* -2 */ CURSOR_TO_RIGHT,     // Cursor on the "scroll to right page" position
        /* -1 */ CURSOR_NONE          // No position in that direction, cursor stays where it is
    };
    // Each {up, down, left, right} entry defines where the cursor can move next
    static s8 sCursorPointLinks[][4] = {
        /* QUEST_MEDALLION_FOREST */
        { QUEST_MEDALLION_LIGHT, QUEST_MEDALLION_FIRE, QUEST_MEDALLION_LIGHT, CURSOR_TO_RIGHT },
        /* QUEST_MEDALLION_FIRE */
        { QUEST_MEDALLION_FOREST, QUEST_MEDALLION_WATER, QUEST_MEDALLION_WATER, CURSOR_TO_RIGHT },
        /* QUEST_MEDALLION_WATER */ { CURSOR_NONE, QUEST_GORON_RUBY, QUEST_MEDALLION_SPIRIT, QUEST_MEDALLION_FIRE },
        /* QUEST_MEDALLION_SPIRIT */
        { QUEST_MEDALLION_SHADOW, QUEST_MEDALLION_WATER, QUEST_SONG_STORMS, QUEST_MEDALLION_WATER },
        /* QUEST_MEDALLION_SHADOW */
        { QUEST_MEDALLION_LIGHT, QUEST_MEDALLION_SPIRIT, QUEST_HEART_PIECE, QUEST_MEDALLION_LIGHT },
        /* QUEST_MEDALLION_LIGHT */ { CURSOR_NONE, CURSOR_NONE, QUEST_MEDALLION_SHADOW, QUEST_MEDALLION_FOREST },
        /* QUEST_SONG_MINUET */ { QUEST_SONG_LULLABY, CURSOR_NONE, CURSOR_TO_LEFT, QUEST_SONG_BOLERO },
        /* QUEST_SONG_BOLERO */ { QUEST_SONG_EPONA, CURSOR_NONE, QUEST_SONG_MINUET, QUEST_SONG_SERENADE },
        /* QUEST_SONG_SERENADE */ { QUEST_SONG_SARIA, CURSOR_NONE, QUEST_SONG_BOLERO, QUEST_SONG_REQUIEM },
        /* QUEST_SONG_REQUIEM */ { QUEST_SONG_SUN, CURSOR_NONE, QUEST_SONG_SERENADE, QUEST_SONG_NOCTURNE },
        /* QUEST_SONG_NOCTURNE */ { QUEST_SONG_TIME, CURSOR_NONE, QUEST_SONG_REQUIEM, QUEST_SONG_PRELUDE },
        /* QUEST_SONG_PRELUDE */ { QUEST_SONG_STORMS, CURSOR_NONE, QUEST_SONG_NOCTURNE, QUEST_KOKIRI_EMERALD },
        /* QUEST_SONG_LULLABY */ { QUEST_SKULL_TOKEN, QUEST_SONG_MINUET, CURSOR_TO_LEFT, QUEST_SONG_EPONA },
        /* QUEST_SONG_EPONA */ { QUEST_SKULL_TOKEN, QUEST_SONG_BOLERO, QUEST_SONG_LULLABY, QUEST_SONG_SARIA },
        /* QUEST_SONG_SARIA */ { QUEST_SKULL_TOKEN, QUEST_SONG_SERENADE, QUEST_SONG_EPONA, QUEST_SONG_SUN },
        /* QUEST_SONG_SUN */ { QUEST_HEART_PIECE, QUEST_SONG_REQUIEM, QUEST_SONG_SARIA, QUEST_SONG_TIME },
        /* QUEST_SONG_TIME */ { QUEST_HEART_PIECE, QUEST_SONG_NOCTURNE, QUEST_SONG_SUN, QUEST_SONG_STORMS },
        /* QUEST_SONG_STORMS */ { QUEST_HEART_PIECE, QUEST_SONG_PRELUDE, QUEST_SONG_TIME, QUEST_MEDALLION_SPIRIT },
        /* QUEST_KOKIRI_EMERALD */ { QUEST_MEDALLION_WATER, CURSOR_NONE, QUEST_SONG_PRELUDE, QUEST_GORON_RUBY },
        /* QUEST_GORON_RUBY */ { QUEST_MEDALLION_WATER, CURSOR_NONE, QUEST_KOKIRI_EMERALD, QUEST_ZORA_SAPPHIRE },
        /* QUEST_ZORA_SAPPHIRE */ { QUEST_MEDALLION_WATER, CURSOR_NONE, QUEST_GORON_RUBY, CURSOR_TO_RIGHT },
        /* QUEST_STONE_OF_AGONY */ { CURSOR_NONE, QUEST_SKULL_TOKEN, CURSOR_TO_LEFT, QUEST_GERUDOS_CARD },
        /* QUEST_GERUDOS_CARD */ { CURSOR_NONE, QUEST_SKULL_TOKEN, QUEST_STONE_OF_AGONY, QUEST_HEART_PIECE },
        /* QUEST_SKULL_TOKEN */ { QUEST_STONE_OF_AGONY, QUEST_SONG_LULLABY, CURSOR_TO_LEFT, QUEST_HEART_PIECE },
        /* QUEST_HEART_PIECE */ { CURSOR_NONE, QUEST_SONG_TIME, QUEST_GERUDOS_CARD, QUEST_MEDALLION_SHADOW },
    };
    static s32 sUnused3 = 0;

    PauseContext* pauseCtx = &play->pauseCtx;
    Input* input = &play->state.input[0];
    s16 stepRed;
    s16 stepGreen;
    s16 stepBlue;
    s16 stepAlpha;
    s16 phi_s0; // nextCursorPoint?
    s16 phi_s3; // i?
    s16 bufI;
    s16 j;
    s16 sp216; // cursor?
    s16 i;
    s16 targetColorIndex;
    s16 pad2;
    s16 cursorItem;
    s16 gsTokenDigits[3];

    OPEN_DISPS(gfxCtx, "../z_kaleido_collect.c", 248);

    if ((((u32)pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE) || (pauseCtx->mainState == PAUSE_MAIN_STATE_SONG_PROMPT) ||
         (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG)) &&
        (pauseCtx->pageIndex == PAUSE_QUEST)) {

        pauseCtx->cursorColorSet = 0;

        if (pauseCtx->cursorSpecialPos == 0) {
            pauseCtx->nameColorSet = 0;

            if ((pauseCtx->state != PAUSE_STATE_MAIN) || ((pauseCtx->stickAdjX == 0) && (pauseCtx->stickAdjY == 0))) {
                // No cursor movement
                sp216 = pauseCtx->cursorSlot[PAUSE_QUEST];
            } else {
                // Move cursor based on stick input

                phi_s3 = pauseCtx->cursorPoint[PAUSE_QUEST];

                if (pauseCtx->stickAdjX < -30) {
                    // Move cursor left
                    phi_s0 = sCursorPointLinks[phi_s3][2];
                    if (phi_s0 == CURSOR_TO_LEFT) {
                        KaleidoScope_MoveCursorToSpecialPos(play, PAUSE_CURSOR_PAGE_LEFT);
                        pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                    } else {
                        while (phi_s0 >= 0) {
                            if ((s16)KaleidoScope_UpdateQuestStatusPoint(pauseCtx, phi_s0)) {
                                break;
                            }
                            phi_s0 = sCursorPointLinks[phi_s0][2];
                        }
                    }
                } else if (pauseCtx->stickAdjX > 30) {
                    // Move cursor right
                    phi_s0 = sCursorPointLinks[phi_s3][3];
                    if (phi_s0 == CURSOR_TO_RIGHT) {
                        KaleidoScope_MoveCursorToSpecialPos(play, PAUSE_CURSOR_PAGE_RIGHT);
                        pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                    } else {
                        while (phi_s0 >= 0) {
                            if ((s16)KaleidoScope_UpdateQuestStatusPoint(pauseCtx, phi_s0)) {
                                break;
                            }
                            phi_s0 = sCursorPointLinks[phi_s0][3];
                        }
                    }
                }

                if (pauseCtx->stickAdjY < -30) {
                    // Move cursor down
                    phi_s0 = sCursorPointLinks[phi_s3][1];
                    while (phi_s0 >= 0) {
                        if ((s16)KaleidoScope_UpdateQuestStatusPoint(pauseCtx, phi_s0)) {
                            break;
                        }
                        phi_s0 = sCursorPointLinks[phi_s0][1];
                    }
                } else if (pauseCtx->stickAdjY > 30) {
                    // Move cursor up
                    phi_s0 = sCursorPointLinks[phi_s3][0];
                    while (phi_s0 >= 0) {
                        if ((s16)KaleidoScope_UpdateQuestStatusPoint(pauseCtx, phi_s0)) {
                            break;
                        }
                        phi_s0 = sCursorPointLinks[phi_s0][0];
                    }
                }

                // if the cursor point changed
                if (pauseCtx->cursorPoint[PAUSE_QUEST] != i) {
                    pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                    Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                }

                // Update cursor item and slot

                if (pauseCtx->cursorPoint[PAUSE_QUEST] != QUEST_HEART_PIECE) {
                    if (CHECK_QUEST_ITEM(pauseCtx->cursorPoint[PAUSE_QUEST])) {
                        if (pauseCtx->cursorPoint[PAUSE_QUEST] < QUEST_SONG_MINUET) {
                            cursorItem =
                                ITEM_MEDALLION_FOREST - QUEST_MEDALLION_FOREST + pauseCtx->cursorPoint[PAUSE_QUEST];
                            PRINTF("000 ccc=%d\n", cursorItem);
                        } else if (pauseCtx->cursorPoint[PAUSE_QUEST] < QUEST_KOKIRI_EMERALD) {
                            cursorItem = ITEM_SONG_MINUET - QUEST_SONG_MINUET + pauseCtx->cursorPoint[PAUSE_QUEST];
                            PRINTF("111 ccc=%d\n", cursorItem);
                        } else {
                            cursorItem =
                                ITEM_KOKIRI_EMERALD - QUEST_KOKIRI_EMERALD + pauseCtx->cursorPoint[PAUSE_QUEST];
                            PRINTF("222 ccc=%d (%d, %d, %d)\n", cursorItem, pauseCtx->cursorPoint[PAUSE_QUEST],
                                   QUEST_KOKIRI_EMERALD, ITEM_KOKIRI_EMERALD);
                        }
                    } else {
                        cursorItem = PAUSE_ITEM_NONE;
                        PRINTF("999 ccc=%d (%d,  %d)\n", PAUSE_ITEM_NONE, pauseCtx->cursorPoint[PAUSE_QUEST], 0x18);
                    }
                } else {
                    if ((gSaveContext.save.info.inventory.questItems & 0xF0000000) != 0) {
                        cursorItem = ITEM_HEART_CONTAINER;
                    } else {
                        cursorItem = PAUSE_ITEM_NONE;
                    }
                    PRINTF("888 ccc=%d (%d,  %d,  %x)\n", cursorItem, pauseCtx->cursorPoint[PAUSE_QUEST],
                           ITEM_HEART_CONTAINER, gSaveContext.save.info.inventory.questItems & 0xF0000000);
                }

                sp216 = pauseCtx->cursorPoint[PAUSE_QUEST];
                pauseCtx->cursorItem[pauseCtx->pageIndex] = cursorItem;
                pauseCtx->cursorSlot[pauseCtx->pageIndex] = sp216;
            }

            // Use the appropriate QUEST_MEDALLION_FOREST-QUEST_HEART_PIECE quad (see `KaleidoScope_SetVertices`)
            KaleidoScope_SetCursorPos(pauseCtx, sp216 * 4, pauseCtx->questVtx);

            // Handle part of the ocarina songs playback

            if ((pauseCtx->state == PAUSE_STATE_MAIN) && (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE) &&
                (pauseCtx->cursorSpecialPos == 0)) {
                if ((sp216 >= QUEST_SONG_MINUET) && (sp216 < QUEST_KOKIRI_EMERALD)) {
                    if (CHECK_QUEST_ITEM(pauseCtx->cursorPoint[PAUSE_QUEST])) {
                        // The cursor is on a learned song
                        // Set some things up for song playback

                        sp216 = pauseCtx->cursorSlot[PAUSE_QUEST];
                        pauseCtx->ocarinaSongIdx = gOcarinaSongItemMap[sp216 - QUEST_SONG_MINUET];

                        sPlaybackSongStartDelayTimer = 10;

                        for (i = 0; i < SONG_MAX_LENGTH; i++) {
                            sPlayedSongBtns[i] = OCARINA_BTN_INVALID;
                            sPlayedSongBtnsAlpha[i] = 0;
                        }
                        sPlayedSongBtnsNum = 0;

                        // Have the player play a song, immediately cancelled below
                        // Also clear the playback staff
                        // This has no purpose (?)
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
                        AudioOcarina_Start((1 << pauseCtx->ocarinaSongIdx) + 0x8000);
                        pauseCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
                        pauseCtx->ocarinaStaff->pos = 0;
                        pauseCtx->ocarinaStaff->state = 0xFF;

                        R_PAUSE_SONG_OCA_BTN_Y(OCARINA_BTN_A) = -62;
                        R_PAUSE_SONG_OCA_BTN_Y(OCARINA_BTN_C_DOWN) = -56;
                        R_PAUSE_SONG_OCA_BTN_Y(OCARINA_BTN_C_RIGHT) = -49;
                        R_PAUSE_SONG_OCA_BTN_Y(OCARINA_BTN_C_LEFT) = -46;
                        R_PAUSE_SONG_OCA_BTN_Y(OCARINA_BTN_C_UP) = -41;

                        pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG;

                        // Stop having the player play a song as done above
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                    }
                }
            } else if (pauseCtx->mainState == PAUSE_MAIN_STATE_SONG_PROMPT) {
                // Abort having the player play the song if the stick is moved
                if ((pauseCtx->stickAdjX != 0) || (pauseCtx->stickAdjY != 0)) {
                    pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;

                    AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                }
            } else if (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG) {
                if (CHECK_BTN_ALL(input->press.button, BTN_A) && (sp216 >= QUEST_SONG_MINUET) &&
                    (sp216 < QUEST_KOKIRI_EMERALD)) {

                    pauseCtx->mainState = PAUSE_MAIN_STATE_SONG_PLAYBACK_START;

                    sPlaybackSongStartDelayTimer = 10;
                }
            }
        } else if (pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) {
            if (pauseCtx->stickAdjX > 30) {
                // Move cursor right from the "scroll to left page" position

                pauseCtx->cursorPoint[PAUSE_QUEST] = QUEST_STONE_OF_AGONY;
                pauseCtx->nameDisplayTimer = 0;
                pauseCtx->cursorSpecialPos = 0;

                sp216 = pauseCtx->cursorPoint[PAUSE_QUEST];
                KaleidoScope_SetCursorPos(pauseCtx, sp216 * 4, pauseCtx->questVtx);
                Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                if (CHECK_QUEST_ITEM(pauseCtx->cursorPoint[PAUSE_QUEST])) {
                    cursorItem = ITEM_STONE_OF_AGONY - QUEST_STONE_OF_AGONY + pauseCtx->cursorPoint[PAUSE_QUEST];
                } else {
                    cursorItem = PAUSE_ITEM_NONE;
                }
                sp216 = pauseCtx->cursorPoint[PAUSE_QUEST];
                pauseCtx->cursorItem[pauseCtx->pageIndex] = cursorItem;
                pauseCtx->cursorSlot[pauseCtx->pageIndex] = sp216;
            }
        } else { // cursorSpecialPos == PAUSE_CURSOR_PAGE_RIGHT
            if (pauseCtx->stickAdjX < -30) {
                // Move cursor left from the "scroll to right page" position

                pauseCtx->cursorPoint[PAUSE_QUEST] = QUEST_MEDALLION_FOREST;
                pauseCtx->nameDisplayTimer = 0;
                pauseCtx->cursorSpecialPos = 0;

                sp216 = pauseCtx->cursorPoint[PAUSE_QUEST];
                KaleidoScope_SetCursorPos(pauseCtx, sp216 * 4, pauseCtx->questVtx);
                Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                if (CHECK_QUEST_ITEM(pauseCtx->cursorPoint[PAUSE_QUEST])) {
                    // Only the first if may be reached, as QUEST_MEDALLION_FOREST is set above
                    if (pauseCtx->cursorPoint[PAUSE_QUEST] < QUEST_SONG_MINUET) {
                        cursorItem =
                            ITEM_MEDALLION_FOREST - QUEST_MEDALLION_FOREST + pauseCtx->cursorPoint[PAUSE_QUEST];
                    } else if (pauseCtx->cursorPoint[PAUSE_QUEST] < QUEST_SONG_LULLABY) {
                        //! @bug this would result in the wrong item
                        cursorItem = ITEM_SCALE_GOLDEN - QUEST_SONG_MINUET + pauseCtx->cursorPoint[PAUSE_QUEST];
                    } else {
                        //! @bug this would result in the wrong item
                        cursorItem = ITEM_DUNGEON_COMPASS - QUEST_SONG_LULLABY + pauseCtx->cursorPoint[PAUSE_QUEST];
                    }
                } else {
                    cursorItem = PAUSE_ITEM_NONE;
                }
                sp216 = pauseCtx->cursorPoint[PAUSE_QUEST];
                pauseCtx->cursorItem[pauseCtx->pageIndex] = cursorItem;
                pauseCtx->cursorSlot[pauseCtx->pageIndex] = sp216;
            }
        }

    } else if (pauseCtx->mainState == PAUSE_MAIN_STATE_SONG_PLAYBACK_START) {
        // After a short delay, start playing the selected song back to the player

        pauseCtx->cursorColorSet = 8;

        if (--sPlaybackSongStartDelayTimer == 0) {
            for (i = 0; i < SONG_MAX_LENGTH; i++) {
                sPlayedSongBtns[i] = OCARINA_BTN_INVALID;
                sPlayedSongBtnsAlpha[i] = 0;
            }
            sPlayedSongBtnsNum = 0;

            R_PAUSE_SONG_OCA_BTN_Y(OCARINA_BTN_A) = -62;
            R_PAUSE_SONG_OCA_BTN_Y(OCARINA_BTN_C_DOWN) = -56;
            R_PAUSE_SONG_OCA_BTN_Y(OCARINA_BTN_C_RIGHT) = -49;
            R_PAUSE_SONG_OCA_BTN_Y(OCARINA_BTN_C_LEFT) = -46;
            R_PAUSE_SONG_OCA_BTN_Y(OCARINA_BTN_C_UP) = -41;

            sp216 = pauseCtx->cursorSlot[PAUSE_QUEST];
            AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
            AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
            pauseCtx->ocarinaSongIdx = gOcarinaSongItemMap[sp216 - QUEST_SONG_MINUET];
            AudioOcarina_SetPlaybackSong(pauseCtx->ocarinaSongIdx + 1, 1);

            pauseCtx->mainState = PAUSE_MAIN_STATE_SONG_PLAYBACK;

            pauseCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
            pauseCtx->ocarinaStaff->pos = 0;

            sp216 = pauseCtx->cursorSlot[PAUSE_QUEST];
            KaleidoScope_SetCursorPos(pauseCtx, sp216 * 4, pauseCtx->questVtx);
        }
    } else {
        sp216 = pauseCtx->cursorSlot[PAUSE_QUEST];
        KaleidoScope_SetCursorPos(pauseCtx, sp216 * 4, pauseCtx->questVtx);
    }

    // Draw medallions
    // QUEST_MEDALLION_FOREST to QUEST_MEDALLION_LIGHT

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

    sMedallionsEnvTimer--;

    for (j = 0, bufI = QUEST_MEDALLION_FOREST * 4; j < QUEST_SONG_MINUET - QUEST_MEDALLION_FOREST; j++, bufI += 4) {
        if ((sMedallionsEnvShineState != 1) && (sMedallionsEnvShineState != 3)) {
            targetColorIndex = (sMedallionsEnvShineState != 0) ? j + 6 : j;

            if (sMedallionsEnvTimer != 0) {
                stepRed = ABS(sMedallionsEnvRed[j] - sMedallionsEnvColors[targetColorIndex][0]) / sMedallionsEnvTimer;
                stepGreen =
                    ABS(sMedallionsEnvGreen[j] - sMedallionsEnvColors[targetColorIndex][1]) / sMedallionsEnvTimer;
                stepBlue = ABS(sMedallionsEnvBlue[j] - sMedallionsEnvColors[targetColorIndex][2]) / sMedallionsEnvTimer;
                if (sMedallionsEnvRed[j] >= sMedallionsEnvColors[targetColorIndex][0]) {
                    sMedallionsEnvRed[j] -= stepRed;
                } else {
                    sMedallionsEnvRed[j] += stepRed;
                }
                if (sMedallionsEnvGreen[j] >= sMedallionsEnvColors[targetColorIndex][1]) {
                    sMedallionsEnvGreen[j] -= stepGreen;
                } else {
                    sMedallionsEnvGreen[j] += stepGreen;
                }
                if (sMedallionsEnvBlue[j] >= sMedallionsEnvColors[targetColorIndex][2]) {
                    sMedallionsEnvBlue[j] -= stepBlue;
                } else {
                    sMedallionsEnvBlue[j] += stepBlue;
                }
            } else {
                sMedallionsEnvRed[j] = sMedallionsEnvColors[targetColorIndex][0];
                sMedallionsEnvGreen[j] = sMedallionsEnvColors[targetColorIndex][1];
                sMedallionsEnvBlue[j] = sMedallionsEnvColors[targetColorIndex][2];
            }
        }

        if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST + j)) {
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
            gDPSetEnvColor(POLY_OPA_DISP++, sMedallionsEnvRed[j], sMedallionsEnvGreen[j], sMedallionsEnvBlue[j], 0);
            gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[bufI], 4, 0);

            KaleidoScope_DrawQuadTextureRGBA32(gfxCtx, gItemIcons[ITEM_MEDALLION_FOREST + j], QUEST_ICON_WIDTH,
                                               QUEST_ICON_HEIGHT, 0);
        }
    }

    if (sMedallionsEnvTimer == 0) {
        sMedallionsEnvTimer = R_PAUSE_QUEST_MEDALLION_SHINE_TIME(sMedallionsEnvShineState);
        if (++sMedallionsEnvShineState >= 4) {
            sMedallionsEnvShineState = 0;
        }
    }

    // Draw songs
    // QUEST_SONG_MINUET to QUEST_SONG_STORMS

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);

    gDPLoadTextureBlock(POLY_OPA_DISP++, gSongNoteTex, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 24, 0, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    for (j = 0; j < QUEST_KOKIRI_EMERALD - QUEST_SONG_MINUET; j++, bufI += 4) {
        if (CHECK_QUEST_ITEM(QUEST_SONG_MINUET + j)) {
            if ((QUEST_SONG_MINUET + j) == sp216) {
                pauseCtx->questVtx[bufI + 0].v.ob[0] = pauseCtx->questVtx[bufI + 2].v.ob[0] =
                    pauseCtx->questVtx[bufI + 0].v.ob[0] - 2;

                pauseCtx->questVtx[bufI + 1].v.ob[0] = pauseCtx->questVtx[bufI + 3].v.ob[0] =
                    pauseCtx->questVtx[bufI + 1].v.ob[0] + 4;

                pauseCtx->questVtx[bufI + 0].v.ob[1] = pauseCtx->questVtx[bufI + 1].v.ob[1] =
                    pauseCtx->questVtx[bufI + 0].v.ob[1] + 2;

                pauseCtx->questVtx[bufI + 2].v.ob[1] = pauseCtx->questVtx[bufI + 3].v.ob[1] =
                    pauseCtx->questVtx[bufI + 2].v.ob[1] - 4;
            }

            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sSongsPrimRed[j], sSongsPrimGreen[j], sSongsPrimBlue[j],
                            pauseCtx->alpha);
            gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[bufI], 4, 0);
            gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
        }
    }

    // Draw spiritual stones
    // QUEST_KOKIRI_EMERALD, QUEST_GORON_RUBY, QUEST_ZORA_SAPPHIRE

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);

    for (j = 0; j < QUEST_STONE_OF_AGONY - QUEST_KOKIRI_EMERALD; j++, bufI += 4) {
        if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD + j)) {
            gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[bufI], 4, 0);
            KaleidoScope_DrawQuadTextureRGBA32(gfxCtx, gItemIcons[ITEM_KOKIRI_EMERALD + j], QUEST_ICON_WIDTH,
                                               QUEST_ICON_HEIGHT, 0);
        }
    }

    // Draw QUEST_STONE_OF_AGONY, QUEST_GERUDOS_CARD, QUEST_SKULL_TOKEN

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

    for (j = 0; j < QUEST_HEART_PIECE - QUEST_STONE_OF_AGONY; j++, bufI += 4) {
        if (CHECK_QUEST_ITEM(QUEST_STONE_OF_AGONY + j)) {
            gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[bufI], 4, 0);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
            KaleidoScope_DrawQuadTextureRGBA32(gfxCtx, gItemIcons[ITEM_STONE_OF_AGONY + j], QUEST_ICON_WIDTH,
                                               QUEST_ICON_HEIGHT, 0);
        }
    }

    // Draw heart pieces
    // QUEST_HEART_PIECE

    stepRed = ABS(sHpPrimRed - sHpPrimColors[sHpPrimState][0]) / sHpPrimTimer;
    stepGreen = ABS(sHpPrimGreen - sHpPrimColors[sHpPrimState][1]) / sHpPrimTimer;
    stepBlue = ABS(sHpPrimBlue - sHpPrimColors[sHpPrimState][2]) / sHpPrimTimer;
    stepAlpha = ABS(sHpPrimAlpha - sHpPrimColors[sHpPrimState][3]) / sHpPrimTimer;
    if (sHpPrimRed >= sHpPrimColors[sHpPrimState][0]) {
        sHpPrimRed -= stepRed;
    } else {
        sHpPrimRed += stepRed;
    }
    if (sHpPrimGreen >= sHpPrimColors[sHpPrimState][1]) {
        sHpPrimGreen -= stepGreen;
    } else {
        sHpPrimGreen += stepGreen;
    }
    if (sHpPrimBlue >= sHpPrimColors[sHpPrimState][2]) {
        sHpPrimBlue -= stepBlue;
    } else {
        sHpPrimBlue += stepBlue;
    }
    if (sHpPrimAlpha >= sHpPrimColors[sHpPrimState][3]) {
        sHpPrimAlpha -= stepAlpha;
    } else {
        sHpPrimAlpha += stepAlpha;
    }

    if (--sHpPrimTimer == 0) {
        sHpPrimRed = sHpPrimColors[sHpPrimState][0];
        sHpPrimGreen = sHpPrimColors[sHpPrimState][1];
        sHpPrimBlue = sHpPrimColors[sHpPrimState][2];
        sHpPrimAlpha = sHpPrimColors[sHpPrimState][3];
        sHpPrimTimer = ZREG(24 + sHpPrimState);
        if (++sHpPrimState >= ARRAY_COUNT(sHpPrimColors)) {
            sHpPrimState = 0;
        }
    }

    if ((gSaveContext.save.info.inventory.questItems >> QUEST_HEART_PIECE_COUNT) != 0) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

        if ((pauseCtx->state == PAUSE_STATE_OPENING_1) || (pauseCtx->state == PAUSE_STATE_CLOSING)) {
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sHpPrimColors[0][0], sHpPrimColors[0][1], sHpPrimColors[0][2],
                            pauseCtx->alpha);
        } else {
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sHpPrimRed, sHpPrimGreen, sHpPrimBlue, sHpPrimAlpha);
        }

        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
        gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[bufI], 4, 0);

        POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(
            POLY_OPA_DISP,
            gItemIcons[ITEM_HEART_PIECE_2 - 1 +
                       (((gSaveContext.save.info.inventory.questItems & 0xF0000000) & 0xF0000000) >>
                        QUEST_HEART_PIECE_COUNT)],
            48, 48, 0);
    }

    //

    if (pauseCtx->state == PAUSE_STATE_MAIN) {
        bufI += (QUAD_QUEST_SONG_NOTE_A1 - QUEST_HEART_PIECE) * 4;

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

        // Update cursor color
        if ((pauseCtx->cursorSpecialPos == 0) && (sp216 >= QUEST_SONG_MINUET) && (sp216 < QUEST_KOKIRI_EMERALD)) {
            if ((pauseCtx->mainState < PAUSE_MAIN_STATE_3) /* PAUSE_MAIN_STATE_IDLE, PAUSE_MAIN_STATE_SWITCHING_PAGE,
                                                                 PAUSE_MAIN_STATE_SONG_PLAYBACK */
                || (pauseCtx->mainState == PAUSE_MAIN_STATE_SONG_PROMPT) ||
                (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG)) {
                if (pauseCtx->cursorItem[pauseCtx->pageIndex] != PAUSE_ITEM_NONE) {
                    pauseCtx->cursorColorSet = 8;
                    // PAUSE_MAIN_STATE_SONG_PLAYBACK, PAUSE_MAIN_STATE_3,
                    // PAUSE_MAIN_STATE_SONG_PROMPT_INIT, PAUSE_MAIN_STATE_SONG_PROMPT,
                    // PAUSE_MAIN_STATE_SONG_PROMPT_DONE
                    if ((pauseCtx->mainState >= PAUSE_MAIN_STATE_SONG_PLAYBACK) &&
                        (pauseCtx->mainState <= PAUSE_MAIN_STATE_SONG_PROMPT_DONE)) {
                        pauseCtx->cursorColorSet = 0;
                    }
                }
            }
        }

        if (pauseCtx->mainState == PAUSE_MAIN_STATE_SONG_PLAYBACK) {
            // Draw ocarina buttons as the song playback progresses
            // QUAD_QUEST_SONG_NOTE_A1 up to QUAD_QUEST_SONG_NOTE_A8

            pauseCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();

            if (pauseCtx->ocarinaStaff->pos != 0) {
                if (sPlayedSongBtnsNum == (pauseCtx->ocarinaStaff->pos - 1)) {
                    sPlayedSongBtnsNum++;
                    sPlayedSongBtns[pauseCtx->ocarinaStaff->pos - 1] = pauseCtx->ocarinaStaff->buttonIndex;
                }

                for (j = 0, i = 0; j < SONG_MAX_LENGTH; j++, i += 4, bufI += 4) {
                    if (sPlayedSongBtns[j] == OCARINA_BTN_INVALID) {
                        break;
                    }

                    if (sPlayedSongBtnsAlpha[j] != 255) {
                        sPlayedSongBtnsAlpha[j] += R_OCARINA_BUTTONS_APPEAR_ALPHA_STEP;
                        if (sPlayedSongBtnsAlpha[j] >= 255) {
                            sPlayedSongBtnsAlpha[j] = 255;
                        }
                    }

                    pauseCtx->questVtx[bufI + 0].v.ob[1] = pauseCtx->questVtx[bufI + 1].v.ob[1] =
                        R_PAUSE_SONG_OCA_BTN_Y(sPlayedSongBtns[j]);

                    pauseCtx->questVtx[bufI + 2].v.ob[1] = pauseCtx->questVtx[bufI + 3].v.ob[1] =
                        pauseCtx->questVtx[bufI + 0].v.ob[1] - 12;

                    gDPPipeSync(POLY_OPA_DISP++);

                    if (sPlayedSongBtns[j] == OCARINA_BTN_A) {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, KALEIDO_COLOR_COLLECT_UNK_R, KALEIDO_COLOR_COLLECT_UNK_G,
                                        KALEIDO_COLOR_COLLECT_UNK_B, sPlayedSongBtnsAlpha[j]);
                    } else {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 50, sPlayedSongBtnsAlpha[j]);
                    }

                    gDPSetEnvColor(POLY_OPA_DISP++, 10, 10, 10, 0);
                    gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[bufI], 4, 0);

                    gDPLoadTextureBlock(POLY_OPA_DISP++, sOcarinaBtnTextures[sPlayedSongBtns[j]], G_IM_FMT_IA,
                                        G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                                        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
                }
            }
        } else if (((pauseCtx->mainState >= PAUSE_MAIN_STATE_SONG_PROMPT_INIT) &&
                    (pauseCtx->mainState <= PAUSE_MAIN_STATE_SONG_PROMPT_DONE)
                    /* PAUSE_MAIN_STATE_SONG_PROMPT_INIT, PAUSE_MAIN_STATE_SONG_PROMPT,
                       PAUSE_MAIN_STATE_SONG_PROMPT_DONE */
                    ) ||
                   (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG)) {
            // Draw the buttons for playing a song
            // QUAD_QUEST_SONG_NOTE_A1 up to QUAD_QUEST_SONG_NOTE_A8

            // temps reused, fake?
            stepGreen = pauseCtx->ocarinaSongIdx;
            stepRed = gOcarinaSongButtons[stepGreen].numButtons;

            j = bufI;

            for (i = 0; i < stepRed; i++, bufI += 4) {
                pauseCtx->questVtx[bufI + 0].v.ob[1] = pauseCtx->questVtx[bufI + 1].v.ob[1] =
                    R_PAUSE_SONG_OCA_BTN_Y(gOcarinaSongButtons[stepGreen].buttonsIndex[i]);

                pauseCtx->questVtx[bufI + 2].v.ob[1] = pauseCtx->questVtx[bufI + 3].v.ob[1] =
                    pauseCtx->questVtx[bufI + 0].v.ob[1] - 12;

                gDPPipeSync(POLY_OPA_DISP++);

                if (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG) {
                    if (gOcarinaSongButtons[stepGreen].buttonsIndex[i] == OCARINA_BTN_A) {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, KALEIDO_COLOR_COLLECT_UNK_R, KALEIDO_COLOR_COLLECT_UNK_G,
                                        KALEIDO_COLOR_COLLECT_UNK_B, 200);
                    } else {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 50, 200);
                    }
                } else {
                    // Gray out buttons during the player playing the song
                    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 150, 150, 150, 150);
                }

                gDPSetEnvColor(POLY_OPA_DISP++, 10, 10, 10, 0);

                gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[bufI], 4, 0);

                gDPLoadTextureBlock(POLY_OPA_DISP++,
                                    sOcarinaBtnTextures[gOcarinaSongButtons[stepGreen].buttonsIndex[i]], G_IM_FMT_IA,
                                    G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                                    G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
            }

            if (pauseCtx->mainState != PAUSE_MAIN_STATE_IDLE_CURSOR_ON_SONG) {
                // Draw the buttons colored as the player plays the song
                // QUAD_QUEST_SONG_NOTE_B1 up to QUAD_QUEST_SONG_NOTE_B8

                pauseCtx->ocarinaStaff = AudioOcarina_GetPlayingStaff();

                if (pauseCtx->ocarinaStaff->pos != 0) {
                    if (sPlayedSongBtnsNum == (pauseCtx->ocarinaStaff->pos - 1)) {
                        if ((pauseCtx->ocarinaStaff->buttonIndex >= OCARINA_BTN_A) &&
                            (pauseCtx->ocarinaStaff->buttonIndex <= OCARINA_BTN_C_UP)) {
                            sPlayedSongBtns[pauseCtx->ocarinaStaff->pos - 1] = pauseCtx->ocarinaStaff->buttonIndex;
                            sPlayedSongBtns[pauseCtx->ocarinaStaff->pos] = OCARINA_BTN_INVALID;
                            sPlayedSongBtnsNum++;
                        }
                    }
                }

                bufI = j + ((QUAD_QUEST_SONG_NOTE_B1 - QUAD_QUEST_SONG_NOTE_A1) * 4);

                for (i = 0; i < SONG_MAX_LENGTH; i++, bufI += 4) {
                    if (sPlayedSongBtns[i] == OCARINA_BTN_INVALID) {
                        continue;
                    }

                    if (sPlayedSongBtnsAlpha[i] != 255) {
                        sPlayedSongBtnsAlpha[i] += R_OCARINA_BUTTONS_APPEAR_ALPHA_STEP;
                        if (sPlayedSongBtnsAlpha[i] >= 255) {
                            sPlayedSongBtnsAlpha[i] = 255;
                        }
                    }

                    pauseCtx->questVtx[bufI + 0].v.ob[1] = pauseCtx->questVtx[bufI + 1].v.ob[1] =
                        R_PAUSE_SONG_OCA_BTN_Y(sPlayedSongBtns[i]);

                    pauseCtx->questVtx[bufI + 2].v.ob[1] = pauseCtx->questVtx[bufI + 3].v.ob[1] =
                        pauseCtx->questVtx[bufI + 0].v.ob[1] - 12;

                    gDPPipeSync(POLY_OPA_DISP++);

                    if (sPlayedSongBtns[i] == OCARINA_BTN_A) {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, KALEIDO_COLOR_COLLECT_UNK_R, KALEIDO_COLOR_COLLECT_UNK_G,
                                        KALEIDO_COLOR_COLLECT_UNK_B, sPlayedSongBtnsAlpha[i]);
                    } else {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 50, sPlayedSongBtnsAlpha[i]);
                    }

                    gDPSetEnvColor(POLY_OPA_DISP++, 10, 10, 10, 0);

                    gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[bufI], 4, 0);

                    gDPLoadTextureBlock(POLY_OPA_DISP++, sOcarinaBtnTextures[sPlayedSongBtns[i]], G_IM_FMT_IA,
                                        G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                                        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
                }

                if (pauseCtx->mainState == PAUSE_MAIN_STATE_SONG_PROMPT_INIT) {
                    for (i = 0; i < SONG_MAX_LENGTH; i++) {
                        sPlayedSongBtns[i] = OCARINA_BTN_INVALID;
                        sPlayedSongBtnsAlpha[i] = 0;
                    }
                    sPlayedSongBtnsNum = 0;

                    AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
                    AudioOcarina_Start((1 << pauseCtx->ocarinaSongIdx) + 0x8000);
                    pauseCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
                    pauseCtx->ocarinaStaff->pos = 0;
                    pauseCtx->ocarinaStaff->state = 0xFE;

                    pauseCtx->mainState = PAUSE_MAIN_STATE_SONG_PROMPT;
                }
            }
        }
    }

    // Draw amount of gold skulltula tokens

    if (CHECK_QUEST_ITEM(QUEST_SKULL_TOKEN)) {
        // Draw amount of gold skulltula tokens
        // QUAD_QUEST_SKULL_TOKENS_DIGIT1_SHADOW to QUAD_QUEST_SKULL_TOKENS_DIGIT3

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

        gsTokenDigits[0] = gsTokenDigits[1] = 0;
        gsTokenDigits[2] = gSaveContext.save.info.inventory.gsTokens;

        while (gsTokenDigits[2] >= 100) {
            gsTokenDigits[0]++;
            gsTokenDigits[2] -= 100;
        }

        while (gsTokenDigits[2] >= 10) {
            gsTokenDigits[1]++;
            gsTokenDigits[2] -= 10;
        }

        gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[QUAD_QUEST_SKULL_TOKENS_DIGIT1_SHADOW * 4], 6 * 4, 0);

        for (i = 0, j = 0; i < 2; i++) {
            if (i == 0) {
                // Text shadow
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 0, 0, 0, pauseCtx->alpha);
            } else {
                // Text color
                if (gSaveContext.save.info.inventory.gsTokens == 100) {
                    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 200, 50, 50, pauseCtx->alpha);
                } else {
                    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
                }
            }

            // Variable reused as a flag indicating all digits onwards should be displayed
            cursorItem = false;

            for (bufI = 0; bufI < 3; bufI++, j += 4) {
                if ((bufI >= 2) || (gsTokenDigits[bufI] != 0) || cursorItem) {
                    gDPLoadTextureBlock(POLY_OPA_DISP++, ((u8*)gCounterDigit0Tex + (8 * 16 * gsTokenDigits[bufI])),
                                        G_IM_FMT_I, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                    gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);

                    gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);

                    cursorItem = true;
                }
            }
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_kaleido_collect.c", 863);
}

s32 KaleidoScope_UpdateQuestStatusPoint(PauseContext* pauseCtx, s32 point) {
    pauseCtx->cursorPoint[PAUSE_QUEST] = point;

    return true;
}
