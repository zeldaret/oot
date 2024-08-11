/*
 * File: z_en_mag.c
 * Overlay: ovl_En_Mag
 * Description: Title Screen Manager & Logo
 */

#include "z_en_mag.h"
#include "assets/objects/object_mag/object_mag.h"

#define FLAGS (ACTOR_FLAG_4 | ACTOR_FLAG_5)

void EnMag_Init(Actor* thisx, PlayState* play);
void EnMag_Destroy(Actor* thisx, PlayState* play);
void EnMag_Update(Actor* thisx, PlayState* play);
void EnMag_Draw(Actor* thisx, PlayState* play);

ActorProfile En_Mag_Profile = {
    /**/ ACTOR_EN_MAG,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_MAG,
    /**/ sizeof(EnMag),
    /**/ EnMag_Init,
    /**/ EnMag_Destroy,
    /**/ EnMag_Update,
    /**/ EnMag_Draw,
};

static s16 sDelayTimer = 0;

#if OOT_VERSION < OOT_GC_US
void EnMag_ResetSram(void) {
    static u8 buffer[0x2000];

    bzero(buffer, 0x800);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), buffer, 0x800, 1);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000800), buffer, 0x800, 1);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8001000), buffer, 0x800, 1);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8001800), buffer, 0x800, 1);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8002000), buffer, 0x800, 1);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8002800), buffer, 0x800, 1);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8003000), buffer, 0x800, 1);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8003800), buffer, 0x800, 1);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8004000), buffer, 0x800, 1);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8004800), buffer, 0x800, 1);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8005000), buffer, 0x800, 1);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8005800), buffer, 0x800, 1);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8006000), buffer, 0x800, 1);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8006800), buffer, 0x800, 1);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8007000), buffer, 0x800, 1);
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8007800), buffer, 0x800, 1);

    gSaveContext.audioSetting = 0;
    gSaveContext.zTargetSetting = 0;
    func_800F6700(gSaveContext.audioSetting);
}
#endif

void EnMag_Init(Actor* thisx, PlayState* play) {
    EnMag* this = (EnMag*)thisx;

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

    this->copyrightAlphaStep = 6;
    this->fadeOutAlphaStep = 10;

    VREG(19) = 99;
    VREG(21) = 9;
    VREG(23) = 10;
    VREG(24) = 8;

    this->effectScroll = 0;
    this->unk_E30C = 0;

    this->effectPrimColor[0] = 0.0f;
    this->effectPrimColor[1] = 100.0f;
    this->effectPrimColor[2] = 170.0f;
    this->effectEnvColor[0] = 0.0f;
    this->effectEnvColor[1] = 100.0f;
    this->effectEnvColor[2] = 0.0f;

    this->effectFadeInTimer = 40;

    this->effectFadeInState = this->effectPrimLodFrac = this->globalState = this->effectAlpha = this->mainAlpha =
        this->subAlpha = this->copyrightAlpha = 0.0f;

    if (gSaveContext.forceRisingButtonAlphas) {
        this->mainAlpha = 210;
        this->subAlpha = 255;
        this->copyrightAlpha = 255;

        this->effectPrimLodFrac = 128.0f;
        this->effectAlpha = 255.0f;

#if !OOT_MQ
        this->effectPrimColor[0] = 255.0f;
        this->effectPrimColor[1] = 255.0f;
        this->effectPrimColor[2] = 170;
        this->effectEnvColor[0] = 255.0f;
        this->effectEnvColor[1] = 100;
#else
        this->effectPrimColor[0] = 170;
        this->effectPrimColor[1] = 255.0f;
        this->effectPrimColor[2] = 255.0f;
        this->effectEnvColor[0] = 200.0f;
        this->effectEnvColor[1] = 255.0f;
        this->effectEnvColor[2] = 0;
#endif

        gSaveContext.forceRisingButtonAlphas = false;
        this->globalState = MAG_STATE_DISPLAY;
        sDelayTimer = 20;
        gSaveContext.transFadeDuration = 1;
        gSaveContext.transWipeSpeed = 255;
    }

    Font_LoadOrderedFont(&this->font);

    this->unk_E316 = 0;
    this->unk_E318 = 0;
    this->unk_E31C = 0;
    this->unk_E320 = 0;
}

void EnMag_Destroy(Actor* thisx, PlayState* play) {
}

#if OOT_VERSION < OOT_GC_US
void EnMag_CheckSramResetCode(PlayState* play, EnMag* this) {
    static s32 sSramResetCode[] = {
        BTN_DUP, BTN_DDOWN,  BTN_DLEFT, BTN_DRIGHT, BTN_START, BTN_B, BTN_CDOWN,
        BTN_L,   BTN_CRIGHT, BTN_CLEFT, BTN_A,      BTN_CUP,   BTN_R, BTN_Z,
    };
    s32 var_v1;

    var_v1 =
        play->state.input[2].cur.button & (BTN_CRIGHT | BTN_CLEFT | BTN_CDOWN | BTN_CUP | BTN_R | BTN_L | BTN_DRIGHT |
                                           BTN_DLEFT | BTN_DDOWN | BTN_DUP | BTN_START | BTN_Z | BTN_B | BTN_A);
    if (this->unk_E31C == var_v1) {
        this->unk_E320--;
        if (this->unk_E320 < 0) {
            this->unk_E320 = 1;
        } else {
            var_v1 ^= this->unk_E31C;
        }
    } else {
        this->unk_E320 = 16;
        this->unk_E31C = var_v1;
    }

    if (this->unk_E316 < 4) {
        if (sSramResetCode[this->unk_E316] & var_v1) {
            this->unk_E316++;
        } else if (var_v1 != 0) {
            this->unk_E316 = 0;
        }
    } else {
        if (CHECK_BTN_ALL(play->state.input[2].press.button, sSramResetCode[this->unk_E316])) {
            this->unk_E316++;
        } else if (var_v1 != 0) {
            this->unk_E316 = 0;
        }
    }

    if (this->unk_E316 == ARRAY_COUNT(sSramResetCode)) {
        EnMag_ResetSram();
        this->unk_E316 = 0;
    }
}
#endif

void EnMag_Update(Actor* thisx, PlayState* play) {
    s32 pad[2];
    EnMag* this = (EnMag*)thisx;

#if OOT_VERSION < OOT_GC_US
    EnMag_CheckSramResetCode(play, this);
#endif

    if (gSaveContext.fileNum != 0xFEDC) {
        if (this->globalState < MAG_STATE_DISPLAY) {
            if (CHECK_BTN_ALL(play->state.input[0].press.button, BTN_START) ||
                CHECK_BTN_ALL(play->state.input[0].press.button, BTN_A) ||
                CHECK_BTN_ALL(play->state.input[0].press.button, BTN_B)) {

                Audio_PlaySfxGeneral(NA_SE_SY_PIECE_OF_HEART, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                this->mainAlpha = 210;
                this->subAlpha = 255;
                this->copyrightAlpha = 255;

                this->effectPrimLodFrac = 128.0f;
                this->effectAlpha = 255.0f;

#if !OOT_MQ
                this->effectPrimColor[0] = 255.0f;
                this->effectPrimColor[1] = 255.0f;
                this->effectPrimColor[2] = 170;
                this->effectEnvColor[0] = 255.0f;
                this->effectEnvColor[1] = 100;
#else
                this->effectPrimColor[0] = 170;
                this->effectPrimColor[1] = 255.0f;
                this->effectPrimColor[2] = 255.0f;
                this->effectEnvColor[0] = 200.0f;
                this->effectEnvColor[1] = 255.0f;
                this->effectEnvColor[2] = 0;
#endif

                this->globalState = MAG_STATE_DISPLAY;
                sDelayTimer = 20;
                gSaveContext.transFadeDuration = 1;
                gSaveContext.transWipeSpeed = 255;
            }
        } else if (this->globalState >= MAG_STATE_DISPLAY) {
            if (sDelayTimer == 0) {
                if (CHECK_BTN_ALL(play->state.input[0].press.button, BTN_START) ||
                    CHECK_BTN_ALL(play->state.input[0].press.button, BTN_A) ||
                    CHECK_BTN_ALL(play->state.input[0].press.button, BTN_B)) {

                    if (play->transitionTrigger != TRANS_TRIGGER_START) {
                        Audio_SetCutsceneFlag(0);

                        Audio_PlaySfxGeneral(NA_SE_SY_PIECE_OF_HEART, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

                        gSaveContext.gameMode = GAMEMODE_FILE_SELECT;
                        play->transitionTrigger = TRANS_TRIGGER_START;
                        play->transitionType = TRANS_TYPE_FADE_BLACK;
                    }

                    this->copyrightAlphaStep = 15;
                    this->fadeOutAlphaStep = 25;
                    this->globalState = MAG_STATE_FADE_OUT;
                }
            } else {
                sDelayTimer--;
            }
        }
    }

    if (this->globalState == MAG_STATE_FADE_IN) {
        if (this->effectFadeInState == 0) {
            this->effectAlpha += 6.375f;
            this->effectPrimLodFrac += 0.8f;

            this->effectPrimColor[0] += 6.375f;
            this->effectPrimColor[1] += 3.875f;
            this->effectPrimColor[2] += 2.125f;
            this->effectEnvColor[0] += 6.375f;
            this->effectEnvColor[1] += 3.875f;

            this->effectFadeInTimer--;

            if (this->effectFadeInTimer == 0) {
                this->effectPrimLodFrac = 32.0f;
                this->effectAlpha = 255.0f;

                this->effectPrimColor[0] = 255.0f;
                this->effectPrimColor[1] = 255.0f;
                this->effectPrimColor[2] = 255.0f;
                this->effectEnvColor[0] = 255.0f;
                this->effectEnvColor[1] = 255.0f;

                this->effectFadeInTimer = 40;
                this->effectFadeInState = 1;
            }
        } else if (this->effectFadeInState == 1) {
#if !OOT_MQ
            this->effectPrimColor[2] += -2.125f;
            this->effectEnvColor[1] += -3.875f;
#else
            this->effectPrimColor[0] += -2.125f;
            this->effectEnvColor[0] += -1.375f;
#endif

            this->effectPrimLodFrac += 2.4f;

            this->effectFadeInTimer--;

            if (this->effectFadeInTimer == 0) {
                this->effectPrimLodFrac = 128.0f;

#if !OOT_MQ
                this->effectPrimColor[2] = 170.0f;
                this->effectEnvColor[1] = 100.0f;
#else
                this->effectPrimColor[0] = 170.0f;
                this->effectEnvColor[0] = 200.0f;
#endif

                this->effectFadeInTimer = 32;
                this->effectFadeInState = 2;
            }
        }

        if (this->effectAlpha > 160) {
            this->mainAlpha += VREG(5);
            if (this->mainAlpha >= 210.0f) {
                this->mainAlpha = 210.0f;
            }

            if (this->mainAlpha >= 210) {
                this->subAlpha += VREG(6);
                if (this->subAlpha >= 255.0f) {
                    this->subAlpha = 255.0f;
                }

                if (this->subAlpha >= 200) {
                    this->copyrightAlpha += this->copyrightAlphaStep;
                    if (this->copyrightAlpha >= 255.0f) {
                        this->copyrightAlpha = 255.0f;
                        this->globalState = MAG_STATE_DISPLAY;
                        sDelayTimer = 20;
                    }
                }
            }
        }
    } else if (this->globalState == MAG_STATE_FADE_OUT) {
        this->effectAlpha -= this->fadeOutAlphaStep;
        if (this->effectAlpha < 0.0f) {
            this->effectAlpha = 0.0f;
        }

        this->mainAlpha -= this->fadeOutAlphaStep;
        if (this->mainAlpha < 0.0f) {
            this->mainAlpha = 0.0f;
        }

        this->subAlpha -= this->fadeOutAlphaStep;
        if (this->subAlpha < 0.0f) {
            this->subAlpha = 0.0f;
        }

        this->copyrightAlpha -= this->copyrightAlphaStep;
        if (this->copyrightAlpha < 0.0f) {
            this->copyrightAlpha = 0.0f;
            this->globalState = MAG_STATE_POST_DISPLAY;
        }
    }

    if (this->globalState == MAG_STATE_INITIAL) {
        if (CutsceneFlags_Get(play, 3)) {
            this->effectFadeInTimer = 40;
            this->globalState = MAG_STATE_FADE_IN;
        }
    } else if (this->globalState == MAG_STATE_DISPLAY) {
        if (CutsceneFlags_Get(play, 4)) {
            this->globalState = MAG_STATE_FADE_OUT;
        }
    }
}

void EnMag_DrawTextureI8(Gfx** gfxP, void* texture, s16 texWidth, s16 texHeight, s16 rectLeft, s16 rectTop,
                         s16 rectWidth, s16 rectHeight, u16 dsdx, u16 dtdy) {
    Gfx* gfx = *gfxP;

    gDPLoadTextureBlock(gfx++, texture, G_IM_FMT_I, G_IM_SIZ_8b, texWidth, texHeight, 0, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSPTextureRectangle(gfx++, rectLeft << 2, rectTop << 2, (rectLeft + rectWidth) << 2, (rectTop + rectHeight) << 2,
                        G_TX_RENDERTILE, 0, 0, dsdx, dtdy);

    *gfxP = gfx;
}

void EnMag_DrawEffectTextures(Gfx** gfxP, void* maskTex, void* effectTex, s16 maskWidth, s16 maskHeight,
                              s16 effectWidth, s16 effectHeight, s16 rectLeft, s16 rectTop, s16 rectWidth,
                              s16 rectHeight, u16 dsdx, u16 dtdy, u16 shifts, u16 shiftt, u16 flag, EnMag* this) {
    Gfx* gfx = *gfxP;

    gDPLoadMultiBlock_4b(gfx++, maskTex, 0x0000, G_TX_RENDERTILE, G_IM_FMT_I, maskWidth, maskHeight, 0,
                         G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                         G_TX_NOLOD);

    if (!flag) {
        gDPLoadMultiBlock(gfx++, effectTex, 0x0100, 1, G_IM_FMT_I, G_IM_SIZ_8b, effectWidth, effectHeight, 0,
                          G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, 5, shifts, shiftt);

        gDPSetTileSize(gfx++, 1, 0, this->effectScroll & 0x7F, 31 << 2, (31 << 2) + (this->effectScroll & 0x7F));
    }

    gSPTextureRectangle(gfx++, rectLeft << 2, rectTop << 2, (rectLeft + rectWidth) << 2, (rectTop + rectHeight) << 2,
                        G_TX_RENDERTILE, 0, 0, dsdx, dtdy);

    *gfxP = gfx;
}

void EnMag_DrawImageRGBA32(Gfx** gfxP, s16 centerX, s16 centerY, u8* source, u32 width, u32 height) {
    Gfx* gfx = *gfxP;
    u8* curTexture;
    s32 textureCount;
    u32 rectLeft;
    u32 rectTop;
    u32 textureHeight;
    s32 remainingSize;
    s32 textureSize;
    s32 pad;
    s32 i;

    Gfx_SetupDL_56Ptr(&gfx);

    curTexture = source;
    rectLeft = centerX - (width / 2);
    rectTop = centerY - (height / 2);
    textureHeight = 4096 / (width << 2);
    remainingSize = (width * height) << 2;
    textureSize = (width * textureHeight) << 2;
    textureCount = remainingSize / textureSize;
    if ((remainingSize % textureSize) != 0) {
        textureCount += 1;
    }

    gDPSetTileCustom(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_32b, width, textureHeight, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                     G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    remainingSize -= textureSize;

    for (i = 0; i < textureCount; i++) {
        gDPSetTextureImage(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_32b, width, curTexture);

        gDPLoadSync(gfx++);
        gDPLoadTile(gfx++, G_TX_LOADTILE, 0, 0, (width - 1) << 2, (textureHeight - 1) << 2);

        gSPTextureRectangle(gfx++, rectLeft << 2, rectTop << 2, (rectLeft + (s32)width) << 2,
                            (rectTop + textureHeight) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

        curTexture += textureSize;
        rectTop += textureHeight;

        if ((remainingSize - textureSize) < 0) {
            if (remainingSize > 0) {
                textureHeight = remainingSize / (s32)(width << 2);
                remainingSize -= textureSize;

                gDPSetTileCustom(gfx++, G_IM_FMT_RGBA, G_IM_SIZ_32b, width, textureHeight, 0,
                                 G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK,
                                 G_TX_NOLOD, G_TX_NOLOD);
            }
        } else {
            remainingSize -= textureSize;
        }
    }

    *gfxP = gfx;
}

void EnMag_DrawCharTexture(Gfx** gfxP, u8* texture, s32 rectLeft, s32 rectTop) {
    Gfx* gfx = *gfxP;

    YREG(0) = 1024.0f / (YREG(1) / 100.0f);
    YREG(2) = 16.0f * (YREG(1) / 100.0f);

    gDPLoadTextureBlock_4b(gfx++, texture, G_IM_FMT_I, 16, 16, 0, G_TX_NOMIRROR | G_TX_CLAMP,
                           G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSPTextureRectangle(gfx++, rectLeft << 2, rectTop << 2, (rectLeft + YREG(2)) << 2, (rectTop + YREG(2)) << 2,
                        G_TX_RENDERTILE, 0, 0, YREG(0), YREG(0));

    *gfxP = gfx;
}

// Title logo is shifted to the left in Master Quest
#if !OOT_MQ
#define LOGO_X_SHIFT 0
#define JPN_SUBTITLE_X_SHIFT 0
#else
#define LOGO_X_SHIFT (-8)
#define JPN_SUBTITLE_X_SHIFT (-32)
#endif

void EnMag_DrawInner(Actor* thisx, PlayState* play, Gfx** gfxP) {
    static s16 textAlpha = 0;
    static s16 textFadeDirection = 0;
    static s16 textFadeTimer = 0;
    static u8 noControllerFontIndices[] = {
        FILENAME_UPPERCASE('N'), FILENAME_UPPERCASE('O'), FILENAME_UPPERCASE('C'), FILENAME_UPPERCASE('O'),
        FILENAME_UPPERCASE('N'), FILENAME_UPPERCASE('T'), FILENAME_UPPERCASE('R'), FILENAME_UPPERCASE('O'),
        FILENAME_UPPERCASE('L'), FILENAME_UPPERCASE('L'), FILENAME_UPPERCASE('E'), FILENAME_UPPERCASE('R'),
    };
    static u8 pressStartFontIndices[] = {
        FILENAME_UPPERCASE('P'), FILENAME_UPPERCASE('R'), FILENAME_UPPERCASE('E'), FILENAME_UPPERCASE('S'),
        FILENAME_UPPERCASE('S'), FILENAME_UPPERCASE('S'), FILENAME_UPPERCASE('T'), FILENAME_UPPERCASE('A'),
        FILENAME_UPPERCASE('R'), FILENAME_UPPERCASE('T'),
    };
    static void* effectMaskTextures[] = {
        gTitleEffectMask00Tex, gTitleEffectMask01Tex, gTitleEffectMask02Tex,
        gTitleEffectMask10Tex, gTitleEffectMask11Tex, gTitleEffectMask12Tex,
        gTitleEffectMask20Tex, gTitleEffectMask21Tex, gTitleEffectMask22Tex,
    };
    EnMag* this = (EnMag*)thisx;
    Font* font = &this->font;
    s32 pad;
    Gfx* gfx = *gfxP;
    u16 i, j, k;
    u16 rectLeft;
    u16 rectTop;

    gSPSegment(gfx++, 0x06, play->objectCtx.slots[this->actor.objectSlot].segment);

    Gfx_SetupDL_39Ptr(&gfx);

    this->effectScroll -= 2;

    gDPSetCycleType(gfx++, G_CYC_2CYCLE);
    gDPSetAlphaCompare(gfx++, G_AC_THRESHOLD);
    gDPSetRenderMode(gfx++, G_RM_PASS, G_RM_CLD_SURF2);
    gDPSetCombineLERP(gfx++, TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, TEXEL1, 1, PRIM_LOD_FRAC, TEXEL0, PRIMITIVE,
                      ENVIRONMENT, COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0);

    gDPSetPrimColor(gfx++, 0, (s16)this->effectPrimLodFrac, (s16)this->effectPrimColor[0],
                    (s16)this->effectPrimColor[1], (s16)this->effectPrimColor[2], (s16)this->effectAlpha);
    gDPSetEnvColor(gfx++, (s16)this->effectEnvColor[0], (s16)this->effectEnvColor[1], (s16)this->effectEnvColor[2],
                   255);

    if ((s16)this->effectPrimLodFrac != 0) {
        for (k = 0, i = 0, rectTop = 0; i < 3; i++, rectTop += 64) {
            for (j = 0, rectLeft = 64 + LOGO_X_SHIFT; j < 3; j++, k++, rectLeft += 64) {
                EnMag_DrawEffectTextures(&gfx, effectMaskTextures[k], gTitleFlameEffectTex, 64, 64, 32, 32, rectLeft,
                                         rectTop, 64, 64, 1024, 1024, 1, 1, k, this);
            }
        }
    }

    gDPSetPrimColor(gfx++, 0, 0, 255, 255, 255, (s16)this->mainAlpha);

    if ((s16)this->mainAlpha != 0) {
        EnMag_DrawImageRGBA32(&gfx, 160 + LOGO_X_SHIFT, 100, (u8*)gTitleZeldaShieldLogoTex, 160, 160);
    }

    Gfx_SetupDL_39Ptr(&gfx);

    gDPPipeSync(gfx++);
    gDPSetAlphaCompare(gfx++, G_AC_NONE);
    gDPSetCombineLERP(gfx++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);

    if ((s16)this->mainAlpha < 100) {
        gDPSetRenderMode(gfx++, G_RM_CLD_SURF, G_RM_CLD_SURF2);
    } else {
        gDPSetRenderMode(gfx++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    }

    gDPSetPrimColor(gfx++, 0, 0, 0, 0, 0, (s16)this->mainAlpha);
#if !OOT_MQ
    gDPSetEnvColor(gfx++, 100, 0, 100, 255);
#else
    gDPSetEnvColor(gfx++, 0, 0, 100, 255);
#endif

    if ((s16)this->mainAlpha != 0) {
        EnMag_DrawTextureI8(&gfx, gTitleTheLegendOfTextTex, 72, 8, 154 + LOGO_X_SHIFT, 73, 72, 8, 1024, 1024);
        EnMag_DrawTextureI8(&gfx, gTitleOcarinaOfTimeTMTextTex, 96, 8, 152 + LOGO_X_SHIFT, 127, 96, 8, 1024, 1024);

        gDPPipeSync(gfx++);

#if !OOT_MQ
        gDPSetPrimColor(gfx++, 0, 0, 200, 200, 150, (s16)this->mainAlpha);
        gDPSetEnvColor(gfx++, 100, 100, 50, 255);
#else
        gDPSetPrimColor(gfx++, 0, 0, 100, 150, 255, (s16)this->mainAlpha);
        gDPSetEnvColor(gfx++, 20, 80, 160, 255);
#endif

        EnMag_DrawTextureI8(&gfx, gTitleTheLegendOfTextTex, 72, 8, 153 + LOGO_X_SHIFT, 72, 72, 8, 1024, 1024);
        EnMag_DrawTextureI8(&gfx, gTitleOcarinaOfTimeTMTextTex, 96, 8, 151 + LOGO_X_SHIFT, 126, 96, 8, 1024, 1024);

#if OOT_MQ
        gDPPipeSync(gfx++);
        gDPSetPrimColor(gfx++, 0, 0, 255, 255, 255, (s16)this->subAlpha);
#if OOT_VERSION == OOT_GC_JP_MQ
        EnMag_DrawImageRGBA32(&gfx, 235, 149, (u8*)gTitleUraLogoTex, 40, 40);
#elif OOT_VERSION == OOT_GC_US_MQ
        if (gSaveContext.language == LANGUAGE_JPN) {
            EnMag_DrawImageRGBA32(&gfx, 235, 149, (u8*)gTitleUraLogoTex, 40, 40);
        } else {
            EnMag_DrawImageRGBA32(&gfx, 174, 145, (u8*)gTitleMasterQuestSubtitleTex, 128, 32);
        }
#else
        EnMag_DrawImageRGBA32(&gfx, 174, 145, (u8*)gTitleMasterQuestSubtitleTex, 128, 32);
#endif
#endif
    }

#if OOT_NTSC
    if (gSaveContext.language == LANGUAGE_JPN) {
        this->unk_E30C++;
        gDPPipeSync(gfx++);
        gDPSetCycleType(gfx++, G_CYC_2CYCLE);
        if ((s16)this->subAlpha < 100) {
            gDPSetRenderMode(gfx++, G_RM_PASS, G_RM_CLD_SURF2);
        } else {
            gDPSetRenderMode(gfx++, G_RM_PASS, G_RM_XLU_SURF2);
        }
        gDPSetCombineLERP(gfx++, TEXEL1, PRIMITIVE, PRIM_LOD_FRAC, TEXEL0, 0, 0, 0, TEXEL0, PRIMITIVE, ENVIRONMENT,
                          COMBINED, ENVIRONMENT, COMBINED, 0, PRIMITIVE, 0);

#if !OOT_MQ
        gDPSetPrimColor(gfx++, 0, 0x80, 255, 255, 170, (s16)this->subAlpha);
        gDPSetEnvColor(gfx++, 255, 150, 0, 255);
#else
        gDPSetPrimColor(gfx++, 0, 0x80, 170, 255, 255, (s16)this->subAlpha);
        gDPSetEnvColor(gfx++, ZREG(34), 100 + ZREG(35), 255 + ZREG(36), 255);
#endif

        if ((s16)this->subAlpha != 0) {
            gDPLoadTextureBlock(gfx++, gTitleTitleJPNTex, G_IM_FMT_I, G_IM_SIZ_8b, 128, 16, 0,
                                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP,
                                G_TX_NOMASK, G_TX_NOLOD);
            gDPLoadMultiBlock(gfx++, gTitleFlameEffectTex, 0x100, 1, G_IM_FMT_I, G_IM_SIZ_8b, 32, 32, 0,
                              G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, 2, 1);
            gDPSetTileSize(gfx++, 1, this->unk_E30C & 0x7F, this->effectScroll & 0x7F,
                           (this->unk_E30C & 0x7F) + ((32 - 1) << 2), (this->effectScroll & 0x7F) + ((32 - 1) << 2));
            gSPTextureRectangle(gfx++, 424 + JPN_SUBTITLE_X_SHIFT, 576, 424 + JPN_SUBTITLE_X_SHIFT + 512, 576 + 64,
                                G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);
        }
    }
#endif

    Gfx_SetupDL_39Ptr(&gfx);

    gDPSetAlphaCompare(gfx++, G_AC_NONE);
    gDPSetCombineMode(gfx++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);

    gDPSetPrimColor(gfx++, 0, 0, (s16)this->copyrightAlpha, (s16)this->copyrightAlpha, (s16)this->copyrightAlpha,
                    (s16)this->copyrightAlpha);

    if ((s16)this->copyrightAlpha != 0) {
#if PLATFORM_N64
        gDPLoadTextureBlock(gfx++, gTitleCopyright1998Tex, G_IM_FMT_IA, G_IM_SIZ_8b, 160, 16, 0,
                            G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK,
                            G_TX_NOLOD, G_TX_NOLOD);
#elif OOT_VERSION < OOT_GC_US
        gDPLoadTextureBlock(gfx++, gTitleCopyright19982002Tex, G_IM_FMT_IA, G_IM_SIZ_8b, 160, 16, 0,
                            G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK,
                            G_TX_NOLOD, G_TX_NOLOD);
#elif OOT_NTSC
        if (gSaveContext.language == LANGUAGE_JPN) {
            gDPLoadTextureBlock(gfx++, gTitleCopyright19982002Tex, G_IM_FMT_IA, G_IM_SIZ_8b, 160, 16, 0,
                                G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK,
                                G_TX_NOLOD, G_TX_NOLOD);
        } else {
            gDPLoadTextureBlock(gfx++, gTitleCopyright19982003Tex, G_IM_FMT_IA, G_IM_SIZ_8b, 160, 16, 0,
                                G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK,
                                G_TX_NOLOD, G_TX_NOLOD);
        }
#else
        gDPLoadTextureBlock(gfx++, gTitleCopyright19982003Tex, G_IM_FMT_IA, G_IM_SIZ_8b, 160, 16, 0,
                            G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK,
                            G_TX_NOLOD, G_TX_NOLOD);
#endif

        gSPTextureRectangle(gfx++, 78 << 2, 198 << 2, 238 << 2, 214 << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);
    }

    if (gSaveContext.fileNum == 0xFEDC) {
        // Draw "NO CONTROLLER" Text
        textAlpha = textFadeTimer * 10;
        if (textAlpha >= 255) {
            textAlpha = 255;
        }

        // Text Shadow
        gDPPipeSync(gfx++);
        gDPSetCombineLERP(gfx++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE,
                          0);
        gDPSetPrimColor(gfx++, 0, 0, 0, 0, 0, textAlpha);

        rectLeft = VREG(19) + 1;
        for (i = 0; i < ARRAY_COUNT(noControllerFontIndices); i++) {
            EnMag_DrawCharTexture(&gfx, font->fontBuf + noControllerFontIndices[i] * FONT_CHAR_TEX_SIZE, rectLeft,
                                  YREG(10) + 172);
            rectLeft += VREG(21);
            if (i == 1) {
                rectLeft += VREG(23);
            }
        }

        // Actual Text
        gDPPipeSync(gfx++);
        gDPSetPrimColor(gfx++, 0, 0, 100, 255, 255, textAlpha);

        rectLeft = VREG(19);
        for (i = 0; i < ARRAY_COUNT(noControllerFontIndices); i++) {
            EnMag_DrawCharTexture(&gfx, font->fontBuf + noControllerFontIndices[i] * FONT_CHAR_TEX_SIZE, rectLeft,
                                  YREG(10) + 171);
            rectLeft += VREG(21);
            if (i == 1) {
                rectLeft += VREG(23);
            }
        }
    } else if (this->copyrightAlpha >= 200.0f) {
        // Draw "PRESS START" Text
        textAlpha = textFadeTimer * 10;
        if (textAlpha >= 255) {
            textAlpha = 255;
        }

        // Text Shadow
        gDPPipeSync(gfx++);
        gDPSetCombineLERP(gfx++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE,
                          0);
        gDPSetPrimColor(gfx++, 0, 0, 0, 0, 0, textAlpha);

        rectLeft = YREG(7) + 1;
        for (i = 0; i < ARRAY_COUNT(pressStartFontIndices); i++) {
            EnMag_DrawCharTexture(&gfx, font->fontBuf + pressStartFontIndices[i] * FONT_CHAR_TEX_SIZE, rectLeft,
                                  YREG(10) + 172);
            rectLeft += YREG(8);
            if (i == 4) {
                rectLeft += YREG(9);
            }
        }

        // Actual Text
        gDPPipeSync(gfx++);
        gDPSetPrimColor(gfx++, 0, 0, YREG(4), YREG(5), YREG(6), textAlpha);

        rectLeft = YREG(7);
        for (i = 0; i < ARRAY_COUNT(pressStartFontIndices); i++) {
            EnMag_DrawCharTexture(&gfx, font->fontBuf + pressStartFontIndices[i] * FONT_CHAR_TEX_SIZE, rectLeft,
                                  YREG(10) + 171);
            rectLeft += YREG(8);
            if (i == 4) {
                rectLeft += YREG(9);
            }
        }
    }

    if (textFadeDirection != 0) {
        if (--textFadeTimer == 0) {
            textFadeDirection = 0;
        }
    } else {
        if (++textFadeTimer >= 26) {
            textFadeDirection = 1;
        }
    }

    *gfxP = gfx;
}

void EnMag_Draw(Actor* thisx, PlayState* play) {
    s32 pad;
    Gfx* gfx;
    Gfx* gfxRef;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_mag.c", 1151);

    gfxRef = POLY_OPA_DISP;
    gfx = Gfx_Open(gfxRef);
    gSPDisplayList(OVERLAY_DISP++, gfx);

    EnMag_DrawInner(thisx, play, &gfx);

    gSPEndDisplayList(gfx++);
    Gfx_Close(gfxRef, gfx);
    POLY_OPA_DISP = gfx;

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_mag.c", 1161);
}
