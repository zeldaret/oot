#include "global.h"

/***
 * These are the colors for the hearts in the interface. The prim color is the red color of the heart
 * for the base hearts, while the prim color for the double defense hearts is the white outline. The
 * env color for the base hearts is the purple-ish outline, while the env color for the double defense
 * hearts is the red color of the hearts.
 ***/

#define HEART_PRIM_R 255
#define HEART_PRIM_G 70
#define HEART_PRIM_B 50

#define HEART_ENV_R 50
#define HEART_ENV_G 40
#define HEART_ENV_B 60

#define HEART_DOUBLE_DEFENSE_PRIM_R 255
#define HEART_DOUBLE_DEFENSE_PRIM_G 255
#define HEART_DOUBLE_DEFENSE_PRIM_B 255

#define HEART_DOUBLE_DEFENSE_ENV_R 200
#define HEART_DOUBLE_DEFENSE_ENV_G 0
#define HEART_DOUBLE_DEFENSE_ENV_B 0

/***
 * The burn and drown colors listed here are unused. Prerelease footage of the game confirms that at one
 * point in development the orange color was to be used while taking damage from hot environments.
 * Based on this, we can assume that the blue heart color was to be used while drowning.
 * In the final game these environments only have a timer and do not damage you continuously.
 ***/

#define HEART_BURN_PRIM_R 255
#define HEART_BURN_PRIM_G 190
#define HEART_BURN_PRIM_B 0

#define HEART_PRIM_BURN_ENV_R 255
#define HEART_PRIM_BURN_ENV_G 0
#define HEART_PRIM_BURN_ENV_B 0

#define HEART_DROWN_PRIM_R 100
#define HEART_DROWN_PRIM_G 100
#define HEART_DROWN_PRIM_B 255

#define HEART_DROWN_ENV_R 0
#define HEART_DROWN_ENV_G 0
#define HEART_DROWN_ENV_B 255

s16 sHeartPrimColors[3][3] = {
    { HEART_PRIM_R, HEART_PRIM_G, HEART_PRIM_B },
    { HEART_BURN_PRIM_R, HEART_BURN_PRIM_G, HEART_BURN_PRIM_B },    // unused
    { HEART_DROWN_PRIM_R, HEART_DROWN_PRIM_G, HEART_DROWN_PRIM_B }, // unused
};

s16 sHeartEnvColors[3][3] = {
    { HEART_ENV_R, HEART_ENV_G, HEART_ENV_B },
    { HEART_PRIM_BURN_ENV_R, HEART_PRIM_BURN_ENV_G },            // unused
    { HEART_DROWN_ENV_R, HEART_DROWN_ENV_G, HEART_DROWN_ENV_B }, // unused
};

s16 sHeartPrimFactors[3][3] = {
    { 0, 0, 0 },
    { 0, 120, -50 },   // unused
    { -155, 30, 205 }, // unused
};

s16 sHeartEnvFactors[3][3] = {
    { 0, 0, 0 },
    { 205, -40, -60 }, // unused
    { -50, -40, 195 }, // unused
};

s16 sHeartDDPrimColors[3][3] = {
    { HEART_DOUBLE_DEFENSE_PRIM_R, HEART_DOUBLE_DEFENSE_PRIM_G, HEART_DOUBLE_DEFENSE_PRIM_B },
    { HEART_BURN_PRIM_R, HEART_BURN_PRIM_G, HEART_BURN_PRIM_B },    // unused
    { HEART_DROWN_PRIM_R, HEART_DROWN_PRIM_G, HEART_DROWN_PRIM_B }, // unused
};

s16 sHeartDDEnvColors[3][3] = {
    { HEART_DOUBLE_DEFENSE_ENV_R, HEART_DOUBLE_DEFENSE_ENV_G, HEART_DOUBLE_DEFENSE_ENV_B },
    { HEART_PRIM_BURN_ENV_R, HEART_PRIM_BURN_ENV_G, HEART_PRIM_BURN_ENV_B }, // unused
    { HEART_DROWN_ENV_R, HEART_DROWN_ENV_G, HEART_DROWN_ENV_B },             // unused
};

s16 sHeartDDPrimFactors[3][3] = {
    { 0, 0, 0 },
    { 0, -65, -255 },  // unused
    { -155, -155, 0 }, // unused
};

s16 sHeartDDEnvFactors[3][3] = {
    { 0, 0, 0 },
    { 55, 0, 0 },     // unused
    { -200, 0, 255 }, // unused
};

s16 sHeartPrimCurrent1[3];
s16 sHeartEnvCurrent1[3];
s16 sHeartPrimCurrent2[2][3];
s16 sHeartEnvCurrent2[2][3];

void HealthMeter_Init(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    interfaceCtx->unk_228 = 0x140;
    interfaceCtx->unk_226 = gSaveContext.health;
    interfaceCtx->unk_22A = interfaceCtx->unk_1FE = 0;
    interfaceCtx->unk_22C = interfaceCtx->unk_200 = 0;

    interfaceCtx->healthPrimR[0] = HEART_PRIM_R;
    interfaceCtx->healthPrimG[0] = HEART_PRIM_G;
    interfaceCtx->healthPrimB[0] = HEART_PRIM_B;

    interfaceCtx->healthEnvR[0] = HEART_ENV_R;
    interfaceCtx->healthEnvG[0] = HEART_ENV_G;
    interfaceCtx->healthEnvB[0] = HEART_ENV_B;

    interfaceCtx->healthPrimR[1] = HEART_PRIM_R;
    interfaceCtx->healthPrimG[1] = HEART_PRIM_G;
    interfaceCtx->healthPrimB[1] = HEART_PRIM_B;

    interfaceCtx->healthEnvR[1] = HEART_ENV_R;
    interfaceCtx->healthEnvG[1] = HEART_ENV_G;
    interfaceCtx->healthEnvB[1] = HEART_ENV_B;

    sHeartPrimCurrent2[0][0] = sHeartPrimCurrent2[1][0] = HEART_DOUBLE_DEFENSE_PRIM_R;
    sHeartPrimCurrent2[0][1] = sHeartPrimCurrent2[1][1] = HEART_DOUBLE_DEFENSE_PRIM_G;
    sHeartPrimCurrent2[0][2] = sHeartPrimCurrent2[1][2] = HEART_DOUBLE_DEFENSE_PRIM_B;
    sHeartEnvCurrent2[0][0] = sHeartEnvCurrent2[1][0] = HEART_DOUBLE_DEFENSE_ENV_R;
    sHeartEnvCurrent2[0][1] = sHeartEnvCurrent2[1][1] = HEART_DOUBLE_DEFENSE_ENV_G;
    sHeartEnvCurrent2[0][2] = sHeartEnvCurrent2[1][2] = HEART_DOUBLE_DEFENSE_ENV_B;
}

#ifdef NON_MATCHING
// Far from matching, but is equivalent. The for loop needs to become unrolled somehow in order to match.
void HealthMeter_Update(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    f32 factor = interfaceCtx->unk_1FE * 0.1f;
    s16 rFactor;
    s16 gFactor;
    s16 bFactor;
    s16 i;
    s16* prim;
    s16* env;

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

    interfaceCtx->healthPrimR[0] = HEART_PRIM_R;
    interfaceCtx->healthPrimG[0] = HEART_PRIM_G;
    interfaceCtx->healthPrimB[0] = HEART_PRIM_B;

    interfaceCtx->healthEnvR[0] = HEART_ENV_R;
    interfaceCtx->healthEnvG[0] = HEART_ENV_G;
    interfaceCtx->healthEnvB[0] = HEART_ENV_B;

    interfaceCtx->healthPrimR[1] = sHeartPrimColors[0][0];
    interfaceCtx->healthPrimG[1] = sHeartPrimColors[0][1];
    interfaceCtx->healthPrimB[1] = sHeartPrimColors[0][2];

    interfaceCtx->healthEnvR[1] = sHeartEnvColors[0][0];
    interfaceCtx->healthEnvG[1] = sHeartEnvColors[0][1];
    interfaceCtx->healthEnvB[1] = sHeartEnvColors[0][2];

    rFactor = sHeartPrimFactors[0][0] * factor;
    gFactor = sHeartPrimFactors[0][1] * factor;
    bFactor = sHeartPrimFactors[0][2] * factor;

    interfaceCtx->beatingHeartPrim[0] = (u8)(s32)(rFactor + HEART_PRIM_R) & 0xFF;
    interfaceCtx->beatingHeartPrim[1] = (u8)(s32)(gFactor + HEART_PRIM_G) & 0xFF;
    interfaceCtx->beatingHeartPrim[2] = (u8)(s32)(bFactor + HEART_PRIM_B) & 0xFF;

    rFactor = sHeartEnvFactors[0][0] * factor;
    gFactor = sHeartEnvFactors[0][1] * factor;
    bFactor = sHeartEnvFactors[0][2] * factor;

    interfaceCtx->beatingHeartEnv[0] = (u8)(s32)(rFactor + HEART_ENV_R) & 0xFF;
    interfaceCtx->beatingHeartEnv[1] = (u8)(s32)(gFactor + HEART_ENV_G) & 0xFF;
    interfaceCtx->beatingHeartEnv[2] = (u8)(s32)(bFactor + HEART_ENV_B) & 0xFF;

    sHeartPrimCurrent2[0][0] = HEART_DOUBLE_DEFENSE_PRIM_R;
    sHeartPrimCurrent2[0][1] = HEART_DOUBLE_DEFENSE_PRIM_G;
    sHeartPrimCurrent2[0][2] = HEART_DOUBLE_DEFENSE_PRIM_B;

    sHeartEnvCurrent2[0][0] = HEART_DOUBLE_DEFENSE_ENV_R;
    sHeartEnvCurrent2[0][1] = HEART_DOUBLE_DEFENSE_ENV_G;
    sHeartEnvCurrent2[0][2] = HEART_DOUBLE_DEFENSE_ENV_B;

    for (prim = &sHeartPrimCurrent2[1][0], env = &sHeartEnvCurrent2[1][0], i = 0; i < 3; i++) {
        prim[i] = sHeartDDPrimColors[0][i];
        env[i] = sHeartDDEnvColors[0][i];
    }

    rFactor = sHeartDDPrimFactors[0][0] * factor;
    gFactor = sHeartDDPrimFactors[0][1] * factor;
    bFactor = sHeartDDPrimFactors[0][2] * factor;

    sHeartPrimCurrent1[0] = (u8)(s32)(rFactor + HEART_DOUBLE_DEFENSE_PRIM_R) & 0xFF;
    sHeartPrimCurrent1[1] = (u8)(s32)(gFactor + HEART_DOUBLE_DEFENSE_PRIM_G) & 0xFF;
    sHeartPrimCurrent1[2] = (u8)(s32)(bFactor + HEART_DOUBLE_DEFENSE_PRIM_B) & 0xFF;

    rFactor = sHeartDDEnvFactors[0][0] * factor;
    gFactor = sHeartDDEnvFactors[0][1] * factor;
    bFactor = sHeartDDEnvFactors[0][2] * factor;

    sHeartEnvCurrent1[0] = (u8)(s32)(rFactor + HEART_DOUBLE_DEFENSE_ENV_R) & 0xFF;
    sHeartEnvCurrent1[1] = (u8)(s32)(gFactor + HEART_DOUBLE_DEFENSE_ENV_G) & 0xFF;
    sHeartEnvCurrent1[2] = (u8)(s32)(bFactor + HEART_DOUBLE_DEFENSE_ENV_B) & 0xFF;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_lifemeter/HealthMeter_Update.s")
#endif

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

void Health_Draw(GlobalContext* globalCtx) {
    static u8* sHeartTextureList[] = {
        0x02000400, 0x02000100, 0x02000100, 0x02000100, 0x02000100, 0x02000100, 0x02000200, 0x02000200,
        0x02000200, 0x02000200, 0x02000200, 0x02000300, 0x02000300, 0x02000300, 0x02000300, 0x02000300,
    };
    static u8* sDoubleDefenseHeartTextureList[] = {
        0x02000900, 0x02000600, 0x02000600, 0x02000600, 0x02000600, 0x02000600, 0x02000700, 0x02000700,
        0x02000700, 0x02000700, 0x02000700, 0x02000800, 0x02000800, 0x02000800, 0x02000800, 0x02000800,
    };
    s32 pad[5];
    u8* heartBgImg;
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
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, interfaceCtx->healthPrimR[0], interfaceCtx->healthPrimG[0],
                                    interfaceCtx->healthPrimB[0], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, interfaceCtx->healthEnvR[0], interfaceCtx->healthEnvG[0],
                                   interfaceCtx->healthEnvB[0], 255);
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
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, interfaceCtx->healthPrimR[0], interfaceCtx->healthPrimG[0],
                                    interfaceCtx->healthPrimB[0], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, interfaceCtx->healthEnvR[0], interfaceCtx->healthEnvG[0],
                                   interfaceCtx->healthEnvB[0], 255);
                }
            } else {
                if (curColorSet != 3) {
                    curColorSet = 3;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, interfaceCtx->healthPrimR[1], interfaceCtx->healthPrimG[1],
                                    interfaceCtx->healthPrimB[1], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, interfaceCtx->healthEnvR[1], interfaceCtx->healthEnvG[1],
                                   interfaceCtx->healthEnvB[1], 255);
                }
            }

            if (i < fullHeartCount) {
                heartBgImg = D_02000400;
            } else if (i == fullHeartCount) {
                heartBgImg = sHeartTextureList[curHeartFraction];
            } else {
                heartBgImg = D_02000000;
            }
        } else {
            if (i < fullHeartCount) {
                if (curColorSet != 4) {
                    curColorSet = 4;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, sHeartPrimCurrent2[0][0], sHeartPrimCurrent2[0][1],
                                    sHeartPrimCurrent2[0][2], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, sHeartEnvCurrent2[0][0], sHeartEnvCurrent2[0][1],
                                   sHeartEnvCurrent2[0][2], 255);
                }
            } else if (i == fullHeartCount) {
                if (curColorSet != 5) {
                    curColorSet = 5;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, sHeartPrimCurrent1[0], sHeartPrimCurrent1[1],
                                    sHeartPrimCurrent1[2], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, sHeartEnvCurrent1[0], sHeartEnvCurrent1[1], sHeartEnvCurrent1[2],
                                   0xFF);
                }
            } else if (i > fullHeartCount) {
                if (curColorSet != 6) {
                    curColorSet = 6;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, sHeartPrimCurrent2[0][0], sHeartPrimCurrent2[0][1],
                                    sHeartPrimCurrent2[0][2], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, sHeartEnvCurrent2[0][0], sHeartEnvCurrent2[0][1],
                                   sHeartEnvCurrent2[0][2], 255);
                }
            } else {
                if (curColorSet != 7) {
                    curColorSet = 7;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, sHeartPrimCurrent2[1][0], sHeartPrimCurrent2[1][1],
                                    sHeartPrimCurrent2[1][2], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, sHeartEnvCurrent2[1][0], sHeartEnvCurrent2[1][1],
                                   sHeartEnvCurrent2[1][2], 255);
                }
            }

            if (i < fullHeartCount) {
                heartBgImg = D_02000900;
            } else if (i == fullHeartCount) {
                heartBgImg = sDoubleDefenseHeartTextureList[curHeartFraction];
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

void Health_HandleCriticalAlarm(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    if (interfaceCtx->unk_22C != 0) {
        interfaceCtx->unk_22A--;
        if (interfaceCtx->unk_22A <= 0) {
            interfaceCtx->unk_22A = 0;
            interfaceCtx->unk_22C = 0;
            if (!Player_InCsMode(globalCtx) && (globalCtx->pauseCtx.state == 0) && (globalCtx->pauseCtx.flag == 0) &&
                Health_IsCritical() && !Gameplay_InCsMode(globalCtx)) {
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

u32 Health_IsCritical(void) {
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
        return 1;
    } else {
        return 0;
    }
}
