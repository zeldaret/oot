#include "global.h"
#include "vt.h"

typedef struct {
    /* 0x00 */ u8 scene;
    /* 0x01 */ u8 flags1;
    /* 0x02 */ u8 flags2;
    /* 0x03 */ u8 flags3;
} RestrictionFlags;

RestrictionFlags sRestrictionFlags[] = {
    { SCENE_SPOT00, 0x00, 0x00, 0x10 },
    { SCENE_SPOT01, 0x00, 0x00, 0x10 },
    { SCENE_SPOT02, 0x00, 0x00, 0x10 },
    { SCENE_SPOT03, 0x00, 0x00, 0x10 },
    { SCENE_SPOT04, 0x00, 0x00, 0x10 },
    { SCENE_SPOT05, 0x00, 0x00, 0x10 },
    { SCENE_SPOT06, 0x00, 0x00, 0x10 },
    { SCENE_SPOT07, 0x00, 0x00, 0x10 },
    { SCENE_SPOT08, 0x00, 0x00, 0x10 },
    { SCENE_SPOT09, 0x00, 0x00, 0x10 },
    { SCENE_SPOT10, 0x00, 0x00, 0x10 },
    { SCENE_SPOT11, 0x00, 0x00, 0x10 },
    { SCENE_SPOT12, 0x00, 0x00, 0x10 },
    { SCENE_SPOT13, 0x00, 0x00, 0x10 },
    { SCENE_SPOT15, 0x00, 0x00, 0x10 },
    { SCENE_GANON_TOU, 0x00, 0x00, 0x10 },
    { SCENE_SPOT16, 0x00, 0x00, 0x10 },
    { SCENE_SPOT17, 0x00, 0x00, 0x10 },
    { SCENE_SPOT18, 0x00, 0x00, 0x10 },
    { SCENE_SPOT20, 0x00, 0x00, 0x10 },
    { SCENE_TOKINOMA, 0x00, 0x10, 0x15 },
    { SCENE_KENJYANOMA, 0xA2, 0xAA, 0xAA },
    { SCENE_SYATEKIJYOU, 0x11, 0x55, 0x55 },
    { SCENE_HAIRAL_NIWA, 0x11, 0x55, 0x55 },
    { SCENE_HAIRAL_NIWA_N, 0x11, 0x55, 0x55 },
    { SCENE_HAKAANA, 0x00, 0x00, 0xD0 },
    { SCENE_HAKAANA2, 0x00, 0x00, 0xD0 },
    { SCENE_HAKAANA_OUKE, 0x00, 0x00, 0xD0 },
    { SCENE_DAIYOUSEI_IZUMI, 0x00, 0x00, 0x10 },
    { SCENE_YOUSEI_IZUMI_TATE, 0x00, 0x00, 0xD0 },
    { SCENE_YOUSEI_IZUMI_YOKO, 0x00, 0x00, 0x10 },
    { SCENE_GANON_FINAL, 0x00, 0x05, 0x50 },
    { SCENE_NAKANIWA, 0x00, 0x05, 0x54 },
    { SCENE_TURIBORI, 0x11, 0x55, 0x55 },
    { SCENE_BOWLING, 0x11, 0x55, 0x55 },
    { SCENE_SOUKO, 0x00, 0x10, 0x15 },
    { SCENE_MIHARIGOYA, 0x00, 0x10, 0x14 },
    { SCENE_MAHOUYA, 0x10, 0x15, 0x55 },
    { SCENE_TAKARAYA, 0x10, 0x15, 0x55 },
    { SCENE_KINSUTA, 0x00, 0x10, 0x15 },
    { SCENE_ENTRA, 0x00, 0x10, 0x15 },
    { SCENE_ENTRA_N, 0x00, 0x10, 0x15 },
    { SCENE_ENRUI, 0x00, 0x10, 0xD5 },
    { SCENE_MARKET_DAY, 0x00, 0x10, 0x15 },
    { SCENE_MARKET_NIGHT, 0x00, 0x10, 0x15 },
    { SCENE_MARKET_RUINS, 0x00, 0x10, 0xD5 },
    { SCENE_MARKET_ALLEY, 0x00, 0x10, 0x15 },
    { SCENE_MARKET_ALLEY_N, 0x00, 0x10, 0x15 },
    { SCENE_SHRINE, 0x00, 0x10, 0x15 },
    { SCENE_SHRINE_N, 0x00, 0x10, 0x15 },
    { SCENE_SHRINE_R, 0x00, 0x10, 0xD5 },
    { SCENE_LINK_HOME, 0x10, 0x10, 0x15 },
    { SCENE_KAKARIKO, 0x10, 0x10, 0x15 },
    { SCENE_KAKARIKO3, 0x10, 0x10, 0x15 },
    { SCENE_KOKIRI_HOME, 0x10, 0x10, 0x15 },
    { SCENE_KOKIRI_HOME3, 0x10, 0x10, 0x15 },
    { SCENE_KOKIRI_HOME4, 0x10, 0x10, 0x15 },
    { SCENE_KOKIRI_HOME5, 0x10, 0x10, 0x15 },
    { SCENE_MALON_STABLE, 0x10, 0x10, 0x15 },
    { SCENE_HUT, 0x10, 0x10, 0x15 },
    { SCENE_IMPA, 0x10, 0x10, 0x15 },
    { SCENE_LABO, 0x10, 0x10, 0x15 },
    { SCENE_HYLIA_LABO, 0x00, 0x10, 0x15 },
    { SCENE_TENT, 0x10, 0x10, 0x15 },
    { SCENE_SHOP1, 0x10, 0x10, 0x15 },
    { SCENE_KOKIRI_SHOP, 0x10, 0x10, 0x15 },
    { SCENE_GOLON, 0x10, 0x10, 0x15 },
    { SCENE_ZOORA, 0x10, 0x10, 0x15 },
    { SCENE_DRAG, 0x10, 0x10, 0x15 },
    { SCENE_ALLEY_SHOP, 0x10, 0x10, 0x15 },
    { SCENE_NIGHT_SHOP, 0x10, 0x10, 0x15 },
    { SCENE_FACE_SHOP, 0x10, 0x10, 0x15 },
    { SCENE_MEN, 0x00, 0x03, 0x10 },
    { SCENE_YDAN, 0x00, 0x00, 0x00 },
    { SCENE_YDAN_BOSS, 0x00, 0x45, 0x50 },
    { SCENE_DDAN, 0x00, 0x00, 0x00 },
    { SCENE_DDAN_BOSS, 0x00, 0x45, 0x50 },
    { SCENE_BDAN, 0x00, 0x00, 0x00 },
    { SCENE_BDAN_BOSS, 0x00, 0x45, 0x50 },
    { SCENE_BMORI1, 0x00, 0x00, 0x00 },
    { SCENE_MORIBOSSROOM, 0x00, 0x45, 0x50 },
    { SCENE_HAKADANCH, 0x00, 0x00, 0x00 },
    { SCENE_HAKADAN, 0x00, 0x00, 0x00 },
    { SCENE_HAKADAN_BS, 0x00, 0x45, 0x50 },
    { SCENE_HIDAN, 0x00, 0x00, 0x00 },
    { SCENE_FIRE_BS, 0x00, 0x45, 0x50 },
    { SCENE_MIZUSIN, 0x00, 0x00, 0x00 },
    { SCENE_MIZUSIN_BS, 0x00, 0x45, 0x50 },
    { SCENE_JYASINZOU, 0x00, 0x00, 0x00 },
    { SCENE_JYASINBOSS, 0x00, 0x45, 0x50 },
    { SCENE_GANON, 0x00, 0x00, 0x00 },
    { SCENE_GANON_BOSS, 0x00, 0x45, 0x50 },
    { SCENE_ICE_DOUKUTO, 0x00, 0x00, 0xC0 },
    { SCENE_HAKASITARELAY, 0x00, 0x03, 0x14 },
    { SCENE_GANONTIKA, 0x00, 0x03, 0x10 },
    { SCENE_GANON_DEMO, 0x00, 0x45, 0x50 },
    { SCENE_GANON_SONOGO, 0x00, 0x05, 0x50 },
    { SCENE_GANONTIKA_SONOGO, 0x00, 0x05, 0x50 },
    { SCENE_GERUDOWAY, 0x00, 0x00, 0x10 },
    { SCENE_KAKUSIANA, 0x00, 0x00, 0xD0 },
    { 0xFF, 0x00, 0x00, 0x00 },
};

s16 sHBAScoreTier = 0;
u16 sHBAScoreDigits[] = { 0, 0, 0, 0 };

u16 sCUpInvisible = 0;
u16 sCUpTimer = 0;

s16 gSpoilingItems[] = { ITEM_ODD_MUSHROOM, ITEM_FROG, ITEM_EYEDROPS };
s16 gSpoilingItemReverts[] = { ITEM_COJIRO, ITEM_PRESCRIPTION, ITEM_PRESCRIPTION };

s16 sMagicBorderR = 255;
s16 sMagicBorderG = 255;
s16 sMagicBorderB = 255;

s16 sExtraItemBases[] = {
    ITEM_STICK, ITEM_STICK, ITEM_NUT,   ITEM_NUT,     ITEM_BOMB,    ITEM_BOMB,  ITEM_BOMB,  ITEM_BOMB, ITEM_BOW,
    ITEM_BOW,   ITEM_BOW,   ITEM_SEEDS, ITEM_BOMBCHU, ITEM_BOMBCHU, ITEM_STICK, ITEM_STICK, ITEM_NUT,  ITEM_NUT,
};

s16 D_80125A58 = 0;
s16 D_80125A5C = 0;

Gfx sSetupDL_80125A60[] = {
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
void Interface_ChangeAlpha(u16 alphaType) {
    if (alphaType != gSaveContext.unk_13EA) {
        osSyncPrintf("ＡＬＰＨＡーＴＹＰＥ＝%d  LAST_TIME_TYPE=%d\n", alphaType, gSaveContext.unk_13EE);
        gSaveContext.unk_13EA = gSaveContext.unk_13E8 = alphaType;
        gSaveContext.unk_13EC = 1;
    }
}

void func_80082644(GlobalContext* globalCtx, s16 alpha) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    if (gSaveContext.buttonStatus[0] == BTN_DISABLED) {
        if (interfaceCtx->bAlpha != 70) {
            interfaceCtx->bAlpha = 70;
        }
    } else {
        if (interfaceCtx->bAlpha != 255) {
            interfaceCtx->bAlpha = alpha;
        }
    }

    if (gSaveContext.buttonStatus[1] == BTN_DISABLED) {
        if (interfaceCtx->cLeftAlpha != 70) {
            interfaceCtx->cLeftAlpha = 70;
        }
    } else {
        if (interfaceCtx->cLeftAlpha != 255) {
            interfaceCtx->cLeftAlpha = alpha;
        }
    }

    if (gSaveContext.buttonStatus[2] == BTN_DISABLED) {
        if (interfaceCtx->cDownAlpha != 70) {
            interfaceCtx->cDownAlpha = 70;
        }
    } else {
        if (interfaceCtx->cDownAlpha != 255) {
            interfaceCtx->cDownAlpha = alpha;
        }
    }

    if (gSaveContext.buttonStatus[3] == BTN_DISABLED) {
        if (interfaceCtx->cRightAlpha != 70) {
            interfaceCtx->cRightAlpha = 70;
        }
    } else {
        if (interfaceCtx->cRightAlpha != 255) {
            interfaceCtx->cRightAlpha = alpha;
        }
    }

    if (gSaveContext.buttonStatus[4] == BTN_DISABLED) {
        if (interfaceCtx->aAlpha != 70) {
            interfaceCtx->aAlpha = 70;
        }
    } else {
        if (interfaceCtx->aAlpha != 255) {
            interfaceCtx->aAlpha = alpha;
        }
    }
}

void func_8008277C(GlobalContext* globalCtx, s16 maxAlpha, s16 alpha) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    if (gSaveContext.unk_13E7 != 0) {
        func_80082644(globalCtx, alpha);
        return;
    }

    if ((interfaceCtx->bAlpha != 0) && (interfaceCtx->bAlpha > maxAlpha)) {
        interfaceCtx->bAlpha = maxAlpha;
    }

    if ((interfaceCtx->aAlpha != 0) && (interfaceCtx->aAlpha > maxAlpha)) {
        interfaceCtx->aAlpha = maxAlpha;
    }

    if ((interfaceCtx->cLeftAlpha != 0) && (interfaceCtx->cLeftAlpha > maxAlpha)) {
        interfaceCtx->cLeftAlpha = maxAlpha;
    }

    if ((interfaceCtx->cDownAlpha != 0) && (interfaceCtx->cDownAlpha > maxAlpha)) {
        interfaceCtx->cDownAlpha = maxAlpha;
    }

    if ((interfaceCtx->cRightAlpha != 0) && (interfaceCtx->cRightAlpha > maxAlpha)) {
        interfaceCtx->cRightAlpha = maxAlpha;
    }
}

void func_80082850(GlobalContext* globalCtx, s16 maxAlpha) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    s16 alpha = 255 - maxAlpha;

    switch (gSaveContext.unk_13E8) {
        case 1:
        case 2:
        case 8:
            osSyncPrintf("a_alpha=%d, c_alpha=%d   →   ", interfaceCtx->aAlpha, interfaceCtx->cLeftAlpha);

            if (gSaveContext.unk_13E8 == 8) {
                if (interfaceCtx->bAlpha != 255) {
                    interfaceCtx->bAlpha = alpha;
                }
            } else {
                if ((interfaceCtx->bAlpha != 0) && (interfaceCtx->bAlpha > maxAlpha)) {
                    interfaceCtx->bAlpha = maxAlpha;
                }
            }

            if ((interfaceCtx->aAlpha != 0) && (interfaceCtx->aAlpha > maxAlpha)) {
                interfaceCtx->aAlpha = maxAlpha;
            }

            if ((interfaceCtx->cLeftAlpha != 0) && (interfaceCtx->cLeftAlpha > maxAlpha)) {
                interfaceCtx->cLeftAlpha = maxAlpha;
            }

            if ((interfaceCtx->cDownAlpha != 0) && (interfaceCtx->cDownAlpha > maxAlpha)) {
                interfaceCtx->cDownAlpha = maxAlpha;
            }

            if ((interfaceCtx->cRightAlpha != 0) && (interfaceCtx->cRightAlpha > maxAlpha)) {
                interfaceCtx->cRightAlpha = maxAlpha;
            }

            if ((interfaceCtx->healthAlpha != 0) && (interfaceCtx->healthAlpha > maxAlpha)) {
                interfaceCtx->healthAlpha = maxAlpha;
            }

            if ((interfaceCtx->magicAlpha != 0) && (interfaceCtx->magicAlpha > maxAlpha)) {
                interfaceCtx->magicAlpha = maxAlpha;
            }

            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > maxAlpha)) {
                interfaceCtx->minimapAlpha = maxAlpha;
            }

            osSyncPrintf("a_alpha=%d, c_alpha=%d\n", interfaceCtx->aAlpha, interfaceCtx->cLeftAlpha);

            break;
        case 3:
            if ((interfaceCtx->aAlpha != 0) && (interfaceCtx->aAlpha > maxAlpha)) {
                interfaceCtx->aAlpha = maxAlpha;
            }

            func_8008277C(globalCtx, maxAlpha, alpha);

            if ((interfaceCtx->magicAlpha != 0) && (interfaceCtx->magicAlpha > maxAlpha)) {
                interfaceCtx->magicAlpha = maxAlpha;
            }

            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > maxAlpha)) {
                interfaceCtx->minimapAlpha = maxAlpha;
            }

            if (interfaceCtx->healthAlpha != 255) {
                interfaceCtx->healthAlpha = alpha;
            }

            break;
        case 4:
            if ((interfaceCtx->bAlpha != 0) && (interfaceCtx->bAlpha > maxAlpha)) {
                interfaceCtx->bAlpha = maxAlpha;
            }

            if ((interfaceCtx->aAlpha != 0) && (interfaceCtx->aAlpha > maxAlpha)) {
                interfaceCtx->aAlpha = maxAlpha;
            }

            if ((interfaceCtx->cLeftAlpha != 0) && (interfaceCtx->cLeftAlpha > maxAlpha)) {
                interfaceCtx->cLeftAlpha = maxAlpha;
            }

            if ((interfaceCtx->cDownAlpha != 0) && (interfaceCtx->cDownAlpha > maxAlpha)) {
                interfaceCtx->cDownAlpha = maxAlpha;
            }

            if ((interfaceCtx->cRightAlpha != 0) && (interfaceCtx->cRightAlpha > maxAlpha)) {
                interfaceCtx->cRightAlpha = maxAlpha;
            }

            if ((interfaceCtx->healthAlpha != 0) && (interfaceCtx->healthAlpha > maxAlpha)) {
                interfaceCtx->healthAlpha = maxAlpha;
            }

            if ((interfaceCtx->magicAlpha != 0) && (interfaceCtx->magicAlpha > maxAlpha)) {
                interfaceCtx->magicAlpha = maxAlpha;
            }

            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > maxAlpha)) {
                interfaceCtx->minimapAlpha = maxAlpha;
            }

            if (interfaceCtx->aAlpha != 255) {
                interfaceCtx->aAlpha = alpha;
            }

            break;
        case 5:
            func_8008277C(globalCtx, maxAlpha, alpha);

            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > maxAlpha)) {
                interfaceCtx->minimapAlpha = maxAlpha;
            }

            if (interfaceCtx->aAlpha != 255) {
                interfaceCtx->aAlpha = alpha;
            }

            if (interfaceCtx->healthAlpha != 255) {
                interfaceCtx->healthAlpha = alpha;
            }

            if (interfaceCtx->magicAlpha != 255) {
                interfaceCtx->magicAlpha = alpha;
            }

            break;
        case 6:
            func_8008277C(globalCtx, maxAlpha, alpha);

            if (interfaceCtx->aAlpha != 255) {
                interfaceCtx->aAlpha = alpha;
            }

            if (interfaceCtx->healthAlpha != 255) {
                interfaceCtx->healthAlpha = alpha;
            }

            if (interfaceCtx->magicAlpha != 255) {
                interfaceCtx->magicAlpha = alpha;
            }

            switch (globalCtx->sceneNum) {
                case SCENE_SPOT00:
                case SCENE_SPOT01:
                case SCENE_SPOT02:
                case SCENE_SPOT03:
                case SCENE_SPOT04:
                case SCENE_SPOT05:
                case SCENE_SPOT06:
                case SCENE_SPOT07:
                case SCENE_SPOT08:
                case SCENE_SPOT09:
                case SCENE_SPOT10:
                case SCENE_SPOT11:
                case SCENE_SPOT12:
                case SCENE_SPOT13:
                case SCENE_SPOT15:
                case SCENE_SPOT16:
                case SCENE_SPOT17:
                case SCENE_SPOT18:
                case SCENE_SPOT20:
                case SCENE_GANON_TOU:
                    if (interfaceCtx->minimapAlpha < 170) {
                        interfaceCtx->minimapAlpha = alpha;
                    } else {
                        interfaceCtx->minimapAlpha = 170;
                    }
                    break;
                default:
                    if (interfaceCtx->minimapAlpha != 255) {
                        interfaceCtx->minimapAlpha = alpha;
                    }
                    break;
            }
            break;
        case 7:
            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > maxAlpha)) {
                interfaceCtx->minimapAlpha = maxAlpha;
            }

            func_80082644(globalCtx, alpha);

            if (interfaceCtx->healthAlpha != 255) {
                interfaceCtx->healthAlpha = alpha;
            }

            if (interfaceCtx->magicAlpha != 255) {
                interfaceCtx->magicAlpha = alpha;
            }

            break;
        case 9:
            if ((interfaceCtx->bAlpha != 0) && (interfaceCtx->bAlpha > maxAlpha)) {
                interfaceCtx->bAlpha = maxAlpha;
            }

            if ((interfaceCtx->aAlpha != 0) && (interfaceCtx->aAlpha > maxAlpha)) {
                interfaceCtx->aAlpha = maxAlpha;
            }

            if ((interfaceCtx->cLeftAlpha != 0) && (interfaceCtx->cLeftAlpha > maxAlpha)) {
                interfaceCtx->cLeftAlpha = maxAlpha;
            }

            if ((interfaceCtx->cDownAlpha != 0) && (interfaceCtx->cDownAlpha > maxAlpha)) {
                interfaceCtx->cDownAlpha = maxAlpha;
            }

            if ((interfaceCtx->cRightAlpha != 0) && (interfaceCtx->cRightAlpha > maxAlpha)) {
                interfaceCtx->cRightAlpha = maxAlpha;
            }

            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > maxAlpha)) {
                interfaceCtx->minimapAlpha = maxAlpha;
            }

            if (interfaceCtx->healthAlpha != 255) {
                interfaceCtx->healthAlpha = alpha;
            }

            if (interfaceCtx->magicAlpha != 255) {
                interfaceCtx->magicAlpha = alpha;
            }

            break;
        case 10:
            if ((interfaceCtx->aAlpha != 0) && (interfaceCtx->aAlpha > maxAlpha)) {
                interfaceCtx->aAlpha = maxAlpha;
            }

            if ((interfaceCtx->cLeftAlpha != 0) && (interfaceCtx->cLeftAlpha > maxAlpha)) {
                interfaceCtx->cLeftAlpha = maxAlpha;
            }

            if ((interfaceCtx->cDownAlpha != 0) && (interfaceCtx->cDownAlpha > maxAlpha)) {
                interfaceCtx->cDownAlpha = maxAlpha;
            }

            if ((interfaceCtx->cRightAlpha != 0) && (interfaceCtx->cRightAlpha > maxAlpha)) {
                interfaceCtx->cRightAlpha = maxAlpha;
            }

            if ((interfaceCtx->healthAlpha != 0) && (interfaceCtx->healthAlpha > maxAlpha)) {
                interfaceCtx->healthAlpha = maxAlpha;
            }

            if ((interfaceCtx->magicAlpha != 0) && (interfaceCtx->magicAlpha > maxAlpha)) {
                interfaceCtx->magicAlpha = maxAlpha;
            }

            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > maxAlpha)) {
                interfaceCtx->minimapAlpha = maxAlpha;
            }

            if (interfaceCtx->bAlpha != 255) {
                interfaceCtx->bAlpha = alpha;
            }

            break;
        case 11:
            if ((interfaceCtx->bAlpha != 0) && (interfaceCtx->bAlpha > maxAlpha)) {
                interfaceCtx->bAlpha = maxAlpha;
            }

            if ((interfaceCtx->aAlpha != 0) && (interfaceCtx->aAlpha > maxAlpha)) {
                interfaceCtx->aAlpha = maxAlpha;
            }

            if ((interfaceCtx->cLeftAlpha != 0) && (interfaceCtx->cLeftAlpha > maxAlpha)) {
                interfaceCtx->cLeftAlpha = maxAlpha;
            }

            if ((interfaceCtx->cDownAlpha != 0) && (interfaceCtx->cDownAlpha > maxAlpha)) {
                interfaceCtx->cDownAlpha = maxAlpha;
            }

            if ((interfaceCtx->cRightAlpha != 0) && (interfaceCtx->cRightAlpha > maxAlpha)) {
                interfaceCtx->cRightAlpha = maxAlpha;
            }

            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > maxAlpha)) {
                interfaceCtx->minimapAlpha = maxAlpha;
            }

            if ((interfaceCtx->magicAlpha != 0) && (interfaceCtx->magicAlpha > maxAlpha)) {
                interfaceCtx->magicAlpha = maxAlpha;
            }

            if (interfaceCtx->healthAlpha != 255) {
                interfaceCtx->healthAlpha = alpha;
            }

            break;
        case 12:
            if (interfaceCtx->aAlpha != 255) {
                interfaceCtx->aAlpha = alpha;
            }

            if (interfaceCtx->bAlpha != 255) {
                interfaceCtx->bAlpha = alpha;
            }

            if (interfaceCtx->minimapAlpha != 255) {
                interfaceCtx->minimapAlpha = alpha;
            }

            if ((interfaceCtx->cLeftAlpha != 0) && (interfaceCtx->cLeftAlpha > maxAlpha)) {
                interfaceCtx->cLeftAlpha = maxAlpha;
            }

            if ((interfaceCtx->cDownAlpha != 0) && (interfaceCtx->cDownAlpha > maxAlpha)) {
                interfaceCtx->cDownAlpha = maxAlpha;
            }

            if ((interfaceCtx->cRightAlpha != 0) && (interfaceCtx->cRightAlpha > maxAlpha)) {
                interfaceCtx->cRightAlpha = maxAlpha;
            }

            if ((interfaceCtx->magicAlpha != 0) && (interfaceCtx->magicAlpha > maxAlpha)) {
                interfaceCtx->magicAlpha = maxAlpha;
            }

            if ((interfaceCtx->healthAlpha != 0) && (interfaceCtx->healthAlpha > maxAlpha)) {
                interfaceCtx->healthAlpha = maxAlpha;
            }

            break;
        case 13:
            func_8008277C(globalCtx, maxAlpha, alpha);

            if ((interfaceCtx->minimapAlpha != 0) && (interfaceCtx->minimapAlpha > maxAlpha)) {
                interfaceCtx->minimapAlpha = maxAlpha;
            }

            if ((interfaceCtx->aAlpha != 0) && (interfaceCtx->aAlpha > maxAlpha)) {
                interfaceCtx->aAlpha = maxAlpha;
            }

            if (interfaceCtx->healthAlpha != 255) {
                interfaceCtx->healthAlpha = alpha;
            }

            if (interfaceCtx->magicAlpha != 255) {
                interfaceCtx->magicAlpha = alpha;
            }

            break;
    }

    if ((globalCtx->roomCtx.curRoom.unk_03 == 1) && (interfaceCtx->minimapAlpha >= 0xFF)) {
        interfaceCtx->minimapAlpha = 255;
    }
}

void func_80083108(GlobalContext* globalCtx) {
    MessageContext* msgCtx = &globalCtx->msgCtx;
    Player* player = PLAYER;
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    s16 i;
    s16 sp28 = 0;

    if ((gSaveContext.cutsceneIndex < 0xFFF0) ||
        ((globalCtx->sceneNum == SCENE_SPOT20) && (gSaveContext.cutsceneIndex == 0xFFF0))) {
        gSaveContext.unk_13E7 = 0;

        if ((player->stateFlags1 & 0x00800000) || (globalCtx->shootingGalleryStatus > 1) ||
            ((globalCtx->sceneNum == SCENE_BOWLING) && Flags_GetSwitch(globalCtx, 0x38))) {
            if (gSaveContext.equips.buttonItems[0] != ITEM_NONE) {
                gSaveContext.unk_13E7 = 1;

                if (gSaveContext.buttonStatus[0] == BTN_DISABLED) {
                    gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                        gSaveContext.buttonStatus[3] = BTN_ENABLED;
                }

                if ((gSaveContext.equips.buttonItems[0] != ITEM_SLINGSHOT) &&
                    (gSaveContext.equips.buttonItems[0] != ITEM_BOW) &&
                    (gSaveContext.equips.buttonItems[0] != ITEM_BOMBCHU) &&
                    (gSaveContext.equips.buttonItems[0] != ITEM_NONE)) {
                    gSaveContext.buttonStatus[0] = gSaveContext.equips.buttonItems[0];

                    if ((globalCtx->sceneNum == SCENE_BOWLING) && Flags_GetSwitch(globalCtx, 0x38)) {
                        gSaveContext.equips.buttonItems[0] = ITEM_BOMBCHU;
                        Interface_LoadItemIcon1(globalCtx, 0);
                    } else {
                        gSaveContext.equips.buttonItems[0] = ITEM_BOW;
                        if (globalCtx->shootingGalleryStatus > 1) {
                            if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
                                gSaveContext.equips.buttonItems[0] = ITEM_SLINGSHOT;
                            }

                            Interface_LoadItemIcon1(globalCtx, 0);
                        } else {
                            if (gSaveContext.inventory.items[SLOT_BOW] == ITEM_NONE) {
                                gSaveContext.equips.buttonItems[0] = ITEM_NONE;
                            } else {
                                Interface_LoadItemIcon1(globalCtx, 0);
                            }
                        }
                    }

                    gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] = gSaveContext.buttonStatus[3] =
                        BTN_DISABLED;
                    Interface_ChangeAlpha(6);
                }

                if (globalCtx->transitionMode != 0) {
                    Interface_ChangeAlpha(1);
                } else if (gSaveContext.minigameState == 1) {
                    Interface_ChangeAlpha(8);
                } else if (globalCtx->shootingGalleryStatus > 1) {
                    Interface_ChangeAlpha(8);
                } else if ((globalCtx->sceneNum == SCENE_BOWLING) && Flags_GetSwitch(globalCtx, 0x38)) {
                    Interface_ChangeAlpha(8);
                } else if (player->stateFlags1 & 0x00800000) {
                    Interface_ChangeAlpha(12);
                }
            } else {
                if (player->stateFlags1 & 0x00800000) {
                    Interface_ChangeAlpha(12);
                }
            }
        } else if (globalCtx->sceneNum == SCENE_KENJYANOMA) {
            Interface_ChangeAlpha(1);
        } else if (globalCtx->sceneNum == SCENE_TURIBORI) {
            gSaveContext.unk_13E7 = 2;
            if (globalCtx->interfaceCtx.unk_260 != 0) {
                if (gSaveContext.equips.buttonItems[0] != ITEM_FISHING_POLE) {
                    gSaveContext.buttonStatus[0] = gSaveContext.equips.buttonItems[0];
                    gSaveContext.equips.buttonItems[0] = ITEM_FISHING_POLE;
                    gSaveContext.unk_13EA = 0;
                    Interface_LoadItemIcon1(globalCtx, 0);
                    Interface_ChangeAlpha(12);
                }

                if (gSaveContext.unk_13EA != 12) {
                    Interface_ChangeAlpha(12);
                }
            } else if (gSaveContext.equips.buttonItems[0] == ITEM_FISHING_POLE) {
                gSaveContext.equips.buttonItems[0] = gSaveContext.buttonStatus[0];
                gSaveContext.unk_13EA = 0;

                if (gSaveContext.equips.buttonItems[0] != ITEM_NONE) {
                    Interface_LoadItemIcon1(globalCtx, 0);
                }

                gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                    gSaveContext.buttonStatus[3] = BTN_DISABLED;
                Interface_ChangeAlpha(50);
            } else {
                if (gSaveContext.buttonStatus[0] == BTN_ENABLED) {
                    gSaveContext.unk_13EA = 0;
                }

                gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
                    gSaveContext.buttonStatus[3] = BTN_DISABLED;
                Interface_ChangeAlpha(50);
            }
        } else if (msgCtx->msgMode == 0) {
            if ((func_8008F2F8(globalCtx) >= 2) && (func_8008F2F8(globalCtx) < 5)) {
                if (gSaveContext.buttonStatus[0] != BTN_DISABLED) {
                    sp28 = 1;
                }

                gSaveContext.buttonStatus[0] = BTN_DISABLED;

                for (i = 1; i < 4; i++) {
                    if (func_8008F2F8(globalCtx) == 2) {
                        if ((gSaveContext.equips.buttonItems[i] != ITEM_HOOKSHOT) &&
                            (gSaveContext.equips.buttonItems[i] != ITEM_LONGSHOT)) {
                            if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                                sp28 = 1;
                            }

                            gSaveContext.buttonStatus[i] = BTN_DISABLED;
                        } else {
                            if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                sp28 = 1;
                            }

                            gSaveContext.buttonStatus[i] = BTN_ENABLED;
                        }
                    } else {
                        if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                            sp28 = 1;
                        }

                        gSaveContext.buttonStatus[i] = BTN_DISABLED;
                    }
                }

                if (sp28) {
                    gSaveContext.unk_13EA = 0;
                }

                Interface_ChangeAlpha(50);
            } else if ((player->stateFlags1 & 0x00200000) || (player->stateFlags2 & 0x00040000)) {
                if (gSaveContext.buttonStatus[0] != BTN_DISABLED) {
                    gSaveContext.buttonStatus[0] = BTN_DISABLED;
                    gSaveContext.buttonStatus[1] = BTN_DISABLED;
                    gSaveContext.buttonStatus[2] = BTN_DISABLED;
                    gSaveContext.buttonStatus[3] = BTN_DISABLED;
                    gSaveContext.unk_13EA = 0;
                    Interface_ChangeAlpha(50);
                }
            } else if ((gSaveContext.eventInf[0] & 0xF) == 1) {
                if (player->stateFlags1 & 0x00800000) {
                    if ((gSaveContext.equips.buttonItems[0] != ITEM_NONE) &&
                        (gSaveContext.equips.buttonItems[0] != ITEM_BOW)) {
                        if (gSaveContext.inventory.items[SLOT_BOW] == ITEM_NONE) {
                            gSaveContext.equips.buttonItems[0] = ITEM_NONE;
                        } else {
                            gSaveContext.equips.buttonItems[0] = ITEM_BOW;
                            sp28 = 1;
                        }
                    }
                } else {
                    sp28 = 1;

                    if ((gSaveContext.equips.buttonItems[0] == ITEM_NONE) ||
                        (gSaveContext.equips.buttonItems[0] == ITEM_BOW)) {

                        if ((gSaveContext.equips.buttonItems[0] != ITEM_SWORD_KOKIRI) &&
                            (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_MASTER) &&
                            (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_BGS) &&
                            (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_KNIFE)) {
                            gSaveContext.equips.buttonItems[0] = gSaveContext.buttonStatus[0];
                        } else {
                            gSaveContext.buttonStatus[0] = gSaveContext.equips.buttonItems[0];
                        }
                    }
                    if (1) {} // Necessary to match
                }

                if (sp28) {
                    Interface_LoadItemIcon1(globalCtx, 0);
                    sp28 = 0;
                }

                for (i = 1; i < 4; i++) {
                    if ((gSaveContext.equips.buttonItems[i] != ITEM_OCARINA_FAIRY) &&
                        (gSaveContext.equips.buttonItems[i] != ITEM_OCARINA_TIME)) {
                        if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                            sp28 = 1;
                        }

                        gSaveContext.buttonStatus[i] = BTN_DISABLED;
                    } else {
                        if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                            sp28 = 1;
                        }

                        gSaveContext.buttonStatus[i] = BTN_ENABLED;
                    }
                }

                if (sp28) {
                    gSaveContext.unk_13EA = 0;
                }

                Interface_ChangeAlpha(50);
            } else {
                if (interfaceCtx->restrictions.bButton == 0) {
                    if ((gSaveContext.equips.buttonItems[0] == ITEM_SLINGSHOT) ||
                        (gSaveContext.equips.buttonItems[0] == ITEM_BOW) ||
                        (gSaveContext.equips.buttonItems[0] == ITEM_BOMBCHU) ||
                        (gSaveContext.equips.buttonItems[0] == ITEM_NONE)) {
                        if ((gSaveContext.equips.buttonItems[0] != ITEM_NONE) || (gSaveContext.infTable[29] == 0)) {
                            gSaveContext.equips.buttonItems[0] = gSaveContext.buttonStatus[0];
                            sp28 = 1;

                            if (gSaveContext.equips.buttonItems[0] != ITEM_NONE) {
                                Interface_LoadItemIcon1(globalCtx, 0);
                            }
                        }
                    } else if ((gSaveContext.buttonStatus[0] & 0xFF) == BTN_DISABLED) {
                        sp28 = 1;

                        if (((gSaveContext.buttonStatus[0] & 0xFF) == BTN_DISABLED) ||
                            ((gSaveContext.buttonStatus[0] & 0xFF) == BTN_ENABLED)) {
                            gSaveContext.buttonStatus[0] = BTN_ENABLED;
                        } else {
                            gSaveContext.equips.buttonItems[0] = gSaveContext.buttonStatus[0] & 0xFF;
                        }
                    }
                } else if (interfaceCtx->restrictions.bButton == 1) {
                    if ((gSaveContext.equips.buttonItems[0] == ITEM_SLINGSHOT) ||
                        (gSaveContext.equips.buttonItems[0] == ITEM_BOW) ||
                        (gSaveContext.equips.buttonItems[0] == ITEM_BOMBCHU) ||
                        (gSaveContext.equips.buttonItems[0] == ITEM_NONE)) {
                        if ((gSaveContext.equips.buttonItems[0] != ITEM_NONE) || (gSaveContext.infTable[29] == 0)) {
                            gSaveContext.equips.buttonItems[0] = gSaveContext.buttonStatus[0];
                            sp28 = 1;

                            if (gSaveContext.equips.buttonItems[0] != ITEM_NONE) {
                                Interface_LoadItemIcon1(globalCtx, 0);
                            }
                        }
                    } else {
                        if (gSaveContext.buttonStatus[0] == BTN_ENABLED) {
                            sp28 = 1;
                        }

                        gSaveContext.buttonStatus[0] = BTN_DISABLED;
                    }
                }

                if (interfaceCtx->restrictions.bottles != 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.equips.buttonItems[i] >= ITEM_BOTTLE) &&
                            (gSaveContext.equips.buttonItems[i] <= ITEM_POE)) {
                            if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                                sp28 = 1;
                            }

                            gSaveContext.buttonStatus[i] = BTN_DISABLED;
                        }
                    }
                } else if (interfaceCtx->restrictions.bottles == 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.equips.buttonItems[i] >= ITEM_BOTTLE) &&
                            (gSaveContext.equips.buttonItems[i] <= ITEM_POE)) {
                            if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                sp28 = 1;
                            }

                            gSaveContext.buttonStatus[i] = BTN_ENABLED;
                        }
                    }
                }

                if (interfaceCtx->restrictions.tradeItems != 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.equips.buttonItems[i] >= ITEM_WEIRD_EGG) &&
                            (gSaveContext.equips.buttonItems[i] <= ITEM_CLAIM_CHECK)) {
                            if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                                sp28 = 1;
                            }

                            gSaveContext.buttonStatus[i] = BTN_DISABLED;
                        }
                    }
                } else if (interfaceCtx->restrictions.tradeItems == 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.equips.buttonItems[i] >= ITEM_WEIRD_EGG) &&
                            (gSaveContext.equips.buttonItems[i] <= ITEM_CLAIM_CHECK)) {
                            if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                sp28 = 1;
                            }

                            gSaveContext.buttonStatus[i] = BTN_ENABLED;
                        }
                    }
                }

                if (interfaceCtx->restrictions.hookshot != 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.equips.buttonItems[i] == ITEM_HOOKSHOT) ||
                            (gSaveContext.equips.buttonItems[i] == ITEM_LONGSHOT)) {
                            if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                                sp28 = 1;
                            }

                            gSaveContext.buttonStatus[i] = BTN_DISABLED;
                        }
                    }
                } else if (interfaceCtx->restrictions.hookshot == 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.equips.buttonItems[i] == ITEM_HOOKSHOT) ||
                            (gSaveContext.equips.buttonItems[i] == ITEM_LONGSHOT)) {
                            if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                sp28 = 1;
                            }

                            gSaveContext.buttonStatus[i] = BTN_ENABLED;
                        }
                    }
                }

                if (interfaceCtx->restrictions.ocarina != 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.equips.buttonItems[i] == ITEM_OCARINA_FAIRY) ||
                            (gSaveContext.equips.buttonItems[i] == ITEM_OCARINA_TIME)) {
                            if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                                sp28 = 1;
                            }

                            gSaveContext.buttonStatus[i] = BTN_DISABLED;
                        }
                    }
                } else if (interfaceCtx->restrictions.ocarina == 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.equips.buttonItems[i] == ITEM_OCARINA_FAIRY) ||
                            (gSaveContext.equips.buttonItems[i] == ITEM_OCARINA_TIME)) {
                            if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                sp28 = 1;
                            }

                            gSaveContext.buttonStatus[i] = BTN_ENABLED;
                        }
                    }
                }

                if (interfaceCtx->restrictions.farores != 0) {
                    for (i = 1; i < 4; i++) {
                        if (gSaveContext.equips.buttonItems[i] == ITEM_FARORES_WIND) {
                            if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                                sp28 = 1;
                            }

                            gSaveContext.buttonStatus[i] = BTN_DISABLED;
                            osSyncPrintf("***(i=%d)***  ", i);
                        }
                    }
                } else if (interfaceCtx->restrictions.farores == 0) {
                    for (i = 1; i < 4; i++) {
                        if (gSaveContext.equips.buttonItems[i] == ITEM_FARORES_WIND) {
                            if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                sp28 = 1;
                            }

                            gSaveContext.buttonStatus[i] = BTN_ENABLED;
                        }
                    }
                }

                if (interfaceCtx->restrictions.dinsNayrus != 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.equips.buttonItems[i] == ITEM_DINS_FIRE) ||
                            (gSaveContext.equips.buttonItems[i] == ITEM_NAYRUS_LOVE)) {
                            if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                                sp28 = 1;
                            }

                            gSaveContext.buttonStatus[i] = BTN_DISABLED;
                        }
                    }
                } else if (interfaceCtx->restrictions.dinsNayrus == 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.equips.buttonItems[i] == ITEM_DINS_FIRE) ||
                            (gSaveContext.equips.buttonItems[i] == ITEM_NAYRUS_LOVE)) {
                            if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                sp28 = 1;
                            }

                            gSaveContext.buttonStatus[i] = BTN_ENABLED;
                        }
                    }
                }

                if (interfaceCtx->restrictions.all != 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.equips.buttonItems[i] != ITEM_OCARINA_FAIRY) &&
                            (gSaveContext.equips.buttonItems[i] != ITEM_OCARINA_TIME) &&
                            !((gSaveContext.equips.buttonItems[i] >= ITEM_BOTTLE) &&
                              (gSaveContext.equips.buttonItems[i] <= ITEM_POE)) &&
                            !((gSaveContext.equips.buttonItems[i] >= ITEM_WEIRD_EGG) &&
                              (gSaveContext.equips.buttonItems[i] <= ITEM_CLAIM_CHECK))) {
                            if ((globalCtx->sceneNum != SCENE_TAKARAYA) ||
                                (gSaveContext.equips.buttonItems[i] != ITEM_LENS)) {
                                if (gSaveContext.buttonStatus[i] == BTN_ENABLED) {
                                    sp28 = 1;
                                }

                                gSaveContext.buttonStatus[i] = BTN_DISABLED;
                            } else {
                                if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                    sp28 = 1;
                                }

                                gSaveContext.buttonStatus[i] = BTN_ENABLED;
                            }
                        }
                    }
                } else if (interfaceCtx->restrictions.all == 0) {
                    for (i = 1; i < 4; i++) {
                        if ((gSaveContext.equips.buttonItems[i] != ITEM_DINS_FIRE) &&
                            (gSaveContext.equips.buttonItems[i] != ITEM_HOOKSHOT) &&
                            (gSaveContext.equips.buttonItems[i] != ITEM_LONGSHOT) &&
                            (gSaveContext.equips.buttonItems[i] != ITEM_FARORES_WIND) &&
                            (gSaveContext.equips.buttonItems[i] != ITEM_NAYRUS_LOVE) &&
                            (gSaveContext.equips.buttonItems[i] != ITEM_OCARINA_FAIRY) &&
                            (gSaveContext.equips.buttonItems[i] != ITEM_OCARINA_TIME) &&
                            !((gSaveContext.equips.buttonItems[i] >= ITEM_BOTTLE) &&
                              (gSaveContext.equips.buttonItems[i] <= ITEM_POE)) &&
                            !((gSaveContext.equips.buttonItems[i] >= ITEM_WEIRD_EGG) &&
                              (gSaveContext.equips.buttonItems[i] <= ITEM_CLAIM_CHECK))) {
                            if (gSaveContext.buttonStatus[i] == BTN_DISABLED) {
                                sp28 = 1;
                            }

                            gSaveContext.buttonStatus[i] = BTN_ENABLED;
                        }
                    }
                }
            }
        }
    }

    if (sp28) {
        gSaveContext.unk_13EA = 0;
        if ((globalCtx->sceneLoadFlag == 0) && (globalCtx->transitionMode == 0)) {
            Interface_ChangeAlpha(50);
            osSyncPrintf("????????  alpha_change( 50 );  ?????\n");
        } else {
            osSyncPrintf("game_play->fade_direction || game_play->fbdemo_wipe_modem");
        }
    }
}

void Interface_SetSceneRestrictions(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    s16 i;
    u8 currentScene;

    // clang-format off
    interfaceCtx->restrictions.hGauge = interfaceCtx->restrictions.bButton =
    interfaceCtx->restrictions.aButton = interfaceCtx->restrictions.bottles =
    interfaceCtx->restrictions.tradeItems = interfaceCtx->restrictions.hookshot =
    interfaceCtx->restrictions.ocarina = interfaceCtx->restrictions.warpSongs =
    interfaceCtx->restrictions.sunsSong = interfaceCtx->restrictions.farores =
    interfaceCtx->restrictions.dinsNayrus = interfaceCtx->restrictions.all = 0;
    // clang-format on

    i = 0;

    // Translates to: "Data settings related to button display scene_data_ID=%d\n"
    osSyncPrintf("ボタン表示関係データ設定 scene_data_ID=%d\n", globalCtx->sceneNum);

    do {
        currentScene = (u8)globalCtx->sceneNum;
        if (sRestrictionFlags[i].scene == currentScene) {
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

            osSyncPrintf(VT_FGCOL(YELLOW));
            osSyncPrintf("parameter->button_status = %x,%x,%x\n", sRestrictionFlags[i].flags1,
                         sRestrictionFlags[i].flags2, sRestrictionFlags[i].flags3);
            osSyncPrintf("h_gage=%d, b_button=%d, a_button=%d, c_bottle=%d\n", interfaceCtx->restrictions.hGauge,
                         interfaceCtx->restrictions.bButton, interfaceCtx->restrictions.aButton,
                         interfaceCtx->restrictions.bottles);
            osSyncPrintf("c_warasibe=%d, c_hook=%d, c_ocarina=%d, c_warp=%d\n", interfaceCtx->restrictions.tradeItems,
                         interfaceCtx->restrictions.hookshot, interfaceCtx->restrictions.ocarina,
                         interfaceCtx->restrictions.warpSongs);
            osSyncPrintf("c_sunmoon=%d, m_wind=%d, m_magic=%d, another=%d\n", interfaceCtx->restrictions.sunsSong,
                         interfaceCtx->restrictions.farores, interfaceCtx->restrictions.dinsNayrus,
                         interfaceCtx->restrictions.all);
            osSyncPrintf(VT_RST);
            return;
        }
        i++;
    } while (sRestrictionFlags[i].scene != 0xFF);
}

Gfx* Gfx_TextureIA8(Gfx* displayListHead, void* texture, s16 textureWidth, s16 textureHeight, s16 rectLeft, s16 rectTop,
                    s16 rectWidth, s16 rectHeight, u16 dsdx, u16 dtdy) {
    gDPLoadTextureBlock(displayListHead++, texture, G_IM_FMT_IA, G_IM_SIZ_8b, textureWidth, textureHeight, 0,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);

    gSPTextureRectangle(displayListHead++, rectLeft * 4, rectTop * 4, (rectLeft + rectWidth) * 4,
                        (rectTop + rectHeight) * 4, G_TX_RENDERTILE, 0, 0, dsdx, dtdy);

    return displayListHead;
}

Gfx* Gfx_TextureI8(Gfx* displayListHead, void* texture, s16 textureWidth, s16 textureHeight, s16 rectLeft, s16 rectTop,
                   s16 rectWidth, s16 rectHeight, u16 dsdx, u16 dtdy) {
    gDPLoadTextureBlock(displayListHead++, texture, G_IM_FMT_I, G_IM_SIZ_8b, textureWidth, textureHeight, 0,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);

    gSPTextureRectangle(displayListHead++, rectLeft * 4, rectTop * 4, (rectLeft + rectWidth) * 4,
                        (rectTop + rectHeight) * 4, G_TX_RENDERTILE, 0, 0, dsdx, dtdy);

    return displayListHead;
}

void Inventory_SwapAgeEquipment(void) {
    s16 i;
    u16 temp;

    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        for (i = 0; i < 4; i++) {
            if (i != 0) {
                gSaveContext.childEquips.buttonItems[i] = gSaveContext.equips.buttonItems[i];
            } else {
                gSaveContext.childEquips.buttonItems[i] = ITEM_SWORD_KOKIRI;
            }

            if (i != 0) {
                gSaveContext.childEquips.cButtonSlots[i - 1] = gSaveContext.equips.cButtonSlots[i - 1];
            }
        }

        gSaveContext.childEquips.equipment = gSaveContext.equips.equipment;

        if (gSaveContext.adultEquips.buttonItems[0] == ITEM_NONE) {
            gSaveContext.equips.buttonItems[0] = ITEM_SWORD_MASTER;

            if (gSaveContext.inventory.items[SLOT_NUT] != ITEM_NONE) {
                gSaveContext.equips.buttonItems[1] = ITEM_NUT;
                gSaveContext.equips.cButtonSlots[0] = SLOT_NUT;
            } else {
                gSaveContext.equips.buttonItems[1] = gSaveContext.equips.cButtonSlots[0] = ITEM_NONE;
            }

            gSaveContext.equips.buttonItems[2] = ITEM_BOMB;
            gSaveContext.equips.buttonItems[3] = gSaveContext.inventory.items[SLOT_OCARINA];
            gSaveContext.equips.cButtonSlots[1] = SLOT_BOMB;
            gSaveContext.equips.cButtonSlots[2] = SLOT_OCARINA;
            gSaveContext.equips.equipment = 0x1122;
        } else {
            for (i = 0; i < 4; i++) {
                gSaveContext.equips.buttonItems[i] = gSaveContext.adultEquips.buttonItems[i];

                if (i != 0) {
                    gSaveContext.equips.cButtonSlots[i - 1] = gSaveContext.adultEquips.cButtonSlots[i - 1];
                }

                if (((gSaveContext.equips.buttonItems[i] >= ITEM_BOTTLE) &&
                     (gSaveContext.equips.buttonItems[i] <= ITEM_POE)) ||
                    ((gSaveContext.equips.buttonItems[i] >= ITEM_WEIRD_EGG) &&
                     (gSaveContext.equips.buttonItems[i] <= ITEM_CLAIM_CHECK))) {
                    osSyncPrintf("Register_Item_Pt(%d)=%d\n", i, gSaveContext.equips.cButtonSlots[i - 1]);
                    gSaveContext.equips.buttonItems[i] =
                        gSaveContext.inventory.items[gSaveContext.equips.cButtonSlots[i - 1]];
                }
            }

            gSaveContext.equips.equipment = gSaveContext.adultEquips.equipment;
        }
    } else {
        for (i = 0; i < 4; i++) {
            gSaveContext.adultEquips.buttonItems[i] = gSaveContext.equips.buttonItems[i];

            if (i != 0) {
                gSaveContext.adultEquips.cButtonSlots[i - 1] = gSaveContext.equips.cButtonSlots[i - 1];
            }
        }

        gSaveContext.adultEquips.equipment = gSaveContext.equips.equipment;

        if (gSaveContext.childEquips.buttonItems[0] != ITEM_NONE) {
            for (i = 0; i < 4; i++) {
                gSaveContext.equips.buttonItems[i] = gSaveContext.childEquips.buttonItems[i];

                if (i != 0) {
                    gSaveContext.equips.cButtonSlots[i - 1] = gSaveContext.childEquips.cButtonSlots[i - 1];
                }

                if (((gSaveContext.equips.buttonItems[i] >= ITEM_BOTTLE) &&
                     (gSaveContext.equips.buttonItems[i] <= ITEM_POE)) ||
                    ((gSaveContext.equips.buttonItems[i] >= ITEM_WEIRD_EGG) &&
                     (gSaveContext.equips.buttonItems[i] <= ITEM_CLAIM_CHECK))) {
                    osSyncPrintf("Register_Item_Pt(%d)=%d\n", i, gSaveContext.equips.cButtonSlots[i - 1]);
                    gSaveContext.equips.buttonItems[i] =
                        gSaveContext.inventory.items[gSaveContext.equips.cButtonSlots[i - 1]];
                }
            }

            gSaveContext.equips.equipment = gSaveContext.childEquips.equipment;
            gSaveContext.equips.equipment &= 0xFFF0;
            gSaveContext.equips.equipment |= 0x0001;
        }
    }

    temp = gEquipMasks[EQUIP_SHIELD] & gSaveContext.equips.equipment;
    if (temp != 0) {
        temp >>= gEquipShifts[EQUIP_SHIELD];
        if (!(gBitFlags[temp + 3] & gSaveContext.inventory.equipment)) {
            gSaveContext.equips.equipment &= gEquipNegMasks[EQUIP_SHIELD];
        }
    }
}

void Interface_InitHorsebackArchery(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    gSaveContext.minigameState = 1;
    interfaceCtx->unk_23C = interfaceCtx->unk_240 = interfaceCtx->unk_242 = 0;
    gSaveContext.minigameScore = sHBAScoreTier = 0;
    interfaceCtx->hbaAmmo = 20;
}

void func_800849EC(GlobalContext* globalCtx) {
    gSaveContext.inventory.equipment |= gBitFlags[2] << gEquipShifts[EQUIP_SWORD];
    gSaveContext.inventory.equipment ^= 8 << gEquipShifts[EQUIP_SWORD];

    if (gBitFlags[3] & gSaveContext.inventory.equipment) {
        gSaveContext.equips.buttonItems[0] = ITEM_SWORD_KNIFE;
    } else {
        gSaveContext.equips.buttonItems[0] = ITEM_SWORD_BGS;
    }

    Interface_LoadItemIcon1(globalCtx, 0);
}

void Interface_LoadItemIcon1(GlobalContext* globalCtx, u16 button) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    osCreateMesgQueue(&interfaceCtx->loadQueue, &interfaceCtx->loadMsg, OS_MESG_BLOCK);
    DmaMgr_SendRequest2(&interfaceCtx->dmaRequest_160, (u32)interfaceCtx->icon_itemSegment + button * 0x1000,
                        (u32)_icon_item_staticSegmentRomStart + (gSaveContext.equips.buttonItems[button] * 0x1000),
                        0x1000, 0, &interfaceCtx->loadQueue, NULL, "../z_parameter.c", 1171);
    osRecvMesg(&interfaceCtx->loadQueue, NULL, OS_MESG_BLOCK);
}

void Interface_LoadItemIcon2(GlobalContext* globalCtx, u16 button) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    osCreateMesgQueue(&interfaceCtx->loadQueue, &interfaceCtx->loadMsg, OS_MESG_BLOCK);
    DmaMgr_SendRequest2(&interfaceCtx->dmaRequest_180, (u32)interfaceCtx->icon_itemSegment + button * 0x1000,
                        (u32)_icon_item_staticSegmentRomStart + (gSaveContext.equips.buttonItems[button] * 0x1000),
                        0x1000, 0, &interfaceCtx->loadQueue, NULL, "../z_parameter.c", 1193);
    osRecvMesg(&interfaceCtx->loadQueue, NULL, OS_MESG_BLOCK);
}

void func_80084BF4(GlobalContext* globalCtx, u16 flag) {
    if (flag) {
        if ((gSaveContext.equips.buttonItems[0] == ITEM_SLINGSHOT) ||
            (gSaveContext.equips.buttonItems[0] == ITEM_BOW) || (gSaveContext.equips.buttonItems[0] == ITEM_BOMBCHU) ||
            (gSaveContext.equips.buttonItems[0] == ITEM_FISHING_POLE) ||
            (gSaveContext.buttonStatus[0] == BTN_DISABLED)) {
            if ((gSaveContext.equips.buttonItems[0] == ITEM_SLINGSHOT) ||
                (gSaveContext.equips.buttonItems[0] == ITEM_BOW) ||
                (gSaveContext.equips.buttonItems[0] == ITEM_BOMBCHU) ||
                (gSaveContext.equips.buttonItems[0] == ITEM_FISHING_POLE)) {
                gSaveContext.equips.buttonItems[0] = gSaveContext.buttonStatus[0];
                Interface_LoadItemIcon1(globalCtx, 0);
            }
        } else if (gSaveContext.equips.buttonItems[0] == ITEM_NONE) {
            if ((gSaveContext.equips.buttonItems[0] != ITEM_NONE) || (gSaveContext.infTable[29] == 0)) {
                gSaveContext.equips.buttonItems[0] = gSaveContext.buttonStatus[0];
                Interface_LoadItemIcon1(globalCtx, 0);
            }
        }

        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
            gSaveContext.buttonStatus[3] = BTN_ENABLED;
        Interface_ChangeAlpha(7);
    } else {
        gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
            gSaveContext.buttonStatus[3] = BTN_ENABLED;
        func_80083108(globalCtx);
    }
}

s16 sAmmoRefillCounts[] = { 5, 10, 20, 30, 5, 10, 30, 0, 5, 20, 1, 5, 20, 50, 200, 10 };

u8 Item_Give(GlobalContext* globalCtx, u8 item) {
    s16 i;
    s16 slot;
    s16 temp;

    slot = SLOT(item);
    if (item >= ITEM_STICKS_5) {
        slot = SLOT(sExtraItemBases[item - ITEM_STICKS_5]);
    }

    osSyncPrintf(VT_FGCOL(YELLOW));
    osSyncPrintf("item_get_setting=%d  pt=%d  z=%x\n", item, slot, gSaveContext.inventory.items[slot]);
    osSyncPrintf(VT_RST);

    if ((item >= ITEM_MEDALLION_FOREST) && (item <= ITEM_MEDALLION_LIGHT)) {
        gSaveContext.inventory.questItems |= gBitFlags[item - ITEM_MEDALLION_FOREST + QUEST_MEDALLION_FOREST];

        osSyncPrintf(VT_FGCOL(YELLOW));
        // Translates to: "Seals = %x"
        osSyncPrintf("封印 = %x\n", gSaveContext.inventory.questItems);
        osSyncPrintf(VT_RST);

        if (item == ITEM_MEDALLION_WATER) {
            func_8006D0AC(globalCtx);
        }

        return ITEM_NONE;
    } else if ((item >= ITEM_SONG_MINUET) && (item <= ITEM_SONG_STORMS)) {
        gSaveContext.inventory.questItems |= gBitFlags[item - ITEM_SONG_MINUET + QUEST_SONG_MINUET];

        osSyncPrintf(VT_FGCOL(YELLOW));
        // Translates to: "Musical scores = %x"
        osSyncPrintf("楽譜 = %x\n", gSaveContext.inventory.questItems);
        // Translates to: "Musical scores = %x (%x) (%x)"
        osSyncPrintf("楽譜 = %x (%x) (%x)\n", gSaveContext.inventory.questItems,
                     gBitFlags[item - ITEM_SONG_MINUET + QUEST_SONG_MINUET], gBitFlags[item - ITEM_SONG_MINUET]);
        osSyncPrintf(VT_RST);

        return ITEM_NONE;
    } else if ((item >= ITEM_KOKIRI_EMERALD) && (item <= ITEM_ZORA_SAPPHIRE)) {
        gSaveContext.inventory.questItems |= gBitFlags[item - ITEM_KOKIRI_EMERALD + QUEST_KOKIRI_EMERALD];

        osSyncPrintf(VT_FGCOL(YELLOW));
        // Translates to: "Spiritual Stones = %x"
        osSyncPrintf("精霊石 = %x\n", gSaveContext.inventory.questItems);
        osSyncPrintf(VT_RST);

        return ITEM_NONE;
    } else if ((item == ITEM_STONE_OF_AGONY) || (item == ITEM_GERUDO_CARD)) {
        gSaveContext.inventory.questItems |= gBitFlags[item - ITEM_STONE_OF_AGONY + QUEST_STONE_OF_AGONY];

        osSyncPrintf(VT_FGCOL(YELLOW));
        // Translates to: "Items = %x"
        osSyncPrintf("アイテム = %x\n", gSaveContext.inventory.questItems);
        osSyncPrintf(VT_RST);

        return ITEM_NONE;
    } else if (item == ITEM_SKULL_TOKEN) {
        gSaveContext.inventory.questItems |= gBitFlags[item - ITEM_SKULL_TOKEN + QUEST_SKULL_TOKEN];
        gSaveContext.inventory.gsTokens++;

        osSyncPrintf(VT_FGCOL(YELLOW));
        // Translates to: "N Coins = %x(%d)"
        osSyncPrintf("Ｎコイン = %x(%d)\n", gSaveContext.inventory.questItems, gSaveContext.inventory.gsTokens);
        osSyncPrintf(VT_RST);

        return ITEM_NONE;
    } else if ((item >= ITEM_SWORD_KOKIRI) && (item <= ITEM_SWORD_BGS)) {
        gSaveContext.inventory.equipment |= gBitFlags[item - ITEM_SWORD_KOKIRI] << gEquipShifts[EQUIP_SWORD];

        if (item == ITEM_SWORD_BGS) {
            gSaveContext.swordHealth = 8;

            if (ALL_EQUIP_VALUE(EQUIP_SWORD) == 0xF) {
                gSaveContext.inventory.equipment ^= 8 << gEquipShifts[EQUIP_SWORD];
                if (gSaveContext.equips.buttonItems[0] == ITEM_SWORD_KNIFE) {
                    gSaveContext.equips.buttonItems[0] = ITEM_SWORD_BGS;
                    Interface_LoadItemIcon1(globalCtx, 0);
                }
            }
        } else if (item == ITEM_SWORD_MASTER) {
            gSaveContext.equips.buttonItems[0] = ITEM_SWORD_MASTER;
            gSaveContext.equips.equipment &= 0xFFF0;
            gSaveContext.equips.equipment |= 0x0002;
            Interface_LoadItemIcon1(globalCtx, 0);
        }

        return ITEM_NONE;
    } else if ((item >= ITEM_SHIELD_DEKU) && (item <= ITEM_SHIELD_MIRROR)) {
        gSaveContext.inventory.equipment |= (gBitFlags[item - ITEM_SHIELD_DEKU] << gEquipShifts[EQUIP_SHIELD]);
        return ITEM_NONE;
    } else if ((item >= ITEM_TUNIC_KOKIRI) && (item <= ITEM_TUNIC_ZORA)) {
        gSaveContext.inventory.equipment |= (gBitFlags[item - ITEM_TUNIC_KOKIRI] << gEquipShifts[EQUIP_TUNIC]);
        return ITEM_NONE;
    } else if ((item >= ITEM_BOOTS_KOKIRI) && (item <= ITEM_BOOTS_HOVER)) {
        gSaveContext.inventory.equipment |= (gBitFlags[item - ITEM_BOOTS_KOKIRI] << gEquipShifts[EQUIP_BOOTS]);
        return ITEM_NONE;
    } else if ((item == ITEM_KEY_BOSS) || (item == ITEM_COMPASS) || (item == ITEM_DUNGEON_MAP)) {
        gSaveContext.inventory.dungeonItems[gSaveContext.mapIndex] |= gBitFlags[item - ITEM_KEY_BOSS];
        return ITEM_NONE;
    } else if (item == ITEM_KEY_SMALL) {
        if (gSaveContext.inventory.dungeonKeys[gSaveContext.mapIndex] < 0) {
            gSaveContext.inventory.dungeonKeys[gSaveContext.mapIndex] = 1;
            return ITEM_NONE;
        } else {
            gSaveContext.inventory.dungeonKeys[gSaveContext.mapIndex]++;
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
    } else if (item == ITEM_BRACELET) {
        Inventory_ChangeUpgrade(UPG_STRENGTH, 1);
        return ITEM_NONE;
    } else if (item == ITEM_GAUNTLETS_SILVER) {
        Inventory_ChangeUpgrade(UPG_STRENGTH, 2);
        return ITEM_NONE;
    } else if (item == ITEM_GAUNTLETS_GOLD) {
        Inventory_ChangeUpgrade(UPG_STRENGTH, 3);
        return ITEM_NONE;
    } else if (item == ITEM_SCALE_SILVER) {
        Inventory_ChangeUpgrade(UPG_SCALE, 1);
        return ITEM_NONE;
    } else if (item == ITEM_SCALE_GOLDEN) {
        Inventory_ChangeUpgrade(UPG_SCALE, 2);
        return ITEM_NONE;
    } else if (item == ITEM_WALLET_ADULT) {
        Inventory_ChangeUpgrade(UPG_WALLET, 1);
        return ITEM_NONE;
    } else if (item == ITEM_WALLET_GIANT) {
        Inventory_ChangeUpgrade(UPG_WALLET, 2);
        return ITEM_NONE;
    } else if (item == ITEM_STICK_UPGRADE_20) {
        if (gSaveContext.inventory.items[slot] == ITEM_NONE) {
            INV_CONTENT(ITEM_STICK) = ITEM_STICK;
        }
        Inventory_ChangeUpgrade(UPG_STICKS, 2);
        AMMO(ITEM_STICK) = CAPACITY(UPG_STICKS, 2);
        return ITEM_NONE;
    } else if (item == ITEM_STICK_UPGRADE_30) {
        if (gSaveContext.inventory.items[slot] == ITEM_NONE) {
            INV_CONTENT(ITEM_STICK) = ITEM_STICK;
        }
        Inventory_ChangeUpgrade(UPG_STICKS, 3);
        AMMO(ITEM_STICK) = CAPACITY(UPG_STICKS, 3);
        return ITEM_NONE;
    } else if (item == ITEM_NUT_UPGRADE_30) {
        if (gSaveContext.inventory.items[slot] == ITEM_NONE) {
            INV_CONTENT(ITEM_NUT) = ITEM_NUT;
        }
        Inventory_ChangeUpgrade(UPG_NUTS, 2);
        AMMO(ITEM_NUT) = CAPACITY(UPG_NUTS, 2);
        return ITEM_NONE;
    } else if (item == ITEM_NUT_UPGRADE_40) {
        if (gSaveContext.inventory.items[slot] == ITEM_NONE) {
            INV_CONTENT(ITEM_NUT) = ITEM_NUT;
        }
        Inventory_ChangeUpgrade(UPG_NUTS, 3);
        AMMO(ITEM_NUT) = CAPACITY(UPG_NUTS, 3);
        return ITEM_NONE;
    } else if (item == ITEM_LONGSHOT) {
        INV_CONTENT(item) = item;
        for (i = 1; i < 4; i++) {
            if (gSaveContext.equips.buttonItems[i] == ITEM_HOOKSHOT) {
                gSaveContext.equips.buttonItems[i] = ITEM_LONGSHOT;
                Interface_LoadItemIcon1(globalCtx, i);
            }
        }
        return ITEM_NONE;
    } else if (item == ITEM_STICK) {
        if (gSaveContext.inventory.items[slot] == ITEM_NONE) {
            Inventory_ChangeUpgrade(UPG_STICKS, 1);
            AMMO(ITEM_STICK) = 1;
        } else {
            AMMO(ITEM_STICK)++;
            if (AMMO(ITEM_STICK) > CUR_CAPACITY(UPG_STICKS)) {
                AMMO(ITEM_STICK) = CUR_CAPACITY(UPG_STICKS);
            }
        }
    } else if ((item == ITEM_STICKS_5) || (item == ITEM_STICKS_10)) {
        if (gSaveContext.inventory.items[slot] == ITEM_NONE) {
            Inventory_ChangeUpgrade(UPG_STICKS, 1);
            AMMO(ITEM_STICK) = sAmmoRefillCounts[item - ITEM_STICKS_5];
        } else {
            AMMO(ITEM_STICK) += sAmmoRefillCounts[item - ITEM_STICKS_5];
            if (AMMO(ITEM_STICK) > CUR_CAPACITY(UPG_STICKS)) {
                AMMO(ITEM_STICK) = CUR_CAPACITY(UPG_STICKS);
            }
        }
        item = ITEM_STICK;
    } else if (item == ITEM_NUT) {
        if (gSaveContext.inventory.items[slot] == ITEM_NONE) {
            Inventory_ChangeUpgrade(UPG_NUTS, 1);
            AMMO(ITEM_NUT) = ITEM_NUT;
        } else {
            AMMO(ITEM_NUT)++;
            if (AMMO(ITEM_NUT) > CUR_CAPACITY(UPG_NUTS)) {
                AMMO(ITEM_NUT) = CUR_CAPACITY(UPG_NUTS);
            }
        }
    } else if ((item == ITEM_NUTS_5) || (item == ITEM_NUTS_10)) {
        if (gSaveContext.inventory.items[slot] == ITEM_NONE) {
            Inventory_ChangeUpgrade(UPG_NUTS, 1);
            AMMO(ITEM_NUT) += sAmmoRefillCounts[item - ITEM_NUTS_5];
            // Translates to: "Deku Nuts %d(%d)=%d BS_count=%d"
            osSyncPrintf("デクの実 %d(%d)=%d  BS_count=%d\n", item, ITEM_NUTS_5, item - ITEM_NUTS_5,
                         sAmmoRefillCounts[item - ITEM_NUTS_5]);
        } else {
            AMMO(ITEM_NUT) += sAmmoRefillCounts[item - ITEM_NUTS_5];
            if (AMMO(ITEM_NUT) > CUR_CAPACITY(UPG_NUTS)) {
                AMMO(ITEM_NUT) = CUR_CAPACITY(UPG_NUTS);
            }
        }
        item = ITEM_NUT;
    } else if (item == ITEM_BOMB) {
        // Translates to: "Bomb  Bomb  Bomb  Bomb Bomb   Bomb Bomb"
        osSyncPrintf(" 爆弾  爆弾  爆弾  爆弾 爆弾   爆弾 爆弾 \n");
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
        if (gSaveContext.inventory.items[slot] == ITEM_NONE) {
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
        if (gSaveContext.inventory.items[slot] == ITEM_NONE) {
            INV_CONTENT(ITEM_BOMBCHU) = ITEM_BOMBCHU;
            AMMO(ITEM_BOMBCHU) += sAmmoRefillCounts[item - ITEM_BOMBCHUS_5 + 8];
            return ITEM_NONE;
        } else {
            AMMO(ITEM_BOMBCHU) += sAmmoRefillCounts[item - ITEM_BOMBCHUS_5 + 8];
            if (AMMO(ITEM_BOMBCHU) > 50) {
                AMMO(ITEM_BOMBCHU) = 50;
            }
            return ITEM_NONE;
        }
    } else if ((item >= ITEM_ARROWS_SMALL) && (item <= ITEM_ARROWS_LARGE)) {
        AMMO(ITEM_BOW) += sAmmoRefillCounts[item - ITEM_ARROWS_SMALL + 4];

        if ((AMMO(ITEM_BOW) >= CUR_CAPACITY(UPG_QUIVER)) || (AMMO(ITEM_BOW) < 0)) {
            AMMO(ITEM_BOW) = CUR_CAPACITY(UPG_QUIVER);
        }

        osSyncPrintf("%d本  Item_MaxGet=%d\n", AMMO(ITEM_BOW), CUR_CAPACITY(UPG_QUIVER));

        return ITEM_BOW;
    } else if (item == ITEM_SLINGSHOT) {
        Inventory_ChangeUpgrade(UPG_BULLET_BAG, 1);
        INV_CONTENT(ITEM_SLINGSHOT) = ITEM_SLINGSHOT;
        AMMO(ITEM_SLINGSHOT) = 30;
        return ITEM_NONE;
    } else if (item == ITEM_SEEDS) {
        AMMO(ITEM_SLINGSHOT) += 5;

        if (AMMO(ITEM_SLINGSHOT) >= CUR_CAPACITY(UPG_BULLET_BAG)) {
            AMMO(ITEM_SLINGSHOT) = CUR_CAPACITY(UPG_BULLET_BAG);
        }

        if (!(gSaveContext.itemGetInf[1] & 8)) {
            gSaveContext.itemGetInf[1] |= 8;
            return ITEM_NONE;
        }

        return ITEM_SEEDS;
    } else if (item == ITEM_SEEDS_30) {
        AMMO(ITEM_SLINGSHOT) += 30;

        if (AMMO(ITEM_SLINGSHOT) >= CUR_CAPACITY(UPG_BULLET_BAG)) {
            AMMO(ITEM_SLINGSHOT) = CUR_CAPACITY(UPG_BULLET_BAG);
        }

        if (!(gSaveContext.itemGetInf[1] & 8)) {
            gSaveContext.itemGetInf[1] |= 8;
            return ITEM_NONE;
        }

        return ITEM_SEEDS;
    } else if (item == ITEM_OCARINA_FAIRY) {
        INV_CONTENT(ITEM_OCARINA_FAIRY) = ITEM_OCARINA_FAIRY;
        return ITEM_NONE;
    } else if (item == ITEM_OCARINA_TIME) {
        INV_CONTENT(ITEM_OCARINA_TIME) = ITEM_OCARINA_TIME;
        for (i = 1; i < 4; i++) {
            if (gSaveContext.equips.buttonItems[i] == ITEM_OCARINA_FAIRY) {
                gSaveContext.equips.buttonItems[i] = ITEM_OCARINA_TIME;
                Interface_LoadItemIcon1(globalCtx, i);
            }
        }
        return ITEM_NONE;
    } else if (item == ITEM_BEAN) {
        if (gSaveContext.inventory.items[slot] == ITEM_NONE) {
            INV_CONTENT(item) = item;
            AMMO(ITEM_BEAN) = 1;
            BEANS_BOUGHT = 1;
        } else {
            AMMO(ITEM_BEAN)++;
            BEANS_BOUGHT++;
        }
        return ITEM_NONE;
    } else if ((item == ITEM_HEART_PIECE_2) || (item == ITEM_HEART_PIECE)) {
        gSaveContext.inventory.questItems += 1 << (QUEST_HEART_PIECE + 4);
        return ITEM_NONE;
    } else if (item == ITEM_HEART_CONTAINER) {
        gSaveContext.healthCapacity += 0x10;
        gSaveContext.health += 0x10;
        return ITEM_NONE;
    } else if (item == ITEM_HEART) {
        // Translates to: "Recovery Heart"
        osSyncPrintf("回復ハート回復ハート回復ハート\n");
        Health_ChangeBy(globalCtx, 0x10);
        return item;
    } else if (item == ITEM_MAGIC_SMALL) {
        if (gSaveContext.unk_13F0 != 10) {
            Magic_Fill(globalCtx);
        }

        func_80087708(globalCtx, 12, 5);

        if (!(gSaveContext.infTable[25] & 0x100)) {
            gSaveContext.infTable[25] |= 0x100;
            return ITEM_NONE;
        }

        return item;
    } else if (item == ITEM_MAGIC_LARGE) {
        if (gSaveContext.unk_13F0 != 10) {
            Magic_Fill(globalCtx);
        }

        func_80087708(globalCtx, 24, 5);

        if (!(gSaveContext.infTable[25] & 0x100)) {
            gSaveContext.infTable[25] |= 0x100;
            return ITEM_NONE;
        }

        return item;
    } else if ((item >= ITEM_RUPEE_GREEN) && (item <= ITEM_INVALID_8)) {
        Rupees_ChangeBy(sAmmoRefillCounts[item - ITEM_RUPEE_GREEN + 10]);
        return ITEM_NONE;
    } else if (item == ITEM_BOTTLE) {
        temp = SLOT(item);

        for (i = 0; i < 4; i++) {
            if (gSaveContext.inventory.items[temp + i] == ITEM_NONE) {
                gSaveContext.inventory.items[temp + i] = item;
                return ITEM_NONE;
            }
        }
    } else if (((item >= ITEM_POTION_RED) && (item <= ITEM_POE)) || (item == ITEM_MILK)) {
        temp = SLOT(item);

        if ((item != ITEM_MILK_BOTTLE) && (item != ITEM_LETTER_RUTO)) {
            if (item == ITEM_MILK) {
                item = ITEM_MILK_BOTTLE;
                temp = SLOT(item);
            }

            for (i = 0; i < 4; i++) {
                if (gSaveContext.inventory.items[temp + i] == ITEM_BOTTLE) {
                    // Translates to: "Item_Pt(1)=%d Item_Pt(2)=%d Item_Pt(3)=%d   Empty Bottle=%d   Content=%d"
                    osSyncPrintf("Item_Pt(1)=%d Item_Pt(2)=%d Item_Pt(3)=%d   空瓶=%d   中味=%d\n",
                                 gSaveContext.equips.cButtonSlots[0], gSaveContext.equips.cButtonSlots[1],
                                 gSaveContext.equips.cButtonSlots[2], temp + i, item);

                    if ((temp + i) == gSaveContext.equips.cButtonSlots[0]) {
                        gSaveContext.equips.buttonItems[1] = item;
                        Interface_LoadItemIcon2(globalCtx, 1);
                        gSaveContext.buttonStatus[1] = BTN_ENABLED;
                    } else if ((temp + i) == gSaveContext.equips.cButtonSlots[1]) {
                        gSaveContext.equips.buttonItems[2] = item;
                        Interface_LoadItemIcon2(globalCtx, 2);
                        gSaveContext.buttonStatus[2] = BTN_ENABLED;
                    } else if ((temp + i) == gSaveContext.equips.cButtonSlots[2]) {
                        gSaveContext.equips.buttonItems[3] = item;
                        Interface_LoadItemIcon1(globalCtx, 3);
                        gSaveContext.buttonStatus[3] = BTN_ENABLED;
                    }

                    gSaveContext.inventory.items[temp + i] = item;
                    return ITEM_NONE;
                }
            }
        } else {
            for (i = 0; i < 4; i++) {
                if (gSaveContext.inventory.items[temp + i] == ITEM_NONE) {
                    gSaveContext.inventory.items[temp + i] = item;
                    return ITEM_NONE;
                }
            }
        }
    } else if ((item >= ITEM_WEIRD_EGG) && (item <= ITEM_CLAIM_CHECK)) {
        if (item == ITEM_SAW) {
            gSaveContext.itemGetInf[1] |= 0x8000;
        }

        temp = INV_CONTENT(item);
        INV_CONTENT(item) = item;

        if (temp != ITEM_NONE) {
            for (i = 1; i < 4; i++) {
                if (temp == gSaveContext.equips.buttonItems[i]) {
                    if (item != ITEM_SOLD_OUT) {
                        gSaveContext.equips.buttonItems[i] = item;
                        Interface_LoadItemIcon1(globalCtx, i);
                    } else {
                        gSaveContext.equips.buttonItems[i] = ITEM_NONE;
                    }
                    return ITEM_NONE;
                }
            }
        }

        return ITEM_NONE;
    }

    temp = gSaveContext.inventory.items[slot];
    osSyncPrintf("Item_Register(%d)=%d  %d\n", slot, item, temp);
    INV_CONTENT(item) = item;

    return temp;
}

u8 Item_CheckObtainability(u8 item) {
    s16 i;
    s16 slot = SLOT(item);
    s32 temp;

    if (item >= ITEM_STICKS_5) {
        slot = SLOT(sExtraItemBases[item - ITEM_STICKS_5]);
    }

    osSyncPrintf(VT_FGCOL(GREEN));
    osSyncPrintf("item_get_non_setting=%d  pt=%d  z=%x\n", item, slot, gSaveContext.inventory.items[slot]);
    osSyncPrintf(VT_RST);

    if ((item >= ITEM_MEDALLION_FOREST) && (item <= ITEM_MEDALLION_LIGHT)) {
        return ITEM_NONE;
    } else if ((item >= ITEM_KOKIRI_EMERALD) && (item <= ITEM_SKULL_TOKEN)) {
        return ITEM_NONE;
    } else if ((item >= ITEM_SWORD_KOKIRI) && (item <= ITEM_SWORD_BGS)) {
        if (item == ITEM_SWORD_BGS) {
            return ITEM_NONE;
        } else if ((gBitFlags[item - ITEM_SWORD_KOKIRI] << gEquipShifts[EQUIP_SWORD]) &
                   gSaveContext.inventory.equipment) {
            return item;
        } else {
            return ITEM_NONE;
        }
    } else if ((item >= ITEM_SHIELD_DEKU) && (item <= ITEM_SHIELD_MIRROR)) {
        if ((gBitFlags[item - ITEM_SHIELD_DEKU] << gEquipShifts[EQUIP_SHIELD]) & gSaveContext.inventory.equipment) {
            return item;
        } else {
            return ITEM_NONE;
        }
    } else if ((item >= ITEM_TUNIC_KOKIRI) && (item <= ITEM_TUNIC_ZORA)) {
        if ((gBitFlags[item - ITEM_TUNIC_KOKIRI] << gEquipShifts[EQUIP_TUNIC]) & gSaveContext.inventory.equipment) {
            return item;
        } else {
            return ITEM_NONE;
        }
    } else if ((item >= ITEM_BOOTS_KOKIRI) && (item <= ITEM_BOOTS_HOVER)) {
        if ((gBitFlags[item - ITEM_BOOTS_KOKIRI] << gEquipShifts[EQUIP_BOOTS]) & gSaveContext.inventory.equipment) {
            return item;
        } else {
            return ITEM_NONE;
        }
    } else if ((item == ITEM_KEY_BOSS) || (item == ITEM_COMPASS) || (item == ITEM_DUNGEON_MAP)) {
        return ITEM_NONE;
    } else if (item == ITEM_KEY_SMALL) {
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
    } else if ((item >= ITEM_STICK_UPGRADE_20) && (item <= ITEM_NUT_UPGRADE_40)) {
        return ITEM_NONE;
    } else if ((item >= ITEM_BOMB_BAG_30) && (item <= ITEM_WALLET_GIANT)) {
        return ITEM_NONE;
    } else if (item == ITEM_LONGSHOT) {
        return ITEM_NONE;
    } else if ((item == ITEM_SEEDS) || (item == ITEM_SEEDS_30)) {
        if (!(gSaveContext.itemGetInf[1] & 0x8)) {
            return ITEM_NONE;
        } else {
            return ITEM_SEEDS;
        }
    } else if (item == ITEM_BEAN) {
        return ITEM_NONE;
    } else if ((item == ITEM_HEART_PIECE_2) || (item == ITEM_HEART_PIECE)) {
        return ITEM_NONE;
    } else if (item == ITEM_HEART_CONTAINER) {
        return ITEM_NONE;
    } else if (item == ITEM_HEART) {
        return ITEM_HEART;
    } else if ((item == ITEM_MAGIC_SMALL) || (item == ITEM_MAGIC_LARGE)) {
        // Translates to: "Magic Pot Get_Inf_Table( 25, 0x0100)=%d"
        osSyncPrintf("魔法の壷 Get_Inf_Table( 25, 0x0100)=%d\n", gSaveContext.infTable[25] & 0x100);
        if (!(gSaveContext.infTable[25] & 0x100)) {
            return ITEM_NONE;
        } else {
            return item;
        }
    } else if ((item >= ITEM_RUPEE_GREEN) && (item <= ITEM_INVALID_8)) {
        return ITEM_NONE;
    } else if (item == ITEM_BOTTLE) {
        return ITEM_NONE;
    } else if (((item >= ITEM_POTION_RED) && (item <= ITEM_POE)) || (item == ITEM_MILK)) {
        temp = SLOT(item);

        if ((item != ITEM_MILK_BOTTLE) && (item != ITEM_LETTER_RUTO)) {
            if (item == ITEM_MILK) {
                item = ITEM_MILK_BOTTLE;
                temp = SLOT(item);
            }

            for (i = 0; i < 4; i++) {
                if (gSaveContext.inventory.items[temp + i] == ITEM_BOTTLE) {
                    return ITEM_NONE;
                }
            }
        } else {
            for (i = 0; i < 4; i++) {
                if (gSaveContext.inventory.items[temp + i] == ITEM_NONE) {
                    return ITEM_NONE;
                }
            }
        }
    } else if ((item >= ITEM_WEIRD_EGG) && (item <= ITEM_CLAIM_CHECK)) {
        return ITEM_NONE;
    }

    return gSaveContext.inventory.items[slot];
}

void Inventory_DeleteItem(u16 item, u16 invSlot) {
    s16 i;

    if (item == ITEM_BEAN) {
        BEANS_BOUGHT = 0;
    }

    gSaveContext.inventory.items[invSlot] = ITEM_NONE;

    osSyncPrintf("\nItem_Register(%d)\n", invSlot, gSaveContext.inventory.items[invSlot]);

    for (i = 1; i < 4; i++) {
        if (gSaveContext.equips.buttonItems[i] == item) {
            gSaveContext.equips.buttonItems[i] = ITEM_NONE;
            gSaveContext.equips.cButtonSlots[i - 1] = SLOT_NONE;
        }
    }
}

s32 Inventory_ReplaceItem(GlobalContext* globalCtx, u16 oldItem, u16 newItem) {
    s16 i;

    for (i = 0; i < ARRAY_COUNT(gSaveContext.inventory.items); i++) {
        if (gSaveContext.inventory.items[i] == oldItem) {
            gSaveContext.inventory.items[i] = newItem;
            // Translates to: "Item Purge (%d)"
            osSyncPrintf("アイテム消去(%d)\n", i);
            for (i = 1; i < 4; i++) {
                if (gSaveContext.equips.buttonItems[i] == oldItem) {
                    gSaveContext.equips.buttonItems[i] = newItem;
                    Interface_LoadItemIcon1(globalCtx, i);
                    break;
                }
            }
            return 1;
        }
    }

    return 0;
}

s32 Inventory_HasEmptyBottle(void) {
    u8* items = gSaveContext.inventory.items;

    if (items[SLOT_BOTTLE_1] == ITEM_BOTTLE) {
        return 1;
    } else if (items[SLOT_BOTTLE_2] == ITEM_BOTTLE) {
        return 1;
    } else if (items[SLOT_BOTTLE_3] == ITEM_BOTTLE) {
        return 1;
    } else if (items[SLOT_BOTTLE_4] == ITEM_BOTTLE) {
        return 1;
    } else {
        return 0;
    }
}

s32 Inventory_HasSpecificBottle(u8 bottleItem) {
    u8* items = gSaveContext.inventory.items;

    if (items[SLOT_BOTTLE_1] == bottleItem) {
        return 1;
    } else if (items[SLOT_BOTTLE_2] == bottleItem) {
        return 1;
    } else if (items[SLOT_BOTTLE_3] == bottleItem) {
        return 1;
    } else if (items[SLOT_BOTTLE_4] == bottleItem) {
        return 1;
    } else {
        return 0;
    }
}

void Inventory_UpdateBottleItem(GlobalContext* globalCtx, u8 item, u8 button) {
    osSyncPrintf("item_no=%x,  c_no=%x,  Pt=%x  Item_Register=%x\n", item, button,
                 gSaveContext.equips.cButtonSlots[button - 1],
                 gSaveContext.inventory.items[gSaveContext.equips.cButtonSlots[button - 1]]);

    // Special case to only empty half of a Lon Lon Milk Bottle
    if ((gSaveContext.inventory.items[gSaveContext.equips.cButtonSlots[button - 1]] == ITEM_MILK_BOTTLE) &&
        (item == ITEM_BOTTLE)) {
        item = ITEM_MILK_HALF;
    }

    gSaveContext.inventory.items[gSaveContext.equips.cButtonSlots[button - 1]] = item;
    gSaveContext.equips.buttonItems[button] = item;

    Interface_LoadItemIcon1(globalCtx, button);

    globalCtx->pauseCtx.unk_23E = item;
    gSaveContext.buttonStatus[button] = BTN_ENABLED;
}

s32 Inventory_ConsumeFairy(GlobalContext* globalCtx) {
    s32 bottleSlot = SLOT(ITEM_FAIRY);
    s16 i;
    s16 j;

    for (i = 0; i < 4; i++) {
        if (gSaveContext.inventory.items[bottleSlot + i] == ITEM_FAIRY) {
            for (j = 1; j < 4; j++) {
                if (gSaveContext.equips.buttonItems[j] == ITEM_FAIRY) {
                    gSaveContext.equips.buttonItems[j] = ITEM_BOTTLE;
                    Interface_LoadItemIcon1(globalCtx, j);
                    i = 0;
                    bottleSlot = gSaveContext.equips.cButtonSlots[j - 1];
                    break;
                }
            }
            // Translates to: "Fairy Usage＝%d"
            osSyncPrintf("妖精使用＝%d\n", bottleSlot);
            gSaveContext.inventory.items[bottleSlot + i] = ITEM_BOTTLE;
            return 1;
        }
    }

    return 0;
}

void func_80086D5C(s32* buf, u16 size) {
    u16 i;

    for (i = 0; i < size; i++) {
        buf[i] = 0;
    }
}

u32 sDoActionTextures[] = { 0x07000000, 0x07000180 };

void Interface_LoadActionLabel(InterfaceContext* interfaceCtx, u16 action, s16 arg2) {
    if (action >= 0x1D) {
        action = 0x0A;
    }

    if (gSaveContext.language != 0) {
        action += 0x1D;
    }

    if (gSaveContext.language == 2) {
        action += 0x1D;
    }

    if ((action != 0x0A) && (action != 0x27) && (action != 0x44)) {
        osCreateMesgQueue(&interfaceCtx->loadQueue, &interfaceCtx->loadMsg, OS_MESG_BLOCK);
        DmaMgr_SendRequest2(&interfaceCtx->dmaRequest_160, (u32)interfaceCtx->do_actionSegment + (arg2 * 0x180),
                            (u32)_do_action_staticSegmentRomStart + (action * 0x180), 0x180, 0,
                            &interfaceCtx->loadQueue, NULL, "../z_parameter.c", 2145);
        osRecvMesg(&interfaceCtx->loadQueue, NULL, OS_MESG_BLOCK);
    } else {
        gSegments[7] = VIRTUAL_TO_PHYSICAL(interfaceCtx->do_actionSegment);
        func_80086D5C(SEGMENTED_TO_VIRTUAL(sDoActionTextures[arg2]), 0x180 / 4);
    }
}

void Interface_SetDoAction(GlobalContext* globalCtx, u16 action) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    PauseContext* pauseCtx = &globalCtx->pauseCtx;

    if (interfaceCtx->unk_1F0 != action) {
        interfaceCtx->unk_1F0 = action;
        interfaceCtx->unk_1EC = 1;
        interfaceCtx->unk_1F4 = 0.0f;
        Interface_LoadActionLabel(interfaceCtx, action, 1);
        if (pauseCtx->state != 0) {
            interfaceCtx->unk_1EC = 3;
        }
    }
}

void Interface_SetNaviCall(GlobalContext* globalCtx, u16 naviCallState) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    if (((naviCallState == 0x1D) || (naviCallState == 0x1E)) && !interfaceCtx->naviCalling &&
        (globalCtx->csCtx.state == 0)) {
        // clang-format off
        if (naviCallState == 0x1E) { Audio_PlaySoundGeneral(NA_SE_VO_NAVY_CALL, &D_801333D4, 4,
                                                            &D_801333E0, &D_801333E0, &D_801333E8); }
        // clang-format on

        if (naviCallState == 0x1D) {
            func_800F4524(&D_801333D4, NA_SE_VO_NA_HELLO_2, 32);
        }

        interfaceCtx->naviCalling = 1;
        sCUpInvisible = 0;
        sCUpTimer = 10;
    } else if ((naviCallState == 0x1F) && interfaceCtx->naviCalling) {
        interfaceCtx->naviCalling = 0;
    }
}

void Interface_LoadActionLabelB(GlobalContext* globalCtx, u16 action) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    if (gSaveContext.language != 0) {
        action += 0x1D;
    }

    if (gSaveContext.language == 2) {
        action += 0x1D;
    }

    interfaceCtx->unk_1FC = action;

    osCreateMesgQueue(&interfaceCtx->loadQueue, &interfaceCtx->loadMsg, OS_MESG_BLOCK);
    DmaMgr_SendRequest2(&interfaceCtx->dmaRequest_160, (u32)interfaceCtx->do_actionSegment + 0x180,
                        (u32)_do_action_staticSegmentRomStart + (action * 0x180), 0x180, 0, &interfaceCtx->loadQueue,
                        NULL, "../z_parameter.c", 2228);
    osRecvMesg(&interfaceCtx->loadQueue, NULL, OS_MESG_BLOCK);

    interfaceCtx->unk_1FA = 1;
}

s32 Health_ChangeBy(GlobalContext* globalCtx, s16 healthChange) {
    u16 heartCount;
    u16 healthLevel;

    // Translates to: "＊＊＊＊＊ Fluctuation=%d (now=%d, max=%d) ＊＊＊"
    osSyncPrintf("＊＊＊＊＊  増減=%d (now=%d, max=%d)  ＊＊＊", healthChange, gSaveContext.health,
                 gSaveContext.healthCapacity);

    // clang-format off
    if (healthChange > 0) { Audio_PlaySoundGeneral(NA_SE_SY_HP_RECOVER, &D_801333D4, 4,
                                                   &D_801333E0, &D_801333E0, &D_801333E8);
    } else if ((gSaveContext.doubleDefense != 0) && (healthChange < 0)) {
        healthChange >>= 1;
        // Translates to: "Heart decrease halved!!＝%d"
        osSyncPrintf("ハート減少半分！！＝%d\n", healthChange);
    }
    // clang-format on

    gSaveContext.health += healthChange;

    if (gSaveContext.health > gSaveContext.healthCapacity) {
        gSaveContext.health = gSaveContext.healthCapacity;
    }

    heartCount = gSaveContext.health % 0x10;

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

    // Translates to: "Life=%d ＊＊＊  %d ＊＊＊＊＊＊"
    osSyncPrintf("  ライフ=%d  ＊＊＊  %d  ＊＊＊＊＊＊\n", gSaveContext.health, healthLevel);

    if (gSaveContext.health <= 0) {
        gSaveContext.health = 0;
        return 0;
    } else {
        return 1;
    }
}

void Health_GiveHearts(s16 hearts) {
    gSaveContext.healthCapacity += hearts * 0x10;
}

void Rupees_ChangeBy(s16 rupeeChange) {
    gSaveContext.rupeeAccumulator += rupeeChange;
}

void Inventory_ChangeAmmo(s16 item, s16 ammoChange) {
    // Translates to: "Item = (%d)    Amount = (%d + %d)"
    osSyncPrintf("アイテム = (%d)    数 = (%d + %d)  ", item, AMMO(item), ammoChange);

    if (item == ITEM_STICK) {
        AMMO(ITEM_STICK) += ammoChange;

        if (AMMO(ITEM_STICK) >= CUR_CAPACITY(UPG_STICKS)) {
            AMMO(ITEM_STICK) = CUR_CAPACITY(UPG_STICKS);
        } else if (AMMO(ITEM_STICK) < 0) {
            AMMO(ITEM_STICK) = 0;
        }
    } else if (item == ITEM_NUT) {
        AMMO(ITEM_NUT) += ammoChange;

        if (AMMO(ITEM_NUT) >= CUR_CAPACITY(UPG_NUTS)) {
            AMMO(ITEM_NUT) = CUR_CAPACITY(UPG_NUTS);
        } else if (AMMO(ITEM_NUT) < 0) {
            AMMO(ITEM_NUT) = 0;
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
    } else if ((item == ITEM_SLINGSHOT) || (item == ITEM_SEEDS)) {
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
    } else if (item == ITEM_BEAN) {
        AMMO(ITEM_BEAN) += ammoChange;
    }

    // Translates to: "Total = (%d)"
    osSyncPrintf("合計 = (%d)\n", AMMO(item));
}

void Magic_Fill(GlobalContext* globalCtx) {
    if (gSaveContext.magicAcquired) {
        gSaveContext.unk_13F2 = gSaveContext.unk_13F0;
        gSaveContext.unk_13F6 = (gSaveContext.doubleMagic * 0x30) + 0x30;
        gSaveContext.unk_13F0 = 9;
    }
}

void func_800876C8(GlobalContext* globalCtx) {
    if ((gSaveContext.unk_13F0 != 8) && (gSaveContext.unk_13F0 != 9)) {
        if (gSaveContext.unk_13F0 == 10) {
            gSaveContext.unk_13F2 = gSaveContext.unk_13F0;
        }
        gSaveContext.unk_13F0 = 5;
    }
}

s32 func_80087708(GlobalContext* globalCtx, s16 arg1, s16 arg2) {
    if (!gSaveContext.magicAcquired) {
        return 0;
    }

    if ((arg2 != 5) && (gSaveContext.magic - arg1) < 0) {
        if (gSaveContext.unk_13F4 != 0) {
            Audio_PlaySoundGeneral(NA_SE_SY_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
        return 0;
    }

    switch (arg2) {
        case 0:
        case 2:
            if ((gSaveContext.unk_13F0 == 0) || (gSaveContext.unk_13F0 == 7)) {
                if (gSaveContext.unk_13F0 == 7) {
                    globalCtx->actorCtx.unk_03 = 0;
                }
                gSaveContext.unk_13F8 = gSaveContext.magic - arg1;
                gSaveContext.unk_13F0 = 1;
                return 1;
            } else {
                Audio_PlaySoundGeneral(NA_SE_SY_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                return 0;
            }
        case 1:
            if ((gSaveContext.unk_13F0 == 0) || (gSaveContext.unk_13F0 == 7)) {
                if (gSaveContext.unk_13F0 == 7) {
                    globalCtx->actorCtx.unk_03 = 0;
                }
                gSaveContext.unk_13F8 = gSaveContext.magic - arg1;
                gSaveContext.unk_13F0 = 6;
                return 1;
            } else {
                Audio_PlaySoundGeneral(NA_SE_SY_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                return 0;
            }
        case 3:
            if (gSaveContext.unk_13F0 == 0) {
                if (gSaveContext.magic != 0) {
                    globalCtx->interfaceCtx.unk_230 = 80;
                    gSaveContext.unk_13F0 = 7;
                    return 1;
                } else {
                    return 0;
                }
            } else {
                if (gSaveContext.unk_13F0 == 7) {
                    return 1;
                } else {
                    return 0;
                }
            }
        case 4:
            if ((gSaveContext.unk_13F0 == 0) || (gSaveContext.unk_13F0 == 7)) {
                if (gSaveContext.unk_13F0 == 7) {
                    globalCtx->actorCtx.unk_03 = 0;
                }
                gSaveContext.unk_13F8 = gSaveContext.magic - arg1;
                gSaveContext.unk_13F0 = 4;
                return 1;
            } else {
                Audio_PlaySoundGeneral(NA_SE_SY_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                return 0;
            }
        case 5:
            if (gSaveContext.unk_13F4 >= gSaveContext.magic) {
                gSaveContext.unk_13F8 = gSaveContext.magic + arg1;

                if (gSaveContext.unk_13F8 >= gSaveContext.unk_13F4) {
                    gSaveContext.unk_13F8 = gSaveContext.unk_13F4;
                }

                gSaveContext.unk_13F0 = 10;
                return 1;
            }
            break;
    }

    return 0;
}

void Interface_UpdateMagicBar(GlobalContext* globalCtx) {
    static s16 sMagicBorderColors[][3] = {
        { 0xFF, 0xFF, 0xFF },
        { 0x96, 0x96, 0x96 },
        { 0xFF, 0xFF, 0x96 },
        { 0xFF, 0xFF, 0x32 },
    };
    static s16 sMagicBorderIndexes[] = { 0, 1, 1, 0 };
    static s16 sMagicBorderRatio = 2;
    static s16 sMagicBorderStep = 1;
    MessageContext* msgCtx = &globalCtx->msgCtx;
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    s16 borderChangeR;
    s16 borderChangeG;
    s16 borderChangeB;
    s16 temp;

    switch (gSaveContext.unk_13F0) {
        case 8:
            temp = gSaveContext.magicLevel * 0x30;
            if (gSaveContext.unk_13F4 != temp) {
                if (gSaveContext.unk_13F4 < temp) {
                    gSaveContext.unk_13F4 += 8;
                    if (gSaveContext.unk_13F4 > temp) {
                        gSaveContext.unk_13F4 = temp;
                    }
                } else {
                    gSaveContext.unk_13F4 -= 8;
                    if (gSaveContext.unk_13F4 <= temp) {
                        gSaveContext.unk_13F4 = temp;
                    }
                }
            } else {
                gSaveContext.unk_13F0 = 9;
            }
            break;

        case 9:
            gSaveContext.magic += 4;

            if (gSaveContext.gameMode == 0 && gSaveContext.sceneSetupIndex < 4) {
                Audio_PlaySoundGeneral(NA_SE_SY_GAUGE_UP - SFX_FLAG, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                       &D_801333E8);
            }

            // Translates to: "Storage  MAGIC_NOW=%d (%d)"
            osSyncPrintf("蓄電  MAGIC_NOW=%d (%d)\n", gSaveContext.magic, gSaveContext.unk_13F6);
            if (gSaveContext.magic >= gSaveContext.unk_13F6) {
                gSaveContext.magic = gSaveContext.unk_13F6;
                gSaveContext.unk_13F0 = gSaveContext.unk_13F2;
                gSaveContext.unk_13F2 = 0;
            }
            break;

        case 1:
            sMagicBorderRatio = 2;
            gSaveContext.unk_13F0 = 2;
            break;

        case 2:
            gSaveContext.magic -= 2;
            if (gSaveContext.magic <= 0) {
                gSaveContext.magic = 0;
                gSaveContext.unk_13F0 = 3;
                sMagicBorderR = sMagicBorderG = sMagicBorderB = 255;
            } else if (gSaveContext.magic == gSaveContext.unk_13F8) {
                gSaveContext.unk_13F0 = 3;
                sMagicBorderR = sMagicBorderG = sMagicBorderB = 255;
            }
        case 3:
        case 4:
        case 6:
            temp = sMagicBorderIndexes[sMagicBorderStep];
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

        case 5:
            sMagicBorderR = sMagicBorderG = sMagicBorderB = 255;
            gSaveContext.unk_13F0 = 0;
            break;

        case 7:
            if ((globalCtx->pauseCtx.state == 0) && (globalCtx->pauseCtx.flag == 0) && (msgCtx->msgMode == 0) &&
                (globalCtx->gameOverCtx.state == GAMEOVER_INACTIVE) && (globalCtx->sceneLoadFlag == 0) &&
                (globalCtx->transitionMode == 0) && !Gameplay_InCsMode(globalCtx)) {
                if ((gSaveContext.magic == 0) || ((func_8008F2F8(globalCtx) >= 2) && (func_8008F2F8(globalCtx) < 5)) ||
                    ((gSaveContext.equips.buttonItems[1] != ITEM_LENS) &&
                     (gSaveContext.equips.buttonItems[2] != ITEM_LENS) &&
                     (gSaveContext.equips.buttonItems[3] != ITEM_LENS)) ||
                    (globalCtx->actorCtx.unk_03 == 0)) {
                    globalCtx->actorCtx.unk_03 = 0;
                    Audio_PlaySoundGeneral(NA_SE_SY_GLASSMODE_OFF, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                           &D_801333E8);
                    gSaveContext.unk_13F0 = 0;
                    sMagicBorderR = sMagicBorderG = sMagicBorderB = 255;
                    break;
                }

                interfaceCtx->unk_230--;
                if (interfaceCtx->unk_230 == 0) {
                    gSaveContext.magic--;
                    interfaceCtx->unk_230 = 80;
                }
            }

            temp = sMagicBorderIndexes[sMagicBorderStep];
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

        case 10:
            gSaveContext.magic += 4;
            Audio_PlaySoundGeneral(NA_SE_SY_GAUGE_UP - SFX_FLAG, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            if (gSaveContext.magic >= gSaveContext.unk_13F8) {
                gSaveContext.magic = gSaveContext.unk_13F8;
                gSaveContext.unk_13F0 = gSaveContext.unk_13F2;
                gSaveContext.unk_13F2 = 0;
            }
            break;

        default:
            gSaveContext.unk_13F0 = 0;
            break;
    }
}

void Interface_DrawMagicBar(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    s16 magicBarY;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_parameter.c", 2650);

    if (gSaveContext.magicLevel != 0) {
        if (gSaveContext.healthCapacity > 0xA0) {
            magicBarY = R_MAGIC_BAR_LARGE_Y;
        } else {
            magicBarY = R_MAGIC_BAR_SMALL_Y;
        }

        func_80094520(globalCtx->state.gfxCtx);

        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, sMagicBorderR, sMagicBorderG, sMagicBorderB, interfaceCtx->magicAlpha);
        gDPSetEnvColor(OVERLAY_DISP++, 100, 50, 50, 255);

        OVERLAY_DISP = Gfx_TextureIA8(OVERLAY_DISP, D_020038C0, 8, 16, R_MAGIC_BAR_X, magicBarY, 8, 16, 1024, 1024);

        OVERLAY_DISP = Gfx_TextureIA8(OVERLAY_DISP, D_02003940, 24, 16, R_MAGIC_BAR_X + 8, magicBarY,
                                      gSaveContext.unk_13F4, 16, 1024, 1024);

        gDPLoadTextureBlock(OVERLAY_DISP++, D_020038C0, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 16, 0, G_TX_MIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, 3, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        gSPTextureRectangle(OVERLAY_DISP++, ((R_MAGIC_BAR_X + gSaveContext.unk_13F4) + 8) << 2, magicBarY << 2,
                            ((R_MAGIC_BAR_X + gSaveContext.unk_13F4) + 16) << 2, (magicBarY + 16) << 2, G_TX_RENDERTILE,
                            256, 0, 1024, 1024);

        gDPPipeSync(OVERLAY_DISP++);
        gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, PRIMITIVE, PRIMITIVE,
                          ENVIRONMENT, TEXEL0, ENVIRONMENT, 0, 0, 0, PRIMITIVE);
        gDPSetEnvColor(OVERLAY_DISP++, 0, 0, 0, 255);

        if (gSaveContext.unk_13F0 == 4) {
            // Yellow part of the bar being used when casting a spell
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 250, 250, 0, interfaceCtx->magicAlpha);

            gDPLoadMultiBlock_4b(OVERLAY_DISP++, D_02003AC0, 0, G_TX_RENDERTILE, G_IM_FMT_I, 16, 16, 0,
                                 G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                 G_TX_NOLOD, G_TX_NOLOD);

            gSPTextureRectangle(OVERLAY_DISP++, R_MAGIC_FILL_X << 2, (magicBarY + 3) << 2,
                                (R_MAGIC_FILL_X + gSaveContext.magic) << 2, (magicBarY + 10) << 2, G_TX_RENDERTILE, 0,
                                0, 1024, 1024);

            // Fill the rest of the bar with the normal magic color
            gDPPipeSync(OVERLAY_DISP++);
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_MAGIC_FILL_COLOR(0), R_MAGIC_FILL_COLOR(1), R_MAGIC_FILL_COLOR(2),
                            interfaceCtx->magicAlpha);

            gSPTextureRectangle(OVERLAY_DISP++, R_MAGIC_FILL_X << 2, (magicBarY + 3) << 2,
                                (R_MAGIC_FILL_X + gSaveContext.unk_13F8) << 2, (magicBarY + 10) << 2, G_TX_RENDERTILE,
                                0, 0, 1024, 1024);
        } else {
            // Fill the whole bar with the normal magic color
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_MAGIC_FILL_COLOR(0), R_MAGIC_FILL_COLOR(1), R_MAGIC_FILL_COLOR(2),
                            interfaceCtx->magicAlpha);

            gDPLoadMultiBlock_4b(OVERLAY_DISP++, D_02003AC0, 0, G_TX_RENDERTILE, G_IM_FMT_I, 16, 16, 0,
                                 G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                 G_TX_NOLOD, G_TX_NOLOD);

            gSPTextureRectangle(OVERLAY_DISP++, R_MAGIC_FILL_X << 2, (magicBarY + 3) << 2,
                                (R_MAGIC_FILL_X + gSaveContext.magic) << 2, (magicBarY + 10) << 2, G_TX_RENDERTILE, 0,
                                0, 1024, 1024);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_parameter.c", 2731);
}

void func_80088AA0(s16 arg0) {
    gSaveContext.timerX[1] = 140;
    gSaveContext.timerY[1] = 80;
    D_80125A5C = 0;
    gSaveContext.timer2Value = arg0;

    if (arg0 != 0) {
        gSaveContext.timer2State = 1;
    } else {
        gSaveContext.timer2State = 7;
    }
}

void func_80088AF0(GlobalContext* globalCtx) {
    if (gSaveContext.timer2State != 0) {
        if (gSaveContext.eventInf[1] & 1) {
            gSaveContext.timer2Value = 239;
        } else {
            gSaveContext.timer2Value = 1;
        }
    }
}

void func_80088B34(s16 arg0) {
    gSaveContext.timerX[0] = 140;
    gSaveContext.timerY[0] = 80;
    D_80125A5C = 0;
    gSaveContext.timer1Value = arg0;

    if (arg0 != 0) {
        gSaveContext.timer1State = 5;
    } else {
        gSaveContext.timer1State = 11;
    }
}

void Interface_DrawActionLabel(GraphicsContext* gfxCtx, void* texture) {
    OPEN_DISPS(gfxCtx, "../z_parameter.c", 2820);

    gDPLoadTextureBlock_4b(OVERLAY_DISP++, texture, G_IM_FMT_IA, 48, 16, 0, G_TX_NOMIRROR | G_TX_WRAP,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSP1Quadrangle(OVERLAY_DISP++, 0, 2, 3, 1, 0);

    CLOSE_DISPS(gfxCtx, "../z_parameter.c", 2829);
}

u8* sCUpLabelTextures[] = { D_02002FC0, D_02002FC0, D_02002FC0 };

s16 sStartButtonLeftPos[] = { 132, 130, 130 };

void Interface_DrawItemButtons(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    Player* player = PLAYER;
    PauseContext* pauseCtx = &globalCtx->pauseCtx;
    s16 temp;
    s16 dxdy;
    s16 width;
    s16 height;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_parameter.c", 2900);

    // B Button Color & Texture
    // Also loads the Item Button Texture reused by other buttons afterwards
    gDPPipeSync(OVERLAY_DISP++);
    gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_B_BTN_COLOR(0), R_B_BTN_COLOR(1), R_B_BTN_COLOR(2), interfaceCtx->bAlpha);
    gDPSetEnvColor(OVERLAY_DISP++, 0, 0, 0, 255);
    OVERLAY_DISP = Gfx_TextureIA8(OVERLAY_DISP, &D_02000A00[0], 32, 32, R_ITEM_BTN_X(0), R_ITEM_BTN_Y(0),
                                  R_ITEM_BTN_WIDTH(0), R_ITEM_BTN_WIDTH(0), R_ITEM_BTN_DD(0) * 2, R_ITEM_BTN_DD(0) * 2);

    // C-Left Button Color & Texture
    gDPPipeSync(OVERLAY_DISP++);
    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_C_BTN_COLOR(0), R_C_BTN_COLOR(1), R_C_BTN_COLOR(2),
                    interfaceCtx->cLeftAlpha);
    gSPTextureRectangle(OVERLAY_DISP++, R_ITEM_BTN_X(1) << 2, R_ITEM_BTN_Y(1) << 2,
                        (R_ITEM_BTN_X(1) + R_ITEM_BTN_WIDTH(1)) << 2, (R_ITEM_BTN_Y(1) + R_ITEM_BTN_WIDTH(1)) << 2,
                        G_TX_RENDERTILE, 0, 0, R_ITEM_BTN_DD(1) * 2, R_ITEM_BTN_DD(1) * 2);

    // C-Down Button Color & Texture
    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_C_BTN_COLOR(0), R_C_BTN_COLOR(1), R_C_BTN_COLOR(2),
                    interfaceCtx->cDownAlpha);
    gSPTextureRectangle(OVERLAY_DISP++, R_ITEM_BTN_X(2) << 2, R_ITEM_BTN_Y(2) << 2,
                        (R_ITEM_BTN_X(2) + R_ITEM_BTN_WIDTH(2)) << 2, (R_ITEM_BTN_Y(2) + R_ITEM_BTN_WIDTH(2)) << 2,
                        G_TX_RENDERTILE, 0, 0, R_ITEM_BTN_DD(2) * 2, R_ITEM_BTN_DD(2) * 2);

    // C-Right Button Color & Texture
    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_C_BTN_COLOR(0), R_C_BTN_COLOR(1), R_C_BTN_COLOR(2),
                    interfaceCtx->cRightAlpha);
    gSPTextureRectangle(OVERLAY_DISP++, R_ITEM_BTN_X(3) << 2, R_ITEM_BTN_Y(3) << 2,
                        (R_ITEM_BTN_X(3) + R_ITEM_BTN_WIDTH(3)) << 2, (R_ITEM_BTN_Y(3) + R_ITEM_BTN_WIDTH(3)) << 2,
                        G_TX_RENDERTILE, 0, 0, R_ITEM_BTN_DD(3) * 2, R_ITEM_BTN_DD(3) * 2);

    if ((pauseCtx->state < 8) || (pauseCtx->state >= 18)) {
        if ((globalCtx->pauseCtx.state != 0) || (globalCtx->pauseCtx.flag != 0)) {
            // Start Button Texture, Color & Label
            gDPPipeSync(OVERLAY_DISP++);
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 120, 120, 120, interfaceCtx->startAlpha);
            gSPTextureRectangle(OVERLAY_DISP++, sStartButtonLeftPos[gSaveContext.language] << 2, 68,
                                (sStartButtonLeftPos[gSaveContext.language] + 22) << 2, 156, G_TX_RENDERTILE, 0, 0,
                                1462, 1462);
            gDPPipeSync(OVERLAY_DISP++);
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->startAlpha);
            gDPSetEnvColor(OVERLAY_DISP++, 0, 0, 0, 0);
            gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                              PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

            gDPLoadTextureBlock_4b(OVERLAY_DISP++, (u32)interfaceCtx->do_actionSegment + 0x300, G_IM_FMT_IA, 48, 16, 0,
                                   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                   G_TX_NOLOD, G_TX_NOLOD);

            dxdy = 1024.0f / (R_START_LABEL_DD(gSaveContext.language) / 100.0f);
            width = 48.0f / (R_START_LABEL_DD(gSaveContext.language) / 100.0f);
            height = 16.0f / (R_START_LABEL_DD(gSaveContext.language) / 100.0f);
            gSPTextureRectangle(
                OVERLAY_DISP++, R_START_LABEL_X(gSaveContext.language) << 2,
                R_START_LABEL_Y(gSaveContext.language) << 2, (R_START_LABEL_X(gSaveContext.language) + width) << 2,
                (R_START_LABEL_Y(gSaveContext.language) + height) << 2, G_TX_RENDERTILE, 0, 0, dxdy, dxdy);
        }
    }

    if (interfaceCtx->naviCalling && (globalCtx->pauseCtx.state == 0) && (globalCtx->pauseCtx.flag == 0) &&
        (globalCtx->csCtx.state == 0)) {
        if (!sCUpInvisible) {
            // C-Up Button Texture, Color & Label (Navi Text)
            gDPPipeSync(OVERLAY_DISP++);

            if ((gSaveContext.unk_13EA == 1) || (gSaveContext.unk_13EA == 2) || (gSaveContext.unk_13EA == 5)) {
                temp = 0;
            } else if ((player->stateFlags1 & 0x00200000) || (func_8008F2F8(globalCtx) == 4) ||
                       (player->stateFlags2 & 0x00040000)) {
                temp = 70;
            } else {
                temp = interfaceCtx->healthAlpha;
            }

            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_C_BTN_COLOR(0), R_C_BTN_COLOR(1), R_C_BTN_COLOR(2), temp);
            gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
            gSPTextureRectangle(OVERLAY_DISP++, R_C_UP_BTN_X << 2, R_C_UP_BTN_Y << 2, (R_C_UP_BTN_X + 16) << 2,
                                (R_C_UP_BTN_Y + 16) << 2, G_TX_RENDERTILE, 0, 0, 2048, 2048);
            gDPPipeSync(OVERLAY_DISP++);
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, temp);
            gDPSetEnvColor(OVERLAY_DISP++, 0, 0, 0, 0);
            gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                              PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

            gDPLoadTextureBlock_4b(OVERLAY_DISP++, sCUpLabelTextures[gSaveContext.language], G_IM_FMT_IA, 32, 8, 0,
                                   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                   G_TX_NOLOD, G_TX_NOLOD);

            gSPTextureRectangle(OVERLAY_DISP++, R_C_UP_ICON_X << 2, R_C_UP_ICON_Y << 2, (R_C_UP_ICON_X + 32) << 2,
                                (R_C_UP_ICON_Y + 8) << 2, G_TX_RENDERTILE, 0, 0, 1024, 1024);
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
        if (gSaveContext.equips.buttonItems[temp] > 0xF0) {
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

            OVERLAY_DISP = Gfx_TextureIA8(OVERLAY_DISP, &D_02000A00[temp + 1], 0x20, 0x20, R_ITEM_BTN_X(temp),
                                          R_ITEM_BTN_Y(temp), R_ITEM_BTN_WIDTH(temp), R_ITEM_BTN_WIDTH(temp),
                                          R_ITEM_BTN_DD(temp) * 2, R_ITEM_BTN_DD(temp) * 2);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_parameter.c", 3071);
}

void Interface_DrawItemIconTexture(GlobalContext* globalCtx, void* texture, s16 button) {
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_parameter.c", 3079);

    gDPLoadTextureBlock(OVERLAY_DISP++, texture, G_IM_FMT_RGBA, G_IM_SIZ_32b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSPTextureRectangle(OVERLAY_DISP++, R_ITEM_ICON_X(button) << 2, R_ITEM_ICON_Y(button) << 2,
                        (R_ITEM_ICON_X(button) + R_ITEM_ICON_WIDTH(button)) << 2,
                        (R_ITEM_ICON_Y(button) + R_ITEM_ICON_WIDTH(button)) << 2, G_TX_RENDERTILE, 0, 0,
                        R_ITEM_ICON_DD(button) * 2, R_ITEM_ICON_DD(button) * 2);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_parameter.c", 3094);
}

void Interface_DrawAmmoCount(GlobalContext* globalCtx, s16 button, s16 alpha) {
    s16 i;
    s16 ammo;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_parameter.c", 3105);

    i = gSaveContext.equips.buttonItems[button];

    if ((i == ITEM_STICK) || (i == ITEM_NUT) || (i == ITEM_BOMB) || (i == ITEM_BOW) ||
        ((i >= ITEM_BOW_ARROW_FIRE) && (i <= ITEM_BOW_ARROW_LIGHT)) || (i == ITEM_SLINGSHOT) || (i == ITEM_BOMBCHU) ||
        (i == ITEM_BEAN)) {

        if ((i >= ITEM_BOW_ARROW_FIRE) && (i <= ITEM_BOW_ARROW_LIGHT)) {
            i = ITEM_BOW;
        }

        ammo = AMMO(i);

        gDPPipeSync(OVERLAY_DISP++);

        if ((button == 0) && (gSaveContext.minigameState == 1)) {
            ammo = globalCtx->interfaceCtx.hbaAmmo;
        } else if ((button == 0) && (globalCtx->shootingGalleryStatus > 1)) {
            ammo = globalCtx->shootingGalleryStatus - 1;
        } else if ((button == 0) && (globalCtx->sceneNum == SCENE_BOWLING) && Flags_GetSwitch(globalCtx, 0x38)) {
            ammo = globalCtx->bombchuBowlingStatus;
            if (ammo < 0) {
                ammo = 0;
            }
        } else if (((i == ITEM_BOW) && (AMMO(i) == CUR_CAPACITY(UPG_QUIVER))) ||
                   ((i == ITEM_BOMB) && (AMMO(i) == CUR_CAPACITY(UPG_BOMB_BAG))) ||
                   ((i == ITEM_SLINGSHOT) && (AMMO(i) == CUR_CAPACITY(UPG_BULLET_BAG))) ||
                   ((i == ITEM_STICK) && (AMMO(i) == CUR_CAPACITY(UPG_STICKS))) ||
                   ((i == ITEM_NUT) && (AMMO(i) == CUR_CAPACITY(UPG_NUTS))) || ((i == ITEM_BOMBCHU) && (ammo == 50)) ||
                   ((i == ITEM_BEAN) && (ammo == 15))) {
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 120, 255, 0, alpha);
        }

        if (ammo == 0) {
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 100, 100, 100, alpha);
        }

        for (i = 0; ammo >= 10; i++) {
            ammo -= 10;
        }

        if (i != 0) {
            OVERLAY_DISP = Gfx_TextureIA8(OVERLAY_DISP, &D_020035C0[i], 8, 8, R_ITEM_AMMO_X(button),
                                          R_ITEM_AMMO_Y(button), 8, 8, 1024, 1024);
        }

        OVERLAY_DISP = Gfx_TextureIA8(OVERLAY_DISP, &D_020035C0[ammo], 8, 8, R_ITEM_AMMO_X(button) + 6,
                                      R_ITEM_AMMO_Y(button), 8, 8, 1024, 1024);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_parameter.c", 3158);
}

void Interface_DrawActionButton(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_parameter.c", 3172);

    Matrix_Translate(0.0f, 0.0f, XREG(18) / 10.0f, MTXMODE_NEW);
    Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);
    Matrix_RotateX(interfaceCtx->unk_1F4 / 10000.0f, MTXMODE_APPLY);

    if (1) {} // Necessary to match

    gSPMatrix(OVERLAY_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_parameter.c", 3177),
              G_MTX_MODELVIEW | G_MTX_LOAD);
    gSPVertex(OVERLAY_DISP++, interfaceCtx->vtx_128, 4, 0);

    gDPLoadTextureBlock(OVERLAY_DISP++, &D_02000A00[0], G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSP1Quadrangle(OVERLAY_DISP++, 0, 2, 3, 1, 0);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_parameter.c", 3187);
}

void Interface_InitVertices(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    s16 i;

    interfaceCtx->vtx_128 = Graph_Alloc(globalCtx->state.gfxCtx, 8 * sizeof(Vtx));

    // clang-format off
    interfaceCtx->vtx_128[0].v.ob[0] =
    interfaceCtx->vtx_128[2].v.ob[0] = -14;
    interfaceCtx->vtx_128[1].v.ob[0] =
    interfaceCtx->vtx_128[3].v.ob[0] = interfaceCtx->vtx_128[0].v.ob[0] + 28;

    interfaceCtx->vtx_128[0].v.ob[1] =
    interfaceCtx->vtx_128[1].v.ob[1] = 14;
    interfaceCtx->vtx_128[2].v.ob[1] =
    interfaceCtx->vtx_128[3].v.ob[1] = interfaceCtx->vtx_128[0].v.ob[1] - 28;

    interfaceCtx->vtx_128[4].v.ob[0] =
    interfaceCtx->vtx_128[6].v.ob[0] = -(XREG(21) / 2);
    interfaceCtx->vtx_128[5].v.ob[0] =
    interfaceCtx->vtx_128[7].v.ob[0] = interfaceCtx->vtx_128[4].v.ob[0] + XREG(21);

    interfaceCtx->vtx_128[4].v.ob[1] =
    interfaceCtx->vtx_128[5].v.ob[1] = XREG(28) / 2;
    interfaceCtx->vtx_128[6].v.ob[1] =
    interfaceCtx->vtx_128[7].v.ob[1] = interfaceCtx->vtx_128[4].v.ob[1] - XREG(28);

    for (i = 0; i < 8; i += 4) {
        interfaceCtx->vtx_128[i].v.ob[2] = interfaceCtx->vtx_128[i+1].v.ob[2] =
        interfaceCtx->vtx_128[i+2].v.ob[2] = interfaceCtx->vtx_128[i+3].v.ob[2] = 0;

        interfaceCtx->vtx_128[i].v.flag = interfaceCtx->vtx_128[i+1].v.flag =
        interfaceCtx->vtx_128[i+2].v.flag = interfaceCtx->vtx_128[i+3].v.flag = 0;

        interfaceCtx->vtx_128[i].v.tc[0] = interfaceCtx->vtx_128[i].v.tc[1] =
        interfaceCtx->vtx_128[i+1].v.tc[1] = interfaceCtx->vtx_128[i+2].v.tc[0] = 0;
        interfaceCtx->vtx_128[i+1].v.tc[0] = interfaceCtx->vtx_128[i+2].v.tc[1] =
        interfaceCtx->vtx_128[i+3].v.tc[0] = interfaceCtx->vtx_128[i+3].v.tc[1] = 1024;

        interfaceCtx->vtx_128[i].v.cn[0] = interfaceCtx->vtx_128[i+1].v.cn[0] =
        interfaceCtx->vtx_128[i+2].v.cn[0] = interfaceCtx->vtx_128[i+3].v.cn[0] =
        interfaceCtx->vtx_128[i].v.cn[1] = interfaceCtx->vtx_128[i+1].v.cn[1] =
        interfaceCtx->vtx_128[i+2].v.cn[1] = interfaceCtx->vtx_128[i+3].v.cn[1] =
        interfaceCtx->vtx_128[i].v.cn[2] = interfaceCtx->vtx_128[i+1].v.cn[2] =
        interfaceCtx->vtx_128[i+2].v.cn[2] = interfaceCtx->vtx_128[i+3].v.cn[2] = 0xFF;

        interfaceCtx->vtx_128[i].v.cn[3] = interfaceCtx->vtx_128[i+1].v.cn[3] =
        interfaceCtx->vtx_128[i+2].v.cn[3] = interfaceCtx->vtx_128[i+3].v.cn[3] = 0xFF;
    }

    interfaceCtx->vtx_128[5].v.tc[0] = interfaceCtx->vtx_128[7].v.tc[0] = 1536;
    interfaceCtx->vtx_128[6].v.tc[1] = interfaceCtx->vtx_128[7].v.tc[1] = 512;

    interfaceCtx->vtx_12C = Graph_Alloc(globalCtx->state.gfxCtx, 4 * sizeof(Vtx));

    interfaceCtx->vtx_12C[0].v.ob[0] = interfaceCtx->vtx_12C[2].v.ob[0] = -8;
    interfaceCtx->vtx_12C[1].v.ob[0] = interfaceCtx->vtx_12C[3].v.ob[0] = 8;
    interfaceCtx->vtx_12C[0].v.ob[1] = interfaceCtx->vtx_12C[1].v.ob[1] = 8;
    interfaceCtx->vtx_12C[2].v.ob[1] = interfaceCtx->vtx_12C[3].v.ob[1] = -8;

    interfaceCtx->vtx_12C[0].v.ob[2] = interfaceCtx->vtx_12C[1].v.ob[2] =
    interfaceCtx->vtx_12C[2].v.ob[2] = interfaceCtx->vtx_12C[3].v.ob[2] = 0;

    interfaceCtx->vtx_12C[0].v.flag = interfaceCtx->vtx_12C[1].v.flag =
    interfaceCtx->vtx_12C[2].v.flag = interfaceCtx->vtx_12C[3].v.flag = 0;

    interfaceCtx->vtx_12C[0].v.tc[0] = interfaceCtx->vtx_12C[0].v.tc[1] =
    interfaceCtx->vtx_12C[1].v.tc[1] = interfaceCtx->vtx_12C[2].v.tc[0] = 0;
    interfaceCtx->vtx_12C[1].v.tc[0] = interfaceCtx->vtx_12C[2].v.tc[1] =
    interfaceCtx->vtx_12C[3].v.tc[0] = interfaceCtx->vtx_12C[3].v.tc[1] = 512;

    interfaceCtx->vtx_12C[0].v.cn[0] = interfaceCtx->vtx_12C[1].v.cn[0] =
    interfaceCtx->vtx_12C[2].v.cn[0] = interfaceCtx->vtx_12C[3].v.cn[0] =
    interfaceCtx->vtx_12C[0].v.cn[1] = interfaceCtx->vtx_12C[1].v.cn[1] =
    interfaceCtx->vtx_12C[2].v.cn[1] = interfaceCtx->vtx_12C[3].v.cn[1] =
    interfaceCtx->vtx_12C[0].v.cn[2] = interfaceCtx->vtx_12C[1].v.cn[2] =
    interfaceCtx->vtx_12C[2].v.cn[2] = interfaceCtx->vtx_12C[3].v.cn[2] =
    interfaceCtx->vtx_12C[0].v.cn[3] = interfaceCtx->vtx_12C[1].v.cn[3] =
    interfaceCtx->vtx_12C[2].v.cn[3] = interfaceCtx->vtx_12C[3].v.cn[3] = 0xFF;
    // clang-format on
}

void func_8008A8B8(GlobalContext* globalCtx, s32 topY, s32 bottomY, s32 leftX, s32 rightX) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    Vec3f sp40;
    Vec3f sp34;
    Vec3f sp28;

    sp40.x = sp40.y = sp40.z = 0.0f;
    sp34.x = sp34.y = 0.0f;
    sp34.z = -1.0f;
    sp28.x = sp28.z = 0.0f;
    sp28.y = 1.0f;
    func_800AA358(&interfaceCtx->view, &sp40, &sp34, &sp28);
    interfaceCtx->viewport.topY = topY;
    interfaceCtx->viewport.bottomY = bottomY;
    interfaceCtx->viewport.leftX = leftX;
    interfaceCtx->viewport.rightX = rightX;
    View_SetViewport(&interfaceCtx->view, &interfaceCtx->viewport);
    func_800AA460(&interfaceCtx->view, 60.0f, 10.0f, 60.0f);
    func_800AB560(&interfaceCtx->view);
}

void func_8008A994(InterfaceContext* interfaceCtx) {
    SET_FULLSCREEN_VIEWPORT(&interfaceCtx->view);
    func_800AB2C4(&interfaceCtx->view);
}

s16 sMagicArrowEffectsR[] = { 0xFF, 0x64, 0xFF };
s16 sMagicArrowEffectsG[] = { 0x00, 0x64, 0xFF };
s16 sMagicArrowEffectsB[] = { 0x00, 0xFF, 0x64 };

s16 sTimerDigitLeftPos[] = { 16, 25, 34, 42, 51 };
s16 sDigitWidth[] = { 9, 9, 8, 9, 9 };

// unused, most likely colors
s16 D_80125B1C[][3] = {
    { 0, 150, 0 }, { 100, 255, 0 }, { 255, 255, 255 }, { 0, 0, 0 }, { 255, 255, 255 },
};

s16 sRupeeDigitsFirst[] = { 1, 0, 0 };
s16 sRupeeDigitsCount[] = { 2, 3, 3 };

s16 sSpoilingItemEntrances[] = { 0x01AD, 0x0153, 0x0153 };

u16 D_80125B54 = 0xC220;       // unused
u16 D_80125B58 = 0xC20C;       // unused
s16 D_80125B5C[] = { 91, 91 }; // unused

// Due to an unknown reason, bss ordering changes within the 5 static variables in the function below.
// In order to restore the correct order, we need a specific number of bss variables in the file before that point.
// For this, we introduce 3 dummy variables which end up in padding at the end of the file's bss, so they don't actually
// take space.
s8 sBssDummy1;
s8 sBssDummy2;
s8 sBssDummy3;

#ifdef NON_MATCHING
// mostly regalloc, minor ordering and stack usage differences
void Interface_Draw(GlobalContext* globalCtx) {
    static s16 D_8015FFE0;
    static s16 D_8015FFE2;
    static s16 D_8015FFE4;
    static s16 D_8015FFE6;
    static s16 sTimerDigits[5];
    MessageContext* msgCtx = &globalCtx->msgCtx;
    PauseContext* pauseCtx = &globalCtx->pauseCtx;
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    Player* player = PLAYER;
    s16 phi_s3_2;
    s16 phi_s3;
    s16 phi_s2;
    s16 phi_s1;
    s16 phi_s0;
    s16 sp274;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_parameter.c", 3405);

    gSPSegment(OVERLAY_DISP++, 0x02, interfaceCtx->parameterSegment);
    gSPSegment(OVERLAY_DISP++, 0x07, interfaceCtx->do_actionSegment);
    gSPSegment(OVERLAY_DISP++, 0x08, interfaceCtx->icon_itemSegment);
    gSPSegment(OVERLAY_DISP++, 0x0B, interfaceCtx->mapSegment);

    if (pauseCtx->flag == 0) {
        Interface_InitVertices(globalCtx);
        func_8008A994(interfaceCtx);
        HealthMeter_Draw(globalCtx);

        func_80094520(globalCtx->state.gfxCtx);

        // Rupee Icon
        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 200, 255, 100, interfaceCtx->magicAlpha);
        gDPSetEnvColor(OVERLAY_DISP++, 0, 80, 0, 255);
        OVERLAY_DISP = Gfx_TextureIA8(OVERLAY_DISP, D_02001F00, 16, 16, 26, 206, 16, 16, 1024, 1024);

        switch (globalCtx->sceneNum) {
            case SCENE_BMORI1:
            case SCENE_HIDAN:
            case SCENE_MIZUSIN:
            case SCENE_JYASINZOU:
            case SCENE_HAKADAN:
            case SCENE_HAKADANCH:
            case SCENE_ICE_DOUKUTO:
            case SCENE_GANON:
            case SCENE_MEN:
            case SCENE_GERUDOWAY:
            case SCENE_GANONTIKA:
            case SCENE_GANON_SONOGO:
            case SCENE_GANONTIKA_SONOGO:
            case SCENE_TAKARAYA:
                if (gSaveContext.inventory.dungeonKeys[gSaveContext.mapIndex] >= 0) {
                    // Small Key Icon
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 200, 230, 255, interfaceCtx->magicAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, 0, 0, 20, 255);
                    OVERLAY_DISP = Gfx_TextureIA8(OVERLAY_DISP, D_02001E00, 16, 16, 26, 190, 16, 16, 1024, 1024);

                    // Small Key Counter
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->magicAlpha);
                    gDPSetCombineLERP(OVERLAY_DISP++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE,
                                      TEXEL0, 0, PRIMITIVE, 0);

                    interfaceCtx->counterDigits[2] = 0;
                    interfaceCtx->counterDigits[3] = gSaveContext.inventory.dungeonKeys[gSaveContext.mapIndex];

                    while (interfaceCtx->counterDigits[3] >= 10) {
                        interfaceCtx->counterDigits[2]++;
                        interfaceCtx->counterDigits[3] -= 10;
                    }

                    phi_s2 = 42;
                    if (interfaceCtx->counterDigits[2] != 0) {
                        OVERLAY_DISP = Gfx_TextureI8(OVERLAY_DISP, &D_02003040[interfaceCtx->counterDigits[2]], 8, 16,
                                                     phi_s2, 190, 8, 16, 1024, 1024);
                        phi_s2 = 50;
                    }

                    OVERLAY_DISP = Gfx_TextureI8(OVERLAY_DISP, &D_02003040[interfaceCtx->counterDigits[3]], 8, 16,
                                                 phi_s2, 190, 8, 16, 1024, 1024);
                }

                phi_s2 = 42;
                break;
            default:
                phi_s2 = 42;
                break;
        }

        phi_s2 = 42;

        // Rupee Counter
        gDPPipeSync(OVERLAY_DISP++);

        if (gSaveContext.rupees == CUR_CAPACITY(UPG_WALLET)) {
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 120, 255, 0, interfaceCtx->magicAlpha);
        } else if (gSaveContext.rupees != 0) {
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->magicAlpha);
        } else {
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 100, 100, 100, interfaceCtx->magicAlpha);
        }

        gDPSetCombineLERP(OVERLAY_DISP++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0,
                          PRIMITIVE, 0);

        interfaceCtx->counterDigits[0] = interfaceCtx->counterDigits[1] = 0;
        interfaceCtx->counterDigits[2] = gSaveContext.rupees;

        if ((interfaceCtx->counterDigits[2] >= 10000) || (interfaceCtx->counterDigits[2] < 0)) {
            interfaceCtx->counterDigits[2] &= 0xDDD;
        }

        while (interfaceCtx->counterDigits[2] >= 100) {
            interfaceCtx->counterDigits[2] -= 100;
            interfaceCtx->counterDigits[0]++;
        }

        while (interfaceCtx->counterDigits[2] >= 10) {
            interfaceCtx->counterDigits[2] -= 10;
            interfaceCtx->counterDigits[1]++;
        }

        phi_s0 = sRupeeDigitsFirst[CUR_UPG_VALUE(UPG_WALLET)];
        phi_s1 = sRupeeDigitsCount[CUR_UPG_VALUE(UPG_WALLET)];

        for (phi_s3 = 0; phi_s3 < phi_s1; phi_s3++, phi_s0++, phi_s2 += 8) {
            OVERLAY_DISP = Gfx_TextureI8(OVERLAY_DISP, &D_02003040[interfaceCtx->counterDigits[phi_s0]], 8, 16, phi_s2,
                                         206, 8, 16, 1024, 1024);
        }

        Interface_DrawMagicBar(globalCtx);
        Minimap_Draw(globalCtx);

        if ((R_PAUSE_MENU_MODE != 2) && (R_PAUSE_MENU_MODE != 3)) {
            func_8002C124(&globalCtx->actorCtx.targetCtx, globalCtx); // Draw Z-Target
        }

        func_80094520(globalCtx->state.gfxCtx);

        Interface_DrawItemButtons(globalCtx);

        gDPPipeSync(OVERLAY_DISP++);
        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->bAlpha);
        gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

        if (interfaceCtx->unk_1FA == 0) {
            // B Button Icon & possibly Ammo Count
            if (gSaveContext.equips.buttonItems[0] != ITEM_NONE) {
                Interface_DrawItemIconTexture(globalCtx, (void*)(u32)interfaceCtx->icon_itemSegment, 0);

                if ((player->stateFlags1 & 0x00800000) || (globalCtx->shootingGalleryStatus > 1) ||
                    ((globalCtx->sceneNum == SCENE_BOWLING) && Flags_GetSwitch(globalCtx, 0x38))) {
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE,
                                      0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
                    Interface_DrawAmmoCount(globalCtx, 0, interfaceCtx->bAlpha);
                }
            }
        } else {
            // B Button Do Action Label
            gDPPipeSync(OVERLAY_DISP++);
            gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                              PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->bAlpha);

            gDPLoadTextureBlock_4b(OVERLAY_DISP++, (u32)interfaceCtx->do_actionSegment + 0x180, G_IM_FMT_IA, 48, 16, 0,
                                   G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                   G_TX_NOLOD, G_TX_NOLOD);

            R_B_LABEL_DD = 1024.0f / (WREG(37 + gSaveContext.language) / 100.0f);
            gSPTextureRectangle(OVERLAY_DISP++, R_B_LABEL_X(gSaveContext.language) << 2,
                                R_B_LABEL_Y(gSaveContext.language) << 2, (R_B_LABEL_X(gSaveContext.language) + 48) << 2,
                                (R_B_LABEL_Y(gSaveContext.language) + 16) << 2, G_TX_RENDERTILE, 0, 0, R_B_LABEL_DD,
                                R_B_LABEL_DD);
        }

        gDPPipeSync(OVERLAY_DISP++);

        // C-Left Button Icon & Ammo Count
        if (gSaveContext.equips.buttonItems[1] < 0xF0) {
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->cLeftAlpha);
            gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
            Interface_DrawItemIconTexture(globalCtx, (void*)((u32)interfaceCtx->icon_itemSegment + 0x1000), 1);
            gDPPipeSync(OVERLAY_DISP++);
            gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                              PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
            Interface_DrawAmmoCount(globalCtx, 1, interfaceCtx->cLeftAlpha);
        }

        gDPPipeSync(OVERLAY_DISP++);

        // C-Down Button Icon & Ammo Count
        if (gSaveContext.equips.buttonItems[2] < 0xF0) {
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->cDownAlpha);
            gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
            Interface_DrawItemIconTexture(globalCtx, (void*)((u32)interfaceCtx->icon_itemSegment + 0x2000), 2);
            gDPPipeSync(OVERLAY_DISP++);
            gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                              PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
            Interface_DrawAmmoCount(globalCtx, 2, interfaceCtx->cDownAlpha);
        }

        gDPPipeSync(OVERLAY_DISP++);

        // C-Right Button Icon & Ammo Count
        if (gSaveContext.equips.buttonItems[3] < 0xF0) {
            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->cRightAlpha);
            gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
            Interface_DrawItemIconTexture(globalCtx, (void*)((u32)interfaceCtx->icon_itemSegment + 0x3000), 3);
            gDPPipeSync(OVERLAY_DISP++);
            gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                              PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
            Interface_DrawAmmoCount(globalCtx, 3, interfaceCtx->cRightAlpha);
        }

        // A Button
        func_80094A14(globalCtx->state.gfxCtx);
        func_8008A8B8(globalCtx, R_A_BTN_Y, R_A_BTN_Y + 45, R_A_BTN_X, R_A_BTN_X + 45);
        gSPClearGeometryMode(OVERLAY_DISP++, G_CULL_BOTH);
        gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, R_A_BTN_COLOR(0), R_A_BTN_COLOR(1), R_A_BTN_COLOR(2),
                        interfaceCtx->aAlpha);
        Interface_DrawActionButton(globalCtx);
        gDPPipeSync(OVERLAY_DISP++);
        func_8008A8B8(globalCtx, R_A_ICON_Y, R_A_ICON_Y + 45, R_A_ICON_X, R_A_ICON_X + 45);
        gSPSetGeometryMode(OVERLAY_DISP++, G_CULL_BACK);
        gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->aAlpha);
        gDPSetEnvColor(OVERLAY_DISP++, 0, 0, 0, 0);
        Matrix_Translate(0.0f, 0.0f, WREG(46 + gSaveContext.language) / 10.0f, MTXMODE_NEW);
        Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);
        Matrix_RotateX(interfaceCtx->unk_1F4 / 10000.0f, MTXMODE_APPLY);
        gSPMatrix(OVERLAY_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_parameter.c", 3701),
                  G_MTX_MODELVIEW | G_MTX_LOAD);
        gSPVertex(OVERLAY_DISP++, &interfaceCtx->vtx_128[4], 4, 0);

        if ((interfaceCtx->unk_1EC < 2) || (interfaceCtx->unk_1EC == 3)) {
            Interface_DrawActionLabel(globalCtx->state.gfxCtx, (void*)(u32)interfaceCtx->do_actionSegment);
        } else {
            Interface_DrawActionLabel(globalCtx->state.gfxCtx, (void*)((u32)interfaceCtx->do_actionSegment + 0x180));
        }

        gDPPipeSync(OVERLAY_DISP++);

        func_8008A994(interfaceCtx);

        if ((pauseCtx->state == 6) && (pauseCtx->unk_1E4 == 3)) {
            // Inventory Equip Effects
            gSPSegment(OVERLAY_DISP++, 0x08, pauseCtx->unk_128);
            func_80094A14(globalCtx->state.gfxCtx);
            gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
            gSPMatrix(OVERLAY_DISP++, &gMtxClear, G_MTX_MODELVIEW | G_MTX_LOAD);

            pauseCtx->vtx_168[16].v.ob[0] = pauseCtx->vtx_168[18].v.ob[0] = pauseCtx->unk_254 / 10;
            pauseCtx->vtx_168[17].v.ob[0] = pauseCtx->vtx_168[19].v.ob[0] =
                pauseCtx->vtx_168[16].v.ob[0] + WREG(90) / 10;
            pauseCtx->vtx_168[16].v.ob[1] = pauseCtx->vtx_168[17].v.ob[1] = pauseCtx->unk_256 / 10;
            pauseCtx->vtx_168[18].v.ob[1] = pauseCtx->vtx_168[19].v.ob[1] =
                pauseCtx->vtx_168[16].v.ob[1] - WREG(90) / 10;

            if (pauseCtx->unk_24E < 0xBF) {
                // Normal Equip (icon goes from the inventory slot to the C button when equipping it)
                gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, pauseCtx->unk_258);
                gSPVertex(OVERLAY_DISP++, &pauseCtx->vtx_168[16], 4, 0);

                gDPLoadTextureBlock(OVERLAY_DISP++, gItemIcons[pauseCtx->unk_24E], G_IM_FMT_RGBA, G_IM_SIZ_32b, 32, 32,
                                    0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                    G_TX_NOLOD, G_TX_NOLOD);
            } else {
                // Magic Arrow Equip Effect
                phi_s3_2 = pauseCtx->unk_24E - 0xBF;
                gDPSetPrimColor(OVERLAY_DISP++, 0, 0, sMagicArrowEffectsR[phi_s3_2], sMagicArrowEffectsG[phi_s3_2],
                                sMagicArrowEffectsB[phi_s3_2], pauseCtx->unk_258);

                if ((pauseCtx->unk_258 > 0) && (pauseCtx->unk_258 < 0xFF)) {
                    phi_s3_2 = (pauseCtx->unk_258 / 8) / 2;
                    pauseCtx->vtx_168[16].v.ob[0] = pauseCtx->vtx_168[18].v.ob[0] =
                        pauseCtx->vtx_168[16].v.ob[0] - phi_s3_2;
                    pauseCtx->vtx_168[17].v.ob[0] = pauseCtx->vtx_168[19].v.ob[0] =
                        pauseCtx->vtx_168[16].v.ob[0] + phi_s3_2 * 2 + 32;
                    pauseCtx->vtx_168[16].v.ob[1] = pauseCtx->vtx_168[17].v.ob[1] =
                        pauseCtx->vtx_168[16].v.ob[1] + phi_s3_2;
                    pauseCtx->vtx_168[18].v.ob[1] = pauseCtx->vtx_168[19].v.ob[1] =
                        pauseCtx->vtx_168[16].v.ob[1] - phi_s3_2 * 2 - 32;
                }

                gSPVertex(OVERLAY_DISP++, &pauseCtx->vtx_168[16], 4, 0);
                gDPLoadTextureBlock(OVERLAY_DISP++, D_080895C0, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0,
                                    G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                    G_TX_NOLOD, G_TX_NOLOD);
            }

            gSP1Quadrangle(OVERLAY_DISP++, 0, 2, 3, 1, 0);
        }

        func_80094520(globalCtx->state.gfxCtx);

        if ((globalCtx->pauseCtx.state == 0) && (globalCtx->pauseCtx.flag == 0)) {
            if (gSaveContext.minigameState != 1) {
                // Carrots rendering if the action corresponds to riding a horse
                if (interfaceCtx->unk_1EE == 8) {
                    // Load Carrot Icon
                    gDPLoadTextureBlock(OVERLAY_DISP++, &D_02002100, G_IM_FMT_RGBA, G_IM_SIZ_32b, 16, 16, 0,
                                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                        G_TX_NOLOD, G_TX_NOLOD);

                    // Draw 6 carrots
                    phi_s1 = ZREG(14);
                    for (phi_s3 = 1; phi_s3 < 7; phi_s3++) {
                        // Carrot Color (based on availability)
                        if ((interfaceCtx->unk_23A == 0) || (interfaceCtx->unk_23A < phi_s3)) {
                            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 0, 150, 255, interfaceCtx->aAlpha);
                        } else {
                            gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->aAlpha);
                        }

                        gSPTextureRectangle(OVERLAY_DISP++, phi_s1 << 2, ZREG(15) << 2, (phi_s1 + 16) << 2,
                                            (ZREG(15) + 16) << 2, G_TX_RENDERTILE, 0, 0, 1024, 1024);

                        phi_s1 += 16;
                    }
                }
            } else {
                // Score for the Horseback Archery
                gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, interfaceCtx->bAlpha);

                // Target Icon
                gDPLoadTextureBlock(OVERLAY_DISP++, D_02002600, G_IM_FMT_RGBA, G_IM_SIZ_16b, 24, 16, 0,
                                    G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                    G_TX_NOLOD, G_TX_NOLOD);

                gSPTextureRectangle(OVERLAY_DISP++, (WREG(32) + 28) << 2, ZREG(15) << 2, (WREG(32) + 52) << 2,
                                    (ZREG(15) + 16) << 2, G_TX_RENDERTILE, 0, 0, 1024, 1024);

                // Score Counter
                gDPPipeSync(OVERLAY_DISP++);
                gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

                phi_s0 = 0;
                phi_s1 = WREG(32) + 6 * 9;
                for (phi_s3 = 0; phi_s3 < 4; phi_s3++) {
                    if (sHBAScoreDigits[phi_s3] != 0 || (phi_s0 != 0) || (phi_s3 >= 3)) {
                        OVERLAY_DISP =
                            Gfx_TextureI8(OVERLAY_DISP, &D_02003040[sHBAScoreDigits[phi_s3]], 8, 16, phi_s1,
                                          ZREG(15) - 2, sDigitWidth[0], VREG(42), VREG(43) * 2, VREG(43) * 2);
                        phi_s1 += 9;
                        phi_s0++;
                    }
                }

                gDPPipeSync(OVERLAY_DISP++);
                gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
            }
        }

        if ((gSaveContext.timer2State == 5) && (func_8010BDBC(&globalCtx->msgCtx) == 5)) {
            // Trade quest timer reached 0
            gSaveContext.cutsceneIndex = 0;
            globalCtx->sceneLoadFlag = 0x14;
            globalCtx->fadeTransition = 3;
            gSaveContext.timer2State = 0;
            D_8015FFE6 = 40;

            if ((gSaveContext.equips.buttonItems[0] != ITEM_SWORD_KOKIRI) &&
                (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_MASTER) &&
                (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_BGS) &&
                (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_KNIFE)) {
                if (gSaveContext.buttonStatus[0] != BTN_ENABLED) {
                    gSaveContext.equips.buttonItems[0] = gSaveContext.buttonStatus[0];
                } else {
                    gSaveContext.equips.buttonItems[0] = ITEM_NONE;
                }
            }

            // Revert any spoiling trade quest items
            for (phi_s3 = 0; phi_s3 < ARRAY_COUNT(gSpoilingItems); phi_s3++) {
                if (INV_CONTENT(ITEM_TRADE_ADULT) == gSpoilingItems[phi_s3]) {
                    gSaveContext.eventInf[0] &= 0x7F80;
                    osSyncPrintf("EVENT_INF=%x\n", gSaveContext.eventInf[0]);
                    globalCtx->nextEntranceIndex = sSpoilingItemEntrances[phi_s3];
                    INV_CONTENT(gSpoilingItemReverts[phi_s3]) = gSpoilingItemReverts[phi_s3];

                    for (phi_s0 = 1; phi_s0 < 4; phi_s0++) {
                        if (gSaveContext.equips.buttonItems[phi_s0] == gSpoilingItems[phi_s3]) {
                            gSaveContext.equips.buttonItems[phi_s0] = gSpoilingItemReverts[phi_s3];
                            Interface_LoadItemIcon1(globalCtx, phi_s0);
                        }
                    }
                }
            }
        }

        if ((globalCtx->pauseCtx.state == 0) && (globalCtx->pauseCtx.flag == 0) &&
            (globalCtx->gameOverCtx.state == GAMEOVER_INACTIVE) && (msgCtx->msgMode == 0) &&
            !(player->stateFlags2 & 0x01000000) && (globalCtx->sceneLoadFlag == 0) &&
            (globalCtx->transitionMode == 0) && !Gameplay_InCsMode(globalCtx) && (gSaveContext.minigameState != 1) &&
            (globalCtx->shootingGalleryStatus <= 1) &&
            !((globalCtx->sceneNum == SCENE_BOWLING) && Flags_GetSwitch(globalCtx, 0x38))) {
            sp274 = 0;
            switch (gSaveContext.timer1State) {
                case 1:
                    gSaveContext.timer1State = 2;
                    gSaveContext.timer1Value = gSaveContext.health >> 1;
                    D_8015FFE0 = D_8015FFE2 = 20;
                    break;
                case 2:
                    D_8015FFE2--;
                    if (D_8015FFE2 == 0) {
                        gSaveContext.timer1State = 3;
                        D_8015FFE2 = 20;
                    }
                    break;
                case 5:
                case 11:
                    D_8015FFE0 = D_8015FFE2 = 20;
                    if (gSaveContext.timer1State == 5) {
                        gSaveContext.timer1State = 6;
                    } else {
                        gSaveContext.timer1State = 12;
                    }
                    break;
                case 6:
                case 12:
                    D_8015FFE2--;
                    if (D_8015FFE2 == 0) {
                        D_8015FFE2 = 20;
                        if (gSaveContext.timer1State == 6) {
                            gSaveContext.timer1State = 7;
                        } else {
                            gSaveContext.timer1State = 13;
                        }
                    }
                    break;
                case 3:
                case 7:
                    phi_s3 = (gSaveContext.timerX[0] - 26) / D_8015FFE2;
                    gSaveContext.timerX[0] -= phi_s3;

                    if (gSaveContext.healthCapacity > 0xA0) {
                        phi_s3 = (gSaveContext.timerY[0] - 54) / D_8015FFE2;
                    } else {
                        phi_s3 = (gSaveContext.timerY[0] - 46) / D_8015FFE2;
                    }
                    gSaveContext.timerY[0] -= phi_s3;

                    D_8015FFE2--;
                    if (D_8015FFE2 == 0) {
                        gSaveContext.timerX[0] = 26;
                        D_8015FFE2 = 20;

                        if (gSaveContext.healthCapacity > 0xA0) {
                            gSaveContext.timerY[0] = 54;
                        } else {
                            gSaveContext.timerY[0] = 46;
                        }

                        if (gSaveContext.timer1State == 3) {
                            gSaveContext.timer1State = 4;
                        } else {
                            gSaveContext.timer1State = 8;
                        }
                    }
                case 4:
                case 8:
                    if ((gSaveContext.timer1State == 4) || (gSaveContext.timer1State == 8)) {
                        if (gSaveContext.healthCapacity > 0xA0) {
                            gSaveContext.timerY[0] = 54;
                        } else {
                            gSaveContext.timerY[0] = 46;
                        }
                    }

                    if ((gSaveContext.timer1State >= 3) && (msgCtx->unk_E300 == 0)) {
                        D_8015FFE0--;
                        if (D_8015FFE0 == 0) {
                            if (gSaveContext.timer1Value != 0) {
                                gSaveContext.timer1Value--;
                            }

                            D_8015FFE0 = 20;

                            if (gSaveContext.timer1Value == 0) {
                                gSaveContext.timer1State = 10;
                                if (D_80125A5C != 0) {
                                    gSaveContext.health = 0;
                                    globalCtx->damagePlayer(globalCtx, -(gSaveContext.health + 2));
                                }
                                D_80125A5C = 0;
                            } else if (gSaveContext.timer1Value > 60) {
                                if (sTimerDigits[4] == 1) {
                                    Audio_PlaySoundGeneral(NA_SE_SY_MESSAGE_WOMAN, &D_801333D4, 4, &D_801333E0,
                                                           &D_801333E0, &D_801333E8);
                                }
                            } else if (gSaveContext.timer1Value >= 11) {
                                if (sTimerDigits[4] & 1) {
                                    Audio_PlaySoundGeneral(NA_SE_SY_WARNING_COUNT_N, &D_801333D4, 4, &D_801333E0,
                                                           &D_801333E0, &D_801333E8);
                                }
                            } else {
                                Audio_PlaySoundGeneral(NA_SE_SY_WARNING_COUNT_E, &D_801333D4, 4, &D_801333E0,
                                                       &D_801333E0, &D_801333E8);
                            }
                        }
                    }
                    break;
                case 13:
                    phi_s3 = (gSaveContext.timerX[0] - 26) / D_8015FFE2;
                    gSaveContext.timerX[0] -= phi_s3;

                    if (gSaveContext.healthCapacity > 0xA0) {
                        phi_s3 = (gSaveContext.timerY[0] - 54) / D_8015FFE2;
                    } else {
                        phi_s3 = (gSaveContext.timerY[0] - 46) / D_8015FFE2;
                    }
                    gSaveContext.timerY[0] -= phi_s3;

                    D_8015FFE2--;
                    if (D_8015FFE2 == 0) {
                        gSaveContext.timerX[0] = 26;
                        D_8015FFE2 = 20;

                        if (gSaveContext.healthCapacity > 0xA0) {
                            gSaveContext.timerY[0] = 54;
                        } else {
                            gSaveContext.timerY[0] = 46;
                        }

                        gSaveContext.timer1State = 14;
                    }
                case 14:
                    if (gSaveContext.timer1State == 14) {
                        if (gSaveContext.healthCapacity > 0xA0) {
                            gSaveContext.timerY[0] = 54;
                        } else {
                            gSaveContext.timerY[0] = 46;
                        }
                    }

                    if (gSaveContext.timer1State >= 3) {
                        D_8015FFE0--;
                        if (D_8015FFE0 == 0) {
                            gSaveContext.timer1Value++;
                            D_8015FFE0 = 20;

                            if (gSaveContext.timer1Value == 3599) {
                                gSaveContext.timer1State = 15;
                                D_8015FFE2 = 40;
                            } else {
                                Audio_PlaySoundGeneral(NA_SE_SY_WARNING_COUNT_N, &D_801333D4, 4, &D_801333E0,
                                                       &D_801333E0, &D_801333E8);
                            }
                        }
                    }
                    break;
                case 10:
                    if (gSaveContext.timer2State != 0) {
                        gSaveContext.timerX[1] = 140;
                        gSaveContext.timerY[1] = 80;
                        D_8015FFE4 = D_8015FFE6 = 20;

                        if (gSaveContext.timer2State < 7) {
                            gSaveContext.timer2State = 2;
                        } else {
                            gSaveContext.timer2State = 8;
                        }

                        gSaveContext.timer1State = 0;
                    } else {
                        gSaveContext.timer1State = 0;
                    }
                    break;
                case 15:
                    break;
                default:
                    sp274 = 1;
                    switch (gSaveContext.timer2State) {
                        case 1:
                        case 7:
                            gSaveContext.timerX[1] = 140;
                            gSaveContext.timerY[1] = 80;
                            D_8015FFE4 = D_8015FFE6 = 20;
                            if (gSaveContext.timer2State == 1) {
                                gSaveContext.timer2State = 2;
                            } else {
                                gSaveContext.timer2State = 8;
                            }
                            break;
                        case 2:
                        case 8:
                            D_8015FFE6--;
                            if (D_8015FFE6 == 0) {
                                D_8015FFE6 = 20;
                                if (gSaveContext.timer2State == 2) {
                                    gSaveContext.timer2State = 3;
                                } else {
                                    gSaveContext.timer2State = 9;
                                }
                            }
                            break;
                        case 3:
                        case 9:
                            osSyncPrintf("event_xp[1]=%d,  event_yp[1]=%d  TOTAL_EVENT_TM=%d\n", gSaveContext.timerX[1],
                                         gSaveContext.timerY[1], gSaveContext.timer2Value);

                            phi_s3 = (gSaveContext.timerX[1] - 26) / D_8015FFE2;
                            gSaveContext.timerX[1] -= phi_s3;

                            if (gSaveContext.healthCapacity > 0xA0) {
                                phi_s3 = (gSaveContext.timerY[1] - 54) / D_8015FFE6;
                            } else {
                                phi_s3 = (gSaveContext.timerY[1] - 46) / D_8015FFE6;
                            }
                            gSaveContext.timerY[1] -= phi_s3;

                            D_8015FFE6--;
                            if (D_8015FFE6 == 0) {
                                gSaveContext.timerX[1] = 26;
                                D_8015FFE6 = 20;

                                if (gSaveContext.healthCapacity > 0xA0) {
                                    gSaveContext.timerY[1] = 54;
                                } else {
                                    gSaveContext.timerY[1] = 46;
                                }

                                if (gSaveContext.timer2State == 3) {
                                    gSaveContext.timer2State = 4;
                                } else {
                                    gSaveContext.timer2State = 10;
                                }
                            }
                        case 4:
                        case 10:
                            if ((gSaveContext.timer2State == 4) || (gSaveContext.timer2State == 10)) {
                                if (gSaveContext.healthCapacity > 0xA0) {
                                    gSaveContext.timerY[1] = 54;
                                } else {
                                    gSaveContext.timerY[1] = 46;
                                }
                            }

                            if (gSaveContext.timer2State >= 3) {
                                D_8015FFE4--;
                                if (D_8015FFE4 == 0) {
                                    D_8015FFE4 = 20;
                                    if (gSaveContext.timer2State == 4) {
                                        gSaveContext.timer2Value--;
                                        osSyncPrintf("TOTAL_EVENT_TM=%d\n", gSaveContext.timer2Value);

                                        if (gSaveContext.timer2Value <= 0) {
                                            if (!Flags_GetSwitch(globalCtx, 0x37) ||
                                                ((globalCtx->sceneNum != SCENE_GANON_DEMO) &&
                                                 (globalCtx->sceneNum != SCENE_GANON_FINAL) &&
                                                 (globalCtx->sceneNum != SCENE_GANON_SONOGO) &&
                                                 (globalCtx->sceneNum != SCENE_GANONTIKA_SONOGO))) {
                                                gSaveContext.timer2State = 5;
                                                gSaveContext.cutsceneIndex = 0;
                                                D_8015FFE6 = 40;
                                                func_8010B680(globalCtx, 0x71B0, NULL);
                                                func_8002DF54(globalCtx, 0, 8);
                                            } else {
                                                gSaveContext.timer2State = 6;
                                                D_8015FFE6 = 40;
                                            }
                                        } else {
                                            if (gSaveContext.timer2Value > 60) {
                                                if (sTimerDigits[4] == 1) {
                                                    Audio_PlaySoundGeneral(NA_SE_SY_MESSAGE_WOMAN, &D_801333D4, 4,
                                                                           &D_801333E0, &D_801333E0, &D_801333E8);
                                                }
                                            } else if (gSaveContext.timer2Value > 10) {
                                                if (sTimerDigits[4] & 1) {
                                                    Audio_PlaySoundGeneral(NA_SE_SY_WARNING_COUNT_N, &D_801333D4, 4,
                                                                           &D_801333E0, &D_801333E0, &D_801333E8);
                                                }
                                            } else {
                                                Audio_PlaySoundGeneral(NA_SE_SY_WARNING_COUNT_E, &D_801333D4, 4,
                                                                       &D_801333E0, &D_801333E0, &D_801333E8);
                                            }
                                        }
                                    } else {
                                        gSaveContext.timer2Value++;
                                        if (gSaveContext.eventInf[1] & 1) {
                                            if (gSaveContext.timer2Value == 240) {
                                                func_8010B680(globalCtx, 0x6083, NULL);
                                                gSaveContext.timer2State = 0;
                                                gSaveContext.eventInf[1] &= ~1;
                                            }
                                        }
                                    }

                                    if ((gSaveContext.timer2Value % 60) == 0) {
                                        Audio_PlaySoundGeneral(NA_SE_SY_WARNING_COUNT_N, &D_801333D4, 4, &D_801333E0,
                                                               &D_801333E0, &D_801333E8);
                                    }
                                }
                            }
                            break;
                        case 6:
                            D_8015FFE6--;
                            if (D_8015FFE6 == 0) {
                                gSaveContext.timer2State = 0;
                            }
                            break;
                    }
            }

            if (((gSaveContext.timer1State != 0) && (gSaveContext.timer1State != 10)) ||
                (gSaveContext.timer2State != 0)) {
                sTimerDigits[0] = sTimerDigits[1] = sTimerDigits[3] = 0;
                sTimerDigits[2] = 10; // digit 10 is used as ':' (colon)

                if (gSaveContext.timer1State != 0) {
                    sTimerDigits[4] = gSaveContext.timer1Value;
                } else {
                    sTimerDigits[4] = gSaveContext.timer2Value;
                }

                while (sTimerDigits[4] >= 60) {
                    sTimerDigits[1]++;
                    if (sTimerDigits[1] >= 10) {
                        sTimerDigits[1] -= 10;
                        sTimerDigits[0]++;
                    }
                    sTimerDigits[4] -= 60;
                }

                while (sTimerDigits[4] >= 10) {
                    sTimerDigits[4] -= 10;
                    sTimerDigits[3]++;
                }

                // Clock Icon
                gDPPipeSync(OVERLAY_DISP++);
                gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, 255);
                gDPSetEnvColor(OVERLAY_DISP++, 0, 0, 0, 0);
                OVERLAY_DISP = Gfx_TextureIA8(OVERLAY_DISP, D_02002000, 16, 16, gSaveContext.timerX[sp274],
                                              gSaveContext.timerY[sp274] + 2, 16, 16, 1024, 1024);

                // Timer Counter
                gDPPipeSync(OVERLAY_DISP++);
                gDPSetCombineMode(OVERLAY_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

                if (gSaveContext.timer1State != 0) {
                    if ((gSaveContext.timer1Value < 10) && (gSaveContext.timer1State < 11)) {
                        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 50, 0, 255);
                    } else {
                        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 255, 255);
                    }
                } else {
                    if ((gSaveContext.timer2Value < 10) && (gSaveContext.timer2State < 6)) {
                        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 50, 0, 255);
                    } else {
                        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 255, 255, 0, 255);
                    }
                }

                for (phi_s3 = 0; phi_s3 < 5; phi_s3++) {
                    OVERLAY_DISP = Gfx_TextureI8(OVERLAY_DISP, &D_02003040[sTimerDigits[phi_s3]], 8, 16,
                                                 gSaveContext.timerX[sp274] + sTimerDigitLeftPos[phi_s3],
                                                 gSaveContext.timerY[sp274], sDigitWidth[phi_s3], VREG(42),
                                                 VREG(43) * 2, VREG(43) * 2);
                }
            }
        }
    }

    if (pauseCtx->flag == 3) {
        FlagSet_Update(globalCtx);
    }

    if (interfaceCtx->unk_244 != 0) {
        gDPPipeSync(OVERLAY_DISP++);
        gSPDisplayList(OVERLAY_DISP++, sSetupDL_80125A60);
        gDPSetPrimColor(OVERLAY_DISP++, 0, 0, 0, 0, 0, interfaceCtx->unk_244);
        gDPFillRectangle(OVERLAY_DISP++, 0, 0, gScreenWidth - 1, gScreenHeight - 1);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_parameter.c", 4269);
}
#else
s16 D_8015FFE0;
s16 D_8015FFE2;
s16 D_8015FFE4;
s16 D_8015FFE6;
s16 sTimerDigits[5];
#pragma GLOBAL_ASM("asm/non_matchings/code/z_parameter/Interface_Draw.s")
#endif

void Interface_Update(GlobalContext* globalCtx) {
    static u8 D_80125B60 = 0;
    static s16 D_80125B64 = 0;
    MessageContext* msgCtx = &globalCtx->msgCtx;
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    Player* player = PLAYER;
    s16 alpha;
    s16 alpha1;
    u16 action;
    Input* input = &globalCtx->state.input[2];

    if (CHECK_BTN_ALL(input->press.button, BTN_DLEFT)) {
        gSaveContext.language = 0;
        osSyncPrintf("J_N=%x J_N=%x\n", gSaveContext.language, &gSaveContext.language);
    } else if (CHECK_BTN_ALL(input->press.button, BTN_DUP)) {
        gSaveContext.language = 1;
        osSyncPrintf("J_N=%x J_N=%x\n", gSaveContext.language, &gSaveContext.language);
    } else if (CHECK_BTN_ALL(input->press.button, BTN_DRIGHT)) {
        gSaveContext.language = 2;
        osSyncPrintf("J_N=%x J_N=%x\n", gSaveContext.language, &gSaveContext.language);
    }

    if ((globalCtx->pauseCtx.state == 0) && (globalCtx->pauseCtx.flag == 0)) {
        if ((gSaveContext.minigameState == 1) || (gSaveContext.sceneSetupIndex < 4) ||
            ((globalCtx->sceneNum == SCENE_SPOT20) && (gSaveContext.sceneSetupIndex == 4))) {
            if ((msgCtx->msgMode == 0) || ((msgCtx->msgMode != 0) && (globalCtx->sceneNum == SCENE_BOWLING))) {
                if (globalCtx->gameOverCtx.state == GAMEOVER_INACTIVE) {
                    func_80083108(globalCtx);
                }
            }
        }
    }

    switch (gSaveContext.unk_13E8) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
            alpha = 255 - (gSaveContext.unk_13EC << 5);
            if (alpha < 0) {
                alpha = 0;
            }

            func_80082850(globalCtx, alpha);
            gSaveContext.unk_13EC++;

            if (alpha == 0) {
                gSaveContext.unk_13E8 = 0;
            }
            break;
        case 50:
            alpha = 255 - (gSaveContext.unk_13EC << 5);
            if (alpha < 0) {
                alpha = 0;
            }

            alpha1 = 0xFF - alpha;
            if (alpha1 >= 0xFF) {
                alpha1 = 0xFF;
            }

            osSyncPrintf("case 50 : alpha=%d  alpha1=%d\n", alpha, alpha1);
            func_80082644(globalCtx, alpha1);

            if (interfaceCtx->healthAlpha != 255) {
                interfaceCtx->healthAlpha = alpha1;
            }

            if (interfaceCtx->magicAlpha != 255) {
                interfaceCtx->magicAlpha = alpha1;
            }

            switch (globalCtx->sceneNum) {
                case SCENE_SPOT00:
                case SCENE_SPOT01:
                case SCENE_SPOT02:
                case SCENE_SPOT03:
                case SCENE_SPOT04:
                case SCENE_SPOT05:
                case SCENE_SPOT06:
                case SCENE_SPOT07:
                case SCENE_SPOT08:
                case SCENE_SPOT09:
                case SCENE_SPOT10:
                case SCENE_SPOT11:
                case SCENE_SPOT12:
                case SCENE_SPOT13:
                case SCENE_SPOT15:
                case SCENE_SPOT16:
                case SCENE_SPOT17:
                case SCENE_SPOT18:
                case SCENE_SPOT20:
                case SCENE_GANON_TOU:
                    if (interfaceCtx->minimapAlpha < 170) {
                        interfaceCtx->minimapAlpha = alpha1;
                    } else {
                        interfaceCtx->minimapAlpha = 170;
                    }
                    break;
                default:
                    if (interfaceCtx->minimapAlpha != 255) {
                        interfaceCtx->minimapAlpha = alpha1;
                    }
                    break;
            }

            gSaveContext.unk_13EC++;
            if (alpha1 == 0xFF) {
                gSaveContext.unk_13E8 = 0;
            }

            break;
        case 52:
            gSaveContext.unk_13E8 = 1;
            func_80082850(globalCtx, 0);
            gSaveContext.unk_13E8 = 0;
        default:
            break;
    }

    Map_Update(globalCtx);

    if (gSaveContext.healthAccumulator != 0) {
        gSaveContext.healthAccumulator -= 4;
        gSaveContext.health += 4;

        if ((gSaveContext.health & 0xF) < 4) {
            Audio_PlaySoundGeneral(NA_SE_SY_HP_RECOVER, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }

        osSyncPrintf("now_life=%d  max_life=%d\n", gSaveContext.health, gSaveContext.healthCapacity);

        if (gSaveContext.health >= gSaveContext.healthCapacity) {
            gSaveContext.health = gSaveContext.healthCapacity;
            osSyncPrintf("S_Private.now_life=%d  S_Private.max_life=%d\n", gSaveContext.health,
                         gSaveContext.healthCapacity);
            gSaveContext.healthAccumulator = 0;
        }
    }

    HealthMeter_HandleCriticalAlarm(globalCtx);
    D_80125A58 = func_8008F2F8(globalCtx);

    if (D_80125A58 == 1) {
        if (CUR_EQUIP_VALUE(EQUIP_TUNIC) == 2) {
            D_80125A58 = 0;
        }
    } else if ((func_8008F2F8(globalCtx) >= 2) && (func_8008F2F8(globalCtx) < 5)) {
        if (CUR_EQUIP_VALUE(EQUIP_TUNIC) == 3) {
            D_80125A58 = 0;
        }
    }

    HealthMeter_Update(globalCtx);

    if ((gSaveContext.timer1State >= 3) && (globalCtx->pauseCtx.state == 0) && (globalCtx->pauseCtx.flag == 0) &&
        (msgCtx->msgMode == 0) && !(player->stateFlags2 & 0x01000000) && (globalCtx->sceneLoadFlag == 0) &&
        (globalCtx->transitionMode == 0) && !Gameplay_InCsMode(globalCtx)) {}

    if (gSaveContext.rupeeAccumulator != 0) {
        if (gSaveContext.rupeeAccumulator > 0) {
            if (gSaveContext.rupees < CUR_CAPACITY(UPG_WALLET)) {
                gSaveContext.rupeeAccumulator--;
                gSaveContext.rupees++;
                Audio_PlaySoundGeneral(NA_SE_SY_RUPY_COUNT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            } else {
                // Translates to: "Rupee Amount MAX = %d"
                osSyncPrintf("ルピー数ＭＡＸ = %d\n", CUR_CAPACITY(UPG_WALLET));
                gSaveContext.rupees = CUR_CAPACITY(UPG_WALLET);
                gSaveContext.rupeeAccumulator = 0;
            }
        } else if (gSaveContext.rupees != 0) {
            if (gSaveContext.rupeeAccumulator <= -50) {
                gSaveContext.rupeeAccumulator += 10;
                gSaveContext.rupees -= 10;

                if (gSaveContext.rupees < 0) {
                    gSaveContext.rupees = 0;
                }

                Audio_PlaySoundGeneral(NA_SE_SY_RUPY_COUNT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            } else {
                gSaveContext.rupeeAccumulator++;
                gSaveContext.rupees--;
                Audio_PlaySoundGeneral(NA_SE_SY_RUPY_COUNT, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
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
                if ((action == 0x1D) || (action == 0x1E)) {
                    action = 0xA;
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
                if ((action == 0x1D) || (action == 0x1E)) {
                    action = 0xA;
                }
                Interface_LoadActionLabel(interfaceCtx, action, 0);
            }
            break;
    }

    WREG(7) = interfaceCtx->unk_1F4;

    if ((globalCtx->pauseCtx.state == 0) && (globalCtx->pauseCtx.flag == 0) && (msgCtx->msgMode == 0) &&
        (globalCtx->sceneLoadFlag == 0) && (globalCtx->gameOverCtx.state == GAMEOVER_INACTIVE) &&
        (globalCtx->transitionMode == 0) && ((globalCtx->csCtx.state == 0) || !Player_InCsMode(globalCtx))) {
        if ((gSaveContext.magicAcquired != 0) && (gSaveContext.magicLevel == 0)) {
            gSaveContext.magicLevel = gSaveContext.doubleMagic + 1;
            gSaveContext.unk_13F0 = 8;
            osSyncPrintf(VT_FGCOL(YELLOW));
            // Translates to: "Magic Start!!!!!!!!!"
            osSyncPrintf("魔法スター─────ト！！！！！！！！！\n");
            osSyncPrintf("MAGIC_MAX=%d\n", gSaveContext.magicLevel);
            osSyncPrintf("MAGIC_NOW=%d\n", gSaveContext.magic);
            osSyncPrintf("Z_MAGIC_NOW_NOW=%d\n", gSaveContext.unk_13F6);
            osSyncPrintf("Z_MAGIC_NOW_MAX=%d\n", gSaveContext.unk_13F4);
            osSyncPrintf(VT_RST);
        }

        Interface_UpdateMagicBar(globalCtx);
    }

    if (gSaveContext.timer1State == 0) {
        if (((D_80125A58 == 1) || (D_80125A58 == 2) || (D_80125A58 == 4)) && ((gSaveContext.health >> 1) != 0)) {
            gSaveContext.timer1State = 1;
            gSaveContext.timerX[0] = 140;
            gSaveContext.timerY[0] = 80;
            D_80125A5C = 1;
        }
    } else {
        if (((D_80125A58 == 0) || (D_80125A58 == 3)) && (gSaveContext.timer1State < 5)) {
            gSaveContext.timer1State = 0;
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

    if (gSaveContext.unk_1422 != 0) {
        if ((msgCtx->unk_E3F0 != 0x31) && (gSaveContext.unk_1422 == 1)) {
            globalCtx->msgCtx.unk_E3EE = 4;
        }

        if (globalCtx->envCtx.unk_02 != 0) {
            if (gSaveContext.unk_1422 != 2) {
                D_80125B60 = 0;
                if ((gSaveContext.dayTime >= 0x4555) && (gSaveContext.dayTime <= 0xC001)) {
                    D_80125B60 = 1;
                }

                gSaveContext.unk_1422 = 2;
                D_80125B64 = D_8011FB40;
                D_8011FB40 = 400;
            } else if (D_80125B60 == 0) {
                if ((gSaveContext.dayTime >= 0x4555) && (gSaveContext.dayTime <= 0xC001)) {
                    gSaveContext.unk_1422 = 0;
                    D_8011FB40 = D_80125B64;
                    globalCtx->msgCtx.unk_E3EE = 4;
                }
            } else if (gSaveContext.dayTime > 0xC001) {
                gSaveContext.unk_1422 = 0;
                D_8011FB40 = D_80125B64;
                globalCtx->msgCtx.unk_E3EE = 4;
            }
        } else if ((globalCtx->roomCtx.curRoom.unk_03 != 1) && (interfaceCtx->restrictions.sunsSong != 3)) {
            if ((gSaveContext.dayTime >= 0x4555) && (gSaveContext.dayTime < 0xC001)) {
                gSaveContext.nextDayTime = 0;
                globalCtx->fadeTransition = 4;
                gSaveContext.nextTransition = 2;
                globalCtx->unk_11DE9 = 1;
            } else {
                gSaveContext.nextDayTime = 0x8001;
                globalCtx->fadeTransition = 5;
                gSaveContext.nextTransition = 3;
                globalCtx->unk_11DE9 = 1;
            }

            if (globalCtx->sceneNum == SCENE_SPOT13) {
                globalCtx->fadeTransition = 14;
                gSaveContext.nextTransition = 14;
            }

            gSaveContext.respawnFlag = -2;
            globalCtx->nextEntranceIndex = gSaveContext.entranceIndex;
            globalCtx->sceneLoadFlag = 0x14;
            gSaveContext.unk_1422 = 0;
            func_800F6964(30);
            gSaveContext.seqIndex = 0xFF;
            gSaveContext.nightSeqIndex = 0xFF;
        } else {
            gSaveContext.unk_1422 = 3;
        }
    }
}
