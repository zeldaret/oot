#if PLATFORM_N64
#include "n64dd.h"
#endif
#include "z_kaleido_scope.h"
#include "assets/textures/parameter_static/parameter_static.h"

typedef struct PauseMapMarkInfo {
    /* 0x00 */ void* texture;
    /* 0x04 */ u32 imageFormat;
    /* 0x08 */ u32 imageSize;
    /* 0x0C */ u32 textureWidth;
    /* 0x10 */ u32 textureHeight;
    /* 0x14 */ u32 rectWidth;
    /* 0x18 */ u32 rectHeight;
    /* 0x1C */ u32 dsdx;
    /* 0x20 */ u32 dtdy;
} PauseMapMarkInfo; // size = 0x24

#define GDP_LOADTEXTUREBLOCK_RUNTIME_QUALIFIERS const
#include "src/code/gDPLoadTextureBlock_Runtime.inc.c"

static PauseMapMarkInfo sMapMarkInfoTable[] = {
    { gMapChestIconTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 8, 32, 32, 1 << 10, 1 << 10 },
    { gMapBossIconTex, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8, 32, 32, 1 << 10, 1 << 10 },
};

extern PauseMapMarksData gPauseMapMarkDataTable[];

void PauseMapMark_Init(PlayState* play) {
    gBossMarkState = 0;
    gBossMarkScale = 1.0f;
    gLoadedPauseMarkDataTable = gPauseMapMarkDataTable;
#if PLATFORM_N64
    if ((B_80121220 != NULL) && (B_80121220->unk_34 != NULL)) {
        B_80121220->unk_34(&gLoadedPauseMarkDataTable);
    }
#endif
}

void PauseMapMark_Clear(PlayState* play) {
#if PLATFORM_N64
    if ((B_80121220 != NULL) && (B_80121220->unk_38 != NULL)) {
        B_80121220->unk_38(&gLoadedPauseMarkDataTable);
    }
#endif
    gLoadedPauseMarkDataTable = NULL;
}

void PauseMapMark_DrawForDungeon(PlayState* play) {
    PauseMapMarkData* mapMarkData;
    PauseMapMarkPoint* markPoint;
    PauseMapMarkInfo* markInfo;
    f32 scale;
    s32 i = 0;

    mapMarkData = &gLoadedPauseMarkDataTable[R_MAP_TEX_INDEX >> 1][i];

    OPEN_DISPS(play->state.gfxCtx, "../z_lmap_mark.c", 182);

    while (true) {
        if (mapMarkData->markType == PAUSE_MAP_MARK_NONE) {
            break;
        }

        if ((mapMarkData->markType == PAUSE_MAP_MARK_BOSS) && (play->sceneId >= SCENE_DEKU_TREE_BOSS) &&
            (play->sceneId <= SCENE_GANONS_TOWER_COLLAPSE_EXTERIOR)) {
            if (gBossMarkState == 0) {
                Math_ApproachF(&gBossMarkScale, 1.5f, 1.0f, 0.041f);
                if (gBossMarkScale == 1.5f) {
                    gBossMarkState = 1;
                }
            } else {
                Math_ApproachF(&gBossMarkScale, 1.0f, 1.0f, 0.041f);
                if (gBossMarkScale == 1.0f) {
                    gBossMarkState = 0;
                }
            }
            scale = gBossMarkScale;
        } else {
            scale = 1.0f;
        }

        Matrix_Push();

        if ((play->pauseCtx.state == PAUSE_STATE_OPENING_1) || (play->pauseCtx.state >= PAUSE_STATE_CLOSING)) {
            Matrix_Translate(-36.0f, 101.0f, 0.0f, MTXMODE_APPLY);
        } else {
            Matrix_Translate(-36.0f, 21.0f, 0.0f, MTXMODE_APPLY);
        }

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);

        markPoint = &mapMarkData->points[0];
        for (i = 0; i < mapMarkData->count; i++) {
            s32 display;

            if (mapMarkData->markType == PAUSE_MAP_MARK_CHEST) {
                if (Flags_GetTreasure(play, markPoint->chestFlag)) {
                    display = false;
                } else {
                    switch (play->sceneId) {
                        case SCENE_DEKU_TREE_BOSS:
                        case SCENE_DODONGOS_CAVERN_BOSS:
                        case SCENE_JABU_JABU_BOSS:
                        case SCENE_FOREST_TEMPLE_BOSS:
                        case SCENE_FIRE_TEMPLE_BOSS:
                        case SCENE_WATER_TEMPLE_BOSS:
                        case SCENE_SPIRIT_TEMPLE_BOSS:
                        case SCENE_SHADOW_TEMPLE_BOSS:
                            display = false;
                            break;
                        default:
                            display = true;
                            break;
                    }
                }
            } else {
                display = true;
            }

            if (display) {
                markInfo = &sMapMarkInfoTable[mapMarkData->markType];

                gDPPipeSync(POLY_OPA_DISP++);
                gDPLoadTextureBlock_Runtime(POLY_OPA_DISP++, markInfo->texture, markInfo->imageFormat,
                                            markInfo->imageSize, markInfo->textureWidth, markInfo->textureHeight, 0,
                                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                                            G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

                Matrix_Push();

#if DEBUG_FEATURES
                Matrix_Translate(markPoint->x + GREG(92), markPoint->y + GREG(93), 0.0f, MTXMODE_APPLY);
#else
                Matrix_Translate(markPoint->x, markPoint->y, 0.0f, MTXMODE_APPLY);
#endif

                Matrix_Scale(scale, scale, scale, MTXMODE_APPLY);
                MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_lmap_mark.c", 272);
                Matrix_Pop();

                gSPVertex(POLY_OPA_DISP++, mapMarkData->vtx, mapMarkData->vtxCount, 0);
                gSP1Quadrangle(POLY_OPA_DISP++, 1, 3, 2, 0, 0);
            }

            markPoint++;
        }

        mapMarkData++;
        Matrix_Pop();
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_lmap_mark.c", 286);
}

void PauseMapMark_Draw(PlayState* play) {
    PauseMapMark_Init(play);

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
            PauseMapMark_DrawForDungeon(play);
            break;
    }

    PauseMapMark_Clear(play);
}
