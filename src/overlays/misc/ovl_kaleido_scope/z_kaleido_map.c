#include "z_kaleido_scope.h"
#include "assets/textures/icon_item_24_static/icon_item_24_static.h"
#if OOT_NTSC
#include "assets/textures/icon_item_jpn_static/icon_item_jpn_static.h"
#include "assets/textures/icon_item_nes_static/icon_item_nes_static.h"
#else
#include "assets/textures/icon_item_nes_static/icon_item_nes_static.h"
#include "assets/textures/icon_item_ger_static/icon_item_ger_static.h"
#include "assets/textures/icon_item_fra_static/icon_item_fra_static.h"
#endif
#include "assets/textures/icon_item_field_static/icon_item_field_static.h"
#include "assets/textures/icon_item_dungeon_static/icon_item_dungeon_static.h"
#include "assets/textures/icon_item_nes_static/icon_item_nes_static.h"

void KaleidoScope_DrawDungeonMap(PlayState* play, GraphicsContext* gfxCtx) {
    static void* dungeonItemTexs[] = {
        gQuestIconDungeonBossKeyTex,
        gQuestIconDungeonCompassTex,
        gQuestIconDungeonMapTex,
    };
    static void* dungeonTitleTexs[] = {
        gPauseDekuTitleENGTex, gPauseDodongoTitleENGTex,   gPauseJabuTitleENGTex,   gPauseForestTitleENGTex,
        gPauseFireTitleENGTex, gPauseWaterTitleENGTex,     gPauseSpiritTitleENGTex, gPauseShadowTitleENGTex,
        gPauseBotWTitleENGTex, gPauseIceCavernTitleENGTex,
    };
    static void* floorIconTexs[] = {
        gDungeonMapBlankFloorButtonTex, gDungeonMap8FButtonTex, gDungeonMap7FButtonTex, gDungeonMap6FButtonTex,
        gDungeonMap5FButtonTex,         gDungeonMap4FButtonTex, gDungeonMap3FButtonTex, gDungeonMap2FButtonTex,
        gDungeonMap1FButtonTex,         gDungeonMapB1ButtonTex, gDungeonMapB2ButtonTex, gDungeonMapB3ButtonTex,
        gDungeonMapB4ButtonTex,         gDungeonMapB5ButtonTex, gDungeonMapB6ButtonTex, gDungeonMapB7ButtonTex,
        gDungeonMapB8ButtonTex,
    };
    static u16 mapBgPulseColors[][3] = {
        { 0 / 8, 80 / 8, 255 / 8 },
        { 0 / 8, 200 / 8, 140 / 8 },
    };
    static s16 mapBgPulseR = 0 / 8;
    static s16 mapBgPulseG = 200 / 8;
    static s16 mapBgPulseB = 140 / 8;
    static u16 mapBgPulseTimer = 20;
    static u16 mapBgPulseStage = 0;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    PauseContext* pauseCtx = &play->pauseCtx;
    s16 i;
    s16 j;
    s16 oldCursorPoint;
    s16 stepR;
    s16 stepG;
    s16 stepB;
    u16 rgba16;

    OPEN_DISPS(gfxCtx, "../z_kaleido_map_PAL.c", 123);

    if ((pauseCtx->state == PAUSE_STATE_MAIN) && (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE) &&
        (pauseCtx->pageIndex == PAUSE_MAP)) {
        pauseCtx->cursorColorSet = 0;
        oldCursorPoint = pauseCtx->cursorPoint[PAUSE_MAP];

        if (pauseCtx->cursorSpecialPos == 0) {
            if (pauseCtx->stickAdjX > 30) {
                if (pauseCtx->cursorX[PAUSE_MAP] != 0) {
                    KaleidoScope_MoveCursorToSpecialPos(play, PAUSE_CURSOR_PAGE_RIGHT);
                } else {
                    pauseCtx->cursorX[PAUSE_MAP] = 1;
                    pauseCtx->cursorPoint[PAUSE_MAP] = 0;
                    if (!CHECK_DUNGEON_ITEM(DUNGEON_BOSS_KEY, gSaveContext.mapIndex)) {
                        pauseCtx->cursorPoint[PAUSE_MAP]++;
                        if (!CHECK_DUNGEON_ITEM(DUNGEON_COMPASS, gSaveContext.mapIndex)) {
                            pauseCtx->cursorPoint[PAUSE_MAP]++;
                            if (!CHECK_DUNGEON_ITEM(DUNGEON_MAP, gSaveContext.mapIndex)) {
                                KaleidoScope_MoveCursorToSpecialPos(play, PAUSE_CURSOR_PAGE_RIGHT);
                            }
                        }
                    }
                }
            } else if (pauseCtx->stickAdjX < -30) {
                if (pauseCtx->cursorX[PAUSE_MAP] == 0) {
                    KaleidoScope_MoveCursorToSpecialPos(play, PAUSE_CURSOR_PAGE_LEFT);
                } else {
                    pauseCtx->cursorX[PAUSE_MAP] = 0;
                    pauseCtx->cursorPoint[PAUSE_MAP] = pauseCtx->dungeonMapSlot;
                    PRINTF("kscope->cursor_point=%d\n", pauseCtx->cursorPoint[PAUSE_MAP]);
                    R_MAP_TEX_INDEX =
                        R_MAP_TEX_INDEX_BASE +
                        gMapData->floorTexIndexOffset[gSaveContext.mapIndex][pauseCtx->cursorPoint[PAUSE_MAP] - 3];
                    KaleidoScope_UpdateDungeonMap(play);
                }
            }

            if (pauseCtx->cursorPoint[PAUSE_MAP] < 3) {
                if (pauseCtx->stickAdjY > 30) {
                    if (pauseCtx->cursorPoint[PAUSE_MAP] != 0) {
                        for (i = pauseCtx->cursorPoint[PAUSE_MAP] - 1; i >= 0; i--) {
                            if (CHECK_DUNGEON_ITEM(i, gSaveContext.mapIndex)) {
                                pauseCtx->cursorPoint[PAUSE_MAP] = i;
                                break;
                            }
                        }
                    }
                } else {
                    if (pauseCtx->stickAdjY < -30) {
                        if (pauseCtx->cursorPoint[PAUSE_MAP] != 2) {
                            for (i = pauseCtx->cursorPoint[PAUSE_MAP] + 1; i < 3; i++) {
                                if (CHECK_DUNGEON_ITEM(i, gSaveContext.mapIndex)) {
                                    pauseCtx->cursorPoint[PAUSE_MAP] = i;
                                    break;
                                }
                            }
                        }
                    }
                }
            } else {
                if (pauseCtx->stickAdjY > 30) {
                    if (pauseCtx->cursorPoint[PAUSE_MAP] >= 4) {
                        for (i = pauseCtx->cursorPoint[PAUSE_MAP] - 3 - 1; i >= 0; i--) {
                            if ((gSaveContext.save.info.sceneFlags[gSaveContext.mapIndex].floors & gBitFlags[i]) ||
                                (CHECK_DUNGEON_ITEM(DUNGEON_MAP, gSaveContext.mapIndex) &&
                                 (gMapData->floorID[interfaceCtx->unk_25A][i] != 0))) {
                                pauseCtx->cursorPoint[PAUSE_MAP] = i + 3;
                                break;
                            }
                        }
                    }
                } else if (pauseCtx->stickAdjY < -30) {
                    if (pauseCtx->cursorPoint[PAUSE_MAP] != 10) {
                        for (i = pauseCtx->cursorPoint[PAUSE_MAP] - 3 + 1; i < 11; i++) {
                            if ((gSaveContext.save.info.sceneFlags[gSaveContext.mapIndex].floors & gBitFlags[i]) ||
                                (CHECK_DUNGEON_ITEM(DUNGEON_MAP, gSaveContext.mapIndex) &&
                                 (gMapData->floorID[interfaceCtx->unk_25A][i] != 0))) {
                                pauseCtx->cursorPoint[PAUSE_MAP] = i + 3;
                                break;
                            }
                        }
                    }
                }

                i = R_MAP_TEX_INDEX;
                R_MAP_TEX_INDEX =
                    R_MAP_TEX_INDEX_BASE +
                    gMapData->floorTexIndexOffset[gSaveContext.mapIndex][pauseCtx->cursorPoint[PAUSE_MAP] - 3];
                pauseCtx->dungeonMapSlot = pauseCtx->cursorPoint[PAUSE_MAP];
                if (i != R_MAP_TEX_INDEX) {
                    KaleidoScope_UpdateDungeonMap(play);
                }
            }
        } else if (pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) {
            if (pauseCtx->stickAdjX > 30) {
                pauseCtx->nameDisplayTimer = 0;
                pauseCtx->cursorSpecialPos = 0;
                pauseCtx->cursorSlot[PAUSE_MAP] = pauseCtx->cursorPoint[PAUSE_MAP] = pauseCtx->dungeonMapSlot;
                pauseCtx->cursorX[PAUSE_MAP] = 0;
                j = 72 + (pauseCtx->cursorSlot[PAUSE_MAP] * 4);
                KaleidoScope_SetCursorVtx(pauseCtx, j, pauseCtx->mapPageVtx);
                Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            }
        } else {
            if (pauseCtx->stickAdjX < -30) {
                pauseCtx->nameDisplayTimer = 0;
                pauseCtx->cursorSpecialPos = 0;
                pauseCtx->cursorX[PAUSE_MAP] = 1;
                pauseCtx->cursorPoint[PAUSE_MAP] = 0;
                if (!CHECK_DUNGEON_ITEM(DUNGEON_BOSS_KEY, gSaveContext.mapIndex)) {
                    pauseCtx->cursorPoint[PAUSE_MAP]++;
                    if (!CHECK_DUNGEON_ITEM(DUNGEON_COMPASS, gSaveContext.mapIndex)) {
                        pauseCtx->cursorPoint[PAUSE_MAP]++;
                        if (!CHECK_DUNGEON_ITEM(DUNGEON_MAP, gSaveContext.mapIndex)) {
                            pauseCtx->cursorX[PAUSE_MAP] = 0;
                            pauseCtx->cursorSlot[PAUSE_MAP] = pauseCtx->cursorPoint[PAUSE_MAP] =
                                pauseCtx->dungeonMapSlot;
                            R_MAP_TEX_INDEX =
                                R_MAP_TEX_INDEX_BASE +
                                gMapData
                                    ->floorTexIndexOffset[gSaveContext.mapIndex][pauseCtx->cursorPoint[PAUSE_MAP] - 3];
                            KaleidoScope_UpdateDungeonMap(play);
                        }
                    }
                } else {
                    pauseCtx->cursorSlot[PAUSE_MAP] = pauseCtx->cursorPoint[PAUSE_MAP];
                }

                PRINTF("kscope->cursor_point====%d\n", pauseCtx->cursorPoint[PAUSE_MAP]);
                j = 72 + (pauseCtx->cursorSlot[PAUSE_MAP] * 4);
                KaleidoScope_SetCursorVtx(pauseCtx, j, pauseCtx->mapPageVtx);
                Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            }
        }

        if (oldCursorPoint != pauseCtx->cursorPoint[PAUSE_MAP]) {
            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }
    }

    if (pauseCtx->cursorSpecialPos == 0) {
        if (pauseCtx->cursorPoint[PAUSE_MAP] < 3) {
            pauseCtx->cursorItem[PAUSE_MAP] = ITEM_DUNGEON_BOSS_KEY + pauseCtx->cursorPoint[PAUSE_MAP];
        } else {
            pauseCtx->cursorItem[PAUSE_MAP] = PAUSE_ITEM_NONE;
        }

        pauseCtx->cursorSlot[PAUSE_MAP] = pauseCtx->cursorPoint[PAUSE_MAP];

        j = 72 + (pauseCtx->cursorSlot[PAUSE_MAP] * 4);
        KaleidoScope_SetCursorVtx(pauseCtx, j, pauseCtx->mapPageVtx);

        if (pauseCtx->cursorX[PAUSE_MAP] == 0) {
            pauseCtx->mapPageVtx[j + 0].v.ob[0] = pauseCtx->mapPageVtx[j + 2].v.ob[0] =
                pauseCtx->mapPageVtx[j + 0].v.ob[0] - 2;
            pauseCtx->mapPageVtx[j + 1].v.ob[0] = pauseCtx->mapPageVtx[j + 3].v.ob[0] =
                pauseCtx->mapPageVtx[j + 1].v.ob[0] + 4;
            pauseCtx->mapPageVtx[j + 0].v.ob[1] = pauseCtx->mapPageVtx[j + 1].v.ob[1] =
                pauseCtx->mapPageVtx[j + 0].v.ob[1] + 2;
            pauseCtx->mapPageVtx[j + 2].v.ob[1] = pauseCtx->mapPageVtx[j + 3].v.ob[1] =
                pauseCtx->mapPageVtx[j + 2].v.ob[1] - 4;
        }
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA, G_CC_MODULATEIA);

    gSPVertex(POLY_OPA_DISP++, &pauseCtx->mapPageVtx[68], 16, 0);

    gDPLoadTextureBlock(POLY_OPA_DISP++, dungeonTitleTexs[gSaveContext.mapIndex], G_IM_FMT_IA, G_IM_SIZ_8b, 96, 16, 0,
                        G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);

    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

    for (i = 0, j = 4; i < 3; i++, j += 4) {
        if (CHECK_DUNGEON_ITEM(i, gSaveContext.mapIndex)) {
            gDPLoadTextureBlock(POLY_OPA_DISP++, dungeonItemTexs[i], G_IM_FMT_RGBA, G_IM_SIZ_32b, 24, 24, 0,
                                G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK,
                                G_TX_NOLOD, G_TX_NOLOD);

            gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);
        }
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 200, pauseCtx->alpha);

    gSPVertex(POLY_OPA_DISP++, &pauseCtx->mapPageVtx[84], 32, 0);

    for (i = j = 0; i < 8; i++, j += 4) {
        if ((gSaveContext.save.info.sceneFlags[gSaveContext.mapIndex].floors & gBitFlags[i]) ||
            CHECK_DUNGEON_ITEM(DUNGEON_MAP, gSaveContext.mapIndex)) {
            if (i != (pauseCtx->dungeonMapSlot - 3)) {
                gDPLoadTextureBlock(POLY_OPA_DISP++, floorIconTexs[gMapData->floorID[interfaceCtx->unk_25A][i]],
                                    G_IM_FMT_IA, G_IM_SIZ_8b, 24, 16, 0, G_TX_WRAP | G_TX_NOMIRROR,
                                    G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);
            }
        }
    }

    j = (pauseCtx->dungeonMapSlot - 3) * 4;

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 150, 150, 255, pauseCtx->alpha);

    gDPLoadTextureBlock(POLY_OPA_DISP++,
                        floorIconTexs[gMapData->floorID[interfaceCtx->unk_25A][pauseCtx->dungeonMapSlot - 3]],
                        G_IM_FMT_IA, G_IM_SIZ_8b, 24, 16, 0, G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR,
                        G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);

    pauseCtx->mapPageVtx[124].v.ob[0] = pauseCtx->mapPageVtx[126].v.ob[0] = pauseCtx->mapPageVtx[124].v.ob[0] + 2;
    pauseCtx->mapPageVtx[125].v.ob[0] = pauseCtx->mapPageVtx[127].v.ob[0] = pauseCtx->mapPageVtx[124].v.ob[0] + 19;
    pauseCtx->mapPageVtx[124].v.ob[1] = pauseCtx->mapPageVtx[125].v.ob[1] = pauseCtx->mapPageVtx[124].v.ob[1] - 2;
    pauseCtx->mapPageVtx[126].v.ob[1] = pauseCtx->mapPageVtx[127].v.ob[1] = pauseCtx->mapPageVtx[124].v.ob[1] - 19;

    gSPVertex(POLY_OPA_DISP++, &pauseCtx->mapPageVtx[116], 12, 0);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

    pauseCtx->mapPageVtx[116].v.ob[1] = pauseCtx->mapPageVtx[117].v.ob[1] = pauseCtx->offsetY - (VREG(30) * 14) + 49;
    pauseCtx->mapPageVtx[118].v.ob[1] = pauseCtx->mapPageVtx[119].v.ob[1] = pauseCtx->mapPageVtx[116].v.ob[1] - 16;

    gDPLoadTextureBlock(POLY_OPA_DISP++, gDungeonMapLinkHeadTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0,
                        G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);

    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

    if (CHECK_DUNGEON_ITEM(DUNGEON_COMPASS, gSaveContext.mapIndex) &&
        (gMapData->skullFloorIconY[gSaveContext.mapIndex] != -99)) {
        pauseCtx->mapPageVtx[120].v.ob[1] = pauseCtx->mapPageVtx[121].v.ob[1] =
            gMapData->skullFloorIconY[gSaveContext.mapIndex] + pauseCtx->offsetY;
        pauseCtx->mapPageVtx[122].v.ob[1] = pauseCtx->mapPageVtx[123].v.ob[1] = pauseCtx->mapPageVtx[120].v.ob[1] - 16;

        gDPLoadTextureBlock(POLY_OPA_DISP++, gDungeonMapSkullTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0,
                            G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);

        gSP1Quadrangle(POLY_OPA_DISP++, 4, 6, 7, 5, 0);
    }

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

    if (GET_GS_FLAGS(gSaveContext.mapIndex) == gAreaGsFlags[gSaveContext.mapIndex]) {
        KaleidoScope_DrawQuadTextureRGBA32(gfxCtx, gQuestIconGoldSkulltulaTex, QUEST_ICON_WIDTH, QUEST_ICON_HEIGHT, 8);
    }

    if ((play->sceneId >= SCENE_DEKU_TREE) && (play->sceneId <= SCENE_TREASURE_BOX_SHOP)) {
        stepR = (mapBgPulseR - mapBgPulseColors[mapBgPulseStage][0]) / mapBgPulseTimer;
        stepG = (mapBgPulseG - mapBgPulseColors[mapBgPulseStage][1]) / mapBgPulseTimer;
        stepB = (mapBgPulseB - mapBgPulseColors[mapBgPulseStage][2]) / mapBgPulseTimer;
        mapBgPulseR -= stepR;
        mapBgPulseG -= stepG;
        mapBgPulseB -= stepB;

        rgba16 = ((mapBgPulseR & 0x1F) << 11) | ((mapBgPulseG & 0x1F) << 6) | ((mapBgPulseB & 0x1F) << 1) | 1;
        interfaceCtx->mapPalette[28] = (rgba16 & 0xFF00) >> 8;
        interfaceCtx->mapPalette[29] = rgba16 & 0xFF;

        mapBgPulseTimer--;
        if (mapBgPulseTimer == 0) {
            mapBgPulseStage ^= 1;
            mapBgPulseTimer = 20;
        }
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_POINT);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);

    gDPLoadTLUT_pal16(POLY_OPA_DISP++, 0, interfaceCtx->mapPalette);
    gDPSetTextureLUT(POLY_OPA_DISP++, G_TT_RGBA16);

    gSPVertex(POLY_OPA_DISP++, &pauseCtx->mapPageVtx[60], 8, 0);

    gDPLoadTextureBlock_4b(POLY_OPA_DISP++, interfaceCtx->mapSegment, G_IM_FMT_CI, 48, 85, 0, G_TX_WRAP | G_TX_NOMIRROR,
                           G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

    gDPLoadTextureBlock_4b(POLY_OPA_DISP++, interfaceCtx->mapSegment + 0x800, G_IM_FMT_CI, 48, 85, 0,
                           G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);

    gSP1Quadrangle(POLY_OPA_DISP++, 4, 6, 7, 5, 0);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_BILERP);

    CLOSE_DISPS(gfxCtx, "../z_kaleido_map_PAL.c", 388);
}

void KaleidoScope_DrawWorldMap(PlayState* play, GraphicsContext* gfxCtx) {
    static void* cloudTexs[] = {
        gWorldMapCloudSacredForestMeadowTex, gWorldMapCloudHyruleFieldTex,
        gWorldMapCloudLonLonRanchTex,        gWorldMapCloudMarketTex,
        gWorldMapCloudHyruleCastleTex,       gWorldMapCloudKakarikoVillageTex,
        gWorldMapCloudGraveyardTex,          gWorldMapCloudDeathMountainTrailTex,
        gWorldMapCloudGoronCityTex,          gWorldMapCloudZorasRiverTex,
        gWorldMapCloudZorasDomainTex,        gWorldMapCloudZorasFountainTex,
        gWorldMapCloudGerudoValleyTex,       gWorldMapCloudGerudosFortressTex,
        gWorldMapCloudDesertColossusTex,     gWorldMapCloudLakeHyliaTex,
    };
    static u16 cloudFlagNums[] = {
        WORLD_MAP_AREA_SACRED_FOREST_MEADOW,
        WORLD_MAP_AREA_HYRULE_FIELD,
        WORLD_MAP_AREA_LON_LON_RANCH,
        WORLD_MAP_AREA_MARKET,
        WORLD_MAP_AREA_HYRULE_CASTLE,
        WORLD_MAP_AREA_KAKARIKO_VILLAGE,
        WORLD_MAP_AREA_GRAVEYARD,
        WORLD_MAP_AREA_DEATH_MOUNTAIN_TRAIL,
        WORLD_MAP_AREA_GORON_CITY,
        WORLD_MAP_AREA_ZORAS_RIVER,
        WORLD_MAP_AREA_ZORAS_DOMAIN,
        WORLD_MAP_AREA_ZORAS_FOUNTAIN,
        WORLD_MAP_AREA_GERUDO_VALLEY,
        WORLD_MAP_AREA_GERUDOS_FORTRESS,
        WORLD_MAP_AREA_DESERT_COLOSSUS,
        WORLD_MAP_AREA_LAKE_HYLIA,
    };
    static s16 pointPulsePrimColor[] = { 0, 0, 255 };
    static s16 pointPrimColors[][3] = {
        { 0, 0, 255 },
        { 255, 255, 0 },
    };
    static s16 pointPulseEnvColor[] = { 255, 255, 0 };
    static s16 pointEnvColors[][3] = {
        { 255, 255, 0 },
        { 0, 0, 255 },
    };
    static s16 pointPulseStage = 1;
    static s16 pointPulseTimer = 20;
    static s16 D_8082A5B8[] = { 64, 64, 64, 28 };
    static s16 areaBoxPosX[] = {
        -41,  // WORLD_MAP_AREA_HYRULE_FIELD
        19,   // WORLD_MAP_AREA_KAKARIKO_VILLAGE
        44,   // WORLD_MAP_AREA_GRAVEYARD
        40,   // WORLD_MAP_AREA_ZORAS_RIVER
        49,   // WORLD_MAP_AREA_KOKIRI_FOREST
        51,   // WORLD_MAP_AREA_SACRED_FOREST_MEADOW
        -49,  // WORLD_MAP_AREA_LAKE_HYLIA
        83,   // WORLD_MAP_AREA_ZORAS_DOMAIN
        80,   // WORLD_MAP_AREA_ZORAS_FOUNTAIN
        -67,  // WORLD_MAP_AREA_GERUDO_VALLEY
        50,   // WORLD_MAP_AREA_LOST_WOODS
        -109, // WORLD_MAP_AREA_DESERT_COLOSSUS
        -76,  // WORLD_MAP_AREA_GERUDOS_FORTRESS
        -86,  // WORLD_MAP_AREA_HAUNTED_WASTELAND
        -10,  // WORLD_MAP_AREA_MARKET
        -6,   // WORLD_MAP_AREA_HYRULE_CASTLE
        19,   // WORLD_MAP_AREA_DEATH_MOUNTAIN_TRAIL
        24,   // WORLD_MAP_AREA_DEATH_MOUNTAIN_CRATER
        11,   // WORLD_MAP_AREA_GORON_CITY
        -17,  // WORLD_MAP_AREA_LON_LON_RANCH
        37,   // WORLD_MAP_AREA_QUESTION_MARK
        -6,   // WORLD_MAP_AREA_GANONS_CASTLE
    };
    static s16 areaBoxWidths[] = {
        96, // WORLD_MAP_AREA_HYRULE_FIELD
        32, // WORLD_MAP_AREA_KAKARIKO_VILLAGE
        32, // WORLD_MAP_AREA_GRAVEYARD
        48, // WORLD_MAP_AREA_ZORAS_RIVER
        48, // WORLD_MAP_AREA_KOKIRI_FOREST
        32, // WORLD_MAP_AREA_SACRED_FOREST_MEADOW
        48, // WORLD_MAP_AREA_LAKE_HYLIA
        32, // WORLD_MAP_AREA_ZORAS_DOMAIN
        32, // WORLD_MAP_AREA_ZORAS_FOUNTAIN
        32, // WORLD_MAP_AREA_GERUDO_VALLEY
        16, // WORLD_MAP_AREA_LOST_WOODS
        32, // WORLD_MAP_AREA_DESERT_COLOSSUS
        32, // WORLD_MAP_AREA_GERUDOS_FORTRESS
        16, // WORLD_MAP_AREA_HAUNTED_WASTELAND
        32, // WORLD_MAP_AREA_MARKET
        32, // WORLD_MAP_AREA_HYRULE_CASTLE
        32, // WORLD_MAP_AREA_DEATH_MOUNTAIN_TRAIL
        32, // WORLD_MAP_AREA_DEATH_MOUNTAIN_CRATER
        32, // WORLD_MAP_AREA_GORON_CITY
        32, // WORLD_MAP_AREA_LON_LON_RANCH
        16, // WORLD_MAP_AREA_QUESTION_MARK
        32, // WORLD_MAP_AREA_GANONS_CASTLE
    };
    static s16 areaBoxPosY[] = {
        30,  // WORLD_MAP_AREA_HYRULE_FIELD
        36,  // WORLD_MAP_AREA_KAKARIKO_VILLAGE
        35,  // WORLD_MAP_AREA_GRAVEYARD
        26,  // WORLD_MAP_AREA_ZORAS_RIVER
        7,   // WORLD_MAP_AREA_KOKIRI_FOREST
        11,  // WORLD_MAP_AREA_SACRED_FOREST_MEADOW
        -31, // WORLD_MAP_AREA_LAKE_HYLIA
        30,  // WORLD_MAP_AREA_ZORAS_DOMAIN
        38,  // WORLD_MAP_AREA_ZORAS_FOUNTAIN
        23,  // WORLD_MAP_AREA_GERUDO_VALLEY
        2,   // WORLD_MAP_AREA_LOST_WOODS
        42,  // WORLD_MAP_AREA_DESERT_COLOSSUS
        40,  // WORLD_MAP_AREA_GERUDOS_FORTRESS
        32,  // WORLD_MAP_AREA_HAUNTED_WASTELAND
        38,  // WORLD_MAP_AREA_MARKET
        50,  // WORLD_MAP_AREA_HYRULE_CASTLE
        57,  // WORLD_MAP_AREA_DEATH_MOUNTAIN_TRAIL
        58,  // WORLD_MAP_AREA_DEATH_MOUNTAIN_CRATER
        56,  // WORLD_MAP_AREA_GORON_CITY
        12,  // WORLD_MAP_AREA_LON_LON_RANCH
        36,  // WORLD_MAP_AREA_QUESTION_MARK
        50,  // WORLD_MAP_AREA_GANONS_CASTLE
    };
    static s16 areaBoxHeights[] = {
        59, // WORLD_MAP_AREA_HYRULE_FIELD
        19, // WORLD_MAP_AREA_KAKARIKO_VILLAGE
        13, // WORLD_MAP_AREA_GRAVEYARD
        19, // WORLD_MAP_AREA_ZORAS_RIVER
        38, // WORLD_MAP_AREA_KOKIRI_FOREST
        17, // WORLD_MAP_AREA_SACRED_FOREST_MEADOW
        38, // WORLD_MAP_AREA_LAKE_HYLIA
        17, // WORLD_MAP_AREA_ZORAS_DOMAIN
        13, // WORLD_MAP_AREA_ZORAS_FOUNTAIN
        26, // WORLD_MAP_AREA_GERUDO_VALLEY
        16, // WORLD_MAP_AREA_LOST_WOODS
        26, // WORLD_MAP_AREA_DESERT_COLOSSUS
        26, // WORLD_MAP_AREA_GERUDOS_FORTRESS
        16, // WORLD_MAP_AREA_HAUNTED_WASTELAND
        19, // WORLD_MAP_AREA_MARKET
        17, // WORLD_MAP_AREA_HYRULE_CASTLE
        26, // WORLD_MAP_AREA_DEATH_MOUNTAIN_TRAIL
        13, // WORLD_MAP_AREA_DEATH_MOUNTAIN_CRATER
        17, // WORLD_MAP_AREA_GORON_CITY
        17, // WORLD_MAP_AREA_LON_LON_RANCH
        16, // WORLD_MAP_AREA_QUESTION_MARK
        17, // WORLD_MAP_AREA_GANONS_CASTLE
    };
    static void* areaBoxTexs[] = {
        gWorldMapAreaBox7Tex, // WORLD_MAP_AREA_HYRULE_FIELD
        gWorldMapAreaBox1Tex, // WORLD_MAP_AREA_KAKARIKO_VILLAGE
        gWorldMapAreaBox4Tex, // WORLD_MAP_AREA_GRAVEYARD
        gWorldMapAreaBox6Tex, // WORLD_MAP_AREA_ZORAS_RIVER
        gWorldMapAreaBox2Tex, // WORLD_MAP_AREA_KOKIRI_FOREST
        gWorldMapAreaBox3Tex, // WORLD_MAP_AREA_SACRED_FOREST_MEADOW
        gWorldMapAreaBox2Tex, // WORLD_MAP_AREA_LAKE_HYLIA
        gWorldMapAreaBox3Tex, // WORLD_MAP_AREA_ZORAS_DOMAIN
        gWorldMapAreaBox4Tex, // WORLD_MAP_AREA_ZORAS_FOUNTAIN
        gWorldMapAreaBox5Tex, // WORLD_MAP_AREA_GERUDO_VALLEY
        gWorldMapAreaBox8Tex, // WORLD_MAP_AREA_LOST_WOODS
        gWorldMapAreaBox5Tex, // WORLD_MAP_AREA_DESERT_COLOSSUS
        gWorldMapAreaBox5Tex, // WORLD_MAP_AREA_GERUDOS_FORTRESS
        gWorldMapAreaBox8Tex, // WORLD_MAP_AREA_HAUNTED_WASTELAND
        gWorldMapAreaBox1Tex, // WORLD_MAP_AREA_MARKET
        gWorldMapAreaBox3Tex, // WORLD_MAP_AREA_HYRULE_CASTLE
        gWorldMapAreaBox5Tex, // WORLD_MAP_AREA_DEATH_MOUNTAIN_TRAIL
        gWorldMapAreaBox4Tex, // WORLD_MAP_AREA_DEATH_MOUNTAIN_CRATER
        gWorldMapAreaBox3Tex, // WORLD_MAP_AREA_GORON_CITY
        gWorldMapAreaBox3Tex, // WORLD_MAP_AREA_LON_LON_RANCH
        gWorldMapAreaBox8Tex, // WORLD_MAP_AREA_QUESTION_MARK
        gWorldMapAreaBox3Tex, // WORLD_MAP_AREA_GANONS_CASTLE
    };
    static void* currentPosTitleTexs[] = LANGUAGE_ARRAY(gPauseCurrentPositionJPNTex, gPauseCurrentPositionENGTex,
                                                        gPauseCurrentPositionGERTex, gPauseCurrentPositionFRATex);
    static u16 D_8082A6D4 = 0;
    PauseContext* pauseCtx = &play->pauseCtx;
    s16 i;
    s16 j;
    s16 t;
    s16 k;
    s16 oldCursorPoint;
    s16 stepR;
    s16 stepG;
    s16 stepB;

    OPEN_DISPS(gfxCtx, "../z_kaleido_map_PAL.c", 556);

    if ((pauseCtx->state == PAUSE_STATE_MAIN) && (pauseCtx->mainState == PAUSE_MAIN_STATE_IDLE) &&
        (pauseCtx->pageIndex == PAUSE_MAP)) {
        pauseCtx->cursorColorSet = 0;
        oldCursorPoint = pauseCtx->cursorPoint[PAUSE_WORLD_MAP];

        if (pauseCtx->cursorSpecialPos == 0) {
            if (pauseCtx->stickAdjX > 30) {
                D_8082A6D4 = 0;

                do {
                    pauseCtx->cursorPoint[PAUSE_WORLD_MAP]++;
                    if (pauseCtx->cursorPoint[PAUSE_WORLD_MAP] > 11) {
                        pauseCtx->cursorPoint[PAUSE_WORLD_MAP] = 11;
                        KaleidoScope_MoveCursorToSpecialPos(play, PAUSE_CURSOR_PAGE_RIGHT);
                        break;
                    }
                } while (pauseCtx->worldMapPoints[pauseCtx->cursorPoint[PAUSE_WORLD_MAP]] == 0);
            } else if (pauseCtx->stickAdjX < -30) {
                D_8082A6D4 = 0;

                do {
                    pauseCtx->cursorPoint[PAUSE_WORLD_MAP]--;
                    if (pauseCtx->cursorPoint[PAUSE_WORLD_MAP] < 0) {
                        pauseCtx->cursorPoint[PAUSE_WORLD_MAP] = 0;
                        KaleidoScope_MoveCursorToSpecialPos(play, PAUSE_CURSOR_PAGE_LEFT);
                        break;
                    }
                } while (pauseCtx->worldMapPoints[pauseCtx->cursorPoint[PAUSE_WORLD_MAP]] == 0);
            } else {
                D_8082A6D4++;
            }

            pauseCtx->cursorItem[PAUSE_MAP] = pauseCtx->cursorPoint[PAUSE_WORLD_MAP];
            pauseCtx->cursorSlot[PAUSE_MAP] = pauseCtx->cursorPoint[PAUSE_WORLD_MAP] + 0x1F;
            KaleidoScope_SetCursorVtx(pauseCtx, pauseCtx->cursorSlot[PAUSE_MAP] * 4, pauseCtx->mapPageVtx);
        } else {
            pauseCtx->cursorItem[PAUSE_MAP] = gSaveContext.worldMapArea + 0x18;
            if (pauseCtx->cursorSpecialPos == PAUSE_CURSOR_PAGE_LEFT) {
                if (pauseCtx->stickAdjX > 30) {
                    pauseCtx->cursorPoint[PAUSE_WORLD_MAP] = 0;
                    pauseCtx->cursorSpecialPos = 0;

                    while (pauseCtx->worldMapPoints[pauseCtx->cursorPoint[PAUSE_WORLD_MAP]] == 0) {
                        pauseCtx->cursorPoint[PAUSE_WORLD_MAP]++;
                    }

                    pauseCtx->cursorItem[PAUSE_MAP] = pauseCtx->cursorPoint[PAUSE_WORLD_MAP];
                    pauseCtx->cursorSlot[PAUSE_MAP] = pauseCtx->cursorPoint[PAUSE_WORLD_MAP] + 0x1F;
                    KaleidoScope_SetCursorVtx(pauseCtx, pauseCtx->cursorSlot[PAUSE_MAP] * 4, pauseCtx->mapPageVtx);
                    Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    D_8082A6D4 = 0;
                }
            } else {
                if (pauseCtx->stickAdjX < -30) {
                    pauseCtx->cursorPoint[PAUSE_WORLD_MAP] = 11;
                    pauseCtx->cursorSpecialPos = 0;

                    while (pauseCtx->worldMapPoints[pauseCtx->cursorPoint[PAUSE_WORLD_MAP]] == 0) {
                        pauseCtx->cursorPoint[PAUSE_WORLD_MAP]--;
                    }

                    pauseCtx->cursorItem[PAUSE_MAP] = pauseCtx->cursorPoint[PAUSE_WORLD_MAP];
                    pauseCtx->cursorSlot[PAUSE_MAP] = pauseCtx->cursorPoint[PAUSE_WORLD_MAP] + 0x1F;
                    KaleidoScope_SetCursorVtx(pauseCtx, pauseCtx->cursorSlot[PAUSE_MAP] * 4, pauseCtx->mapPageVtx);
                    Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    D_8082A6D4 = 0;
                }
            }
        }

        if (pauseCtx->worldMapPoints[pauseCtx->cursorPoint[PAUSE_WORLD_MAP]] == 0) {
            pauseCtx->cursorItem[PAUSE_MAP] = PAUSE_ITEM_NONE;
        }

        if (oldCursorPoint != pauseCtx->cursorPoint[PAUSE_WORLD_MAP]) {
            Audio_PlaySfxGeneral(NA_SE_SY_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }
    }

    gDPPipeSync(POLY_OPA_DISP++);

#if OOT_DEBUG
    if (HREG(15) == 0) {
        gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_POINT);

        gDPLoadTLUT_pal256(POLY_OPA_DISP++, gWorldMapImageTLUT);
        gDPSetTextureLUT(POLY_OPA_DISP++, G_TT_RGBA16);

        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
        gSPVertex(POLY_OPA_DISP++, &pauseCtx->mapPageVtx[188], 32, 0);

        for (j = t = i = 0; i < 8; i++, t++, j += 4) {
            gDPLoadTextureBlock(
                POLY_OPA_DISP++, (u8*)gWorldMapImageTex + t * WORLD_MAP_IMAGE_WIDTH * WORLD_MAP_IMAGE_FRAG_HEIGHT,
                G_IM_FMT_CI, G_IM_SIZ_8b, WORLD_MAP_IMAGE_WIDTH, WORLD_MAP_IMAGE_FRAG_HEIGHT, 0,
                G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

            gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);
        }

        gSPVertex(POLY_OPA_DISP++, &pauseCtx->mapPageVtx[220], 28, 0);

        for (j = i = 0; i < 6; i++, t++, j += 4) {
            gDPLoadTextureBlock(
                POLY_OPA_DISP++, (u8*)gWorldMapImageTex + t * WORLD_MAP_IMAGE_WIDTH * WORLD_MAP_IMAGE_FRAG_HEIGHT,
                G_IM_FMT_CI, G_IM_SIZ_8b, WORLD_MAP_IMAGE_WIDTH, WORLD_MAP_IMAGE_FRAG_HEIGHT, 0,
                G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

            gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);
        }

        gDPLoadTextureBlock(
            POLY_OPA_DISP++, (u8*)gWorldMapImageTex + t * WORLD_MAP_IMAGE_WIDTH * WORLD_MAP_IMAGE_FRAG_HEIGHT,
            G_IM_FMT_CI, G_IM_SIZ_8b, WORLD_MAP_IMAGE_WIDTH, WORLD_MAP_IMAGE_HEIGHT % WORLD_MAP_IMAGE_FRAG_HEIGHT, 0,
            G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);
    } else if (HREG(15) == 1) {
        Gfx* gfx = POLY_OPA_DISP;

        gSPLoadUcodeL(gfx++, gspS2DEX2d_fifo);

        Room_DrawBackground2D(&gfx, gWorldMapImageTex, gWorldMapImageTLUT, 216, 128, G_IM_FMT_CI, G_IM_SIZ_8b,
                              G_TT_RGBA16, 256, HREG(13) / 100.0f, HREG(14) / 100.0f);

        gSPLoadUcode(gfx++, SysUcode_GetUCode(), SysUcode_GetUCodeData());

        POLY_OPA_DISP = gfx;
    }

    if (HREG(15) == 2) {
        HREG(15) = 1;
        HREG(14) = 6100;
        HREG(13) = 5300;
    }
#else
    // Same as `HREG(15) == 0` case above
    gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_POINT);

    gDPLoadTLUT_pal256(POLY_OPA_DISP++, gWorldMapImageTLUT);
    gDPSetTextureLUT(POLY_OPA_DISP++, G_TT_RGBA16);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, pauseCtx->alpha);
    gSPVertex(POLY_OPA_DISP++, &pauseCtx->mapPageVtx[188], 32, 0);

    for (j = t = i = 0; i < 8; i++, t++, j += 4) {
        gDPLoadTextureBlock(
            POLY_OPA_DISP++, (u8*)gWorldMapImageTex + t * WORLD_MAP_IMAGE_WIDTH * WORLD_MAP_IMAGE_FRAG_HEIGHT,
            G_IM_FMT_CI, G_IM_SIZ_8b, WORLD_MAP_IMAGE_WIDTH, WORLD_MAP_IMAGE_FRAG_HEIGHT, 0, G_TX_WRAP | G_TX_NOMIRROR,
            G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);
    }

    gSPVertex(POLY_OPA_DISP++, &pauseCtx->mapPageVtx[220], 28, 0);

    for (j = i = 0; i < 6; i++, t++, j += 4) {
        gDPLoadTextureBlock(
            POLY_OPA_DISP++, (u8*)gWorldMapImageTex + t * WORLD_MAP_IMAGE_WIDTH * WORLD_MAP_IMAGE_FRAG_HEIGHT,
            G_IM_FMT_CI, G_IM_SIZ_8b, WORLD_MAP_IMAGE_WIDTH, WORLD_MAP_IMAGE_FRAG_HEIGHT, 0, G_TX_WRAP | G_TX_NOMIRROR,
            G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);
    }

    gDPLoadTextureBlock(
        POLY_OPA_DISP++, (u8*)gWorldMapImageTex + t * WORLD_MAP_IMAGE_WIDTH * WORLD_MAP_IMAGE_FRAG_HEIGHT, G_IM_FMT_CI,
        G_IM_SIZ_8b, WORLD_MAP_IMAGE_WIDTH, WORLD_MAP_IMAGE_HEIGHT % WORLD_MAP_IMAGE_FRAG_HEIGHT, 0,
        G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);
#endif

    if (ZREG(38) == 0) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_BILERP);

        Gfx_SetupDL_42Opa(gfxCtx);

        gDPSetCombineLERP(POLY_OPA_DISP++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0, 0,
                          PRIMITIVE, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 235, 235, 235, pauseCtx->alpha);

        for (k = 0; k < 15; k += 8) {
            gSPVertex(POLY_OPA_DISP++, &pauseCtx->mapPageVtx[60 + k * 4], 32, 0);

            for (j = i = 0; i < 8; i++, j += 4) {
                if (!(gSaveContext.save.info.worldMapAreaData & gBitFlags[cloudFlagNums[k + i]])) {
                    gDPLoadTextureBlock_4b(POLY_OPA_DISP++, cloudTexs[k + i], G_IM_FMT_I,
                                           gVtxPageMapWorldQuadsWidth[k + i], gVtxPageMapWorldQuadsHeight[k + i], 0,
                                           G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK,
                                           G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                    gSP1Quadrangle(POLY_OPA_DISP++, j, j + 2, j + 3, j + 1, 0);
                }
            }
        }
    }

    if (gSaveContext.worldMapArea < WORLD_MAP_AREA_MAX) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_POINT);

        pauseCtx->mapPageVtx[172].v.ob[0] = pauseCtx->mapPageVtx[174].v.ob[0] =
            areaBoxPosX[((void)0, gSaveContext.worldMapArea)];

        pauseCtx->mapPageVtx[173].v.ob[0] = pauseCtx->mapPageVtx[175].v.ob[0] =
            pauseCtx->mapPageVtx[172].v.ob[0] + areaBoxWidths[((void)0, gSaveContext.worldMapArea)];

        pauseCtx->mapPageVtx[172].v.ob[1] = pauseCtx->mapPageVtx[173].v.ob[1] =
            areaBoxPosY[((void)0, gSaveContext.worldMapArea)] + pauseCtx->offsetY;

        pauseCtx->mapPageVtx[174].v.ob[1] = pauseCtx->mapPageVtx[175].v.ob[1] =
            pauseCtx->mapPageVtx[172].v.ob[1] - areaBoxHeights[((void)0, gSaveContext.worldMapArea)];

        pauseCtx->mapPageVtx[173].v.tc[0] = pauseCtx->mapPageVtx[175].v.tc[0] =
            areaBoxWidths[((void)0, gSaveContext.worldMapArea)] << 5;

        pauseCtx->mapPageVtx[174].v.tc[1] = pauseCtx->mapPageVtx[175].v.tc[1] =
            areaBoxHeights[((void)0, gSaveContext.worldMapArea)] << 5;

        gSPVertex(POLY_OPA_DISP++, &pauseCtx->mapPageVtx[172], 4, 0);

        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 100, 255, 255, pauseCtx->alpha);

        gDPLoadTextureBlock_4b(POLY_OPA_DISP++, areaBoxTexs[((void)0, (gSaveContext.worldMapArea))], G_IM_FMT_IA,
                               areaBoxWidths[((void)0, (gSaveContext.worldMapArea))],
                               areaBoxHeights[((void)0, (gSaveContext.worldMapArea))], 0, G_TX_WRAP | G_TX_NOMIRROR,
                               G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetTextureFilter(POLY_OPA_DISP++, G_TF_BILERP);
    }

    stepR = ABS(pointPulsePrimColor[0] - pointPrimColors[pointPulseStage][0]) / pointPulseTimer;
    stepG = ABS(pointPulsePrimColor[1] - pointPrimColors[pointPulseStage][1]) / pointPulseTimer;
    stepB = ABS(pointPulsePrimColor[2] - pointPrimColors[pointPulseStage][2]) / pointPulseTimer;
    if (pointPulsePrimColor[0] >= pointPrimColors[pointPulseStage][0]) {
        pointPulsePrimColor[0] -= stepR;
    } else {
        pointPulsePrimColor[0] += stepR;
    }
    if (pointPulsePrimColor[1] >= pointPrimColors[pointPulseStage][1]) {
        pointPulsePrimColor[1] -= stepG;
    } else {
        pointPulsePrimColor[1] += stepG;
    }
    if (pointPulsePrimColor[2] >= pointPrimColors[pointPulseStage][2]) {
        pointPulsePrimColor[2] -= stepB;
    } else {
        pointPulsePrimColor[2] += stepB;
    }

    stepR = ABS(pointPulseEnvColor[0] - pointEnvColors[pointPulseStage][0]) / pointPulseTimer;
    stepG = ABS(pointPulseEnvColor[1] - pointEnvColors[pointPulseStage][1]) / pointPulseTimer;
    stepB = ABS(pointPulseEnvColor[2] - pointEnvColors[pointPulseStage][2]) / pointPulseTimer;
    if (pointPulseEnvColor[0] >= pointEnvColors[pointPulseStage][0]) {
        pointPulseEnvColor[0] -= stepR;
    } else {
        pointPulseEnvColor[0] += stepR;
    }
    if (pointPulseEnvColor[1] >= pointEnvColors[pointPulseStage][1]) {
        pointPulseEnvColor[1] -= stepG;
    } else {
        pointPulseEnvColor[1] += stepG;
    }
    if (pointPulseEnvColor[2] >= pointEnvColors[pointPulseStage][2]) {
        pointPulseEnvColor[2] -= stepB;
    } else {
        pointPulseEnvColor[2] += stepB;
    }

    pointPulseTimer--;
    if (pointPulseTimer == 0) {
        pointPulsePrimColor[0] = pointPrimColors[pointPulseStage][0];
        pointPulsePrimColor[1] = pointPrimColors[pointPulseStage][1];
        pointPulsePrimColor[2] = pointPrimColors[pointPulseStage][2];
        pointPulseEnvColor[0] = pointEnvColors[pointPulseStage][0];
        pointPulseEnvColor[1] = pointEnvColors[pointPulseStage][1];
        pointPulseEnvColor[2] = pointEnvColors[pointPulseStage][2];
        pointPulseTimer = 20;
        pointPulseStage ^= 1;
    }

    Gfx_SetupDL_42Opa(gfxCtx);

    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

    gDPLoadTextureBlock(POLY_OPA_DISP++, gWorldMapDotTex, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8, 0, G_TX_WRAP | G_TX_NOMIRROR,
                        G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    for (j = i = 0; i < 12; i++, t++, j += 4) {
        if (pauseCtx->worldMapPoints[i] != 0) {
            gDPPipeSync(POLY_OPA_DISP++);

            if (pauseCtx->worldMapPoints[i] == 1) {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, pointPrimColors[0][0], pointPrimColors[0][1],
                                pointPrimColors[0][2], pauseCtx->alpha);
                gDPSetEnvColor(POLY_OPA_DISP++, pointEnvColors[0][0], pointEnvColors[0][1], pointEnvColors[0][2], 0);
            } else {
                gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, pointPulsePrimColor[0], pointPulsePrimColor[1],
                                pointPulsePrimColor[2], pauseCtx->alpha);
                gDPSetEnvColor(POLY_OPA_DISP++, pointPulseEnvColor[0], pointPulseEnvColor[1], pointPulseEnvColor[2], 0);
            }

            gSPVertex(POLY_OPA_DISP++, &pauseCtx->mapPageVtx[124 + i * 4], 4, 0);

            gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
        }
    }

    if (pauseCtx->cursorSpecialPos == 0) {
        KaleidoScope_DrawCursor(play, PAUSE_MAP);
    }

    gSPVertex(POLY_OPA_DISP++, &pauseCtx->mapPageVtx[176], 16, 0);

    if (pauseCtx->tradeQuestLocation != 0xFF) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, pointPulsePrimColor[0], 0, pauseCtx->alpha);

        gDPLoadTextureBlock(POLY_OPA_DISP++, gWorldMapArrowTex, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8, 0,
                            G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);

        gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
    }

    if (gSaveContext.worldMapArea < WORLD_MAP_AREA_MAX) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 150, 255, 255, pauseCtx->alpha);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

        POLY_OPA_DISP = KaleidoScope_QuadTextureIA8(POLY_OPA_DISP,
                                                    pauseCtx->nameSegment + MAX(MAP_NAME_TEX1_SIZE, ITEM_NAME_TEX_SIZE),
                                                    MAP_NAME_TEX2_WIDTH, MAP_NAME_TEX2_HEIGHT, 4);
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0, 0,
                      PRIMITIVE, 0);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 0, 0, 0, pauseCtx->alpha);

    gDPLoadTextureBlock_4b(POLY_OPA_DISP++, currentPosTitleTexs[gSaveContext.language], G_IM_FMT_I, 64, 8, 0,
                           G_TX_WRAP | G_TX_NOMIRROR, G_TX_WRAP | G_TX_NOMIRROR, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);

    gSP1Quadrangle(POLY_OPA_DISP++, 8, 10, 11, 9, 0);

    gDPPipeSync(POLY_OPA_DISP++);

    CLOSE_DISPS(gfxCtx, "../z_kaleido_map_PAL.c", 874);
}
