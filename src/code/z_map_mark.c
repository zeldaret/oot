#include <ultra64.h>
#include <global.h>
#include <vt.h>

typedef struct {
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

typedef struct {
    /* 0x00 */ void* loadedRamAddr; // original name: "allocp"
    /* 0x04 */ u32 vromStart;
    /* 0x08 */ u32 vromEnd;
    /* 0x0C */ u32 vramStart;
    /* 0x10 */ u32 vramEnd;
    /* 0x14 */ u32 vramTable;
} MapMarkDataOverlay; // size = 0x18

static u32 sBaseImageSizes[] = { 0, 1, 2, 3 };
static u32 sLoadBlockImageSizes[] = { 2, 2, 2, 3 };
static u32 sIncrImageSizes[] = { 3, 1, 0, 0 };
static u32 sShiftImageSizes[] = { 2, 1, 0, 0 };
static u32 sBytesImageSizes[] = { 0, 1, 2, 4 };
static u32 sLineBytesImageSizes[] = { 0, 1, 2, 2 };

#define G_IM_SIZ_MARK sBaseImageSizes[markInfo->imageSize]
#define G_IM_SIZ_MARK_LOAD_BLOCK sLoadBlockImageSizes[markInfo->imageSize]
#define G_IM_SIZ_MARK_INCR sIncrImageSizes[markInfo->imageSize]
#define G_IM_SIZ_MARK_SHIFT sShiftImageSizes[markInfo->imageSize]
#define G_IM_SIZ_MARK_BYTES sBytesImageSizes[markInfo->imageSize]
#define G_IM_SIZ_MARK_LINE_BYTES sLineBytesImageSizes[markInfo->imageSize]

static MapMarkInfo sMapMarkInfoTable[] = {
    { D_02002580, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 32, 32, 1024, 1024 }, // Chest Icon
    { D_02002900, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8, 32, 32, 1024, 1024 },    // Boss Skull Icon
};

static MapMarkDataOverlay sMapMarkDataOvl = {
    NULL,
    (u32)_ovl_map_mark_dataSegmentRomStart,
    (u32)_ovl_map_mark_dataSegmentRomEnd,
    (u32)_ovl_map_mark_dataSegmentStart,
    (u32)_ovl_map_mark_dataSegmentEnd,
    (u32)gMapMarkDataTable,
};

static MapMarksData** sLoadedMarkDataTable;

extern u8** D_8015FFD0;

void MapMark_Init(GlobalContext* globalCtx) {
    MapMarkDataOverlay* overlay = &sMapMarkDataOvl;
    u32 overlaySize = overlay->vramEnd - overlay->vramStart;

    overlay->loadedRamAddr = Game_Alloc(&globalCtx->state, overlaySize, "../z_map_mark.c", 235);
    LogUtils_CheckNullPointer("dlftbl->allocp", overlay->loadedRamAddr, "../z_map_mark.c", 236);

    Overlay_Load(overlay->vromStart, overlay->vromEnd, overlay->vramStart, overlay->vramEnd, overlay->loadedRamAddr);

    sLoadedMarkDataTable = gMapMarkDataTable;
    sLoadedMarkDataTable =
        (void*)(s32)((overlay->vramTable != 0)
                         ? (void*)(overlay->vramTable - (s32)(overlay->vramStart - (s32)overlay->loadedRamAddr))
                         : NULL);
}

void MapMark_ClearPointers(GlobalContext* globalCtx) {
    sMapMarkDataOvl.loadedRamAddr = NULL;
    sLoadedMarkDataTable = NULL;
}

void MapMark_Draw(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx;
    MapMarkData* mapMarkData;
    MapMarkPoint* markPoint;
    MapMarkInfo* markInfo;
    u16 dungeonId;
    s32 i;
    s32 rectLeft;
    s32 rectTop;
    GraphicsContext* gfxCtx;
    Gfx* dispRefs[4];

    dungeonId = gSaveContext.dungeonIndex;
    interfaceCtx = &globalCtx->interfaceCtx;

    if ((D_8015FFD0 != NULL) && (globalCtx->interfaceCtx.roomNum >= D_8015FFD0[7][dungeonId])) {
        // Translates to: "ROOM NUMBER EXCEEDED, YIKES %d/%d  MapMarkDraw PROCESSING INTERRUPTED"
        osSyncPrintf(VT_COL(RED, WHITE) "部屋番号がオーバーしてるで,ヤバイで %d/%d  \nMapMarkDraw の処理を中断します\n",
                     VT_RST, globalCtx->interfaceCtx.roomNum, D_8015FFD0[7][dungeonId]);
        return;
    }

    mapMarkData = &sLoadedMarkDataTable[dungeonId][interfaceCtx->roomNum][0];

    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_map_mark.c", 303);

    while (1) {
        if (mapMarkData->markType == -1) {
            break;
        }

        gDPPipeSync(gfxCtx->overlay.p++);
        gDPSetTextureLUT(gfxCtx->overlay.p++, G_TT_NONE);
        gDPSetPrimColor(gfxCtx->overlay.p++, 0, 0, 0xFF, 0xFF, 0xFF, interfaceCtx->minimapAlpha);
        gDPSetEnvColor(gfxCtx->overlay.p++, 0x00, 0x00, 0x00, interfaceCtx->minimapAlpha);

        markPoint = &mapMarkData->points[0];
        for (i = 0; i < mapMarkData->count; i++) {
            if ((mapMarkData->markType != 0) || !Flags_GetTreasure(globalCtx, markPoint->chestFlag)) {
                markInfo = &sMapMarkInfoTable[mapMarkData->markType];

                gDPPipeSync(gfxCtx->overlay.p++);
                gDPLoadTextureBlock(gfxCtx->overlay.p++, markInfo->texture, markInfo->imageFormat, G_IM_SIZ_MARK,
                                    markInfo->textureWidth, markInfo->textureHeight, 0, G_TX_NOMIRROR | G_TX_WRAP,
                                    G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                rectLeft = (GREG(94) + markPoint->x + 204) << 2;
                rectTop = (GREG(95) + markPoint->y + 140) << 2;
                gSPTextureRectangle(gfxCtx->overlay.p++, rectLeft, rectTop, markInfo->rectWidth + rectLeft,
                                    rectTop + markInfo->rectHeight, G_TX_RENDERTILE, 0, 0, markInfo->dsdx,
                                    markInfo->dtdy);
            }
            markPoint++;
        }
        mapMarkData++;
    }

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_map_mark.c", 339);
}

void MapMark_DrawConditionally(GlobalContext* globalCtx) {
    switch (globalCtx->sceneNum) {
        case SCENE_YDAN:
        case SCENE_DDAN:
        case SCENE_BDAN:
        case SCENE_BMORI1:
        case SCENE_HIDAN:
        case SCENE_MIZUSIN:
        case SCENE_JYASINZOU:
        case SCENE_HAKADAN:
        case SCENE_HAKADANCH:
        case SCENE_ICE_DOUKUTO:
        case SCENE_YDAN_BOSS:
        case SCENE_DDAN_BOSS:
        case SCENE_BDAN_BOSS:
        case SCENE_MORIBOSSROOM:
        case SCENE_FIRE_BS:
            MapMark_Draw(globalCtx);
    }
}
