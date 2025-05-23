#include "global.h"
#include "quake.h"
#include "versions.h"
#include "z64frame_advance.h"
#if PLATFORM_N64
#include "n64dd.h"
#endif

#include "assets/scenes/indoors/miharigoya/miharigoya_scene.h"
#include "assets/scenes/indoors/souko/souko_scene.h"

#include "assets/scenes/overworld/spot00/spot00_scene.h"
#include "assets/scenes/overworld/spot00/spot00_room_0.h"
#include "assets/scenes/overworld/spot01/spot01_scene.h"
#include "assets/scenes/overworld/spot07/spot07_scene.h"
#include "assets/scenes/overworld/spot12/spot12_scene.h"
#include "assets/scenes/overworld/spot16/spot16_scene.h"
#include "assets/scenes/overworld/spot16/spot16_room_0.h"
#include "assets/scenes/overworld/spot18/spot18_scene.h"
#include "assets/scenes/overworld/spot20/spot20_scene.h"

#include "assets/scenes/dungeons/Bmori1/Bmori1_scene.h"
#include "assets/scenes/dungeons/MIZUsin/MIZUsin_scene.h"
#include "assets/scenes/dungeons/ddan/ddan_scene.h"
#include "assets/scenes/dungeons/gerudoway/gerudoway_scene.h"
#include "assets/scenes/dungeons/ice_doukutu/ice_doukutu_scene.h"
#include "assets/scenes/dungeons/jyasinzou/jyasinzou_scene.h"
#include "assets/scenes/dungeons/men/men_scene.h"
#include "assets/scenes/dungeons/ydan/ydan_scene.h"

#include "overlays/actors/ovl_Bg_Dodoago/z_bg_dodoago.h"

void Scene_DrawConfigDefault(PlayState* play);
void Scene_DrawConfigHyruleField(PlayState* play);
void Scene_DrawConfigKakarikoVillage(PlayState* play);
void Scene_DrawConfigZorasRiver(PlayState* play);
void Scene_DrawConfigKokiriForest(PlayState* play);
void Scene_DrawConfigLakeHylia(PlayState* play);
void Scene_DrawConfigZorasDomain(PlayState* play);
void Scene_DrawConfigZorasFountain(PlayState* play);
void Scene_DrawConfigGerudoValley(PlayState* play);
void Scene_DrawConfigLostWoods(PlayState* play);
void Scene_DrawConfigDesertColossus(PlayState* play);
void Scene_DrawConfigGerudosFortress(PlayState* play);
void Scene_DrawConfigHauntedWasteland(PlayState* play);
void Scene_DrawConfigHyruleCastle(PlayState* play);
void Scene_DrawConfigDeathMountainTrail(PlayState* play);
void Scene_DrawConfigDeathMountainCrater(PlayState* play);
void Scene_DrawConfigGoronCity(PlayState* play);
void Scene_DrawConfigLonLonRanch(PlayState* play);
void Scene_DrawConfigFireTemple(PlayState* play);
void Scene_DrawConfigDekuTree(PlayState* play);
void Scene_DrawConfigDodongosCavern(PlayState* play);
void Scene_DrawConfigJabuJabu(PlayState* play);
void Scene_DrawConfigForestTemple(PlayState* play);
void Scene_DrawConfigWaterTemple(PlayState* play);
void Scene_DrawConfigShadowTempleAndWell(PlayState* play);
void Scene_DrawConfigSpiritTemple(PlayState* play);
void Scene_DrawConfigInsideGanonsCastle(PlayState* play);
void Scene_DrawConfigGerudoTrainingGround(PlayState* play);
void Scene_DrawConfigDekuTreeBoss(PlayState* play);
void Scene_DrawConfigWaterTempleBoss(PlayState* play);
void Scene_DrawConfigTempleOfTime(PlayState* play);
void Scene_DrawConfigGrottos(PlayState* play);
void Scene_DrawConfigChamberOfTheSages(PlayState* play);
void Scene_DrawConfigGreatFairyFountain(PlayState* play);
void Scene_DrawConfigShootingGallery(PlayState* play);
void Scene_DrawConfigCastleCourtyardGuards(PlayState* play);
void Scene_DrawConfigOutsideGanonsCastle(PlayState* play);
void Scene_DrawConfigIceCavern(PlayState* play);
void Scene_DrawConfigGanonsTowerCollapseExterior(PlayState* play);
void Scene_DrawConfigFairysFountain(PlayState* play);
void Scene_DrawConfigThievesHideout(PlayState* play);
void Scene_DrawConfigBombchuBowlingAlley(PlayState* play);
void Scene_DrawConfigRoyalFamilysTomb(PlayState* play);
void Scene_DrawConfigLakesideLaboratory(PlayState* play);
void Scene_DrawConfigLonLonBuildings(PlayState* play);
void Scene_DrawConfigMarketGuardHouse(PlayState* play);
void Scene_DrawConfigPotionShopGranny(PlayState* play);
void Scene_DrawConfigCalmWater(PlayState* play);
void Scene_DrawConfigGraveExitLightShining(PlayState* play);
void Scene_DrawConfigBesitu(PlayState* play);
void Scene_DrawConfigFishingPond(PlayState* play);
void Scene_DrawConfigGanonsTowerCollapseInterior(PlayState* play);
void Scene_DrawConfigInsideGanonsCastleCollapse(PlayState* play);

// Entrance Table definition
#define DEFINE_ENTRANCE(_0, sceneId, spawn, continueBgm, displayTitleCard, endTransType, startTransType) \
    { sceneId, spawn,                                                                                    \
      (((continueBgm) ? ENTRANCE_INFO_CONTINUE_BGM_FLAG : 0) |                                           \
       ((displayTitleCard) ? ENTRANCE_INFO_DISPLAY_TITLE_CARD_FLAG : 0) |                                \
       (((endTransType) << ENTRANCE_INFO_END_TRANS_TYPE_SHIFT) & ENTRANCE_INFO_END_TRANS_TYPE_MASK) |    \
       (((startTransType) << ENTRANCE_INFO_START_TRANS_TYPE_SHIFT) & ENTRANCE_INFO_START_TRANS_TYPE_MASK)) },

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

#if PLATFORM_N64 // Scene_Draw is at end of file in GC/iQue versions

SceneDrawConfigFunc sSceneDrawConfigs[SDC_MAX] = {
    Scene_DrawConfigDefault,                     // SDC_DEFAULT
    Scene_DrawConfigHyruleField,                 // SDC_HYRULE_FIELD
    Scene_DrawConfigKakarikoVillage,             // SDC_KAKARIKO_VILLAGE
    Scene_DrawConfigZorasRiver,                  // SDC_ZORAS_RIVER
    Scene_DrawConfigKokiriForest,                // SDC_KOKIRI_FOREST
    Scene_DrawConfigLakeHylia,                   // SDC_LAKE_HYLIA
    Scene_DrawConfigZorasDomain,                 // SDC_ZORAS_DOMAIN
    Scene_DrawConfigZorasFountain,               // SDC_ZORAS_FOUNTAIN
    Scene_DrawConfigGerudoValley,                // SDC_GERUDO_VALLEY
    Scene_DrawConfigLostWoods,                   // SDC_LOST_WOODS
    Scene_DrawConfigDesertColossus,              // SDC_DESERT_COLOSSUS
    Scene_DrawConfigGerudosFortress,             // SDC_GERUDOS_FORTRESS
    Scene_DrawConfigHauntedWasteland,            // SDC_HAUNTED_WASTELAND
    Scene_DrawConfigHyruleCastle,                // SDC_HYRULE_CASTLE
    Scene_DrawConfigDeathMountainTrail,          // SDC_DEATH_MOUNTAIN_TRAIL
    Scene_DrawConfigDeathMountainCrater,         // SDC_DEATH_MOUNTAIN_CRATER
    Scene_DrawConfigGoronCity,                   // SDC_GORON_CITY
    Scene_DrawConfigLonLonRanch,                 // SDC_LON_LON_RANCH
    Scene_DrawConfigFireTemple,                  // SDC_FIRE_TEMPLE
    Scene_DrawConfigDekuTree,                    // SDC_DEKU_TREE
    Scene_DrawConfigDodongosCavern,              // SDC_DODONGOS_CAVERN
    Scene_DrawConfigJabuJabu,                    // SDC_JABU_JABU
    Scene_DrawConfigForestTemple,                // SDC_FOREST_TEMPLE
    Scene_DrawConfigWaterTemple,                 // SDC_WATER_TEMPLE
    Scene_DrawConfigShadowTempleAndWell,         // SDC_SHADOW_TEMPLE_AND_WELL
    Scene_DrawConfigSpiritTemple,                // SDC_SPIRIT_TEMPLE
    Scene_DrawConfigInsideGanonsCastle,          // SDC_INSIDE_GANONS_CASTLE
    Scene_DrawConfigGerudoTrainingGround,        // SDC_GERUDO_TRAINING_GROUND
    Scene_DrawConfigDekuTreeBoss,                // SDC_DEKU_TREE_BOSS
    Scene_DrawConfigWaterTempleBoss,             // SDC_WATER_TEMPLE_BOSS
    Scene_DrawConfigTempleOfTime,                // SDC_TEMPLE_OF_TIME
    Scene_DrawConfigGrottos,                     // SDC_GROTTOS
    Scene_DrawConfigChamberOfTheSages,           // SDC_CHAMBER_OF_THE_SAGES
    Scene_DrawConfigGreatFairyFountain,          // SDC_GREAT_FAIRYS_FOUNTAIN
    Scene_DrawConfigShootingGallery,             // SDC_SHOOTING_GALLERY
    Scene_DrawConfigCastleCourtyardGuards,       // SDC_CASTLE_COURTYARD_GUARDS
    Scene_DrawConfigOutsideGanonsCastle,         // SDC_OUTSIDE_GANONS_CASTLE
    Scene_DrawConfigIceCavern,                   // SDC_ICE_CAVERN
    Scene_DrawConfigGanonsTowerCollapseExterior, // SDC_GANONS_TOWER_COLLAPSE_EXTERIOR
    Scene_DrawConfigFairysFountain,              // SDC_FAIRYS_FOUNTAIN
    Scene_DrawConfigThievesHideout,              // SDC_THIEVES_HIDEOUT
    Scene_DrawConfigBombchuBowlingAlley,         // SDC_BOMBCHU_BOWLING_ALLEY
    Scene_DrawConfigRoyalFamilysTomb,            // SDC_ROYAL_FAMILYS_TOMB
    Scene_DrawConfigLakesideLaboratory,          // SDC_LAKESIDE_LABORATORY
    Scene_DrawConfigLonLonBuildings,             // SDC_LON_LON_BUILDINGS
    Scene_DrawConfigMarketGuardHouse,            // SDC_MARKET_GUARD_HOUSE
    Scene_DrawConfigPotionShopGranny,            // SDC_POTION_SHOP_GRANNY
    Scene_DrawConfigCalmWater,                   // SDC_CALM_WATER
    Scene_DrawConfigGraveExitLightShining,       // SDC_GRAVE_EXIT_LIGHT_SHINING
    Scene_DrawConfigBesitu,                      // SDC_BESITU
    Scene_DrawConfigFishingPond,                 // SDC_FISHING_POND
    Scene_DrawConfigGanonsTowerCollapseInterior, // SDC_GANONS_TOWER_COLLAPSE_INTERIOR
    Scene_DrawConfigInsideGanonsCastleCollapse,  // SDC_INSIDE_GANONS_CASTLE_COLLAPSE
};

void Scene_Draw(PlayState* play) {
    if ((B_80121220 != NULL) && (B_80121220->unk_6C != NULL)) {
        B_80121220->unk_6C(play, sSceneDrawConfigs);
        return;
    }

    sSceneDrawConfigs[play->sceneDrawConfig](play);
}

#endif

void Scene_DrawConfigDefault(PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 4725);

    gSPDisplayList(POLY_OPA_DISP++, sDefaultDisplayList);
    gSPDisplayList(POLY_XLU_DISP++, sDefaultDisplayList);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 4735);
}

void* sDekuTreeEntranceTextures[] = {
    gDekuTreeDayEntranceTex,
    gDekuTreeNightEntranceTex,
};

void Scene_DrawConfigDekuTree(PlayState* play) {
    u32 gameplayFrames = play->gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 4763);

    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - (gameplayFrames % 128),
                                (gameplayFrames * 1) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128,
                                32, 32));

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    gSPSegment(POLY_OPA_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sDekuTreeEntranceTextures[((void)0, gSaveContext.save.nightFlag)]));

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 4783);
}

void Scene_DrawConfigDekuTreeBoss(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 4845);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (gameplayFrames * 2) % 256, 0, 64, 32, 1, 0,
                                (gameplayFrames * 2) % 128, 64, 32));

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 4859);
}

void* gDCEntranceTextures[] = {
    gDCDayEntranceTex,
    gDCNightEntranceTex,
};
void* sDCLavaFloorTextures[] = {
    gDCLavaFloor1Tex, gDCLavaFloor2Tex, gDCLavaFloor3Tex, gDCLavaFloor4Tex,
    gDCLavaFloor5Tex, gDCLavaFloor6Tex, gDCLavaFloor7Tex, gDCLavaFloor8Tex,
};

void Scene_DrawConfigDodongosCavern(PlayState* play) {
    u32 gameplayFrames;
    s32 pad;
    Gfx* displayListHead = GRAPH_ALLOC(play->state.gfxCtx, 2 * sizeof(Gfx[3]));

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 4905);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(gDCEntranceTextures[((void)0, gSaveContext.save.nightFlag)]));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sDCLavaFloorTextures[(s32)(gameplayFrames & 14) >> 1]));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (gameplayFrames * 1) % 256, 0, 64, 32, 1, 0,
                                (gameplayFrames * 1) % 128, 64, 32));
    gSPSegment(POLY_OPA_DISP++, 0x0A,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, (gameplayFrames * 1) % 128, 32, 32, 1, 0,
                                (gameplayFrames * 2) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    gSPSegment(POLY_OPA_DISP++, 0x0B, displayListHead);
    gDPPipeSync(displayListHead++);
    gDPSetEnvColor(displayListHead++, 255, 255, 255, play->roomCtx.drawParams[BGDODOAGO_EYE_LEFT]);
    gSPEndDisplayList(displayListHead++);

    gSPSegment(POLY_OPA_DISP++, 0x0C, displayListHead);
    gDPPipeSync(displayListHead++);
    gDPSetEnvColor(displayListHead++, 255, 255, 255, play->roomCtx.drawParams[BGDODOAGO_EYE_RIGHT]);
    gSPEndDisplayList(displayListHead++);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 4956);
}

void Scene_DrawConfigTempleOfTime(PlayState* play) {
    f32 temp;
    Gfx* displayListHead = GRAPH_ALLOC(play->state.gfxCtx, 18 * sizeof(Gfx));

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5069);

    temp = play->roomCtx.drawParams[0] / 255.0f;

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
    gDPSetEnvColor(displayListHead++, 0, 0, 0, play->roomCtx.drawParams[0]);
    gSPEndDisplayList(displayListHead++);

    gSPSegment(POLY_OPA_DISP++, 0x0B, displayListHead);
    gSPSegment(POLY_XLU_DISP++, 0x0B, displayListHead);
    gDPSetPrimColor(displayListHead++, 0, 0, 89 + (u8)(166.0f * temp), 89 + (u8)(166.0f * temp),
                    89 + (u8)(166.0f * temp), 255);
    gDPPipeSync(displayListHead++);
    gDPSetEnvColor(displayListHead++, 0, 0, 0, play->roomCtx.drawParams[0]);
    gSPEndDisplayList(displayListHead++);

    gSPSegment(POLY_OPA_DISP++, 0x0C, displayListHead);
    gSPSegment(POLY_XLU_DISP++, 0x0C, displayListHead);
    gDPSetPrimColor(displayListHead++, 0, 0, 255 + (u8)(179.0f * temp), 255 + (u8)(179.0f * temp),
                    255 + (u8)(179.0f * temp), 255);
    gDPPipeSync(displayListHead++);
    gDPSetEnvColor(displayListHead++, 0, 0, 0, play->roomCtx.drawParams[0]);
    gSPEndDisplayList(displayListHead++);

    gSPSegment(POLY_OPA_DISP++, 0x0D, displayListHead);
    gSPSegment(POLY_XLU_DISP++, 0x0D, displayListHead);
    gDPPipeSync(displayListHead++);
    gDPSetEnvColor(displayListHead++, 0, 0, 0, play->roomCtx.drawParams[1]);
    gSPEndDisplayList(displayListHead);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5145);

    if (gSaveContext.sceneLayer == 5) {
        gCustomLensFlareOn = true;
        gCustomLensFlarePos.x = -20.0f;
        gCustomLensFlarePos.y = 1220.0f;
        gCustomLensFlarePos.z = -684.0f;
        gLensFlareScale = 10;
        gLensFlareColorIntensity = 8.0f;
        gLensFlareGlareStrength = 200;
    }
}

void Scene_DrawConfigGrottos(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5171);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08, Gfx_TexScroll(play->state.gfxCtx, 0, (gameplayFrames * 1) % 64, 256, 16));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - (gameplayFrames % 128),
                                (gameplayFrames * 1) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128,
                                32, 32));
    gSPSegment(POLY_OPA_DISP++, 0x0A,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 32, 32, 1, 0,
                                127 - (gameplayFrames * 1) % 128, 32, 32));
    gSPSegment(POLY_OPA_DISP++, 0x0B, Gfx_TexScroll(play->state.gfxCtx, 0, (gameplayFrames * 1) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x0C,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, (gameplayFrames * 50) % 2048, 8, 512, 1, 0,
                                (gameplayFrames * 60) % 2048, 8, 512));
    gSPSegment(
        POLY_OPA_DISP++, 0x0D,
        Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 32, 64, 1, 0, (gameplayFrames * 1) % 128, 32, 32));

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5212);
}

void Scene_DrawConfigChamberOfTheSages(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5226);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08, Gfx_TexScroll(play->state.gfxCtx, 0, (gameplayFrames * 2) % 256, 64, 64));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gSPSegment(POLY_OPA_DISP++, 0x0A,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 1) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128,
                                32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - (gameplayFrames * 1) % 128,
                                (gameplayFrames * 1) % 256, 32, 64, 1, 0, 0, 32, 128));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5264);
}

void Scene_DrawConfigGreatFairyFountain(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5278);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 3) % 256, 32, 64, 1, gameplayFrames % 128, (gameplayFrames * 3) % 256,
                                32, 64));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 3) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 3) % 128,
                                32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5301);
}

void Scene_DrawConfigGraveExitLightShining(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5317);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08, Gfx_TexScroll(play->state.gfxCtx, 0, gameplayFrames % 64, 256, 16));

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5330);
}

void Scene_DrawConfigFairysFountain(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5346);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 3) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 3) % 128,
                                32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09, Gfx_TexScroll(play->state.gfxCtx, 0, gameplayFrames % 64, 256, 16));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5367);
}

void Scene_DrawConfigShadowTempleAndWell(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5384);

    gameplayFrames = play->gameplayFrames;

    if (play->sceneId == SCENE_SHADOW_TEMPLE_BOSS) {
        gSPSegment(POLY_OPA_DISP++, 0x08,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (gameplayFrames * 2) % 128, 0, 32, 32, 1,
                                    (gameplayFrames * 2) % 128, 0, 32, 32));
    } else {
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (gameplayFrames * 2) % 128, 0, 32, 32, 1,
                                    (gameplayFrames * 2) % 128, 0, 32, 32));
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5416);
}

void* sThievesHideoutEntranceTextures[] = {
    gThievesHideoutDayEntranceTex,
    gThievesHideoutNightEntranceTex,
};

void Scene_DrawConfigThievesHideout(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5490);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x09, Gfx_TexScroll(play->state.gfxCtx, 0, (gameplayFrames * 3) % 128, 32, 32));

    gSPSegment(POLY_XLU_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sThievesHideoutEntranceTextures[((void)0, gSaveContext.save.nightFlag)]));

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5507);
}

void* sWaterTempleEntranceTextures[] = {
    gWaterTempleDayEntranceTex,
    gWaterTempleNightEntranceTex,
};

void Scene_DrawConfigWaterTemple(PlayState* play) {
    u32 gameplayFrames;
    s32 spB0;
    s32 spAC;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5535);

    spB0 = (play->roomCtx.drawParams[1] >> 8) & 0xFF;
    spAC = play->roomCtx.drawParams[1] & 0xFF;
    gameplayFrames = play->gameplayFrames;

#if !OOT_MQ
    gSPSegment(POLY_XLU_DISP++, 0x06,
               SEGMENTED_TO_VIRTUAL(sWaterTempleEntranceTextures[((void)0, gSaveContext.save.nightFlag)]));
#else
    gSPSegment(POLY_XLU_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sWaterTempleEntranceTextures[((void)0, gSaveContext.save.nightFlag)]));
#endif

    if (spB0 == 1) {
        gSPSegment(POLY_OPA_DISP++, 0x08,
                   Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, gameplayFrames * 1, 0, 32, 32, 1, 0, 0,
                                            32, 32, 0, 0, 0, spAC));
    } else if (spB0 < 1) {
        gSPSegment(POLY_OPA_DISP++, 0x08,
                   Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, gameplayFrames * 1, 0, 32, 32, 1, 0, 0,
                                            32, 32, 0, 0, 0, 255));
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x08,
                   Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, gameplayFrames * 1, 0, 32, 32, 1, 0, 0,
                                            32, 32, 0, 0, 0, 160));
    }

    if (spB0 == 2) {
        gSPSegment(POLY_OPA_DISP++, 0x09,
                   Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, gameplayFrames * 1, 0, 32, 32, 1, 0, 0,
                                            32, 32, 0, 0, 0, spAC));
    } else if (spB0 < 2) {
        gSPSegment(POLY_OPA_DISP++, 0x09,
                   Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, gameplayFrames * 1, 0, 32, 32, 1, 0, 0,
                                            32, 32, 0, 0, 0, 255));
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x09,
                   Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, gameplayFrames * 1, 0, 32, 32, 1, 0, 0,
                                            32, 32, 0, 0, 0, 160));
    }

    if (spB0 != 0) {
        gSPSegment(POLY_OPA_DISP++, 0x0A,
                   Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, gameplayFrames * 1, 0, 32, 32, 1, 0, 0,
                                            32, 32, 0, 0, 0, 160));
        gSPSegment(POLY_OPA_DISP++, 0x0B,
                   Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, gameplayFrames * 3, 0, 32, 32, 1, 0, 0,
                                            32, 32, 0, 0, 0, 180));
    } else {
        gSPSegment(POLY_OPA_DISP++, 0x0A,
                   Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, (gameplayFrames * 1) % 128, 0, 32, 32,
                                            1, 0, 0, 32, 32, 0, 0, 0, 160 + (s32)((spAC / 200.0f) * 95.0f)));
        gSPSegment(POLY_OPA_DISP++, 0x0B,
                   Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, gameplayFrames * 3, 0, 32, 32, 1, 0, 0,
                                            32, 32, 0, 0, 0, 185 + (s32)((spAC / 200.0f) * 70.0f)));
    }

    gSPSegment(POLY_XLU_DISP++, 0x0C,
               Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, gameplayFrames * 1, gameplayFrames * 1, 32,
                                        32, 1, 0, 127 - (gameplayFrames * 1), 32, 32, 0, 0, 0, 128));
    gSPSegment(POLY_XLU_DISP++, 0x0D,
               Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, gameplayFrames * 4, 0, 32, 32, 1,
                                        gameplayFrames * 4, 0, 32, 32, 0, 0, 0, 128));

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5644);
}

void Scene_DrawConfigWaterTempleBoss(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5791);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, gameplayFrames * 1, 0, 32, 32, 1, 0, 0, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, play->roomCtx.drawParams[0]);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 145);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5808);
}

void Scene_DrawConfigShootingGallery(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5822);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08, Gfx_TexScroll(play->state.gfxCtx, 0, gameplayFrames % 64, 4, 16));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5836);
}

void Scene_DrawConfigCastleCourtyardGuards(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5850);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 3) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 3) % 128,
                                32, 32));

    if (play->sceneId == SCENE_CASTLE_COURTYARD_GUARDS_DAY) {
        gSPSegment(POLY_XLU_DISP++, 0x09, Gfx_TexScroll(play->state.gfxCtx, 0, (gameplayFrames * 10) % 256, 32, 64));
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5876);
}

void Scene_DrawConfigOutsideGanonsCastle(PlayState* play) {
    u32 gameplayFrames;
    s8 sp83;

    sp83 = coss(play->gameplayFrames * 1500) >> 8;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5894);

    gameplayFrames = play->gameplayFrames;

    if (play->sceneId == SCENE_OUTSIDE_GANONS_CASTLE) {
        gSPSegment(POLY_XLU_DISP++, 0x09, Gfx_TexScroll(play->state.gfxCtx, 0, (gameplayFrames * 1) % 256, 64, 64));
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 255 - (gameplayFrames * 1) % 256, 64, 64, 1,
                                    0, (gameplayFrames * 1) % 256, 64, 64));
    }

    gSPSegment(POLY_OPA_DISP++, 0x0B,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 255 - (gameplayFrames * 1) % 128,
                                (gameplayFrames * 1) % 128, 32, 32, 1, (gameplayFrames * 1) % 128,
                                (gameplayFrames * 1) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    sp83 = (sp83 >> 1) + 192;
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, sp83, sp83, sp83, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5930);
}

// Screen Shake for Ganon's Tower Collapse
void func_8009BEEC(PlayState* play) {
    s32 quakeIndex;

    if (play->gameplayFrames % 128 == 13) {
        quakeIndex = Quake_Request(GET_ACTIVE_CAM(play), QUAKE_TYPE_2);
        Quake_SetSpeed(quakeIndex, 10000);
        Quake_SetPerturbations(quakeIndex, 4, 0, 0, 0);
        Quake_SetDuration(quakeIndex, 127);
    }

    if ((play->gameplayFrames % 64 == 0) && (Rand_ZeroOne() > 0.6f)) {
        quakeIndex = Quake_Request(GET_ACTIVE_CAM(play), QUAKE_TYPE_3);
        Quake_SetSpeed(quakeIndex, 32000.0f + (Rand_ZeroOne() * 3000.0f));
        Quake_SetPerturbations(quakeIndex, 10.0f - (Rand_ZeroOne() * 9.0f), 0, 0, 0);
        Quake_SetDuration(quakeIndex, 48.0f - (Rand_ZeroOne() * 15.0f));
    }
}

void Scene_DrawConfigGanonsTowerCollapseExterior(PlayState* play) {
    u32 gameplayFrames;
    s8 sp7B;

    sp7B = coss((play->gameplayFrames * 1500) & 0xFFFF) >> 8;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 5968);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, (gameplayFrames * 1) % 512, 64, 128, 1, 0,
                                511 - (gameplayFrames * 1) % 512, 64, 128));
    gSPSegment(POLY_OPA_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, (gameplayFrames * 1) % 256, 32, 64, 1, 0,
                                255 - (gameplayFrames * 1) % 256, 32, 64));
    gSPSegment(POLY_XLU_DISP++, 0x0A,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, (gameplayFrames * 20) % 2048, 16, 512, 1, 0,
                                (gameplayFrames * 30) % 2048, 16, 512));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    sp7B = (sp7B >> 1) + 192;
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, sp7B, sp7B, sp7B, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6004);

    if (Flags_GetSwitch(play, 0x37)) {
        if ((play->sceneId == SCENE_GANON_BOSS) || (play->sceneId == SCENE_GANONS_TOWER_COLLAPSE_EXTERIOR) ||
            (play->sceneId == SCENE_GANONS_TOWER_COLLAPSE_INTERIOR) ||
            (play->sceneId == SCENE_INSIDE_GANONS_CASTLE_COLLAPSE)) {
            func_8009BEEC(play);
        }
    }
}

void* sIceCavernEntranceTextures[] = {
    gIceCavernDayEntranceTex,
    gIceCavernNightEntranceTex,
};

void Scene_DrawConfigIceCavern(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6042);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sIceCavernEntranceTextures[((void)0, gSaveContext.save.nightFlag)]));
    gSPSegment(POLY_OPA_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 1) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128,
                                32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x0A,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 1) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128,
                                32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6076);
}

void Scene_DrawConfigRoyalFamilysTomb(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6151);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08, Gfx_TexScroll(play->state.gfxCtx, 0, (gameplayFrames * 1) % 64, 256, 16));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, (gameplayFrames * 60) % 2048, 8, 512, 1, 0,
                                (gameplayFrames * 50) % 2048, 8, 512));
    gSPSegment(POLY_OPA_DISP++, 0x0A,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - (gameplayFrames * 1) % 128, 0, 32, 32, 1,
                                (gameplayFrames * 1) % 128, 0, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x0B,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 1023 - (gameplayFrames * 6) % 1024, 16, 256, 1,
                                0, 1023 - (gameplayFrames * 3) % 1024, 16, 256));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6187);
}

void Scene_DrawConfigLakesideLaboratory(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6201);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(
        POLY_OPA_DISP++, 0x08,
        Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 32, 32, 1, 0, (gameplayFrames * 1) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x0A,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 1) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128,
                                32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09, Gfx_TexScroll(play->state.gfxCtx, 0, 255 - (gameplayFrames * 10) % 256, 32, 64));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6232);
}

void Scene_DrawConfigCalmWater(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6249);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 1) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128,
                                32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6264);
}

void* sGTGEntranceTextures[] = {
    gGTGDayEntranceTex,
    gGTGNightEntranceTex,
};

void Scene_DrawConfigGerudoTrainingGround(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6290);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sGTGEntranceTextures[((void)0, gSaveContext.save.nightFlag)]));
    gSPSegment(POLY_OPA_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 1) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128,
                                32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x0A,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 1) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128,
                                32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6320);
}

Gfx* Gfx_TwoTexScrollPrimColor(GraphicsContext* gfxCtx, s32 tile1, u32 x1, u32 y1, s32 width1, s32 height1, s32 tile2,
                               u32 x2, u32 y2, s32 width2, s32 height2, s32 r, s32 g, s32 b, s32 a) {
    Gfx* displayList = GRAPH_ALLOC(gfxCtx, 10 * sizeof(Gfx));

    x1 %= 512 << 2;
    y1 %= 512 << 2;
    x2 %= 512 << 2;
    y2 %= 512 << 2;

    gDPTileSync(displayList);
    gDPSetTileSize(displayList + 1, tile1, x1, y1, x1 + ((width1 - 1) << 2), y1 + ((height1 - 1) << 2));
    gDPTileSync(displayList + 2);
    gDPSetTileSize(displayList + 3, tile2, x2, y2, x2 + ((width2 - 1) << 2), y2 + ((height2 - 1) << 2));
    gDPSetPrimColor(displayList + 4, 0, 0, r, g, b, a);
    gSPEndDisplayList(displayList + 5);

    return displayList;
}

void Scene_DrawConfigFishingPond(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6433);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScrollPrimColor(play->state.gfxCtx, 0, 127 - gameplayFrames % 128, (gameplayFrames * 1) % 128,
                                         32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128, 32, 32, 255, 255,
                                         255, play->roomCtx.drawParams[0] + 127));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6449);
}

void Scene_DrawConfigBombchuBowlingAlley(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6463);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08, Gfx_TexScroll(play->state.gfxCtx, 127 - (gameplayFrames * 4) % 128, 0, 32, 32));
    gSPSegment(POLY_OPA_DISP++, 0x09, Gfx_TexScroll(play->state.gfxCtx, 0, (gameplayFrames * 5) % 64, 16, 16));
    gSPSegment(POLY_OPA_DISP++, 0x0A, Gfx_TexScroll(play->state.gfxCtx, 0, 63 - (gameplayFrames * 2) % 64, 16, 16));
    gSPSegment(POLY_XLU_DISP++, 0x0B,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 127 - (gameplayFrames * 3) % 128, 32, 32, 1, 0,
                                0, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6491);
}

void* sLonLonHouseEntranceTextures[] = {
    gLonLonHouseDayEntranceTex,
    gLonLonHouseNightEntranceTex,
};

void Scene_DrawConfigLonLonBuildings(PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6515);

    gSPSegment(POLY_XLU_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sLonLonHouseEntranceTextures[((void)0, gSaveContext.save.nightFlag)]));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6528);
}

void* sGuardHouseView1Textures[] = {
    gGuardHouseOutSideView1DayTex,
    gGuardHouseOutSideView1NightTex,
};
void* sGuardHouseView2Textures[] = {
    gGuardHouseOutSideView2DayTex,
    gGuardHouseOutSideView2NightTex,
};

void Scene_DrawConfigMarketGuardHouse(PlayState* play) {
    s32 var;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6560);

    if (LINK_IS_ADULT) {
        var = 1;
    } else {
        var = gSaveContext.save.nightFlag;
    }

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sGuardHouseView2Textures[var]));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sGuardHouseView1Textures[var]));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6581);
}

void Scene_DrawConfigPotionShopGranny(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6595);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08, Gfx_TexScroll(play->state.gfxCtx, 0, (gameplayFrames * 3) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 1023 - (gameplayFrames * 3) % 1024, 16, 256, 1,
                                0, 1023 - (gameplayFrames * 6) % 1024, 16, 256));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6615);
}

void* sForestTempleEntranceTextures[] = {
    gForestTempleDayEntranceTex,
    gForestTempleNightEntranceTex,
};

void Scene_DrawConfigForestTemple(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6640);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sForestTempleEntranceTextures[((void)0, gSaveContext.save.nightFlag)]));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 1) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128,
                                32, 32));
    gSPSegment(POLY_OPA_DISP++, 0x0A,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 1) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128,
                                32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6671);
}

void* sSpiritTempleEntranceTextures[] = {
    gSpiritTempleDayEntranceTex,
    gSpiritTempleNightEntranceTex,
};

void Scene_DrawConfigSpiritTemple(PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6752);

    gSPSegment(POLY_XLU_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sSpiritTempleEntranceTextures[((void)0, gSaveContext.save.nightFlag)]));

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6762);
}

void Scene_DrawConfigHyruleField(PlayState* play) {
    u32 gameplayFrames;
    Gfx* displayListHead;

    displayListHead = GRAPH_ALLOC(play->state.gfxCtx, 3 * sizeof(Gfx));

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6814);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 3) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 3) % 128,
                                32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 10) % 128, 32, 32, 1, gameplayFrames % 128,
                                (gameplayFrames * 10) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    gSPSegment(POLY_XLU_DISP++, 0x0A, displayListHead);

    if ((gSaveContext.save.dayTime > CLOCK_TIME(7, 0)) && (gSaveContext.save.dayTime <= CLOCK_TIME(18, 30))) {
        gSPEndDisplayList(displayListHead++);
    } else {
        if (gSaveContext.save.dayTime > CLOCK_TIME(18, 30)) {
            if (play->roomCtx.drawParams[0] != 255) {
                Math_StepToS(&play->roomCtx.drawParams[0], 255, 5);
            }
        } else if (gSaveContext.save.dayTime >= CLOCK_TIME(6, 0)) {
            if (play->roomCtx.drawParams[0] != 0) {
                Math_StepToS(&play->roomCtx.drawParams[0], 0, 10);
            }
        }

        gDPSetPrimColor(displayListHead++, 0, 0, 255, 255, 255, play->roomCtx.drawParams[0]);
        gSPDisplayList(displayListHead++, spot00_room_0DL_012B20);
        gSPEndDisplayList(displayListHead++);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6866);
}

void* sKakarikoWindowTextures[] = {
    gKakarikoVillageDayWindowTex,
    gKakarikoVillageNightWindowTex,
};

void Scene_DrawConfigKakarikoVillage(PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6890);

    gSPSegment(POLY_OPA_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sKakarikoWindowTextures[((void)0, gSaveContext.save.nightFlag)]));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6903);
}

void Scene_DrawConfigZorasRiver(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6917);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 6) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 6) % 128,
                                32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 3) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 3) % 128,
                                32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x0A,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 1) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128,
                                32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6948);
}

void Scene_DrawConfigKokiriForest(PlayState* play) {
    u32 gameplayFrames;
    u8 spA3;
    u16 spA0;
    Gfx* displayListHead;

    spA3 = 128;
    spA0 = 500;
    displayListHead = GRAPH_ALLOC(play->state.gfxCtx, 6 * sizeof(Gfx));

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 6965);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 1) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128,
                                32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 10) % 128, 32, 32, 1, gameplayFrames % 128,
                                (gameplayFrames * 10) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    if (gSaveContext.sceneLayer == 4) {
        spA3 = 255 - (u8)play->roomCtx.drawParams[0];
    } else if (gSaveContext.sceneLayer == 6) {
        spA0 = play->roomCtx.drawParams[0] + 500;
    } else if (
#if OOT_VERSION < PAL_1_0
        !IS_CUTSCENE_LAYER && GET_EVENTCHKINF(EVENTCHKINF_07)
#else
        (!IS_CUTSCENE_LAYER || LINK_IS_ADULT) && GET_EVENTCHKINF(EVENTCHKINF_07)
#endif
    ) {
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
    gSPEndDisplayList(displayListHead++);

    gSPSegment(POLY_OPA_DISP++, 0x0C,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, (s16)(-play->roomCtx.drawParams[0] * 0.02f), 32,
                                16, 1, 0, (s16)(-play->roomCtx.drawParams[0] * 0.02f), 32, 16));

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7044);
}

void Scene_DrawConfigLakeHylia(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7058);

    if (IS_CUTSCENE_LAYER || (LINK_IS_ADULT && !GET_EVENTCHKINF(EVENTCHKINF_RESTORED_LAKE_HYLIA))) {
        play->roomCtx.drawParams[0] = 87;
    }

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, gameplayFrames, gameplayFrames, 32, 32, 1,
                                        0, 0, 32, 32, 0, 0, 0, play->roomCtx.drawParams[0] + 168));
    gSPSegment(POLY_OPA_DISP++, 0x09,
               Gfx_TwoTexScrollEnvColor(play->state.gfxCtx, G_TX_RENDERTILE, -gameplayFrames, -gameplayFrames, 32, 32,
                                        1, 0, 0, 16, 64, 0, 0, 0, play->roomCtx.drawParams[0] + 168));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 255, 255, 255, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7097);
}

void* sZorasDomainEntranceTextures[] = {
    gZorasDomainDayEntranceTex,
    gZorasDomainNightEntranceTex,
};

void Scene_DrawConfigZorasDomain(PlayState* play) {
    u32 gameplayFrames;
    u32 var;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7123);

    gameplayFrames = play->gameplayFrames;
    var = 127 - (gameplayFrames * 1) % 128;
    if (LINK_IS_ADULT) {
        var = 0;
    }
    gSPSegment(POLY_OPA_DISP++, 0x0C,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 64, 32, 1, 0, var, 64, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gSPSegment(POLY_XLU_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sZorasDomainEntranceTextures[((void)0, gSaveContext.save.nightFlag)]));

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7147);
}

void Scene_DrawConfigZorasFountain(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7161);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(
        POLY_OPA_DISP++, 0x08,
        Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (gameplayFrames * 1) % 128, 0, 32, 32, 1, 0, 0, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 255 - (gameplayFrames * 2) % 256, 64, 64, 1, 0,
                                255 - (gameplayFrames * 2) % 256, 64, 64));
    gSPSegment(POLY_XLU_DISP++, 0x0A,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, (gameplayFrames * 1) % 128, 32, 32, 1, 0,
                                (gameplayFrames * 1) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7192);
}

void Scene_DrawConfigGerudoValley(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7206);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, (gameplayFrames * 3) % 1024, 32, 256, 1, 0,
                                (gameplayFrames * 3) % 1024, 32, 256));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, (gameplayFrames * 1) % 256, 64, 64, 1, 0,
                                (gameplayFrames * 1) % 256, 64, 64));
    gSPSegment(POLY_XLU_DISP++, 0x0A,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, (gameplayFrames * 2) % 128, 32, 32, 1, 0,
                                (gameplayFrames * 2) % 128, 32, 32));
    gSPSegment(POLY_OPA_DISP++, 0x0B,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 32, 32, 1, 0,
                                127 - (gameplayFrames * 3) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x0C,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, (gameplayFrames * 1) % 128, 32, 32, 1, 0,
                                (gameplayFrames * 1) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x0D,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, (gameplayFrames * 1) % 64, 16, 16, 1, 0,
                                (gameplayFrames * 1) % 64, 16, 16));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7260);
}

void Scene_DrawConfigLostWoods(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7274);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, gameplayFrames % 128, 0, 32, 16, 1,
                                gameplayFrames % 128, 0, 32, 16));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128, gameplayFrames % 128,
                                32, 32, 1, gameplayFrames % 128, gameplayFrames % 128, 32, 32));

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    if ((play->roomCtx.drawParams[0] == 0) && (INV_CONTENT(ITEM_COJIRO) == ITEM_COJIRO)) {
        if (play->roomCtx.drawParams[1] == 50) {
            Player_PlaySfx(GET_PLAYER(play), NA_SE_EV_CHICKEN_CRY_M);
            play->roomCtx.drawParams[0] = 1;
        }
        play->roomCtx.drawParams[1]++;
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7309);
}

void Scene_DrawConfigDesertColossus(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7323);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(
        POLY_OPA_DISP++, 0x08,
        Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 32, 32, 1, 0, 127 - gameplayFrames % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7339);
}

void* sGerudoFortressWallTextures[] = {
    gGerudoFortressNightWallTex,
    gGerudoFortressDayWallTex,
};

void Scene_DrawConfigGerudosFortress(PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7363);

    gSPSegment(POLY_OPA_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sGerudoFortressWallTextures[((void)0, gSaveContext.save.nightFlag)]));

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7371);
}

void Scene_DrawConfigHauntedWasteland(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7385);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, gameplayFrames % 128, 32, 32, 1, 0,
                                gameplayFrames % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, gameplayFrames % 128, 32, 32, 1, 0,
                                gameplayFrames % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7409);
}

void Scene_DrawConfigHyruleCastle(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7423);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 10) % 128, 32, 32, 1, gameplayFrames % 128,
                                (gameplayFrames * 10) % 128, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 3) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 3) % 128,
                                32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7443);
}

void Scene_DrawConfigDeathMountainTrail(PlayState* play) {
    Gfx* displayListHead = GRAPH_ALLOC(play->state.gfxCtx, 3 * sizeof(Gfx));

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7461);

    gSPSegment(POLY_XLU_DISP++, 0x08, displayListHead);

    if ((gSaveContext.save.dayTime > CLOCK_TIME(7, 0)) && (gSaveContext.save.dayTime <= CLOCK_TIME(18, 0))) {
        gSPEndDisplayList(displayListHead++);
    } else {
        if (gSaveContext.save.dayTime > CLOCK_TIME(18, 0)) {
            if (play->roomCtx.drawParams[0] != 255) {
                Math_StepToS(&play->roomCtx.drawParams[0], 255, 5);
            }
        } else if (gSaveContext.save.dayTime >= CLOCK_TIME(6, 0)) {
            if (play->roomCtx.drawParams[0] != 0) {
                Math_StepToS(&play->roomCtx.drawParams[0], 0, 10);
            }
        }

        gDPSetPrimColor(displayListHead++, 0, 0, 255, 255, 255, play->roomCtx.drawParams[0]);
        gSPDisplayList(displayListHead++, spot16_room_0DL_00AA48);
        gSPEndDisplayList(displayListHead++);
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7495);
}

void Scene_DrawConfigDeathMountainCrater(PlayState* play) {
    s8 sp6F = coss((play->gameplayFrames * 1500) & 0xFFFF) >> 8;
    s8 sp6E = coss((play->gameplayFrames * 1500) & 0xFFFF) >> 8;
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7512);

    gameplayFrames = play->gameplayFrames;
    sp6F = (sp6F >> 1) + 192;
    sp6E = (sp6E >> 1) + 192;

    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, gameplayFrames % 128, 32, 32, 1, 0,
                                gameplayFrames % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, sp6F, sp6E, 255, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7530);
}

void* sGoronCityEntranceTextures[] = {
    gGoronCityDayEntranceTex,
    gGoronCityNightEntranceTex,
};

void Scene_DrawConfigGoronCity(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7555);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 127 - gameplayFrames % 128, 32, 32, 1,
                                gameplayFrames % 128, 0, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    gSPSegment(POLY_XLU_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sGoronCityEntranceTextures[((void)0, gSaveContext.save.nightFlag)]));

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7578);
}

void* sLonLonRanchWindowTextures[] = {
    gLonLonRanchDayWindowTex,
    gLonLonRangeNightWindowsTex,
};

void Scene_DrawConfigLonLonRanch(PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7602);

    gSPSegment(POLY_OPA_DISP++, 0x08,
               SEGMENTED_TO_VIRTUAL(sLonLonRanchWindowTextures[((void)0, gSaveContext.save.nightFlag)]));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7615);
}

void Scene_DrawConfigFireTemple(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7630);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 127 - gameplayFrames % 128, 32, 32, 1,
                                127 - gameplayFrames % 128, 0, 32, 32));
    gSPSegment(POLY_OPA_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, (gameplayFrames * 3) % 128,
                                127 - (gameplayFrames * 6) % 128, 32, 32, 1, (gameplayFrames * 6) % 128,
                                127 - (gameplayFrames * 3) % 128, 32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 64);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 64);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7653);
}

f32 D_8012A398 = 0.0f;

void Scene_DrawConfigJabuJabu(PlayState* play) {
    static s16 D_8012A39C = 538;
    static s16 D_8012A3A0 = 4272;
    u32 gameplayFrames;
    f32 temp;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7712);

    gameplayFrames = play->gameplayFrames;
    if (play->sceneId == SCENE_JABU_JABU) {
        gSPSegment(POLY_OPA_DISP++, 0x08,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, gameplayFrames % 128,
                                    (gameplayFrames * 2) % 128, 32, 32, 1, 127 - gameplayFrames % 128,
                                    (gameplayFrames * 2) % 128, 32, 32));
        gSPSegment(POLY_OPA_DISP++, 0x0B,
                   Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 255 - (gameplayFrames * 4) % 256, 32, 64, 1,
                                    0, 255 - (gameplayFrames * 4) % 256, 32, 64));
    } else {
        gSPSegment(
            POLY_OPA_DISP++, 0x08,
            Gfx_TexScroll(play->state.gfxCtx, (127 - (gameplayFrames * 1)) % 128, (gameplayFrames * 1) % 128, 32, 32));
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    if (FrameAdvance_IsEnabled(play) != true) {

        D_8012A39C += 1820;
        D_8012A3A0 += 1820;

        temp = 0.020000001f;
        View_SetDistortionOrientation(&play->view,
                                      ((360.00018f / 65535.0f) * (M_PI / 180.0f)) * temp * Math_CosS(D_8012A39C),
                                      ((360.00018f / 65535.0f) * (M_PI / 180.0f)) * temp * Math_SinS(D_8012A39C),
                                      ((360.00018f / 65535.0f) * (M_PI / 180.0f)) * temp * Math_SinS(D_8012A3A0));
        View_SetDistortionScale(&play->view, 1.f + (0.79999995f * temp * Math_SinS(D_8012A3A0)),
                                1.f + (0.39999998f * temp * Math_CosS(D_8012A3A0)),
                                1.f + (1 * temp * Math_CosS(D_8012A39C)));
        View_SetDistortionSpeed(&play->view, 0.95f);

        switch (play->roomCtx.drawParams[0]) {
            case 0:
                break;
            case 1:
                if (play->roomCtx.drawParams[1] < 1200) {
                    play->roomCtx.drawParams[1] += 200;
                } else {
                    play->roomCtx.drawParams[0]++;
                }
                break;
            case 2:
                if (play->roomCtx.drawParams[1] > 0) {
                    play->roomCtx.drawParams[1] -= 30;
                } else {
                    play->roomCtx.drawParams[1] = 0;
                    play->roomCtx.drawParams[0] = 0;
                }
                break;
        }

        D_8012A398 += 0.15f + (play->roomCtx.drawParams[1] * 0.001f);
    }

    if (play->roomCtx.curRoom.num == 2) {
        Matrix_Scale(1.0f, sinf(D_8012A398) * 0.8f, 1.0f, MTXMODE_NEW);
    } else {
        Matrix_Scale(1.005f, sinf(D_8012A398) * 0.8f, 1.005f, MTXMODE_NEW);
    }

    gSPSegment(POLY_OPA_DISP++, 0x0D, MATRIX_FINALIZE(play->state.gfxCtx, "../z_scene_table.c", 7809));

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7811);
}

void Scene_DrawConfigInsideGanonsCastle(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7825);

    gameplayFrames = play->gameplayFrames;

    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 1) % 512, 32, 128, 1, gameplayFrames % 128,
                                (gameplayFrames * 1) % 512, 32, 128));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 1) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128,
                                32, 32));
    gSPSegment(POLY_OPA_DISP++, 0x0A,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 127 - gameplayFrames % 128,
                                (gameplayFrames * 1) % 128, 32, 32, 1, gameplayFrames % 128, (gameplayFrames * 1) % 128,
                                32, 32));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7852);
}

void Scene_DrawConfigInsideGanonsCastleCollapse(PlayState* play) {
    func_8009BEEC(play);
}

void Scene_DrawConfigGanonsTowerCollapseInterior(PlayState* play) {
    func_8009BEEC(play);
}

void Scene_DrawConfigBesitu(PlayState* play) {
    u32 gameplayFrames;

    OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7893);

    gameplayFrames = play->gameplayFrames;
    gSPSegment(POLY_OPA_DISP++, 0x08, Gfx_TexScroll(play->state.gfxCtx, 127 - (gameplayFrames * 2) % 128, 0, 32, 64));
    gSPSegment(POLY_OPA_DISP++, 0x09, Gfx_TexScroll(play->state.gfxCtx, 0, (gameplayFrames * 2) % 512, 128, 128));

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetEnvColor(POLY_OPA_DISP++, 128, 128, 128, 128);

    gDPPipeSync(POLY_XLU_DISP++);
    gDPSetEnvColor(POLY_XLU_DISP++, 128, 128, 128, 128);

    CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 7910);
}

#if !PLATFORM_N64 // Scene_Draw is at beginning of file in N64 versions

SceneDrawConfigFunc sSceneDrawConfigs[SDC_MAX] = {
    Scene_DrawConfigDefault,                     // SDC_DEFAULT
    Scene_DrawConfigHyruleField,                 // SDC_HYRULE_FIELD
    Scene_DrawConfigKakarikoVillage,             // SDC_KAKARIKO_VILLAGE
    Scene_DrawConfigZorasRiver,                  // SDC_ZORAS_RIVER
    Scene_DrawConfigKokiriForest,                // SDC_KOKIRI_FOREST
    Scene_DrawConfigLakeHylia,                   // SDC_LAKE_HYLIA
    Scene_DrawConfigZorasDomain,                 // SDC_ZORAS_DOMAIN
    Scene_DrawConfigZorasFountain,               // SDC_ZORAS_FOUNTAIN
    Scene_DrawConfigGerudoValley,                // SDC_GERUDO_VALLEY
    Scene_DrawConfigLostWoods,                   // SDC_LOST_WOODS
    Scene_DrawConfigDesertColossus,              // SDC_DESERT_COLOSSUS
    Scene_DrawConfigGerudosFortress,             // SDC_GERUDOS_FORTRESS
    Scene_DrawConfigHauntedWasteland,            // SDC_HAUNTED_WASTELAND
    Scene_DrawConfigHyruleCastle,                // SDC_HYRULE_CASTLE
    Scene_DrawConfigDeathMountainTrail,          // SDC_DEATH_MOUNTAIN_TRAIL
    Scene_DrawConfigDeathMountainCrater,         // SDC_DEATH_MOUNTAIN_CRATER
    Scene_DrawConfigGoronCity,                   // SDC_GORON_CITY
    Scene_DrawConfigLonLonRanch,                 // SDC_LON_LON_RANCH
    Scene_DrawConfigFireTemple,                  // SDC_FIRE_TEMPLE
    Scene_DrawConfigDekuTree,                    // SDC_DEKU_TREE
    Scene_DrawConfigDodongosCavern,              // SDC_DODONGOS_CAVERN
    Scene_DrawConfigJabuJabu,                    // SDC_JABU_JABU
    Scene_DrawConfigForestTemple,                // SDC_FOREST_TEMPLE
    Scene_DrawConfigWaterTemple,                 // SDC_WATER_TEMPLE
    Scene_DrawConfigShadowTempleAndWell,         // SDC_SHADOW_TEMPLE_AND_WELL
    Scene_DrawConfigSpiritTemple,                // SDC_SPIRIT_TEMPLE
    Scene_DrawConfigInsideGanonsCastle,          // SDC_INSIDE_GANONS_CASTLE
    Scene_DrawConfigGerudoTrainingGround,        // SDC_GERUDO_TRAINING_GROUND
    Scene_DrawConfigDekuTreeBoss,                // SDC_DEKU_TREE_BOSS
    Scene_DrawConfigWaterTempleBoss,             // SDC_WATER_TEMPLE_BOSS
    Scene_DrawConfigTempleOfTime,                // SDC_TEMPLE_OF_TIME
    Scene_DrawConfigGrottos,                     // SDC_GROTTOS
    Scene_DrawConfigChamberOfTheSages,           // SDC_CHAMBER_OF_THE_SAGES
    Scene_DrawConfigGreatFairyFountain,          // SDC_GREAT_FAIRYS_FOUNTAIN
    Scene_DrawConfigShootingGallery,             // SDC_SHOOTING_GALLERY
    Scene_DrawConfigCastleCourtyardGuards,       // SDC_CASTLE_COURTYARD_GUARDS
    Scene_DrawConfigOutsideGanonsCastle,         // SDC_OUTSIDE_GANONS_CASTLE
    Scene_DrawConfigIceCavern,                   // SDC_ICE_CAVERN
    Scene_DrawConfigGanonsTowerCollapseExterior, // SDC_GANONS_TOWER_COLLAPSE_EXTERIOR
    Scene_DrawConfigFairysFountain,              // SDC_FAIRYS_FOUNTAIN
    Scene_DrawConfigThievesHideout,              // SDC_THIEVES_HIDEOUT
    Scene_DrawConfigBombchuBowlingAlley,         // SDC_BOMBCHU_BOWLING_ALLEY
    Scene_DrawConfigRoyalFamilysTomb,            // SDC_ROYAL_FAMILYS_TOMB
    Scene_DrawConfigLakesideLaboratory,          // SDC_LAKESIDE_LABORATORY
    Scene_DrawConfigLonLonBuildings,             // SDC_LON_LON_BUILDINGS
    Scene_DrawConfigMarketGuardHouse,            // SDC_MARKET_GUARD_HOUSE
    Scene_DrawConfigPotionShopGranny,            // SDC_POTION_SHOP_GRANNY
    Scene_DrawConfigCalmWater,                   // SDC_CALM_WATER
    Scene_DrawConfigGraveExitLightShining,       // SDC_GRAVE_EXIT_LIGHT_SHINING
    Scene_DrawConfigBesitu,                      // SDC_BESITU
    Scene_DrawConfigFishingPond,                 // SDC_FISHING_POND
    Scene_DrawConfigGanonsTowerCollapseInterior, // SDC_GANONS_TOWER_COLLAPSE_INTERIOR
    Scene_DrawConfigInsideGanonsCastleCollapse,  // SDC_INSIDE_GANONS_CASTLE_COLLAPSE
};

void Scene_Draw(PlayState* play) {
#if DEBUG_FEATURES
    if (R_HREG_MODE == HREG_MODE_SCENE_CONFIG) {
        if (R_SCENE_CONFIG_INIT != HREG_MODE_SCENE_CONFIG) {
            R_SCENE_CONFIG_INIT = HREG_MODE_SCENE_CONFIG;
            R_SCENE_CONFIG_DRAW_DEFAULT_DLIST = 1;
            R_SCENE_CONFIG_DRAW_SCENE_CONFIG = 1;

            // these regs are not used in this mode
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

        OPEN_DISPS(play->state.gfxCtx, "../z_scene_table.c", 8104);

        if (R_SCENE_CONFIG_DRAW_DEFAULT_DLIST == 1) {
            gSPDisplayList(POLY_OPA_DISP++, sDefaultDisplayList);
            gSPDisplayList(POLY_XLU_DISP++, sDefaultDisplayList);
        }

        CLOSE_DISPS(play->state.gfxCtx, "../z_scene_table.c", 8109);

        if (R_SCENE_CONFIG_DRAW_SCENE_CONFIG == 1) {
            sSceneDrawConfigs[play->sceneDrawConfig](play);
        }
    } else {
        sSceneDrawConfigs[play->sceneDrawConfig](play);
    }
#else
    sSceneDrawConfigs[play->sceneDrawConfig](play);
#endif
}

#endif
