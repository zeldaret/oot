#include "global.h"
#include "terminal.h"
#include "assets/textures/parameter_static/parameter_static.h"
#if PLATFORM_N64
#include "n64dd.h"
#endif

typedef struct MapMarkInfo {
    /* 0x00 */ void* texture;
    /* 0x04 */ u32 imageFormat;
    /* 0x08 */ u32 imageSize;
    /* 0x0C */ u32 textureWidth;
    /* 0x10 */ u32 textureHeight;
    /* 0x14 */ u32 rectWidth;
    /* 0x18 */ u32 rectHeight;
    /* 0x1C */ u32 dsdx;
    /* 0x20 */ u32 dtdy;
} MapMarkInfo; // size = 0x24

typedef struct MapMarkDataOverlay {
    /* 0x00 */ void* loadedRamAddr; // original name: "allocp"
    /* 0x04 */ RomFile file;
    /* 0x0C */ void* vramStart;
    /* 0x10 */ void* vramEnd;
    /* 0x14 */ void* vramTable;
} MapMarkDataOverlay; // size = 0x18

#define GDP_LOADTEXTUREBLOCK_RUNTIME_QUALIFIERS
#include "src/code/gDPLoadTextureBlock_Runtime.inc.c"

MapMarkInfo sMapMarkInfoTable[] = {
    { gMapChestIconTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 32, 32, 1 << 10, 1 << 10 }, // Chest Icon
    { gMapBossIconTex, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8, 32, 32, 1 << 10, 1 << 10 },     // Boss Skull Icon
};

static MapMarkDataOverlay sMapMarkDataOvl = {
    NULL, ROM_FILE(ovl_map_mark_data), _ovl_map_mark_dataSegmentStart, _ovl_map_mark_dataSegmentEnd, gMapMarkDataTable,
};

static MapMarkData** sLoadedMarkDataTable;

void MapMark_Init(PlayState* play) {
    MapMarkDataOverlay* overlay = &sMapMarkDataOvl;
    u32 overlaySize = (uintptr_t)overlay->vramEnd - (uintptr_t)overlay->vramStart;

    overlay->loadedRamAddr = GAME_STATE_ALLOC(&play->state, overlaySize, "../z_map_mark.c", 235);
    LOG_UTILS_CHECK_NULL_POINTER("dlftbl->allocp", overlay->loadedRamAddr, "../z_map_mark.c", 236);

    Overlay_Load(overlay->file.vromStart, overlay->file.vromEnd, overlay->vramStart, overlay->vramEnd,
                 overlay->loadedRamAddr);

    sLoadedMarkDataTable = gMapMarkDataTable;
    sLoadedMarkDataTable =
        (void*)(uintptr_t)((overlay->vramTable != NULL)
                               ? (void*)((uintptr_t)overlay->vramTable -
                                         (intptr_t)((uintptr_t)overlay->vramStart - (uintptr_t)overlay->loadedRamAddr))
                               : NULL);

#if PLATFORM_N64
    if ((B_80121220 != NULL) && (B_80121220->unk_2C != NULL)) {
        B_80121220->unk_2C(&sLoadedMarkDataTable);
    }
#endif
}

void MapMark_ClearPointers(PlayState* play) {
#if PLATFORM_N64
    if ((B_80121220 != NULL) && (B_80121220->unk_30 != NULL)) {
        B_80121220->unk_30(&sLoadedMarkDataTable);
    }
#endif

    sMapMarkDataOvl.loadedRamAddr = NULL;
    sLoadedMarkDataTable = NULL;
}

void MapMark_DrawForDungeon(PlayState* play) {
    InterfaceContext* interfaceCtx;
    MapMarkIconData* mapMarkIconData;
    MapMarkPoint* markPoint;
    MapMarkInfo* markInfo;
    u16 dungeon = gSaveContext.mapIndex;
    s32 i;
    s32 rectLeft;
    s32 rectTop;

    interfaceCtx = &play->interfaceCtx;

    if ((gMapData != NULL) && (play->interfaceCtx.mapRoomNum >= gMapData->dgnMinimapCount[dungeon])) {
        PRINTF(VT_COL(RED, WHITE) T("部屋番号がオーバーしてるで,ヤバイで %d/%d  \nMapMarkDraw の処理を中断します\n",
                                    "Room number exceeded, yikes %d/%d  \nMapMarkDraw processing interrupted\n"),
               VT_RST, play->interfaceCtx.mapRoomNum, gMapData->dgnMinimapCount[dungeon]);
        return;
    }

    mapMarkIconData = &sLoadedMarkDataTable[dungeon][interfaceCtx->mapRoomNum][0];

    OPEN_DISPS(play->state.gfxCtx, "../z_map_mark.c", 303);

    while (true) {
        if (mapMarkIconData->markType == MAP_MARK_NONE) {
            break;
        }

        gDPPipeSync(OVERLAY_DISP++);
        gDPSetTextureLUT(OVERLAY_DISP++, G_TT_NONE);
        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->minimapAlpha);
        gDPSetEnvColor(OVERLAY_DISP++, 0, 0, 0, interfaceCtx->minimapAlpha);

        markPoint = &mapMarkIconData->points[0];
        for (i = 0; i < mapMarkIconData->count; i++) {
            if ((mapMarkIconData->markType != MAP_MARK_CHEST) || !Flags_GetTreasure(play, markPoint->chestFlag)) {
                markInfo = &sMapMarkInfoTable[mapMarkIconData->markType];

                gDPPipeSync(OVERLAY_DISP++);
                gDPLoadTextureBlock_Runtime(OVERLAY_DISP++, markInfo->texture, markInfo->imageFormat,
                                            markInfo->imageSize, markInfo->textureWidth, markInfo->textureHeight, 0,
                                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                                            G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                rectLeft = ((DEBUG_FEATURES ? GREG(94) : 0) + markPoint->x + 204) << 2;
                rectTop = ((DEBUG_FEATURES ? GREG(95) : 0) + markPoint->y + 140) << 2;
                gSPTextureRectangle(OVERLAY_DISP++, rectLeft, rectTop, markInfo->rectWidth + rectLeft,
                                    rectTop + markInfo->rectHeight, G_TX_RENDERTILE, 0, 0, markInfo->dsdx,
                                    markInfo->dtdy);
            }
            markPoint++;
        }
        mapMarkIconData++;
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_map_mark.c", 339);
}

void MapMark_Draw(PlayState* play) {
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
            MapMark_DrawForDungeon(play);
            break;
    }
}
