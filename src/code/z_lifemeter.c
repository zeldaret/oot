#include "global.h"

// Red hearts prim color
#define HEART_R_COL 255
#define HEART_G_COL 70
#define HEART_B_COL 50

// Red hearts env color
#define HEART_BG_R_COL 50
#define HEART_BG_G_COL 40
#define HEART_BG_B_COL 60

// Double defense hearts prim color
#define HEART_DD_R_COL 255
#define HEART_DD_G_COL 255
#define HEART_DD_B_COL 255

// Double defense hearts env color
#define HEART_DD_BG_R_COL 200
#define HEART_DD_BG_G_COL 0
#define HEART_DD_BG_B_COL 0

// Unused orange hearts prim color
#define HEART_ORANGE_R_COL 255
#define HEART_ORANGE_G_COL 190
#define HEART_ORANGE_B_COL 0

// Unused orange hearts env color
#define HEART_ORANGE_BG_R_COL 255
#define HEART_ORANGE_BG_G_COL 0
#define HEART_ORANGE_BG_B_COL 0

// Unused blue hearts prim color
#define HEART_BLUE_R_COL 100
#define HEART_BLUE_G_COL 100
#define HEART_BLUE_B_COL 255

// Unused blue hearts env color
#define HEART_BLUE_BG_R_COL 0
#define HEART_BLUE_BG_G_COL 0
#define HEART_BLUE_BG_B_COL 255

s16 D_8011FF10[] = { HEART_R_COL,        HEART_G_COL,      HEART_B_COL,      HEART_ORANGE_R_COL, HEART_ORANGE_G_COL,
                     HEART_ORANGE_B_COL, HEART_BLUE_R_COL, HEART_BLUE_G_COL, HEART_BLUE_B_COL };

s16 D_8011FF24[] = {
    HEART_BG_R_COL,        HEART_BG_G_COL,      HEART_BG_B_COL,      HEART_ORANGE_BG_R_COL, HEART_ORANGE_BG_G_COL,
    HEART_ORANGE_BG_B_COL, HEART_BLUE_BG_R_COL, HEART_BLUE_BG_G_COL, HEART_BLUE_BG_B_COL,
};

s16 D_8011FF38[] = {
    0, 0, 0, 0, 120, -50, -155, 30, 205,
};

s16 D_8011FF4C[] = {
    0, 0, 0, 205, -40, -60, -50, -40, 195,
};

s16 D_8011FF60[] = {
    255, 255, 255, 255, 190, 0, 100, 100, 255,
};

s16 D_8011FF74[] = {
    200, 0, 0, 255, 0, 0, 0, 0, 255,
};

s16 D_8011FF88[] = {
    0, 0, 0, 0, -65, -255, -155, -155, 0,
};

s16 D_8011FF9C[] = {
    0, 0, 0, 55, 0, 0, -200, 0, 255,
};

UNK_PTR* sHeartTextures[] = {
    0x02000400, 0x02000100, 0x02000100, 0x02000100, 0x02000100, 0x02000100, 0x02000200, 0x02000200,
    0x02000200, 0x02000200, 0x02000200, 0x02000300, 0x02000300, 0x02000300, 0x02000300, 0x02000300,
};

UNK_PTR* sHeartDoubleDefenseTextures[] = {
    0x02000900, 0x02000600, 0x02000600, 0x02000600, 0x02000600, 0x02000600, 0x02000700, 0x02000700,
    0x02000700, 0x02000700, 0x02000700, 0x02000800, 0x02000800, 0x02000800, 0x02000800, 0x02000800,
};

s16 D_8015FDC0[3];
s16 D_8015FDC8[3];
s16 D_8015FDD0[6];
s16 D_8015FDE0[6];

void Health_InitData(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    interfaceCtx->unk_228 = 0x140;
    interfaceCtx->unk_226 = gSaveContext.health;
    interfaceCtx->unk_22A = interfaceCtx->unk_1FE = 0;
    interfaceCtx->unk_22C = interfaceCtx->unk_200 = 0;

    interfaceCtx->heartColorR[0] = HEART_R_COL;
    interfaceCtx->heartColorG[0] = HEART_G_COL;
    interfaceCtx->heartColorB[0] = HEART_B_COL;
    interfaceCtx->heartBgColorR[0] = HEART_BG_R_COL;
    interfaceCtx->heartBgColorG[0] = HEART_BG_G_COL;
    interfaceCtx->heartBgColorB[0] = HEART_BG_B_COL;

    interfaceCtx->heartColorR[1] = HEART_R_COL;
    interfaceCtx->heartColorG[1] = HEART_G_COL;
    interfaceCtx->heartColorB[1] = HEART_B_COL;
    interfaceCtx->heartBgColorR[1] = HEART_BG_R_COL;
    interfaceCtx->heartBgColorG[1] = HEART_BG_G_COL;
    interfaceCtx->heartBgColorB[1] = HEART_BG_B_COL;

    D_8015FDD0[0] = D_8015FDD0[3] = HEART_DD_R_COL;
    D_8015FDD0[1] = D_8015FDD0[4] = HEART_DD_G_COL;
    D_8015FDD0[2] = D_8015FDD0[5] = HEART_DD_B_COL;
    D_8015FDE0[0] = D_8015FDE0[3] = HEART_DD_BG_R_COL;
    D_8015FDE0[1] = D_8015FDE0[4] = HEART_DD_BG_G_COL;
    D_8015FDE0[2] = D_8015FDE0[5] = HEART_DD_BG_B_COL;
}

#ifdef NON_MATCHING
// this function still needs some work but it should be functionally equivalent
void Health_UpdateData(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    f32 temp_f0 = interfaceCtx->unk_1FE * 0.1f;
    s16 temp1, temp2, temp3;

    if (1) {}

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

    interfaceCtx->heartColorR[0] = HEART_R_COL;
    interfaceCtx->heartColorG[0] = HEART_G_COL;
    interfaceCtx->heartColorB[0] = HEART_B_COL;

    interfaceCtx->heartBgColorR[0] = HEART_BG_R_COL;
    interfaceCtx->heartBgColorG[0] = HEART_BG_G_COL;
    interfaceCtx->heartBgColorB[0] = HEART_BG_B_COL;

    interfaceCtx->heartColorR[1] = D_8011FF10[0];
    interfaceCtx->heartColorG[1] = D_8011FF10[1];
    interfaceCtx->heartColorB[1] = D_8011FF10[2];

    interfaceCtx->heartBgColorR[1] = D_8011FF24[0];
    interfaceCtx->heartBgColorG[1] = D_8011FF24[1];
    interfaceCtx->heartBgColorB[1] = D_8011FF24[2];

    temp1 = D_8011FF38[0];
    temp2 = D_8011FF38[1];
    temp3 = D_8011FF38[2];
    temp1 *= temp_f0;
    interfaceCtx->beatingHeartColor[0] = (u8)(temp1 + HEART_R_COL);
    temp2 *= temp_f0;
    interfaceCtx->beatingHeartColor[1] = (u8)(temp2 + HEART_G_COL);
    temp3 *= temp_f0;
    interfaceCtx->beatingHeartColor[2] = (u8)(temp3 + HEART_B_COL);

    temp1 = D_8011FF4C[0];
    temp2 = D_8011FF4C[1];
    temp3 = D_8011FF4C[2];
    temp1 *= temp_f0;
    interfaceCtx->beatingHeartBgColor[0] = (u8)(temp1 + HEART_BG_R_COL);
    temp2 *= temp_f0;
    interfaceCtx->beatingHeartBgColor[1] = (u8)(temp2 + HEART_BG_G_COL);
    temp3 *= temp_f0;
    interfaceCtx->beatingHeartBgColor[2] = (u8)(temp3 + HEART_BG_B_COL);

    D_8015FDD0[0] = HEART_DD_R_COL;
    D_8015FDD0[1] = HEART_DD_G_COL;
    D_8015FDD0[2] = HEART_DD_B_COL;

    D_8015FDE0[0] = HEART_DD_BG_R_COL;
    D_8015FDE0[1] = HEART_DD_BG_G_COL;
    D_8015FDE0[2] = HEART_DD_BG_B_COL;

    D_8015FDD0[3] = D_8011FF60[0];
    D_8015FDD0[4] = D_8011FF60[1];
    D_8015FDD0[5] = D_8011FF60[2];

    D_8015FDE0[3] = D_8011FF74[0];
    D_8015FDE0[4] = D_8011FF74[1];
    D_8015FDE0[5] = D_8011FF74[2];

    temp1 = D_8011FF88[0];
    temp2 = D_8011FF88[1];
    temp3 = D_8011FF88[2];
    temp1 *= temp_f0;
    D_8015FDC0[0] = (u8)(temp1 + HEART_DD_R_COL);
    temp2 *= temp_f0;
    D_8015FDC0[1] = (u8)(temp2 + HEART_DD_G_COL);
    temp3 *= temp_f0;
    D_8015FDC0[2] = (u8)(temp3 + HEART_DD_B_COL);

    temp1 = D_8011FF9C[0];
    temp2 = D_8011FF9C[1];
    temp3 = D_8011FF9C[2];
    temp1 *= temp_f0;
    D_8015FDC8[0] = (u8)(temp1 + HEART_DD_BG_R_COL);
    temp2 *= temp_f0;
    D_8015FDC8[1] = (u8)(temp2 + HEART_DD_BG_G_COL);
    temp3 *= temp_f0;
    D_8015FDC8[2] = (u8)(temp3 + HEART_DD_BG_B_COL);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/z_lifemeter/Health_UpdateData.s")
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
    Vtx* heartVtx = interfaceCtx->heartVtx;
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
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, interfaceCtx->heartColorR[0], interfaceCtx->heartColorG[0],
                                    interfaceCtx->heartColorB[0], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, interfaceCtx->heartBgColorR[0], interfaceCtx->heartBgColorG[0],
                                   interfaceCtx->heartBgColorB[0], 255);
                }
            } else if (i == fullHeartCount) {
                if (curColorSet != 1) {
                    curColorSet = 1;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, interfaceCtx->beatingHeartColor[0],
                                    interfaceCtx->beatingHeartColor[1], interfaceCtx->beatingHeartColor[2],
                                    interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, interfaceCtx->beatingHeartBgColor[0],
                                   interfaceCtx->beatingHeartBgColor[1], interfaceCtx->beatingHeartBgColor[2], 255);
                }
            } else if (i > fullHeartCount) {
                if (curColorSet != 2) {
                    curColorSet = 2;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, interfaceCtx->heartColorR[0], interfaceCtx->heartColorG[0],
                                    interfaceCtx->heartColorB[0], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, interfaceCtx->heartBgColorR[0], interfaceCtx->heartBgColorG[0],
                                   interfaceCtx->heartBgColorB[0], 255);
                }
            } else {
                if (curColorSet != 3) {
                    curColorSet = 3;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, interfaceCtx->heartColorR[1], interfaceCtx->heartColorG[1],
                                    interfaceCtx->heartColorB[1], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, interfaceCtx->heartBgColorR[1], interfaceCtx->heartBgColorG[1],
                                   interfaceCtx->heartBgColorB[1], 255);
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
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, D_8015FDD0[0], D_8015FDD0[1], D_8015FDD0[2],
                                    interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, D_8015FDE0[0], D_8015FDE0[1], D_8015FDE0[2], 255);
                }
            } else if (i == fullHeartCount) {
                if (curColorSet != 5) {
                    curColorSet = 5;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, D_8015FDC0[0], D_8015FDC0[1], D_8015FDC0[2],
                                    interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, D_8015FDC8[0], D_8015FDC8[1], D_8015FDC8[2], 255);
                }
            } else if (i > fullHeartCount) {
                if (curColorSet != 6) {
                    curColorSet = 6;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, D_8015FDD0[0], D_8015FDD0[1], D_8015FDD0[2],
                                    interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, D_8015FDE0[0], D_8015FDE0[1], D_8015FDE0[2], 255);
                }
            } else {
                if (curColorSet != 7) {
                    curColorSet = 7;
                    gDPPipeSync(OVERLAY_DISP++);
                    gDPSetPrimColor(OVERLAY_DISP++, 0, 0, D_8015FDD0[3], D_8015FDD0[4], D_8015FDD0[5],
                                    interfaceCtx->healthAlpha);
                    gDPSetEnvColor(OVERLAY_DISP++, D_8015FDE0[3], D_8015FDE0[4], D_8015FDE0[5], 255);
                }
            }

            if (i < fullHeartCount) {
                heartBgImg = D_02000900;
            } else if (i == fullHeartCount) {
                heartBgImg = sHeartDoubleDefenseTextures[curHeartFraction];
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
                func_800D2CEC(matrix, 1.0f - ((1.0f - 0.68f) * sp144), 1.0f - ((1.0f - 0.68f) * sp144),
                              1.0f - ((1.0f - 0.68f) * sp144), -130.0f + offsetX, 94.5f - offsetY, 0.0f);
                gSPMatrix(OVERLAY_DISP++, matrix, G_MTX_MODELVIEW | G_MTX_LOAD);
                gSPVertex(OVERLAY_DISP++, heartVtx, 4, 0);
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
