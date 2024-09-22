#include "z_kaleido_scope.h"
#include "assets/textures/parameter_static/parameter_static.h"
#include "assets/textures/icon_item_static/icon_item_static.h"

#if !PLATFORM_GC
#define KALEIDO_COLOR_COLLECT_UNK_R 80
#define KALEIDO_COLOR_COLLECT_UNK_G 150
#define KALEIDO_COLOR_COLLECT_UNK_B 255
#else
#define KALEIDO_COLOR_COLLECT_UNK_R 80
#define KALEIDO_COLOR_COLLECT_UNK_G 255
#define KALEIDO_COLOR_COLLECT_UNK_B 150
#endif

void KaleidoScope_DrawQuestStatus(PlayState* play, GraphicsContext* gfxCtx) {
    static s16 sHpPrimColors[][4] = {
        { 255, 0, 0, 255 },
        { 255, 70, 0, 150 },
        { 255, 70, 0, 150 },
        { 255, 0, 0, 255 },
    };

    // Shining medallions
    static s16 sMedEnvColors[6 + 6][3] = {
        // Target env color when sMedEnvShineState == 0
        { 0, 0, 0 },
        { 0, 0, 0 },
        { 0, 0, 0 },
        { 0, 0, 0 },
        { 0, 0, 0 },
        { 0, 0, 0 },
        // Target env color when sMedEnvShineState == 2
        { 0, 60, 0 },
        { 90, 0, 0 },
        { 0, 40, 110 },
        { 80, 40, 0 },
        { 70, 0, 90 },
        { 90, 90, 0 },
    };
    // Current (animated) env color for each medallion
    static s16 sMedEnvRed[6] = { 255, 255, 255, 255, 255, 255 };
    static s16 sMedEnvGreen[6] = { 255, 255, 255, 255, 255, 255 };
    static s16 sMedEnvBlue[6] = { 150, 150, 150, 150, 150, 150 };
    static s16 sMedEnvTimer = 20;
    static s16 sMedEnvShineState = 0;

    static s16 sHpPrimRed = 0;
    static s16 sHpPrimGreen = 0;
    static s16 sHpPrimBlue = 0;
    static s16 sHpPrimAlpha = 0;
    static s16 sHpPrimTimer = 20;
    static s16 sHpPrimState = 0;

    static s16 D_8082A11C = 0;
    static s16 D_8082A120 = 0;
    static u8 D_8082A124[] = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    };
    static void* D_8082A130[] = {
        gOcarinaBtnIconATex,      // OCARINA_BTN_A
        gOcarinaBtnIconCDownTex,  // OCARINA_BTN_C_DOWN
        gOcarinaBtnIconCRightTex, // OCARINA_BTN_C_RIGHT
        gOcarinaBtnIconCLeftTex,  // OCARINA_BTN_C_LEFT
        gOcarinaBtnIconCUpTex,    // OCARINA_BTN_C_UP
    };
    static u16 D_8082A144[] = {
        0xFFCC, 0xFFCC, 0xFFCC, 0xFFCC, 0xFFCC,
    };
    static s16 D_8082A150[] = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    };

    static s16 sSongsPrimRed[] = {
        150, 255, 100, 255, 255, 255, 255, 255, 255, 255, 255, 255,
    };
    static s16 sSongsPrimGreen[] = {
        255, 80, 150, 160, 100, 240, 255, 255, 255, 255, 255, 255,
    };
    static s16 sSongsPrimBlue[] = {
        100, 40, 255, 0, 255, 100, 255, 255, 255, 255, 255, 255,
    };

    static s8 D_8082A1AC[][4] = {
        { 0x05, 0x01, 0x05, 0xFE }, { 0x00, 0x02, 0x02, 0xFE }, { 0xFF, 0x13, 0x03, 0x01 }, { 0x04, 0x02, 0x11, 0x02 },
        { 0x05, 0x03, 0x18, 0x05 }, { 0xFF, 0xFF, 0x04, 0x00 }, { 0x0C, 0xFF, 0xFD, 0x07 }, { 0x0D, 0xFF, 0x06, 0x08 },
        { 0x0E, 0xFF, 0x07, 0x09 }, { 0x0F, 0xFF, 0x08, 0x0A }, { 0x10, 0xFF, 0x09, 0x0B }, { 0x11, 0xFF, 0x0A, 0x12 },
        { 0x17, 0x06, 0xFD, 0x0D }, { 0x17, 0x07, 0x0C, 0x0E }, { 0x17, 0x08, 0x0D, 0x0F }, { 0x18, 0x09, 0x0E, 0x10 },
        { 0x18, 0x0A, 0x0F, 0x11 }, { 0x18, 0x0B, 0x10, 0x03 }, { 0x02, 0xFF, 0x0B, 0x13 }, { 0x02, 0xFF, 0x12, 0x14 },
        { 0x02, 0xFF, 0x13, 0xFE }, { 0xFF, 0x17, 0xFD, 0x16 }, { 0xFF, 0x17, 0x15, 0x18 }, { 0x15, 0x0C, 0xFD, 0x18 },
        { 0xFF, 0x10, 0x16, 0x04 }, { 0x00, 0x00, 0x00, 0x00 },
    };

    PauseContext* pauseCtx = &play->pauseCtx;
    Input* input = &play->state.input[0];
    s16 stepRed;
    s16 stepGreen;
    s16 stepBlue;
    s16 stepAlpha;
    s16 phi_s0;
    s16 phi_s3;
    s16 bufI;
    s16 j;
    s16 sp216;
    s16 i;
    s16 targetColorIndex;
    s16 pad2;
    s16 cursorItem;
    s16 gsTokensDigits[3];

    OPEN_DISPS(gfxCtx, "../z_kaleido_collect.c", 248);

    if ((((u32)pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE) || (pauseCtx->mainState == PAUSE_MAIN_STATE_5) ||
         (pauseCtx->mainState == PAUSE_MAIN_STATE_8)) &&
        (pauseCtx->pageIndex == PAUSE_QUEST)) {
        pauseCtx->cursorColorSet = 0;

        if (pauseCtx->cursorSpecialPos == 0) {
            pauseCtx->nameColorSet = 0;

            if ((pauseCtx->state != PAUSE_STATE_MAIN) || ((pauseCtx->stickAdjX == 0) && (pauseCtx->stickAdjY == 0))) {
                sp216 = pauseCtx->cursorSlot[PAUSE_QUEST];
            } else {
                phi_s3 = pauseCtx->cursorPoint[PAUSE_QUEST];

                if (pauseCtx->stickAdjX < -30) {
                    phi_s0 = D_8082A1AC[phi_s3][2];
                    if (phi_s0 == -3) {
                        KaleidoScope_MoveCursorToSpecialPos(play, PAUSE_CURSOR_PAGE_LEFT);
                        pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                    } else {
                        while (phi_s0 >= 0) {
                            if ((s16)KaleidoScope_UpdateQuestStatusPoint(pauseCtx, phi_s0) != 0) {
                                break;
                            }
                            phi_s0 = D_8082A1AC[phi_s0][2];
                        }
                    }
                } else if (pauseCtx->stickAdjX > 30) {
                    phi_s0 = D_8082A1AC[phi_s3][3];
                    if (phi_s0 == -2) {
                        KaleidoScope_MoveCursorToSpecialPos(play, PAUSE_CURSOR_PAGE_RIGHT);
                        pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                    } else {
                        while (phi_s0 >= 0) {
                            if ((s16)KaleidoScope_UpdateQuestStatusPoint(pauseCtx, phi_s0) != 0) {
                                break;
                            }
                            phi_s0 = D_8082A1AC[phi_s0][3];
                        }
                    }
                }

                if (pauseCtx->stickAdjY < -30) {
                    phi_s0 = D_8082A1AC[phi_s3][1];
                    while (phi_s0 >= 0) {
                        if ((s16)KaleidoScope_UpdateQuestStatusPoint(pauseCtx, phi_s0) != 0) {
                            break;
                        }
                        phi_s0 = D_8082A1AC[phi_s0][1];
                    }
                } else if (pauseCtx->stickAdjY > 30) {
                    phi_s0 = D_8082A1AC[phi_s3][0];
                    while (phi_s0 >= 0) {
                        if ((s16)KaleidoScope_UpdateQuestStatusPoint(pauseCtx, phi_s0) != 0) {
                            break;
                        }
                        phi_s0 = D_8082A1AC[phi_s0][0];
                    }
                }

                if (phi_s3 != pauseCtx->cursorPoint[PAUSE_QUEST]) {
                    pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                    Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                }

                if (pauseCtx->cursorPoint[PAUSE_QUEST] != 0x18) {
                    if (CHECK_QUEST_ITEM(pauseCtx->cursorPoint[PAUSE_QUEST])) {
                        if (pauseCtx->cursorPoint[PAUSE_QUEST] < 6) {
                            cursorItem = ITEM_MEDALLION_FOREST + pauseCtx->cursorPoint[PAUSE_QUEST];
                            PRINTF("000 ccc=%d\n", cursorItem);
                        } else if (pauseCtx->cursorPoint[PAUSE_QUEST] < 0x12) {
                            cursorItem = ITEM_SCALE_GOLDEN + pauseCtx->cursorPoint[PAUSE_QUEST];
                            PRINTF("111 ccc=%d\n", cursorItem);
                        } else {
                            cursorItem = ITEM_SONG_MINUET + pauseCtx->cursorPoint[PAUSE_QUEST];
                            PRINTF("222 ccc=%d (%d, %d, %d)\n", cursorItem, pauseCtx->cursorPoint[PAUSE_QUEST], 0x12,
                                   0x6C);
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

            KaleidoScope_SetCursorPos(pauseCtx, sp216 * 4, pauseCtx->questVtx);

            if ((pauseCtx->state == PAUSE_STATE_MAIN) && (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE) &&
                (pauseCtx->cursorSpecialPos == 0)) {
                if ((sp216 >= QUEST_SONG_MINUET) && (sp216 < QUEST_KOKIRI_EMERALD)) {
                    if (CHECK_QUEST_ITEM(pauseCtx->cursorPoint[PAUSE_QUEST])) {
                        sp216 = pauseCtx->cursorSlot[PAUSE_QUEST];
                        pauseCtx->ocarinaSongIdx = gOcarinaSongItemMap[sp216 - QUEST_SONG_MINUET];
                        D_8082A120 = 10;

                        for (i = 0; i < 8; i++) {
                            D_8082A124[i] = 0xFF;
                            D_8082A150[i] = 0;
                        }

                        D_8082A11C = 0;
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
                        AudioOcarina_Start((1 << pauseCtx->ocarinaSongIdx) + 0x8000);
                        pauseCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
                        pauseCtx->ocarinaStaff->pos = 0;
                        pauseCtx->ocarinaStaff->state = 0xFF;
                        VREG(21) = -62;
                        VREG(22) = -56;
                        VREG(23) = -49;
                        VREG(24) = -46;
                        VREG(25) = -41;
                        pauseCtx->mainState = PAUSE_MAIN_STATE_8;
                        AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                    }
                }
            } else if (pauseCtx->mainState == PAUSE_MAIN_STATE_5) {
                if ((pauseCtx->stickAdjX != 0) || (pauseCtx->stickAdjY != 0)) {
                    pauseCtx->mainState = PAUSE_MAIN_STATE_IDLE;
                    AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_OFF);
                }
            } else if (pauseCtx->mainState == PAUSE_MAIN_STATE_8) {
                if (CHECK_BTN_ALL(input->press.button, BTN_A) && (sp216 >= QUEST_SONG_MINUET) &&
                    (sp216 < QUEST_KOKIRI_EMERALD)) {
                    pauseCtx->mainState = PAUSE_MAIN_STATE_9;
                    D_8082A120 = 10;
                }
            }
        } else if (pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) {
            if (pauseCtx->stickAdjX > 30) {
                pauseCtx->cursorPoint[PAUSE_QUEST] = 0x15;
                pauseCtx->nameDisplayTimer = 0;
                pauseCtx->cursorSpecialPos = 0;
                sp216 = pauseCtx->cursorPoint[PAUSE_QUEST];
                KaleidoScope_SetCursorPos(pauseCtx, sp216 * 4, pauseCtx->questVtx);
                Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                if (CHECK_QUEST_ITEM(pauseCtx->cursorPoint[PAUSE_QUEST])) {
                    cursorItem = ITEM_SONG_MINUET + pauseCtx->cursorPoint[PAUSE_QUEST];
                } else {
                    cursorItem = PAUSE_ITEM_NONE;
                }
                sp216 = pauseCtx->cursorPoint[PAUSE_QUEST];
                pauseCtx->cursorItem[pauseCtx->pageIndex] = cursorItem;
                pauseCtx->cursorSlot[pauseCtx->pageIndex] = sp216;
            }
        } else {
            if (pauseCtx->stickAdjX < -30) {
                pauseCtx->cursorPoint[PAUSE_QUEST] = 0;
                pauseCtx->nameDisplayTimer = 0;
                pauseCtx->cursorSpecialPos = 0;
                sp216 = pauseCtx->cursorPoint[PAUSE_QUEST];
                KaleidoScope_SetCursorPos(pauseCtx, sp216 * 4, pauseCtx->questVtx);
                Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                if (CHECK_QUEST_ITEM(pauseCtx->cursorPoint[PAUSE_QUEST])) {
                    if (pauseCtx->cursorPoint[PAUSE_QUEST] < 6) {
                        cursorItem = ITEM_MEDALLION_FOREST + pauseCtx->cursorPoint[PAUSE_QUEST];
                    } else if (pauseCtx->cursorPoint[PAUSE_QUEST] < 0xC) {
                        cursorItem = ITEM_BOMB_BAG_30 + pauseCtx->cursorPoint[PAUSE_QUEST];
                    } else {
                        cursorItem = ITEM_MEDALLION_SPIRIT + pauseCtx->cursorPoint[PAUSE_QUEST];
                    }
                } else {
                    cursorItem = PAUSE_ITEM_NONE;
                }
                sp216 = pauseCtx->cursorPoint[PAUSE_QUEST];
                pauseCtx->cursorItem[pauseCtx->pageIndex] = cursorItem;
                pauseCtx->cursorSlot[pauseCtx->pageIndex] = sp216;
            }
        }

    } else {
        if (pauseCtx->mainState == PAUSE_MAIN_STATE_9) {
            pauseCtx->cursorColorSet = 8;

            if (--D_8082A120 == 0) {
                for (i = 0; i < 8; i++) {
                    D_8082A124[i] = 0xFF;
                    D_8082A150[i] = 0;
                }

                D_8082A11C = 0;
                VREG(21) = -62;
                VREG(22) = -56;
                VREG(23) = -49;
                VREG(24) = -46;
                VREG(25) = -41;
                sp216 = pauseCtx->cursorSlot[PAUSE_QUEST];
                AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
                AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
                pauseCtx->ocarinaSongIdx = gOcarinaSongItemMap[sp216 - QUEST_SONG_MINUET];
                AudioOcarina_SetPlaybackSong(pauseCtx->ocarinaSongIdx + 1, 1);
                pauseCtx->mainState = PAUSE_MAIN_STATE_2;
                pauseCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
                pauseCtx->ocarinaStaff->pos = 0;
                sp216 = pauseCtx->cursorSlot[PAUSE_QUEST];
                KaleidoScope_SetCursorPos(pauseCtx, sp216 * 4, pauseCtx->questVtx);
            }
        } else {
            sp216 = pauseCtx->cursorSlot[PAUSE_QUEST];
            KaleidoScope_SetCursorPos(pauseCtx, sp216 * 4, pauseCtx->questVtx);
        }
    }

    // Draw medallions
    // QUEST_MEDALLION_FOREST to QUEST_MEDALLION_LIGHT

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

    sMedEnvTimer--;

    for (j = 0, bufI = 0; j < 6; j++, bufI += 4) {
        if ((sMedEnvShineState != 1) && (sMedEnvShineState != 3)) {
            targetColorIndex = (sMedEnvShineState != 0) ? j + 6 : j;

            if (sMedEnvTimer != 0) {
                stepRed = ABS(sMedEnvRed[j] - sMedEnvColors[targetColorIndex][0]) / sMedEnvTimer;
                stepGreen = ABS(sMedEnvGreen[j] - sMedEnvColors[targetColorIndex][1]) / sMedEnvTimer;
                stepBlue = ABS(sMedEnvBlue[j] - sMedEnvColors[targetColorIndex][2]) / sMedEnvTimer;
                if (sMedEnvRed[j] >= sMedEnvColors[targetColorIndex][0]) {
                    sMedEnvRed[j] -= stepRed;
                } else {
                    sMedEnvRed[j] += stepRed;
                }
                if (sMedEnvGreen[j] >= sMedEnvColors[targetColorIndex][1]) {
                    sMedEnvGreen[j] -= stepGreen;
                } else {
                    sMedEnvGreen[j] += stepGreen;
                }
                if (sMedEnvBlue[j] >= sMedEnvColors[targetColorIndex][2]) {
                    sMedEnvBlue[j] -= stepBlue;
                } else {
                    sMedEnvBlue[j] += stepBlue;
                }
            } else {
                sMedEnvRed[j] = sMedEnvColors[targetColorIndex][0];
                sMedEnvGreen[j] = sMedEnvColors[targetColorIndex][1];
                sMedEnvBlue[j] = sMedEnvColors[targetColorIndex][2];
            }
        }

        if (CHECK_QUEST_ITEM(QUEST_MEDALLION_FOREST + j)) {
            gDPPipeSync(POLY_OPA_DISP++);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
            gDPSetEnvColor(POLY_OPA_DISP++, sMedEnvRed[j], sMedEnvGreen[j], sMedEnvBlue[j], 0);
            gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[bufI], 4, 0);

            KaleidoScope_DrawQuadTextureRGBA32(gfxCtx, gItemIcons[ITEM_MEDALLION_FOREST + j], QUEST_ICON_WIDTH,
                                               QUEST_ICON_HEIGHT, 0);
        }
    }

    if (sMedEnvTimer == 0) {
        sMedEnvTimer = R_PAUSE_QUEST_MEDALLION_SHINE_TIME(sMedEnvShineState);
        if (++sMedEnvShineState >= 4) {
            sMedEnvShineState = 0;
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

    for (j = 0; j < 3; j++, bufI += 4) {
        if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD + j)) {
            gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[bufI], 4, 0);
            KaleidoScope_DrawQuadTextureRGBA32(gfxCtx, gItemIcons[ITEM_KOKIRI_EMERALD + j], QUEST_ICON_WIDTH,
                                               QUEST_ICON_HEIGHT, 0);
        }
    }

    // Draw QUEST_STONE_OF_AGONY, QUEST_GERUDOS_CARD, QUEST_SKULL_TOKEN

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

    for (j = 0; j < 3; j++, bufI += 4) {
        if (CHECK_QUEST_ITEM(QUEST_STONE_OF_AGONY + j)) {
            gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[bufI], 4, 0);
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
            KaleidoScope_DrawQuadTextureRGBA32(gfxCtx, gItemIcons[ITEM_STONE_OF_AGONY + j], QUEST_ICON_WIDTH,
                                               QUEST_ICON_HEIGHT, 0);
        }
    }

    // Draw heart pieces

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
        if (++sHpPrimState >= 4) {
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
        bufI += 4;

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

        if ((pauseCtx->cursorSpecialPos == 0) && (sp216 >= 6) && (sp216 < 0x12)) {
            if ((pauseCtx->mainState < PAUSE_MAIN_STATE_3) || (pauseCtx->mainState == PAUSE_MAIN_STATE_5) ||
                (pauseCtx->mainState == PAUSE_MAIN_STATE_8)) {
                if (pauseCtx->cursorItem[pauseCtx->pageIndex] != PAUSE_ITEM_NONE) {
                    pauseCtx->cursorColorSet = 8;
                    if ((pauseCtx->mainState >= PAUSE_MAIN_STATE_2) && (pauseCtx->mainState < PAUSE_MAIN_STATE_7)) {
                        pauseCtx->cursorColorSet = 0;
                    }
                }
            }
        }

        if (pauseCtx->mainState == PAUSE_MAIN_STATE_2) {
            pauseCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();

            if (pauseCtx->ocarinaStaff->pos != 0) {
                if (D_8082A11C == (pauseCtx->ocarinaStaff->pos - 1)) {
                    D_8082A11C++;
                    D_8082A124[pauseCtx->ocarinaStaff->pos - 1] = pauseCtx->ocarinaStaff->buttonIndex;
                }

                for (j = 0, i = 0; j < 8; j++, i += 4, bufI += 4) {
                    if (D_8082A124[j] == 0xFF) {
                        break;
                    }

                    if (D_8082A150[j] != 255) {
                        D_8082A150[j] += VREG(50);
                        if (D_8082A150[j] >= 255) {
                            D_8082A150[j] = 255;
                        }
                    }

                    pauseCtx->questVtx[bufI + 0].v.ob[1] = pauseCtx->questVtx[bufI + 1].v.ob[1] =
                        VREG(21 + D_8082A124[j]);

                    pauseCtx->questVtx[bufI + 2].v.ob[1] = pauseCtx->questVtx[bufI + 3].v.ob[1] =
                        pauseCtx->questVtx[bufI + 0].v.ob[1] - 12;

                    gDPPipeSync(POLY_OPA_DISP++);

                    if (D_8082A124[j] == 0) {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, KALEIDO_COLOR_COLLECT_UNK_R, KALEIDO_COLOR_COLLECT_UNK_G,
                                        KALEIDO_COLOR_COLLECT_UNK_B, D_8082A150[j]);
                    } else {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 50, D_8082A150[j]);
                    }

                    gDPSetEnvColor(POLY_OPA_DISP++, 10, 10, 10, 0);
                    gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[bufI], 4, 0);

                    gDPLoadTextureBlock(POLY_OPA_DISP++, D_8082A130[D_8082A124[j]], G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0,
                                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                        G_TX_NOLOD, G_TX_NOLOD);

                    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
                }
            }
        } else if (((pauseCtx->mainState >= PAUSE_MAIN_STATE_4) && (pauseCtx->mainState <= PAUSE_MAIN_STATE_6)) ||
                   (pauseCtx->mainState == PAUSE_MAIN_STATE_8)) {
            stepGreen = pauseCtx->ocarinaSongIdx;
            stepRed = gOcarinaSongButtons[stepGreen].numButtons;

            for (j = bufI, i = 0; i < stepRed; i++, bufI += 4) {
                pauseCtx->questVtx[bufI + 0].v.ob[1] = pauseCtx->questVtx[bufI + 1].v.ob[1] =
                    VREG(21 + gOcarinaSongButtons[stepGreen].buttonsIndex[i]);

                pauseCtx->questVtx[bufI + 2].v.ob[1] = pauseCtx->questVtx[bufI + 3].v.ob[1] =
                    pauseCtx->questVtx[bufI + 0].v.ob[1] - 12;

                gDPPipeSync(POLY_OPA_DISP++);

                if (pauseCtx->mainState == PAUSE_MAIN_STATE_8) {
                    if (gOcarinaSongButtons[stepGreen].buttonsIndex[i] == OCARINA_BTN_A) {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, KALEIDO_COLOR_COLLECT_UNK_R, KALEIDO_COLOR_COLLECT_UNK_G,
                                        KALEIDO_COLOR_COLLECT_UNK_B, 200);
                    } else {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 50, 200);
                    }
                } else {
                    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 150, 150, 150, 150);
                }

                gDPSetEnvColor(POLY_OPA_DISP++, 10, 10, 10, 0);

                gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[bufI], 4, 0);

                gDPLoadTextureBlock(POLY_OPA_DISP++, D_8082A130[gOcarinaSongButtons[stepGreen].buttonsIndex[i]],
                                    G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                                    G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
            }

            if (pauseCtx->mainState != PAUSE_MAIN_STATE_8) {
                pauseCtx->ocarinaStaff = AudioOcarina_GetPlayingStaff();

                if (pauseCtx->ocarinaStaff->pos != 0) {
                    if (D_8082A11C == (pauseCtx->ocarinaStaff->pos - 1)) {
                        if ((pauseCtx->ocarinaStaff->buttonIndex >= OCARINA_BTN_A) &&
                            (pauseCtx->ocarinaStaff->buttonIndex <= OCARINA_BTN_C_UP)) {
                            D_8082A124[pauseCtx->ocarinaStaff->pos - 1] = pauseCtx->ocarinaStaff->buttonIndex;
                            D_8082A124[pauseCtx->ocarinaStaff->pos] = 0xFF;
                            D_8082A11C++;
                        }
                    }
                }

                bufI = j + 32;
                i = 0;
                for (; i < 8; i++, bufI += 4) {
                    if (D_8082A124[i] == 0xFF) {
                        continue;
                    }

                    if (D_8082A150[i] != 255) {
                        D_8082A150[i] += VREG(50);
                        if (D_8082A150[i] >= 255) {
                            D_8082A150[i] = 255;
                        }
                    }
                    pauseCtx->questVtx[bufI + 0].v.ob[1] = pauseCtx->questVtx[bufI + 1].v.ob[1] =
                        VREG(21 + D_8082A124[i]);

                    pauseCtx->questVtx[bufI + 2].v.ob[1] = pauseCtx->questVtx[bufI + 3].v.ob[1] =
                        pauseCtx->questVtx[bufI + 0].v.ob[1] - 12;

                    gDPPipeSync(POLY_OPA_DISP++);

                    if (D_8082A124[i] == 0) {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, KALEIDO_COLOR_COLLECT_UNK_R, KALEIDO_COLOR_COLLECT_UNK_G,
                                        KALEIDO_COLOR_COLLECT_UNK_B, D_8082A150[i]);
                    } else {
                        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 50, D_8082A150[i]);
                    }

                    gDPSetEnvColor(POLY_OPA_DISP++, 10, 10, 10, 0);

                    gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[bufI], 4, 0);

                    gDPLoadTextureBlock(POLY_OPA_DISP++, D_8082A130[D_8082A124[i]], G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0,
                                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                        G_TX_NOLOD, G_TX_NOLOD);

                    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
                }

                if (pauseCtx->mainState == PAUSE_MAIN_STATE_4) {
                    for (i = 0; i < 8; i++) {
                        D_8082A124[i] = 0xFF;
                        D_8082A150[i] = 0;
                    }

                    D_8082A11C = 0;
                    AudioOcarina_SetInstrument(OCARINA_INSTRUMENT_DEFAULT);
                    AudioOcarina_Start((1 << pauseCtx->ocarinaSongIdx) + 0x8000);
                    pauseCtx->ocarinaStaff = AudioOcarina_GetPlaybackStaff();
                    pauseCtx->ocarinaStaff->pos = 0;
                    pauseCtx->ocarinaStaff->state = 0xFE;
                    pauseCtx->mainState = PAUSE_MAIN_STATE_5;
                }
            }
        }
    }

    // Draw amount of gold skulltula tokens

    if (CHECK_QUEST_ITEM(QUEST_SKULL_TOKEN)) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

        gsTokensDigits[0] = gsTokensDigits[1] = 0;
        gsTokensDigits[2] = gSaveContext.save.info.inventory.gsTokens;

        while (gsTokensDigits[2] >= 100) {
            gsTokensDigits[0]++;
            gsTokensDigits[2] -= 100;
        }

        while (gsTokensDigits[2] >= 10) {
            gsTokensDigits[1]++;
            gsTokensDigits[2] -= 10;
        }

        gSPVertex(POLY_OPA_DISP++, &pauseCtx->questVtx[164], 24, 0);

        for (i = 0, j = 0; i < 2; i++) {
            if (i == 0) {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 0, 0, 0, pauseCtx->alpha);
            } else if (gSaveContext.save.info.inventory.gsTokens == 100) {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 200, 50, 50, pauseCtx->alpha);
            } else {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
            }

            cursorItem = 0;
            for (bufI = 0; bufI < 3; bufI++, j += 4) {
                if ((bufI >= 2) || (gsTokensDigits[bufI] != 0) || (cursorItem != 0)) {
                    gDPLoadTextureBlock(POLY_OPA_DISP++, ((u8*)gCounterDigit0Tex + (8 * 16 * gsTokensDigits[bufI])),
                                        G_IM_FMT_I, G_IM_SIZ_8b, 8, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                    gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);

                    cursorItem = 1;
                }
            }
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_kaleido_collect.c", 863);
}

s32 KaleidoScope_UpdateQuestStatusPoint(PauseContext* pauseCtx, s32 point) {
    pauseCtx->cursorPoint[PAUSE_QUEST] = point;

    return 1;
}
