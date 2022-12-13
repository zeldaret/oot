#include "global.h"
#include "terminal.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"
#include "assets/textures/parameter_static/parameter_static.h"

MapData* gMapData;

s16 sPlayerInitialPosX = 0;
s16 sPlayerInitialPosZ = 0;
s16 sPlayerInitialDirection = 0;
s16 sEntranceIconMapIndex = 0;

void Map_SavePlayerInitialInfo(PlayState* play) {
    Player* player = GET_PLAYER(play);

    sPlayerInitialPosX = player->actor.world.pos.x;
    sPlayerInitialPosZ = player->actor.world.pos.z;
    sPlayerInitialDirection = (s16)((0x7FFF - player->actor.shape.rot.y) / 0x400);
}

void Map_SetPaletteData(PlayState* play, s16 room) {
    s32 mapIndex = gSaveContext.mapIndex;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    s16 paletteIndex = gMapData->roomPalette[mapIndex][room];

    if (interfaceCtx->mapRoomNum == room) {
        interfaceCtx->mapPaletteIndex = paletteIndex;
    }

    osSyncPrintf(VT_FGCOL(YELLOW));
    // "PALETE Set"
    osSyncPrintf("ＰＡＬＥＴＥセット 【 i=%x : room=%x 】Room_Inf[%d][4]=%x  ( map_palete_no = %d )\n", paletteIndex,
                 room, mapIndex, gSaveContext.sceneFlags[mapIndex].rooms, interfaceCtx->mapPaletteIndex);
    osSyncPrintf(VT_RST);

    interfaceCtx->mapPalette[paletteIndex * 2] = 2;
    interfaceCtx->mapPalette[paletteIndex * 2 + 1] = 0xBF;
}

void Map_SetFloorPalettesData(PlayState* play, s16 floor) {
    s32 mapIndex = gSaveContext.mapIndex;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    s16 room;
    s16 i;

    for (i = 0; i < 16; i++) {
        interfaceCtx->mapPalette[i] = 0;
        interfaceCtx->mapPalette[i + 16] = 0;
    }

    if (CHECK_DUNGEON_ITEM(DUNGEON_MAP, mapIndex)) {
        interfaceCtx->mapPalette[30] = 0;
        interfaceCtx->mapPalette[31] = 1;
    }

    switch (play->sceneId) {
        case SCENE_DEKU_TREE:
        case SCENE_DODONGOS_CAVERN:
        case SCENE_JABU_JABU:
        case SCENE_FOREST_TEMPLE:
        case SCENE_FIRE_TEMPLE:
        case SCENE_WATER_TEMPLE:
        case SCENE_SPIRIT_TEMPLE:
        case SCENE_SHADOW_TEMPLE:
        case SCENE_BOTTOM_OF_THE_WELL:
        case SCENE_ICE_CAVERN:
        case SCENE_DEKU_TREE_BOSS:
        case SCENE_DODONGOS_CAVERN_BOSS:
        case SCENE_JABU_JABU_BOSS:
        case SCENE_FOREST_TEMPLE_BOSS:
        case SCENE_FIRE_TEMPLE_BOSS:
        case SCENE_WATER_TEMPLE_BOSS:
        case SCENE_SPIRIT_TEMPLE_BOSS:
        case SCENE_SHADOW_TEMPLE_BOSS:
            for (i = 0; i < gMapData->maxPaletteCount[mapIndex]; i++) {
                room = gMapData->paletteRoom[mapIndex][floor][i];
                if ((room != 0xFF) && (gSaveContext.sceneFlags[mapIndex].rooms & gBitFlags[room])) {
                    Map_SetPaletteData(play, room);
                }
            }
            break;
    }
}

void Map_InitData(PlayState* play, s16 room) {
    s32 mapIndex = gSaveContext.mapIndex;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    s16 extendedMapIndex;

    switch (play->sceneId) {
        case SCENE_HYRULE_FIELD:
        case SCENE_KAKARIKO_VILLAGE:
        case SCENE_GRAVEYARD:
        case SCENE_ZORAS_RIVER:
        case SCENE_KOKIRI_FOREST:
        case SCENE_SACRED_FOREST_MEADOW:
        case SCENE_LAKE_HYLIA:
        case SCENE_ZORAS_DOMAIN:
        case SCENE_ZORAS_FOUNTAIN:
        case SCENE_GERUDO_VALLEY:
        case SCENE_LOST_WOODS:
        case SCENE_DESERT_COLOSSUS:
        case SCENE_GERUDOS_FORTRESS:
        case SCENE_HAUNTED_WASTELAND:
        case SCENE_HYRULE_CASTLE:
        case SCENE_DEATH_MOUNTAIN_TRAIL:
        case SCENE_DEATH_MOUNTAIN_CRATER:
        case SCENE_GORON_CITY:
        case SCENE_LON_LON_RANCH:
        case SCENE_OUTSIDE_GANONS_CASTLE:
            extendedMapIndex = mapIndex;
            if (play->sceneId == SCENE_GRAVEYARD) {
                if (CHECK_QUEST_ITEM(QUEST_SONG_NOCTURNE)) {
                    extendedMapIndex = 0x14;
                }
            } else if (play->sceneId == SCENE_LAKE_HYLIA) {
                if ((LINK_AGE_IN_YEARS == YEARS_ADULT) && !CHECK_QUEST_ITEM(QUEST_MEDALLION_WATER)) {
                    extendedMapIndex = 0x15;
                }
            } else if (play->sceneId == SCENE_GERUDO_VALLEY) {
                if ((LINK_AGE_IN_YEARS == YEARS_ADULT) && !GET_EVENTCHKINF_CARPENTERS_FREE_ALL()) {
                    extendedMapIndex = 0x16;
                }
            } else if (play->sceneId == SCENE_GERUDOS_FORTRESS) {
                if (GET_EVENTCHKINF_CARPENTERS_FREE_ALL()) {
                    extendedMapIndex = 0x17;
                }
            }
            osSyncPrintf(VT_FGCOL(BLUE));
            osSyncPrintf("ＫＫＫ＝%d\n", extendedMapIndex);
            osSyncPrintf(VT_RST);
            sEntranceIconMapIndex = extendedMapIndex;
            DmaMgr_RequestSyncDebug(interfaceCtx->mapSegment,
                                    (uintptr_t)_map_grand_staticSegmentRomStart +
                                        gMapData->owMinimapTexOffset[extendedMapIndex],
                                    gMapData->owMinimapTexSize[mapIndex], "../z_map_exp.c", 309);
            interfaceCtx->unk_258 = mapIndex;
            break;
        case SCENE_DEKU_TREE:
        case SCENE_DODONGOS_CAVERN:
        case SCENE_JABU_JABU:
        case SCENE_FOREST_TEMPLE:
        case SCENE_FIRE_TEMPLE:
        case SCENE_WATER_TEMPLE:
        case SCENE_SPIRIT_TEMPLE:
        case SCENE_SHADOW_TEMPLE:
        case SCENE_BOTTOM_OF_THE_WELL:
        case SCENE_ICE_CAVERN:
        case SCENE_DEKU_TREE_BOSS:
        case SCENE_DODONGOS_CAVERN_BOSS:
        case SCENE_JABU_JABU_BOSS:
        case SCENE_FOREST_TEMPLE_BOSS:
        case SCENE_FIRE_TEMPLE_BOSS:
        case SCENE_WATER_TEMPLE_BOSS:
        case SCENE_SPIRIT_TEMPLE_BOSS:
        case SCENE_SHADOW_TEMPLE_BOSS:
            osSyncPrintf(VT_FGCOL(YELLOW));
            // "Deku Tree Dungeon MAP Texture DMA"
            osSyncPrintf("デクの樹ダンジョンＭＡＰ テクスチャＤＭＡ(%x) scene_id_offset=%d  VREG(30)=%d\n", room,
                         mapIndex, VREG(30));
            osSyncPrintf(VT_RST);
            DmaMgr_RequestSyncDebug(play->interfaceCtx.mapSegment,
                                    (uintptr_t)_map_i_staticSegmentRomStart +
                                        ((gMapData->dgnMinimapTexIndexOffset[mapIndex] + room) * MAP_I_TEX_SIZE),
                                    MAP_I_TEX_SIZE, "../z_map_exp.c", 346);
            R_COMPASS_OFFSET_X = gMapData->roomCompassOffsetX[mapIndex][room];
            R_COMPASS_OFFSET_Y = gMapData->roomCompassOffsetY[mapIndex][room];
            Map_SetFloorPalettesData(play, VREG(30));
            osSyncPrintf("ＭＡＰ 各階ＯＮチェック\n"); // "MAP Individual Floor ON Check"
            break;
    }
}

void Map_InitRoomData(PlayState* play, s16 room) {
    s32 mapIndex = gSaveContext.mapIndex;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;

    osSyncPrintf("＊＊＊＊＊＊＊\n＊＊＊＊＊＊＊\nroom_no=%d (%d)(%d)\n＊＊＊＊＊＊＊\n＊＊＊＊＊＊＊\n", room,
                 mapIndex, play->sceneId);

    if (room >= 0) {
        switch (play->sceneId) {
            case SCENE_DEKU_TREE:
            case SCENE_DODONGOS_CAVERN:
            case SCENE_JABU_JABU:
            case SCENE_FOREST_TEMPLE:
            case SCENE_FIRE_TEMPLE:
            case SCENE_WATER_TEMPLE:
            case SCENE_SPIRIT_TEMPLE:
            case SCENE_SHADOW_TEMPLE:
            case SCENE_BOTTOM_OF_THE_WELL:
            case SCENE_ICE_CAVERN:
            case SCENE_DEKU_TREE_BOSS:
            case SCENE_DODONGOS_CAVERN_BOSS:
            case SCENE_JABU_JABU_BOSS:
            case SCENE_FOREST_TEMPLE_BOSS:
            case SCENE_FIRE_TEMPLE_BOSS:
            case SCENE_WATER_TEMPLE_BOSS:
            case SCENE_SPIRIT_TEMPLE_BOSS:
            case SCENE_SHADOW_TEMPLE_BOSS:
                gSaveContext.sceneFlags[mapIndex].rooms |= gBitFlags[room];
                osSyncPrintf("ＲＯＯＭ＿ＩＮＦ＝%d\n", gSaveContext.sceneFlags[mapIndex].rooms);
                interfaceCtx->mapRoomNum = room;
                interfaceCtx->unk_25A = mapIndex;
                Map_SetPaletteData(play, room);
                osSyncPrintf(VT_FGCOL(YELLOW));
                osSyncPrintf("部屋部屋＝%d\n", room); // "Room Room = %d"
                osSyncPrintf(VT_RST);
                Map_InitData(play, room);
                break;
        }
    } else {
        interfaceCtx->mapRoomNum = 0;
    }

    if (gSaveContext.sunsSongState != SUNSSONG_SPEED_TIME) {
        gSaveContext.sunsSongState = SUNSSONG_INACTIVE;
    }
}

void Map_Destroy(PlayState* play) {
    MapMark_ClearPointers(play);
    gMapData = NULL;
}

void Map_Init(PlayState* play) {
    s32 mapIndex = gSaveContext.mapIndex;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;

    gMapData = &gMapDataTable;

    interfaceCtx->unk_258 = -1;
    interfaceCtx->unk_25A = -1;

    interfaceCtx->mapSegment = GameState_Alloc(&play->state, 0x1000, "../z_map_exp.c", 457);
    // "ＭＡＰ texture initialization scene_data_ID=%d mapSegment=%x"
    osSyncPrintf("\n\n\nＭＡＰ テクスチャ初期化   scene_data_ID=%d\nmapSegment=%x\n\n", play->sceneId,
                 interfaceCtx->mapSegment, play);
    ASSERT(interfaceCtx->mapSegment != NULL, "parameter->mapSegment != NULL", "../z_map_exp.c", 459);

    switch (play->sceneId) {
        case SCENE_HYRULE_FIELD:
        case SCENE_KAKARIKO_VILLAGE:
        case SCENE_GRAVEYARD:
        case SCENE_ZORAS_RIVER:
        case SCENE_KOKIRI_FOREST:
        case SCENE_SACRED_FOREST_MEADOW:
        case SCENE_LAKE_HYLIA:
        case SCENE_ZORAS_DOMAIN:
        case SCENE_ZORAS_FOUNTAIN:
        case SCENE_GERUDO_VALLEY:
        case SCENE_LOST_WOODS:
        case SCENE_DESERT_COLOSSUS:
        case SCENE_GERUDOS_FORTRESS:
        case SCENE_HAUNTED_WASTELAND:
        case SCENE_HYRULE_CASTLE:
        case SCENE_DEATH_MOUNTAIN_TRAIL:
        case SCENE_DEATH_MOUNTAIN_CRATER:
        case SCENE_GORON_CITY:
        case SCENE_LON_LON_RANCH:
        case SCENE_OUTSIDE_GANONS_CASTLE:
            mapIndex = play->sceneId - SCENE_HYRULE_FIELD;
            R_MAP_INDEX = gSaveContext.mapIndex = mapIndex;
            R_COMPASS_SCALE_X = gMapData->owCompassInfo[mapIndex][0];
            R_COMPASS_SCALE_Y = gMapData->owCompassInfo[mapIndex][1];
            R_COMPASS_OFFSET_X = gMapData->owCompassInfo[mapIndex][2];
            R_COMPASS_OFFSET_Y = gMapData->owCompassInfo[mapIndex][3];
            Map_InitData(play, mapIndex);
            R_OW_MINIMAP_X = gMapData->owMinimapPosX[mapIndex];
            R_OW_MINIMAP_Y = gMapData->owMinimapPosY[mapIndex];
            break;
        case SCENE_DEKU_TREE:
        case SCENE_DODONGOS_CAVERN:
        case SCENE_JABU_JABU:
        case SCENE_FOREST_TEMPLE:
        case SCENE_FIRE_TEMPLE:
        case SCENE_WATER_TEMPLE:
        case SCENE_SPIRIT_TEMPLE:
        case SCENE_SHADOW_TEMPLE:
        case SCENE_BOTTOM_OF_THE_WELL:
        case SCENE_ICE_CAVERN:
        case SCENE_GANONS_TOWER:
        case SCENE_GERUDO_TRAINING_GROUND:
        case SCENE_THIEVES_HIDEOUT:
        case SCENE_INSIDE_GANONS_CASTLE:
        case SCENE_GANONS_TOWER_COLLAPSE_INTERIOR:
        case SCENE_INSIDE_GANONS_CASTLE_COLLAPSE:
        case SCENE_TREASURE_BOX_SHOP:
        case SCENE_DEKU_TREE_BOSS:
        case SCENE_DODONGOS_CAVERN_BOSS:
        case SCENE_JABU_JABU_BOSS:
        case SCENE_FOREST_TEMPLE_BOSS:
        case SCENE_FIRE_TEMPLE_BOSS:
        case SCENE_WATER_TEMPLE_BOSS:
        case SCENE_SPIRIT_TEMPLE_BOSS:
        case SCENE_SHADOW_TEMPLE_BOSS:
            mapIndex = (play->sceneId >= SCENE_DEKU_TREE_BOSS) ? play->sceneId - SCENE_DEKU_TREE_BOSS : play->sceneId;
            R_MAP_INDEX = gSaveContext.mapIndex = mapIndex;
            if ((play->sceneId <= SCENE_ICE_CAVERN) || (play->sceneId >= SCENE_DEKU_TREE_BOSS)) {
                R_COMPASS_SCALE_X = gMapData->dgnCompassInfo[mapIndex][0];
                R_COMPASS_SCALE_Y = gMapData->dgnCompassInfo[mapIndex][1];
                R_COMPASS_OFFSET_X = gMapData->dgnCompassInfo[mapIndex][2];
                R_COMPASS_OFFSET_Y = gMapData->dgnCompassInfo[mapIndex][3];
                R_MAP_TEX_INDEX = R_MAP_TEX_INDEX_BASE = gMapData->dgnTexIndexBase[mapIndex];
                Map_InitRoomData(play, play->roomCtx.curRoom.num);
                MapMark_Init(play);
            }
            break;
    }
}

void Minimap_DrawCompassIcons(PlayState* play) {
    s32 pad;
    Player* player = GET_PLAYER(play);
    s16 tempX, tempZ;

    OPEN_DISPS(play->state.gfxCtx, "../z_map_exp.c", 565);

    if (play->interfaceCtx.minimapAlpha >= 0xAA) {
        Gfx_SetupDL_42Overlay(play->state.gfxCtx);

        gSPMatrix(OVERLAY_DISP++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetEnvColor(OVERLAY_DISP++, 0, 0, 0, 255);
        gDPSetCombineMode(OVERLAY_DISP++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);

        tempX = player->actor.world.pos.x;
        tempZ = player->actor.world.pos.z;
        tempX /= R_COMPASS_SCALE_X;
        tempZ /= R_COMPASS_SCALE_Y;
        Matrix_Translate((R_COMPASS_OFFSET_X + tempX) / 10.0f, (R_COMPASS_OFFSET_Y - tempZ) / 10.0f, 0.0f, MTXMODE_NEW);
        Matrix_Scale(0.4f, 0.4f, 0.4f, MTXMODE_APPLY);
        Matrix_RotateX(-1.6f, MTXMODE_APPLY);
        tempX = (0x7FFF - player->actor.shape.rot.y) / 0x400;
        Matrix_RotateY(tempX / 10.0f, MTXMODE_APPLY);
        gSPMatrix(OVERLAY_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_map_exp.c", 585),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 200, 255, 0, 255);
        gSPDisplayList(OVERLAY_DISP++, gCompassArrowDL);

        tempX = sPlayerInitialPosX;
        tempZ = sPlayerInitialPosZ;
        tempX /= R_COMPASS_SCALE_X;
        tempZ /= R_COMPASS_SCALE_Y;
        Matrix_Translate((R_COMPASS_OFFSET_X + tempX) / 10.0f, (R_COMPASS_OFFSET_Y - tempZ) / 10.0f, 0.0f, MTXMODE_NEW);
        Matrix_Scale(VREG(9) / 100.0f, VREG(9) / 100.0f, VREG(9) / 100.0f, MTXMODE_APPLY);
        Matrix_RotateX(VREG(52) / 10.0f, MTXMODE_APPLY);
        Matrix_RotateY(sPlayerInitialDirection / 10.0f, MTXMODE_APPLY);
        gSPMatrix(OVERLAY_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_map_exp.c", 603),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gDPSetPrimColor(OVERLAY_DISP++, 0, 0xFF, 200, 0, 0, 255);
        gSPDisplayList(OVERLAY_DISP++, gCompassArrowDL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_map_exp.c", 607);
}

void Minimap_Draw(PlayState* play) {
    s32 pad[2];
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    s32 mapIndex = gSaveContext.mapIndex;

    OPEN_DISPS(play->state.gfxCtx, "../z_map_exp.c", 626);

    if (play->pauseCtx.state < 4) {
        switch (play->sceneId) {
            case SCENE_DEKU_TREE:
            case SCENE_DODONGOS_CAVERN:
            case SCENE_JABU_JABU:
            case SCENE_FOREST_TEMPLE:
            case SCENE_FIRE_TEMPLE:
            case SCENE_WATER_TEMPLE:
            case SCENE_SPIRIT_TEMPLE:
            case SCENE_SHADOW_TEMPLE:
            case SCENE_BOTTOM_OF_THE_WELL:
            case SCENE_ICE_CAVERN:
                if (!R_MINIMAP_DISABLED) {
                    Gfx_SetupDL_39Overlay(play->state.gfxCtx);
                    gDPSetCombineLERP(OVERLAY_DISP++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0,
                                      TEXEL0, 0, PRIMITIVE, 0);

                    if (CHECK_DUNGEON_ITEM(DUNGEON_MAP, mapIndex)) {
                        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 100, 255, 255, interfaceCtx->minimapAlpha);

                        gDPLoadTextureBlock_4b(OVERLAY_DISP++, interfaceCtx->mapSegment, G_IM_FMT_I, MAP_I_TEX_WIDTH,
                                               MAP_I_TEX_HEIGHT, 0, G_TX_NOMIRROR | G_TX_WRAP,
                                               G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                                               G_TX_NOLOD);

                        gSPTextureRectangle(OVERLAY_DISP++, R_DGN_MINIMAP_X << 2, R_DGN_MINIMAP_Y << 2,
                                            (R_DGN_MINIMAP_X + MAP_I_TEX_WIDTH) << 2,
                                            (R_DGN_MINIMAP_Y + MAP_I_TEX_HEIGHT) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10,
                                            1 << 10);
                    }

                    if (CHECK_DUNGEON_ITEM(DUNGEON_COMPASS, mapIndex)) {
                        Minimap_DrawCompassIcons(play); // Draw icons for the player spawn and current position
                        Gfx_SetupDL_39Overlay(play->state.gfxCtx);
                        MapMark_Draw(play);
                    }
                }

                if (CHECK_BTN_ALL(play->state.input[0].press.button, BTN_L) && !Play_InCsMode(play)) {
                    osSyncPrintf("Game_play_demo_mode_check=%d\n", Play_InCsMode(play));
                    // clang-format off
                    if (!R_MINIMAP_DISABLED) { Audio_PlaySfxGeneral(NA_SE_SY_CAMERA_ZOOM_UP, &gSfxDefaultPos, 4,
                                                                      &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                                      &gSfxDefaultReverb);
                    } else {
                        Audio_PlaySfxGeneral(NA_SE_SY_CAMERA_ZOOM_DOWN, &gSfxDefaultPos, 4,
                                               &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                               &gSfxDefaultReverb);
                    }
                    // clang-format on
                    R_MINIMAP_DISABLED ^= 1;
                }

                break;
            case SCENE_HYRULE_FIELD:
            case SCENE_KAKARIKO_VILLAGE:
            case SCENE_GRAVEYARD:
            case SCENE_ZORAS_RIVER:
            case SCENE_KOKIRI_FOREST:
            case SCENE_SACRED_FOREST_MEADOW:
            case SCENE_LAKE_HYLIA:
            case SCENE_ZORAS_DOMAIN:
            case SCENE_ZORAS_FOUNTAIN:
            case SCENE_GERUDO_VALLEY:
            case SCENE_LOST_WOODS:
            case SCENE_DESERT_COLOSSUS:
            case SCENE_GERUDOS_FORTRESS:
            case SCENE_HAUNTED_WASTELAND:
            case SCENE_HYRULE_CASTLE:
            case SCENE_DEATH_MOUNTAIN_TRAIL:
            case SCENE_DEATH_MOUNTAIN_CRATER:
            case SCENE_GORON_CITY:
            case SCENE_LON_LON_RANCH:
            case SCENE_OUTSIDE_GANONS_CASTLE:
                if (!R_MINIMAP_DISABLED) {
                    Gfx_SetupDL_39Overlay(play->state.gfxCtx);

                    gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_MINIMAP_COLOR(0), R_MINIMAP_COLOR(1), R_MINIMAP_COLOR(2),
                                    interfaceCtx->minimapAlpha);

                    gDPLoadTextureBlock_4b(OVERLAY_DISP++, interfaceCtx->mapSegment, G_IM_FMT_IA,
                                           gMapData->owMinimapWidth[mapIndex], gMapData->owMinimapHeight[mapIndex], 0,
                                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                                           G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                    gSPTextureRectangle(OVERLAY_DISP++, R_OW_MINIMAP_X << 2, R_OW_MINIMAP_Y << 2,
                                        (R_OW_MINIMAP_X + gMapData->owMinimapWidth[mapIndex]) << 2,
                                        (R_OW_MINIMAP_Y + gMapData->owMinimapHeight[mapIndex]) << 2, G_TX_RENDERTILE, 0,
                                        0, 1 << 10, 1 << 10);

                    if (((play->sceneId != SCENE_KAKARIKO_VILLAGE) && (play->sceneId != SCENE_KOKIRI_FOREST) &&
                         (play->sceneId != SCENE_ZORAS_FOUNTAIN)) ||
                        (LINK_AGE_IN_YEARS != YEARS_ADULT)) {
                        if ((gMapData->owEntranceFlag[sEntranceIconMapIndex] == 0xFFFF) ||
                            ((gMapData->owEntranceFlag[sEntranceIconMapIndex] != 0xFFFF) &&
                             (gSaveContext.infTable[INFTABLE_1AX_INDEX] &
                              gBitFlags[gMapData->owEntranceFlag[mapIndex]]))) {

                            gDPLoadTextureBlock(OVERLAY_DISP++, gMapDungeonEntranceIconTex, G_IM_FMT_RGBA, G_IM_SIZ_16b,
                                                8, 8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                                                G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                            gSPTextureRectangle(OVERLAY_DISP++,
                                                gMapData->owEntranceIconPosX[sEntranceIconMapIndex] << 2,
                                                gMapData->owEntranceIconPosY[sEntranceIconMapIndex] << 2,
                                                (gMapData->owEntranceIconPosX[sEntranceIconMapIndex] + 8) << 2,
                                                (gMapData->owEntranceIconPosY[sEntranceIconMapIndex] + 8) << 2,
                                                G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);
                        }
                    }

                    if ((play->sceneId == SCENE_ZORAS_FOUNTAIN) &&
                        (gSaveContext.infTable[INFTABLE_1AX_INDEX] & gBitFlags[INFTABLE_1A9_SHIFT])) {
                        gDPLoadTextureBlock(OVERLAY_DISP++, gMapDungeonEntranceIconTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8,
                                            8, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                                            G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                        gSPTextureRectangle(OVERLAY_DISP++, 270 << 2, 154 << 2, 278 << 2, 162 << 2, G_TX_RENDERTILE, 0,
                                            0, 1 << 10, 1 << 10);
                    }

                    Minimap_DrawCompassIcons(play); // Draw icons for the player spawn and current position
                }

                if (CHECK_BTN_ALL(play->state.input[0].press.button, BTN_L) && !Play_InCsMode(play)) {
                    // clang-format off
                    if (!R_MINIMAP_DISABLED) { Audio_PlaySfxGeneral(NA_SE_SY_CAMERA_ZOOM_UP, &gSfxDefaultPos, 4,
                                                                      &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                                      &gSfxDefaultReverb);
                    } else {
                        Audio_PlaySfxGeneral(NA_SE_SY_CAMERA_ZOOM_DOWN, &gSfxDefaultPos, 4,
                                               &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                               &gSfxDefaultReverb);
                    }
                    // clang-format on
                    R_MINIMAP_DISABLED ^= 1;
                }

                break;
        }
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_map_exp.c", 782);
}

s16 Map_GetFloorTextIndexOffset(s32 mapIndex, s32 floor) {
    return gMapData->floorTexIndexOffset[mapIndex][floor];
}

void Map_Update(PlayState* play) {
    static s16 sLastRoomNum = 99;
    Player* player = GET_PLAYER(play);
    s32 mapIndex = gSaveContext.mapIndex;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    s16 floor;
    s16 i;

    if ((play->pauseCtx.state == 0) && (play->pauseCtx.debugState == 0)) {
        switch (play->sceneId) {
            case SCENE_DEKU_TREE:
            case SCENE_DODONGOS_CAVERN:
            case SCENE_JABU_JABU:
            case SCENE_FOREST_TEMPLE:
            case SCENE_FIRE_TEMPLE:
            case SCENE_WATER_TEMPLE:
            case SCENE_SPIRIT_TEMPLE:
            case SCENE_SHADOW_TEMPLE:
            case SCENE_BOTTOM_OF_THE_WELL:
            case SCENE_ICE_CAVERN:
                interfaceCtx->mapPalette[30] = 0;
                if (CHECK_DUNGEON_ITEM(DUNGEON_MAP, mapIndex)) {
                    interfaceCtx->mapPalette[31] = 1;
                } else {
                    interfaceCtx->mapPalette[31] = 0;
                }

                for (floor = 0; floor < 8; floor++) {
                    if (player->actor.world.pos.y > gMapData->floorCoordY[mapIndex][floor]) {
                        break;
                    }
                }

                gSaveContext.sceneFlags[mapIndex].floors |= gBitFlags[floor];
                VREG(30) = floor;
                if (R_MAP_TEX_INDEX != (R_MAP_TEX_INDEX_BASE + Map_GetFloorTextIndexOffset(mapIndex, floor))) {
                    R_MAP_TEX_INDEX = R_MAP_TEX_INDEX_BASE + Map_GetFloorTextIndexOffset(mapIndex, floor);
                }

                if (interfaceCtx->mapRoomNum != sLastRoomNum) {
                    // "Current floor = %d Current room = %x Number of rooms = %d"
                    osSyncPrintf("現在階＝%d  現在部屋＝%x  部屋数＝%d\n", floor, interfaceCtx->mapRoomNum,
                                 gMapData->switchEntryCount[mapIndex]);
                    sLastRoomNum = interfaceCtx->mapRoomNum;
                }

                for (i = 0; i < gMapData->switchEntryCount[mapIndex]; i++) {
                    if ((interfaceCtx->mapRoomNum == gMapData->switchFromRoom[mapIndex][i]) &&
                        (floor == gMapData->switchFromFloor[mapIndex][i])) {
                        interfaceCtx->mapRoomNum = gMapData->switchToRoom[mapIndex][i];
                        osSyncPrintf(VT_FGCOL(YELLOW));
                        // "Layer switching = %x"
                        osSyncPrintf("階層切替＝%x\n", interfaceCtx->mapRoomNum);
                        osSyncPrintf(VT_RST);
                        Map_InitData(play, interfaceCtx->mapRoomNum);
                        gSaveContext.sunsSongState = SUNSSONG_INACTIVE;
                        Map_SavePlayerInitialInfo(play);
                    }
                }

                VREG(10) = interfaceCtx->mapRoomNum;
                break;
            case SCENE_DEKU_TREE_BOSS:
            case SCENE_DODONGOS_CAVERN_BOSS:
            case SCENE_JABU_JABU_BOSS:
            case SCENE_FOREST_TEMPLE_BOSS:
            case SCENE_FIRE_TEMPLE_BOSS:
            case SCENE_WATER_TEMPLE_BOSS:
            case SCENE_SPIRIT_TEMPLE_BOSS:
            case SCENE_SHADOW_TEMPLE_BOSS:
                VREG(30) = gMapData->bossFloor[play->sceneId - SCENE_DEKU_TREE_BOSS];
                R_MAP_TEX_INDEX = R_MAP_TEX_INDEX_BASE +
                                  gMapData->floorTexIndexOffset[play->sceneId - SCENE_DEKU_TREE_BOSS][VREG(30)];
                break;
        }
    }
}
