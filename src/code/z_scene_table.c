#include "global.h"

#include "scenes/overworld/spot00/spot00_scene.h"
#include "scenes/overworld/spot00/spot00_room_0.h"
#include "scenes/overworld/spot01/spot01_scene.h"
#include "scenes/overworld/spot07/spot07_scene.h"
#include "scenes/overworld/spot12/spot12_scene.h"
#include "scenes/overworld/spot16/spot16_scene.h"
#include "scenes/overworld/spot16/spot16_room_0.h"
#include "scenes/overworld/spot18/spot18_scene.h"
#include "scenes/overworld/spot20/spot20_scene.h"
#include "scenes/overworld/souko/souko_scene.h"

#include "scenes/dungeons/men/men_scene.h"
#include "scenes/dungeons/ddan/ddan_scene.h"
#include "scenes/dungeons/ydan/ydan_scene.h"
#include "scenes/dungeons/Bmori1/Bmori1_scene.h"
#include "scenes/dungeons/MIZUsin/MIZUsin_scene.h"
#include "scenes/dungeons/gerudoway/gerudoway_scene.h"
#include "scenes/dungeons/jyasinzou/jyasinzou_scene.h"
#include "scenes/indoors/miharigoya/miharigoya_scene.h"
#include "scenes/dungeons/ice_doukutu/ice_doukutu_scene.h"

#include "overlays/actors/ovl_Bg_Dodoago/z_bg_dodoago.h"

// Entrance Table definition
#define DEFINE_ENTRANCE(_0, scene, spawn, continueBgm, displayTitleCard, fadeIn, fadeOut) \
    { scene, spawn,                                                                       \
      ((continueBgm & 1) << 15) | ((displayTitleCard & 1) << 14) | ((fadeIn & 0x7F) << 7) | (fadeOut & 0x7F) },

EntranceInfo gEntranceTable[] = {
#include "tables/entrance_table.h"
};

#undef DEFINE_ENTRANCE

// Linker symbol declarations (used in the table below)
#define DEFINE_SCENE(name, title, _2, _3, _4, _5) \
    DECLARE_ROM_SEGMENT(name)                     \
    DECLARE_ROM_SEGMENT(title)

#include "tables/scene_table.h"

#undef DEFINE_SCENE

// Scene Table definition
#define DEFINE_SCENE(name, title, _2, drawConfig, unk_10, unk_12) \
    { ROM_FILE(name), ROM_FILE(title), unk_10, drawConfig, unk_12, 0 },

// Handle `none` as a special case for scenes without a title card
#define _noneSegmentRomStart NULL
#define _noneSegmentRomEnd NULL

SceneTableEntry gSceneTable[] = {
#include "tables/scene_table.h"
};

#undef _noneSegmentRomStart
#undef _noneSegmentRomEnd

#undef DEFINE_SCENE

Gfx sDefaultDisplayList[] = {
    gsSPSegment(0x08, gEmptyDL),
    gsSPSegment(0x09, gEmptyDL),
    gsSPSegment(0x0A, gEmptyDL),
    gsSPSegment(0x0B, gEmptyDL),
    gsSPSegment(0x0C, gEmptyDL),
    gsSPSegment(0x0D, gEmptyDL),
    gsDPPipeSync(),
    gsDPSetPrimColor(0, 0, 128, 128, 128, 128),
    gsDPSetEnvColor(128, 128, 128, 128),
    gsSPEndDisplayList(),
};

void Scene_SetTransitionForNextEntrance(GlobalContext* globalCtx) {
    s16 entranceIndex;

    if (!IS_DAY) {
        if (!LINK_IS_ADULT) {
            entranceIndex = globalCtx->nextEntranceIndex + 1;
        } else {
            entranceIndex = globalCtx->nextEntranceIndex + 3;
        }
    } else {
        if (!LINK_IS_ADULT) {
            entranceIndex = globalCtx->nextEntranceIndex;
        } else {
            entranceIndex = globalCtx->nextEntranceIndex + 2;
        }
    }

    globalCtx->transitionType = gEntranceTable[entranceIndex].field & 0x7F; // Fade out
}

void Scene_DrawConfigNone(GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 4725);

    gSPDisplayList(POLY_OPA_DISP++, sDefaultDisplayList);
    gSPDisplayList(POLY_XLU_DISP++, sDefaultDisplayList);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 4735);
}

void* D_8012A2F8[] = {
    gYdanTex_00BA18,
    gYdanTex_00CA18,
};

void Scene_DrawConfigYdan(GlobalContext* globalCtx) {
    u32 gameplayFrames = globalCtx->gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 4763);

    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - (gameplayFrames % 128), (gameplayFrames * 1) % 128,
                                32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128, 32, 32));

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_8012A2F8[((void)0, gSaveContext.nightFlag)]));

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 4783);
}

void Scene_DrawConfigYdanBoss(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 4845);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (gameplayFrames * 2) % 256, 0, 64, 32, 1, 0,
                                (gameplayFrames * 2) % 128, 64, 32));

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 4859);
}

void* gDCEntranceTextures[] = {
    gDCDayEntranceTex,
    gDCNightEntranceTex,
};
void* sDCLavaFloorTextures[] = {
    gDCLavaFloor1Tex, gDCLavaFloor2Tex, gDCLavaFloor3Tex, gDCLavaFloor4Tex,
    gDCLavaFloor5Tex, gDCLavaFloor6Tex, gDCLavaFloor7Tex, gDCLavaFloor8Tex,
};

void Scene_DrawConfigDdan(GlobalContext* globalCtx) {
    u32 gameplayFrames;
    s32 pad;
    Gfx* displayListHead = Graph_Alloc(globalCtx->state.gfxCtx, 2 * sizeof(Gfx[3]));

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 4905);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(gDCEntranceTextures[((void)0, gSaveContext.nightFlag)]));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sDCLavaFloorTextures[(s32)(gameplayFrames & 14) >> 1]));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (gameplayFrames * 1) % 256, 0, 64, 32, 1, 0,
                                (gameplayFrames * 1) % 128, 64, 32));
    gSPSegment(POLY_OPA_DISP++, 0x0A,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (gameplayFrames * 1) % 128, 32, 32, 1, 0,
                                (gameplayFrames * 2) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    gSPSegment(POLY_OPA_DISP++, 0x0B, displayListHead);
    gDPPipeSync(displayListHead++);
    gDPSetEnvColor(displayListHead++, 255, 255, 255, globalCtx->roomCtx.unk_74[BGDODOAGO_EYE_LEFT]);
    gSPEndDisplayList(displayListHead++);

    gSPSegment(POLY_OPA_DISP++, 0x0C, displayListHead);
    gDPPipeSync(displayListHead++);
    gDPSetEnvColor(displayListHead++, 255, 255, 255, globalCtx->roomCtx.unk_74[BGDODOAGO_EYE_RIGHT]);
    gSPEndDisplayList(displayListHead);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 4956);
}

void Scene_DrawConfigTokinoma(GlobalContext* globalCtx) {
    f32 temp;
    Gfx* displayListHead = Graph_Alloc(globalCtx->state.gfxCtx, 18 * sizeof(Gfx));

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5069);

    temp = globalCtx->roomCtx.unk_74[0] / 255.0f;

    gSPSegment(POLY_XLU_DISP++, 0x08, displayListHead);
    gSPSegment(POLY_OPA_DISP++, 0x08, displayListHead);
    gDPSetPrimColor(displayListHead++, 0, 0, 255 - (u8)(185.0f * temp), 255 - (u8)(145.0f * temp),
                    255 - (u8)(105.0f * temp), 255);
    gSPEndDisplayList(displayListHead++);

    gSPSegment(POLY_XLU_DISP++, 0x09, displayListHead);
    gSPSegment(POLY_OPA_DISP++, 0x09, displayListHead);
    gDPSetPrimColor(displayListHead++, 0, 0, 76 + (u8)(6.0f * temp), 76 + (u8)(34.0f * temp), 76 + (u8)(74.0f * temp),
                    255);
    gSPEndDisplayList(displayListHead++);

    gSPSegment(POLY_OPA_DISP++, 0x0A, displayListHead);
    gSPSegment(POLY_XLU_DISP++, 0x0A, displayListHead);
    gDPPipeSync(displayListHead++);
    gDPSetEnvColor(displayListHead++, 0, 0, 0, globalCtx->roomCtx.unk_74[0]);
    gSPEndDisplayList(displayListHead++);

    gSPSegment(POLY_OPA_DISP++, 0x0B, displayListHead);
    gSPSegment(POLY_XLU_DISP++, 0x0B, displayListHead);
    gDPSetPrimColor(displayListHead++, 0, 0, 89 + (u8)(166.0f * temp), 89 + (u8)(166.0f * temp),
                    89 + (u8)(166.0f * temp), 255);
    gDPPipeSync(displayListHead++);
    gDPSetEnvColor(displayListHead++, 0, 0, 0, globalCtx->roomCtx.unk_74[0]);
    gSPEndDisplayList(displayListHead++);

    gSPSegment(POLY_OPA_DISP++, 0x0C, displayListHead);
    gSPSegment(POLY_XLU_DISP++, 0x0C, displayListHead);
    gDPSetPrimColor(displayListHead++, 0, 0, 255 + (u8)(179.0f * temp), 255 + (u8)(179.0f * temp),
                    255 + (u8)(179.0f * temp), 255);
    gDPPipeSync(displayListHead++);
    gDPSetEnvColor(displayListHead++, 0, 0, 0, globalCtx->roomCtx.unk_74[0]);
    gSPEndDisplayList(displayListHead++);

    gSPSegment(POLY_OPA_DISP++, 0x0D, displayListHead);
    gSPSegment(POLY_XLU_DISP++, 0x0D, displayListHead);
    gDPPipeSync(displayListHead++);
    gDPSetEnvColor(displayListHead++, 0, 0, 0, globalCtx->roomCtx.unk_74[1]);
    gSPEndDisplayList(displayListHead);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5145);

    if (gSaveContext.sceneSetupIndex == 5) {
        gCustomLensFlareOn = true;
        gCustomLensFlarePos.x = -20.0f;
        gCustomLensFlarePos.y = 1220.0f;
        gCustomLensFlarePos.z = -684.0f;
        gLensFlareScale = 10;
        gLensFlareColorIntensity = 8.0f;
        gLensFlareScreenFillAlpha = 200;
    }
}

void Scene_DrawConfigKakusiana(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5171);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08, Gfx_TexScroll(globalCtx->state.gfxCtx, 0, (gameplayFrames * 1) % 64, 256, 16));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - (gameplayFrames % 128), (gameplayFrames * 1) % 128,
                                32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128, 32, 32));
    gSPSegment(
        POLY_OPA_DISP++, 0x0A,
        Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 32, 1, 0, 127 - (gameplayFrames * 1) % 128, 32, 32));
    gSPSegment(POLY_OPA_DISP++, 0x0B, Gfx_TexScroll(globalCtx->state.gfxCtx, 0, (gameplayFrames * 1) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x0C,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (gameplayFrames * 50) % 2048, 8, 512, 1, 0,
                                (gameplayFrames * 60) % 2048, 8, 512));
    gSPSegment(POLY_OPA_DISP++, 0x0D,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 64, 1, 0, (gameplayFrames * 1) % 128, 32, 32));

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5212);
}

void Scene_DrawConfigKenjyanoma(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5226);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08, Gfx_TexScroll(globalCtx->state.gfxCtx, 0, (gameplayFrames * 2) % 256, 64, 64));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gSPSegment(POLY_OPA_DISP++, 0x0A,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 1) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - (gameplayFrames * 1) % 128,
                                (gameplayFrames * 1) % 256, 32, 64, 1, 0, 0, 32, 128));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5264);
}

void Scene_DrawConfigGreatFairyFountain(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5278);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 3) % 256, 32,
                                64, 1, gameplayFrames % 128, (gameplayFrames * 3) % 256, 32, 64));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 3) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 3) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5301);
}

void Scene_DrawConfigGraveExitLightShining(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5317);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08, Gfx_TexScroll(globalCtx->state.gfxCtx, 0, gameplayFrames % 64, 256, 16));

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5330);
}

void Scene_DrawConfigFairyFountain(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5346);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 3) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 3) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09, Gfx_TexScroll(globalCtx->state.gfxCtx, 0, gameplayFrames % 64, 256, 16));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5367);
}

void Scene_DrawConfigHakadan(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5384);

    gameplayFrames = globalCtx->gameplayFrames;

    if (globalCtx->sceneNum == SCENE_HAKADAN_BS) {
        gSPSegment(POLY_OPA_DISP++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (gameplayFrames * 2) % 128, 0, 32, 32, 1,
                                    (gameplayFrames * 2) % 128, 0, 32, 32));
    } else {
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (gameplayFrames * 2) % 128, 0, 32, 32, 1,
                                    (gameplayFrames * 2) % 128, 0, 32, 32));
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5416);
}

void* sThievesHideoutEntranceTextures[] = {
    gThievesHideoutDayEntranceTex,
    gThievesHideoutNightEntranceTex,
};

void Scene_DrawConfigGerudoway(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5490);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x09, Gfx_TexScroll(globalCtx->state.gfxCtx, 0, (gameplayFrames * 3) % 128, 32, 32));

    gSPSegment(POLY_XLU_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sThievesHideoutEntranceTextures[((void)0, gSaveContext.nightFlag)]));

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5507);
}

void* D_8012A330[] = {
    gWaterTempleDayEntranceTex,
    gWaterTempleNightEntranceTex,
};

void Scene_DrawConfigMizusin(GlobalContext* globalCtx) {
    u32 gameplayFrames;
    s32 spB0;
    s32 spAC;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5535);

    if (1) {} // Necessary to match

    spB0 = (globalCtx->roomCtx.unk_74[1] >> 8) & 0xFF;
    spAC = globalCtx->roomCtx.unk_74[1] & 0xFF;
    gameplayFrames = globalCtx->gameplayFrames;

    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_8012A330[((void)0, gSaveContext.nightFlag)]));

    if (spB0 == 1) {
        gSPSegment(POLY_OPA_DISP++, 0x08,
                   Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, gameplayFrames * 1, 0, 32, 32, 1, 0, 0, 32, 32,
                                            0, 0, 0, spAC));
    } else if (spB0 < 1) {
        gSPSegment(POLY_OPA_DISP++, 0x08,
                   Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, gameplayFrames * 1, 0, 32, 32, 1, 0, 0, 32, 32,
                                            0, 0, 0, 255));
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x08,
                   Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, gameplayFrames * 1, 0, 32, 32, 1, 0, 0, 32, 32,
                                            0, 0, 0, 160));
    }

    if (spB0 == 2) {
        gSPSegment(POLY_OPA_DISP++, 0x09,
                   Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, gameplayFrames * 1, 0, 32, 32, 1, 0, 0, 32, 32,
                                            0, 0, 0, spAC));
    } else if (spB0 < 2) {
        gSPSegment(POLY_OPA_DISP++, 0x09,
                   Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, gameplayFrames * 1, 0, 32, 32, 1, 0, 0, 32, 32,
                                            0, 0, 0, 255));
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x09,
                   Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, gameplayFrames * 1, 0, 32, 32, 1, 0, 0, 32, 32,
                                            0, 0, 0, 160));
    }

    if (spB0 != 0) {
        gSPSegment(POLY_OPA_DISP++, 0x0A,
                   Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, gameplayFrames * 1, 0, 32, 32, 1, 0, 0, 32, 32,
                                            0, 0, 0, 160));
        gSPSegment(POLY_OPA_DISP++, 0x0B,
                   Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, gameplayFrames * 3, 0, 32, 32, 1, 0, 0, 32, 32,
                                            0, 0, 0, 180));
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x0A,
                   Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, (gameplayFrames * 1) % 128, 0, 32, 32, 1, 0, 0,
                                            32, 32, 0, 0, 0, 160 + (s32)((spAC / 200.0f) * 95.0f)));
        gSPSegment(POLY_OPA_DISP++, 0x0B,
                   Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, gameplayFrames * 3, 0, 32, 32, 1, 0, 0, 32, 32,
                                            0, 0, 0, 185 + (s32)((spAC / 200.0f) * 70.0f)));
    }

    gSPSegment(POLY_XLU_DISP++, 0x0C,
               Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, gameplayFrames * 1, gameplayFrames * 1, 32, 32, 1,
                                        0, 127 - (gameplayFrames * 1), 32, 32, 0, 0, 0, 128));
    gSPSegment(POLY_XLU_DISP++, 0x0D,
               Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, gameplayFrames * 4, 0, 32, 32, 1,
                                        gameplayFrames * 4, 0, 32, 32, 0, 0, 0, 128));

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5644);
}

void Scene_DrawConfigMizusinBs(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5791);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, gameplayFrames * 1, 0, 32, 32, 1, 0, 0, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, globalCtx->roomCtx.unk_74[0]);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 145);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5808);
}

void Scene_DrawConfigSyatekijyou(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5822);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08, Gfx_TexScroll(globalCtx->state.gfxCtx, 0, gameplayFrames % 64, 4, 16));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5836);
}

void Scene_DrawConfigHairalNiwa(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5850);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 3) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 3) % 128, 32, 32));

    if (globalCtx->sceneNum == SCENE_HAIRAL_NIWA) {
        gSPSegment(POLY_XLU_DISP++, 0x09,
                   Gfx_TexScroll(globalCtx->state.gfxCtx, 0, (gameplayFrames * 10) % 256, 32, 64));
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5876);
}

void Scene_DrawConfigGanonCastleExterior(GlobalContext* globalCtx) {
    u32 gameplayFrames;
    s8 sp83;

    if (1) {} // Necessary to match

    sp83 = coss(globalCtx->gameplayFrames * 1500) >> 8;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5894);

    gameplayFrames = globalCtx->gameplayFrames;

    if (globalCtx->sceneNum == SCENE_GANON_TOU) {
        gSPSegment(POLY_XLU_DISP++, 0x09,
                   Gfx_TexScroll(globalCtx->state.gfxCtx, 0, (gameplayFrames * 1) % 256, 64, 64));
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 255 - (gameplayFrames * 1) % 256, 64, 64, 1, 0,
                                    (gameplayFrames * 1) % 256, 64, 64));
    }

    gSPSegment(POLY_OPA_DISP++, 0x0B,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 255 - (gameplayFrames * 1) % 128,
                                (gameplayFrames * 1) % 128, 32, 32, 1, (gameplayFrames * 1) % 128,
                                (gameplayFrames * 1) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    sp83 = (sp83 >> 1) + 192;
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, sp83, sp83, sp83, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5930);
}

// Screen Shake for Ganon's Tower Collapse
void func_8009BEEC(GlobalContext* globalCtx) {
    s32 var;

    if (globalCtx->gameplayFrames % 128 == 13) {
        var = Quake_Add(GET_ACTIVE_CAM(globalCtx), 2);
        Quake_SetSpeed(var, 10000);
        Quake_SetQuakeValues(var, 4, 0, 0, 0);
        Quake_SetCountdown(var, 127);
    }

    if ((globalCtx->gameplayFrames % 64 == 0) && (Rand_ZeroOne() > 0.6f)) {
        var = Quake_Add(GET_ACTIVE_CAM(globalCtx), 3);
        Quake_SetSpeed(var, 32000.0f + (Rand_ZeroOne() * 3000.0f));
        Quake_SetQuakeValues(var, 10.0f - (Rand_ZeroOne() * 9.0f), 0, 0, 0);
        Quake_SetCountdown(var, 48.0f - (Rand_ZeroOne() * 15.0f));
    }
}

void Scene_DrawConfigGanonFinal(GlobalContext* globalCtx) {
    u32 gameplayFrames;
    s8 sp7B;

    if (1) {} // Necessary to match

    sp7B = coss((globalCtx->gameplayFrames * 1500) & 0xFFFF) >> 8;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 5968);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (gameplayFrames * 1) % 512, 64, 128, 1, 0,
                                511 - (gameplayFrames * 1) % 512, 64, 128));
    gSPSegment(POLY_OPA_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (gameplayFrames * 1) % 256, 32, 64, 1, 0,
                                255 - (gameplayFrames * 1) % 256, 32, 64));
    gSPSegment(POLY_XLU_DISP++, 0x0A,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (gameplayFrames * 20) % 2048, 16, 512, 1, 0,
                                (gameplayFrames * 30) % 2048, 16, 512));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    sp7B = (sp7B >> 1) + 192;
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, sp7B, sp7B, sp7B, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6004);

    if (Flags_GetSwitch(globalCtx, 0x37)) {
        if ((globalCtx->sceneNum == SCENE_GANON_DEMO) || (globalCtx->sceneNum == SCENE_GANON_FINAL) ||
            (globalCtx->sceneNum == SCENE_GANON_SONOGO) || (globalCtx->sceneNum == SCENE_GANONTIKA_SONOGO)) {
            func_8009BEEC(globalCtx);
        }
    }
}

void* sIceCavernEntranceTextures[] = {
    gIceCavernDayEntranceTex,
    gIceCavernNightEntranceTex,
};

void Scene_DrawConfigIceDoukuto(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    if (0) {} // Necessary to match

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6042);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sIceCavernEntranceTextures[((void)0, gSaveContext.nightFlag)]));
    gSPSegment(POLY_OPA_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 1) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x0A,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 1) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6076);
}

void Scene_DrawConfigHakaanaOuke(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6151);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08, Gfx_TexScroll(globalCtx->state.gfxCtx, 0, (gameplayFrames * 1) % 64, 256, 16));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (gameplayFrames * 60) % 2048, 8, 512, 1, 0,
                                (gameplayFrames * 50) % 2048, 8, 512));
    gSPSegment(POLY_OPA_DISP++, 0x0A,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - (gameplayFrames * 1) % 128, 0, 32, 32, 1,
                                (gameplayFrames * 1) % 128, 0, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x0B,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 1023 - (gameplayFrames * 6) % 1024, 16, 256, 1, 0,
                                1023 - (gameplayFrames * 3) % 1024, 16, 256));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6187);
}

void Scene_DrawConfigHyliaLabo(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6201);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 32, 1, 0, (gameplayFrames * 1) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x0A,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 1) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TexScroll(globalCtx->state.gfxCtx, 0, 255 - (gameplayFrames * 10) % 256, 32, 64));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6232);
}

void Scene_DrawConfig47(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6249);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 1) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6264);
}

void* sGTGEntranceTextures[] = {
    gGTGDayEntranceTex,
    gGTGNightEntranceTex,
};

void Scene_DrawConfigMen(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    if (0) {} // Necessary to match

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6290);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sGTGEntranceTextures[((void)0, gSaveContext.nightFlag)]));
    gSPSegment(POLY_OPA_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 1) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x0A,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 1) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6320);
}

Gfx* Gfx_TwoTexScrollPrimColor(GraphicsContext* gfxCtx, s32 tile1, u32 x1, u32 y1, s32 width1, s32 height1, s32 tile2,
                               u32 x2, u32 y2, s32 width2, s32 height2, s32 r, s32 g, s32 b, s32 a) {
    Gfx* displayList = Graph_Alloc(gfxCtx, 10 * sizeof(Gfx));

    x1 %= 2048;
    y1 %= 2048;
    x2 %= 2048;
    y2 %= 2048;

    gDPTileSync(displayList);
    gDPSetTileSize(displayList + 1, tile1, x1, y1, (x1 + ((width1 - 1) << 2)), (y1 + ((height1 - 1) << 2)));
    gDPTileSync(displayList + 2);
    gDPSetTileSize(displayList + 3, tile2, x2, y2, (x2 + ((width2 - 1) << 2)), (y2 + ((height2 - 1) << 2)));
    gDPSetPrimColor(displayList + 4, 0, 0, r, g, b, a);
    gSPEndDisplayList(displayList + 5);

    return displayList;
}

void Scene_DrawConfigTuribori(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6433);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScrollPrimColor(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128,
                                         (gameplayFrames * 1) % 128, 32, 32, 1, gameplayFrames % 128,
                                         (gameplayFrames * 1) % 128, 32, 32, 255, 255, 255,
                                         globalCtx->roomCtx.unk_74[0] + 127));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6449);
}

void Scene_DrawConfigBowling(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6463);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TexScroll(globalCtx->state.gfxCtx, 127 - (gameplayFrames * 4) % 128, 0, 32, 32));
    gSPSegment(POLY_OPA_DISP++, 0x09, Gfx_TexScroll(globalCtx->state.gfxCtx, 0, (gameplayFrames * 5) % 64, 16, 16));
    gSPSegment(POLY_OPA_DISP++, 0x0A,
               Gfx_TexScroll(globalCtx->state.gfxCtx, 0, 63 - (gameplayFrames * 2) % 64, 16, 16));
    gSPSegment(
        POLY_XLU_DISP++, 0x0B,
        Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 127 - (gameplayFrames * 3) % 128, 32, 32, 1, 0, 0, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6491);
}

void* sLonLonHouseEntranceTextures[] = {
    gLonLonHouseDayEntranceTex,
    gLonLonHouseNightEntranceTex,
};

void Scene_DrawConfigSouko(GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6515);

    gSPSegment(POLY_XLU_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sLonLonHouseEntranceTextures[((void)0, gSaveContext.nightFlag)]));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6528);
}

void* sGuardHouseView2Textures[] = {
    gGuardHouseOutSideView1DayTex,
    gGuardHouseOutSideView1NightTex,
};
void* sGuardHouseView1Textures[] = {
    gGuardHouseOutSideView2DayTex,
    gGuardHouseOutSideView2NightTex,
};

void Scene_DrawConfigMiharigoya(GlobalContext* globalCtx) {
    s32 var;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6560);

    if (LINK_IS_ADULT) {
        var = 1;
    } else {
        var = gSaveContext.nightFlag;
    }

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sGuardHouseView1Textures[var]));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sGuardHouseView2Textures[var]));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6581);
}

void Scene_DrawConfigMahouya(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6595);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08, Gfx_TexScroll(globalCtx->state.gfxCtx, 0, (gameplayFrames * 3) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 1023 - (gameplayFrames * 3) % 1024, 16, 256, 1, 0,
                                1023 - (gameplayFrames * 6) % 1024, 16, 256));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6615);
}

void* sForestTempleEntranceTextures[] = {
    gForestTempleDayEntranceTex,
    gForestTempleNightEntranceTex,
};

void Scene_DrawConfigBmori1(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    if (0) {} // Necessary to match

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6640);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sForestTempleEntranceTextures[((void)0, gSaveContext.nightFlag)]));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 1) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128, 32, 32));
    gSPSegment(POLY_OPA_DISP++, 0x0A,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 1) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6671);
}

void* sSpiritTempleEntranceTextures[] = {
    gSpiritTempleDayEntranceTex,
    gSpiritTempleNightEntranceTex,
};

void Scene_DrawConfigJyasinzou(GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6752);

    gSPSegment(POLY_XLU_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sSpiritTempleEntranceTextures[((void)0, gSaveContext.nightFlag)]));

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6762);
}

void Scene_DrawConfigSpot00(GlobalContext* globalCtx) {
    u32 gameplayFrames;
    Gfx* displayListHead;

    displayListHead = Graph_Alloc(globalCtx->state.gfxCtx, 3 * sizeof(Gfx));

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6814);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 3) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 3) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 10) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 10) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    gSPSegment(POLY_XLU_DISP++, 0x0A, displayListHead);

    if ((gSaveContext.dayTime >= 0x4AAC) && (gSaveContext.dayTime <= 0xC555)) {
        gSPEndDisplayList(displayListHead);
    } else {
        if (gSaveContext.dayTime > 0xC555) {
            if (globalCtx->roomCtx.unk_74[0] != 255) {
                Math_StepToS(&globalCtx->roomCtx.unk_74[0], 255, 5);
            }
        } else if (gSaveContext.dayTime >= 0x4000) {
            if (globalCtx->roomCtx.unk_74[0] != 0) {
                Math_StepToS(&globalCtx->roomCtx.unk_74[0], 0, 10);
            }
        }

        gDPSetPrimColor(displayListHead++, 0, 0, 255, 255, 255, globalCtx->roomCtx.unk_74[0]);
        gSPDisplayList(displayListHead++, spot00_room_0DL_012B20);
        gSPEndDisplayList(displayListHead);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6866);
}

void* sKakarikoWindowTextures[] = {
    gKakarikoVillageDayWindowTex,
    gKakarikoVillageNightWindowTex,
};

void Scene_DrawConfigSpot01(GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6890);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sKakarikoWindowTextures[((void)0, gSaveContext.nightFlag)]));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6903);
}

void Scene_DrawConfigSpot03(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6917);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 6) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 6) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 3) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 3) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x0A,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 1) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6948);
}

void Scene_DrawConfigSpot04(GlobalContext* globalCtx) {
    u32 gameplayFrames;
    u8 spA3;
    u16 spA0;
    Gfx* displayListHead;

    spA3 = 128;
    spA0 = 500;
    displayListHead = Graph_Alloc(globalCtx->state.gfxCtx, 6 * sizeof(Gfx));

    if (1) {}
    if (1) {}

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 6965);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 1) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 10) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 10) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    if (gSaveContext.sceneSetupIndex == 4) {
        spA3 = 255 - (u8)globalCtx->roomCtx.unk_74[0];
    } else if (gSaveContext.sceneSetupIndex == 6) {
        spA0 = globalCtx->roomCtx.unk_74[0] + 500;
    } else if (((gSaveContext.sceneSetupIndex < 4) || LINK_IS_ADULT) && GET_EVENTCHKINF(EVENTCHKINF_07)) {
        spA0 = 2150;
    }

    gSPSegment(POLY_OPA_DISP++, 0x0A, displayListHead);
    gDPPipeSync(displayListHead++);
    gDPSetEnvColor(displayListHead++, 128, 128, 128, spA3);
    gSPEndDisplayList(displayListHead++);

    gSPSegment(POLY_XLU_DISP++, 0x0B, displayListHead);
    gSPSegment(POLY_OPA_DISP++, 0x0B, displayListHead);
    gDPPipeSync(displayListHead++);
    gDPSetEnvColor(displayListHead++, 128, 128, 128, spA0 * 0.1f);
    gSPEndDisplayList(displayListHead);

    gSPSegment(POLY_OPA_DISP++, 0x0C,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (s16)(-globalCtx->roomCtx.unk_74[0] * 0.02f), 32, 16, 1,
                                0, (s16)(-globalCtx->roomCtx.unk_74[0] * 0.02f), 32, 16));

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7044);
}

void Scene_DrawConfigSpot06(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7058);

    if ((gSaveContext.sceneSetupIndex > 3) || (LINK_IS_ADULT && !GET_EVENTCHKINF(EVENTCHKINF_69))) {
        globalCtx->roomCtx.unk_74[0] = 87;
    }

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, gameplayFrames, gameplayFrames, 32, 32, 1, 0, 0, 32,
                                        32, 0, 0, 0, globalCtx->roomCtx.unk_74[0] + 168));
    gSPSegment(POLY_OPA_DISP++, 0x09,
               Gfx_TwoTexScrollEnvColor(globalCtx->state.gfxCtx, 0, -gameplayFrames, -gameplayFrames, 32, 32, 1, 0, 0,
                                        16, 64, 0, 0, 0, globalCtx->roomCtx.unk_74[0] + 168));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7097);
}

void* sZorasDomainEntranceTextures[] = {
    gZorasDomainDayEntranceTex,
    gZorasDomainNightEntranceTex,
};

void Scene_DrawConfigSpot07(GlobalContext* globalCtx) {
    u32 gameplayFrames;
    u32 var;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7123);

    gameplayFrames = globalCtx->gameplayFrames;
    var = 127 - (gameplayFrames * 1) % 128;
    if (LINK_IS_ADULT) {
        var = 0;
    }
    gSPSegment(POLY_OPA_DISP++, 0x0C, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 64, 32, 1, 0, var, 64, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gSPSegment(POLY_XLU_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sZorasDomainEntranceTextures[((void)0, gSaveContext.nightFlag)]));

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7147);
}

void Scene_DrawConfigSpot08(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7161);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (gameplayFrames * 1) % 128, 0, 32, 32, 1, 0, 0, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 255 - (gameplayFrames * 2) % 256, 64, 64, 1, 0,
                                255 - (gameplayFrames * 2) % 256, 64, 64));
    gSPSegment(POLY_XLU_DISP++, 0x0A,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (gameplayFrames * 1) % 128, 32, 32, 1, 0,
                                (gameplayFrames * 1) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7192);
}

void Scene_DrawConfigSpot09(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7206);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (gameplayFrames * 3) % 1024, 32, 256, 1, 0,
                                (gameplayFrames * 3) % 1024, 32, 256));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (gameplayFrames * 1) % 256, 64, 64, 1, 0,
                                (gameplayFrames * 1) % 256, 64, 64));
    gSPSegment(POLY_XLU_DISP++, 0x0A,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (gameplayFrames * 2) % 128, 32, 32, 1, 0,
                                (gameplayFrames * 2) % 128, 32, 32));
    gSPSegment(
        POLY_OPA_DISP++, 0x0B,
        Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 32, 1, 0, 127 - (gameplayFrames * 3) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x0C,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (gameplayFrames * 1) % 128, 32, 32, 1, 0,
                                (gameplayFrames * 1) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x0D,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, (gameplayFrames * 1) % 64, 16, 16, 1, 0,
                                (gameplayFrames * 1) % 64, 16, 16));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7260);
}

void Scene_DrawConfigSpot10(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    if (0) {} // Necessary to match

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7274);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, gameplayFrames % 128, 0, 32, 16, 1, gameplayFrames % 128, 0,
                                32, 16));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, gameplayFrames % 128, 32, 32, 1,
                                gameplayFrames % 128, gameplayFrames % 128, 32, 32));

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    if ((globalCtx->roomCtx.unk_74[0] == 0) && (INV_CONTENT(ITEM_COJIRO) == ITEM_COJIRO)) {
        if (globalCtx->roomCtx.unk_74[1] == 50) {
            func_8002F7DC(&GET_PLAYER(globalCtx)->actor, NA_SE_EV_CHICKEN_CRY_M);
            globalCtx->roomCtx.unk_74[0] = 1;
        }
        globalCtx->roomCtx.unk_74[1]++;
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7309);
}

void Scene_DrawConfigSpot11(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7323);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 32, 1, 0, 127 - gameplayFrames % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7339);
}

void* D_8012A380[] = {
    gSpot12_009678Tex,
    gSpot12_00DE78Tex,
};

void Scene_DrawConfigSpot12(GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7363);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_8012A380[((void)0, gSaveContext.nightFlag)]));

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7371);
}

void Scene_DrawConfigSpot13(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7385);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, gameplayFrames % 128, 32, 32, 1, 0, gameplayFrames % 128,
                                32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, gameplayFrames % 128, 32, 32, 1, 0, gameplayFrames % 128,
                                32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7409);
}

void Scene_DrawConfigSpot15(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7423);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 10) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 10) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 3) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 3) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7443);
}

void Scene_DrawConfigSpot16(GlobalContext* globalCtx) {
    Gfx* displayListHead = Graph_Alloc(globalCtx->state.gfxCtx, 3 * sizeof(Gfx));

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7461);

    gSPSegment(POLY_XLU_DISP++, 0x08, displayListHead);

    if ((gSaveContext.dayTime >= 0x4AAC) && (gSaveContext.dayTime <= 0xC000)) {
        gSPEndDisplayList(displayListHead);
    } else {
        if (gSaveContext.dayTime > 0xC000) {
            if (globalCtx->roomCtx.unk_74[0] != 255) {
                Math_StepToS(&globalCtx->roomCtx.unk_74[0], 255, 5);
            }
        } else if (gSaveContext.dayTime >= 0x4000) {
            if (globalCtx->roomCtx.unk_74[0] != 0) {
                Math_StepToS(&globalCtx->roomCtx.unk_74[0], 0, 10);
            }
        }

        gDPSetPrimColor(displayListHead++, 0, 0, 255, 255, 255, globalCtx->roomCtx.unk_74[0]);
        gSPDisplayList(displayListHead++, spot16_room_0DL_00AA48);
        gSPEndDisplayList(displayListHead);
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7495);
}

void Scene_DrawConfigSpot17(GlobalContext* globalCtx) {
    s8 sp6F = coss((globalCtx->gameplayFrames * 1500) & 0xFFFF) >> 8;
    s8 sp6E = coss((globalCtx->gameplayFrames * 1500) & 0xFFFF) >> 8;
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7512);

    gameplayFrames = globalCtx->gameplayFrames;
    sp6F = (sp6F >> 1) + 192;
    sp6E = (sp6E >> 1) + 192;

    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, gameplayFrames % 128, 32, 32, 1, 0, gameplayFrames % 128,
                                32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, sp6F, sp6E, 255, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7530);
}

void* sGoronCityEntranceTextures[] = {
    gGoronCityDayEntranceTex,
    gGoronCityNightEntranceTex,
};

void Scene_DrawConfigSpot18(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7555);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 127 - gameplayFrames % 128, 32, 32, 1,
                                gameplayFrames % 128, 0, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    gSPSegment(POLY_XLU_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sGoronCityEntranceTextures[((void)0, gSaveContext.nightFlag)]));

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7578);
}

void* sLonLonRanchWindowTextures[] = {
    gLonLonRanchDayWindowTex,
    gLonLonRangeNightWindowsTex,
};

void Scene_DrawConfigSpot20(GlobalContext* globalCtx) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7602);

    gSPSegment(POLY_OPA_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sLonLonRanchWindowTextures[((void)0, gSaveContext.nightFlag)]));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7615);
}

void Scene_DrawConfigHidan(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7630);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 127 - gameplayFrames % 128, 32, 32, 1,
                                127 - gameplayFrames % 128, 0, 32, 32));
    gSPSegment(POLY_OPA_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (gameplayFrames * 3) % 128,
                                127 - (gameplayFrames * 6) % 128, 32, 32, 1, (gameplayFrames * 6) % 128,
                                127 - (gameplayFrames * 3) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 64);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 64);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7653);
}

f32 D_8012A398 = 0.0f;

void Scene_DrawConfigBdan(GlobalContext* globalCtx) {
    static s16 D_8012A39C = 538;
    static s16 D_8012A3A0 = 4272;
    u32 gameplayFrames;
    f32 temp;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7712);

    gameplayFrames = globalCtx->gameplayFrames;
    if (globalCtx->sceneNum == SCENE_BDAN) {
        gSPSegment(POLY_OPA_DISP++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, gameplayFrames % 128, (gameplayFrames * 2) % 128, 32,
                                    32, 1, 127 - gameplayFrames % 128, (gameplayFrames * 2) % 128, 32, 32));
        gSPSegment(POLY_OPA_DISP++, 0x0B,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 255 - (gameplayFrames * 4) % 256, 32, 64, 1, 0,
                                    255 - (gameplayFrames * 4) % 256, 32, 64));
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x08,
                   Gfx_TexScroll(globalCtx->state.gfxCtx, (127 - (gameplayFrames * 1)) % 128,
                                 (gameplayFrames * 1) % 128, 32, 32));
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    if (FrameAdvance_IsEnabled(globalCtx) != true) {

        D_8012A39C += 1820;
        D_8012A3A0 += 1820;

        temp = 0.020000001f;
        View_SetDistortionOrientation(&globalCtx->view,
                                      ((360.00018f / 65535.0f) * (M_PI / 180.0f)) * temp * Math_CosS(D_8012A39C),
                                      ((360.00018f / 65535.0f) * (M_PI / 180.0f)) * temp * Math_SinS(D_8012A39C),
                                      ((360.00018f / 65535.0f) * (M_PI / 180.0f)) * temp * Math_SinS(D_8012A3A0));
        View_SetDistortionScale(&globalCtx->view, 1.f + (0.79999995f * temp * Math_SinS(D_8012A3A0)),
                                1.f + (0.39999998f * temp * Math_CosS(D_8012A3A0)),
                                1.f + (1 * temp * Math_CosS(D_8012A39C)));
        View_SetDistortionSpeed(&globalCtx->view, 0.95f);

        switch (globalCtx->roomCtx.unk_74[0]) {
            case 0:
                break;
            case 1:
                if (globalCtx->roomCtx.unk_74[1] < 1200) {
                    globalCtx->roomCtx.unk_74[1] += 200;
                } else {
                    globalCtx->roomCtx.unk_74[0]++;
                }
                break;
            case 2:
                if (globalCtx->roomCtx.unk_74[1] > 0) {
                    globalCtx->roomCtx.unk_74[1] -= 30;
                } else {
                    globalCtx->roomCtx.unk_74[1] = 0;
                    globalCtx->roomCtx.unk_74[0] = 0;
                }
                break;
        }

        D_8012A398 += 0.15f + (globalCtx->roomCtx.unk_74[1] * 0.001f);
    }

    if (globalCtx->roomCtx.curRoom.num == 2) {
        Matrix_Scale(1.0f, sinf(D_8012A398) * 0.8f, 1.0f, MTXMODE_NEW);
    } else {
        Matrix_Scale(1.005f, sinf(D_8012A398) * 0.8f, 1.005f, MTXMODE_NEW);
    }

    gSPSegment(POLY_OPA_DISP++, 0x0D, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_scene_table.c", 7809));

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7811);
}

void Scene_DrawConfigGanontika(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7825);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 1) % 512, 32,
                                128, 1, gameplayFrames % 128, (gameplayFrames * 1) % 512, 32, 128));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 1) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128, 32, 32));
    gSPSegment(POLY_OPA_DISP++, 0x0A,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 1) % 128, 32,
                                32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7852);
}

void Scene_DrawConfigGanontikaSonogo(GlobalContext* globalCtx) {
    func_8009BEEC(globalCtx);
}

void Scene_DrawConfigGanonSonogo(GlobalContext* globalCtx) {
    func_8009BEEC(globalCtx);
}

void Scene_DrawConfigBesitu(GlobalContext* globalCtx) {
    u32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7893);

    gameplayFrames = globalCtx->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TexScroll(globalCtx->state.gfxCtx, 127 - (gameplayFrames * 2) % 128, 0, 32, 64));
    gSPSegment(POLY_OPA_DISP++, 0x09, Gfx_TexScroll(globalCtx->state.gfxCtx, 0, (gameplayFrames * 2) % 512, 128, 128));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 7910);
}

void (*sSceneDrawConfigs[SCENE_DRAW_CONFIG_MAX])(GlobalContext*) = {
    Scene_DrawConfigNone,                  // SCENE_DRAW_CONFIG_NONE
    Scene_DrawConfigSpot00,                // SCENE_DRAW_CONFIG_SPOT00
    Scene_DrawConfigSpot01,                // SCENE_DRAW_CONFIG_SPOT01
    Scene_DrawConfigSpot03,                // SCENE_DRAW_CONFIG_SPOT03
    Scene_DrawConfigSpot04,                // SCENE_DRAW_CONFIG_SPOT04
    Scene_DrawConfigSpot06,                // SCENE_DRAW_CONFIG_SPOT06
    Scene_DrawConfigSpot07,                // SCENE_DRAW_CONFIG_SPOT07
    Scene_DrawConfigSpot08,                // SCENE_DRAW_CONFIG_SPOT08
    Scene_DrawConfigSpot09,                // SCENE_DRAW_CONFIG_SPOT09
    Scene_DrawConfigSpot10,                // SCENE_DRAW_CONFIG_SPOT10
    Scene_DrawConfigSpot11,                // SCENE_DRAW_CONFIG_SPOT11
    Scene_DrawConfigSpot12,                // SCENE_DRAW_CONFIG_SPOT12
    Scene_DrawConfigSpot13,                // SCENE_DRAW_CONFIG_SPOT13
    Scene_DrawConfigSpot15,                // SCENE_DRAW_CONFIG_SPOT15
    Scene_DrawConfigSpot16,                // SCENE_DRAW_CONFIG_SPOT16
    Scene_DrawConfigSpot17,                // SCENE_DRAW_CONFIG_SPOT17
    Scene_DrawConfigSpot18,                // SCENE_DRAW_CONFIG_SPOT18
    Scene_DrawConfigSpot20,                // SCENE_DRAW_CONFIG_SPOT20
    Scene_DrawConfigHidan,                 // SCENE_DRAW_CONFIG_HIDAN
    Scene_DrawConfigYdan,                  // SCENE_DRAW_CONFIG_YDAN
    Scene_DrawConfigDdan,                  // SCENE_DRAW_CONFIG_DDAN
    Scene_DrawConfigBdan,                  // SCENE_DRAW_CONFIG_BDAN
    Scene_DrawConfigBmori1,                // SCENE_DRAW_CONFIG_BMORI1
    Scene_DrawConfigMizusin,               // SCENE_DRAW_CONFIG_MIZUSIN
    Scene_DrawConfigHakadan,               // SCENE_DRAW_CONFIG_HAKADAN
    Scene_DrawConfigJyasinzou,             // SCENE_DRAW_CONFIG_JYASINZOU
    Scene_DrawConfigGanontika,             // SCENE_DRAW_CONFIG_GANONTIKA
    Scene_DrawConfigMen,                   // SCENE_DRAW_CONFIG_MEN
    Scene_DrawConfigYdanBoss,              // SCENE_DRAW_CONFIG_YDAN_BOSS
    Scene_DrawConfigMizusinBs,             // SCENE_DRAW_CONFIG_MIZUSIN_BS
    Scene_DrawConfigTokinoma,              // SCENE_DRAW_CONFIG_TOKINOMA
    Scene_DrawConfigKakusiana,             // SCENE_DRAW_CONFIG_KAKUSIANA
    Scene_DrawConfigKenjyanoma,            // SCENE_DRAW_CONFIG_KENJYANOMA
    Scene_DrawConfigGreatFairyFountain,    // SCENE_DRAW_CONFIG_GREAT_FAIRY_FOUNTAIN
    Scene_DrawConfigSyatekijyou,           // SCENE_DRAW_CONFIG_SYATEKIJYOU
    Scene_DrawConfigHairalNiwa,            // SCENE_DRAW_CONFIG_HAIRAL_NIWA
    Scene_DrawConfigGanonCastleExterior,   // SCENE_DRAW_CONFIG_GANON_CASTLE_EXTERIOR
    Scene_DrawConfigIceDoukuto,            // SCENE_DRAW_CONFIG_ICE_DOUKUTO
    Scene_DrawConfigGanonFinal,            // SCENE_DRAW_CONFIG_GANON_FINAL
    Scene_DrawConfigFairyFountain,         // SCENE_DRAW_CONFIG_FAIRY_FOUNTAIN
    Scene_DrawConfigGerudoway,             // SCENE_DRAW_CONFIG_GERUDOWAY
    Scene_DrawConfigBowling,               // SCENE_DRAW_CONFIG_BOWLING
    Scene_DrawConfigHakaanaOuke,           // SCENE_DRAW_CONFIG_HAKAANA_OUKE
    Scene_DrawConfigHyliaLabo,             // SCENE_DRAW_CONFIG_HYLIA_LABO
    Scene_DrawConfigSouko,                 // SCENE_DRAW_CONFIG_SOUKO
    Scene_DrawConfigMiharigoya,            // SCENE_DRAW_CONFIG_MIHARIGOYA
    Scene_DrawConfigMahouya,               // SCENE_DRAW_CONFIG_MAHOUYA
    Scene_DrawConfig47,                    // SCENE_DRAW_CONFIG_47
    Scene_DrawConfigGraveExitLightShining, // SCENE_DRAW_CONFIG_GRAVE_EXIT_LIGHT_SHINING
    Scene_DrawConfigBesitu,                // SCENE_DRAW_CONFIG_BESITU
    Scene_DrawConfigTuribori,              // SCENE_DRAW_CONFIG_TURIBORI
    Scene_DrawConfigGanonSonogo,           // SCENE_DRAW_CONFIG_GANON_SONOGO
    Scene_DrawConfigGanontikaSonogo,       // SCENE_DRAW_CONFIG_GANONTIKA_SONOGO
};

void Scene_Draw(GlobalContext* globalCtx) {
    if (HREG(80) == 17) {
        if (HREG(95) != 17) {
            HREG(95) = 17;
            HREG(81) = 1;
            HREG(82) = 1;
            HREG(83) = 0;
            HREG(84) = 0;
            HREG(85) = 0;
            HREG(86) = 0;
            HREG(87) = 0;
            HREG(88) = 0;
            HREG(89) = 0;
            HREG(91) = 0;
            HREG(92) = 0;
            HREG(93) = 0;
            HREG(94) = 0;
        }

        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 8104);

        if (HREG(81) == 1) {
            gSPDisplayList(POLY_OPA_DISP++, sDefaultDisplayList);
            gSPDisplayList(POLY_XLU_DISP++, sDefaultDisplayList);
        }

        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_scene_table.c", 8109);

        if (HREG(82) == 1) {
            sSceneDrawConfigs[globalCtx->sceneDrawConfig](globalCtx);
        }
    } else {
        sSceneDrawConfigs[globalCtx->sceneDrawConfig](globalCtx);
    }
}
