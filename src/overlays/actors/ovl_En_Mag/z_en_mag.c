/*
 * File: z_en_mag.c
 * Overlay: ovl_En_Mag
 * Description: Title Screen Actor
 */

#include "z_en_mag.h"

#define FLAGS 0x00000030

#define THIS ((EnMag*)thisx)

void EnMag_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMag_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMag_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMag_Draw(Actor* thisx, GlobalContext* globalCtx);

extern u8 D_06000000[];
extern u8 D_06019A00[];
extern u8 D_0601A400[];
extern u8 D_06024800[];
extern u8 D_06024C00[];
extern u8 D_06024E40[];

const ActorInit En_Mag_InitVars = {
    ACTOR_EN_MAG,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_MAG,
    sizeof(EnMag),
    (ActorFunc)EnMag_Init,
    (ActorFunc)EnMag_Destroy,
    (ActorFunc)EnMag_Update,
    (ActorFunc)EnMag_Draw,
};

s16 D_80AA5EC0 = 0;

void EnMag_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnMag* this = THIS;

    YREG(1) = 63;
    YREG(3) = 80;
    YREG(4) = 255;
    YREG(5) = 30;
    YREG(6) = 30;
    YREG(7) = 119;
    YREG(8) = 7;
    YREG(9) = 5;
    YREG(10) = 3;

    VREG(4) = 1;
    VREG(5) = 6;
    VREG(6) = 2;

    this->unk_E312 = 6;
    this->unk_E314 = 10;

    VREG(19) = 99;
    VREG(21) = 9;
    VREG(23) = 10;
    VREG(24) = 8;

    this->unk_E30E = 0;
    this->unk_E30C = 0;

    this->unk_E2E4[0] = 0.0f;
    this->unk_E2E4[1] = 100.0f;
    this->unk_E2E4[2] = 170.0f;
    this->unk_E2F0[0] = 0.0f;
    this->unk_E2F0[1] = 100.0f;
    this->unk_E2F0[2] = 0.0f;

    this->unk_E2DA = 40;

    this->unk_E2D8 = this->unk_E2E0 = this->unk_E2DC = this->unk_E2FC = this->unk_E300 = this->unk_E304 =
        this->unk_E308 = 0.0f;

    if (gSaveContext.unk_13E7 != 0) {
        this->unk_E300 = 210;
        this->unk_E304 = 255;
        this->unk_E308 = 255;

        this->unk_E2E0 = 128.0f;
        this->unk_E2FC = 255.0f;

        this->unk_E2E4[0] = 170;
        this->unk_E2E4[1] = 255.0f;
        this->unk_E2E4[2] = 255.0f;
        this->unk_E2F0[0] = 200.0f;
        this->unk_E2F0[1] = 255.0f;
        this->unk_E2F0[2] = 0;

        gSaveContext.unk_13E7 = 0;
        this->unk_E2DC = 2;
        D_80AA5EC0 = 20;
        gSaveContext.fadeDuration = 1;
        gSaveContext.unk_1419 = 255;
    }

    func_8006EF10(&this->unk_150);

    this->unk_E316 = 0;
    this->unk_E318 = 0;
    this->unk_E31C = 0;
    this->unk_E320 = 0;
}

void EnMag_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnMag_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad[2];
    EnMag* this = THIS;

    if (gSaveContext.fileNum != 0xFEDC) {
        if (this->unk_E2DC < 2) {
            if (CHECK_PAD(globalCtx->state.input[0].press, START_BUTTON) ||
                CHECK_PAD(globalCtx->state.input[0].press, A_BUTTON) ||
                CHECK_PAD(globalCtx->state.input[0].press, B_BUTTON)) {

                Audio_PlaySoundGeneral(NA_SE_SY_PIECE_OF_HEART, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);

                this->unk_E300 = 210;
                this->unk_E304 = 255;
                this->unk_E308 = 255;

                this->unk_E2E0 = 128.0f;
                this->unk_E2FC = 255.0f;

                this->unk_E2E4[0] = 170;
                this->unk_E2E4[1] = 255.0f;
                this->unk_E2E4[2] = 255.0f;
                this->unk_E2F0[0] = 200.0f;
                this->unk_E2F0[1] = 255.0f;
                this->unk_E2F0[2] = 0;

                this->unk_E2DC = 2;
                D_80AA5EC0 = 20;
                gSaveContext.fadeDuration = 1;
                gSaveContext.unk_1419 = 255;
            }
        } else if (this->unk_E2DC >= 2) {
            if (D_80AA5EC0 == 0) {
                if (CHECK_PAD(globalCtx->state.input[0].press, START_BUTTON) ||
                    CHECK_PAD(globalCtx->state.input[0].press, A_BUTTON) ||
                    CHECK_PAD(globalCtx->state.input[0].press, B_BUTTON)) {

                    if (globalCtx->sceneLoadFlag != 20) {
                        func_800F68BC(0);

                        Audio_PlaySoundGeneral(NA_SE_SY_PIECE_OF_HEART, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                               &D_801333E8);

                        gSaveContext.gameMode = 2;
                        globalCtx->sceneLoadFlag = 20;
                        globalCtx->fadeTransition = 2;
                    }

                    this->unk_E312 = 15;
                    this->unk_E314 = 25;
                    this->unk_E2DC = 3;
                }
            } else {
                D_80AA5EC0--;
            }
        }
    }

    if (this->unk_E2DC == 1) {
        if (this->unk_E2D8 == 0) {
            this->unk_E2FC += 6.375f;
            this->unk_E2E0 += 0.8f;

            this->unk_E2E4[0] += 6.375f;
            this->unk_E2E4[1] += 3.875f;
            this->unk_E2E4[2] += 2.125f;
            this->unk_E2F0[0] += 6.375f;
            this->unk_E2F0[1] += 3.875f;

            this->unk_E2DA -= 1;

            if (this->unk_E2DA == 0) {
                this->unk_E2E0 = 32.0f;
                this->unk_E2FC = 255.0f;

                this->unk_E2E4[0] = 255.0f;
                this->unk_E2E4[1] = 255.0f;
                this->unk_E2E4[2] = 255.0f;
                this->unk_E2F0[0] = 255.0f;
                this->unk_E2F0[1] = 255.0f;

                this->unk_E2DA = 40;
                this->unk_E2D8 = 1;
            }
        } else if (this->unk_E2D8 == 1) {
            this->unk_E2E4[0] += -2.125f;
            this->unk_E2F0[0] += -1.375f;

            this->unk_E2E0 += 2.4f;
            this->unk_E2DA -= 1;

            if (this->unk_E2DA == 0) {
                this->unk_E2E0 = 128.0f;

                this->unk_E2E4[0] = 170.0f;
                this->unk_E2F0[0] = 200.0f;

                this->unk_E2DA = 32;
                this->unk_E2D8 = 2;
            }
        }

        if (this->unk_E2FC > 160.0f) {
            this->unk_E300 += VREG(5);
            if (this->unk_E300 >= 210.0f) {
                this->unk_E300 = 210.0f;
            }

            if (this->unk_E300 >= 210) {
                this->unk_E304 += VREG(6);
                if (this->unk_E304 >= 255.0f) {
                    this->unk_E304 = 255.0f;
                }

                if (this->unk_E304 >= 200) {
                    this->unk_E308 += this->unk_E312;
                    if (this->unk_E308 >= 255.0f) {
                        this->unk_E308 = 255.0f;
                        this->unk_E2DC = 2;
                        D_80AA5EC0 = 20;
                    }
                }
            }
        }
    } else if (this->unk_E2DC == 3) {
        this->unk_E2FC -= this->unk_E314;
        if (this->unk_E2FC < 0.0f) {
            this->unk_E2FC = 0.0f;
        }

        this->unk_E300 -= this->unk_E314;
        if (this->unk_E300 < 0.0f) {
            this->unk_E300 = 0.0f;
        }

        this->unk_E304 -= this->unk_E314;
        if (this->unk_E304 < 0.0f) {
            this->unk_E304 = 0.0f;
        }

        this->unk_E308 -= this->unk_E312;
        if (this->unk_E308 < 0.0f) {
            this->unk_E308 = 0.0f;
            this->unk_E2DC = 4;
        }
    }

    if (this->unk_E2DC == 0) {
        if (Flags_GetEnv(globalCtx, 3)) {
            this->unk_E2DA = 40;
            this->unk_E2DC = 1;
        }
    } else if (this->unk_E2DC == 2) {
        if (Flags_GetEnv(globalCtx, 4)) {
            this->unk_E2DC = 3;
        }
    }
}

// EnMag_TextureRectangleI8
void func_80AA447C(Gfx** gfxp, void* texture, s16 texWidth, s16 texHeight, s16 rectLeft, s16 rectTop, s16 rectWidth,
                   s16 rectHeight, u16 dsdx, u16 dtdy) {
    Gfx* gfx = *gfxp;

    gDPLoadTextureBlock(gfx++, texture, G_IM_FMT_I, G_IM_SIZ_8b, texWidth, texHeight, 0, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSPTextureRectangle(gfx++, rectLeft * 4, rectTop * 4, (rectLeft + rectWidth) * 4, (rectTop + rectHeight) * 4,
                        G_TX_RENDERTILE, 0, 0, dsdx, dtdy);

    *gfxp = gfx;
}

// EnMag_MultiTextureRectangleI
void func_80AA46A0(Gfx** gfxp, void* texture1, void* texture2, s16 texWidth1, s16 texHeight1, s16 texWidth2,
                   s16 texHeight2, s16 rectLeft, s16 rectTop, s16 rectWidth, s16 rectHeight, u16 dsdx, u16 dtdy,
                   u16 argD, u16 argE, u16 flag, EnMag* this) {
    Gfx* gfx = *gfxp;

    gDPLoadMultiBlock_4b(gfx++, texture1, 0x0000, 0, G_IM_FMT_I, texWidth1, texHeight1, 0, G_TX_NOMIRROR | G_TX_WRAP,
                         G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    if (1) {}

    if (!flag) {
        gDPLoadMultiBlock(gfx++, texture2, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, texWidth2, texHeight2, 0,
                          G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, 5, argD, argE);

        gDPSetTileSize(gfx++, 1, 0, this->unk_E30E & 0x7F, 0x7C, (this->unk_E30E & 0x7F) + 0x7C);
    }

    gSPTextureRectangle(gfx++, rectLeft * 4, rectTop * 4, (rectLeft + rectWidth) * 4, (rectTop + rectHeight) * 4,
                        G_TX_RENDERTILE, 0, 0, dsdx, dtdy);

    *gfxp = gfx;
}

void func_80AA4AD4(Gfx** gfxp, s16 arg1, s16 arg2, u8* arg3, u32 arg4, u32 arg5) {
    Gfx* gfx = *gfxp;
    u8* imgPtr;
    s32 spAC;
    u32 temp1;
    u32 temp2;
    u32 temp3;
    s32 temp4;
    s32 temp5;
    s32 pad;
    s32 i;

    func_80094D28(&gfx);

    imgPtr = arg3;
    temp1 = arg1 - (arg4 >> 1);
    temp2 = arg2 - (arg5 >> 1);

    temp4 = arg4 * arg5 * 4;
    temp3 = 4096 / (arg4 * 4);
    temp5 = arg4 * temp3 * 4;

    spAC = temp4 / temp5;
    if ((temp4 % temp5) != 0) {
        spAC++;
    }

    gSetTileCustom(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_32b, arg4, temp3, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                   G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    temp4 -= temp5;

    for (i = 0; i < spAC; i++) {
        gDPSetTextureImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_32b, arg4, imgPtr);

        gDPLoadSync(gfx++);
        gDPLoadTile(gfx++, G_TX_LOADTILE, 0, 0, (arg4 - 1) << 2, (temp3 - 1) << 2);

        gSPTextureRectangle(gfx++, temp1 << 2, temp2 << 2, (arg4 + temp1) << 2, (temp2 + temp3) << 2, G_TX_RENDERTILE,
                            0, 0, 1024, 1024);

        if (1) {}

        imgPtr += temp5;
        temp2 += temp3;

        if ((temp4 - temp5) < 0) {
            if (temp4 > 0) {
                temp3 = temp4 / (s32)(arg4 * 4);
                temp4 -= temp5;

                gSetTileCustom(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_32b, arg4, temp3, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                               G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
            }
        } else {
            temp4 -= temp5;
        }
    }

    *gfxp = gfx;
}

void func_80AA4EB8(Gfx** gfxp, void* texture, s32 rectLeft, s32 rectTop) {
    Gfx* gfx = *gfxp;

    YREG(0) = 1024.0f / (YREG(1) / 100.0f);
    YREG(2) = 16.0f * (YREG(1) / 100.0f);

    gDPLoadTextureBlock_4b(gfx++, texture, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                           G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSPTextureRectangle(gfx++, rectLeft * 4, rectTop * 4, (rectLeft + YREG(2)) * 4, (rectTop + YREG(2)) * 4,
                        G_TX_RENDERTILE, 0, 0, YREG(0), YREG(0));

    *gfxp = gfx;
}

// EnMag_DrawInner
void func_80AA507C(Actor* thisx, GlobalContext* globalCtx, Gfx** gfxp) {
    static s16 D_80AA5EC4 = 0;
    static s16 D_80AA5EC8 = 0;
    static s16 D_80AA5ECC = 0;
    static u8 D_80AA5ED0[] = {
        0x17, 0x18, 0x0C, 0x18, 0x17, 0x1D, 0x1B, 0x18, 0x15, 0x15, 0x0E, 0x1B,
    };
    static u8 D_80AA5EDC[] = {
        0x19, 0x1B, 0x0E, 0x1C, 0x1C, 0x1C, 0x1D, 0x0A, 0x1B, 0x1D,
    };
    static u8* D_80AA5EE8[] = {
        0x06020000, 0x06020800, 0x06021000, 0x06021800, 0x06022000, 0x06022800, 0x06023000, 0x06023800, 0x06024000,
    };
    EnMag* this = THIS;
    s32 pad;
    u8* buf = this->unk_150;
    Gfx* gfx = *gfxp;
    u16 phi_s7;
    u16 phi_s0;
    u16 phi_s1;
    u16 sp8C;
    u16 phi_s4;

    gSPSegment(gfx++, 0x06, globalCtx->objectCtx.status[this->actor.objBankIndex].segment);

    func_8009457C(&gfx);

    this->unk_E30E -= 2;

    gDPSetCycleType(gfx++, G_CYC_2CYCLE);
    gDPSetAlphaCompare(gfx++, G_AC_THRESHOLD);
    gDPSetRenderMode(gfx++, G_RM_PASS, G_RM_CLD_SURF2);
    gDPSetCombineLERP(gfx++, TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                      ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0);

    gDPSetPrimColor(gfx++, 0, (s16)this->unk_E2E0, (s16)this->unk_E2E4[0], (s16)this->unk_E2E4[1],
                    (s16)this->unk_E2E4[2], (s16)this->unk_E2FC);
    gDPSetEnvColor(gfx++, (s16)this->unk_E2F0[0], (s16)this->unk_E2F0[1], (s16)this->unk_E2F0[2], 255);

    if ((s16)this->unk_E2E0 != 0) {
        for (phi_s1 = 0, phi_s7 = 0, sp8C = 0; phi_s7 < 3; phi_s7++, sp8C += 64) {
            for (phi_s0 = 0, phi_s4 = 56; phi_s0 < 3; phi_s0++, phi_s1++, phi_s4 += 64) {
                func_80AA46A0(&gfx, D_80AA5EE8[phi_s1], D_06024800, 64, 64, 32, 32, phi_s4, sp8C, 64, 64, 1024, 1024, 1,
                              1, phi_s1, this);
            }
        }
    }

    gDPSetPrimColor(gfx++, 0, 0, 255, 255, 255, (s16)this->unk_E300);

    if ((s16)this->unk_E300 != 0) {
        func_80AA4AD4(&gfx, 152, 100, D_06000000, 160, 160);
    }

    func_8009457C(&gfx);

    gDPPipeSync(gfx++);
    gDPSetAlphaCompare(gfx++, G_AC_NONE);
    gDPSetCombineLERP(gfx++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

    if ((s16)this->unk_E300 < 100) {
        gDPSetRenderMode(gfx++, G_RM_CLD_SURF, G_RM_CLD_SURF2);
    } else {
        gDPSetRenderMode(gfx++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    }

    gDPSetPrimColor(gfx++, 0, 0, 0, 0, 0, (s16)this->unk_E300);
    gDPSetEnvColor(gfx++, 0, 0, 100, 255);

    if ((s16)this->unk_E300 != 0) {
        func_80AA447C(&gfx, D_06024C00, 72, 8, 146, 73, 72, 8, 1024, 1024);
        func_80AA447C(&gfx, D_06024E40, 96, 8, 144, 127, 96, 8, 1024, 1024);

        gDPPipeSync(gfx++);
        gDPSetPrimColor(gfx++, 0, 0, 100, 150, 255, (s16)this->unk_E300);
        gDPSetEnvColor(gfx++, 20, 80, 160, 255);

        func_80AA447C(&gfx, D_06024C00, 72, 8, 145, 72, 72, 8, 1024, 1024);
        func_80AA447C(&gfx, D_06024E40, 96, 8, 143, 126, 96, 8, 1024, 1024);

        gDPPipeSync(gfx++);

        gDPSetPrimColor(gfx++, 0, 0, 255, 255, 255, (s16)this->unk_E304);

        func_80AA4AD4(&gfx, 174, 145, D_0601A400, 128, 32);
    }

    func_8009457C(&gfx);

    gDPSetAlphaCompare(gfx++, G_AC_NONE);
    gDPSetCombineMode(gfx++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

    gDPSetPrimColor(gfx++, 0, 0, (s16)this->unk_E308, (s16)this->unk_E308, (s16)this->unk_E308, (s16)this->unk_E308);

    if ((s16)this->unk_E308 != 0) {
        gDPLoadTextureBlock(gfx++, D_06019A00, G_IM_FMT_IA, G_IM_SIZ_8b, 160, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                            G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        gSPTextureRectangle(gfx++, 312, 792, 952, 856, G_TX_RENDERTILE, 0, 0, 1024, 1024);
    }

    if (gSaveContext.fileNum == 0xFEDC) {
        D_80AA5EC4 = D_80AA5ECC * 10;
        if (D_80AA5EC4 >= 255) {
            D_80AA5EC4 = 255;
        }

        gDPPipeSync(gfx++);
        gDPSetCombineLERP(gfx++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE,
                          0);
        gDPSetPrimColor(gfx++, 0, 0, 0, 0, 0, D_80AA5EC4);

        phi_s4 = VREG(19) + 1;
        for (phi_s7 = 0; phi_s7 < 12; phi_s7++) {
            func_80AA4EB8(&gfx, (buf + (D_80AA5ED0[phi_s7] << 7)) + 0x3C88, phi_s4, YREG(10) + 172);
            phi_s4 += VREG(21);
            if (phi_s7 == 1) {
                phi_s4 += VREG(23);
            }
        }

        gDPPipeSync(gfx++);
        gDPSetPrimColor(gfx++, 0, 0, 100, 255, 255, D_80AA5EC4);

        phi_s4 = VREG(19);
        for (phi_s7 = 0; phi_s7 < 12; phi_s7++) {
            func_80AA4EB8(&gfx, (buf + (D_80AA5ED0[phi_s7] << 7)) + 0x3C88, phi_s4, YREG(10) + 171);
            phi_s4 += VREG(21);
            if (phi_s7 == 1) {
                phi_s4 += VREG(23);
            }
        }
    } else if (this->unk_E308 >= 200.0f) {
        D_80AA5EC4 = D_80AA5ECC * 10;
        if (D_80AA5EC4 >= 255) {
            D_80AA5EC4 = 255;
        }

        gDPPipeSync(gfx++);
        gDPSetCombineLERP(gfx++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE,
                          0);
        gDPSetPrimColor(gfx++, 0, 0, 0, 0, 0, D_80AA5EC4);

        phi_s4 = YREG(7) + 1;
        for (phi_s7 = 0; phi_s7 < 10; phi_s7++) {
            func_80AA4EB8(&gfx, (buf + (D_80AA5EDC[phi_s7] << 7)) + 0x3C88, phi_s4, YREG(10) + 172);
            phi_s4 += YREG(8);
            if (phi_s7 == 4) {
                phi_s4 += YREG(9);
            }
        }

        gDPPipeSync(gfx++);
        gDPSetPrimColor(gfx++, 0, 0, YREG(4), YREG(5), YREG(6), D_80AA5EC4);

        phi_s4 = YREG(7);
        for (phi_s7 = 0; phi_s7 < 10; phi_s7++) {
            func_80AA4EB8(&gfx, (buf + (D_80AA5EDC[phi_s7] << 7)) + 0x3C88, phi_s4, YREG(10) + 171);
            phi_s4 += YREG(8);
            if (phi_s7 == 4) {
                phi_s4 += YREG(9);
            }
        }
    }

    if (D_80AA5EC8 != 0) {
        if (--D_80AA5ECC == 0) {
            D_80AA5EC8 = 0;
        }
    } else {
        if (++D_80AA5ECC >= 26) {
            D_80AA5EC8 = 1;
        }
    }

    *gfxp = gfx;
}

void EnMag_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    Gfx* sp48;
    Gfx* sp44;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_mag.c", 1151);

    sp44 = oGfxCtx->polyOpa.p;
    sp48 = Graph_GfxPlusOne(sp44);
    gSPDisplayList(oGfxCtx->overlay.p++, sp48);

    func_80AA507C(thisx, globalCtx, &sp48);

    gSPEndDisplayList(sp48++);
    Graph_BranchDlist(sp44, sp48);
    oGfxCtx->polyOpa.p = sp48;

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_mag.c", 1161);
}
