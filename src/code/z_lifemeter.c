#include <ultra64.h>
#include <global.h>

extern s16 D_8011FF10[3];
extern s16 D_8011FF24[3];
extern s16 D_8011FF38[3];
extern s16 D_8011FF4C[3];
extern s16 D_8011FF60[3];
extern s16 D_8011FF74[3];
extern s16 D_8011FF88[3];
extern s16 D_8011FF9C[3];
extern u8* D_8011FFB0[];
extern u8* D_8011FFF0[];

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

    interfaceCtx->unk_20E[0] = 0xFF;
    interfaceCtx->unk_20E[2] = 0x46;
    interfaceCtx->unk_20E[4] = 0x32;
    interfaceCtx->unk_21A[0] = 0x32;
    interfaceCtx->unk_21A[2] = 0x28;
    interfaceCtx->unk_21A[4] = 0x3C;

    interfaceCtx->unk_20E[1] = 0xFF;
    interfaceCtx->unk_20E[3] = 0x46;
    interfaceCtx->unk_20E[5] = 0x32;
    interfaceCtx->unk_21A[1] = 0x32;
    interfaceCtx->unk_21A[3] = 0x28;
    interfaceCtx->unk_21A[5] = 0x3C;

    D_8015FDD0[0] = D_8015FDD0[3] = 0xFF;
    D_8015FDD0[1] = D_8015FDD0[4] = 0xFF;
    D_8015FDD0[2] = D_8015FDD0[5] = 0xFF;
    D_8015FDE0[0] = D_8015FDE0[3] = 0xC8;
    D_8015FDE0[1] = D_8015FDE0[4] = 0x00;
    D_8015FDE0[2] = D_8015FDE0[5] = 0x00;
}

#ifdef NON_MATCHING
// this function still needs some work but it should be functionally equivalent
void Health_UpdateData(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;
    f32 temp_f0 = interfaceCtx->unk_1FE * 0.1f;
    s16 temp1, temp2, temp3;

    if (0) {}

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

    interfaceCtx->unk_20E[0] = 0xFF;
    interfaceCtx->unk_20E[2] = 0x46;
    interfaceCtx->unk_20E[4] = 0x32;

    interfaceCtx->unk_21A[0] = 0x32;
    interfaceCtx->unk_21A[2] = 0x28;
    interfaceCtx->unk_21A[4] = 0x3C;

    interfaceCtx->unk_20E[1] = D_8011FF10[0];
    interfaceCtx->unk_20E[3] = D_8011FF10[1];
    interfaceCtx->unk_20E[5] = D_8011FF10[2];

    interfaceCtx->unk_21A[1] = D_8011FF24[0];
    interfaceCtx->unk_21A[3] = D_8011FF24[1];
    interfaceCtx->unk_21A[5] = D_8011FF24[2];

    temp1 = D_8011FF38[0];
    temp2 = D_8011FF38[1];
    temp3 = D_8011FF38[2];
    temp1 *= temp_f0;
    interfaceCtx->unk_202[0] = (u8)(temp1 + 0xFF);
    temp2 *= temp_f0;
    interfaceCtx->unk_202[1] = (u8)(temp2 + 0x46);
    temp3 *= temp_f0;
    interfaceCtx->unk_202[2] = (u8)(temp3 + 0x32);

    temp1 = D_8011FF4C[0];
    temp2 = D_8011FF4C[1];
    temp3 = D_8011FF4C[2];
    temp1 *= temp_f0;
    interfaceCtx->unk_208[0] = (u8)(temp1 + 0x32);
    temp2 *= temp_f0;
    interfaceCtx->unk_208[1] = (u8)(temp2 + 0x28);
    temp3 *= temp_f0;
    interfaceCtx->unk_208[2] = (u8)(temp2 + 0x3C);

    D_8015FDD0[0] = 0xFF;
    D_8015FDD0[1] = 0xFF;
    D_8015FDD0[2] = 0xFF;

    D_8015FDE0[0] = 0xC8;
    D_8015FDE0[1] = 0x00;
    D_8015FDE0[2] = 0x00;

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
    D_8015FDC0[0] = (u8)(temp1 + 0xFF);
    temp2 *= temp_f0;
    D_8015FDC0[1] = (u8)(temp2 + 0xFF);
    temp3 *= temp_f0;
    D_8015FDC0[2] = (u8)(temp3 + 0xFF);

    temp1 = D_8011FF9C[0];
    temp2 = D_8011FF9C[1];
    temp3 = D_8011FF9C[2];
    temp1 *= temp_f0;
    D_8015FDC8[0] = (u8)(temp1 + 0xC8);
    temp2 *= temp_f0;
    D_8015FDC8[1] = (u8)(temp2 + 0x00);
    temp3 *= temp_f0;
    D_8015FDC8[2] = (u8)(temp3 + 0x00);
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
            globalCtx->unk_11D58(globalCtx, -(gSaveContext.health + 1));
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
    Vtx* sp154 = interfaceCtx->vtx_12C;
    s32 curHeartFraction = gSaveContext.health % 0x10;
    s16 totalHeartCount = gSaveContext.healthCapacity / 0x10;
    s16 fullHeartCount = gSaveContext.health / 0x10;
    s32 pad2;
    f32 sp144 = interfaceCtx->unk_22A * 0.1f;
    s32 curCombineModeSet = 0;
    u8* curBgImgLoaded = NULL;
    s32 ddHeartCountMinusOne = gSaveContext.defenseHearts - 1;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, gfxCtx, "../z_lifemeter.c", 353);

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
                    gDPPipeSync(gfxCtx->overlay.p++);
                    gDPSetPrimColor(gfxCtx->overlay.p++, 0, 0, interfaceCtx->unk_20E[0], interfaceCtx->unk_20E[2],
                                    interfaceCtx->unk_20E[4], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(gfxCtx->overlay.p++, interfaceCtx->unk_21A[0], interfaceCtx->unk_21A[2],
                                   interfaceCtx->unk_21A[4], 0xFF);
                }
            } else if (i == fullHeartCount) {
                if (curColorSet != 1) {
                    curColorSet = 1;
                    gDPPipeSync(gfxCtx->overlay.p++);
                    gDPSetPrimColor(gfxCtx->overlay.p++, 0, 0, interfaceCtx->unk_202[0], interfaceCtx->unk_202[1],
                                    interfaceCtx->unk_202[2], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(gfxCtx->overlay.p++, interfaceCtx->unk_208[0], interfaceCtx->unk_208[1],
                                   interfaceCtx->unk_208[2], 0xFF);
                }
            } else if (i > fullHeartCount) {
                if (curColorSet != 2) {
                    curColorSet = 2;
                    gDPPipeSync(gfxCtx->overlay.p++);
                    gDPSetPrimColor(gfxCtx->overlay.p++, 0, 0, interfaceCtx->unk_20E[0], interfaceCtx->unk_20E[2],
                                    interfaceCtx->unk_20E[4], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(gfxCtx->overlay.p++, interfaceCtx->unk_21A[0], interfaceCtx->unk_21A[2],
                                   interfaceCtx->unk_21A[4], 0xFF);
                }
            } else {
                if (curColorSet != 3) {
                    curColorSet = 3;
                    gDPPipeSync(gfxCtx->overlay.p++);
                    gDPSetPrimColor(gfxCtx->overlay.p++, 0, 0, interfaceCtx->unk_20E[1], interfaceCtx->unk_20E[3],
                                    interfaceCtx->unk_20E[5], interfaceCtx->healthAlpha);
                    gDPSetEnvColor(gfxCtx->overlay.p++, interfaceCtx->unk_21A[1], interfaceCtx->unk_21A[3],
                                   interfaceCtx->unk_21A[5], 0xFF);
                }
            }

            if (i < fullHeartCount) {
                heartBgImg = D_02000400;
            } else if (i == fullHeartCount) {
                heartBgImg = D_8011FFB0[curHeartFraction];
            } else {
                heartBgImg = D_02000000;
            }
        } else {
            if (i < fullHeartCount) {
                if (curColorSet != 4) {
                    curColorSet = 4;
                    gDPPipeSync(gfxCtx->overlay.p++);
                    gDPSetPrimColor(gfxCtx->overlay.p++, 0, 0, D_8015FDD0[0], D_8015FDD0[1], D_8015FDD0[2],
                                    interfaceCtx->healthAlpha);
                    gDPSetEnvColor(gfxCtx->overlay.p++, D_8015FDE0[0], D_8015FDE0[1], D_8015FDE0[2], 0xFF);
                }
            } else if (i == fullHeartCount) {
                if (curColorSet != 5) {
                    curColorSet = 5;
                    gDPPipeSync(gfxCtx->overlay.p++);
                    gDPSetPrimColor(gfxCtx->overlay.p++, 0, 0, D_8015FDC0[0], D_8015FDC0[1], D_8015FDC0[2],
                                    interfaceCtx->healthAlpha);
                    gDPSetEnvColor(gfxCtx->overlay.p++, D_8015FDC8[0], D_8015FDC8[1], D_8015FDC8[2], 0xFF);
                }
            } else if (i > fullHeartCount) {
                if (curColorSet != 6) {
                    curColorSet = 6;
                    gDPPipeSync(gfxCtx->overlay.p++);
                    gDPSetPrimColor(gfxCtx->overlay.p++, 0, 0, D_8015FDD0[0], D_8015FDD0[1], D_8015FDD0[2],
                                    interfaceCtx->healthAlpha);
                    gDPSetEnvColor(gfxCtx->overlay.p++, D_8015FDE0[0], D_8015FDE0[1], D_8015FDE0[2], 0xFF);
                }
            } else {
                if (curColorSet != 7) {
                    curColorSet = 7;
                    gDPPipeSync(gfxCtx->overlay.p++);
                    gDPSetPrimColor(gfxCtx->overlay.p++, 0, 0, D_8015FDD0[3], D_8015FDD0[4], D_8015FDD0[5],
                                    interfaceCtx->healthAlpha);
                    gDPSetEnvColor(gfxCtx->overlay.p++, D_8015FDE0[3], D_8015FDE0[4], D_8015FDE0[5], 0xFF);
                }
            }

            if (i < fullHeartCount) {
                heartBgImg = D_02000900;
            } else if (i == fullHeartCount) {
                heartBgImg = D_8011FFF0[curHeartFraction];
            } else {
                heartBgImg = D_02000500;
            }
        }

        if (curBgImgLoaded != heartBgImg) {
            curBgImgLoaded = heartBgImg;
            gDPLoadTextureBlock(gfxCtx->overlay.p++, heartBgImg, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0,
                                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                G_TX_NOLOD, G_TX_NOLOD);
        }

        if (i != fullHeartCount) {
            if ((ddHeartCountMinusOne < 0) || (i > ddHeartCountMinusOne)) {
                if (curCombineModeSet != 1) {
                    curCombineModeSet = 1;
                    func_80094520(gfxCtx);
                    gDPSetCombineLERP(gfxCtx->overlay.p++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0,
                                      PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE,
                                      0);
                }
            } else {
                if (curCombineModeSet != 3) {
                    curCombineModeSet = 3;
                    func_80094520(gfxCtx);
                    gDPSetCombineLERP(gfxCtx->overlay.p++, ENVIRONMENT, PRIMITIVE, TEXEL0, PRIMITIVE, TEXEL0, 0,
                                      PRIMITIVE, 0, ENVIRONMENT, PRIMITIVE, TEXEL0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0);
                }
            }

            temp3 = 26.0f + offsetY;
            temp2 = 30.0f + offsetX;
            temp4 = 1.0f;
            temp4 /= 0.68f;
            temp4 *= 1024.0f;
            temp1 = 8.0f;
            temp1 *= 0.68f;
            gSPTextureRectangle(gfxCtx->overlay.p++, (s32)((temp2 - temp1) * 4), (s32)((temp3 - temp1) * 4),
                                (s32)((temp2 + temp1) * 4), (s32)((temp3 + temp1) * 4), G_TX_RENDERTILE, 0, 0,
                                (s32)temp4, (s32)temp4);
        } else {
            if ((ddHeartCountMinusOne < 0) || (i > ddHeartCountMinusOne)) {
                if (curCombineModeSet != 2) {
                    curCombineModeSet = 2;
                    func_80094A14(gfxCtx);
                    gDPSetCombineLERP(gfxCtx->overlay.p++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0,
                                      PRIMITIVE, 0, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE,
                                      0);
                }
            } else {
                if (curCombineModeSet != 4) {
                    curCombineModeSet = 4;
                    func_80094A14(gfxCtx);
                    gDPSetCombineLERP(gfxCtx->overlay.p++, ENVIRONMENT, PRIMITIVE, TEXEL0, PRIMITIVE, TEXEL0, 0,
                                      PRIMITIVE, 0, ENVIRONMENT, PRIMITIVE, TEXEL0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0);
                }
            }

            if (1) {
                Mtx* matrix = Graph_Alloc(gfxCtx, sizeof(Mtx));
                func_800D2CEC(matrix, 1.0f - (0.32f * sp144), 1.0f - (0.32f * sp144), 1.0f - (0.32f * sp144),
                              -130.0f + offsetX, 94.5f - offsetY, 0.0f);
                gSPMatrix(gfxCtx->overlay.p++, matrix, G_MTX_MODELVIEW | G_MTX_LOAD);
                gSPVertex(gfxCtx->overlay.p++, sp154, 4, 0);
                gSP1Quadrangle(gfxCtx->overlay.p++, 0, 2, 3, 1, 0);
            }
        }

        offsetX += 10.0f;
        if (i == 9) {
            offsetY += 10.0f;
            offsetX = 0.0f;
        }
    }

    Graph_CloseDisps(dispRefs, gfxCtx, "../z_lifemeter.c", 606);
}

u32 Health_IsCritical(void);

void Health_HandleCriticalAlarm(GlobalContext* globalCtx) {
    InterfaceContext* interfaceCtx = &globalCtx->interfaceCtx;

    if (interfaceCtx->unk_22C != 0) {
        interfaceCtx->unk_22A--;
        if (interfaceCtx->unk_22A <= 0) {
            interfaceCtx->unk_22A = 0;
            interfaceCtx->unk_22C = 0;
            if (!func_8008E988(globalCtx) && (globalCtx->pauseCtx.state == 0) && (globalCtx->pauseCtx.flag == 0) &&
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
