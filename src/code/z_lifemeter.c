#include "global.h"
#include "textures/parameter_static/parameter_static.h"

/*
 * These are the colors for the hearts in the interface. The prim color is the red color of the heart
 * for the base hearts, while the prim color for the double defense hearts is the white outline. The
 * env color for the base hearts is the purple-ish outline, while the env color for the double defense
 * hearts is the red color of the hearts.
 */

#define HEARTS_PRIM_R 255
#define HEARTS_PRIM_G 70
#define HEARTS_PRIM_B 50

#define HEARTS_ENV_R 50
#define HEARTS_ENV_G 40
#define HEARTS_ENV_B 60

#define HEARTS_DD_PRIM_R 255
#define HEARTS_DD_PRIM_G 255
#define HEARTS_DD_PRIM_B 255

#define HEARTS_DD_ENV_R 200
#define HEARTS_DD_ENV_G 0
#define HEARTS_DD_ENV_B 0

/*
 * The burn and drown colors listed here are unused. Prerelease footage of the game confirms that at one
 * point in development the orange color was to be used while taking damage from hot environments.
 * Based on this, we can assume that the blue heart color was to be used while drowning.
 * In the final game these environments only have a timer and do not damage you continuously.
 */

#define HEARTS_BURN_PRIM_R 255
#define HEARTS_BURN_PRIM_G 190
#define HEARTS_BURN_PRIM_B 0

#define HEARTS_BURN_ENV_R 255
#define HEARTS_BURN_ENV_G 0
#define HEARTS_BURN_ENV_B 0

#define HEARTS_DROWN_PRIM_R 100
#define HEARTS_DROWN_PRIM_G 100
#define HEARTS_DROWN_PRIM_B 255

#define HEARTS_DROWN_ENV_R 0
#define HEARTS_DROWN_ENV_G 0
#define HEARTS_DROWN_ENV_B 255

// Current colors for the double defense hearts
s16 sHeartsDDPrim[3];
s16 sHeartsDDEnv[3];
s16 sBeatingHeartsDDPrim[2][3];
s16 sBeatingHeartsDDEnv[2][3];

void HealthMeter_Init(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    interfaceCtx->unk_228 = 0x140;
    interfaceCtx->unk_226 = gSaveContext.health;
    interfaceCtx->unk_22A = interfaceCtx->unk_1FE = 0;
    interfaceCtx->unk_22C = interfaceCtx->unk_200 = 0;

    interfaceCtx->heartsPrimR[0] = HEARTS_PRIM_R;
    interfaceCtx->heartsPrimG[0] = HEARTS_PRIM_G;
    interfaceCtx->heartsPrimB[0] = HEARTS_PRIM_B;

    interfaceCtx->heartsEnvR[0] = HEARTS_ENV_R;
    interfaceCtx->heartsEnvG[0] = HEARTS_ENV_G;
    interfaceCtx->heartsEnvB[0] = HEARTS_ENV_B;

    interfaceCtx->heartsPrimR[1] = HEARTS_PRIM_R;
    interfaceCtx->heartsPrimG[1] = HEARTS_PRIM_G;
    interfaceCtx->heartsPrimB[1] = HEARTS_PRIM_B;

    interfaceCtx->heartsEnvR[1] = HEARTS_ENV_R;
    interfaceCtx->heartsEnvG[1] = HEARTS_ENV_G;
    interfaceCtx->heartsEnvB[1] = HEARTS_ENV_B;

    sBeatingHeartsDDPrim[0][0] = sBeatingHeartsDDPrim[1][0] = HEARTS_DD_PRIM_R;
    sBeatingHeartsDDPrim[0][1] = sBeatingHeartsDDPrim[1][1] = HEARTS_DD_PRIM_G;
    sBeatingHeartsDDPrim[0][2] = sBeatingHeartsDDPrim[1][2] = HEARTS_DD_PRIM_B;

    sBeatingHeartsDDEnv[0][0] = sBeatingHeartsDDEnv[1][0] = HEARTS_DD_ENV_R;
    sBeatingHeartsDDEnv[0][1] = sBeatingHeartsDDEnv[1][1] = HEARTS_DD_ENV_G;
    sBeatingHeartsDDEnv[0][2] = sBeatingHeartsDDEnv[1][2] = HEARTS_DD_ENV_B;
}

void HealthMeter_Update(GlobalContext* globalCtx) {
    static s16 sHeartsPrimColors[3][3] = {
        { HEARTS_PRIM_R, HEARTS_PRIM_G, HEARTS_PRIM_B },
        { HEARTS_BURN_PRIM_R, HEARTS_BURN_PRIM_G, HEARTS_BURN_PRIM_B },    // unused
        { HEARTS_DROWN_PRIM_R, HEARTS_DROWN_PRIM_G, HEARTS_DROWN_PRIM_B }, // unused
    };
    static s16 sHeartsEnvColors[3][3] = {
        { HEARTS_ENV_R, HEARTS_ENV_G, HEARTS_ENV_B },
        { HEARTS_BURN_ENV_R, HEARTS_BURN_ENV_G },                       // unused
        { HEARTS_DROWN_ENV_R, HEARTS_DROWN_ENV_G, HEARTS_DROWN_ENV_B }, // unused
    };
    static s16 sHeartsPrimFactors[3][3] = {
        { 0, 0, 0 },
        { 0, 120, -50 },   // unused
        { -155, 30, 205 }, // unused
    };
    static s16 sHeartsEnvFactors[3][3] = {
        { 0, 0, 0 },
        { 205, -40, -60 }, // unused
        { -50, -40, 195 }, // unused
    };
    static s16 sHeartsDDPrimColors[3][3] = {
        { HEARTS_DD_PRIM_R, HEARTS_DD_PRIM_G, HEARTS_DD_PRIM_B },
        { HEARTS_BURN_PRIM_R, HEARTS_BURN_PRIM_G, HEARTS_BURN_PRIM_B },    // unused
        { HEARTS_DROWN_PRIM_R, HEARTS_DROWN_PRIM_G, HEARTS_DROWN_PRIM_B }, // unused
    };
    static s16 sHeartsDDEnvColors[3][3] = {
        { HEARTS_DD_ENV_R, HEARTS_DD_ENV_G, HEARTS_DD_ENV_B },
        { HEARTS_BURN_ENV_R, HEARTS_BURN_ENV_G, HEARTS_BURN_ENV_B },    // unused
        { HEARTS_DROWN_ENV_R, HEARTS_DROWN_ENV_G, HEARTS_DROWN_ENV_B }, // unused
    };
    static s16 sHeartsDDPrimFactors[3][3] = {
        { 0, 0, 0 },
        { 0, -65, -255 },  // unused
        { -155, -155, 0 }, // unused
    };
    static s16 sHeartsDDEnvFactors[3][3] = {
        { 0, 0, 0 },
        { 55, 0, 0 },     // unused
        { -200, 0, 255 }, // unused
    };
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    f32 factor = interfaceCtx->unk_1FE * 0.1f;
    f32 ddFactor;
    s32 type = 0;
    s32 ddType;
    s16 rFactor;
    s16 gFactor;
    s16 bFactor;

    if (interfaceCtx) {}
    if (interfaceCtx->unk_200 != 0) {
        interfaceCtx->unk_1FE--;
        if (interfaceCtx->unk_1FE <= 0) {
            interfaceCtx->unk_1FE = 0;
            interfaceCtx->unk_200 = 0;
        }
    } else {
        interfaceCtx->unk_1FE++;
        if (interfaceCtx->unk_1FE >= 10) {
            interfaceCtx->unk_1FE = 10;
            interfaceCtx->unk_200 = 1;
        }
    }

    ddFactor = factor;

    interfaceCtx->heartsPrimR[0] = HEARTS_PRIM_R;
    interfaceCtx->heartsPrimG[0] = HEARTS_PRIM_G;
    interfaceCtx->heartsPrimB[0] = HEARTS_PRIM_B;

    interfaceCtx->heartsEnvR[0] = HEARTS_ENV_R;
    interfaceCtx->heartsEnvG[0] = HEARTS_ENV_G;
    interfaceCtx->heartsEnvB[0] = HEARTS_ENV_B;

    interfaceCtx->heartsPrimR[1] = sHeartsPrimColors[type][0];
    interfaceCtx->heartsPrimG[1] = sHeartsPrimColors[type][1];
    interfaceCtx->heartsPrimB[1] = sHeartsPrimColors[type][2];

    interfaceCtx->heartsEnvR[1] = sHeartsEnvColors[type][0];
    interfaceCtx->heartsEnvG[1] = sHeartsEnvColors[type][1];
    interfaceCtx->heartsEnvB[1] = sHeartsEnvColors[type][2];

    rFactor = sHeartsPrimFactors[0][0] * factor;
    gFactor = sHeartsPrimFactors[0][1] * factor;
    bFactor = sHeartsPrimFactors[0][2] * factor;

    interfaceCtx->beatingHeartPrim[0] = (u8)(rFactor + HEARTS_PRIM_R) & 0xFF;
    interfaceCtx->beatingHeartPrim[1] = (u8)(gFactor + HEARTS_PRIM_G) & 0xFF;
    interfaceCtx->beatingHeartPrim[2] = (u8)(bFactor + HEARTS_PRIM_B) & 0xFF;

    rFactor = sHeartsEnvFactors[0][0] * factor;
    gFactor = sHeartsEnvFactors[0][1] * factor;
    bFactor = sHeartsEnvFactors[0][2] * factor;

    if (1) {}
    ddType = type;

    interfaceCtx->beatingHeartEnv[0] = (u8)(rFactor + HEARTS_ENV_R) & 0xFF;
    interfaceCtx->beatingHeartEnv[1] = (u8)(gFactor + HEARTS_ENV_G) & 0xFF;
    interfaceCtx->beatingHeartEnv[2] = (u8)(bFactor + HEARTS_ENV_B) & 0xFF;

    sBeatingHeartsDDPrim[0][0] = HEARTS_DD_PRIM_R;
    sBeatingHeartsDDPrim[0][1] = HEARTS_DD_PRIM_G;
    sBeatingHeartsDDPrim[0][2] = HEARTS_DD_PRIM_B;

    sBeatingHeartsDDEnv[0][0] = HEARTS_DD_ENV_R;
    sBeatingHeartsDDEnv[0][1] = HEARTS_DD_ENV_G;
    sBeatingHeartsDDEnv[0][2] = HEARTS_DD_ENV_B;

    sBeatingHeartsDDPrim[1][0] = sHeartsDDPrimColors[ddType][0];
    sBeatingHeartsDDPrim[1][1] = sHeartsDDPrimColors[ddType][1];
    sBeatingHeartsDDPrim[1][2] = sHeartsDDPrimColors[ddType][2];

    sBeatingHeartsDDEnv[1][0] = sHeartsDDEnvColors[ddType][0];
    sBeatingHeartsDDEnv[1][1] = sHeartsDDEnvColors[ddType][1];
    sBeatingHeartsDDEnv[1][2] = sHeartsDDEnvColors[ddType][2];

    rFactor = sHeartsDDPrimFactors[ddType][0] * ddFactor;
    gFactor = sHeartsDDPrimFactors[ddType][1] * ddFactor;
    bFactor = sHeartsDDPrimFactors[ddType][2] * ddFactor;

    sHeartsDDPrim[0] = (u8)(rFactor + HEARTS_DD_PRIM_R) & 0xFF;
    sHeartsDDPrim[1] = (u8)(gFactor + HEARTS_DD_PRIM_G) & 0xFF;
    sHeartsDDPrim[2] = (u8)(bFactor + HEARTS_DD_PRIM_B) & 0xFF;

    rFactor = sHeartsDDEnvFactors[ddType][0] * ddFactor;
    gFactor = sHeartsDDEnvFactors[ddType][1] * ddFactor;
    bFactor = sHeartsDDEnvFactors[ddType][2] * ddFactor;

    sHeartsDDEnv[0] = (u8)(rFactor + HEARTS_DD_ENV_R) & 0xFF;
    sHeartsDDEnv[1] = (u8)(gFactor + HEARTS_DD_ENV_G) & 0xFF;
    sHeartsDDEnv[2] = (u8)(bFactor + HEARTS_DD_ENV_B) & 0xFF;
}

s32 func_80078E18(GlobalContext* globalCtx) {
    gSaveContext.health = globalCtx->interfaceCtx.unk_226;
    return 1;
}

s32 func_80078E34(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    interfaceCtx->unk_228 = 0x140;
    interfaceCtx->unk_226 += 0x10;

    if (interfaceCtx->unk_226 >= gSaveContext.health) {
        interfaceCtx->unk_226 = gSaveContext.health;
        return 1;
    }

    return 0;
}

s32 func_80078E84(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    if (interfaceCtx->unk_228 != 0) {
        interfaceCtx->unk_228--;
    } else {
        interfaceCtx->unk_228 = 0x140;
        interfaceCtx->unk_226 -= 0x10;
        if (interfaceCtx->unk_226 <= 0) {
            interfaceCtx->unk_226 = 0;
            globalCtx->damagePlayer(globalCtx, -(gSaveContext.health + 1));
            return 1;
        }
    }
    return 0;
}

u64* sHeartTextures[] = {
    gHUDHeartFullTex,         gHUDHeartQuarterTex,      gHUDHeartQuarterTex,      gHUDHeartQuarterTex,
    gHUDHeartQuarterTex,      gHUDHeartQuarterTex,      gHUDHeartHalfTex,         gHUDHeartHalfTex,
    gHUDHeartHalfTex,         gHUDHeartHalfTex,         gHUDHeartHalfTex,         gHUDHeartThreeQuarterTex,
    gHUDHeartThreeQuarterTex, gHUDHeartThreeQuarterTex, gHUDHeartThreeQuarterTex, gHUDHeartThreeQuarterTex,
};

u64* sDDHeartTextures[] = {
    gHUDDefenseHeartFullTex,         gHUDDefenseHeartQuarterTex,      gHUDDefenseHeartQuarterTex,
    gHUDDefenseHeartQuarterTex,      gHUDDefenseHeartQuarterTex,      gHUDDefenseHeartQuarterTex,
    gHUDDefenseHeartHalfTex,         gHUDDefenseHeartHalfTex,         gHUDDefenseHeartHalfTex,
    gHUDDefenseHeartHalfTex,         gHUDDefenseHeartHalfTex,         gHUDDefenseHeartThreeQuarterTex,
    gHUDDefenseHeartThreeQuarterTex, gHUDDefenseHeartThreeQuarterTex, gHUDDefenseHeartThreeQuarterTex,
    gHUDDefenseHeartThreeQuarterTex,
};

void HealthMeter_Draw(GlobalContext* globalCtx) {
    s32 pad[5];
    UNK_PTR heartBgImg;
    u32 curColorSet;
    f32 offsetX;
    f32 offsetY;
    s32 i;
    f32 temp1;
    f32 temp2;
    f32 temp3;
    f32 temp4;
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Vtx* sp154 = interfaceCtx->vtx_12C;
    s32 curHeartFraction = gSaveContext.health % 0x10;
    s16 totalHeartCount = gSaveContext.healthCapacity / 0x10;
    s16 fullHeartCount = gSaveContext.health / 0x10;
    s32 pad2;
    f32 sp144 = interfaceCtx->unk_22A * 0.1f;
    s32 curCombineModeSet = 0;
    u8* curBgImgLoaded = NULL;
    s32 ddHeartCountMinusOne = gSaveContext.inventory.defenseHearts - 1;

    OPEN_DISPS(gfxCtx, "../z_lifemeter.c", 353);

    if (!(gSaveContext.health % 0x10)) {
        fullHeartCount--;
    }

    curColorSet = -1;
    offsetY = 0.0f;
    offsetX = 0.0f;

    for (i = 0; i < totalHeartCount; i++) {
        if ((ddHeartCountMinusOne < 0) || (i > ddHeartCountMinusOne)) {
            if (i < fullHeartCount) {
                if (curColorSet != 0) {
                    curColorSet = 0;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, interfaceCtx->heartsPrimR[0], interfaceCtx->heartsPrimG[0],
                                    interfaceCtx->heartsPrimB[0], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, interfaceCtx->heartsEnvR[0], interfaceCtx->heartsEnvG[0],
                                   interfaceCtx->heartsEnvB[0], 255);
                }
            } else if (i == fullHeartCount) {
                if (curColorSet != 1) {
                    curColorSet = 1;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, interfaceCtx->beatingHeartPrim[0],
                                    interfaceCtx->beatingHeartPrim[1], interfaceCtx->beatingHeartPrim[2],
                                    interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, interfaceCtx->beatingHeartEnv[0], interfaceCtx->beatingHeartEnv[1],
                                   interfaceCtx->beatingHeartEnv[2], 255);
                }
            } else if (i > fullHeartCount) {
                if (curColorSet != 2) {
                    curColorSet = 2;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, interfaceCtx->heartsPrimR[0], interfaceCtx->heartsPrimG[0],
                                    interfaceCtx->heartsPrimB[0], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, interfaceCtx->heartsEnvR[0], interfaceCtx->heartsEnvG[0],
                                   interfaceCtx->heartsEnvB[0], 255);
                }
            } else {
                if (curColorSet != 3) {
                    curColorSet = 3;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, interfaceCtx->heartsPrimR[1], interfaceCtx->heartsPrimG[1],
                                    interfaceCtx->heartsPrimB[1], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, interfaceCtx->heartsEnvR[1], interfaceCtx->heartsEnvG[1],
                                   interfaceCtx->heartsEnvB[1], 255);
                }
            }

            if (i < fullHeartCount) {
                heartBgImg = D_02000400;
            } else if (i == fullHeartCount) {
                heartBgImg = sHeartTextures[curHeartFraction];
            } else {
                heartBgImg = D_02000000;
            }
        } else {
            if (i < fullHeartCount) {
                if (curColorSet != 4) {
                    curColorSet = 4;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, sBeatingHeartsDDPrim[0][0], sBeatingHeartsDDPrim[0][1],
                                    sBeatingHeartsDDPrim[0][2], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, sBeatingHeartsDDEnv[0][0], sBeatingHeartsDDEnv[0][1],
                                   sBeatingHeartsDDEnv[0][2], 255);
                }
            } else if (i == fullHeartCount) {
                if (curColorSet != 5) {
                    curColorSet = 5;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, sHeartsDDPrim[0], sHeartsDDPrim[1], sHeartsDDPrim[2],
                                    interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, sHeartsDDEnv[0], sHeartsDDEnv[1], sHeartsDDEnv[2], 0xFF);
                }
            } else if (i > fullHeartCount) {
                if (curColorSet != 6) {
                    curColorSet = 6;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, sBeatingHeartsDDPrim[0][0], sBeatingHeartsDDPrim[0][1],
                                    sBeatingHeartsDDPrim[0][2], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, sBeatingHeartsDDEnv[0][0], sBeatingHeartsDDEnv[0][1],
                                   sBeatingHeartsDDEnv[0][2], 255);
                }
            } else {
                if (curColorSet != 7) {
                    curColorSet = 7;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, sBeatingHeartsDDPrim[1][0], sBeatingHeartsDDPrim[1][1],
                                    sBeatingHeartsDDPrim[1][2], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, sBeatingHeartsDDEnv[1][0], sBeatingHeartsDDEnv[1][1],
                                   sBeatingHeartsDDEnv[1][2], 255);
                }
            }

            if (i < fullHeartCount) {
                heartBgImg = D_02000900;
            } else if (i == fullHeartCount) {
                heartBgImg = sDDHeartTextures[curHeartFraction];
            } else {
                heartBgImg = D_02000500;
            }
        }

        if (curBgImgLoaded != heartBgImg) {
            curBgImgLoaded = heartBgImg;
            gDPLoadTextureBlock(OVERLAY_DISP++, heartBgImg, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0,
                                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                G_TX_NOLOD, G_TX_NOLOD);
        }

        if (i != fullHeartCount) {
            if ((ddHeartCountMinusOne < 0) || (i > ddHeartCountMinusOne)) {
                if (curCombineModeSet != 1) {
                    curCombineModeSet = 1;
                    func_80094520(gfxCtx);
                    gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE,
                                      0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
                }
            } else {
                if (curCombineModeSet != 3) {
                    curCombineModeSet = 3;
                    func_80094520(gfxCtx);
                    gDPSetCombineLERP(OVERLAY_DISP++, ENVIRONMENT, PRIMITIVE, TEXEL0, PRIMITIVE, TEXEL0, 0, PRIMITIVE,
                                      0, ENVIRONMENT, PRIMITIVE, TEXEL0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0);
                }
            }

            temp3 = 26.0f + offsetY;
            temp2 = 30.0f + offsetX;
            temp4 = 1.0f;
            temp4 /= 0.68f;
            temp4 *= 1024.0f;
            temp1 = 8.0f;
            temp1 *= 0.68f;
            gSPTextureRectangle(OVERLAY_DISP++, (s32)((temp2 - temp1) * 4), (s32)((temp3 - temp1) * 4),
                                (s32)((temp2 + temp1) * 4), (s32)((temp3 + temp1) * 4), G_TX_RENDERTILE, 0, 0,
                                (s32)temp4, (s32)temp4);
        } else {
            if ((ddHeartCountMinusOne < 0) || (i > ddHeartCountMinusOne)) {
                if (curCombineModeSet != 2) {
                    curCombineModeSet = 2;
                    func_80094A14(gfxCtx);
                    gDPSetCombineLERP(OVERLAY_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE,
                                      0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
                }
            } else {
                if (curCombineModeSet != 4) {
                    curCombineModeSet = 4;
                    func_80094A14(gfxCtx);
                    gDPSetCombineLERP(OVERLAY_DISP++, ENVIRONMENT, PRIMITIVE, TEXEL0, PRIMITIVE, TEXEL0, 0, PRIMITIVE,
                                      0, ENVIRONMENT, PRIMITIVE, TEXEL0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0);
                }
            }

            {
                Mtx* matrix = Graph_Alloc(gfxCtx, sizeof(Mtx));
                func_800D2CEC(matrix, 1.0f - (0.32f * sp144), 1.0f - (0.32f * sp144), 1.0f - (0.32f * sp144),
                              -130.0f + offsetX, 94.5f - offsetY, 0.0f);
                gSPMatrix(OVERLAY_DISP++, matrix, G_MTX_MODELVIEW | G_MTX_LOAD);
                gSPVertex(OVERLAY_DISP++, sp154, 4, 0);
                gSP1Quadrangle(OVERLAY_DISP++, 0, 2, 3, 1, 0);
            }
        }

        offsetX += 10.0f;
        if (i == 9) {
            offsetY += 10.0f;
            offsetX = 0.0f;
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_lifemeter.c", 606);
}

void HealthMeter_HandleCriticalAlarm(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    if (interfaceCtx->unk_22C != 0) {
        interfaceCtx->unk_22A--;
        if (interfaceCtx->unk_22A <= 0) {
            interfaceCtx->unk_22A = 0;
            interfaceCtx->unk_22C = 0;
            if (!Player_InCsMode(globalCtx) && (globalCtx->pauseCtx.state == 0) && (globalCtx->pauseCtx.flag == 0) &&
                HealthMeter_IsCritical() && !Gameplay_InCsMode(globalCtx)) {
                func_80078884(NA_SE_SY_HITPOINT_ALARM);
            }
        }
    } else {
        interfaceCtx->unk_22A++;
        if (interfaceCtx->unk_22A >= 10) {
            interfaceCtx->unk_22A = 10;
            interfaceCtx->unk_22C = 1;
        }
    }
}

u32 HealthMeter_IsCritical(void) {
    s32 var;

    if (gSaveContext.healthCapacity <= 0x50) {
        var = 0x10;
    } else if (gSaveContext.healthCapacity <= 0xA0) {
        var = 0x18;
    } else if (gSaveContext.healthCapacity <= 0xF0) {
        var = 0x20;
    } else {
        var = 0x2C;
    }

    if ((var >= gSaveContext.health) && (gSaveContext.health > 0)) {
        return true;
    } else {
        return false;
    }
}
