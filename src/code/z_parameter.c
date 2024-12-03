#include "global.h"
#include "terminal.h"
#include "versions.h"
#include "assets/textures/parameter_static/parameter_static.h"
#include "assets/textures/do_action_static/do_action_static.h"
#include "assets/textures/icon_item_static/icon_item_static.h"

typedef struct RestrictionFlags {
    /* 0x00 */ u8 sceneId;
    /* 0x01 */ u8 flags1;
    /* 0x02 */ u8 flags2;
    /* 0x03 */ u8 flags3;
} RestrictionFlags; // size = 0x4

static RestrictionFlags sRestrictionFlags[] = {
    { SCENE_HYRULE_FIELD, 0x00, 0x00, 0x10 },
    { SCENE_KAKARIKO_VILLAGE, 0x00, 0x00, 0x10 },
    { SCENE_GRAVEYARD, 0x00, 0x00, 0x10 },
    { SCENE_ZORAS_RIVER, 0x00, 0x00, 0x10 },
    { SCENE_KOKIRI_FOREST, 0x00, 0x00, 0x10 },
    { SCENE_SACRED_FOREST_MEADOW, 0x00, 0x00, 0x10 },
    { SCENE_LAKE_HYLIA, 0x00, 0x00, 0x10 },
    { SCENE_ZORAS_DOMAIN, 0x00, 0x00, 0x10 },
    { SCENE_ZORAS_FOUNTAIN, 0x00, 0x00, 0x10 },
    { SCENE_GERUDO_VALLEY, 0x00, 0x00, 0x10 },
    { SCENE_LOST_WOODS, 0x00, 0x00, 0x10 },
    { SCENE_DESERT_COLOSSUS, 0x00, 0x00, 0x10 },
    { SCENE_GERUDOS_FORTRESS, 0x00, 0x00, 0x10 },
    { SCENE_HAUNTED_WASTELAND, 0x00, 0x00, 0x10 },
    { SCENE_HYRULE_CASTLE, 0x00, 0x00, 0x10 },
    { SCENE_OUTSIDE_GANONS_CASTLE, 0x00, 0x00, 0x10 },
    { SCENE_DEATH_MOUNTAIN_TRAIL, 0x00, 0x00, 0x10 },
    { SCENE_DEATH_MOUNTAIN_CRATER, 0x00, 0x00, 0x10 },
    { SCENE_GORON_CITY, 0x00, 0x00, 0x10 },
    { SCENE_LON_LON_RANCH, 0x00, 0x00, 0x10 },
    { SCENE_TEMPLE_OF_TIME, 0x00, 0x10, 0x15 },
    { SCENE_CHAMBER_OF_THE_SAGES, 0xA2, 0xAA, 0xAA },
    { SCENE_SHOOTING_GALLERY, 0x11, 0x55, 0x55 },
    { SCENE_CASTLE_COURTYARD_GUARDS_DAY, 0x11, 0x55, 0x55 },
    { SCENE_CASTLE_COURTYARD_GUARDS_NIGHT, 0x11, 0x55, 0x55 },
    { SCENE_REDEAD_GRAVE, 0x00, 0x00, 0xD0 },
    { SCENE_GRAVE_WITH_FAIRYS_FOUNTAIN, 0x00, 0x00, 0xD0 },
    { SCENE_ROYAL_FAMILYS_TOMB, 0x00, 0x00, 0xD0 },
    { SCENE_GREAT_FAIRYS_FOUNTAIN_MAGIC, 0x00, 0x00, 0x10 },
    { SCENE_FAIRYS_FOUNTAIN, 0x00, 0x00, 0xD0 },
    { SCENE_GREAT_FAIRYS_FOUNTAIN_SPELLS, 0x00, 0x00, 0x10 },
    { SCENE_GANONS_TOWER_COLLAPSE_EXTERIOR, 0x00, 0x05, 0x50 },
    { SCENE_CASTLE_COURTYARD_ZELDA, 0x00, 0x05, 0x54 },
    { SCENE_FISHING_POND, 0x11, 0x55, 0x55 },
    { SCENE_BOMBCHU_BOWLING_ALLEY, 0x11, 0x55, 0x55 },
    { SCENE_LON_LON_BUILDINGS, 0x00, 0x10, 0x15 },
    { SCENE_MARKET_GUARD_HOUSE, 0x00, 0x10, 0x14 },
    { SCENE_POTION_SHOP_GRANNY, 0x10, 0x15, 0x55 },
    { SCENE_TREASURE_BOX_SHOP, 0x10, 0x15, 0x55 },
    { SCENE_HOUSE_OF_SKULLTULA, 0x00, 0x10, 0x15 },
    { SCENE_MARKET_ENTRANCE_DAY, 0x00, 0x10, 0x15 },
    { SCENE_MARKET_ENTRANCE_NIGHT, 0x00, 0x10, 0x15 },
    { SCENE_MARKET_ENTRANCE_RUINS, 0x00, 0x10, 0xD5 },
    { SCENE_MARKET_DAY, 0x00, 0x10, 0x15 },
    { SCENE_MARKET_NIGHT, 0x00, 0x10, 0x15 },
    { SCENE_MARKET_RUINS, 0x00, 0x10, 0xD5 },
    { SCENE_BACK_ALLEY_DAY, 0x00, 0x10, 0x15 },
    { SCENE_BACK_ALLEY_NIGHT, 0x00, 0x10, 0x15 },
    { SCENE_TEMPLE_OF_TIME_EXTERIOR_DAY, 0x00, 0x10, 0x15 },
    { SCENE_TEMPLE_OF_TIME_EXTERIOR_NIGHT, 0x00, 0x10, 0x15 },
    { SCENE_TEMPLE_OF_TIME_EXTERIOR_RUINS, 0x00, 0x10, 0xD5 },
    { SCENE_LINKS_HOUSE, 0x10, 0x10, 0x15 },
    { SCENE_KAKARIKO_CENTER_GUEST_HOUSE, 0x10, 0x10, 0x15 },
    { SCENE_BACK_ALLEY_HOUSE, 0x10, 0x10, 0x15 },
    { SCENE_KNOW_IT_ALL_BROS_HOUSE, 0x10, 0x10, 0x15 },
    { SCENE_TWINS_HOUSE, 0x10, 0x10, 0x15 },
    { SCENE_MIDOS_HOUSE, 0x10, 0x10, 0x15 },
    { SCENE_SARIAS_HOUSE, 0x10, 0x10, 0x15 },
    { SCENE_STABLE, 0x10, 0x10, 0x15 },
    { SCENE_GRAVEKEEPERS_HUT, 0x10, 0x10, 0x15 },
    { SCENE_DOG_LADY_HOUSE, 0x10, 0x10, 0x15 },
    { SCENE_IMPAS_HOUSE, 0x10, 0x10, 0x15 },
    { SCENE_LAKESIDE_LABORATORY, 0x00, 0x10, 0x15 },
    { SCENE_CARPENTERS_TENT, 0x10, 0x10, 0x15 },
    { SCENE_BAZAAR, 0x10, 0x10, 0x15 },
    { SCENE_KOKIRI_SHOP, 0x10, 0x10, 0x15 },
    { SCENE_GORON_SHOP, 0x10, 0x10, 0x15 },
    { SCENE_ZORA_SHOP, 0x10, 0x10, 0x15 },
    { SCENE_POTION_SHOP_KAKARIKO, 0x10, 0x10, 0x15 },
    { SCENE_POTION_SHOP_MARKET, 0x10, 0x10, 0x15 },
    { SCENE_BOMBCHU_SHOP, 0x10, 0x10, 0x15 },
    { SCENE_HAPPY_MASK_SHOP, 0x10, 0x10, 0x15 },
    { SCENE_GERUDO_TRAINING_GROUND, 0x00, 0x03, 0x10 },
    { SCENE_DEKU_TREE, 0x00, 0x00, 0x00 },
    { SCENE_DEKU_TREE_BOSS, 0x00, 0x45, 0x50 },
    { SCENE_DODONGOS_CAVERN, 0x00, 0x00, 0x00 },
    { SCENE_DODONGOS_CAVERN_BOSS, 0x00, 0x45, 0x50 },
    { SCENE_JABU_JABU, 0x00, 0x00, 0x00 },
    { SCENE_JABU_JABU_BOSS, 0x00, 0x45, 0x50 },
    { SCENE_FOREST_TEMPLE, 0x00, 0x00, 0x00 },
    { SCENE_FOREST_TEMPLE_BOSS, 0x00, 0x45, 0x50 },
    { SCENE_BOTTOM_OF_THE_WELL, 0x00, 0x00, 0x00 },
    { SCENE_SHADOW_TEMPLE, 0x00, 0x00, 0x00 },
    { SCENE_SHADOW_TEMPLE_BOSS, 0x00, 0x45, 0x50 },
    { SCENE_FIRE_TEMPLE, 0x00, 0x00, 0x00 },
    { SCENE_FIRE_TEMPLE_BOSS, 0x00, 0x45, 0x50 },
    { SCENE_WATER_TEMPLE, 0x00, 0x00, 0x00 },
    { SCENE_WATER_TEMPLE_BOSS, 0x00, 0x45, 0x50 },
    { SCENE_SPIRIT_TEMPLE, 0x00, 0x00, 0x00 },
    { SCENE_SPIRIT_TEMPLE_BOSS, 0x00, 0x45, 0x50 },
    { SCENE_GANONS_TOWER, 0x00, 0x00, 0x00 },
    { SCENE_GANONDORF_BOSS, 0x00, 0x45, 0x50 },
    { SCENE_ICE_CAVERN, 0x00, 0x00, 0xC0 },
    { SCENE_WINDMILL_AND_DAMPES_GRAVE, 0x00, 0x03, 0x14 },
    { SCENE_INSIDE_GANONS_CASTLE, 0x00, 0x03, 0x10 },
    { SCENE_GANON_BOSS, 0x00, 0x45, 0x50 },
    { SCENE_GANONS_TOWER_COLLAPSE_INTERIOR, 0x00, 0x05, 0x50 },
    { SCENE_INSIDE_GANONS_CASTLE_COLLAPSE, 0x00, 0x05, 0x50 },
    { SCENE_THIEVES_HIDEOUT, 0x00, 0x00, 0x10 },
    { SCENE_GROTTOS, 0x00, 0x00, 0xD0 },
    { 0xFF, 0x00, 0x00, 0x00 },
};

static s16 sHBAScoreTier = 0;
static u16 sHBAScoreDigits[] = { 0, 0, 0, 0 };

static u16 sCUpInvisible = 0;
static u16 sCUpTimer = 0;

s16 gSpoilingItems[] = { ITEM_ODD_MUSHROOM, ITEM_EYEBALL_FROG, ITEM_EYE_DROPS };
s16 gSpoilingItemReverts[] = { ITEM_COJIRO, ITEM_PRESCRIPTION, ITEM_PRESCRIPTION };

static s16 sMagicBorderR = 255;
static s16 sMagicBorderG = 255;
static s16 sMagicBorderB = 255;

static s16 sExtraItemBases[] = {
    ITEM_DEKU_STICK, // ITEM_DEKU_STICKS_5
    ITEM_DEKU_STICK, // ITEM_DEKU_STICKS_10
    ITEM_DEKU_NUT,   // ITEM_DEKU_NUTS_5
    ITEM_DEKU_NUT,   // ITEM_DEKU_NUTS_10
    ITEM_BOMB,       // ITEM_BOMBS_5
    ITEM_BOMB,       // ITEM_BOMBS_10
    ITEM_BOMB,       // ITEM_BOMBS_20
    ITEM_BOMB,       // ITEM_BOMBS_30
    ITEM_BOW,        // ITEM_ARROWS_5
    ITEM_BOW,        // ITEM_ARROWS_10
    ITEM_BOW,        // ITEM_ARROWS_30
    ITEM_DEKU_SEEDS, // ITEM_DEKU_SEEDS_30
    ITEM_BOMBCHU,    // ITEM_BOMBCHUS_5
    ITEM_BOMBCHU,    // ITEM_BOMBCHUS_20
    ITEM_DEKU_STICK, // ITEM_DEKU_STICK_UPGRADE_20
    ITEM_DEKU_STICK, // ITEM_DEKU_STICK_UPGRADE_30
    ITEM_DEKU_NUT,   // ITEM_DEKU_NUT_UPGRADE_30
    ITEM_DEKU_NUT,   // ITEM_DEKU_NUT_UPGRADE_40
};

static s16 sEnvHazard = PLAYER_ENV_HAZARD_NONE;
static s16 sEnvHazardActive = false;

static Gfx sSetupDL_80125A60[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_ZBUFFER | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN |
                          G_TEXTURE_GEN_LINEAR | G_SHADING_SMOOTH | G_LOD),
    gsDPSetOtherMode(G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_1PRIMITIVE,
                     G_AC_NONE | G_ZS_PIXEL | G_RM_CLD_SURF | G_RM_CLD_SURF2),
    gsDPSetCombineMode(G_CC_PRIMITIVE, G_CC_PRIMITIVE),
    gsSPEndDisplayList(),
};

// original name: "alpha_change"
void Interface_ChangeHudVisibilityMode(u16 hudVisibilityMode) {
    if (hudVisibilityMode != gSaveContext.hudVisibilityMode) {
        PRINTF("ＡＬＰＨＡーＴＹＰＥ＝%d  LAST_TIME_TYPE=%d\n", hudVisibilityMode, gSaveContext.prevHudVisibilityMode);
        gSaveContext.hudVisibilityMode = gSaveContext.nextHudVisibilityMode = hudVisibilityMode;
        gSaveContext.hudVisibilityModeTimer = 1;
    }
}

/**
 * Raise button alphas on the HUD to the requested value
 * Apply a set value of 70 to disabled buttons
 */
void Interface_RaiseButtonAlphas(PlayState* play, s16 risingAlpha) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;

    if (gSaveContext.buttonStatus[0] == BTN_DISABLED) {
        if (interfaceCtx->bAlpha != 70) {
            interfaceCtx->bAlpha = 70;
        }
    } else {
        if (interfaceCtx->bAlpha != 255) {
            interfaceCtx->bAlpha = risingAlpha;
        }
    }

    if (gSaveContext.buttonStatus[1] == BTN_DISABLED) {
        if (interfaceCtx->cLeftAlpha != 70) {
            interfaceCtx->cLeftAlpha = 70;
        }
    } else {
        if (interfaceCtx->cLeftAlpha != 255) {
            interfaceCtx->cLeftAlpha = risingAlpha;
        }
    }

    if (gSaveContext.buttonStatus[2] == BTN_DISABLED) {
        if (interfaceCtx->cDownAlpha != 70) {
            interfaceCtx->cDownAlpha = 70;
        }
    } else {
        if (interfaceCtx->cDownAlpha != 255) {
            interfaceCtx->cDownAlpha = risingAlpha;
        }
    }

    if (gSaveContext.buttonStatus[3] == BTN_DISABLED) {
        if (interfaceCtx->cRightAlpha != 70) {
            interfaceCtx->cRightAlpha = 70;
        }
    } else {
        if (interfaceCtx->cRightAlpha != 255) {
            interfaceCtx->cRightAlpha = risingAlpha;
        }
    }

    if (gSaveContext.buttonStatus[4] == BTN_DISABLED) {
        if (interfaceCtx->aAlpha != 70) {
            interfaceCtx->aAlpha = 70;
        }
    } else {
        if (interfaceCtx->aAlpha != 255) {
            interfaceCtx->aAlpha = risingAlpha;
        }
    }
}

/**
 * Lower button alphas on the HUD to the requested value
 * if forceRisingButtonAlphas is set, then instead raise button alphas
 */
void Interface_DimButtonAlphas(PlayState* play, s16 dimmingAlpha, s16 risingAlpha) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;

    if (gSaveContext.forceRisingButtonAlphas) {
        Interface_RaiseButtonAlphas(play, risingAlpha);
        return;
    }

    if ((interfaceCtx->bAlpha != 0) && (interfaceCtx->bAlpha > dimmingAlpha)) {
        interfaceCtx->bAlpha = dimmingAlpha;
    }

    if ((interfaceCtx->aAlpha != 0) && (interfaceCtx->aAlpha > dimmingAlpha)) {
        interfaceCtx->aAlpha = dimmingAlpha;
    }

    if ((interfaceCtx->cLeftAlpha != 0) && (interfaceCtx->cLeftAlpha > dimmingAlpha)) {
        interfaceCtx->cLeftAlpha = dimmingAlpha;
    }

    if ((interfaceCtx->cDownAlpha != 0) && (interfaceCtx->cDownAlpha > dimmingAlpha)) {
        interfaceCtx->cDownAlpha = dimmingAlpha;
    }

    if ((interfaceCtx->cRightAlpha != 0) && (interfaceCtx->cRightAlpha > dimmingAlpha)) {
        interfaceCtx->cRightAlpha = dimmingAlpha;
    }
}

void Interface_UpdateHudAlphas(PlayState* play, s16 dimmingAlpha) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    s16 risingAlpha = 255 - dimmingAlpha;

    switch (gSaveContext.nextHudVisibilityMode) {
        case HUD_VISIBILITY_NOTHING:
        case HUD_VISIBILITY_NOTHING_ALT:
        case HUD_VISIBILITY_B:
            PRINTF("a_alpha=%d, c_alpha=%d   →   ", interfaceCtx->aAlpha, interfaceCtx->cLeftAlpha);

            if (gSaveContext.nextHudVisibilityMode == HUD_VISIBILITY_B) {
                if (interfaceCtx->bAlpha != 255) {
                    interfaceCtx->bAlpha = risingAlpha;
                }
            } else {
                if ((interfaceCtx->bAlpha != 0) && (interfaceCtx->bAlpha > dimmingAlpha)) {
                    interfaceCtx->bAlpha = dimmingAlpha;
                }
            }

            if ((interfaceCtx->aAlpha != 0) && (interfaceCtx->aAlpha > dimmingAlpha)) {
                interfaceCtx->aAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->cLeftAlpha != 0) && (interfaceCtx->cLeftAlpha > dimmingAlpha)) {
                interfaceCtx->cLeftAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->cDownAlpha != 0) && (interfaceCtx->cDownAlpha > dimmingAlpha)) {
                interfaceCtx->cDownAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->cRightAlpha != 0) && (interfaceCtx->cRightAlpha > dimmingAlpha)) {
                interfaceCtx->cRightAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->healthAlpha != 0) && (interfaceCtx->healthAlpha > dimmingAlpha)) {
                interfaceCtx->healthAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->magicAlpha != 0) && (interfaceCtx->magicAlpha > dimmingAlpha)) {
                interfaceCtx->magicAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > dimmingAlpha)) {
                interfaceCtx->minimapAlpha = dimmingAlpha;
            }

            PRINTF("a_alpha=%d, c_alpha=%d\n", interfaceCtx->aAlpha, interfaceCtx->cLeftAlpha);

            break;

        case HUD_VISIBILITY_HEARTS_FORCE:
            // aAlpha is immediately overwritten in Interface_DimButtonAlphas
            if ((interfaceCtx->aAlpha != 0) && (interfaceCtx->aAlpha > dimmingAlpha)) {
                interfaceCtx->aAlpha = dimmingAlpha;
            }

            Interface_DimButtonAlphas(play, dimmingAlpha, risingAlpha);

            if ((interfaceCtx->magicAlpha != 0) && (interfaceCtx->magicAlpha > dimmingAlpha)) {
                interfaceCtx->magicAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > dimmingAlpha)) {
                interfaceCtx->minimapAlpha = dimmingAlpha;
            }

            if (interfaceCtx->healthAlpha != 255) {
                interfaceCtx->healthAlpha = risingAlpha;
            }

            break;

        case HUD_VISIBILITY_A:
            if ((interfaceCtx->bAlpha != 0) && (interfaceCtx->bAlpha > dimmingAlpha)) {
                interfaceCtx->bAlpha = dimmingAlpha;
            }

            // aAlpha is immediately overwritten below
            if ((interfaceCtx->aAlpha != 0) && (interfaceCtx->aAlpha > dimmingAlpha)) {
                interfaceCtx->aAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->cLeftAlpha != 0) && (interfaceCtx->cLeftAlpha > dimmingAlpha)) {
                interfaceCtx->cLeftAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->cDownAlpha != 0) && (interfaceCtx->cDownAlpha > dimmingAlpha)) {
                interfaceCtx->cDownAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->cRightAlpha != 0) && (interfaceCtx->cRightAlpha > dimmingAlpha)) {
                interfaceCtx->cRightAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->healthAlpha != 0) && (interfaceCtx->healthAlpha > dimmingAlpha)) {
                interfaceCtx->healthAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->magicAlpha != 0) && (interfaceCtx->magicAlpha > dimmingAlpha)) {
                interfaceCtx->magicAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > dimmingAlpha)) {
                interfaceCtx->minimapAlpha = dimmingAlpha;
            }

            if (interfaceCtx->aAlpha != 255) {
                interfaceCtx->aAlpha = risingAlpha;
            }

            break;

        case HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE:
            Interface_DimButtonAlphas(play, dimmingAlpha, risingAlpha);

            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > dimmingAlpha)) {
                interfaceCtx->minimapAlpha = dimmingAlpha;
            }

            // aAlpha overwrites the value set in Interface_DimButtonAlphas
            if (interfaceCtx->aAlpha != 255) {
                interfaceCtx->aAlpha = risingAlpha;
            }

            if (interfaceCtx->healthAlpha != 255) {
                interfaceCtx->healthAlpha = risingAlpha;
            }

            if (interfaceCtx->magicAlpha != 255) {
                interfaceCtx->magicAlpha = risingAlpha;
            }

            break;

        case HUD_VISIBILITY_A_HEARTS_MAGIC_MINIMAP_FORCE:
            Interface_DimButtonAlphas(play, dimmingAlpha, risingAlpha);

            // aAlpha overwrites the value set in Interface_DimButtonAlphas
            if (interfaceCtx->aAlpha != 255) {
                interfaceCtx->aAlpha = risingAlpha;
            }

            if (interfaceCtx->healthAlpha != 255) {
                interfaceCtx->healthAlpha = risingAlpha;
            }

            if (interfaceCtx->magicAlpha != 255) {
                interfaceCtx->magicAlpha = risingAlpha;
            }

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
                    if (interfaceCtx->minimapAlpha < 170) {
                        interfaceCtx->minimapAlpha = risingAlpha;
                    } else {
                        interfaceCtx->minimapAlpha = 170;
                    }
                    break;

                default:
                    if (interfaceCtx->minimapAlpha != 255) {
                        interfaceCtx->minimapAlpha = risingAlpha;
                    }
                    break;
            }
            break;

        case HUD_VISIBILITY_ALL_NO_MINIMAP_BY_BTN_STATUS:
            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > dimmingAlpha)) {
                interfaceCtx->minimapAlpha = dimmingAlpha;
            }

            Interface_RaiseButtonAlphas(play, risingAlpha);

            if (interfaceCtx->healthAlpha != 255) {
                interfaceCtx->healthAlpha = risingAlpha;
            }

            if (interfaceCtx->magicAlpha != 255) {
                interfaceCtx->magicAlpha = risingAlpha;
            }

            break;

        case HUD_VISIBILITY_HEARTS_MAGIC:
            if ((interfaceCtx->bAlpha != 0) && (interfaceCtx->bAlpha > dimmingAlpha)) {
                interfaceCtx->bAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->aAlpha != 0) && (interfaceCtx->aAlpha > dimmingAlpha)) {
                interfaceCtx->aAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->cLeftAlpha != 0) && (interfaceCtx->cLeftAlpha > dimmingAlpha)) {
                interfaceCtx->cLeftAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->cDownAlpha != 0) && (interfaceCtx->cDownAlpha > dimmingAlpha)) {
                interfaceCtx->cDownAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->cRightAlpha != 0) && (interfaceCtx->cRightAlpha > dimmingAlpha)) {
                interfaceCtx->cRightAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > dimmingAlpha)) {
                interfaceCtx->minimapAlpha = dimmingAlpha;
            }

            if (interfaceCtx->healthAlpha != 255) {
                interfaceCtx->healthAlpha = risingAlpha;
            }

            if (interfaceCtx->magicAlpha != 255) {
                interfaceCtx->magicAlpha = risingAlpha;
            }

            break;

        case HUD_VISIBILITY_B_ALT:
            if ((interfaceCtx->aAlpha != 0) && (interfaceCtx->aAlpha > dimmingAlpha)) {
                interfaceCtx->aAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->cLeftAlpha != 0) && (interfaceCtx->cLeftAlpha > dimmingAlpha)) {
                interfaceCtx->cLeftAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->cDownAlpha != 0) && (interfaceCtx->cDownAlpha > dimmingAlpha)) {
                interfaceCtx->cDownAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->cRightAlpha != 0) && (interfaceCtx->cRightAlpha > dimmingAlpha)) {
                interfaceCtx->cRightAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->healthAlpha != 0) && (interfaceCtx->healthAlpha > dimmingAlpha)) {
                interfaceCtx->healthAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->magicAlpha != 0) && (interfaceCtx->magicAlpha > dimmingAlpha)) {
                interfaceCtx->magicAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > dimmingAlpha)) {
                interfaceCtx->minimapAlpha = dimmingAlpha;
            }

            if (interfaceCtx->bAlpha != 255) {
                interfaceCtx->bAlpha = risingAlpha;
            }

            break;

        case HUD_VISIBILITY_HEARTS:
            if ((interfaceCtx->bAlpha != 0) && (interfaceCtx->bAlpha > dimmingAlpha)) {
                interfaceCtx->bAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->aAlpha != 0) && (interfaceCtx->aAlpha > dimmingAlpha)) {
                interfaceCtx->aAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->cLeftAlpha != 0) && (interfaceCtx->cLeftAlpha > dimmingAlpha)) {
                interfaceCtx->cLeftAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->cDownAlpha != 0) && (interfaceCtx->cDownAlpha > dimmingAlpha)) {
                interfaceCtx->cDownAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->cRightAlpha != 0) && (interfaceCtx->cRightAlpha > dimmingAlpha)) {
                interfaceCtx->cRightAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > dimmingAlpha)) {
                interfaceCtx->minimapAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->magicAlpha != 0) && (interfaceCtx->magicAlpha > dimmingAlpha)) {
                interfaceCtx->magicAlpha = dimmingAlpha;
            }

            if (interfaceCtx->healthAlpha != 255) {
                interfaceCtx->healthAlpha = risingAlpha;
            }

            break;

        case HUD_VISIBILITY_A_B_MINIMAP:
            if (interfaceCtx->aAlpha != 255) {
                interfaceCtx->aAlpha = risingAlpha;
            }

            if (interfaceCtx->bAlpha != 255) {
                interfaceCtx->bAlpha = risingAlpha;
            }

            if (interfaceCtx->minimapAlpha != 255) {
                interfaceCtx->minimapAlpha = risingAlpha;
            }

            if ((interfaceCtx->cLeftAlpha != 0) && (interfaceCtx->cLeftAlpha > dimmingAlpha)) {
                interfaceCtx->cLeftAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->cDownAlpha != 0) && (interfaceCtx->cDownAlpha > dimmingAlpha)) {
                interfaceCtx->cDownAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->cRightAlpha != 0) && (interfaceCtx->cRightAlpha > dimmingAlpha)) {
                interfaceCtx->cRightAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->magicAlpha != 0) && (interfaceCtx->magicAlpha > dimmingAlpha)) {
                interfaceCtx->magicAlpha = dimmingAlpha;
            }

            if ((interfaceCtx->healthAlpha != 0) && (interfaceCtx->healthAlpha > dimmingAlpha)) {
                interfaceCtx->healthAlpha = dimmingAlpha;
            }

            break;

        case HUD_VISIBILITY_HEARTS_MAGIC_FORCE:
            Interface_DimButtonAlphas(play, dimmingAlpha, risingAlpha);

            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > dimmingAlpha)) {
                interfaceCtx->minimapAlpha = dimmingAlpha;
            }

            // aAlpha overwrites the value set in Interface_DimButtonAlphas
            if ((interfaceCtx->aAlpha != 0) && (interfaceCtx->aAlpha > dimmingAlpha)) {
                interfaceCtx->aAlpha = dimmingAlpha;
            }

            if (interfaceCtx->healthAlpha != 255) {
                interfaceCtx->healthAlpha = risingAlpha;
            }

            if (interfaceCtx->magicAlpha != 255) {
                interfaceCtx->magicAlpha = risingAlpha;
            }

            break;
    }

    if ((play->roomCtx.curRoom.type == ROOM_TYPE_DUNGEON) && (interfaceCtx->minimapAlpha >= 255)) {
        interfaceCtx->minimapAlpha = 255;
    }
}

void func_80083108(PlayState* play) {
    MessageContext* msgCtx = &play->msgCtx;
    Player* player = GET_PLAYER(play);
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    s16 i;
    s16 sp28 = false;

    if ((gSaveContext.save.cutsceneIndex < 0xFFF0) ||
        ((play->sceneId == SCENE_LON_LON_RANCH) && (gSaveContext.save.cutsceneIndex == 0xFFF0))) {
        gSaveContext.forceRisingButtonAlphas = false;

        if ((player->stateFlags1 & PLAYER_STATE1_23) || (play->shootingGalleryStatus > 1) ||
            ((play->sceneId == SCENE_BOMBCHU_BOWLING_ALLEY) && Flags_GetSwitch(play, 0x38))) {
            if (gSaveContext.save.info.equips.buttonItems[0] != ITEM_NONE) {
                gSaveContext.forceRisingButtonAlphas = true;

                if (gSaveContext.buttonStatus[0] == BTN_DISABLED) {
                    gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                        gSaveContext.buttonStatus[3] = BTN_ENABLED;
                }

                if ((gSaveContext.save.info.equips.buttonItems[0] != ITEM_SLINGSHOT) &&
                    (gSaveContext.save.info.equips.buttonItems[0] != ITEM_BOW) &&
                    (gSaveContext.save.info.equips.buttonItems[0] != ITEM_BOMBCHU) &&
                    (gSaveContext.save.info.equips.buttonItems[0] != ITEM_NONE)) {
                    gSaveContext.buttonStatus[0] = gSaveContext.save.info.equips.buttonItems[0];

                    if ((play->sceneId == SCENE_BOMBCHU_BOWLING_ALLEY) && Flags_GetSwitch(play, 0x38)) {
                        gSaveContext.save.info.equips.buttonItems[0] = ITEM_BOMBCHU;
                        Interface_LoadItemIcon1(play, 0);
                    } else {
                        gSaveContext.save.info.equips.buttonItems[0] = ITEM_BOW;
                        if (play->shootingGalleryStatus > 1) {
                            if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
                                gSaveContext.save.info.equips.buttonItems[0] = ITEM_SLINGSHOT;
                            }

                            Interface_LoadItemIcon1(play, 0);
                        } else {
                            if (gSaveContext.save.info.inventory.items[SLOT_BOW] == ITEM_NONE) {
                                gSaveContext.save.info.equips.buttonItems[0] = ITEM_NONE;
                            } else {
                                Interface_LoadItemIcon1(play, 0);
                            }
                        }
                    }

                    gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] = gSaveContext.buttonStatus[3] =
                        BTN_DISABLED;
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_A_HEARTS_MAGIC_MINIMAP_FORCE);
                }

                if (play->transitionMode != TRANS_MODE_OFF) {
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING);
                } else if (gSaveContext.minigameState == 1) {
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_B);
                } else if (play->shootingGalleryStatus > 1) {
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_B);
                } else if ((play->sceneId == SCENE_BOMBCHU_BOWLING_ALLEY) && Flags_GetSwitch(play, 0x38)) {
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_B);
                } else if (player->stateFlags1 & PLAYER_STATE1_23) {
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_A_B_MINIMAP);
                }
            } else {
                if (player->stateFlags1 & PLAYER_STATE1_23) {
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_A_B_MINIMAP);
                }
            }
        } else if (play->sceneId == SCENE_CHAMBER_OF_THE_SAGES) {
            Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_NOTHING);
        } else if (play->sceneId == SCENE_FISHING_POND) {
            // should likely be set to true
            gSaveContext.forceRisingButtonAlphas = 2;
            if (play->interfaceCtx.unk_260 != 0) {
                if (gSaveContext.save.info.equips.buttonItems[0] != ITEM_FISHING_POLE) {
                    gSaveContext.buttonStatus[0] = gSaveContext.save.info.equips.buttonItems[0];
                    gSaveContext.save.info.equips.buttonItems[0] = ITEM_FISHING_POLE;
                    gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
                    Interface_LoadItemIcon1(play, 0);
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_A_B_MINIMAP);
                }

                if (gSaveContext.hudVisibilityMode != HUD_VISIBILITY_A_B_MINIMAP) {
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_A_B_MINIMAP);
                }
            } else if (gSaveContext.save.info.equips.buttonItems[0] == ITEM_FISHING_POLE) {
                gSaveContext.save.info.equips.buttonItems[0] = gSaveContext.buttonStatus[0];
                gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;

                if (gSaveContext.save.info.equips.buttonItems[0] != ITEM_NONE) {
                    Interface_LoadItemIcon1(play, 0);
                }

                gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                    gSaveContext.buttonStatus[3] = BTN_DISABLED;
                Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
            } else {
                if (gSaveContext.buttonStatus[0] == BTN_ENABLED) {
                    gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
                }

                gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                    gSaveContext.buttonStatus[3] = BTN_DISABLED;
                Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
            }
        } else if (msgCtx->msgMode == MSGMODE_NONE) {
            if ((Player_GetEnvironmentalHazard(play) >= PLAYER_ENV_HAZARD_UNDERWATER_FLOOR) &&
                (Player_GetEnvironmentalHazard(play) <= PLAYER_ENV_HAZARD_UNDERWATER_FREE)) {
                if (gSaveContext.buttonStatus[0] != BTN_DISABLED) {
                    sp28 = true;
                }

                gSaveContext.buttonStatus[0] = BTN_DISABLED;

                for (i = 1; i < 4; i++) {
                    if (Player_GetEnvironmentalHazard(play) == PLAYER_ENV_HAZARD_UNDERWATER_FLOOR) {
                        if ((gSaveContext.save.info.equips.buttonItems[i] != ITEM_HOOKSHOT) &&
                            (gSaveContext.save.info.equips.buttonItems[i] != ITEM_LONGSHOT)) {
                            if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                                sp28 = true;
                            }

                            gSaveContext.buttonStatus[i] = BTN_DISABLED;
                        } else {
                            if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                sp28 = true;
                            }

                            gSaveContext.buttonStatus[i] = BTN_ENABLED;
                        }
                    } else {
                        if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                            sp28 = true;
                        }

                        gSaveContext.buttonStatus[i] = BTN_DISABLED;
                    }
                }

                if (sp28) {
                    gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
                }

                Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
            } else if ((player->stateFlags1 & PLAYER_STATE1_21) || (player->stateFlags2 & PLAYER_STATE2_CRAWLING)) {
                if (gSaveContext.buttonStatus[0] != BTN_DISABLED) {
                    gSaveContext.buttonStatus[0] = BTN_DISABLED;
                    gSaveContext.buttonStatus[1] = BTN_DISABLED;
                    gSaveContext.buttonStatus[2] = BTN_DISABLED;
                    gSaveContext.buttonStatus[3] = BTN_DISABLED;
                    gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
                    Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
                }
            } else if (GET_EVENTINF_HORSES_STATE() == EVENTINF_HORSES_STATE_1) {
                if (player->stateFlags1 & PLAYER_STATE1_23) {
                    if ((gSaveContext.save.info.equips.buttonItems[0] != ITEM_NONE) &&
                        (gSaveContext.save.info.equips.buttonItems[0] != ITEM_BOW)) {
                        if (gSaveContext.save.info.inventory.items[SLOT_BOW] == ITEM_NONE) {
                            gSaveContext.save.info.equips.buttonItems[0] = ITEM_NONE;
                        } else {
                            gSaveContext.save.info.equips.buttonItems[0] = ITEM_BOW;
                            sp28 = true;
                        }
                    }
                } else {
                    if ((gSaveContext.save.info.equips.buttonItems[0] == ITEM_NONE) ||
                        (gSaveContext.save.info.equips.buttonItems[0] == ITEM_BOW)) {

                        if ((gSaveContext.save.info.equips.buttonItems[0] != ITEM_SWORD_KOKIRI) &&
                            (gSaveContext.save.info.equips.buttonItems[0] != ITEM_SWORD_MASTER) &&
                            (gSaveContext.save.info.equips.buttonItems[0] != ITEM_SWORD_BIGGORON) &&
                            (gSaveContext.save.info.equips.buttonItems[0] != ITEM_GIANTS_KNIFE)) {
                            gSaveContext.save.info.equips.buttonItems[0] = gSaveContext.buttonStatus[0];
                        } else {
                            gSaveContext.buttonStatus[0] = gSaveContext.save.info.equips.buttonItems[0];
                        }
                    }
                    sp28 = true;
                }

                if (sp28) {
                    Interface_LoadItemIcon1(play, 0);
                    sp28 = false;
                }

                for (i = 1; i < 4; i++) {
                    if ((gSaveContext.save.info.equips.buttonItems[i] != ITEM_OCARINA_FAIRY) &&
                        (gSaveContext.save.info.equips.buttonItems[i] != ITEM_OCARINA_OF_TIME)) {
                        if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                            sp28 = true;
                        }

                        gSaveContext.buttonStatus[i] = BTN_DISABLED;
                    } else {
                        if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                            sp28 = true;
                        }

                        gSaveContext.buttonStatus[i] = BTN_ENABLED;
                    }
                }

                if (sp28) {
                    gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
                }

                Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
            } else {
                if (interfaceCtx->restrictions.bButton == 0) {
                    if ((gSaveContext.save.info.equips.buttonItems[0] == ITEM_SLINGSHOT) ||
                        (gSaveContext.save.info.equips.buttonItems[0] == ITEM_BOW) ||
                        (gSaveContext.save.info.equips.buttonItems[0] == ITEM_BOMBCHU) ||
                        (gSaveContext.save.info.equips.buttonItems[0] == ITEM_NONE)) {
                        if ((gSaveContext.save.info.equips.buttonItems[0] != ITEM_NONE) ||
                            (gSaveContext.save.info.infTable[INFTABLE_1DX_INDEX] == 0)) {
                            gSaveContext.save.info.equips.buttonItems[0] = gSaveContext.buttonStatus[0];
                            sp28 = true;

                            if (gSaveContext.save.info.equips.buttonItems[0] != ITEM_NONE) {
                                Interface_LoadItemIcon1(play, 0);
                            }
                        }
                    } else if ((gSaveContext.buttonStatus[0] & 0xFF) == BTN_DISABLED) {
                        sp28 = true;

                        if (((gSaveContext.buttonStatus[0] & 0xFF) == BTN_DISABLED) ||
                            ((gSaveContext.buttonStatus[0] & 0xFF) == BTN_ENABLED)) {
                            gSaveContext.buttonStatus[0] = BTN_ENABLED;
                        } else {
                            gSaveContext.save.info.equips.buttonItems[0] = gSaveContext.buttonStatus[0] & 0xFF;
                        }
                    }
                } else if (interfaceCtx->restrictions.bButton == 1) {
                    if ((gSaveContext.save.info.equips.buttonItems[0] == ITEM_SLINGSHOT) ||
                        (gSaveContext.save.info.equips.buttonItems[0] == ITEM_BOW) ||
                        (gSaveContext.save.info.equips.buttonItems[0] == ITEM_BOMBCHU) ||
                        (gSaveContext.save.info.equips.buttonItems[0] == ITEM_NONE)) {
                        if ((gSaveContext.save.info.equips.buttonItems[0] != ITEM_NONE) ||
                            (gSaveContext.save.info.infTable[INFTABLE_1DX_INDEX] == 0)) {
                            gSaveContext.save.info.equips.buttonItems[0] = gSaveContext.buttonStatus[0];
                            sp28 = true;

                            if (gSaveContext.save.info.equips.buttonItems[0] != ITEM_NONE) {
                                Interface_LoadItemIcon1(play, 0);
                            }
                        }
                    } else {
                        if (gSaveContext.buttonStatus[0] == BTN_ENABLED) {
                            sp28 = true;
                        }

                        gSaveContext.buttonStatus[0] = BTN_DISABLED;
                    }
                }

                if (interfaceCtx->restrictions.bottles != 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.save.info.equips.buttonItems[i] >= ITEM_BOTTLE_EMPTY) &&
                            (gSaveContext.save.info.equips.buttonItems[i] <= ITEM_BOTTLE_POE)) {
                            if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                                sp28 = true;
                            }

                            gSaveContext.buttonStatus[i] = BTN_DISABLED;
                        }
                    }
                } else if (interfaceCtx->restrictions.bottles == 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.save.info.equips.buttonItems[i] >= ITEM_BOTTLE_EMPTY) &&
                            (gSaveContext.save.info.equips.buttonItems[i] <= ITEM_BOTTLE_POE)) {
                            if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                sp28 = true;
                            }

                            gSaveContext.buttonStatus[i] = BTN_ENABLED;
                        }
                    }
                }

                if (interfaceCtx->restrictions.tradeItems != 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.save.info.equips.buttonItems[i] >= ITEM_WEIRD_EGG) &&
                            (gSaveContext.save.info.equips.buttonItems[i] <= ITEM_CLAIM_CHECK)) {
                            if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                                sp28 = true;
                            }

                            gSaveContext.buttonStatus[i] = BTN_DISABLED;
                        }
                    }
                } else if (interfaceCtx->restrictions.tradeItems == 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.save.info.equips.buttonItems[i] >= ITEM_WEIRD_EGG) &&
                            (gSaveContext.save.info.equips.buttonItems[i] <= ITEM_CLAIM_CHECK)) {
                            if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                sp28 = true;
                            }

                            gSaveContext.buttonStatus[i] = BTN_ENABLED;
                        }
                    }
                }

                if (interfaceCtx->restrictions.hookshot != 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.save.info.equips.buttonItems[i] == ITEM_HOOKSHOT) ||
                            (gSaveContext.save.info.equips.buttonItems[i] == ITEM_LONGSHOT)) {
                            if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                                sp28 = true;
                            }

                            gSaveContext.buttonStatus[i] = BTN_DISABLED;
                        }
                    }
                } else if (interfaceCtx->restrictions.hookshot == 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.save.info.equips.buttonItems[i] == ITEM_HOOKSHOT) ||
                            (gSaveContext.save.info.equips.buttonItems[i] == ITEM_LONGSHOT)) {
                            if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                sp28 = true;
                            }

                            gSaveContext.buttonStatus[i] = BTN_ENABLED;
                        }
                    }
                }

                if (interfaceCtx->restrictions.ocarina != 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.save.info.equips.buttonItems[i] == ITEM_OCARINA_FAIRY) ||
                            (gSaveContext.save.info.equips.buttonItems[i] == ITEM_OCARINA_OF_TIME)) {
                            if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                                sp28 = true;
                            }

                            gSaveContext.buttonStatus[i] = BTN_DISABLED;
                        }
                    }
                } else if (interfaceCtx->restrictions.ocarina == 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.save.info.equips.buttonItems[i] == ITEM_OCARINA_FAIRY) ||
                            (gSaveContext.save.info.equips.buttonItems[i] == ITEM_OCARINA_OF_TIME)) {
                            if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                sp28 = true;
                            }

                            gSaveContext.buttonStatus[i] = BTN_ENABLED;
                        }
                    }
                }

                if (interfaceCtx->restrictions.farores != 0) {
                    for (i = 1; i < 4; i++) {
                        if (gSaveContext.save.info.equips.buttonItems[i] == ITEM_FARORES_WIND) {
                            if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                                sp28 = true;
                            }

                            gSaveContext.buttonStatus[i] = BTN_DISABLED;
                            PRINTF("***(i=%d)***  ", i);
                        }
                    }
                } else if (interfaceCtx->restrictions.farores == 0) {
                    for (i = 1; i < 4; i++) {
                        if (gSaveContext.save.info.equips.buttonItems[i] == ITEM_FARORES_WIND) {
                            if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                sp28 = true;
                            }

                            gSaveContext.buttonStatus[i] = BTN_ENABLED;
                        }
                    }
                }

                if (interfaceCtx->restrictions.dinsNayrus != 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.save.info.equips.buttonItems[i] == ITEM_DINS_FIRE) ||
                            (gSaveContext.save.info.equips.buttonItems[i] == ITEM_NAYRUS_LOVE)) {
                            if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                                sp28 = true;
                            }

                            gSaveContext.buttonStatus[i] = BTN_DISABLED;
                        }
                    }
                } else if (interfaceCtx->restrictions.dinsNayrus == 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.save.info.equips.buttonItems[i] == ITEM_DINS_FIRE) ||
                            (gSaveContext.save.info.equips.buttonItems[i] == ITEM_NAYRUS_LOVE)) {
                            if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                sp28 = true;
                            }

                            gSaveContext.buttonStatus[i] = BTN_ENABLED;
                        }
                    }
                }

                if (interfaceCtx->restrictions.all != 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.save.info.equips.buttonItems[i] != ITEM_OCARINA_FAIRY) &&
                            (gSaveContext.save.info.equips.buttonItems[i] != ITEM_OCARINA_OF_TIME) &&
                            !((gSaveContext.save.info.equips.buttonItems[i] >= ITEM_BOTTLE_EMPTY) &&
                              (gSaveContext.save.info.equips.buttonItems[i] <= ITEM_BOTTLE_POE)) &&
                            !((gSaveContext.save.info.equips.buttonItems[i] >= ITEM_WEIRD_EGG) &&
                              (gSaveContext.save.info.equips.buttonItems[i] <= ITEM_CLAIM_CHECK))) {
                            if ((play->sceneId != SCENE_TREASURE_BOX_SHOP) ||
                                (gSaveContext.save.info.equips.buttonItems[i] != ITEM_LENS_OF_TRUTH)) {
                                if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                                    sp28 = true;
                                }

                                gSaveContext.buttonStatus[i] = BTN_DISABLED;
                            } else {
                                if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                    sp28 = true;
                                }

                                gSaveContext.buttonStatus[i] = BTN_ENABLED;
                            }
                        }
                    }
                } else if (interfaceCtx->restrictions.all == 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.save.info.equips.buttonItems[i] != ITEM_DINS_FIRE) &&
                            (gSaveContext.save.info.equips.buttonItems[i] != ITEM_HOOKSHOT) &&
                            (gSaveContext.save.info.equips.buttonItems[i] != ITEM_LONGSHOT) &&
                            (gSaveContext.save.info.equips.buttonItems[i] != ITEM_FARORES_WIND) &&
                            (gSaveContext.save.info.equips.buttonItems[i] != ITEM_NAYRUS_LOVE) &&
                            (gSaveContext.save.info.equips.buttonItems[i] != ITEM_OCARINA_FAIRY) &&
                            (gSaveContext.save.info.equips.buttonItems[i] != ITEM_OCARINA_OF_TIME) &&
                            !((gSaveContext.save.info.equips.buttonItems[i] >= ITEM_BOTTLE_EMPTY) &&
                              (gSaveContext.save.info.equips.buttonItems[i] <= ITEM_BOTTLE_POE)) &&
                            !((gSaveContext.save.info.equips.buttonItems[i] >= ITEM_WEIRD_EGG) &&
                              (gSaveContext.save.info.equips.buttonItems[i] <= ITEM_CLAIM_CHECK))) {
                            if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                sp28 = true;
                            }

                            gSaveContext.buttonStatus[i] = BTN_ENABLED;
                        }
                    }
                }
            }
        }
    }

    if (sp28) {
        gSaveContext.hudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
        if ((play->transitionTrigger == TRANS_TRIGGER_OFF) && (play->transitionMode == TRANS_MODE_OFF)) {
            Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL);
            PRINTF("????????  alpha_change( 50 );  ?????\n");
        } else {
            PRINTF("game_play->fade_direction || game_play->fbdemo_wipe_modem");
        }
    }
}

void Interface_SetSceneRestrictions(PlayState* play) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    s16 i = 0;
    u8 sceneId;
    s32 pad[3];

    interfaceCtx->restrictions.all = 0;
    interfaceCtx->restrictions.dinsNayrus = 0;
    interfaceCtx->restrictions.farores = 0;
    interfaceCtx->restrictions.sunsSong = 0;
    interfaceCtx->restrictions.warpSongs = 0;
    interfaceCtx->restrictions.ocarina = 0;
    interfaceCtx->restrictions.hookshot = 0;
    interfaceCtx->restrictions.tradeItems = 0;
    interfaceCtx->restrictions.bottles = 0;
    interfaceCtx->restrictions.aButton = 0;
    interfaceCtx->restrictions.bButton = 0;
    interfaceCtx->restrictions.hGauge = 0;

    PRINTF(
        T("ボタン表示関係データ設定 scene_data_ID=%d\n", "Data settings related to button display scene_data_ID=%d\n"),
        play->sceneId);

    do {
        sceneId = (u8)play->sceneId;
        if (sRestrictionFlags[i].sceneId == sceneId) {
            interfaceCtx->restrictions.hGauge = (sRestrictionFlags[i].flags1 & 0xC0) >> 6;
            interfaceCtx->restrictions.bButton = (sRestrictionFlags[i].flags1 & 0x30) >> 4;
            interfaceCtx->restrictions.aButton = (sRestrictionFlags[i].flags1 & 0x0C) >> 2;
            interfaceCtx->restrictions.bottles = (sRestrictionFlags[i].flags1 & 0x03) >> 0;
            interfaceCtx->restrictions.tradeItems = (sRestrictionFlags[i].flags2 & 0xC0) >> 6;
            interfaceCtx->restrictions.hookshot = (sRestrictionFlags[i].flags2 & 0x30) >> 4;
            interfaceCtx->restrictions.ocarina = (sRestrictionFlags[i].flags2 & 0x0C) >> 2;
            interfaceCtx->restrictions.warpSongs = (sRestrictionFlags[i].flags2 & 0x03) >> 0;
            interfaceCtx->restrictions.sunsSong = (sRestrictionFlags[i].flags3 & 0xC0) >> 6;
            interfaceCtx->restrictions.farores = (sRestrictionFlags[i].flags3 & 0x30) >> 4;
            interfaceCtx->restrictions.dinsNayrus = (sRestrictionFlags[i].flags3 & 0x0C) >> 2;
            interfaceCtx->restrictions.all = (sRestrictionFlags[i].flags3 & 0x03) >> 0;

            PRINTF(VT_FGCOL(YELLOW));
            PRINTF("parameter->button_status = %x,%x,%x\n", sRestrictionFlags[i].flags1, sRestrictionFlags[i].flags2,
                   sRestrictionFlags[i].flags3);
            PRINTF("h_gage=%d, b_button=%d, a_button=%d, c_bottle=%d\n", interfaceCtx->restrictions.hGauge,
                   interfaceCtx->restrictions.bButton, interfaceCtx->restrictions.aButton,
                   interfaceCtx->restrictions.bottles);
            PRINTF("c_warasibe=%d, c_hook=%d, c_ocarina=%d, c_warp=%d\n", interfaceCtx->restrictions.tradeItems,
                   interfaceCtx->restrictions.hookshot, interfaceCtx->restrictions.ocarina,
                   interfaceCtx->restrictions.warpSongs);
            PRINTF("c_sunmoon=%d, m_wind=%d, m_magic=%d, another=%d\n", interfaceCtx->restrictions.sunsSong,
                   interfaceCtx->restrictions.farores, interfaceCtx->restrictions.dinsNayrus,
                   interfaceCtx->restrictions.all);
            PRINTF(VT_RST);
            return;
        }
        i++;
    } while (sRestrictionFlags[i].sceneId != 0xFF);
}

Gfx* Gfx_TextureIA8(Gfx* displayListHead, void* texture, s16 textureWidth, s16 textureHeight, s16 rectLeft, s16 rectTop,
                    s16 rectWidth, s16 rectHeight, u16 dsdx, u16 dtdy) {
    gDPLoadTextureBlock(displayListHead++, texture, G_IM_FMT_IA, G_IM_SIZ_8b, textureWidth, textureHeight, 0,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);

    gSPTextureRectangle(displayListHead++, rectLeft << 2, rectTop << 2, (rectLeft + rectWidth) << 2,
                        (rectTop + rectHeight) << 2, G_TX_RENDERTILE, 0, 0, dsdx, dtdy);

    return displayListHead;
}

Gfx* Gfx_TextureI8(Gfx* displayListHead, void* texture, s16 textureWidth, s16 textureHeight, s16 rectLeft, s16 rectTop,
                   s16 rectWidth, s16 rectHeight, u16 dsdx, u16 dtdy) {
    gDPLoadTextureBlock(displayListHead++, texture, G_IM_FMT_I, G_IM_SIZ_8b, textureWidth, textureHeight, 0,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);

    gSPTextureRectangle(displayListHead++, rectLeft << 2, rectTop << 2, (rectLeft + rectWidth) << 2,
                        (rectTop + rectHeight) << 2, G_TX_RENDERTILE, 0, 0, dsdx, dtdy);

    return displayListHead;
}

void Inventory_SwapAgeEquipment(void) {
    s16 i;
    u16 shieldEquipValue;

    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        for (i = 0; i < 4; i++) {
            if (i != 0) {
                gSaveContext.save.info.playerData.childEquips.buttonItems[i] =
                    gSaveContext.save.info.equips.buttonItems[i];
            } else {
                gSaveContext.save.info.playerData.childEquips.buttonItems[i] = ITEM_SWORD_KOKIRI;
            }

            if (i != 0) {
                gSaveContext.save.info.playerData.childEquips.cButtonSlots[i - 1] =
                    gSaveContext.save.info.equips.cButtonSlots[i - 1];
            }
        }

        gSaveContext.save.info.playerData.childEquips.equipment = gSaveContext.save.info.equips.equipment;

        if (gSaveContext.save.info.playerData.adultEquips.buttonItems[0] == ITEM_NONE) {
            gSaveContext.save.info.equips.buttonItems[0] = ITEM_SWORD_MASTER;

            if (gSaveContext.save.info.inventory.items[SLOT_DEKU_NUT] != ITEM_NONE) {
                gSaveContext.save.info.equips.buttonItems[1] = ITEM_DEKU_NUT;
                gSaveContext.save.info.equips.cButtonSlots[0] = SLOT_DEKU_NUT;
            } else {
                gSaveContext.save.info.equips.buttonItems[1] = gSaveContext.save.info.equips.cButtonSlots[0] =
                    ITEM_NONE;
            }

            gSaveContext.save.info.equips.buttonItems[2] = ITEM_BOMB;
            gSaveContext.save.info.equips.buttonItems[3] = gSaveContext.save.info.inventory.items[SLOT_OCARINA];
            gSaveContext.save.info.equips.cButtonSlots[1] = SLOT_BOMB;
            gSaveContext.save.info.equips.cButtonSlots[2] = SLOT_OCARINA;
            gSaveContext.save.info.equips.equipment = (EQUIP_VALUE_SWORD_MASTER << (EQUIP_TYPE_SWORD * 4)) |
                                                      (EQUIP_VALUE_SHIELD_HYLIAN << (EQUIP_TYPE_SHIELD * 4)) |
                                                      (EQUIP_VALUE_TUNIC_KOKIRI << (EQUIP_TYPE_TUNIC * 4)) |
                                                      (EQUIP_VALUE_BOOTS_KOKIRI << (EQUIP_TYPE_BOOTS * 4));
        } else {
            for (i = 0; i < 4; i++) {
                gSaveContext.save.info.equips.buttonItems[i] =
                    gSaveContext.save.info.playerData.adultEquips.buttonItems[i];

                if (i != 0) {
                    gSaveContext.save.info.equips.cButtonSlots[i - 1] =
                        gSaveContext.save.info.playerData.adultEquips.cButtonSlots[i - 1];
                }

                if (((gSaveContext.save.info.equips.buttonItems[i] >= ITEM_BOTTLE_EMPTY) &&
                     (gSaveContext.save.info.equips.buttonItems[i] <= ITEM_BOTTLE_POE)) ||
                    ((gSaveContext.save.info.equips.buttonItems[i] >= ITEM_WEIRD_EGG) &&
                     (gSaveContext.save.info.equips.buttonItems[i] <= ITEM_CLAIM_CHECK))) {
                    PRINTF("Register_Item_Pt(%d)=%d\n", i, gSaveContext.save.info.equips.cButtonSlots[i - 1]);
                    gSaveContext.save.info.equips.buttonItems[i] =
                        gSaveContext.save.info.inventory.items[gSaveContext.save.info.equips.cButtonSlots[i - 1]];
                }
            }

            gSaveContext.save.info.equips.equipment = gSaveContext.save.info.playerData.adultEquips.equipment;
        }
    } else {
        for (i = 0; i < 4; i++) {
            gSaveContext.save.info.playerData.adultEquips.buttonItems[i] = gSaveContext.save.info.equips.buttonItems[i];

            if (i != 0) {
                gSaveContext.save.info.playerData.adultEquips.cButtonSlots[i - 1] =
                    gSaveContext.save.info.equips.cButtonSlots[i - 1];
            }
        }

        gSaveContext.save.info.playerData.adultEquips.equipment = gSaveContext.save.info.equips.equipment;

        if (gSaveContext.save.info.playerData.childEquips.buttonItems[0] != ITEM_NONE) {
            for (i = 0; i < 4; i++) {
                gSaveContext.save.info.equips.buttonItems[i] =
                    gSaveContext.save.info.playerData.childEquips.buttonItems[i];

                if (i != 0) {
                    gSaveContext.save.info.equips.cButtonSlots[i - 1] =
                        gSaveContext.save.info.playerData.childEquips.cButtonSlots[i - 1];
                }

                if (((gSaveContext.save.info.equips.buttonItems[i] >= ITEM_BOTTLE_EMPTY) &&
                     (gSaveContext.save.info.equips.buttonItems[i] <= ITEM_BOTTLE_POE)) ||
                    ((gSaveContext.save.info.equips.buttonItems[i] >= ITEM_WEIRD_EGG) &&
                     (gSaveContext.save.info.equips.buttonItems[i] <= ITEM_CLAIM_CHECK))) {
                    PRINTF("Register_Item_Pt(%d)=%d\n", i, gSaveContext.save.info.equips.cButtonSlots[i - 1]);
                    gSaveContext.save.info.equips.buttonItems[i] =
                        gSaveContext.save.info.inventory.items[gSaveContext.save.info.equips.cButtonSlots[i - 1]];
                }
            }

            gSaveContext.save.info.equips.equipment = gSaveContext.save.info.playerData.childEquips.equipment;
            gSaveContext.save.info.equips.equipment &= (u16) ~(0xF << (EQUIP_TYPE_SWORD * 4));
            gSaveContext.save.info.equips.equipment |= EQUIP_VALUE_SWORD_KOKIRI << (EQUIP_TYPE_SWORD * 4);
        }
    }

    shieldEquipValue = gEquipMasks[EQUIP_TYPE_SHIELD] & gSaveContext.save.info.equips.equipment;
    if (shieldEquipValue) {
        shieldEquipValue >>= gEquipShifts[EQUIP_TYPE_SHIELD];
        if (!CHECK_OWNED_EQUIP_ALT(EQUIP_TYPE_SHIELD, shieldEquipValue - 1)) {
            gSaveContext.save.info.equips.equipment &= gEquipNegMasks[EQUIP_TYPE_SHIELD];
        }
    }
}

void Interface_InitHorsebackArchery(PlayState* play) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;

    gSaveContext.minigameState = 1;
    interfaceCtx->unk_23C = interfaceCtx->unk_240 = interfaceCtx->unk_242 = 0;
    gSaveContext.minigameScore = sHBAScoreTier = 0;
    interfaceCtx->hbaAmmo = 20;
}

void func_800849EC(PlayState* play) {
    gSaveContext.save.info.inventory.equipment |= OWNED_EQUIP_FLAG(EQUIP_TYPE_SWORD, EQUIP_INV_SWORD_BIGGORON);
    gSaveContext.save.info.inventory.equipment ^=
        OWNED_EQUIP_FLAG_ALT(EQUIP_TYPE_SWORD, EQUIP_INV_SWORD_BROKENGIANTKNIFE);

    if (CHECK_OWNED_EQUIP_ALT(EQUIP_TYPE_SWORD, EQUIP_INV_SWORD_BROKENGIANTKNIFE)) {
        gSaveContext.save.info.equips.buttonItems[0] = ITEM_GIANTS_KNIFE;
    } else {
        gSaveContext.save.info.equips.buttonItems[0] = ITEM_SWORD_BIGGORON;
    }

    Interface_LoadItemIcon1(play, 0);
}

void Interface_LoadItemIcon1(PlayState* play, u16 button) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;

    osCreateMesgQueue(&interfaceCtx->loadQueue, &interfaceCtx->loadMsg, 1);
    DMA_REQUEST_ASYNC(&interfaceCtx->dmaRequest_160, interfaceCtx->iconItemSegment + (button * ITEM_ICON_SIZE),
                      GET_ITEM_ICON_VROM(gSaveContext.save.info.equips.buttonItems[button]), ITEM_ICON_SIZE, 0,
                      &interfaceCtx->loadQueue, NULL, "../z_parameter.c", 1171);
    osRecvMesg(&interfaceCtx->loadQueue, NULL, OS_MESG_BLOCK);
}

void Interface_LoadItemIcon2(PlayState* play, u16 button) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;

    osCreateMesgQueue(&interfaceCtx->loadQueue, &interfaceCtx->loadMsg, 1);
    DMA_REQUEST_ASYNC(&interfaceCtx->dmaRequest_180, interfaceCtx->iconItemSegment + (button * ITEM_ICON_SIZE),
                      GET_ITEM_ICON_VROM(gSaveContext.save.info.equips.buttonItems[button]), ITEM_ICON_SIZE, 0,
                      &interfaceCtx->loadQueue, NULL, "../z_parameter.c", 1193);
    osRecvMesg(&interfaceCtx->loadQueue, NULL, OS_MESG_BLOCK);
}

void func_80084BF4(PlayState* play, u16 flag) {
    if (flag) {
        if ((gSaveContext.save.info.equips.buttonItems[0] == ITEM_SLINGSHOT) ||
            (gSaveContext.save.info.equips.buttonItems[0] == ITEM_BOW) ||
            (gSaveContext.save.info.equips.buttonItems[0] == ITEM_BOMBCHU) ||
            (gSaveContext.save.info.equips.buttonItems[0] == ITEM_FISHING_POLE) ||
            (gSaveContext.buttonStatus[0] == BTN_DISABLED)) {
            if ((gSaveContext.save.info.equips.buttonItems[0] == ITEM_SLINGSHOT) ||
                (gSaveContext.save.info.equips.buttonItems[0] == ITEM_BOW) ||
                (gSaveContext.save.info.equips.buttonItems[0] == ITEM_BOMBCHU) ||
                (gSaveContext.save.info.equips.buttonItems[0] == ITEM_FISHING_POLE)) {
                gSaveContext.save.info.equips.buttonItems[0] = gSaveContext.buttonStatus[0];
                Interface_LoadItemIcon1(play, 0);
            }
        } else if (gSaveContext.save.info.equips.buttonItems[0] == ITEM_NONE) {
            if ((gSaveContext.save.info.equips.buttonItems[0] != ITEM_NONE) ||
                (gSaveContext.save.info.infTable[INFTABLE_1DX_INDEX] == 0)) {
                gSaveContext.save.info.equips.buttonItems[0] = gSaveContext.buttonStatus[0];
                Interface_LoadItemIcon1(play, 0);
            }
        }

        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
            gSaveContext.buttonStatus[3] = BTN_ENABLED;
        Interface_ChangeHudVisibilityMode(HUD_VISIBILITY_ALL_NO_MINIMAP_BY_BTN_STATUS);
    } else {
        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
            gSaveContext.buttonStatus[3] = BTN_ENABLED;
        func_80083108(play);
    }
}

u8 Item_Give(PlayState* play, u8 item) {
    static s16 sAmmoRefillCounts[] = { 5, 10, 20, 30 }; // Sticks, nuts, bombs
    static s16 sArrowRefillCounts[] = { 5, 10, 30 };
    static s16 sBombchuRefillCounts[] = { 5, 20 };
    static s16 sRupeeRefillCounts[] = { 1, 5, 20, 50, 200, 10 };
    s16 i;
    s16 slot;
    s16 temp;

    slot = SLOT(item);
    if (item >= ITEM_DEKU_STICKS_5) {
        slot = SLOT(sExtraItemBases[item - ITEM_DEKU_STICKS_5]);
    }

    PRINTF(VT_FGCOL(YELLOW));
    PRINTF("item_get_setting=%d  pt=%d  z=%x\n", item, slot, gSaveContext.save.info.inventory.items[slot]);
    PRINTF(VT_RST);

    if ((item >= ITEM_MEDALLION_FOREST) && (item <= ITEM_MEDALLION_LIGHT)) {
        gSaveContext.save.info.inventory.questItems |= gBitFlags[item - ITEM_MEDALLION_FOREST + QUEST_MEDALLION_FOREST];

        PRINTF(VT_FGCOL(YELLOW));
        PRINTF(T("封印 = %x\n", "Seals = %x\n"), gSaveContext.save.info.inventory.questItems);
        PRINTF(VT_RST);

        if (item == ITEM_MEDALLION_WATER) {
            func_8006D0AC(play);
        }

        return ITEM_NONE;
    } else if ((item >= ITEM_SONG_MINUET) && (item <= ITEM_SONG_STORMS)) {
        gSaveContext.save.info.inventory.questItems |= gBitFlags[item - ITEM_SONG_MINUET + QUEST_SONG_MINUET];

        PRINTF(VT_FGCOL(YELLOW));
        PRINTF(T("楽譜 = %x\n", "Musical scores = %x\n"), gSaveContext.save.info.inventory.questItems);
        PRINTF(T("楽譜 = %x (%x) (%x)\n", "Musical scores = %x (%x) (%x)\n"),
               gSaveContext.save.info.inventory.questItems, gBitFlags[item - ITEM_SONG_MINUET + QUEST_SONG_MINUET],
               gBitFlags[item - ITEM_SONG_MINUET]);
        PRINTF(VT_RST);

        return ITEM_NONE;
    } else if ((item >= ITEM_KOKIRI_EMERALD) && (item <= ITEM_ZORA_SAPPHIRE)) {
        gSaveContext.save.info.inventory.questItems |= gBitFlags[item - ITEM_KOKIRI_EMERALD + QUEST_KOKIRI_EMERALD];

        PRINTF(VT_FGCOL(YELLOW));
        PRINTF(T("精霊石 = %x\n", "Spiritual Stones = %x\n"), gSaveContext.save.info.inventory.questItems);
        PRINTF(VT_RST);

        return ITEM_NONE;
    } else if ((item == ITEM_STONE_OF_AGONY) || (item == ITEM_GERUDOS_CARD)) {
        gSaveContext.save.info.inventory.questItems |= gBitFlags[item - ITEM_STONE_OF_AGONY + QUEST_STONE_OF_AGONY];

        PRINTF(VT_FGCOL(YELLOW));
        PRINTF(T("アイテム = %x\n", "Items = %x\n"), gSaveContext.save.info.inventory.questItems);
        PRINTF(VT_RST);

        return ITEM_NONE;
    } else if (item == ITEM_SKULL_TOKEN) {
        gSaveContext.save.info.inventory.questItems |= gBitFlags[item - ITEM_SKULL_TOKEN + QUEST_SKULL_TOKEN];
        gSaveContext.save.info.inventory.gsTokens++;

        PRINTF(VT_FGCOL(YELLOW));
        PRINTF(T("Ｎコイン = %x(%d)\n", "N Coins = %x(%d)\n"), gSaveContext.save.info.inventory.questItems,
               gSaveContext.save.info.inventory.gsTokens);
        PRINTF(VT_RST);

        return ITEM_NONE;
    } else if ((item >= ITEM_SWORD_KOKIRI) && (item <= ITEM_SWORD_BIGGORON)) {
        gSaveContext.save.info.inventory.equipment |=
            OWNED_EQUIP_FLAG(EQUIP_TYPE_SWORD, item - ITEM_SWORD_KOKIRI + EQUIP_INV_SWORD_KOKIRI);

        if (item == ITEM_SWORD_BIGGORON) {
            gSaveContext.save.info.playerData.swordHealth = 8;

            if (ALL_EQUIP_VALUE(EQUIP_TYPE_SWORD) ==
                ((1 << EQUIP_INV_SWORD_KOKIRI) | (1 << EQUIP_INV_SWORD_MASTER) | (1 << EQUIP_INV_SWORD_BIGGORON) |
                 (1 << EQUIP_INV_SWORD_BROKENGIANTKNIFE))) {
                gSaveContext.save.info.inventory.equipment ^=
                    OWNED_EQUIP_FLAG_ALT(EQUIP_TYPE_SWORD, EQUIP_INV_SWORD_BROKENGIANTKNIFE);
                if (gSaveContext.save.info.equips.buttonItems[0] == ITEM_GIANTS_KNIFE) {
                    gSaveContext.save.info.equips.buttonItems[0] = ITEM_SWORD_BIGGORON;
                    Interface_LoadItemIcon1(play, 0);
                }
            }
        } else if (item == ITEM_SWORD_MASTER) {
            gSaveContext.save.info.equips.buttonItems[0] = ITEM_SWORD_MASTER;
            gSaveContext.save.info.equips.equipment &= (u16) ~(0xF << (EQUIP_TYPE_SWORD * 4));
            gSaveContext.save.info.equips.equipment |= EQUIP_VALUE_SWORD_MASTER << (EQUIP_TYPE_SWORD * 4);
            Interface_LoadItemIcon1(play, 0);
        }

        return ITEM_NONE;
    } else if ((item >= ITEM_SHIELD_DEKU) && (item <= ITEM_SHIELD_MIRROR)) {
        gSaveContext.save.info.inventory.equipment |= OWNED_EQUIP_FLAG(EQUIP_TYPE_SHIELD, item - ITEM_SHIELD_DEKU);
        return ITEM_NONE;
    } else if ((item >= ITEM_TUNIC_KOKIRI) && (item <= ITEM_TUNIC_ZORA)) {
        gSaveContext.save.info.inventory.equipment |= OWNED_EQUIP_FLAG(EQUIP_TYPE_TUNIC, item - ITEM_TUNIC_KOKIRI);
        return ITEM_NONE;
    } else if ((item >= ITEM_BOOTS_KOKIRI) && (item <= ITEM_BOOTS_HOVER)) {
        gSaveContext.save.info.inventory.equipment |= OWNED_EQUIP_FLAG(EQUIP_TYPE_BOOTS, item - ITEM_BOOTS_KOKIRI);
        return ITEM_NONE;
    } else if ((item == ITEM_DUNGEON_BOSS_KEY) || (item == ITEM_DUNGEON_COMPASS) || (item == ITEM_DUNGEON_MAP)) {
        gSaveContext.save.info.inventory.dungeonItems[gSaveContext.mapIndex] |= gBitFlags[item - ITEM_DUNGEON_BOSS_KEY];
        return ITEM_NONE;
    } else if (item == ITEM_SMALL_KEY) {
        if (gSaveContext.save.info.inventory.dungeonKeys[gSaveContext.mapIndex] < 0) {
            gSaveContext.save.info.inventory.dungeonKeys[gSaveContext.mapIndex] = 1;
            return ITEM_NONE;
        } else {
            gSaveContext.save.info.inventory.dungeonKeys[gSaveContext.mapIndex]++;
            return ITEM_NONE;
        }
    } else if ((item == ITEM_QUIVER_30) || (item == ITEM_BOW)) {
        if (CUR_UPG_VALUE(UPG_QUIVER) == 0) {
            Inventory_ChangeUpgrade(UPG_QUIVER, 1);
            INV_CONTENT(ITEM_BOW) = ITEM_BOW;
            AMMO(ITEM_BOW) = CAPACITY(UPG_QUIVER, 1);
            return ITEM_NONE;
        } else {
            AMMO(ITEM_BOW)++;
            if (AMMO(ITEM_BOW) > CUR_CAPACITY(UPG_QUIVER)) {
                AMMO(ITEM_BOW) = CUR_CAPACITY(UPG_QUIVER);
            }
        }
    } else if (item == ITEM_QUIVER_40) {
        Inventory_ChangeUpgrade(UPG_QUIVER, 2);
        AMMO(ITEM_BOW) = CAPACITY(UPG_QUIVER, 2);
        return ITEM_NONE;
    } else if (item == ITEM_QUIVER_50) {
        Inventory_ChangeUpgrade(UPG_QUIVER, 3);
        AMMO(ITEM_BOW) = CAPACITY(UPG_QUIVER, 3);
        return ITEM_NONE;
    } else if (item == ITEM_BULLET_BAG_40) {
        Inventory_ChangeUpgrade(UPG_BULLET_BAG, 2);
        AMMO(ITEM_SLINGSHOT) = CAPACITY(UPG_BULLET_BAG, 2);
        return ITEM_NONE;
    } else if (item == ITEM_BULLET_BAG_50) {
        Inventory_ChangeUpgrade(UPG_BULLET_BAG, 3);
        AMMO(ITEM_SLINGSHOT) = CAPACITY(UPG_BULLET_BAG, 3);
        return ITEM_NONE;
    } else if (item == ITEM_BOMB_BAG_20) {
        if (CUR_UPG_VALUE(UPG_BOMB_BAG) == 0) {
            Inventory_ChangeUpgrade(UPG_BOMB_BAG, 1);
            INV_CONTENT(ITEM_BOMB) = ITEM_BOMB;
            AMMO(ITEM_BOMB) = CAPACITY(UPG_BOMB_BAG, 1);
            return ITEM_NONE;
        } else {
            AMMO(ITEM_BOMB)++;
            if (AMMO(ITEM_BOMB) > CUR_CAPACITY(UPG_BOMB_BAG)) {
                AMMO(ITEM_BOMB) = CUR_CAPACITY(UPG_BOMB_BAG);
            }
        }
    } else if (item == ITEM_BOMB_BAG_30) {
        Inventory_ChangeUpgrade(UPG_BOMB_BAG, 2);
        AMMO(ITEM_BOMB) = CAPACITY(UPG_BOMB_BAG, 2);
        return ITEM_NONE;
    } else if (item == ITEM_BOMB_BAG_40) {
        Inventory_ChangeUpgrade(UPG_BOMB_BAG, 3);
        AMMO(ITEM_BOMB) = CAPACITY(UPG_BOMB_BAG, 3);
        return ITEM_NONE;
    } else if (item == ITEM_STRENGTH_GORONS_BRACELET) {
        Inventory_ChangeUpgrade(UPG_STRENGTH, 1);
        return ITEM_NONE;
    } else if (item == ITEM_STRENGTH_SILVER_GAUNTLETS) {
        Inventory_ChangeUpgrade(UPG_STRENGTH, 2);
        return ITEM_NONE;
    } else if (item == ITEM_STRENGTH_GOLD_GAUNTLETS) {
        Inventory_ChangeUpgrade(UPG_STRENGTH, 3);
        return ITEM_NONE;
    } else if (item == ITEM_SCALE_SILVER) {
        Inventory_ChangeUpgrade(UPG_SCALE, 1);
        return ITEM_NONE;
    } else if (item == ITEM_SCALE_GOLDEN) {
        Inventory_ChangeUpgrade(UPG_SCALE, 2);
        return ITEM_NONE;
    } else if (item == ITEM_ADULTS_WALLET) {
        Inventory_ChangeUpgrade(UPG_WALLET, 1);
        return ITEM_NONE;
    } else if (item == ITEM_GIANTS_WALLET) {
        Inventory_ChangeUpgrade(UPG_WALLET, 2);
        return ITEM_NONE;
    } else if (item == ITEM_DEKU_STICK_UPGRADE_20) {
        if (gSaveContext.save.info.inventory.items[slot] == ITEM_NONE) {
            INV_CONTENT(ITEM_DEKU_STICK) = ITEM_DEKU_STICK;
        }
        Inventory_ChangeUpgrade(UPG_DEKU_STICKS, 2);
        AMMO(ITEM_DEKU_STICK) = CAPACITY(UPG_DEKU_STICKS, 2);
        return ITEM_NONE;
    } else if (item == ITEM_DEKU_STICK_UPGRADE_30) {
        if (gSaveContext.save.info.inventory.items[slot] == ITEM_NONE) {
            INV_CONTENT(ITEM_DEKU_STICK) = ITEM_DEKU_STICK;
        }
        Inventory_ChangeUpgrade(UPG_DEKU_STICKS, 3);
        AMMO(ITEM_DEKU_STICK) = CAPACITY(UPG_DEKU_STICKS, 3);
        return ITEM_NONE;
    } else if (item == ITEM_DEKU_NUT_UPGRADE_30) {
        if (gSaveContext.save.info.inventory.items[slot] == ITEM_NONE) {
            INV_CONTENT(ITEM_DEKU_NUT) = ITEM_DEKU_NUT;
        }
        Inventory_ChangeUpgrade(UPG_DEKU_NUTS, 2);
        AMMO(ITEM_DEKU_NUT) = CAPACITY(UPG_DEKU_NUTS, 2);
        return ITEM_NONE;
    } else if (item == ITEM_DEKU_NUT_UPGRADE_40) {
        if (gSaveContext.save.info.inventory.items[slot] == ITEM_NONE) {
            INV_CONTENT(ITEM_DEKU_NUT) = ITEM_DEKU_NUT;
        }
        Inventory_ChangeUpgrade(UPG_DEKU_NUTS, 3);
        AMMO(ITEM_DEKU_NUT) = CAPACITY(UPG_DEKU_NUTS, 3);
        return ITEM_NONE;
    } else if (item == ITEM_LONGSHOT) {
        INV_CONTENT(item) = item;
        for (i = 1; i < 4; i++) {
            if (gSaveContext.save.info.equips.buttonItems[i] == ITEM_HOOKSHOT) {
                gSaveContext.save.info.equips.buttonItems[i] = ITEM_LONGSHOT;
                Interface_LoadItemIcon1(play, i);
            }
        }
        return ITEM_NONE;
    } else if (item == ITEM_DEKU_STICK) {
        if (gSaveContext.save.info.inventory.items[slot] == ITEM_NONE) {
            Inventory_ChangeUpgrade(UPG_DEKU_STICKS, 1);
            AMMO(ITEM_DEKU_STICK) = 1;
        } else {
            AMMO(ITEM_DEKU_STICK)++;
            if (AMMO(ITEM_DEKU_STICK) > CUR_CAPACITY(UPG_DEKU_STICKS)) {
                AMMO(ITEM_DEKU_STICK) = CUR_CAPACITY(UPG_DEKU_STICKS);
            }
        }
    } else if ((item == ITEM_DEKU_STICKS_5) || (item == ITEM_DEKU_STICKS_10)) {
        if (gSaveContext.save.info.inventory.items[slot] == ITEM_NONE) {
            Inventory_ChangeUpgrade(UPG_DEKU_STICKS, 1);
            AMMO(ITEM_DEKU_STICK) = sAmmoRefillCounts[item - ITEM_DEKU_STICKS_5];
        } else {
            AMMO(ITEM_DEKU_STICK) += sAmmoRefillCounts[item - ITEM_DEKU_STICKS_5];
            if (AMMO(ITEM_DEKU_STICK) > CUR_CAPACITY(UPG_DEKU_STICKS)) {
                AMMO(ITEM_DEKU_STICK) = CUR_CAPACITY(UPG_DEKU_STICKS);
            }
        }
        item = ITEM_DEKU_STICK;
    } else if (item == ITEM_DEKU_NUT) {
        if (gSaveContext.save.info.inventory.items[slot] == ITEM_NONE) {
            Inventory_ChangeUpgrade(UPG_DEKU_NUTS, 1);
            AMMO(ITEM_DEKU_NUT) = ITEM_DEKU_NUT;
        } else {
            AMMO(ITEM_DEKU_NUT)++;
            if (AMMO(ITEM_DEKU_NUT) > CUR_CAPACITY(UPG_DEKU_NUTS)) {
                AMMO(ITEM_DEKU_NUT) = CUR_CAPACITY(UPG_DEKU_NUTS);
            }
        }
    } else if ((item == ITEM_DEKU_NUTS_5) || (item == ITEM_DEKU_NUTS_10)) {
        if (gSaveContext.save.info.inventory.items[slot] == ITEM_NONE) {
            Inventory_ChangeUpgrade(UPG_DEKU_NUTS, 1);
            AMMO(ITEM_DEKU_NUT) += sAmmoRefillCounts[item - ITEM_DEKU_NUTS_5];
            PRINTF(T("デクの実 %d(%d)=%d  BS_count=%d\n", "Deku Nuts %d(%d)=%d  BS_count=%d\n"), item, ITEM_DEKU_NUTS_5,
                   item - ITEM_DEKU_NUTS_5, sAmmoRefillCounts[item - ITEM_DEKU_NUTS_5]);
        } else {
            AMMO(ITEM_DEKU_NUT) += sAmmoRefillCounts[item - ITEM_DEKU_NUTS_5];
            if (AMMO(ITEM_DEKU_NUT) > CUR_CAPACITY(UPG_DEKU_NUTS)) {
                AMMO(ITEM_DEKU_NUT) = CUR_CAPACITY(UPG_DEKU_NUTS);
            }
        }
        item = ITEM_DEKU_NUT;
    } else if (item == ITEM_BOMB) {
        PRINTF(T(" 爆弾  爆弾  爆弾  爆弾 爆弾   爆弾 爆弾 \n", "Bomb  Bomb  Bomb  Bomb Bomb   Bomb Bomb\n"));
        if ((AMMO(ITEM_BOMB) += 1) > CUR_CAPACITY(UPG_BOMB_BAG)) {
            AMMO(ITEM_BOMB) = CUR_CAPACITY(UPG_BOMB_BAG);
        }
        return ITEM_NONE;
    } else if ((item >= ITEM_BOMBS_5) && (item <= ITEM_BOMBS_30)) {
        if ((AMMO(ITEM_BOMB) += sAmmoRefillCounts[item - ITEM_BOMBS_5]) > CUR_CAPACITY(UPG_BOMB_BAG)) {
            AMMO(ITEM_BOMB) = CUR_CAPACITY(UPG_BOMB_BAG);
        }
        return ITEM_NONE;
    } else if (item == ITEM_BOMBCHU) {
        if (gSaveContext.save.info.inventory.items[slot] == ITEM_NONE) {
            INV_CONTENT(ITEM_BOMBCHU) = ITEM_BOMBCHU;
            AMMO(ITEM_BOMBCHU) = 10;
            return ITEM_NONE;
        } else {
            AMMO(ITEM_BOMBCHU) += 10;
            if (AMMO(ITEM_BOMBCHU) > 50) {
                AMMO(ITEM_BOMBCHU) = 50;
            }
            return ITEM_NONE;
        }
    } else if ((item == ITEM_BOMBCHUS_5) || (item == ITEM_BOMBCHUS_20)) {
        if (gSaveContext.save.info.inventory.items[slot] == ITEM_NONE) {
            INV_CONTENT(ITEM_BOMBCHU) = ITEM_BOMBCHU;
            AMMO(ITEM_BOMBCHU) += sBombchuRefillCounts[item - ITEM_BOMBCHUS_5];
            return ITEM_NONE;
        } else {
            AMMO(ITEM_BOMBCHU) += sBombchuRefillCounts[item - ITEM_BOMBCHUS_5];
            if (AMMO(ITEM_BOMBCHU) > 50) {
                AMMO(ITEM_BOMBCHU) = 50;
            }
            return ITEM_NONE;
        }
    } else if ((item >= ITEM_ARROWS_5) && (item <= ITEM_ARROWS_30)) {
        AMMO(ITEM_BOW) += sArrowRefillCounts[item - ITEM_ARROWS_5];

        if ((AMMO(ITEM_BOW) >= CUR_CAPACITY(UPG_QUIVER)) || (AMMO(ITEM_BOW) < 0)) {
            AMMO(ITEM_BOW) = CUR_CAPACITY(UPG_QUIVER);
        }

        PRINTF(T("%d本  Item_MaxGet=%d\n", "%d books  Item_MaxGet=%d\n"), AMMO(ITEM_BOW), CUR_CAPACITY(UPG_QUIVER));

        return ITEM_BOW;
    } else if (item == ITEM_SLINGSHOT) {
        Inventory_ChangeUpgrade(UPG_BULLET_BAG, 1);
        INV_CONTENT(ITEM_SLINGSHOT) = ITEM_SLINGSHOT;
        AMMO(ITEM_SLINGSHOT) = 30;
        return ITEM_NONE;
    } else if (item == ITEM_DEKU_SEEDS) {
        AMMO(ITEM_SLINGSHOT) += 5;

        if (AMMO(ITEM_SLINGSHOT) >= CUR_CAPACITY(UPG_BULLET_BAG)) {
            AMMO(ITEM_SLINGSHOT) = CUR_CAPACITY(UPG_BULLET_BAG);
        }

        if (!GET_ITEMGETINF(ITEMGETINF_13)) {
            SET_ITEMGETINF(ITEMGETINF_13);
            return ITEM_NONE;
        }

        return ITEM_DEKU_SEEDS;
    } else if (item == ITEM_DEKU_SEEDS_30) {
        AMMO(ITEM_SLINGSHOT) += 30;

        if (AMMO(ITEM_SLINGSHOT) >= CUR_CAPACITY(UPG_BULLET_BAG)) {
            AMMO(ITEM_SLINGSHOT) = CUR_CAPACITY(UPG_BULLET_BAG);
        }

        if (!GET_ITEMGETINF(ITEMGETINF_13)) {
            SET_ITEMGETINF(ITEMGETINF_13);
            return ITEM_NONE;
        }

        return ITEM_DEKU_SEEDS;
    } else if (item == ITEM_OCARINA_FAIRY) {
        INV_CONTENT(ITEM_OCARINA_FAIRY) = ITEM_OCARINA_FAIRY;
        return ITEM_NONE;
    } else if (item == ITEM_OCARINA_OF_TIME) {
        INV_CONTENT(ITEM_OCARINA_OF_TIME) = ITEM_OCARINA_OF_TIME;
        for (i = 1; i < 4; i++) {
            if (gSaveContext.save.info.equips.buttonItems[i] == ITEM_OCARINA_FAIRY) {
                gSaveContext.save.info.equips.buttonItems[i] = ITEM_OCARINA_OF_TIME;
                Interface_LoadItemIcon1(play, i);
            }
        }
        return ITEM_NONE;
    } else if (item == ITEM_MAGIC_BEAN) {
        if (gSaveContext.save.info.inventory.items[slot] == ITEM_NONE) {
            INV_CONTENT(item) = item;
            AMMO(ITEM_MAGIC_BEAN) = 1;
            BEANS_BOUGHT = 1;
        } else {
            AMMO(ITEM_MAGIC_BEAN)++;
            BEANS_BOUGHT++;
        }
        return ITEM_NONE;
    } else if ((item == ITEM_HEART_PIECE_2) || (item == ITEM_HEART_PIECE)) {
        gSaveContext.save.info.inventory.questItems += 1 << QUEST_HEART_PIECE_COUNT;
        return ITEM_NONE;
    } else if (item == ITEM_HEART_CONTAINER) {
        gSaveContext.save.info.playerData.healthCapacity += 0x10;
        gSaveContext.save.info.playerData.health += 0x10;
        return ITEM_NONE;
    } else if (item == ITEM_RECOVERY_HEART) {
        PRINTF(T("回復ハート回復ハート回復ハート\n", "Recovery Heart Recovery Heart Recovery Heart\n"));
        Health_ChangeBy(play, 0x10);
        return item;
    } else if (item == ITEM_MAGIC_JAR_SMALL) {
        // Magic_Fill is only used to store the magicState.
        // Setting the state to FILL gets immediately overwritten in Magic_RequestChange.
        // I.e. magic is added not filled.
#if OOT_VERSION < PAL_1_0
        Magic_Fill(play);
#else
        if (gSaveContext.magicState != MAGIC_STATE_ADD) {
            Magic_Fill(play);
        }
#endif

        Magic_RequestChange(play, 12, MAGIC_ADD);

        if (!GET_INFTABLE(INFTABLE_198)) {
            SET_INFTABLE(INFTABLE_198);
            return ITEM_NONE;
        }

        return item;
    } else if (item == ITEM_MAGIC_JAR_BIG) {
        // Magic_Fill is only used to store the magicState.
        // Setting the state to FILL gets immediately overwritten in Magic_RequestChange.
        // I.e. magic is added not filled.
#if OOT_VERSION < PAL_1_0
        Magic_Fill(play);
#else
        if (gSaveContext.magicState != MAGIC_STATE_ADD) {
            Magic_Fill(play);
        }
#endif

        Magic_RequestChange(play, 24, MAGIC_ADD);

        if (!GET_INFTABLE(INFTABLE_198)) {
            SET_INFTABLE(INFTABLE_198);
            return ITEM_NONE;
        }

        return item;
    } else if ((item >= ITEM_RUPEE_GREEN) && (item <= ITEM_INVALID_8)) {
        Rupees_ChangeBy(sRupeeRefillCounts[item - ITEM_RUPEE_GREEN]);
        return ITEM_NONE;
    } else if (item == ITEM_BOTTLE_EMPTY) {
        temp = SLOT(item);

        for (i = 0; i < 4; i++) {
            if (gSaveContext.save.info.inventory.items[temp + i] == ITEM_NONE) {
                gSaveContext.save.info.inventory.items[temp + i] = item;
                return ITEM_NONE;
            }
        }
    } else if (((item >= ITEM_BOTTLE_POTION_RED) && (item <= ITEM_BOTTLE_POE)) || (item == ITEM_MILK)) {
        temp = SLOT(item);

        if ((item != ITEM_BOTTLE_MILK_FULL) && (item != ITEM_BOTTLE_RUTOS_LETTER)) {
            if (item == ITEM_MILK) {
                item = ITEM_BOTTLE_MILK_FULL;
                temp = SLOT(item);
            }

            for (i = 0; i < 4; i++) {
                if (gSaveContext.save.info.inventory.items[temp + i] == ITEM_BOTTLE_EMPTY) {
                    PRINTF(T("Item_Pt(1)=%d Item_Pt(2)=%d Item_Pt(3)=%d   空瓶=%d   中味=%d\n",
                             "Item_Pt(1)=%d Item_Pt(2)=%d Item_Pt(3)=%d   Empty Bottle=%d   Content=%d\n"),
                           gSaveContext.save.info.equips.cButtonSlots[0], gSaveContext.save.info.equips.cButtonSlots[1],
                           gSaveContext.save.info.equips.cButtonSlots[2], temp + i, item);

                    if ((temp + i) == gSaveContext.save.info.equips.cButtonSlots[0]) {
                        gSaveContext.save.info.equips.buttonItems[1] = item;
                        Interface_LoadItemIcon2(play, 1);
                        gSaveContext.buttonStatus[1] = BTN_ENABLED;
                    } else if ((temp + i) == gSaveContext.save.info.equips.cButtonSlots[1]) {
                        gSaveContext.save.info.equips.buttonItems[2] = item;
                        Interface_LoadItemIcon2(play, 2);
                        gSaveContext.buttonStatus[2] = BTN_ENABLED;
                    } else if ((temp + i) == gSaveContext.save.info.equips.cButtonSlots[2]) {
                        gSaveContext.save.info.equips.buttonItems[3] = item;
                        Interface_LoadItemIcon1(play, 3);
                        gSaveContext.buttonStatus[3] = BTN_ENABLED;
                    }

                    gSaveContext.save.info.inventory.items[temp + i] = item;
                    return ITEM_NONE;
                }
            }
        } else {
            for (i = 0; i < 4; i++) {
                if (gSaveContext.save.info.inventory.items[temp + i] == ITEM_NONE) {
                    gSaveContext.save.info.inventory.items[temp + i] = item;
                    return ITEM_NONE;
                }
            }
        }
    } else if ((item >= ITEM_WEIRD_EGG) && (item <= ITEM_CLAIM_CHECK)) {
        if (item == ITEM_POACHERS_SAW) {
            SET_ITEMGETINF(ITEMGETINF_1F);
        }

        temp = INV_CONTENT(item);
        INV_CONTENT(item) = item;

        if (temp != ITEM_NONE) {
            for (i = 1; i < 4; i++) {
                if (temp == gSaveContext.save.info.equips.buttonItems[i]) {
                    if (item != ITEM_SOLD_OUT) {
                        gSaveContext.save.info.equips.buttonItems[i] = item;
                        Interface_LoadItemIcon1(play, i);
                    } else {
                        gSaveContext.save.info.equips.buttonItems[i] = ITEM_NONE;
                    }
                    return ITEM_NONE;
                }
            }
        }

        return ITEM_NONE;
    }

    temp = gSaveContext.save.info.inventory.items[slot];
    PRINTF("Item_Register(%d)=%d  %d\n", slot, item, temp);
    INV_CONTENT(item) = item;

    return temp;
}

u8 Item_CheckObtainability(u8 item) {
    s16 i;
    s16 slot = SLOT(item);
    s16 temp;

    if (item >= ITEM_DEKU_STICKS_5) {
        slot = SLOT(sExtraItemBases[item - ITEM_DEKU_STICKS_5]);
    }

    PRINTF(VT_FGCOL(GREEN));
    PRINTF("item_get_non_setting=%d  pt=%d  z=%x\n", item, slot, gSaveContext.save.info.inventory.items[slot]);
    PRINTF(VT_RST);

    if ((item >= ITEM_MEDALLION_FOREST) && (item <= ITEM_MEDALLION_LIGHT)) {
        return ITEM_NONE;
    } else if ((item >= ITEM_KOKIRI_EMERALD) && (item <= ITEM_SKULL_TOKEN)) {
        return ITEM_NONE;
    } else if ((item >= ITEM_SWORD_KOKIRI) && (item <= ITEM_SWORD_BIGGORON)) {
        if (item == ITEM_SWORD_BIGGORON) {
            return ITEM_NONE;
        } else if (CHECK_OWNED_EQUIP(EQUIP_TYPE_SWORD, item - ITEM_SWORD_KOKIRI + EQUIP_INV_SWORD_KOKIRI)) {
            return item;
        } else {
            return ITEM_NONE;
        }
    } else if ((item >= ITEM_SHIELD_DEKU) && (item <= ITEM_SHIELD_MIRROR)) {
        if (CHECK_OWNED_EQUIP(EQUIP_TYPE_SHIELD, item - ITEM_SHIELD_DEKU + EQUIP_INV_SHIELD_DEKU)) {
            return item;
        } else {
            return ITEM_NONE;
        }
    } else if ((item >= ITEM_TUNIC_KOKIRI) && (item <= ITEM_TUNIC_ZORA)) {
        if (CHECK_OWNED_EQUIP(EQUIP_TYPE_TUNIC, item - ITEM_TUNIC_KOKIRI + EQUIP_INV_TUNIC_KOKIRI)) {
            return item;
        } else {
            return ITEM_NONE;
        }
    } else if ((item >= ITEM_BOOTS_KOKIRI) && (item <= ITEM_BOOTS_HOVER)) {
        if (CHECK_OWNED_EQUIP(EQUIP_TYPE_BOOTS, item - ITEM_BOOTS_KOKIRI + EQUIP_INV_BOOTS_KOKIRI)) {
            return item;
        } else {
            return ITEM_NONE;
        }
    } else if ((item == ITEM_DUNGEON_BOSS_KEY) || (item == ITEM_DUNGEON_COMPASS) || (item == ITEM_DUNGEON_MAP)) {
        return ITEM_NONE;
    } else if (item == ITEM_SMALL_KEY) {
        return ITEM_NONE;
    } else if ((item >= ITEM_SLINGSHOT) && (item <= ITEM_BOMBCHU)) {
        return ITEM_NONE;
    } else if ((item == ITEM_BOMBCHUS_5) || (item == ITEM_BOMBCHUS_20)) {
        return ITEM_NONE;
    } else if ((item == ITEM_QUIVER_30) || (item == ITEM_BOW)) {
        if (CUR_UPG_VALUE(UPG_QUIVER) == 0) {
            return ITEM_NONE;
        } else {
            return 0;
        }
    } else if ((item == ITEM_QUIVER_40) || (item == ITEM_QUIVER_50)) {
        return ITEM_NONE;
    } else if ((item == ITEM_BULLET_BAG_40) || (item == ITEM_BULLET_BAG_50)) {
        return ITEM_NONE;
    } else if ((item == ITEM_BOMB_BAG_20) || (item == ITEM_BOMB)) {
        if (CUR_UPG_VALUE(UPG_BOMB_BAG) == 0) {
            return ITEM_NONE;
        } else {
            return 0;
        }
    } else if ((item >= ITEM_DEKU_STICK_UPGRADE_20) && (item <= ITEM_DEKU_NUT_UPGRADE_40)) {
        return ITEM_NONE;
    } else if ((item >= ITEM_BOMB_BAG_30) && (item <= ITEM_GIANTS_WALLET)) {
        return ITEM_NONE;
    } else if (item == ITEM_LONGSHOT) {
        return ITEM_NONE;
    } else if ((item == ITEM_DEKU_SEEDS) || (item == ITEM_DEKU_SEEDS_30)) {
        if (!GET_ITEMGETINF(ITEMGETINF_13)) {
            return ITEM_NONE;
        } else {
            return ITEM_DEKU_SEEDS;
        }
    } else if (item == ITEM_MAGIC_BEAN) {
        return ITEM_NONE;
    } else if ((item == ITEM_HEART_PIECE_2) || (item == ITEM_HEART_PIECE)) {
        return ITEM_NONE;
    } else if (item == ITEM_HEART_CONTAINER) {
        return ITEM_NONE;
    } else if (item == ITEM_RECOVERY_HEART) {
        return ITEM_RECOVERY_HEART;
    } else if ((item == ITEM_MAGIC_JAR_SMALL) || (item == ITEM_MAGIC_JAR_BIG)) {
        PRINTF(T("魔法の壷 Get_Inf_Table( 25, 0x0100)=%d\n", "Magic Pot Get_Inf_Table( 25, 0x0100)=%d\n"),
               GET_INFTABLE(INFTABLE_198));
        if (!GET_INFTABLE(INFTABLE_198)) {
            return ITEM_NONE;
        } else {
            return item;
        }
    } else if ((item >= ITEM_RUPEE_GREEN) && (item <= ITEM_INVALID_8)) {
        return ITEM_NONE;
    } else if (item == ITEM_BOTTLE_EMPTY) {
        return ITEM_NONE;
    } else if (((item >= ITEM_BOTTLE_POTION_RED) && (item <= ITEM_BOTTLE_POE)) || (item == ITEM_MILK)) {
        temp = SLOT(item);

        if ((item != ITEM_BOTTLE_MILK_FULL) && (item != ITEM_BOTTLE_RUTOS_LETTER)) {
            if (item == ITEM_MILK) {
                item = ITEM_BOTTLE_MILK_FULL;
                temp = SLOT(item);
            }

            for (i = 0; i < 4; i++) {
                if (gSaveContext.save.info.inventory.items[temp + i] == ITEM_BOTTLE_EMPTY) {
                    return ITEM_NONE;
                }
            }
        } else {
            for (i = 0; i < 4; i++) {
                if (gSaveContext.save.info.inventory.items[temp + i] == ITEM_NONE) {
                    return ITEM_NONE;
                }
            }
        }
    } else if ((item >= ITEM_WEIRD_EGG) && (item <= ITEM_CLAIM_CHECK)) {
        return ITEM_NONE;
    }

    return gSaveContext.save.info.inventory.items[slot];
}

void Inventory_DeleteItem(u16 item, u16 invSlot) {
    s16 i;

    if (item == ITEM_MAGIC_BEAN) {
        BEANS_BOUGHT = 0;
    }

    gSaveContext.save.info.inventory.items[invSlot] = ITEM_NONE;

    PRINTF("\nItem_Register(%d)\n", invSlot, gSaveContext.save.info.inventory.items[invSlot]);

    for (i = 1; i < 4; i++) {
        if (gSaveContext.save.info.equips.buttonItems[i] == item) {
            gSaveContext.save.info.equips.buttonItems[i] = ITEM_NONE;
            gSaveContext.save.info.equips.cButtonSlots[i - 1] = SLOT_NONE;
        }
    }
}

s32 Inventory_ReplaceItem(PlayState* play, u16 oldItem, u16 newItem) {
    s16 i;

    for (i = 0; i < ARRAY_COUNT(gSaveContext.save.info.inventory.items); i++) {
        if (gSaveContext.save.info.inventory.items[i] == oldItem) {
            gSaveContext.save.info.inventory.items[i] = newItem;
            PRINTF(T("アイテム消去(%d)\n", "Item Purge (%d)\n"), i);
            for (i = 1; i < 4; i++) {
                if (gSaveContext.save.info.equips.buttonItems[i] == oldItem) {
                    gSaveContext.save.info.equips.buttonItems[i] = newItem;
                    Interface_LoadItemIcon1(play, i);
                    break;
                }
            }
            return true;
        }
    }

    return false;
}

s32 Inventory_HasEmptyBottle(void) {
    s32 slot;

    for (slot = SLOT_BOTTLE_1; slot <= SLOT_BOTTLE_4; slot++) {
        if (gSaveContext.save.info.inventory.items[slot] == ITEM_BOTTLE_EMPTY) {
            return true;
        }
    }

    return false;
}

s32 Inventory_HasSpecificBottle(u8 bottleItem) {
    s32 slot;

    for (slot = SLOT_BOTTLE_1; slot <= SLOT_BOTTLE_4; slot++) {
        if (gSaveContext.save.info.inventory.items[slot] == bottleItem) {
            return true;
        }
    }

    return false;
}

void Inventory_UpdateBottleItem(PlayState* play, u8 item, u8 button) {
    PRINTF("item_no=%x,  c_no=%x,  Pt=%x  Item_Register=%x\n", item, button,
           gSaveContext.save.info.equips.cButtonSlots[button - 1],
           gSaveContext.save.info.inventory.items[gSaveContext.save.info.equips.cButtonSlots[button - 1]]);

    // Special case to only empty half of a Lon Lon Milk Bottle
    if ((gSaveContext.save.info.inventory.items[gSaveContext.save.info.equips.cButtonSlots[button - 1]] ==
         ITEM_BOTTLE_MILK_FULL) &&
        (item == ITEM_BOTTLE_EMPTY)) {
        item = ITEM_BOTTLE_MILK_HALF;
    }

    gSaveContext.save.info.inventory.items[gSaveContext.save.info.equips.cButtonSlots[button - 1]] = item;
    gSaveContext.save.info.equips.buttonItems[button] = item;

    Interface_LoadItemIcon1(play, button);

    play->pauseCtx.cursorItem[PAUSE_ITEM] = item;
    gSaveContext.buttonStatus[button] = BTN_ENABLED;
}

s32 Inventory_ConsumeFairy(PlayState* play) {
    s32 bottleSlot = SLOT(ITEM_BOTTLE_FAIRY);
    s16 i;
    s16 j;

    for (i = 0; i < 4; i++) {
        if (gSaveContext.save.info.inventory.items[bottleSlot + i] == ITEM_BOTTLE_FAIRY) {
            for (j = 1; j < 4; j++) {
                if (gSaveContext.save.info.equips.buttonItems[j] == ITEM_BOTTLE_FAIRY) {
                    gSaveContext.save.info.equips.buttonItems[j] = ITEM_BOTTLE_EMPTY;
                    Interface_LoadItemIcon1(play, j);
                    i = 0;
                    bottleSlot = gSaveContext.save.info.equips.cButtonSlots[j - 1];
                    break;
                }
            }
            PRINTF(T("妖精使用＝%d\n", "Fairy Usage=%d\n"), bottleSlot);
            gSaveContext.save.info.inventory.items[bottleSlot + i] = ITEM_BOTTLE_EMPTY;
            return true;
        }
    }

    return false;
}

void func_80086D5C(s32* buf, u16 size) {
    u16 i;

    for (i = 0; i < size; i++) {
        buf[i] = 0;
    }
}

void Interface_LoadActionLabel(InterfaceContext* interfaceCtx, u16 action, s16 loadOffset) {
#if OOT_NTSC
    static void* sDoActionTextures[] = { gAttackDoActionJPNTex, gCheckDoActionJPNTex };
#else
    static void* sDoActionTextures[] = { gAttackDoActionENGTex, gCheckDoActionENGTex };
#endif

    if (action >= DO_ACTION_MAX) {
        action = DO_ACTION_NONE;
    }

    if (gSaveContext.language != 0) { // LANGUAGE_JPN for NTSC versions, LANGUAGE_ENG for PAL versions
        action += DO_ACTION_MAX;
    }

#if OOT_VERSION >= PAL_1_0
    if (gSaveContext.language == 2) { // LANGUAGE_FRA for PAL versions
        action += DO_ACTION_MAX;
    }
#endif

#if OOT_VERSION < PAL_1_0
    if ((action != 0 * DO_ACTION_MAX + DO_ACTION_NONE) && (action != 1 * DO_ACTION_MAX + DO_ACTION_NONE))
#else
    if ((action != 0 * DO_ACTION_MAX + DO_ACTION_NONE) && (action != 1 * DO_ACTION_MAX + DO_ACTION_NONE) &&
        (action != 2 * DO_ACTION_MAX + DO_ACTION_NONE))
#endif
    {
        osCreateMesgQueue(&interfaceCtx->loadQueue, &interfaceCtx->loadMsg, 1);
        DMA_REQUEST_ASYNC(&interfaceCtx->dmaRequest_160,
                          interfaceCtx->doActionSegment + (loadOffset * DO_ACTION_TEX_SIZE),
                          (uintptr_t)_do_action_staticSegmentRomStart + (action * DO_ACTION_TEX_SIZE),
                          DO_ACTION_TEX_SIZE, 0, &interfaceCtx->loadQueue, NULL, "../z_parameter.c", 2145);
        osRecvMesg(&interfaceCtx->loadQueue, NULL, OS_MESG_BLOCK);
    } else {
        gSegments[7] = VIRTUAL_TO_PHYSICAL(interfaceCtx->doActionSegment);
        func_80086D5C(SEGMENTED_TO_VIRTUAL(sDoActionTextures[loadOffset]), DO_ACTION_TEX_SIZE / 4);
    }
}

void Interface_SetDoAction(PlayState* play, u16 action) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    PauseContext* pauseCtx = &play->pauseCtx;

    if (interfaceCtx->unk_1F0 != action) {
        interfaceCtx->unk_1F0 = action;
        interfaceCtx->unk_1EC = 1;
        interfaceCtx->unk_1F4 = 0.0f;
        Interface_LoadActionLabel(interfaceCtx, action, 1);
        if (pauseCtx->state != PAUSE_STATE_OFF) {
            interfaceCtx->unk_1EC = 3;
        }
    }
}

void Interface_SetNaviCall(PlayState* play, u16 naviCallState) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;

    if (((naviCallState == 0x1D) || (naviCallState == 0x1E)) && !interfaceCtx->naviCalling &&
        (play->csCtx.state == CS_STATE_IDLE)) {
        // clang-format off
        if (naviCallState == 0x1E) { Audio_PlaySfxGeneral(NA_SE_VO_NAVY_CALL, &gSfxDefaultPos, 4,
                                                            &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                            &gSfxDefaultReverb);
        }
        // clang-format on

        if (naviCallState == 0x1D) {
            func_800F4524(&gSfxDefaultPos, NA_SE_VO_NA_HELLO_2, 32);
        }

        interfaceCtx->naviCalling = true;
        sCUpInvisible = 0;
        sCUpTimer = 10;
    } else if ((naviCallState == 0x1F) && interfaceCtx->naviCalling) {
        interfaceCtx->naviCalling = false;
    }
}

void Interface_LoadActionLabelB(PlayState* play, u16 action) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;

    if (gSaveContext.language != 0) { // LANGUAGE_JPN for NTSC versions, LANGUAGE_ENG for PAL versions
        action += DO_ACTION_MAX;
    }

#if OOT_VERSION >= PAL_1_0
    if (gSaveContext.language == 2) { // LANGUAGE_FRA for PAL versions
        action += DO_ACTION_MAX;
    }
#endif

    interfaceCtx->unk_1FC = action;

    osCreateMesgQueue(&interfaceCtx->loadQueue, &interfaceCtx->loadMsg, 1);
    DMA_REQUEST_ASYNC(&interfaceCtx->dmaRequest_160, interfaceCtx->doActionSegment + DO_ACTION_TEX_SIZE,
                      (uintptr_t)_do_action_staticSegmentRomStart + (action * DO_ACTION_TEX_SIZE), DO_ACTION_TEX_SIZE,
                      0, &interfaceCtx->loadQueue, NULL, "../z_parameter.c", 2228);
    osRecvMesg(&interfaceCtx->loadQueue, NULL, OS_MESG_BLOCK);

    interfaceCtx->unk_1FA = true;
}

/**
 * @return false if player is out of health
 */
s32 Health_ChangeBy(PlayState* play, s16 amount) {
    u16 heartCount;
    UNUSED_NDEBUG u16 healthLevel;

    PRINTF(T("＊＊＊＊＊  増減=%d (now=%d, max=%d)  ＊＊＊", "*****  Fluctuation=%d (now=%d, max=%d)  ***"), amount,
           gSaveContext.save.info.playerData.health, gSaveContext.save.info.playerData.healthCapacity);

    // clang-format off
    if (amount > 0) { Audio_PlaySfxGeneral(NA_SE_SY_HP_RECOVER, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    } else if (gSaveContext.save.info.playerData.isDoubleDefenseAcquired && (amount < 0)) {
        amount >>= 1;
        PRINTF(T("ハート減少半分！！＝%d\n", "Heart decrease halved!! = %d\n"),  amount);
    }
    // clang-format on

    gSaveContext.save.info.playerData.health += amount;

    if (gSaveContext.save.info.playerData.health > gSaveContext.save.info.playerData.healthCapacity) {
        gSaveContext.save.info.playerData.health = gSaveContext.save.info.playerData.healthCapacity;
    }

    heartCount = gSaveContext.save.info.playerData.health % 0x10;

    healthLevel = heartCount;
    if (heartCount != 0) {
        if (heartCount > 10) {
            healthLevel = 3;
        } else if (heartCount > 5) {
            healthLevel = 2;
        } else {
            healthLevel = 1;
        }
    }

    PRINTF(T("  ライフ=%d  ＊＊＊  %d  ＊＊＊＊＊＊\n", "  Life=%d  ***  %d  ******\n"),
           gSaveContext.save.info.playerData.health, healthLevel);

    if (gSaveContext.save.info.playerData.health <= 0) {
        gSaveContext.save.info.playerData.health = 0;
        return false;
    } else {
        return true;
    }
}

void Health_GiveHearts(s16 hearts) {
    gSaveContext.save.info.playerData.healthCapacity += hearts * 0x10;
}

void Rupees_ChangeBy(s16 rupeeChange) {
    gSaveContext.rupeeAccumulator += rupeeChange;
}

void Inventory_ChangeAmmo(s16 item, s16 ammoChange) {
    PRINTF(T("アイテム = (%d)    数 = (%d + %d)  ", "Item = (%d)    Amount = (%d + %d)  "), item, AMMO(item),
           ammoChange);

    if (item == ITEM_DEKU_STICK) {
        AMMO(ITEM_DEKU_STICK) += ammoChange;

        if (AMMO(ITEM_DEKU_STICK) >= CUR_CAPACITY(UPG_DEKU_STICKS)) {
            AMMO(ITEM_DEKU_STICK) = CUR_CAPACITY(UPG_DEKU_STICKS);
        } else if (AMMO(ITEM_DEKU_STICK) < 0) {
            AMMO(ITEM_DEKU_STICK) = 0;
        }
    } else if (item == ITEM_DEKU_NUT) {
        AMMO(ITEM_DEKU_NUT) += ammoChange;

        if (AMMO(ITEM_DEKU_NUT) >= CUR_CAPACITY(UPG_DEKU_NUTS)) {
            AMMO(ITEM_DEKU_NUT) = CUR_CAPACITY(UPG_DEKU_NUTS);
        } else if (AMMO(ITEM_DEKU_NUT) < 0) {
            AMMO(ITEM_DEKU_NUT) = 0;
        }
    } else if (item == ITEM_BOMBCHU) {
        AMMO(ITEM_BOMBCHU) += ammoChange;

        if (AMMO(ITEM_BOMBCHU) >= 50) {
            AMMO(ITEM_BOMBCHU) = 50;
        } else if (AMMO(ITEM_BOMBCHU) < 0) {
            AMMO(ITEM_BOMBCHU) = 0;
        }
    } else if (item == ITEM_BOW) {
        AMMO(ITEM_BOW) += ammoChange;

        if (AMMO(ITEM_BOW) >= CUR_CAPACITY(UPG_QUIVER)) {
            AMMO(ITEM_BOW) = CUR_CAPACITY(UPG_QUIVER);
        } else if (AMMO(ITEM_BOW) < 0) {
            AMMO(ITEM_BOW) = 0;
        }
    } else if ((item == ITEM_SLINGSHOT) || (item == ITEM_DEKU_SEEDS)) {
        AMMO(ITEM_SLINGSHOT) += ammoChange;

        if (AMMO(ITEM_SLINGSHOT) >= CUR_CAPACITY(UPG_BULLET_BAG)) {
            AMMO(ITEM_SLINGSHOT) = CUR_CAPACITY(UPG_BULLET_BAG);
        } else if (AMMO(ITEM_SLINGSHOT) < 0) {
            AMMO(ITEM_SLINGSHOT) = 0;
        }
    } else if (item == ITEM_BOMB) {
        AMMO(ITEM_BOMB) += ammoChange;

        if (AMMO(ITEM_BOMB) >= CUR_CAPACITY(UPG_BOMB_BAG)) {
            AMMO(ITEM_BOMB) = CUR_CAPACITY(UPG_BOMB_BAG);
        } else if (AMMO(ITEM_BOMB) < 0) {
            AMMO(ITEM_BOMB) = 0;
        }
    } else if (item == ITEM_MAGIC_BEAN) {
        AMMO(ITEM_MAGIC_BEAN) += ammoChange;
    }

    PRINTF(T("合計 = (%d)\n", "Total = (%d)\n"), AMMO(item));
}

void Magic_Fill(PlayState* play) {
    if (gSaveContext.save.info.playerData.isMagicAcquired) {
        gSaveContext.prevMagicState = gSaveContext.magicState;
        gSaveContext.magicFillTarget =
            (gSaveContext.save.info.playerData.isDoubleMagicAcquired + 1) * MAGIC_NORMAL_METER;
        gSaveContext.magicState = MAGIC_STATE_FILL;
    }
}

void Magic_Reset(PlayState* play) {
    if ((gSaveContext.magicState != MAGIC_STATE_STEP_CAPACITY) && (gSaveContext.magicState != MAGIC_STATE_FILL)) {
        if (gSaveContext.magicState == MAGIC_STATE_ADD) {
            gSaveContext.prevMagicState = gSaveContext.magicState;
        }
        gSaveContext.magicState = MAGIC_STATE_RESET;
    }
}

/**
 * Request to either increase or consume magic.
 * @param amount the positive-valued amount to either increase or decrease magic by
 * @param type how the magic is increased or consumed.
 * @return false if the request failed
 */
s32 Magic_RequestChange(PlayState* play, s16 amount, s16 type) {
    if (!gSaveContext.save.info.playerData.isMagicAcquired) {
        return false;
    }

    if ((type != MAGIC_ADD) && (gSaveContext.save.info.playerData.magic - amount) < 0) {
        if (gSaveContext.magicCapacity != 0) {
            Audio_PlaySfxGeneral(NA_SE_SY_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }
        return false;
    }

    switch (type) {
        case MAGIC_CONSUME_NOW:
        case MAGIC_CONSUME_NOW_ALT:
            // Consume magic immediately
            if ((gSaveContext.magicState == MAGIC_STATE_IDLE) ||
                (gSaveContext.magicState == MAGIC_STATE_CONSUME_LENS)) {
                if (gSaveContext.magicState == MAGIC_STATE_CONSUME_LENS) {
                    play->actorCtx.lensActive = false;
                }
                gSaveContext.magicTarget = gSaveContext.save.info.playerData.magic - amount;
                gSaveContext.magicState = MAGIC_STATE_CONSUME_SETUP;
                return true;
            } else {
                Audio_PlaySfxGeneral(NA_SE_SY_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                return false;
            }

        case MAGIC_CONSUME_WAIT_NO_PREVIEW:
            // Sets consume target but waits to consume.
            // No yellow magic to preview target consumption.
            // Unused
            if ((gSaveContext.magicState == MAGIC_STATE_IDLE) ||
                (gSaveContext.magicState == MAGIC_STATE_CONSUME_LENS)) {
                if (gSaveContext.magicState == MAGIC_STATE_CONSUME_LENS) {
                    play->actorCtx.lensActive = false;
                }
                gSaveContext.magicTarget = gSaveContext.save.info.playerData.magic - amount;
                gSaveContext.magicState = MAGIC_STATE_METER_FLASH_3;
                return true;
            } else {
                Audio_PlaySfxGeneral(NA_SE_SY_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                return false;
            }

        case MAGIC_CONSUME_LENS:
            if (gSaveContext.magicState == MAGIC_STATE_IDLE) {
                if (gSaveContext.save.info.playerData.magic != 0) {
                    play->interfaceCtx.lensMagicConsumptionTimer = 80;
                    gSaveContext.magicState = MAGIC_STATE_CONSUME_LENS;
                    return true;
                } else {
                    return false;
                }
            } else if (gSaveContext.magicState == MAGIC_STATE_CONSUME_LENS) {
                return true;
            } else {
                return false;
            }

        case MAGIC_CONSUME_WAIT_PREVIEW:
            // Sets consume target but waits to consume.
            // Preview consumption with a yellow bar
            if ((gSaveContext.magicState == MAGIC_STATE_IDLE) ||
                (gSaveContext.magicState == MAGIC_STATE_CONSUME_LENS)) {
                if (gSaveContext.magicState == MAGIC_STATE_CONSUME_LENS) {
                    play->actorCtx.lensActive = false;
                }
                gSaveContext.magicTarget = gSaveContext.save.info.playerData.magic - amount;
                gSaveContext.magicState = MAGIC_STATE_METER_FLASH_2;
                return true;
            } else {
                Audio_PlaySfxGeneral(NA_SE_SY_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                return false;
            }

        case MAGIC_ADD:
            // Sets target for magic to increase to
            if (gSaveContext.save.info.playerData.magic <= gSaveContext.magicCapacity) {
                gSaveContext.magicTarget = gSaveContext.save.info.playerData.magic + amount;

                if (gSaveContext.magicTarget >= gSaveContext.magicCapacity) {
                    gSaveContext.magicTarget = gSaveContext.magicCapacity;
                }

                gSaveContext.magicState = MAGIC_STATE_ADD;
                return true;
            }
            break;
    }

    return false;
}

void Magic_Update(PlayState* play) {
    static s16 sMagicBorderColors[][3] = {
        { 255, 255, 255 },
        { 150, 150, 150 },
        { 255, 255, 150 }, // unused
        { 255, 255, 50 },  // unused
    };
    static s16 sMagicBorderIndices[] = { 0, 1, 1, 0 };
    static s16 sMagicBorderRatio = 2;
    static s16 sMagicBorderStep = 1;
    MessageContext* msgCtx = &play->msgCtx;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    s16 borderChangeR;
    s16 borderChangeG;
    s16 borderChangeB;
    s16 temp; // target for magicCapacity, or magicBorderIndex

    switch (gSaveContext.magicState) {
        case MAGIC_STATE_STEP_CAPACITY:
            // Step magicCapacity to the capacity determined by magicLevel
            // This changes the width of the magic meter drawn
            temp = gSaveContext.save.info.playerData.magicLevel * MAGIC_NORMAL_METER;
            if (gSaveContext.magicCapacity != temp) {
                if (gSaveContext.magicCapacity < temp) {
                    gSaveContext.magicCapacity += 8;
                    if (gSaveContext.magicCapacity > temp) {
                        gSaveContext.magicCapacity = temp;
                    }
                } else {
                    gSaveContext.magicCapacity -= 8;
                    if (gSaveContext.magicCapacity <= temp) {
                        gSaveContext.magicCapacity = temp;
                    }
                }
            } else {
                // Once the capacity has reached its target,
                // follow up by filling magic to magicFillTarget
                gSaveContext.magicState = MAGIC_STATE_FILL;
            }
            break;

        case MAGIC_STATE_FILL:
            // Add magic until magicFillTarget is reached
            gSaveContext.save.info.playerData.magic += 4;

            if (gSaveContext.gameMode == GAMEMODE_NORMAL && !IS_CUTSCENE_LAYER) {
                Audio_PlaySfxGeneral(NA_SE_SY_GAUGE_UP - SFX_FLAG, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            }

            PRINTF(T("蓄電  MAGIC_NOW=%d (%d)\n", "Storage  MAGIC_NOW=%d (%d)\n"),
                   gSaveContext.save.info.playerData.magic, gSaveContext.magicFillTarget);

            if (gSaveContext.save.info.playerData.magic >= gSaveContext.magicFillTarget) {
                gSaveContext.save.info.playerData.magic = gSaveContext.magicFillTarget;
                gSaveContext.magicState = gSaveContext.prevMagicState;
                gSaveContext.prevMagicState = MAGIC_STATE_IDLE;
            }
            break;

        case MAGIC_STATE_CONSUME_SETUP:
            // Sets the speed at which magic border flashes
            sMagicBorderRatio = 2;
            gSaveContext.magicState = MAGIC_STATE_CONSUME;
            break;

        case MAGIC_STATE_CONSUME:
            // Consume magic until target is reached or no more magic is available
            gSaveContext.save.info.playerData.magic -= 2;
            if (gSaveContext.save.info.playerData.magic <= 0) {
                gSaveContext.save.info.playerData.magic = 0;
                gSaveContext.magicState = MAGIC_STATE_METER_FLASH_1;
                sMagicBorderR = sMagicBorderG = sMagicBorderB = 255;
            } else if (gSaveContext.save.info.playerData.magic == gSaveContext.magicTarget) {
                gSaveContext.magicState = MAGIC_STATE_METER_FLASH_1;
                sMagicBorderR = sMagicBorderG = sMagicBorderB = 255;
            }
            FALLTHROUGH; // Flash border while magic is being consumed
        case MAGIC_STATE_METER_FLASH_1:
        case MAGIC_STATE_METER_FLASH_2:
        case MAGIC_STATE_METER_FLASH_3:
            temp = sMagicBorderIndices[sMagicBorderStep];
            borderChangeR = ABS(sMagicBorderR - sMagicBorderColors[temp][0]) / sMagicBorderRatio;
            borderChangeG = ABS(sMagicBorderG - sMagicBorderColors[temp][1]) / sMagicBorderRatio;
            borderChangeB = ABS(sMagicBorderB - sMagicBorderColors[temp][2]) / sMagicBorderRatio;

            if (sMagicBorderR >= sMagicBorderColors[temp][0]) {
                sMagicBorderR -= borderChangeR;
            } else {
                sMagicBorderR += borderChangeR;
            }

            if (sMagicBorderG >= sMagicBorderColors[temp][1]) {
                sMagicBorderG -= borderChangeG;
            } else {
                sMagicBorderG += borderChangeG;
            }

            if (sMagicBorderB >= sMagicBorderColors[temp][2]) {
                sMagicBorderB -= borderChangeB;
            } else {
                sMagicBorderB += borderChangeB;
            }

            sMagicBorderRatio--;
            if (sMagicBorderRatio == 0) {
                sMagicBorderR = sMagicBorderColors[temp][0];
                sMagicBorderG = sMagicBorderColors[temp][1];
                sMagicBorderB = sMagicBorderColors[temp][2];
                sMagicBorderRatio = YREG(40 + sMagicBorderStep);
                sMagicBorderStep++;
                if (sMagicBorderStep >= 4) {
                    sMagicBorderStep = 0;
                }
            }
            break;

        case MAGIC_STATE_RESET:
            sMagicBorderR = sMagicBorderG = sMagicBorderB = 255;
            gSaveContext.magicState = MAGIC_STATE_IDLE;
            break;

        case MAGIC_STATE_CONSUME_LENS:
            // Slowly consume magic while lens is on
            if (!IS_PAUSED(&play->pauseCtx) && (msgCtx->msgMode == MSGMODE_NONE) &&
                (play->gameOverCtx.state == GAMEOVER_INACTIVE) && (play->transitionTrigger == TRANS_TRIGGER_OFF) &&
                (play->transitionMode == TRANS_MODE_OFF) && !Play_InCsMode(play)) {
                if ((gSaveContext.save.info.playerData.magic == 0) ||

                    ((Player_GetEnvironmentalHazard(play) >= PLAYER_ENV_HAZARD_UNDERWATER_FLOOR) &&
                     (Player_GetEnvironmentalHazard(play) <= PLAYER_ENV_HAZARD_UNDERWATER_FREE)) ||
                    ((gSaveContext.save.info.equips.buttonItems[1] != ITEM_LENS_OF_TRUTH) &&
                     (gSaveContext.save.info.equips.buttonItems[2] != ITEM_LENS_OF_TRUTH) &&
                     (gSaveContext.save.info.equips.buttonItems[3] != ITEM_LENS_OF_TRUTH)) ||
                    !play->actorCtx.lensActive) {
                    // Force lens off and set magic meter state to idle
                    play->actorCtx.lensActive = false;
                    Audio_PlaySfxGeneral(NA_SE_SY_GLASSMODE_OFF, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                    gSaveContext.magicState = MAGIC_STATE_IDLE;
                    sMagicBorderR = sMagicBorderG = sMagicBorderB = 255;
                    break;
                }

                interfaceCtx->lensMagicConsumptionTimer--;
                if (interfaceCtx->lensMagicConsumptionTimer == 0) {
                    gSaveContext.save.info.playerData.magic--;
                    interfaceCtx->lensMagicConsumptionTimer = 80;
                }
            }

            temp = sMagicBorderIndices[sMagicBorderStep];
            borderChangeR = ABS(sMagicBorderR - sMagicBorderColors[temp][0]) / sMagicBorderRatio;
            borderChangeG = ABS(sMagicBorderG - sMagicBorderColors[temp][1]) / sMagicBorderRatio;
            borderChangeB = ABS(sMagicBorderB - sMagicBorderColors[temp][2]) / sMagicBorderRatio;

            if (sMagicBorderR >= sMagicBorderColors[temp][0]) {
                sMagicBorderR -= borderChangeR;
            } else {
                sMagicBorderR += borderChangeR;
            }

            if (sMagicBorderG >= sMagicBorderColors[temp][1]) {
                sMagicBorderG -= borderChangeG;
            } else {
                sMagicBorderG += borderChangeG;
            }

            if (sMagicBorderB >= sMagicBorderColors[temp][2]) {
                sMagicBorderB -= borderChangeB;
            } else {
                sMagicBorderB += borderChangeB;
            }

            sMagicBorderRatio--;
            if (sMagicBorderRatio == 0) {
                sMagicBorderR = sMagicBorderColors[temp][0];
                sMagicBorderG = sMagicBorderColors[temp][1];
                sMagicBorderB = sMagicBorderColors[temp][2];
                sMagicBorderRatio = YREG(40 + sMagicBorderStep);
                sMagicBorderStep++;
                if (sMagicBorderStep >= 4) {
                    sMagicBorderStep = 0;
                }
            }
            break;

        case MAGIC_STATE_ADD:
            // Add magic until target is reached
            gSaveContext.save.info.playerData.magic += 4;
            Audio_PlaySfxGeneral(NA_SE_SY_GAUGE_UP - SFX_FLAG, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            if (gSaveContext.save.info.playerData.magic >= gSaveContext.magicTarget) {
                gSaveContext.save.info.playerData.magic = gSaveContext.magicTarget;
                gSaveContext.magicState = gSaveContext.prevMagicState;
                gSaveContext.prevMagicState = MAGIC_STATE_IDLE;
            }
            break;

        default:
            gSaveContext.magicState = MAGIC_STATE_IDLE;
            break;
    }
}

void Magic_DrawMeter(PlayState* play) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    s16 magicMeterY;

    OPEN_DISPS(play->state.gfxCtx, "../z_parameter.c", 2650);

    if (gSaveContext.save.info.playerData.magicLevel != 0) {
        if (gSaveContext.save.info.playerData.healthCapacity > 0xA0) {
            magicMeterY = R_MAGIC_METER_Y_LOWER; // two rows of hearts
        } else {
            magicMeterY = R_MAGIC_METER_Y_HIGHER; // one row of hearts
        }

        Gfx_SetupDL_39Overlay(play->state.gfxCtx);

        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, sMagicBorderR, sMagicBorderG, sMagicBorderB, interfaceCtx->magicAlpha);
        gDPSetEnvColor(OVERLAY_DISP++, 100, 50, 50, 255);

        OVERLAY_DISP = Gfx_TextureIA8(OVERLAY_DISP, gMagicMeterEndTex, 8, 16, R_MAGIC_METER_X, magicMeterY, 8, 16,
                                      1 << 10, 1 << 10);

        OVERLAY_DISP = Gfx_TextureIA8(OVERLAY_DISP, gMagicMeterMidTex, 24, 16, R_MAGIC_METER_X + 8, magicMeterY,
                                      gSaveContext.magicCapacity, 16, 1 << 10, 1 << 10);

        gDPLoadTextureBlock(OVERLAY_DISP++, gMagicMeterEndTex, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 16, 0,
                            G_TX_MIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 3, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        gSPTextureRectangle(OVERLAY_DISP++, (R_MAGIC_METER_X + gSaveContext.magicCapacity + 8) << 2, magicMeterY << 2,
                            (R_MAGIC_METER_X + gSaveContext.magicCapacity + 16) << 2, (magicMeterY + 16) << 2,
                            G_TX_RENDERTILE, 256, 0, 1 << 10, 1 << 10);

        gDPPipeSync(OVERLAY_DISP++);
        gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, PRIMITIVE, PRIMITIVE,
                          ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, PRIMITIVE);
        gDPSetEnvColor(OVERLAY_DISP++, 0, 0, 0, 255);

        if (gSaveContext.magicState == MAGIC_STATE_METER_FLASH_2) {
            // Yellow part of the meter indicating the amount of magic to be subtracted
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 250, 250, 0, interfaceCtx->magicAlpha);

            gDPLoadMultiBlock_4b(OVERLAY_DISP++, gMagicMeterFillTex, 0x0000, G_TX_RENDERTILE, G_IM_FMT_I, 16, 16, 0,
                                 G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                 G_TX_NOLOD, G_TX_NOLOD);

            gSPTextureRectangle(OVERLAY_DISP++, R_MAGIC_FILL_X << 2, (magicMeterY + 3) << 2,
                                (R_MAGIC_FILL_X + gSaveContext.save.info.playerData.magic) << 2,
                                (magicMeterY + 10) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

            // Fill the rest of the meter with the normal magic color
            gDPPipeSync(OVERLAY_DISP++);
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_MAGIC_FILL_COLOR(0), R_MAGIC_FILL_COLOR(1), R_MAGIC_FILL_COLOR(2),
                            interfaceCtx->magicAlpha);

            gSPTextureRectangle(OVERLAY_DISP++, R_MAGIC_FILL_X << 2, (magicMeterY + 3) << 2,
                                (R_MAGIC_FILL_X + gSaveContext.magicTarget) << 2, (magicMeterY + 10) << 2,
                                G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);
        } else {
            // Fill the whole meter with the normal magic color
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_MAGIC_FILL_COLOR(0), R_MAGIC_FILL_COLOR(1), R_MAGIC_FILL_COLOR(2),
                            interfaceCtx->magicAlpha);

            gDPLoadMultiBlock_4b(OVERLAY_DISP++, gMagicMeterFillTex, 0x0000, G_TX_RENDERTILE, G_IM_FMT_I, 16, 16, 0,
                                 G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                 G_TX_NOLOD, G_TX_NOLOD);

            gSPTextureRectangle(OVERLAY_DISP++, R_MAGIC_FILL_X << 2, (magicMeterY + 3) << 2,
                                (R_MAGIC_FILL_X + gSaveContext.save.info.playerData.magic) << 2,
                                (magicMeterY + 10) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);
        }
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_parameter.c", 2731);
}

void Interface_SetSubTimer(s16 seconds) {
    gSaveContext.timerX[TIMER_ID_SUB] = 140;
    gSaveContext.timerY[TIMER_ID_SUB] = 80;
    sEnvHazardActive = false;
    gSaveContext.subTimerSeconds = seconds;

    if (seconds != 0) {
        // count down
        gSaveContext.subTimerState = SUBTIMER_STATE_DOWN_INIT;
    } else {
        // count up
        gSaveContext.subTimerState = SUBTIMER_STATE_UP_INIT;
    }
}

/**
 * Set the subTimer to 1 second left
 */
void Interface_SetSubTimerToFinalSecond(PlayState* play) {
    if (gSaveContext.subTimerState != SUBTIMER_STATE_OFF) {
        if (GET_EVENTINF(EVENTINF_MARATHON_ACTIVE)) {
            // The running-man race counts up and finished at MARATHON_TIME_LIMIT
            gSaveContext.subTimerSeconds = MARATHON_TIME_LIMIT - 1;
        } else {
            gSaveContext.subTimerSeconds = 1;
        }
    }
}

void Interface_SetTimer(s16 seconds) {
    gSaveContext.timerX[TIMER_ID_MAIN] = 140;
    gSaveContext.timerY[TIMER_ID_MAIN] = 80;
    sEnvHazardActive = false;
    gSaveContext.timerSeconds = seconds;

    if (seconds != 0) {
        // count down
        gSaveContext.timerState = TIMER_STATE_DOWN_INIT;
    } else {
        // count up
        gSaveContext.timerState = TIMER_STATE_UP_INIT;
    }
}

void Interface_DrawActionLabel(GraphicsContext* gfxCtx, void* texture) {
    OPEN_DISPS(gfxCtx, "../z_parameter.c", 2820);

    gDPLoadTextureBlock_4b(OVERLAY_DISP++, texture, G_IM_FMT_IA, DO_ACTION_TEX_WIDTH, DO_ACTION_TEX_HEIGHT, 0,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);

    gSP1Quadrangle(OVERLAY_DISP++, 0, 2, 3, 1, 0);

    CLOSE_DISPS(gfxCtx, "../z_parameter.c", 2829);
}

void Interface_DrawItemButtons(PlayState* play) {
    static void* cUpLabelTextures[] = LANGUAGE_ARRAY(gNaviCUpJPNTex, gNaviCUpENGTex, gNaviCUpENGTex, gNaviCUpENGTex);
#if OOT_VERSION >= PAL_1_0
    static s16 startButtonLeftPos[] = { 132, 130, 130 };
#endif
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    Player* player = GET_PLAYER(play);
    PauseContext* pauseCtx = &play->pauseCtx;
    s16 temp; // Used as both an alpha value and a button index
#if OOT_PAL
    s16 texCoordScale;
    s16 width;
    s16 height;
#endif

    OPEN_DISPS(play->state.gfxCtx, "../z_parameter.c", 2900);

    // B Button Color & Texture
    // Also loads the Item Button Texture reused by other buttons afterwards
    gDPPipeSync(OVERLAY_DISP++);
    gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_B_BTN_COLOR(0), R_B_BTN_COLOR(1), R_B_BTN_COLOR(2), interfaceCtx->bAlpha);
    gDPSetEnvColor(OVERLAY_DISP++, 0, 0, 0, 255);
    OVERLAY_DISP =
        Gfx_TextureIA8(OVERLAY_DISP, gButtonBackgroundTex, 32, 32, R_ITEM_BTN_X(0), R_ITEM_BTN_Y(0),
                       R_ITEM_BTN_WIDTH(0), R_ITEM_BTN_WIDTH(0), R_ITEM_BTN_DD(0) << 1, R_ITEM_BTN_DD(0) << 1);

    // C-Left Button Color & Texture
    gDPPipeSync(OVERLAY_DISP++);
    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_C_BTN_COLOR(0), R_C_BTN_COLOR(1), R_C_BTN_COLOR(2),
                    interfaceCtx->cLeftAlpha);
    gSPTextureRectangle(OVERLAY_DISP++, R_ITEM_BTN_X(1) << 2, R_ITEM_BTN_Y(1) << 2,
                        (R_ITEM_BTN_X(1) + R_ITEM_BTN_WIDTH(1)) << 2, (R_ITEM_BTN_Y(1) + R_ITEM_BTN_WIDTH(1)) << 2,
                        G_TX_RENDERTILE, 0, 0, R_ITEM_BTN_DD(1) << 1, R_ITEM_BTN_DD(1) << 1);

    // C-Down Button Color & Texture
    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_C_BTN_COLOR(0), R_C_BTN_COLOR(1), R_C_BTN_COLOR(2),
                    interfaceCtx->cDownAlpha);
    gSPTextureRectangle(OVERLAY_DISP++, R_ITEM_BTN_X(2) << 2, R_ITEM_BTN_Y(2) << 2,
                        (R_ITEM_BTN_X(2) + R_ITEM_BTN_WIDTH(2)) << 2, (R_ITEM_BTN_Y(2) + R_ITEM_BTN_WIDTH(2)) << 2,
                        G_TX_RENDERTILE, 0, 0, R_ITEM_BTN_DD(2) << 1, R_ITEM_BTN_DD(2) << 1);

    // C-Right Button Color & Texture
    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_C_BTN_COLOR(0), R_C_BTN_COLOR(1), R_C_BTN_COLOR(2),
                    interfaceCtx->cRightAlpha);
    gSPTextureRectangle(OVERLAY_DISP++, R_ITEM_BTN_X(3) << 2, R_ITEM_BTN_Y(3) << 2,
                        (R_ITEM_BTN_X(3) + R_ITEM_BTN_WIDTH(3)) << 2, (R_ITEM_BTN_Y(3) + R_ITEM_BTN_WIDTH(3)) << 2,
                        G_TX_RENDERTILE, 0, 0, R_ITEM_BTN_DD(3) << 1, R_ITEM_BTN_DD(3) << 1);

    if (!IS_PAUSE_STATE_GAMEOVER(pauseCtx)) {
        if (IS_PAUSED(&play->pauseCtx)) {
            // Start Button Texture, Color & Label
            gDPPipeSync(OVERLAY_DISP++);
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, START_BUTTON_R, START_BUTTON_G, START_BUTTON_B,
                            interfaceCtx->startAlpha);

#if OOT_VERSION < PAL_1_0
            gSPTextureRectangle(OVERLAY_DISP++, R_START_BTN_X << 2, R_START_BTN_Y << 2, (R_START_BTN_X + 22) << 2,
                                (R_START_BTN_Y + 22) << 2, G_TX_RENDERTILE, 0, 0, (s32)(1.4277344 * (1 << 10)),
                                (s32)(1.4277344 * (1 << 10)));
#elif OOT_NTSC
            gSPTextureRectangle(OVERLAY_DISP++, 132 << 2, 17 << 2, (132 + 22) << 2, (17 + 22) << 2, G_TX_RENDERTILE, 0,
                                0, (s32)(1.4277344 * (1 << 10)), (s32)(1.4277344 * (1 << 10)));
#else
            gSPTextureRectangle(OVERLAY_DISP++, startButtonLeftPos[gSaveContext.language] << 2, 17 << 2,
                                (startButtonLeftPos[gSaveContext.language] + 22) << 2, (17 + 22) << 2, G_TX_RENDERTILE,
                                0, 0, (s32)(1.4277344 * (1 << 10)), (s32)(1.4277344 * (1 << 10)));
#endif

            gDPPipeSync(OVERLAY_DISP++);
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->startAlpha);
            gDPSetEnvColor(OVERLAY_DISP++, 0, 0, 0, 0);
            gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                              PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

            gDPLoadTextureBlock_4b(OVERLAY_DISP++, interfaceCtx->doActionSegment + DO_ACTION_TEX_SIZE * 2, G_IM_FMT_IA,
                                   DO_ACTION_TEX_WIDTH, DO_ACTION_TEX_HEIGHT, 0, G_TX_NOMIRROR | G_TX_WRAP,
                                   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

#if OOT_NTSC
            R_START_LABEL_SCALE = (1 << 10) / (R_START_LABEL_DD(gSaveContext.language) / 100.0f);
            R_START_LABEL_WIDTH = DO_ACTION_TEX_WIDTH / (R_START_LABEL_DD(gSaveContext.language) / 100.0f);
            R_START_LABEL_HEIGHT = DO_ACTION_TEX_HEIGHT / (R_START_LABEL_DD(gSaveContext.language) / 100.0f);
            gSPTextureRectangle(OVERLAY_DISP++, R_START_LABEL_X(gSaveContext.language) << 2,
                                R_START_LABEL_Y(gSaveContext.language) << 2,
                                (R_START_LABEL_X(gSaveContext.language) + R_START_LABEL_WIDTH) << 2,
                                (R_START_LABEL_Y(gSaveContext.language) + R_START_LABEL_HEIGHT) << 2, G_TX_RENDERTILE,
                                0, 0, R_START_LABEL_SCALE, R_START_LABEL_SCALE);
#else
            texCoordScale = (1 << 10) / (R_START_LABEL_DD(gSaveContext.language) / 100.0f);
            width = DO_ACTION_TEX_WIDTH / (R_START_LABEL_DD(gSaveContext.language) / 100.0f);
            height = DO_ACTION_TEX_HEIGHT / (R_START_LABEL_DD(gSaveContext.language) / 100.0f);
            gSPTextureRectangle(OVERLAY_DISP++, R_START_LABEL_X(gSaveContext.language) << 2,
                                R_START_LABEL_Y(gSaveContext.language) << 2,
                                (R_START_LABEL_X(gSaveContext.language) + width) << 2,
                                (R_START_LABEL_Y(gSaveContext.language) + height) << 2, G_TX_RENDERTILE, 0, 0,
                                texCoordScale, texCoordScale);
#endif
        }
    }

    if (interfaceCtx->naviCalling && !IS_PAUSED(&play->pauseCtx) && (play->csCtx.state == CS_STATE_IDLE)) {
        if (!sCUpInvisible) {
            // C-Up Button Texture, Color & Label (Navi Text)
            gDPPipeSync(OVERLAY_DISP++);

            if ((gSaveContext.hudVisibilityMode == HUD_VISIBILITY_NOTHING) ||
                (gSaveContext.hudVisibilityMode == HUD_VISIBILITY_NOTHING_ALT) ||
                (gSaveContext.hudVisibilityMode == HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE)) {
                temp = 0;
            } else if ((player->stateFlags1 & PLAYER_STATE1_21) ||
                       (Player_GetEnvironmentalHazard(play) == PLAYER_ENV_HAZARD_UNDERWATER_FREE) ||
                       (player->stateFlags2 & PLAYER_STATE2_CRAWLING)) {
                temp = 70;
            } else {
                temp = interfaceCtx->healthAlpha;
            }

            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_C_BTN_COLOR(0), R_C_BTN_COLOR(1), R_C_BTN_COLOR(2), temp);
            gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
            gSPTextureRectangle(OVERLAY_DISP++, R_C_UP_BTN_X << 2, R_C_UP_BTN_Y << 2, (R_C_UP_BTN_X + 16) << 2,
                                (R_C_UP_BTN_Y + 16) << 2, G_TX_RENDERTILE, 0, 0, 2 << 10, 2 << 10);
            gDPPipeSync(OVERLAY_DISP++);
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, temp);
            gDPSetEnvColor(OVERLAY_DISP++, 0, 0, 0, 0);
            gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                              PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

            gDPLoadTextureBlock_4b(OVERLAY_DISP++, cUpLabelTextures[gSaveContext.language], G_IM_FMT_IA, 32, 8, 0,
                                   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                   G_TX_NOLOD, G_TX_NOLOD);

            gSPTextureRectangle(OVERLAY_DISP++, R_C_UP_ICON_X << 2, R_C_UP_ICON_Y << 2, (R_C_UP_ICON_X + 32) << 2,
                                (R_C_UP_ICON_Y + 8) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);
        }

        sCUpTimer--;
        if (sCUpTimer == 0) {
            sCUpInvisible ^= 1;
            sCUpTimer = 10;
        }
    }

    gDPPipeSync(OVERLAY_DISP++);

    // Empty C Button Arrows
    for (temp = 1; temp < 4; temp++) {
        if (gSaveContext.save.info.equips.buttonItems[temp] > 0xF0) {
            if (temp == 1) {
                gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_C_BTN_COLOR(0), R_C_BTN_COLOR(1), R_C_BTN_COLOR(2),
                                interfaceCtx->cLeftAlpha);
            } else if (temp == 2) {
                gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_C_BTN_COLOR(0), R_C_BTN_COLOR(1), R_C_BTN_COLOR(2),
                                interfaceCtx->cDownAlpha);
            } else {
                gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_C_BTN_COLOR(0), R_C_BTN_COLOR(1), R_C_BTN_COLOR(2),
                                interfaceCtx->cRightAlpha);
            }

            OVERLAY_DISP = Gfx_TextureIA8(OVERLAY_DISP, ((u8*)gButtonBackgroundTex + ((32 * 32) * (temp + 1))), 32, 32,
                                          R_ITEM_BTN_X(temp), R_ITEM_BTN_Y(temp), R_ITEM_BTN_WIDTH(temp),
                                          R_ITEM_BTN_WIDTH(temp), R_ITEM_BTN_DD(temp) << 1, R_ITEM_BTN_DD(temp) << 1);
        }
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_parameter.c", 3071);
}

void Interface_DrawItemIconTexture(PlayState* play, void* texture, s16 button) {
    OPEN_DISPS(play->state.gfxCtx, "../z_parameter.c", 3079);

    gDPLoadTextureBlock(OVERLAY_DISP++, texture, G_IM_FMT_RGBA, G_IM_SIZ_32b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSPTextureRectangle(OVERLAY_DISP++, R_ITEM_ICON_X(button) << 2, R_ITEM_ICON_Y(button) << 2,
                        (R_ITEM_ICON_X(button) + R_ITEM_ICON_WIDTH(button)) << 2,
                        (R_ITEM_ICON_Y(button) + R_ITEM_ICON_WIDTH(button)) << 2, G_TX_RENDERTILE, 0, 0,
                        R_ITEM_ICON_DD(button) << 1, R_ITEM_ICON_DD(button) << 1);

    CLOSE_DISPS(play->state.gfxCtx, "../z_parameter.c", 3094);
}

void Interface_DrawAmmoCount(PlayState* play, s16 button, s16 alpha) {
    s16 i;
    s16 ammo;

    OPEN_DISPS(play->state.gfxCtx, "../z_parameter.c", 3105);

    i = gSaveContext.save.info.equips.buttonItems[button];

    if ((i == ITEM_DEKU_STICK) || (i == ITEM_DEKU_NUT) || (i == ITEM_BOMB) || (i == ITEM_BOW) ||
        ((i >= ITEM_BOW_FIRE) && (i <= ITEM_BOW_LIGHT)) || (i == ITEM_SLINGSHOT) || (i == ITEM_BOMBCHU) ||
        (i == ITEM_MAGIC_BEAN)) {

        if ((i >= ITEM_BOW_FIRE) && (i <= ITEM_BOW_LIGHT)) {
            i = ITEM_BOW;
        }

        ammo = AMMO(i);

        gDPPipeSync(OVERLAY_DISP++);

        if ((button == 0) && (gSaveContext.minigameState == 1)) {
            ammo = play->interfaceCtx.hbaAmmo;
        } else if ((button == 0) && (play->shootingGalleryStatus > 1)) {
            ammo = play->shootingGalleryStatus - 1;
        } else if ((button == 0) && (play->sceneId == SCENE_BOMBCHU_BOWLING_ALLEY) && Flags_GetSwitch(play, 0x38)) {
            ammo = play->bombchuBowlingStatus;
            if (ammo < 0) {
                ammo = 0;
            }
        } else if (((i == ITEM_BOW) && (AMMO(i) == CUR_CAPACITY(UPG_QUIVER))) ||
                   ((i == ITEM_BOMB) && (AMMO(i) == CUR_CAPACITY(UPG_BOMB_BAG))) ||
                   ((i == ITEM_SLINGSHOT) && (AMMO(i) == CUR_CAPACITY(UPG_BULLET_BAG))) ||
                   ((i == ITEM_DEKU_STICK) && (AMMO(i) == CUR_CAPACITY(UPG_DEKU_STICKS))) ||
                   ((i == ITEM_DEKU_NUT) && (AMMO(i) == CUR_CAPACITY(UPG_DEKU_NUTS))) ||
                   ((i == ITEM_BOMBCHU) && (ammo == 50)) || ((i == ITEM_MAGIC_BEAN) && (ammo == 15))) {
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 120, 255, 0, alpha);
        }

        if (ammo == 0) {
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 100, 100, 100, alpha);
        }

        for (i = 0; ammo >= 10; i++) {
            ammo -= 10;
        }

        if (i != 0) {
            OVERLAY_DISP = Gfx_TextureIA8(OVERLAY_DISP, ((u8*)gAmmoDigit0Tex + ((8 * 8) * i)), 8, 8,
                                          R_ITEM_AMMO_X(button), R_ITEM_AMMO_Y(button), 8, 8, 1 << 10, 1 << 10);
        }

        OVERLAY_DISP = Gfx_TextureIA8(OVERLAY_DISP, ((u8*)gAmmoDigit0Tex + ((8 * 8) * ammo)), 8, 8,
                                      R_ITEM_AMMO_X(button) + 6, R_ITEM_AMMO_Y(button), 8, 8, 1 << 10, 1 << 10);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_parameter.c", 3158);
}

void Interface_DrawActionButton(PlayState* play) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;

    OPEN_DISPS(play->state.gfxCtx, "../z_parameter.c", 3172);

    Matrix_Translate(0.0f, 0.0f, XREG(18) / 10.0f, MTXMODE_NEW);
    Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);
    Matrix_RotateX(interfaceCtx->unk_1F4 / 10000.0f, MTXMODE_APPLY);

    MATRIX_FINALIZE_AND_LOAD(OVERLAY_DISP++, play->state.gfxCtx, "../z_parameter.c", 3177);
    gSPVertex(OVERLAY_DISP++, &interfaceCtx->actionVtx[0], 4, 0);

    gDPLoadTextureBlock(OVERLAY_DISP++, gButtonBackgroundTex, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);

    gSP1Quadrangle(OVERLAY_DISP++, 0, 2, 3, 1, 0);

    CLOSE_DISPS(play->state.gfxCtx, "../z_parameter.c", 3187);
}

void Interface_InitVertices(PlayState* play) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    s16 i;

    interfaceCtx->actionVtx = GRAPH_ALLOC(play->state.gfxCtx, 8 * sizeof(Vtx));

    interfaceCtx->actionVtx[0].v.ob[0] = interfaceCtx->actionVtx[2].v.ob[0] = -14;
    interfaceCtx->actionVtx[1].v.ob[0] = interfaceCtx->actionVtx[3].v.ob[0] = interfaceCtx->actionVtx[0].v.ob[0] + 28;

    interfaceCtx->actionVtx[0].v.ob[1] = interfaceCtx->actionVtx[1].v.ob[1] = 14;
    interfaceCtx->actionVtx[2].v.ob[1] = interfaceCtx->actionVtx[3].v.ob[1] = interfaceCtx->actionVtx[0].v.ob[1] - 28;

    interfaceCtx->actionVtx[4].v.ob[0] = interfaceCtx->actionVtx[6].v.ob[0] = -(XREG(21) / 2);
    interfaceCtx->actionVtx[5].v.ob[0] = interfaceCtx->actionVtx[7].v.ob[0] =
        interfaceCtx->actionVtx[4].v.ob[0] + XREG(21);

    interfaceCtx->actionVtx[4].v.ob[1] = interfaceCtx->actionVtx[5].v.ob[1] = XREG(28) / 2;
    interfaceCtx->actionVtx[6].v.ob[1] = interfaceCtx->actionVtx[7].v.ob[1] =
        interfaceCtx->actionVtx[4].v.ob[1] - XREG(28);

    for (i = 0; i < 8; i += 4) {
        interfaceCtx->actionVtx[i].v.ob[2] = interfaceCtx->actionVtx[i + 1].v.ob[2] =
            interfaceCtx->actionVtx[i + 2].v.ob[2] = interfaceCtx->actionVtx[i + 3].v.ob[2] = 0;

        interfaceCtx->actionVtx[i].v.flag = interfaceCtx->actionVtx[i + 1].v.flag =
            interfaceCtx->actionVtx[i + 2].v.flag = interfaceCtx->actionVtx[i + 3].v.flag = 0;

        interfaceCtx->actionVtx[i].v.tc[0] = interfaceCtx->actionVtx[i].v.tc[1] =
            interfaceCtx->actionVtx[i + 1].v.tc[1] = interfaceCtx->actionVtx[i + 2].v.tc[0] = 0;
        interfaceCtx->actionVtx[i + 1].v.tc[0] = interfaceCtx->actionVtx[i + 2].v.tc[1] =
            interfaceCtx->actionVtx[i + 3].v.tc[0] = interfaceCtx->actionVtx[i + 3].v.tc[1] = 1024;

        interfaceCtx->actionVtx[i].v.cn[0] = interfaceCtx->actionVtx[i + 1].v.cn[0] =
            interfaceCtx->actionVtx[i + 2].v.cn[0] = interfaceCtx->actionVtx[i + 3].v.cn[0] =
                interfaceCtx->actionVtx[i].v.cn[1] = interfaceCtx->actionVtx[i + 1].v.cn[1] =
                    interfaceCtx->actionVtx[i + 2].v.cn[1] = interfaceCtx->actionVtx[i + 3].v.cn[1] =
                        interfaceCtx->actionVtx[i].v.cn[2] = interfaceCtx->actionVtx[i + 1].v.cn[2] =
                            interfaceCtx->actionVtx[i + 2].v.cn[2] = interfaceCtx->actionVtx[i + 3].v.cn[2] = 255;

        interfaceCtx->actionVtx[i].v.cn[3] = interfaceCtx->actionVtx[i + 1].v.cn[3] =
            interfaceCtx->actionVtx[i + 2].v.cn[3] = interfaceCtx->actionVtx[i + 3].v.cn[3] = 255;
    }

    interfaceCtx->actionVtx[5].v.tc[0] = interfaceCtx->actionVtx[7].v.tc[0] = 1536;
    interfaceCtx->actionVtx[6].v.tc[1] = interfaceCtx->actionVtx[7].v.tc[1] = 512;

    interfaceCtx->beatingHeartVtx = GRAPH_ALLOC(play->state.gfxCtx, 4 * sizeof(Vtx));

    interfaceCtx->beatingHeartVtx[0].v.ob[0] = interfaceCtx->beatingHeartVtx[2].v.ob[0] = -8;
    interfaceCtx->beatingHeartVtx[1].v.ob[0] = interfaceCtx->beatingHeartVtx[3].v.ob[0] = 8;
    interfaceCtx->beatingHeartVtx[0].v.ob[1] = interfaceCtx->beatingHeartVtx[1].v.ob[1] = 8;
    interfaceCtx->beatingHeartVtx[2].v.ob[1] = interfaceCtx->beatingHeartVtx[3].v.ob[1] = -8;

    interfaceCtx->beatingHeartVtx[0].v.ob[2] = interfaceCtx->beatingHeartVtx[1].v.ob[2] =
        interfaceCtx->beatingHeartVtx[2].v.ob[2] = interfaceCtx->beatingHeartVtx[3].v.ob[2] = 0;

    interfaceCtx->beatingHeartVtx[0].v.flag = interfaceCtx->beatingHeartVtx[1].v.flag =
        interfaceCtx->beatingHeartVtx[2].v.flag = interfaceCtx->beatingHeartVtx[3].v.flag = 0;

    interfaceCtx->beatingHeartVtx[0].v.tc[0] = interfaceCtx->beatingHeartVtx[0].v.tc[1] =
        interfaceCtx->beatingHeartVtx[1].v.tc[1] = interfaceCtx->beatingHeartVtx[2].v.tc[0] = 0;
    interfaceCtx->beatingHeartVtx[1].v.tc[0] = interfaceCtx->beatingHeartVtx[2].v.tc[1] =
        interfaceCtx->beatingHeartVtx[3].v.tc[0] = interfaceCtx->beatingHeartVtx[3].v.tc[1] = 512;

    interfaceCtx->beatingHeartVtx[0].v.cn[0] = interfaceCtx->beatingHeartVtx[1].v.cn[0] =
        interfaceCtx->beatingHeartVtx[2].v.cn[0] = interfaceCtx->beatingHeartVtx[3].v.cn[0] =
            interfaceCtx->beatingHeartVtx[0].v.cn[1] = interfaceCtx->beatingHeartVtx[1].v.cn[1] =
                interfaceCtx->beatingHeartVtx[2].v.cn[1] = interfaceCtx->beatingHeartVtx[3].v.cn[1] =
                    interfaceCtx->beatingHeartVtx[0].v.cn[2] = interfaceCtx->beatingHeartVtx[1].v.cn[2] =
                        interfaceCtx->beatingHeartVtx[2].v.cn[2] = interfaceCtx->beatingHeartVtx[3].v.cn[2] =
                            interfaceCtx->beatingHeartVtx[0].v.cn[3] = interfaceCtx->beatingHeartVtx[1].v.cn[3] =
                                interfaceCtx->beatingHeartVtx[2].v.cn[3] = interfaceCtx->beatingHeartVtx[3].v.cn[3] =
                                    255;
}

void func_8008A8B8(PlayState* play, s32 topY, s32 bottomY, s32 leftX, s32 rightX) {
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    Vec3f eye;
    Vec3f lookAt;
    Vec3f up;

    eye.x = eye.y = eye.z = 0.0f;
    lookAt.x = lookAt.y = 0.0f;
    lookAt.z = -1.0f;
    up.x = up.z = 0.0f;
    up.y = 1.0f;

    View_LookAt(&interfaceCtx->view, &eye, &lookAt, &up);

    interfaceCtx->viewport.topY = topY;
    interfaceCtx->viewport.bottomY = bottomY;
    interfaceCtx->viewport.leftX = leftX;
    interfaceCtx->viewport.rightX = rightX;
    View_SetViewport(&interfaceCtx->view, &interfaceCtx->viewport);

    View_SetPerspective(&interfaceCtx->view, 60.0f, 10.0f, 60.0f);
    View_ApplyPerspectiveToOverlay(&interfaceCtx->view);
}

void func_8008A994(InterfaceContext* interfaceCtx) {
    SET_FULLSCREEN_VIEWPORT(&interfaceCtx->view);
    View_ApplyOrthoToOverlay(&interfaceCtx->view);
}

void Interface_Draw(PlayState* play) {
    static s16 magicArrowEffectsR[] = { 255, 100, 255 };
    static s16 magicArrowEffectsG[] = { 0, 100, 255 };
    static s16 magicArrowEffectsB[] = { 0, 255, 100 };
    static s16 timerDigitLeftPos[] = { 16, 25, 34, 42, 51 };
    static s16 sDigitWidths[] = { 9, 9, 8, 9, 9 };
    // unused, most likely colors
    static s16 D_80125B1C[][3] = {
        { 0, 150, 0 }, { 100, 255, 0 }, { 255, 255, 255 }, { 0, 0, 0 }, { 255, 255, 255 },
    };
    static s16 rupeeDigitsFirst[] = { 1, 0, 0 };
    static s16 rupeeDigitsCount[] = { 2, 3, 3 };
    static s16 spoilingItemEntrances[] = { ENTR_LOST_WOODS_2, ENTR_ZORAS_DOMAIN_3, ENTR_ZORAS_DOMAIN_3 };
    static f32 D_80125B54[] = { -40.0f, -35.0f }; // unused
    static s16 D_80125B5C[] = { 91, 91 };         // unused
    static s16 sTimerNextSecondTimer;
    static s16 sTimerStateTimer;
    static s16 sSubTimerNextSecondTimer;
    static s16 sSubTimerStateTimer;
    static s16 sTimerDigits[5];
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    PauseContext* pauseCtx = &play->pauseCtx;
    MessageContext* msgCtx = &play->msgCtx;
    Player* player = GET_PLAYER(play);
    s16 svar1;
    s16 svar2;
    s16 svar3;
    s16 svar4;
    s16 svar5;
    s16 timerId;

    OPEN_DISPS(play->state.gfxCtx, "../z_parameter.c", 3405);

    gSPSegment(OVERLAY_DISP++, 0x02, interfaceCtx->parameterSegment);
    gSPSegment(OVERLAY_DISP++, 0x07, interfaceCtx->doActionSegment);
    gSPSegment(OVERLAY_DISP++, 0x08, interfaceCtx->iconItemSegment);
    gSPSegment(OVERLAY_DISP++, 0x0B, interfaceCtx->mapSegment);

    if (pauseCtx->debugState == 0) {
        Interface_InitVertices(play);
        func_8008A994(interfaceCtx);
        Health_DrawMeter(play);

        Gfx_SetupDL_39Overlay(play->state.gfxCtx);

        // Rupee Icon
        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 200, 255, 100, interfaceCtx->magicAlpha);
        gDPSetEnvColor(OVERLAY_DISP++, 0, 80, 0, 255);
        OVERLAY_DISP = Gfx_TextureIA8(OVERLAY_DISP, gRupeeCounterIconTex, 16, 16, 26, 206, 16, 16, 1 << 10, 1 << 10);

        switch (play->sceneId) {
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
                if (gSaveContext.save.info.inventory.dungeonKeys[gSaveContext.mapIndex] >= 0) {
                    // Small Key Icon
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 200, 230, 255, interfaceCtx->magicAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, 0, 0, 20, 255);
                    OVERLAY_DISP = Gfx_TextureIA8(OVERLAY_DISP, gSmallKeyCounterIconTex, 16, 16, 26, 190, 16, 16,
                                                  1 << 10, 1 << 10);

                    // Small Key Counter
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->magicAlpha);
                    gDPSetCombineLERP(OVERLAY_DISP++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE,
                                      TEXEL0, 0, PRIMITIVE, 0);

                    interfaceCtx->counterDigits[2] = 0;
                    interfaceCtx->counterDigits[3] =
                        gSaveContext.save.info.inventory.dungeonKeys[gSaveContext.mapIndex];

                    while (interfaceCtx->counterDigits[3] >= 10) {
                        interfaceCtx->counterDigits[2]++;
                        interfaceCtx->counterDigits[3] -= 10;
                    }

                    svar3 = 42;

                    if (interfaceCtx->counterDigits[2] != 0) {
                        OVERLAY_DISP = Gfx_TextureI8(
                            OVERLAY_DISP, ((u8*)gCounterDigit0Tex + (8 * 16 * interfaceCtx->counterDigits[2])), 8, 16,
                            svar3, 190, 8, 16, 1 << 10, 1 << 10);
                        svar3 += 8;
                    }

                    OVERLAY_DISP = Gfx_TextureI8(OVERLAY_DISP,
                                                 ((u8*)gCounterDigit0Tex + (8 * 16 * interfaceCtx->counterDigits[3])),
                                                 8, 16, svar3, 190, 8, 16, 1 << 10, 1 << 10);
                }
                break;
            default:
                break;
        }

        // Rupee Counter
        gDPPipeSync(OVERLAY_DISP++);

        if (gSaveContext.save.info.playerData.rupees == CUR_CAPACITY(UPG_WALLET)) {
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 120, 255, 0, interfaceCtx->magicAlpha);
        } else if (gSaveContext.save.info.playerData.rupees != 0) {
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->magicAlpha);
        } else {
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 100, 100, 100, interfaceCtx->magicAlpha);
        }

        gDPSetCombineLERP(OVERLAY_DISP++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0,
                          PRIMITIVE, 0);

        interfaceCtx->counterDigits[0] = interfaceCtx->counterDigits[1] = 0;
        interfaceCtx->counterDigits[2] = gSaveContext.save.info.playerData.rupees;

        if ((interfaceCtx->counterDigits[2] > 9999) || (interfaceCtx->counterDigits[2] < 0)) {
            interfaceCtx->counterDigits[2] &= 0xDDD;
        }

        while (interfaceCtx->counterDigits[2] >= 100) {
            interfaceCtx->counterDigits[0]++;
            interfaceCtx->counterDigits[2] -= 100;
        }

        while (interfaceCtx->counterDigits[2] >= 10) {
            interfaceCtx->counterDigits[1]++;
            interfaceCtx->counterDigits[2] -= 10;
        }

        svar2 = rupeeDigitsFirst[CUR_UPG_VALUE(UPG_WALLET)];
        svar4 = rupeeDigitsCount[CUR_UPG_VALUE(UPG_WALLET)];

        for (svar1 = 0, svar3 = 42; svar1 < svar4; svar1++, svar2++, svar3 += 8) {
            OVERLAY_DISP =
                Gfx_TextureI8(OVERLAY_DISP, ((u8*)gCounterDigit0Tex + (8 * 16 * interfaceCtx->counterDigits[svar2])), 8,
                              16, svar3, 206, 8, 16, 1 << 10, 1 << 10);
        }

        Magic_DrawMeter(play);
        Minimap_Draw(play);

        if ((R_PAUSE_BG_PRERENDER_STATE != PAUSE_BG_PRERENDER_PROCESS) &&
            (R_PAUSE_BG_PRERENDER_STATE != PAUSE_BG_PRERENDER_READY)) {
            Attention_Draw(&play->actorCtx.attention, play);
        }

        Gfx_SetupDL_39Overlay(play->state.gfxCtx);

        Interface_DrawItemButtons(play);

        gDPPipeSync(OVERLAY_DISP++);
        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->bAlpha);
        gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATERGBA_PRIM, G_CC_MODULATERGBA_PRIM);

        if (!(interfaceCtx->unk_1FA)) {
            // B Button Icon & Ammo Count
            if (gSaveContext.save.info.equips.buttonItems[0] != ITEM_NONE) {
                Interface_DrawItemIconTexture(play, interfaceCtx->iconItemSegment, 0);

                if ((player->stateFlags1 & PLAYER_STATE1_23) || (play->shootingGalleryStatus > 1) ||
                    ((play->sceneId == SCENE_BOMBCHU_BOWLING_ALLEY) && Flags_GetSwitch(play, 0x38))) {
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE,
                                      0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
                    Interface_DrawAmmoCount(play, 0, interfaceCtx->bAlpha);
                }
            }
        } else {
            // B Button Do Action Label
            gDPPipeSync(OVERLAY_DISP++);
            gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                              PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->bAlpha);

            gDPLoadTextureBlock_4b(OVERLAY_DISP++, interfaceCtx->doActionSegment + DO_ACTION_TEX_SIZE, G_IM_FMT_IA,
                                   DO_ACTION_TEX_WIDTH, DO_ACTION_TEX_HEIGHT, 0, G_TX_NOMIRROR | G_TX_WRAP,
                                   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

            R_B_LABEL_DD = (1 << 10) / (R_B_LABEL_SCALE(gSaveContext.language) / 100.0f);
            gSPTextureRectangle(OVERLAY_DISP++, R_B_LABEL_X(gSaveContext.language) << 2,
                                R_B_LABEL_Y(gSaveContext.language) << 2,
                                (R_B_LABEL_X(gSaveContext.language) + DO_ACTION_TEX_WIDTH) << 2,
                                (R_B_LABEL_Y(gSaveContext.language) + DO_ACTION_TEX_HEIGHT) << 2, G_TX_RENDERTILE, 0, 0,
                                R_B_LABEL_DD, R_B_LABEL_DD);
        }

        gDPPipeSync(OVERLAY_DISP++);

        // C-Left Button Icon & Ammo Count
        if (gSaveContext.save.info.equips.buttonItems[1] < 0xF0) {
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->cLeftAlpha);
            gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATERGBA_PRIM, G_CC_MODULATERGBA_PRIM);
            Interface_DrawItemIconTexture(play, interfaceCtx->iconItemSegment + 0x1000, 1);
            gDPPipeSync(OVERLAY_DISP++);
            gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                              PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
            Interface_DrawAmmoCount(play, 1, interfaceCtx->cLeftAlpha);
        }

        gDPPipeSync(OVERLAY_DISP++);

        // C-Down Button Icon & Ammo Count
        if (gSaveContext.save.info.equips.buttonItems[2] < 0xF0) {
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->cDownAlpha);
            gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATERGBA_PRIM, G_CC_MODULATERGBA_PRIM);
            Interface_DrawItemIconTexture(play, interfaceCtx->iconItemSegment + 0x2000, 2);
            gDPPipeSync(OVERLAY_DISP++);
            gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                              PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
            Interface_DrawAmmoCount(play, 2, interfaceCtx->cDownAlpha);
        }

        gDPPipeSync(OVERLAY_DISP++);

        // C-Right Button Icon & Ammo Count
        if (gSaveContext.save.info.equips.buttonItems[3] < 0xF0) {
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->cRightAlpha);
            gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATERGBA_PRIM, G_CC_MODULATERGBA_PRIM);
            Interface_DrawItemIconTexture(play, interfaceCtx->iconItemSegment + 0x3000, 3);
            gDPPipeSync(OVERLAY_DISP++);
            gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                              PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
            Interface_DrawAmmoCount(play, 3, interfaceCtx->cRightAlpha);
        }

        // A Button
        Gfx_SetupDL_42Overlay(play->state.gfxCtx);
        func_8008A8B8(play, R_A_BTN_Y, R_A_BTN_Y + 45, R_A_BTN_X, R_A_BTN_X + 45);
        gSPClearGeometryMode(OVERLAY_DISP++, G_CULL_BOTH);
        gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_A_BTN_COLOR(0), R_A_BTN_COLOR(1), R_A_BTN_COLOR(2),
                        interfaceCtx->aAlpha);
        Interface_DrawActionButton(play);
        gDPPipeSync(OVERLAY_DISP++);
        func_8008A8B8(play, R_A_ICON_Y, R_A_ICON_Y + 45, R_A_ICON_X, R_A_ICON_X + 45);
        gSPSetGeometryMode(OVERLAY_DISP++, G_CULL_BACK);
        gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->aAlpha);
        gDPSetEnvColor(OVERLAY_DISP++, 0, 0, 0, 0);
        Matrix_Translate(0.0f, 0.0f, R_A_LABEL_Z(gSaveContext.language) / 10.0f, MTXMODE_NEW);
        Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);
        Matrix_RotateX(interfaceCtx->unk_1F4 / 10000.0f, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(OVERLAY_DISP++, play->state.gfxCtx, "../z_parameter.c", 3701);
        gSPVertex(OVERLAY_DISP++, &interfaceCtx->actionVtx[4], 4, 0);

        if ((interfaceCtx->unk_1EC < 2) || (interfaceCtx->unk_1EC == 3)) {
            Interface_DrawActionLabel(play->state.gfxCtx, interfaceCtx->doActionSegment);
        } else {
            Interface_DrawActionLabel(play->state.gfxCtx, interfaceCtx->doActionSegment + DO_ACTION_TEX_SIZE);
        }

        gDPPipeSync(OVERLAY_DISP++);

        func_8008A994(interfaceCtx);

        if ((pauseCtx->state == PAUSE_STATE_MAIN) && (pauseCtx->mainState == PAUSE_MAIN_STATE_3)) {
            // Inventory Equip Effects
            gSPSegment(OVERLAY_DISP++, 0x08, pauseCtx->iconItemSegment);
            Gfx_SetupDL_42Overlay(play->state.gfxCtx);
            gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATERGBA_PRIM, G_CC_MODULATERGBA_PRIM);
            gSPMatrix(OVERLAY_DISP++, &gMtxClear, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            // PAUSE_CURSOR_QUAD_4
            pauseCtx->cursorVtx[16].v.ob[0] = pauseCtx->cursorVtx[18].v.ob[0] = pauseCtx->equipAnimX / 10;
            pauseCtx->cursorVtx[17].v.ob[0] = pauseCtx->cursorVtx[19].v.ob[0] =
                pauseCtx->cursorVtx[16].v.ob[0] + WREG(90) / 10;
            pauseCtx->cursorVtx[16].v.ob[1] = pauseCtx->cursorVtx[17].v.ob[1] = pauseCtx->equipAnimY / 10;
            pauseCtx->cursorVtx[18].v.ob[1] = pauseCtx->cursorVtx[19].v.ob[1] =
                pauseCtx->cursorVtx[16].v.ob[1] - WREG(90) / 10;

            if (pauseCtx->equipTargetItem < 0xBF) {
                // Normal Equip (icon goes from the inventory slot to the C button when equipping it)
                gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, pauseCtx->equipAnimAlpha);
                gSPVertex(OVERLAY_DISP++, &pauseCtx->cursorVtx[PAUSE_CURSOR_QUAD_4 * 4], 4, 0);

                gDPLoadTextureBlock(OVERLAY_DISP++, gItemIcons[pauseCtx->equipTargetItem], G_IM_FMT_RGBA, G_IM_SIZ_32b,
                                    ITEM_ICON_WIDTH, ITEM_ICON_HEIGHT, 0, G_TX_NOMIRROR | G_TX_WRAP,
                                    G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
            } else {
                // Magic Arrow Equip Effect
                svar1 = pauseCtx->equipTargetItem - 0xBF;
                gDPSetPrimColor(OVERLAY_DISP++, 0, 0, magicArrowEffectsR[svar1], magicArrowEffectsG[svar1],
                                magicArrowEffectsB[svar1], pauseCtx->equipAnimAlpha);

                if ((pauseCtx->equipAnimAlpha > 0) && (pauseCtx->equipAnimAlpha < 255)) {
                    svar1 = (pauseCtx->equipAnimAlpha / 8) / 2;
                    // PAUSE_CURSOR_QUAD_4
                    pauseCtx->cursorVtx[16].v.ob[0] = pauseCtx->cursorVtx[18].v.ob[0] =
                        pauseCtx->cursorVtx[16].v.ob[0] - svar1;
                    pauseCtx->cursorVtx[17].v.ob[0] = pauseCtx->cursorVtx[19].v.ob[0] =
                        pauseCtx->cursorVtx[16].v.ob[0] + svar1 * 2 + 32;
                    pauseCtx->cursorVtx[16].v.ob[1] = pauseCtx->cursorVtx[17].v.ob[1] =
                        pauseCtx->cursorVtx[16].v.ob[1] + svar1;
                    pauseCtx->cursorVtx[18].v.ob[1] = pauseCtx->cursorVtx[19].v.ob[1] =
                        pauseCtx->cursorVtx[16].v.ob[1] - svar1 * 2 - 32;
                }

                gSPVertex(OVERLAY_DISP++, &pauseCtx->cursorVtx[PAUSE_CURSOR_QUAD_4 * 4], 4, 0);
                gDPLoadTextureBlock(OVERLAY_DISP++, gMagicArrowEquipEffectTex, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0,
                                    G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                    G_TX_NOLOD, G_TX_NOLOD);
            }

            gSP1Quadrangle(OVERLAY_DISP++, 0, 2, 3, 1, 0);
        }

        Gfx_SetupDL_39Overlay(play->state.gfxCtx);

        if (!IS_PAUSED(&play->pauseCtx)) {
            if (gSaveContext.minigameState != 1) {
                // Carrots rendering if the action corresponds to riding a horse
                if (interfaceCtx->unk_1EE == 8) {
                    // Load Carrot Icon
                    gDPLoadTextureBlock(OVERLAY_DISP++, gCarrotIconTex, G_IM_FMT_RGBA, G_IM_SIZ_32b, 16, 16, 0,
                                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                        G_TX_NOLOD, G_TX_NOLOD);

                    // Draw 6 carrots
                    for (svar1 = 1, svar5 = ZREG(14); svar1 < 7; svar1++, svar5 += 16) {
                        // Carrot Color (based on availability)
                        if ((interfaceCtx->numHorseBoosts == 0) || (interfaceCtx->numHorseBoosts < svar1)) {
                            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 0, 150, 255, interfaceCtx->aAlpha);
                        } else {
                            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->aAlpha);
                        }

                        gSPTextureRectangle(OVERLAY_DISP++, svar5 << 2, ZREG(15) << 2, (svar5 + 16) << 2,
                                            (ZREG(15) + 16) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);
                    }
                }
            } else {
                // Score for the Horseback Archery
                svar5 = WREG(32);
                gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->bAlpha);

                // Target Icon
                gDPLoadTextureBlock(OVERLAY_DISP++, gArcheryScoreIconTex, G_IM_FMT_RGBA, G_IM_SIZ_16b, 24, 16, 0,
                                    G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                    G_TX_NOLOD, G_TX_NOLOD);

                gSPTextureRectangle(OVERLAY_DISP++, (svar5 + 28) << 2, ZREG(15) << 2, (svar5 + 52) << 2,
                                    (ZREG(15) + 16) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

                // Score Counter
                gDPPipeSync(OVERLAY_DISP++);
                gDPSetCombineLERP(OVERLAY_DISP++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE,
                                  TEXEL0, 0, PRIMITIVE, 0);

                svar5 = WREG(32) + 6 * 9;

                for (svar1 = svar2 = 0; svar1 < 4; svar1++) {
                    if (sHBAScoreDigits[svar1] != 0 || (svar2 != 0) || (svar1 >= 3)) {
                        OVERLAY_DISP = Gfx_TextureI8(
                            OVERLAY_DISP, ((u8*)gCounterDigit0Tex + (8 * 16 * sHBAScoreDigits[svar1])), 8, 16, svar5,
                            (ZREG(15) - 2), sDigitWidths[0], VREG(42), VREG(43) << 1, VREG(43) << 1);
                        svar5 += 9;
                        svar2++;
                    }
                }

                gDPPipeSync(OVERLAY_DISP++);
                gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATERGBA_PRIM, G_CC_MODULATERGBA_PRIM);
            }
        }

        if ((gSaveContext.subTimerState == SUBTIMER_STATE_RESPAWN) &&
            (Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT)) {
            // Trade quest timer reached 0
            sSubTimerStateTimer = 40;
            gSaveContext.save.cutsceneIndex = 0;
            play->transitionTrigger = TRANS_TRIGGER_START;
            play->transitionType = TRANS_TYPE_FADE_WHITE;
            gSaveContext.subTimerState = SUBTIMER_STATE_OFF;

            if ((gSaveContext.save.info.equips.buttonItems[0] != ITEM_SWORD_KOKIRI) &&
                (gSaveContext.save.info.equips.buttonItems[0] != ITEM_SWORD_MASTER) &&
                (gSaveContext.save.info.equips.buttonItems[0] != ITEM_SWORD_BIGGORON) &&
                (gSaveContext.save.info.equips.buttonItems[0] != ITEM_GIANTS_KNIFE)) {
                if (gSaveContext.buttonStatus[0] != BTN_ENABLED) {
                    gSaveContext.save.info.equips.buttonItems[0] = gSaveContext.buttonStatus[0];
                } else {
                    gSaveContext.save.info.equips.buttonItems[0] = ITEM_NONE;
                }
            }

            // Revert any spoiling trade quest items
            for (svar1 = 0; svar1 < ARRAY_COUNT(gSpoilingItems); svar1++) {
                if (INV_CONTENT(ITEM_TRADE_ADULT) == gSpoilingItems[svar1]) {
#if OOT_VERSION >= NTSC_1_1
                    gSaveContext.eventInf[EVENTINF_HORSES_INDEX] &=
                        (u16) ~(EVENTINF_HORSES_STATE_MASK | EVENTINF_HORSES_HORSETYPE_MASK | EVENTINF_HORSES_05_MASK |
                                EVENTINF_HORSES_06_MASK | EVENTINF_HORSES_0F_MASK);
                    PRINTF("EVENT_INF=%x\n", gSaveContext.eventInf[EVENTINF_HORSES_INDEX]);
#endif
                    play->nextEntranceIndex = spoilingItemEntrances[svar1];
                    INV_CONTENT(gSpoilingItemReverts[svar1]) = gSpoilingItemReverts[svar1];

                    for (svar2 = 1; svar2 < 4; svar2++) {
                        if (gSaveContext.save.info.equips.buttonItems[svar2] == gSpoilingItems[svar1]) {
                            gSaveContext.save.info.equips.buttonItems[svar2] = gSpoilingItemReverts[svar1];
                            Interface_LoadItemIcon1(play, svar2);
                        }
                    }
                }
            }
        }

        if (!IS_PAUSED(&play->pauseCtx) && (play->gameOverCtx.state == GAMEOVER_INACTIVE) &&
            (msgCtx->msgMode == MSGMODE_NONE) && !(player->stateFlags2 & PLAYER_STATE2_24) &&
            (play->transitionTrigger == TRANS_TRIGGER_OFF) && (play->transitionMode == TRANS_MODE_OFF) &&
            !Play_InCsMode(play) && (gSaveContext.minigameState != 1) && (play->shootingGalleryStatus <= 1) &&
            !((play->sceneId == SCENE_BOMBCHU_BOWLING_ALLEY) && Flags_GetSwitch(play, 0x38))) {

            timerId = TIMER_ID_MAIN;

            switch (gSaveContext.timerState) {
                case TIMER_STATE_ENV_HAZARD_INIT:
                    sTimerStateTimer = 20;
                    sTimerNextSecondTimer = 20;
                    gSaveContext.timerSeconds = gSaveContext.save.info.playerData.health >> 1;
                    gSaveContext.timerState = TIMER_STATE_ENV_HAZARD_PREVIEW;
                    break;

                case TIMER_STATE_ENV_HAZARD_PREVIEW:
                    sTimerStateTimer--;
                    if (sTimerStateTimer == 0) {
                        sTimerStateTimer = 20;
                        gSaveContext.timerState = TIMER_STATE_ENV_HAZARD_MOVE;
                    }
                    break;

                case TIMER_STATE_DOWN_INIT:
                case TIMER_STATE_UP_INIT:
                    sTimerStateTimer = 20;
                    sTimerNextSecondTimer = 20;
                    if (gSaveContext.timerState == TIMER_STATE_DOWN_INIT) {
                        gSaveContext.timerState = TIMER_STATE_DOWN_PREVIEW;
                    } else {
                        gSaveContext.timerState = TIMER_STATE_UP_PREVIEW;
                    }
                    break;

                case TIMER_STATE_DOWN_PREVIEW:
                case TIMER_STATE_UP_PREVIEW:
                    sTimerStateTimer--;
                    if (sTimerStateTimer == 0) {
                        sTimerStateTimer = 20;
                        if (gSaveContext.timerState == TIMER_STATE_DOWN_PREVIEW) {
                            gSaveContext.timerState = TIMER_STATE_DOWN_MOVE;
                        } else {
                            gSaveContext.timerState = TIMER_STATE_UP_MOVE;
                        }
                    }
                    break;

                case TIMER_STATE_ENV_HAZARD_MOVE:
                case TIMER_STATE_DOWN_MOVE:
                    svar1 = (gSaveContext.timerX[TIMER_ID_MAIN] - 26) / sTimerStateTimer;
                    gSaveContext.timerX[TIMER_ID_MAIN] -= svar1;

                    if (gSaveContext.save.info.playerData.healthCapacity > 0xA0) {
                        svar1 = (gSaveContext.timerY[TIMER_ID_MAIN] - 54) / sTimerStateTimer; // two rows of hearts
                    } else {
                        svar1 = (gSaveContext.timerY[TIMER_ID_MAIN] - 46) / sTimerStateTimer; // one row of hearts
                    }
                    gSaveContext.timerY[TIMER_ID_MAIN] -= svar1;

                    sTimerStateTimer--;
                    if (sTimerStateTimer == 0) {
                        sTimerStateTimer = 20;
                        gSaveContext.timerX[TIMER_ID_MAIN] = 26;

                        if (gSaveContext.save.info.playerData.healthCapacity > 0xA0) {
                            gSaveContext.timerY[TIMER_ID_MAIN] = 54; // two rows of hearts
                        } else {
                            gSaveContext.timerY[TIMER_ID_MAIN] = 46; // one row of hearts
                        }

                        if (gSaveContext.timerState == TIMER_STATE_ENV_HAZARD_MOVE) {
                            gSaveContext.timerState = TIMER_STATE_ENV_HAZARD_TICK;
                        } else {
                            gSaveContext.timerState = TIMER_STATE_DOWN_TICK;
                        }
                    }
                    FALLTHROUGH;
                case TIMER_STATE_ENV_HAZARD_TICK:
                case TIMER_STATE_DOWN_TICK:
                    if ((gSaveContext.timerState == TIMER_STATE_ENV_HAZARD_TICK) ||
                        (gSaveContext.timerState == TIMER_STATE_DOWN_TICK)) {
                        if (gSaveContext.save.info.playerData.healthCapacity > 0xA0) {
                            gSaveContext.timerY[TIMER_ID_MAIN] = 54; // two rows of hearts
                        } else {
                            gSaveContext.timerY[TIMER_ID_MAIN] = 46; // one row of hearts
                        }
                    }

                    if ((gSaveContext.timerState >= TIMER_STATE_ENV_HAZARD_MOVE) && (msgCtx->msgLength == 0)) {
                        sTimerNextSecondTimer--;
                        if (sTimerNextSecondTimer == 0) {
                            if (gSaveContext.timerSeconds != 0) {
                                gSaveContext.timerSeconds--;
                            }

                            sTimerNextSecondTimer = 20;

                            if (gSaveContext.timerSeconds == 0) {
                                // Out of time
                                gSaveContext.timerState = TIMER_STATE_STOP;
                                if (sEnvHazardActive) {
                                    gSaveContext.save.info.playerData.health = 0;
                                    play->damagePlayer(play, -(gSaveContext.save.info.playerData.health + 2));
                                }
                                sEnvHazardActive = false;
                            } else if (gSaveContext.timerSeconds > 60) {
                                // Beep at "xx:x1" (every 10 seconds)
                                if (sTimerDigits[4] == 1) {
                                    Audio_PlaySfxGeneral(NA_SE_SY_MESSAGE_WOMAN, &gSfxDefaultPos, 4,
                                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                         &gSfxDefaultReverb);
                                }
                            } else if (gSaveContext.timerSeconds > 10) {
                                // Beep on alternating seconds
                                if ((sTimerDigits[4] % 2) != 0) {
                                    Audio_PlaySfxGeneral(NA_SE_SY_WARNING_COUNT_N, &gSfxDefaultPos, 4,
                                                         &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                         &gSfxDefaultReverb);
                                }
                            } else {
                                // Beep every second
                                Audio_PlaySfxGeneral(NA_SE_SY_WARNING_COUNT_E, &gSfxDefaultPos, 4,
                                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                     &gSfxDefaultReverb);
                            }
                        }
                    }
                    break;

                case TIMER_STATE_UP_MOVE:
                    svar1 = (gSaveContext.timerX[TIMER_ID_MAIN] - 26) / sTimerStateTimer;
                    gSaveContext.timerX[TIMER_ID_MAIN] -= svar1;

                    if (gSaveContext.save.info.playerData.healthCapacity > 0xA0) {
                        svar1 = (gSaveContext.timerY[TIMER_ID_MAIN] - 54) / sTimerStateTimer; // two rows of hearts
                    } else {
                        svar1 = (gSaveContext.timerY[TIMER_ID_MAIN] - 46) / sTimerStateTimer; // one row of hearts
                    }
                    gSaveContext.timerY[TIMER_ID_MAIN] -= svar1;

                    sTimerStateTimer--;
                    if (sTimerStateTimer == 0) {
                        sTimerStateTimer = 20;
                        gSaveContext.timerX[TIMER_ID_MAIN] = 26;
                        if (gSaveContext.save.info.playerData.healthCapacity > 0xA0) {
                            gSaveContext.timerY[TIMER_ID_MAIN] = 54; // two rows of hearts
                        } else {
                            gSaveContext.timerY[TIMER_ID_MAIN] = 46; // one row of hearts
                        }

                        gSaveContext.timerState = TIMER_STATE_UP_TICK;
                    }
                    FALLTHROUGH;
                case TIMER_STATE_UP_TICK:
                    if (gSaveContext.timerState == TIMER_STATE_UP_TICK) {
                        if (gSaveContext.save.info.playerData.healthCapacity > 0xA0) {
                            gSaveContext.timerY[TIMER_ID_MAIN] = 54; // two rows of hearts
                        } else {
                            gSaveContext.timerY[TIMER_ID_MAIN] = 46; // one row of hearts
                        }
                    }

                    if (gSaveContext.timerState >= TIMER_STATE_ENV_HAZARD_MOVE) {
                        sTimerNextSecondTimer--;
                        if (sTimerNextSecondTimer == 0) {
                            gSaveContext.timerSeconds++;
                            sTimerNextSecondTimer = 20;

                            if (gSaveContext.timerSeconds == 3599) { // 59 minutes, 59 seconds
                                sTimerStateTimer = 40;
                                gSaveContext.timerState = TIMER_STATE_UP_FREEZE;
                            } else {
                                Audio_PlaySfxGeneral(NA_SE_SY_WARNING_COUNT_N, &gSfxDefaultPos, 4,
                                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                     &gSfxDefaultReverb);
                            }
                        }
                    }
                    break;

                case TIMER_STATE_STOP:
                    if (gSaveContext.subTimerState != SUBTIMER_STATE_OFF) {
                        sSubTimerStateTimer = 20;
                        sSubTimerNextSecondTimer = 20;
                        gSaveContext.timerX[TIMER_ID_SUB] = 140;
                        gSaveContext.timerY[TIMER_ID_SUB] = 80;

                        if (gSaveContext.subTimerState <= SUBTIMER_STATE_STOP) {
                            gSaveContext.subTimerState = SUBTIMER_STATE_DOWN_PREVIEW;
                        } else {
                            gSaveContext.subTimerState = SUBTIMER_STATE_UP_PREVIEW;
                        }

                        gSaveContext.timerState = TIMER_STATE_OFF;
                    } else {
                        gSaveContext.timerState = TIMER_STATE_OFF;
                    }
                    FALLTHROUGH;
                case TIMER_STATE_UP_FREEZE:
                    break;

                default: // TIMER_STATE_OFF
                    // Process the subTimer only if the main timer is off
                    timerId = TIMER_ID_SUB;

                    switch (gSaveContext.subTimerState) {
                        case SUBTIMER_STATE_DOWN_INIT:
                        case SUBTIMER_STATE_UP_INIT:
                            sSubTimerStateTimer = 20;
                            sSubTimerNextSecondTimer = 20;
                            gSaveContext.timerX[TIMER_ID_SUB] = 140;
                            gSaveContext.timerY[TIMER_ID_SUB] = 80;
                            if (gSaveContext.subTimerState == SUBTIMER_STATE_DOWN_INIT) {
                                gSaveContext.subTimerState = SUBTIMER_STATE_DOWN_PREVIEW;
                            } else {
                                gSaveContext.subTimerState = SUBTIMER_STATE_UP_PREVIEW;
                            }
                            break;

                        case SUBTIMER_STATE_DOWN_PREVIEW:
                        case SUBTIMER_STATE_UP_PREVIEW:
                            sSubTimerStateTimer--;
                            if (sSubTimerStateTimer == 0) {
                                sSubTimerStateTimer = 20;
                                if (gSaveContext.subTimerState == SUBTIMER_STATE_DOWN_PREVIEW) {
                                    gSaveContext.subTimerState = SUBTIMER_STATE_DOWN_MOVE;
                                } else {
                                    gSaveContext.subTimerState = SUBTIMER_STATE_UP_MOVE;
                                }
                            }
                            break;

                        case SUBTIMER_STATE_DOWN_MOVE:
                        case SUBTIMER_STATE_UP_MOVE:
                            PRINTF("event_xp[1]=%d,  event_yp[1]=%d  TOTAL_EVENT_TM=%d\n",
                                   ((void)0, gSaveContext.timerX[TIMER_ID_SUB]),
                                   ((void)0, gSaveContext.timerY[TIMER_ID_SUB]), gSaveContext.subTimerSeconds);
                            svar1 = (gSaveContext.timerX[TIMER_ID_SUB] - 26) / sSubTimerStateTimer;
                            gSaveContext.timerX[TIMER_ID_SUB] -= svar1;
                            if (gSaveContext.save.info.playerData.healthCapacity > 0xA0) {
                                // two rows of hearts
                                svar1 = (gSaveContext.timerY[TIMER_ID_SUB] - 54) / sSubTimerStateTimer;
                            } else {
                                // one row of hearts
                                svar1 = (gSaveContext.timerY[TIMER_ID_SUB] - 46) / sSubTimerStateTimer;
                            }
                            gSaveContext.timerY[TIMER_ID_SUB] -= svar1;

                            sSubTimerStateTimer--;
                            if (sSubTimerStateTimer == 0) {
                                sSubTimerStateTimer = 20;
                                gSaveContext.timerX[TIMER_ID_SUB] = 26;

                                if (gSaveContext.save.info.playerData.healthCapacity > 0xA0) {
                                    gSaveContext.timerY[TIMER_ID_SUB] = 54; // two rows of hearts
                                } else {
                                    gSaveContext.timerY[TIMER_ID_SUB] = 46; // one row of hearts
                                }

                                if (gSaveContext.subTimerState == SUBTIMER_STATE_DOWN_MOVE) {
                                    gSaveContext.subTimerState = SUBTIMER_STATE_DOWN_TICK;
                                } else {
                                    gSaveContext.subTimerState = SUBTIMER_STATE_UP_TICK;
                                }
                            }
                            FALLTHROUGH;
                        case SUBTIMER_STATE_DOWN_TICK:
                        case SUBTIMER_STATE_UP_TICK:
                            if ((gSaveContext.subTimerState == SUBTIMER_STATE_DOWN_TICK) ||
                                (gSaveContext.subTimerState == SUBTIMER_STATE_UP_TICK)) {
                                if (gSaveContext.save.info.playerData.healthCapacity > 0xA0) {
                                    gSaveContext.timerY[TIMER_ID_SUB] = 54; // two rows of hearts
                                } else {
                                    gSaveContext.timerY[TIMER_ID_SUB] = 46; // one row of hearts
                                }
                            }

                            if (gSaveContext.subTimerState >= SUBTIMER_STATE_DOWN_MOVE) {
                                sSubTimerNextSecondTimer--;
                                if (sSubTimerNextSecondTimer == 0) {
                                    sSubTimerNextSecondTimer = 20;
                                    if (gSaveContext.subTimerState == SUBTIMER_STATE_DOWN_TICK) {
                                        gSaveContext.subTimerSeconds--;
                                        PRINTF("TOTAL_EVENT_TM=%d\n", gSaveContext.subTimerSeconds);

#if OOT_VERSION < PAL_1_0
                                        if (gSaveContext.subTimerSeconds == 0)
#else
                                        if (gSaveContext.subTimerSeconds <= 0)
#endif
                                        {
                                            // Out of time
                                            if (!Flags_GetSwitch(play, 0x37) ||
                                                ((play->sceneId != SCENE_GANON_BOSS) &&
                                                 (play->sceneId != SCENE_GANONS_TOWER_COLLAPSE_EXTERIOR) &&
                                                 (play->sceneId != SCENE_GANONS_TOWER_COLLAPSE_INTERIOR) &&
                                                 (play->sceneId != SCENE_INSIDE_GANONS_CASTLE_COLLAPSE))) {
                                                sSubTimerStateTimer = 40;
                                                gSaveContext.subTimerState = SUBTIMER_STATE_RESPAWN;
                                                gSaveContext.save.cutsceneIndex = 0;
                                                Message_StartTextbox(play, 0x71B0, NULL);
                                                Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
                                            } else {
                                                sSubTimerStateTimer = 40;
                                                gSaveContext.subTimerState = SUBTIMER_STATE_STOP;
                                            }
                                        } else if (gSaveContext.subTimerSeconds > 60) {
                                            // Beep at "xx:x1" (every 10 seconds)
                                            if (sTimerDigits[4] == 1) {
                                                Audio_PlaySfxGeneral(NA_SE_SY_MESSAGE_WOMAN, &gSfxDefaultPos, 4,
                                                                     &gSfxDefaultFreqAndVolScale,
                                                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                                            }
                                        } else if (gSaveContext.subTimerSeconds > 10) {
                                            // Beep on alternating seconds
                                            if ((sTimerDigits[4] % 2) != 0) {
                                                Audio_PlaySfxGeneral(NA_SE_SY_WARNING_COUNT_N, &gSfxDefaultPos, 4,
                                                                     &gSfxDefaultFreqAndVolScale,
                                                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                                            }
                                        } else {
                                            // Beep every second
                                            Audio_PlaySfxGeneral(NA_SE_SY_WARNING_COUNT_E, &gSfxDefaultPos, 4,
                                                                 &gSfxDefaultFreqAndVolScale,
                                                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                                        }
                                    } else { // SUBTIMER_STATE_UP_TICK
                                        gSaveContext.subTimerSeconds++;

                                        // Special case for the running-man race
                                        if (GET_EVENTINF(EVENTINF_MARATHON_ACTIVE) &&
                                            (gSaveContext.subTimerSeconds == MARATHON_TIME_LIMIT)) {
                                            // After 4 minutes, cancel the timer
                                            Message_StartTextbox(play, 0x6083, NULL);
                                            CLEAR_EVENTINF(EVENTINF_MARATHON_ACTIVE);
                                            gSaveContext.subTimerState = SUBTIMER_STATE_OFF;
                                        }
                                    }

                                    // Beep at the minute mark
                                    if ((gSaveContext.subTimerSeconds % 60) == 0) {
                                        Audio_PlaySfxGeneral(NA_SE_SY_WARNING_COUNT_N, &gSfxDefaultPos, 4,
                                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                                                             &gSfxDefaultReverb);
                                    }
                                }
                            }
                            break;

                        case SUBTIMER_STATE_STOP:
                            sSubTimerStateTimer--;
                            if (sSubTimerStateTimer == 0) {
                                gSaveContext.subTimerState = SUBTIMER_STATE_OFF;
                            }
                            break;
                    }
                    break;
            }

            if (((gSaveContext.timerState != TIMER_STATE_OFF) && (gSaveContext.timerState != TIMER_STATE_STOP)) ||
                (gSaveContext.subTimerState != SUBTIMER_STATE_OFF)) {
                sTimerDigits[0] = sTimerDigits[1] = sTimerDigits[3] = 0;
                sTimerDigits[2] = 10; // digit 10 is used as ':' (colon)

                if (gSaveContext.timerState != TIMER_STATE_OFF) {
                    sTimerDigits[4] = gSaveContext.timerSeconds;
                } else {
                    sTimerDigits[4] = gSaveContext.subTimerSeconds;
                }

                while (sTimerDigits[4] >= 60) {
                    sTimerDigits[1]++;
                    if (sTimerDigits[1] >= 10) {
                        sTimerDigits[0]++;
                        sTimerDigits[1] -= 10;
                    }
                    sTimerDigits[4] -= 60;
                }

                while (sTimerDigits[4] >= 10) {
                    sTimerDigits[3]++;
                    sTimerDigits[4] -= 10;
                }

                // Clock Icon
                gDPPipeSync(OVERLAY_DISP++);
                gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, 255);
                gDPSetEnvColor(OVERLAY_DISP++, 0, 0, 0, 0);
                OVERLAY_DISP =
                    Gfx_TextureIA8(OVERLAY_DISP, gClockIconTex, 16, 16, ((void)0, gSaveContext.timerX[timerId]),
                                   ((void)0, gSaveContext.timerY[timerId]) + 2, 16, 16, 1 << 10, 1 << 10);

                // Timer Counter
                gDPPipeSync(OVERLAY_DISP++);
                gDPSetCombineLERP(OVERLAY_DISP++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE,
                                  TEXEL0, 0, PRIMITIVE, 0);

                if (gSaveContext.timerState != TIMER_STATE_OFF) {
                    // TIMER_ID_MAIN
                    if ((gSaveContext.timerSeconds < 10) && (gSaveContext.timerState <= TIMER_STATE_STOP)) {
                        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 50, 0, 255);
                    } else {
                        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, 255);
                    }
                } else {
                    // TIMER_ID_SUB
                    if ((gSaveContext.subTimerSeconds < 10) && (gSaveContext.subTimerState <= SUBTIMER_STATE_RESPAWN)) {
                        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 50, 0, 255);
                    } else {
                        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 0, 255);
                    }
                }

                for (svar1 = 0; svar1 < ARRAY_COUNT(sTimerDigits); svar1++) {
                    OVERLAY_DISP =
                        Gfx_TextureI8(OVERLAY_DISP, ((u8*)gCounterDigit0Tex + (8 * 16 * sTimerDigits[svar1])), 8, 16,
                                      ((void)0, gSaveContext.timerX[timerId]) + timerDigitLeftPos[svar1],
                                      ((void)0, gSaveContext.timerY[timerId]), sDigitWidths[svar1], VREG(42),
                                      VREG(43) << 1, VREG(43) << 1);
                }
            }
        }
    }

#if DEBUG_FEATURES
    if (pauseCtx->debugState == 3) {
        FlagSet_Update(play);
    }
#endif

    if (interfaceCtx->unk_244 != 0) {
        gDPPipeSync(OVERLAY_DISP++);
        gSPDisplayList(OVERLAY_DISP++, sSetupDL_80125A60);
        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 0, 0, 0, interfaceCtx->unk_244);
        gDPFillRectangle(OVERLAY_DISP++, 0, 0, gScreenWidth - 1, gScreenHeight - 1);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_parameter.c", 4269);
}

void Interface_Update(PlayState* play) {
    static u8 D_80125B60 = false;
    static s16 sPrevTimeSpeed = 0;
    MessageContext* msgCtx = &play->msgCtx;
    InterfaceContext* interfaceCtx = &play->interfaceCtx;
    Player* player = GET_PLAYER(play);
    s16 dimmingAlpha;
    s16 risingAlpha;
    u16 action;

#if OOT_PAL && DEBUG_FEATURES
    {
        Input* debugInput = &play->state.input[2];

        if (CHECK_BTN_ALL(debugInput->press.button, BTN_DLEFT)) {
            gSaveContext.language = LANGUAGE_ENG;
            PRINTF("J_N=%x J_N=%x\n", gSaveContext.language, &gSaveContext.language);
        } else if (CHECK_BTN_ALL(debugInput->press.button, BTN_DUP)) {
            gSaveContext.language = LANGUAGE_GER;
            PRINTF("J_N=%x J_N=%x\n", gSaveContext.language, &gSaveContext.language);
        } else if (CHECK_BTN_ALL(debugInput->press.button, BTN_DRIGHT)) {
            gSaveContext.language = LANGUAGE_FRA;
            PRINTF("J_N=%x J_N=%x\n", gSaveContext.language, &gSaveContext.language);
        }
    }
#endif

    if (!IS_PAUSED(&play->pauseCtx)) {
        if ((gSaveContext.minigameState == 1) || !IS_CUTSCENE_LAYER ||
            ((play->sceneId == SCENE_LON_LON_RANCH) && (gSaveContext.sceneLayer == 4))) {
            if ((msgCtx->msgMode == MSGMODE_NONE) ||
                ((msgCtx->msgMode != MSGMODE_NONE) && (play->sceneId == SCENE_BOMBCHU_BOWLING_ALLEY))) {
                if (play->gameOverCtx.state == GAMEOVER_INACTIVE) {
                    func_80083108(play);
                }
            }
        }
    }

    // Update hud visibility mode
    switch (gSaveContext.nextHudVisibilityMode) {
        case HUD_VISIBILITY_NOTHING:
        case HUD_VISIBILITY_NOTHING_ALT:
        case HUD_VISIBILITY_HEARTS_FORCE:
        case HUD_VISIBILITY_A:
        case HUD_VISIBILITY_A_HEARTS_MAGIC_FORCE:
        case HUD_VISIBILITY_A_HEARTS_MAGIC_MINIMAP_FORCE:
        case HUD_VISIBILITY_ALL_NO_MINIMAP_BY_BTN_STATUS:
        case HUD_VISIBILITY_B:
        case HUD_VISIBILITY_HEARTS_MAGIC:
        case HUD_VISIBILITY_B_ALT:
        case HUD_VISIBILITY_HEARTS:
        case HUD_VISIBILITY_A_B_MINIMAP:
        case HUD_VISIBILITY_HEARTS_MAGIC_FORCE:
            dimmingAlpha = 255 - (32 * gSaveContext.hudVisibilityModeTimer);
            if (dimmingAlpha < 0) {
                dimmingAlpha = 0;
            }

            Interface_UpdateHudAlphas(play, dimmingAlpha);
            gSaveContext.hudVisibilityModeTimer++;

            if (dimmingAlpha == 0) {
                gSaveContext.nextHudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
            }
            break;

        case HUD_VISIBILITY_ALL:
            dimmingAlpha = 255 - (32 * gSaveContext.hudVisibilityModeTimer);
            if (dimmingAlpha < 0) {
                dimmingAlpha = 0;
            }

            risingAlpha = 255 - dimmingAlpha;
            if (risingAlpha >= 255) {
                risingAlpha = 255;
            }

            PRINTF("case 50 : alpha=%d  alpha1=%d\n", dimmingAlpha, risingAlpha);

            Interface_RaiseButtonAlphas(play, risingAlpha);

            if (interfaceCtx->healthAlpha != 255) {
                interfaceCtx->healthAlpha = risingAlpha;
            }

            if (interfaceCtx->magicAlpha != 255) {
                interfaceCtx->magicAlpha = risingAlpha;
            }

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
                    if (interfaceCtx->minimapAlpha < 170) {
                        interfaceCtx->minimapAlpha = risingAlpha;
                    } else {
                        interfaceCtx->minimapAlpha = 170;
                    }
                    break;

                default:
                    if (interfaceCtx->minimapAlpha != 255) {
                        interfaceCtx->minimapAlpha = risingAlpha;
                    }
                    break;
            }

            gSaveContext.hudVisibilityModeTimer++;
            if (risingAlpha == 255) {
                gSaveContext.nextHudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
            }

            break;

        case HUD_VISIBILITY_NOTHING_INSTANT:
            // Hide the HUD immediately
            gSaveContext.nextHudVisibilityMode = HUD_VISIBILITY_NOTHING;
            Interface_UpdateHudAlphas(play, 0);
            gSaveContext.nextHudVisibilityMode = HUD_VISIBILITY_NO_CHANGE;
            FALLTHROUGH;
        default:
            break;
    }

    Map_Update(play);

    if (gSaveContext.healthAccumulator != 0) {
        gSaveContext.healthAccumulator -= 4;
        gSaveContext.save.info.playerData.health += 4;

        if ((gSaveContext.save.info.playerData.health & 0xF) < 4) {
            Audio_PlaySfxGeneral(NA_SE_SY_HP_RECOVER, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        }

        PRINTF("now_life=%d  max_life=%d\n", gSaveContext.save.info.playerData.health,
               gSaveContext.save.info.playerData.healthCapacity);

        if (gSaveContext.save.info.playerData.health >= gSaveContext.save.info.playerData.healthCapacity) {
            gSaveContext.save.info.playerData.health = gSaveContext.save.info.playerData.healthCapacity;
            PRINTF("S_Private.now_life=%d  S_Private.max_life=%d\n", gSaveContext.save.info.playerData.health,
                   gSaveContext.save.info.playerData.healthCapacity);
            gSaveContext.healthAccumulator = 0;
        }
    }

    Health_UpdateBeatingHeart(play);
    sEnvHazard = Player_GetEnvironmentalHazard(play);

    if (sEnvHazard == PLAYER_ENV_HAZARD_HOTROOM) {
        if (CUR_EQUIP_VALUE(EQUIP_TYPE_TUNIC) == EQUIP_VALUE_TUNIC_GORON) {
            sEnvHazard = PLAYER_ENV_HAZARD_NONE;
        }
    } else if ((Player_GetEnvironmentalHazard(play) >= PLAYER_ENV_HAZARD_UNDERWATER_FLOOR) &&
               (Player_GetEnvironmentalHazard(play) <= PLAYER_ENV_HAZARD_UNDERWATER_FREE)) {
        if (CUR_EQUIP_VALUE(EQUIP_TYPE_TUNIC) == EQUIP_VALUE_TUNIC_ZORA) {
            sEnvHazard = PLAYER_ENV_HAZARD_NONE;
        }
    }

    Health_UpdateMeter(play);

    if ((gSaveContext.timerState >= TIMER_STATE_ENV_HAZARD_MOVE) && !IS_PAUSED(&play->pauseCtx) &&
        (msgCtx->msgMode == MSGMODE_NONE) && !(player->stateFlags2 & PLAYER_STATE2_24) &&
        (play->transitionTrigger == TRANS_TRIGGER_OFF) && (play->transitionMode == TRANS_MODE_OFF) &&
        !Play_InCsMode(play)) {}

    if (gSaveContext.rupeeAccumulator != 0) {
        if (gSaveContext.rupeeAccumulator > 0) {
            if (gSaveContext.save.info.playerData.rupees < CUR_CAPACITY(UPG_WALLET)) {
                gSaveContext.rupeeAccumulator--;
                gSaveContext.save.info.playerData.rupees++;
                Audio_PlaySfxGeneral(NA_SE_SY_RUPY_COUNT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            } else {
                PRINTF(T("ルピー数ＭＡＸ = %d\n", "Rupee Amount MAX = %d\n"), CUR_CAPACITY(UPG_WALLET));
                gSaveContext.save.info.playerData.rupees = CUR_CAPACITY(UPG_WALLET);
                gSaveContext.rupeeAccumulator = 0;
            }
        } else if (gSaveContext.save.info.playerData.rupees != 0) {
            if (gSaveContext.rupeeAccumulator <= -50) {
                gSaveContext.rupeeAccumulator += 10;
                gSaveContext.save.info.playerData.rupees -= 10;

                if (gSaveContext.save.info.playerData.rupees < 0) {
                    gSaveContext.save.info.playerData.rupees = 0;
                }

                Audio_PlaySfxGeneral(NA_SE_SY_RUPY_COUNT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            } else {
                gSaveContext.rupeeAccumulator++;
                gSaveContext.save.info.playerData.rupees--;
                Audio_PlaySfxGeneral(NA_SE_SY_RUPY_COUNT, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            }
        } else {
            gSaveContext.rupeeAccumulator = 0;
        }
    }

    switch (interfaceCtx->unk_1EC) {
        case 1:
            interfaceCtx->unk_1F4 += 31400.0f / WREG(5);
            if (interfaceCtx->unk_1F4 >= 15700.0f) {
                interfaceCtx->unk_1F4 = -15700.0f;
                interfaceCtx->unk_1EC = 2;
            }
            break;
        case 2:
            interfaceCtx->unk_1F4 += 31400.0f / WREG(5);
            if (interfaceCtx->unk_1F4 >= 0.0f) {
                interfaceCtx->unk_1F4 = 0.0f;
                interfaceCtx->unk_1EC = 0;
                interfaceCtx->unk_1EE = interfaceCtx->unk_1F0;
                action = interfaceCtx->unk_1EE;
                if ((action == DO_ACTION_MAX) || (action == DO_ACTION_MAX + 1)) {
                    action = DO_ACTION_NONE;
                }
                Interface_LoadActionLabel(interfaceCtx, action, 0);
            }
            break;
        case 3:
            interfaceCtx->unk_1F4 += 31400.0f / WREG(5);
            if (interfaceCtx->unk_1F4 >= 15700.0f) {
                interfaceCtx->unk_1F4 = -15700.0f;
                interfaceCtx->unk_1EC = 2;
            }
            break;
        case 4:
            interfaceCtx->unk_1F4 += 31400.0f / WREG(5);
            if (interfaceCtx->unk_1F4 >= 0.0f) {
                interfaceCtx->unk_1F4 = 0.0f;
                interfaceCtx->unk_1EC = 0;
                interfaceCtx->unk_1EE = interfaceCtx->unk_1F0;
                action = interfaceCtx->unk_1EE;
                if ((action == DO_ACTION_MAX) || (action == DO_ACTION_MAX + 1)) {
                    action = DO_ACTION_NONE;
                }
                Interface_LoadActionLabel(interfaceCtx, action, 0);
            }
            break;
    }

    WREG(7) = interfaceCtx->unk_1F4;

    // Update Magic
    if (!IS_PAUSED(&play->pauseCtx) && (msgCtx->msgMode == MSGMODE_NONE) &&
        (play->transitionTrigger == TRANS_TRIGGER_OFF) && (play->gameOverCtx.state == GAMEOVER_INACTIVE) &&
        (play->transitionMode == TRANS_MODE_OFF) && ((play->csCtx.state == CS_STATE_IDLE) || !Player_InCsMode(play))) {

        if (gSaveContext.save.info.playerData.isMagicAcquired && (gSaveContext.save.info.playerData.magicLevel == 0)) {
            gSaveContext.save.info.playerData.magicLevel = gSaveContext.save.info.playerData.isDoubleMagicAcquired + 1;
            gSaveContext.magicState = MAGIC_STATE_STEP_CAPACITY;
            PRINTF(VT_FGCOL(YELLOW));
            PRINTF(T("魔法スター─────ト！！！！！！！！！\n", "Magic Start!!!!!!!!!\n"));
            PRINTF("MAGIC_MAX=%d\n", gSaveContext.save.info.playerData.magicLevel);
            PRINTF("MAGIC_NOW=%d\n", gSaveContext.save.info.playerData.magic);
            PRINTF("Z_MAGIC_NOW_NOW=%d\n", gSaveContext.magicFillTarget);
            PRINTF("Z_MAGIC_NOW_MAX=%d\n", gSaveContext.magicCapacity);
            PRINTF(VT_RST);
        }

        Magic_Update(play);
    }

    if (gSaveContext.timerState == TIMER_STATE_OFF) {
        if (((sEnvHazard == PLAYER_ENV_HAZARD_HOTROOM) || (sEnvHazard == PLAYER_ENV_HAZARD_UNDERWATER_FLOOR) ||
             (sEnvHazard == PLAYER_ENV_HAZARD_UNDERWATER_FREE)) &&

            ((gSaveContext.save.info.playerData.health >> 1) != 0)) {
            gSaveContext.timerState = TIMER_STATE_ENV_HAZARD_INIT;
            gSaveContext.timerX[TIMER_ID_MAIN] = 140;
            gSaveContext.timerY[TIMER_ID_MAIN] = 80;
            sEnvHazardActive = true;
        }
    } else {
        if (((sEnvHazard == PLAYER_ENV_HAZARD_NONE) || (sEnvHazard == PLAYER_ENV_HAZARD_SWIMMING)) &&
            (gSaveContext.timerState <= TIMER_STATE_ENV_HAZARD_TICK)) {
            gSaveContext.timerState = TIMER_STATE_OFF;
        }
    }

    if (gSaveContext.minigameState == 1) {
        gSaveContext.minigameScore += interfaceCtx->unk_23C;
        interfaceCtx->unk_23C = 0;

        if (sHBAScoreTier == 0) {
            if (gSaveContext.minigameScore >= 1000) {
                sHBAScoreTier++;
            }
        } else if (sHBAScoreTier == 1) {
            if (gSaveContext.minigameScore >= 1500) {
                sHBAScoreTier++;
            }
        }

        sHBAScoreDigits[0] = sHBAScoreDigits[1] = 0;
        sHBAScoreDigits[2] = 0;
        sHBAScoreDigits[3] = gSaveContext.minigameScore;

        while (sHBAScoreDigits[3] >= 1000) {
            sHBAScoreDigits[0]++;
            sHBAScoreDigits[3] -= 1000;
        }

        while (sHBAScoreDigits[3] >= 100) {
            sHBAScoreDigits[1]++;
            sHBAScoreDigits[3] -= 100;
        }

        while (sHBAScoreDigits[3] >= 10) {
            sHBAScoreDigits[2]++;
            sHBAScoreDigits[3] -= 10;
        }
    }

    if (gSaveContext.sunsSongState != SUNSSONG_INACTIVE) {
        // exit out of ocarina mode after suns song finishes playing
        if ((msgCtx->ocarinaAction != OCARINA_ACTION_CHECK_NOWARP_DONE) &&
            (gSaveContext.sunsSongState == SUNSSONG_START)) {
            play->msgCtx.ocarinaMode = OCARINA_MODE_04;
        }

        // handle suns song in areas where time moves
        if (play->envCtx.sceneTimeSpeed != 0) {
            if (gSaveContext.sunsSongState != SUNSSONG_SPEED_TIME) {
                D_80125B60 = false;
                if ((gSaveContext.save.dayTime >= CLOCK_TIME(6, 30)) &&
                    (gSaveContext.save.dayTime <= CLOCK_TIME(18, 0) + 1)) {
                    D_80125B60 = true;
                }

                gSaveContext.sunsSongState = SUNSSONG_SPEED_TIME;
                sPrevTimeSpeed = gTimeSpeed;
                gTimeSpeed = 400;
            } else if (!D_80125B60) {
                if ((gSaveContext.save.dayTime >= CLOCK_TIME(6, 30)) &&
                    (gSaveContext.save.dayTime <= CLOCK_TIME(18, 0) + 1)) {
                    gSaveContext.sunsSongState = SUNSSONG_INACTIVE;
                    gTimeSpeed = sPrevTimeSpeed;
                    play->msgCtx.ocarinaMode = OCARINA_MODE_04;
                }
            } else if (gSaveContext.save.dayTime > CLOCK_TIME(18, 0) + 1) {
                gSaveContext.sunsSongState = SUNSSONG_INACTIVE;
                gTimeSpeed = sPrevTimeSpeed;
                play->msgCtx.ocarinaMode = OCARINA_MODE_04;
            }
        } else if ((play->roomCtx.curRoom.type != ROOM_TYPE_DUNGEON) && (interfaceCtx->restrictions.sunsSong != 3)) {
            if ((gSaveContext.save.dayTime >= CLOCK_TIME(6, 30)) &&
                (gSaveContext.save.dayTime < CLOCK_TIME(18, 0) + 1)) {
                gSaveContext.nextDayTime = NEXT_TIME_NIGHT;
                play->transitionType = TRANS_TYPE_FADE_BLACK_FAST;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_BLACK;
                play->haltAllActors = true;
            } else {
                gSaveContext.nextDayTime = NEXT_TIME_DAY;
                play->transitionType = TRANS_TYPE_FADE_WHITE_FAST;
                gSaveContext.nextTransitionType = TRANS_TYPE_FADE_WHITE;
                play->haltAllActors = true;
            }

            if (play->sceneId == SCENE_HAUNTED_WASTELAND) {
                play->transitionType = TRANS_TYPE_SANDSTORM_PERSIST;
                gSaveContext.nextTransitionType = TRANS_TYPE_SANDSTORM_PERSIST;
            }

            gSaveContext.respawnFlag = -2;
            play->nextEntranceIndex = gSaveContext.save.entranceIndex;
            play->transitionTrigger = TRANS_TRIGGER_START;
            gSaveContext.sunsSongState = SUNSSONG_INACTIVE;
#if OOT_VERSION >= PAL_1_0
            func_800F6964(30);
            gSaveContext.seqId = (u8)NA_BGM_DISABLED;
            gSaveContext.natureAmbienceId = NATURE_ID_DISABLED;
#endif
        } else {
            gSaveContext.sunsSongState = SUNSSONG_SPECIAL;
        }
    }
}
