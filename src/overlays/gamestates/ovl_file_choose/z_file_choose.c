#include "file_select.h"
#include "terminal.h"
#include "versions.h"
#if OOT_PAL_N64
#include "assets/objects/object_mag/object_mag.h"
#endif
#include "assets/textures/title_static/title_static.h"
#include "assets/textures/parameter_static/parameter_static.h"
#if PLATFORM_N64
#include "n64dd.h"
#endif

#if OOT_PAL_N64
static s32 sInitialLanguageAlphaAsInt = 100;
static f32 sInitialLanguageAlphaStep = 8.0f;
static f32 sInitialLanguageAlpha = 100.0f;

static s16 sInitialLanguageStickAdjX;
static s16 sInitialLanguageStickXDir;
static s16 sInitialLanguageInputTimerX;

typedef struct InitialLanguageTextureInfo {
    /* 0x00 */ void* texture;
    /* 0x04 */ u16 width;
    /* 0x06 */ u16 height;
    /* 0x08 */ u32 x1;
    /* 0x0C */ u32 y1;
    /* 0x10 */ u32 x2;
    /* 0x14 */ u32 y2;
} InitialLanguageTextureInfo; // size = 0x18

static InitialLanguageTextureInfo sInitialLanguageTextures[] = {
    { gFileSelInitialLanguageChoiceENGTex, 80, 32, 40, 70, 120, 102 },
    { gFileSelInitialLanguageChoiceGERTex, 80, 32, 120, 70, 200, 102 },
    { gFileSelInitialLanguageChoiceFRATex, 80, 32, 200, 70, 280, 102 },
};

typedef struct InitialLanguageCursorInfo {
    /* 0x00 */ u32 x1;
    /* 0x04 */ u32 y1;
    /* 0x08 */ u32 x2;
    /* 0x0C */ u32 y2;
} InitialLanguageCursorInfo; // size = 0x10

static InitialLanguageCursorInfo sInitialLanguageCursors[] = {
    { 48, 52, 120, 124 },
    { 128, 52, 200, 124 },
    { 208, 52, 280, 124 },
};
#endif

static s16 sUnused = 106;

static s16 sScreenFillAlpha = 255;

static Gfx sScreenFillSetupDL[] = {
    gsDPPipeSync(),
    gsSPClearGeometryMode(G_ZBUFFER | G_SHADE | G_CULL_BOTH | G_FOG | G_LIGHTING | G_TEXTURE_GEN |
                          G_TEXTURE_GEN_LINEAR | G_LOD | G_SHADING_SMOOTH),
    gsDPSetOtherMode(G_AD_DISABLE | G_CD_MAGICSQ | G_CK_NONE | G_TC_FILT | G_TF_BILERP | G_TT_NONE | G_TL_TILE |
                         G_TD_CLAMP | G_TP_NONE | G_CYC_1CYCLE | G_PM_1PRIMITIVE,
                     G_AC_NONE | G_ZS_PIXEL | G_RM_CLD_SURF | G_RM_CLD_SURF2),
    gsDPSetCombineMode(G_CC_PRIMITIVE, G_CC_PRIMITIVE),
    gsSPEndDisplayList(),
};

static s16 sFileInfoBoxPartWidths[] = { 36, 36, 36, 36, 24 };

static s16 sWindowContentColors[2][3] = {
    { 100, 150, 255 }, // blue
    { 100, 100, 100 }, // gray
};

#if OOT_PAL_N64
void FileSelect_UpdateInitialLanguageMenu(FileSelectState* this) {
    SramContext* sramCtx = &this->sramCtx;
    Input* input = &this->state.input[0];

    if (gSaveContext.language >= LANGUAGE_MAX) {
        gSaveContext.language = 0;
    }

    sInitialLanguageAlpha += sInitialLanguageAlphaStep;
    if (sInitialLanguageAlphaStep < 0.0f) {
        if (sInitialLanguageAlpha < 100.0f) {
            sInitialLanguageAlpha = 100.0f;
            sInitialLanguageAlphaStep *= -1.0f;
        }
    } else if (sInitialLanguageAlphaStep > 0.0f) {
        if (sInitialLanguageAlpha > 255.0f) {
            sInitialLanguageAlpha = 255.0f;
            sInitialLanguageAlphaStep *= -1.0f;
        }
    }

    sInitialLanguageAlphaAsInt = (s32)sInitialLanguageAlpha;
    sInitialLanguageStickAdjX = (s16)input->rel.stick_x;
    if (sInitialLanguageStickAdjX < -30) {
        if (sInitialLanguageStickXDir == -1) {
            sInitialLanguageInputTimerX -= 1;
            if (sInitialLanguageInputTimerX < 0) {
                sInitialLanguageInputTimerX = 2;
            } else {
                sInitialLanguageStickAdjX = 0;
            }
        } else {
            sInitialLanguageInputTimerX = 10;
            sInitialLanguageStickXDir = -1;
        }
    } else if (sInitialLanguageStickAdjX > 30) {
        if (sInitialLanguageStickXDir == 1) {
            sInitialLanguageInputTimerX -= 1;
            if (sInitialLanguageInputTimerX < 0) {
                sInitialLanguageInputTimerX = 2;
            } else {
                sInitialLanguageStickAdjX = 0;
            }
        } else {
            sInitialLanguageInputTimerX = 10;
            sInitialLanguageStickXDir = 1;
        }
    } else {
        sInitialLanguageStickXDir = 0;
    }

    if (CHECK_BTN_ALL(input->press.button, BTN_A) || CHECK_BTN_ALL(input->press.button, BTN_B) ||
        CHECK_BTN_ALL(input->press.button, BTN_START)) {
        Audio_PlaySfxGeneral(NA_SE_SY_FSEL_DECIDE_L, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        Audio_PlaySfxGeneral(NA_SE_SY_FSEL_DECIDE_L, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        sramCtx->readBuff[2] = gSaveContext.language;
        Sram_WriteSramHeader(sramCtx);
        this->configMode++;
        return;
    }

    if (sInitialLanguageStickAdjX < -30) {
        Audio_PlaySfxGeneral(NA_SE_SY_FSEL_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        gSaveContext.language--;
        if (gSaveContext.language >= LANGUAGE_MAX) {
            gSaveContext.language = LANGUAGE_MAX - 1;
        }
    } else if (sInitialLanguageStickAdjX > 30) {
        Audio_PlaySfxGeneral(NA_SE_SY_FSEL_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        gSaveContext.language++;
        if (gSaveContext.language >= LANGUAGE_MAX) {
            gSaveContext.language = 0;
        }
    }
}

void FileSelect_DrawImageRGBA32(GraphicsContext* gfxCtx, s16 centerX, s16 centerY, u8* source, u32 width, u32 height) {
    u8* curTexture;
    s32 textureCount;
    s32 rectLeft;
    s32 rectTop;
    u32 textureHeight;
    s32 remainingSize;
    s32 textureSize;
    s32 pad;
    s32 i;

    OPEN_DISPS(gfxCtx, "../z_file_choose.c", UNK_LINE);

    Gfx_SetupDL_56Opa(gfxCtx);

    curTexture = source;
    rectLeft = centerX - (width / 2);
    rectTop = centerY - (height / 2);
    remainingSize = (width * height) << 2;
    textureHeight = 4096 / (width << 2);
    textureSize = (width * textureHeight) << 2;
    textureCount = remainingSize / textureSize;
    if ((remainingSize % textureSize) != 0) {
        textureCount++;
    }

    gDPSetTileCustom(POLY_OPA_DISP++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 0, 0, width - 1, textureHeight - 1, 0,
                     G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                     G_TX_NOLOD);

    remainingSize -= textureSize;

    for (i = 0; i < textureCount; i++) {
        gDPSetTextureImage(POLY_OPA_DISP++, G_IM_FMT_RGBA, G_IM_SIZ_32b, width, curTexture);

        gDPLoadSync(POLY_OPA_DISP++);
        gDPLoadTile(POLY_OPA_DISP++, G_TX_LOADTILE, 0, 0, (width - 1) << 2, (textureHeight - 1) << 2);

        gSPTextureRectangle(POLY_OPA_DISP++, rectLeft << 2, rectTop << 2, (rectLeft + (s32)width) << 2,
                            (rectTop + textureHeight) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

        curTexture += textureSize;
        rectTop += textureHeight;

        if ((remainingSize - textureSize) < 0) {
            if (remainingSize > 0) {
                textureHeight = remainingSize / (s32)(width << 2);
                remainingSize -= textureSize;

                gDPSetTileCustom(POLY_OPA_DISP++, G_IM_FMT_RGBA, G_IM_SIZ_32b, 0, 0, width - 1, textureHeight - 1, 0,
                                 G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK,
                                 G_TX_NOLOD, G_TX_NOLOD);
            }
        } else {
            remainingSize -= textureSize;
        }
    }

    CLOSE_DISPS(gfxCtx, "../z_file_choose.c", UNK_LINE);
}

void FileSelect_DrawInitialLanguageMenu(FileSelectState* this) {
    u8* source;
    s32 i;
    s32 y1;
    s32 y2;

    OPEN_DISPS(this->state.gfxCtx, "../z_file_choose.c", UNK_LINE);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 70 + WREG(0));
    FileSelect_DrawImageRGBA32(this->state.gfxCtx, 160, 85 + WREG(1), (u8*)gTitleZeldaShieldLogoTex, 160, 160);

    Gfx_SetupDL_39Opa(this->state.gfxCtx);

    gDPSetAlphaCompare(POLY_OPA_DISP++, G_AC_NONE);
    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);

    gDPLoadTextureBlock(POLY_OPA_DISP++, gTitleCopyright1998Tex, G_IM_FMT_IA, G_IM_SIZ_8b, 128, 16, 0,
                        G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);

    gSPTextureRectangle(POLY_OPA_DISP++, 94 << 2, 198 << 2, 222 << 2, 214 << 2, G_TX_RENDERTILE, 0, 0, 1 << 10,
                        1 << 10);

    Gfx_SetupDL_39Opa(this->state.gfxCtx);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 100, 100, 255, sInitialLanguageAlphaAsInt);

    gDPLoadTextureBlock_4b(POLY_OPA_DISP++, gFileSelInitialLanguageCursorTex, G_IM_FMT_I, 48, 48, 0,
                           G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                           G_TX_NOLOD);

    gSPTextureRectangle(POLY_OPA_DISP++, (sInitialLanguageCursors[gSaveContext.language].x1 + GREG(1)) << 2,
                        (sInitialLanguageCursors[gSaveContext.language].y1 + GREG(2)) << 2,
                        (sInitialLanguageCursors[gSaveContext.language].x2 + GREG(1)) << 2,
                        (sInitialLanguageCursors[gSaveContext.language].y2 + GREG(2)) << 2, G_TX_RENDERTILE, 0, 0,
                        3 << 8, 3 << 8);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetRenderMode(POLY_OPA_DISP++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_BLENDPEDECALA, G_CC_BLENDPEDECALA);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 50, 255);

    for (i = 0; i < LANGUAGE_MAX; i++) {
        gDPPipeSync(POLY_OPA_DISP++);

        if (i == gSaveContext.language) {
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);
        } else {
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 50, 50, 100, 255);
        }

        gDPLoadTextureBlock(POLY_OPA_DISP++, sInitialLanguageTextures[i].texture, G_IM_FMT_IA, G_IM_SIZ_8b,
                            sInitialLanguageTextures[i].width, sInitialLanguageTextures[i].height, 0,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);

        gSPTextureRectangle(POLY_OPA_DISP++, (sInitialLanguageTextures[i].x1 + GREG(1)) << 2,
                            (sInitialLanguageTextures[i].y1 + GREG(2)) << 2,
                            (sInitialLanguageTextures[i].x2 + GREG(1)) << 2,
                            (sInitialLanguageTextures[i].y2 + GREG(2)) << 2, G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);
    }

    gDPPipeSync(POLY_OPA_DISP++);

    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 220, 180, 30, 255);
    gDPSetEnvColor(POLY_OPA_DISP++, 60, 20, 0, 255);

    source = (u8*)gFileSelSelectYourLanguageTex;
    y1 = 120 + GREG(3);
    for (i = 0; i < 8; i++, source += 0x500) {
        y2 = y1 + 8;
        gDPLoadTextureBlock(POLY_OPA_DISP++, source, G_IM_FMT_IA, G_IM_SIZ_8b, 160, 8, 0, G_TX_NOMIRROR | G_TX_WRAP,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

        gSPTextureRectangle(POLY_OPA_DISP++, (80 + GREG(4)) << 2, y1 << 2, (240 + GREG(4)) << 2, y2 << 2,
                            G_TX_RENDERTILE, 0, 0, 1 << 10, 1 << 10);

        y1 = y2;
    }

    CLOSE_DISPS(this->state.gfxCtx, "../z_file_choose.c", UNK_LINE);
}
#endif

void FileSelect_SetView(FileSelectState* this, f32 eyeX, f32 eyeY, f32 eyeZ) {
    Vec3f eye;
    Vec3f lookAt;
    Vec3f up;

    eye.x = eyeX;
    eye.y = eyeY;
    eye.z = eyeZ;

    lookAt.x = lookAt.y = lookAt.z = 0.0f;

    up.x = up.z = 0.0f;
    up.y = 1.0f;

    View_LookAt(&this->view, &eye, &lookAt, &up);
    View_Apply(&this->view, VIEW_ALL | VIEW_FORCE_VIEWING | VIEW_FORCE_VIEWPORT | VIEW_FORCE_PROJECTION_PERSPECTIVE);
}

Gfx* FileSelect_QuadTextureIA8(Gfx* gfx, void* texture, s16 width, s16 height, s16 point) {
    gDPLoadTextureBlock(gfx++, texture, G_IM_FMT_IA, G_IM_SIZ_8b, width, height, 0, G_TX_NOMIRROR | G_TX_WRAP,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSP1Quadrangle(gfx++, point, point + 2, point + 3, point + 1, 0);

    return gfx;
}

void FileSelect_InitModeUpdate(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    SramContext* sramCtx = &this->sramCtx;

#if !OOT_PAL_N64
    if (this->menuMode == FS_MENU_MODE_INIT) {
        this->menuMode = FS_MENU_MODE_CONFIG;
        this->configMode = CM_FADE_IN_START;
        this->nextTitleLabel = FS_TITLE_OPEN_FILE;
        PRINTF("Ｓｒａｍ Ｓｔａｒｔ─Ｌｏａｄ  》》》》》  ");
        Sram_VerifyAndLoadAllSaves(this, sramCtx);
        PRINTF("終了！！！\n");
    }
#else
    if (this->configMode == CM_FADE_IN_START) {
        Sram_VerifyAndLoadAllSaves(this, sramCtx);

        if (!SLOT_OCCUPIED(sramCtx, 0) && !SLOT_OCCUPIED(sramCtx, 1) && !SLOT_OCCUPIED(sramCtx, 2)) {
            this->configMode++; // = CM_FADE_IN_END
        } else {
            this->menuMode = FS_MENU_MODE_CONFIG;
            this->configMode = CM_FADE_IN_START;
            this->nextTitleLabel = FS_TITLE_OPEN_FILE;
        }
    }

    if (this->configMode == CM_FADE_IN_END) {
        sScreenFillAlpha -= 40;
        if (sScreenFillAlpha <= 0) {
            sScreenFillAlpha = 0;
            this->configMode++; // = CM_MAIN_MENU
        }
    } else if (this->configMode == CM_MAIN_MENU) {
        FileSelect_UpdateInitialLanguageMenu(this);
    } else {
        sScreenFillAlpha += 40;
        if (sScreenFillAlpha >= 255) {
            sScreenFillAlpha = 255;
            this->menuMode = FS_MENU_MODE_CONFIG;
            this->configMode = CM_FADE_IN_START;
            this->nextTitleLabel = FS_TITLE_OPEN_FILE;
        }
    }
#endif
}

void FileSelect_InitModeDraw(GameState* thisx) {
#if OOT_PAL_N64
    FileSelectState* this = (FileSelectState*)thisx;

    Gfx_SetupDL_39Opa(this->state.gfxCtx);
    FileSelect_DrawInitialLanguageMenu(this);
#endif
}

/**
 * Fade in the menu window and title label.
 * If a file is occupied fade in the name, name box, and connector.
 * Fade in the copy erase and options button according to the window alpha.
 */
void FileSelect_FadeInMenuElements(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    s16 i;

    this->titleAlpha[0] += VREG(1);
    this->windowAlpha += VREG(2);

    for (i = 0; i < 3; i++) {
        this->fileButtonAlpha[i] = this->windowAlpha;

        if (SLOT_OCCUPIED(sramCtx, i)) {
            this->nameBoxAlpha[i] = this->nameAlpha[i] = this->windowAlpha;
            this->connectorAlpha[i] += VREG(1);
            if (this->connectorAlpha[i] >= 255) {
                this->connectorAlpha[i] = 255;
            }
        }
    }

    this->actionButtonAlpha[FS_BTN_ACTION_COPY] = this->actionButtonAlpha[FS_BTN_ACTION_ERASE] =
        this->optionButtonAlpha = this->windowAlpha;
}

/**
 * Converts a numerical value to ones-tens-hundreds digits
 */
void FileSelect_SplitNumber(u16 value, s16* hundreds, s16* tens, s16* ones) {
    *hundreds = 0;
    *tens = 0;
    *ones = value;

    while (true) {
        if ((*ones - 100) < 0) {
            break;
        }
        (*hundreds)++;
        *ones -= 100;
    }

    while (true) {
        if ((*ones - 10) < 0) {
            break;
        }
        (*tens)++;
        *ones -= 10;
    }
}

/**
 * Reduce the alpha of the black screen fill to create a fade in effect.
 * Additionally, slide the window from the right to the center of the screen.
 * Update function for `CM_FADE_IN_START`
 */
void FileSelect_StartFadeIn(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    FileSelect_FadeInMenuElements(&this->state);
    sScreenFillAlpha -= 40;
    this->windowPosX -= 20;

    if (this->windowPosX <= -94) {
        this->windowPosX = -94;
        this->configMode = CM_FADE_IN_END;
        sScreenFillAlpha = 0;
    }
}

/**
 * Finish fading in the remaining menu elements.
 * Fade in the controls text at the bottom of the screen.
 * Update function for `CM_FADE_IN_END`
 */
void FileSelect_FinishFadeIn(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    this->controlsAlpha += VREG(1);
    FileSelect_FadeInMenuElements(&this->state);

    if (this->titleAlpha[0] >= 255) {
        this->titleAlpha[0] = 255;
        this->controlsAlpha = 255;
        this->windowAlpha = 200;
        this->configMode = CM_MAIN_MENU;
    }
}

/**
 * Update the cursor and wait for the player to select a button to change menus accordingly.
 * If an empty file is selected, enter the name entry config mode.
 * If an occupied file is selected, enter the `Select` menu mode.
 * If copy, erase, or options is selected, set config mode accordingly.
 * Lastly, set any warning labels if appropriate.
 * Update function for `CM_MAIN_MENU`
 */
void FileSelect_UpdateMainMenu(GameState* thisx) {
    static u8 emptyName[] = {
        FILENAME_SPACE, FILENAME_SPACE, FILENAME_SPACE, FILENAME_SPACE,
        FILENAME_SPACE, FILENAME_SPACE, FILENAME_SPACE, FILENAME_SPACE,
    };
    FileSelectState* this = (FileSelectState*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    Input* input = &this->state.input[0];

    if (CHECK_BTN_ALL(input->press.button, BTN_START) || CHECK_BTN_ALL(input->press.button, BTN_A)) {
        if (this->buttonIndex <= FS_BTN_MAIN_FILE_3) {
            PRINTF("REGCK_ALL[%x]=%x,%x,%x,%x,%x,%x\n", this->buttonIndex, GET_NEWF(sramCtx, this->buttonIndex, 0),
                   GET_NEWF(sramCtx, this->buttonIndex, 1), GET_NEWF(sramCtx, this->buttonIndex, 2),
                   GET_NEWF(sramCtx, this->buttonIndex, 3), GET_NEWF(sramCtx, this->buttonIndex, 4),
                   GET_NEWF(sramCtx, this->buttonIndex, 5));

            if (!SLOT_OCCUPIED(sramCtx, this->buttonIndex)) {
                Audio_PlaySfxGeneral(NA_SE_SY_FSEL_DECIDE_L, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                this->configMode = CM_ROTATE_TO_NAME_ENTRY;
                this->kbdButton = FS_KBD_BTN_NONE;

#if OOT_NTSC
                this->charPage = FS_CHAR_PAGE_HIRA;
                if (gSaveContext.language != LANGUAGE_JPN) {
                    this->charPage = FS_CHAR_PAGE_ENG;
                }
#else
                this->charPage = FS_CHAR_PAGE_ENG;
#endif

                this->kbdX = 0;
                this->kbdY = 0;
                this->charIndex = 0;
                this->charBgAlpha = 0;
                this->newFileNameCharCount = 0;
                this->nameEntryBoxPosX = 120;
                this->nameEntryBoxAlpha = 0;
                MemCpy(&this->fileNames[this->buttonIndex][0], &emptyName, sizeof(emptyName));
            } else if (this->n64ddFlags[this->buttonIndex] == this->n64ddFlag) {
                Audio_PlaySfxGeneral(NA_SE_SY_FSEL_DECIDE_L, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                this->actionTimer = 8;
                this->selectMode = SM_FADE_MAIN_TO_SELECT;
                this->selectedFileIndex = this->buttonIndex;
                this->menuMode = FS_MENU_MODE_SELECT;
                this->nextTitleLabel = FS_TITLE_OPEN_FILE;
            } else if (!this->n64ddFlags[this->buttonIndex]) {
                Audio_PlaySfxGeneral(NA_SE_SY_FSEL_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            } else {
#if PLATFORM_N64
                if (D_80121212 != 0) {
                    func_801C7268();
                    // Setting ioData to 1 and writing it to ioPort 7 will skip the harp intro
                    Audio_PlaySequenceWithSeqPlayerIO(SEQ_PLAYER_BGM_MAIN, NA_BGM_FILE_SELECT, 0, 7, 1);
                }
#endif
            }
        } else {
            if (this->warningLabel == FS_WARNING_NONE) {
                Audio_PlaySfxGeneral(NA_SE_SY_FSEL_DECIDE_L, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
                this->prevConfigMode = this->configMode;

                if (this->buttonIndex == FS_BTN_MAIN_COPY) {
                    this->configMode = CM_SETUP_COPY_SOURCE;
                    this->nextTitleLabel = FS_TITLE_COPY_FROM;
                } else if (this->buttonIndex == FS_BTN_MAIN_ERASE) {
                    this->configMode = CM_SETUP_ERASE_SELECT;
                    this->nextTitleLabel = FS_TITLE_ERASE_FILE;
                } else {
                    this->configMode = CM_MAIN_TO_OPTIONS;
                    this->kbdButton = FS_KBD_BTN_HIRA;
                    this->kbdX = 0;
                    this->kbdY = 0;
                    this->charBgAlpha = 0;
                    this->newFileNameCharCount = 0;
                    this->nameEntryBoxPosX = 120;
                }

                this->actionTimer = 8;
            } else {
                Audio_PlaySfxGeneral(NA_SE_SY_FSEL_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                     &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            }
        }
    } else {
        if (ABS(this->stickAdjY) > 30) {
            Audio_PlaySfxGeneral(NA_SE_SY_FSEL_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);

            if (this->stickAdjY > 30) {
                this->buttonIndex--;
                if (this->buttonIndex < FS_BTN_MAIN_FILE_1) {
                    this->buttonIndex = FS_BTN_MAIN_OPTIONS;
                }
            } else {
                this->buttonIndex++;
                if (this->buttonIndex > FS_BTN_MAIN_OPTIONS) {
                    this->buttonIndex = FS_BTN_MAIN_FILE_1;
                }
            }
        }

        if (this->buttonIndex == FS_BTN_MAIN_COPY) {
            if (!SLOT_OCCUPIED(sramCtx, 0) && !SLOT_OCCUPIED(sramCtx, 1) && !SLOT_OCCUPIED(sramCtx, 2)) {
                this->warningButtonIndex = this->buttonIndex;
                this->warningLabel = FS_WARNING_NO_FILE_COPY;
                this->emptyFileTextAlpha = 255;
            } else if (SLOT_OCCUPIED(sramCtx, 0) && SLOT_OCCUPIED(sramCtx, 1) && SLOT_OCCUPIED(sramCtx, 2)) {
                this->warningButtonIndex = this->buttonIndex;
                this->warningLabel = FS_WARNING_NO_EMPTY_FILES;
                this->emptyFileTextAlpha = 255;
            } else {
                this->warningLabel = FS_WARNING_NONE;
            }
        } else if (this->buttonIndex == FS_BTN_MAIN_ERASE) {
            if (!SLOT_OCCUPIED(sramCtx, 0) && !SLOT_OCCUPIED(sramCtx, 1) && !SLOT_OCCUPIED(sramCtx, 2)) {
                this->warningButtonIndex = this->buttonIndex;
                this->warningLabel = FS_WARNING_NO_FILE_ERASE;
                this->emptyFileTextAlpha = 255;
            } else {
                this->warningLabel = FS_WARNING_NONE;
            }
        } else {
            this->warningLabel = FS_WARNING_NONE;
        }
    }
}

/**
 * Update function for `CM_UNUSED_31`
 */
void FileSelect_UnusedCM31(GameState* thisx) {
}

/**
 * Delay the next config mode from running until `XREG(73)` reaches 254.
 * Because the timer increments by 2, the delay is 127 frames (assuming the value was not changed by reg editor).
 * Unused in the final game, was possibly used for debugging.
 * Update function for `CM_UNUSED_DELAY`
 */
void FileSelect_UnusedCMDelay(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    XREG(73) += 2;

    if (XREG(73) == 254) {
        this->configMode = this->nextConfigMode;
        XREG(73) = 0;
    }
}

/**
 * Rotate the window from the main menu to the name entry menu.
 * Update function for `CM_ROTATE_TO_NAME_ENTRY`
 */
void FileSelect_RotateToNameEntry(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    this->windowRot += VREG(16);

    if (this->windowRot >= 314.0f) {
        this->windowRot = 314.0f;
        this->configMode = CM_START_NAME_ENTRY;
    }
}

/**
 * Rotate the window from the main menu to the options menu.
 * Update function for `CM_MAIN_TO_OPTIONS`
 */
void FileSelect_RotateToOptions(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    this->windowRot += VREG(16);

    if (this->windowRot >= 314.0f) {
        this->windowRot = 314.0f;
        this->configMode = CM_START_OPTIONS;
    }
}

/**
 * Rotate the window from the options menu to the main menu.
 * Update function for `CM_NAME_ENTRY_TO_MAIN` and `CM_OPTIONS_TO_MAIN`
 */
void FileSelect_RotateToMain(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    this->windowRot += VREG(16);

    if (this->windowRot >= 628.0f) {
        this->windowRot = 0.0f;
        this->configMode = CM_MAIN_MENU;
    }
}

static void (*sConfigModeUpdateFuncs[])(GameState*) = {
    FileSelect_StartFadeIn,        FileSelect_FinishFadeIn,
    FileSelect_UpdateMainMenu,     FileSelect_SetupCopySource,
    FileSelect_SelectCopySource,   FileSelect_SetupCopyDest1,
    FileSelect_SetupCopyDest2,     FileSelect_SelectCopyDest,
    FileSelect_ExitToCopySource1,  FileSelect_ExitToCopySource2,
    FileSelect_SetupCopyConfirm1,  FileSelect_SetupCopyConfirm2,
    FileSelect_CopyConfirm,        FileSelect_ReturnToCopyDest,
    FileSelect_CopyAnim1,          FileSelect_CopyAnim2,
    FileSelect_CopyAnim3,          FileSelect_CopyAnim4,
    FileSelect_CopyAnim5,          FileSelect_ExitCopyToMain,
    FileSelect_SetupEraseSelect,   FileSelect_EraseSelect,
    FileSelect_SetupEraseConfirm1, FileSelect_SetupEraseConfirm2,
    FileSelect_EraseConfirm,       FileSelect_ExitToEraseSelect1,
    FileSelect_ExitToEraseSelect2, FileSelect_EraseAnim1,
    FileSelect_EraseAnim2,         FileSelect_EraseAnim3,
    FileSelect_ExitEraseToMain,    FileSelect_UnusedCM31,
    FileSelect_RotateToNameEntry,  FileSelect_UpdateKeyboardCursor,
    FileSelect_StartNameEntry,     FileSelect_RotateToMain,
    FileSelect_RotateToOptions,    FileSelect_UpdateOptionsMenu,
    FileSelect_StartOptions,       FileSelect_RotateToMain,
    FileSelect_UnusedCMDelay,
};

/**
 * Updates the alpha of the cursor to make it pulsate.
 * On the debug rom, this function also handles switching languages with controller 3.
 */
void FileSelect_PulsateCursor(GameState* thisx) {
    static s16 cursorAlphaTargets[] = { 70, 200 };
    FileSelectState* this = (FileSelectState*)thisx;
    s16 alphaStep;
    SramContext* sramCtx = &this->sramCtx;
    Input* debugInput = &this->state.input[2];

#if OOT_PAL && DEBUG_FEATURES
    if (CHECK_BTN_ALL(debugInput->press.button, BTN_DLEFT)) {
        sramCtx->readBuff[SRAM_HEADER_LANGUAGE] = gSaveContext.language = LANGUAGE_ENG;
        *((u8*)0x80000002) = LANGUAGE_ENG;

        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, 3, OS_WRITE);
        PRINTF("1:read_buff[]=%x, %x, %x, %x\n", sramCtx->readBuff[SRAM_HEADER_SOUND],
               sramCtx->readBuff[SRAM_HEADER_ZTARGET], sramCtx->readBuff[SRAM_HEADER_LANGUAGE],
               sramCtx->readBuff[SRAM_HEADER_MAGIC]);

        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, SRAM_SIZE, OS_READ);
        PRINTF("read_buff[]=%x, %x, %x, %x\n", sramCtx->readBuff[SRAM_HEADER_SOUND],
               sramCtx->readBuff[SRAM_HEADER_ZTARGET], sramCtx->readBuff[SRAM_HEADER_LANGUAGE],
               sramCtx->readBuff[SRAM_HEADER_MAGIC]);
    } else if (CHECK_BTN_ALL(debugInput->press.button, BTN_DUP)) {
        sramCtx->readBuff[SRAM_HEADER_LANGUAGE] = gSaveContext.language = LANGUAGE_GER;
        *((u8*)0x80000002) = LANGUAGE_GER;

        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, 3, OS_WRITE);
        PRINTF("1:read_buff[]=%x, %x, %x, %x\n", sramCtx->readBuff[SRAM_HEADER_SOUND],
               sramCtx->readBuff[SRAM_HEADER_ZTARGET], sramCtx->readBuff[SRAM_HEADER_LANGUAGE],
               sramCtx->readBuff[SRAM_HEADER_MAGIC]);
        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, SRAM_SIZE, OS_READ);
        PRINTF("read_buff[]=%x, %x, %x, %x\n", sramCtx->readBuff[SRAM_HEADER_SOUND],
               sramCtx->readBuff[SRAM_HEADER_ZTARGET], sramCtx->readBuff[SRAM_HEADER_LANGUAGE],
               sramCtx->readBuff[SRAM_HEADER_MAGIC]);
    } else if (CHECK_BTN_ALL(debugInput->press.button, BTN_DRIGHT)) {
        sramCtx->readBuff[SRAM_HEADER_LANGUAGE] = gSaveContext.language = LANGUAGE_FRA;
        *((u8*)0x80000002) = LANGUAGE_FRA;

        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, 3, OS_WRITE);
        PRINTF("1:read_buff[]=%x, %x, %x, %x\n", sramCtx->readBuff[SRAM_HEADER_SOUND],
               sramCtx->readBuff[SRAM_HEADER_ZTARGET], sramCtx->readBuff[SRAM_HEADER_LANGUAGE],
               sramCtx->readBuff[SRAM_HEADER_MAGIC]);

        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, SRAM_SIZE, OS_READ);
        PRINTF("read_buff[]=%x, %x, %x, %x\n", sramCtx->readBuff[SRAM_HEADER_SOUND],
               sramCtx->readBuff[SRAM_HEADER_ZTARGET], sramCtx->readBuff[SRAM_HEADER_LANGUAGE],
               sramCtx->readBuff[SRAM_HEADER_MAGIC]);
    }
#endif

    alphaStep = ABS(this->highlightColor[3] - cursorAlphaTargets[this->highlightPulseDir]) / XREG(35);

    if (this->highlightColor[3] >= cursorAlphaTargets[this->highlightPulseDir]) {
        this->highlightColor[3] -= alphaStep;
    } else {
        this->highlightColor[3] += alphaStep;
    }

    XREG(35)--;

    if (XREG(35) == 0) {
        this->highlightColor[3] = cursorAlphaTargets[this->highlightPulseDir];
        XREG(35) = XREG(36 + this->highlightPulseDir);
        this->highlightPulseDir ^= 1;
    }
}

void FileSelect_ConfigModeUpdate(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    sConfigModeUpdateFuncs[this->configMode](&this->state);
}

void FileSelect_SetWindowVtx(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    s16 i;
    s16 j;
    s16 x;
    s16 tmp;
    s16 tmp2;
    s16 tmp3;

    this->windowVtx = GRAPH_ALLOC(this->state.gfxCtx, sizeof(Vtx) * 80);
    tmp = this->windowPosX - 90;

    for (x = 0, i = 0; i < 4; i++) {
        tmp += 0x40;
        tmp2 = (i == 3) ? 0x30 : 0x40;

        for (j = 0, tmp3 = 0x50; j < 5; j++, x += 4, tmp3 -= 0x20) {
            this->windowVtx[x].v.ob[0] = this->windowVtx[x + 2].v.ob[0] = tmp;

            this->windowVtx[x + 1].v.ob[0] = this->windowVtx[x + 3].v.ob[0] = tmp + tmp2;

            this->windowVtx[x].v.ob[1] = this->windowVtx[x + 1].v.ob[1] = tmp3;

            this->windowVtx[x + 2].v.ob[1] = this->windowVtx[x + 3].v.ob[1] = tmp3 - 0x20;

            this->windowVtx[x].v.ob[2] = this->windowVtx[x + 1].v.ob[2] = this->windowVtx[x + 2].v.ob[2] =
                this->windowVtx[x + 3].v.ob[2] = 0;

            this->windowVtx[x].v.flag = this->windowVtx[x + 1].v.flag = this->windowVtx[x + 2].v.flag =
                this->windowVtx[x + 3].v.flag = 0;

            this->windowVtx[x].v.tc[0] = this->windowVtx[x].v.tc[1] = this->windowVtx[x + 1].v.tc[1] =
                this->windowVtx[x + 2].v.tc[0] = 0;

            this->windowVtx[x + 1].v.tc[0] = this->windowVtx[x + 3].v.tc[0] = tmp2 * 0x20;

            this->windowVtx[x + 2].v.tc[1] = this->windowVtx[x + 3].v.tc[1] = 0x400;

            this->windowVtx[x].v.cn[0] = this->windowVtx[x + 2].v.cn[0] = this->windowVtx[x].v.cn[1] =
                this->windowVtx[x + 2].v.cn[1] = this->windowVtx[x].v.cn[2] = this->windowVtx[x + 2].v.cn[2] =
                    this->windowVtx[x + 1].v.cn[0] = this->windowVtx[x + 3].v.cn[0] = this->windowVtx[x + 1].v.cn[1] =
                        this->windowVtx[x + 3].v.cn[1] = this->windowVtx[x + 1].v.cn[2] =
                            this->windowVtx[x + 3].v.cn[2] = this->windowVtx[x].v.cn[3] =
                                this->windowVtx[x + 2].v.cn[3] = this->windowVtx[x + 1].v.cn[3] =
                                    this->windowVtx[x + 3].v.cn[3] = 255;
        }
    }
}

static s16 D_80812818[] = { 0x001A, 0x000A, 0x000A, 0x000A };
static s16 D_80812820[] = { 0x0020, 0x000C, 0x000C, 0x000C };
static s16 D_80812828[] = { 0x0010, 0x000C, 0x000C, 0x000C };
static s16 D_80812830[] = { 0x0040, 0x0054, 0x0068, 0x0274, 0x0278, 0x027C };
static s16 D_8081283C[] = { 0x0040, 0x0054, 0x0068, 0x0278 };
static s16 D_80812844[] = { 0x0274, 0x0278 };
static s16 D_80812848[] = { 0x0274, 0x0278 };

void FileSelect_SetWindowContentVtx(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    s16 phi_t2;
    s16 phi_t0;
    s16 phi_t5;
    s16 phi_a1;
    s16 phi_ra;
    s16 temp_t1;
#if OOT_PAL_N64
    u8 fileNameChar;
#endif

    this->windowContentVtx = GRAPH_ALLOC(this->state.gfxCtx, 0x288 * sizeof(Vtx));

    for (phi_t2 = 0; phi_t2 < 0x288; phi_t2 += 4) {
        this->windowContentVtx[phi_t2].v.ob[0] = this->windowContentVtx[phi_t2 + 2].v.ob[0] = 0x12C;
        this->windowContentVtx[phi_t2 + 1].v.ob[0] = this->windowContentVtx[phi_t2 + 3].v.ob[0] =
            this->windowContentVtx[phi_t2].v.ob[0] + 0x10;

        this->windowContentVtx[phi_t2].v.ob[1] = this->windowContentVtx[phi_t2 + 1].v.ob[1] = 0;
        this->windowContentVtx[phi_t2 + 2].v.ob[1] = this->windowContentVtx[phi_t2 + 3].v.ob[1] =
            this->windowContentVtx[phi_t2].v.ob[1] - 0x10;

        this->windowContentVtx[phi_t2].v.ob[2] = this->windowContentVtx[phi_t2 + 1].v.ob[2] =
            this->windowContentVtx[phi_t2 + 2].v.ob[2] = this->windowContentVtx[phi_t2 + 3].v.ob[2] = 0;

        this->windowContentVtx[phi_t2].v.flag = this->windowContentVtx[phi_t2 + 1].v.flag =
            this->windowContentVtx[phi_t2 + 2].v.flag = this->windowContentVtx[phi_t2 + 3].v.flag = 0;

        this->windowContentVtx[phi_t2].v.tc[0] = this->windowContentVtx[phi_t2].v.tc[1] =
            this->windowContentVtx[phi_t2 + 1].v.tc[1] = this->windowContentVtx[phi_t2 + 2].v.tc[0] = 0;

        this->windowContentVtx[phi_t2 + 1].v.tc[0] = this->windowContentVtx[phi_t2 + 2].v.tc[1] =
            this->windowContentVtx[phi_t2 + 3].v.tc[0] = this->windowContentVtx[phi_t2 + 3].v.tc[1] = 0x200;

        this->windowContentVtx[phi_t2].v.cn[0] = this->windowContentVtx[phi_t2 + 1].v.cn[0] =
            this->windowContentVtx[phi_t2 + 2].v.cn[0] = this->windowContentVtx[phi_t2 + 3].v.cn[0] =
                this->windowContentVtx[phi_t2].v.cn[1] = this->windowContentVtx[phi_t2 + 1].v.cn[1] =
                    this->windowContentVtx[phi_t2 + 2].v.cn[1] = this->windowContentVtx[phi_t2 + 3].v.cn[1] =
                        this->windowContentVtx[phi_t2].v.cn[2] = this->windowContentVtx[phi_t2 + 1].v.cn[2] =
                            this->windowContentVtx[phi_t2 + 2].v.cn[2] = this->windowContentVtx[phi_t2 + 3].v.cn[2] =
                                this->windowContentVtx[phi_t2].v.cn[3] = this->windowContentVtx[phi_t2 + 1].v.cn[3] =
                                    this->windowContentVtx[phi_t2 + 2].v.cn[3] =
                                        this->windowContentVtx[phi_t2 + 3].v.cn[3] = 0xFF;
    }

    this->windowContentVtx[0].v.ob[0] = this->windowContentVtx[2].v.ob[0] = this->windowPosX;
    this->windowContentVtx[1].v.ob[0] = this->windowContentVtx[3].v.ob[0] = this->windowContentVtx[0].v.ob[0] + 0x80;
    this->windowContentVtx[0].v.ob[1] = this->windowContentVtx[1].v.ob[1] = 0x48;
    this->windowContentVtx[2].v.ob[1] = this->windowContentVtx[3].v.ob[1] = this->windowContentVtx[0].v.ob[1] - 0x10;
    this->windowContentVtx[1].v.tc[0] = this->windowContentVtx[3].v.tc[0] = 0x1000;

    for (phi_a1 = 0, phi_t2 = 4; phi_a1 < 3; phi_a1++) {
        phi_t0 = this->windowPosX - 6;

        for (phi_t5 = 0; phi_t5 < 5; phi_t5++, phi_t2 += 4) {
            this->windowContentVtx[phi_t2].v.ob[0] = this->windowContentVtx[phi_t2 + 2].v.ob[0] = phi_t0;
            this->windowContentVtx[phi_t2 + 1].v.ob[0] = this->windowContentVtx[phi_t2 + 3].v.ob[0] =
                this->windowContentVtx[phi_t2].v.ob[0] + sFileInfoBoxPartWidths[phi_t5];

            this->windowContentVtx[phi_t2].v.ob[1] = this->windowContentVtx[phi_t2 + 1].v.ob[1] =
                this->fileNamesY[phi_a1] + 0x2C;

            this->windowContentVtx[phi_t2 + 2].v.ob[1] = this->windowContentVtx[phi_t2 + 3].v.ob[1] =
                this->windowContentVtx[phi_t2].v.ob[1] - 0x38;

            this->windowContentVtx[phi_t2 + 1].v.tc[0] = this->windowContentVtx[phi_t2 + 3].v.tc[0] =
                sFileInfoBoxPartWidths[phi_t5] << 5;
            this->windowContentVtx[phi_t2 + 2].v.tc[1] = this->windowContentVtx[phi_t2 + 3].v.tc[1] = 0x700;
            phi_t0 += sFileInfoBoxPartWidths[phi_t5];
        }
    }

    phi_t0 = this->windowPosX - 6;
    phi_ra = 0x2C;

    for (phi_t5 = 0; phi_t5 < 3; phi_t5++, phi_t2 += 20, phi_ra -= 0x10) {
        this->windowContentVtx[phi_t2].v.ob[0] = this->windowContentVtx[phi_t2 + 2].v.ob[0] = phi_t0;

        this->windowContentVtx[phi_t2 + 1].v.ob[0] = this->windowContentVtx[phi_t2 + 3].v.ob[0] =
            this->windowContentVtx[phi_t2].v.ob[0] + 0x40;

        this->windowContentVtx[phi_t2].v.ob[1] = this->windowContentVtx[phi_t2 + 1].v.ob[1] =
            this->buttonYOffsets[phi_t5] + phi_ra;
        this->windowContentVtx[phi_t2 + 2].v.ob[1] = this->windowContentVtx[phi_t2 + 3].v.ob[1] =
            this->windowContentVtx[phi_t2].v.ob[1] - 0x10;

        this->windowContentVtx[phi_t2 + 1].v.tc[0] = this->windowContentVtx[phi_t2 + 3].v.tc[0] = 0x800;

        this->windowContentVtx[phi_t2 + 4].v.ob[0] = this->windowContentVtx[phi_t2 + 6].v.ob[0] = phi_t0 + 0x40;

        this->windowContentVtx[phi_t2 + 5].v.ob[0] = this->windowContentVtx[phi_t2 + 7].v.ob[0] =
            this->windowContentVtx[phi_t2 + 4].v.ob[0] + 0x6C;

        this->windowContentVtx[phi_t2 + 4].v.ob[1] = this->windowContentVtx[phi_t2 + 5].v.ob[1] =
            this->buttonYOffsets[phi_t5] + phi_ra;

        this->windowContentVtx[phi_t2 + 6].v.ob[1] = this->windowContentVtx[phi_t2 + 7].v.ob[1] =
            this->windowContentVtx[phi_t2 + 4].v.ob[1] - 0x10;

        this->windowContentVtx[phi_t2 + 5].v.tc[0] = this->windowContentVtx[phi_t2 + 7].v.tc[0] = 0xD80;

        if ((this->configMode == CM_COPY_ANIM_2) && (phi_t5 == this->copyDestFileIndex)) {
            temp_t1 = this->fileNamesY[phi_t5] + 0x2C;
        } else if (((this->configMode == CM_COPY_ANIM_3) || (this->configMode == CM_COPY_ANIM_4)) &&
                   (phi_t5 == this->copyDestFileIndex)) {
            temp_t1 = this->buttonYOffsets[phi_t5] + phi_ra;
        } else {
            temp_t1 = phi_ra + this->buttonYOffsets[phi_t5] + this->fileNamesY[phi_t5];
        }

        this->windowContentVtx[phi_t2 + 8].v.ob[0] = this->windowContentVtx[phi_t2 + 10].v.ob[0] = phi_t0 + 0xA8;

        this->windowContentVtx[phi_t2 + 9].v.ob[0] = this->windowContentVtx[phi_t2 + 11].v.ob[0] =
            this->windowContentVtx[phi_t2 + 8].v.ob[0] + 0x2C;

        this->windowContentVtx[phi_t2 + 8].v.ob[1] = this->windowContentVtx[phi_t2 + 9].v.ob[1] = temp_t1;
        this->windowContentVtx[phi_t2 + 10].v.ob[1] = this->windowContentVtx[phi_t2 + 11].v.ob[1] =
            this->windowContentVtx[phi_t2 + 8].v.ob[1] - 0x10;

        this->windowContentVtx[phi_t2 + 9].v.tc[0] = this->windowContentVtx[phi_t2 + 11].v.tc[0] = 0x580;
        this->windowContentVtx[phi_t2 + 12].v.ob[0] = this->windowContentVtx[phi_t2 + 14].v.ob[0] = phi_t0 + 0x34;
        this->windowContentVtx[phi_t2 + 13].v.ob[0] = this->windowContentVtx[phi_t2 + 15].v.ob[0] =
            this->windowContentVtx[phi_t2 + 12].v.ob[0] + 0x18;

        this->windowContentVtx[phi_t2 + 12].v.ob[1] = this->windowContentVtx[phi_t2 + 13].v.ob[1] =
            this->buttonYOffsets[phi_t5] + phi_ra;

        this->windowContentVtx[phi_t2 + 14].v.ob[1] = this->windowContentVtx[phi_t2 + 15].v.ob[1] =
            this->windowContentVtx[phi_t2 + 12].v.ob[1] - 0x10;

        this->windowContentVtx[phi_t2 + 13].v.tc[0] = this->windowContentVtx[phi_t2 + 15].v.tc[0] = 0x300;
        this->windowContentVtx[phi_t2 + 16].v.ob[0] = this->windowContentVtx[phi_t2 + 18].v.ob[0] = phi_t0 + 0x9C;
        this->windowContentVtx[phi_t2 + 17].v.ob[0] = this->windowContentVtx[phi_t2 + 19].v.ob[0] =
            this->windowContentVtx[phi_t2 + 16].v.ob[0] + 0x18;

        this->windowContentVtx[phi_t2 + 16].v.ob[1] = this->windowContentVtx[phi_t2 + 17].v.ob[1] =
            this->buttonYOffsets[phi_t5] + phi_ra;

        this->windowContentVtx[phi_t2 + 18].v.ob[1] = this->windowContentVtx[phi_t2 + 19].v.ob[1] =
            this->windowContentVtx[phi_t2 + 16].v.ob[1] - 0x10;

        this->windowContentVtx[phi_t2 + 17].v.tc[0] = this->windowContentVtx[phi_t2 + 19].v.tc[0] = 0x300;
    }

    phi_ra = 0x2C;

    for (phi_t5 = 0; phi_t5 < 3; phi_t5++, phi_ra -= WREG(38)) {
        if (SLOT_OCCUPIED(sramCtx, phi_t5)) {
            phi_t0 = this->windowPosX - WREG(39);

            if ((this->configMode == 0xF) && (phi_t5 == this->copyDestFileIndex)) {
                temp_t1 = this->fileNamesY[phi_t5] + 0x2C;
            } else if (((this->configMode == CM_COPY_ANIM_3) || (this->configMode == CM_COPY_ANIM_4)) &&
                       (phi_t5 == this->copyDestFileIndex)) {
                temp_t1 = this->buttonYOffsets[phi_t5] + phi_ra;
            } else {
                temp_t1 = phi_ra + this->buttonYOffsets[phi_t5] + this->fileNamesY[phi_t5];
            }

            temp_t1 += 2;

            for (phi_a1 = 0; phi_a1 < 8; phi_a1++, phi_t2 += 4, phi_t0 += WREG(40)) {
#if OOT_VERSION == PAL_1_1
                fileNameChar = this->fileNames[phi_t5][phi_a1];
                this->windowContentVtx[phi_t2].v.ob[0] = this->windowContentVtx[phi_t2 + 2].v.ob[0] =
                    phi_t0 + 0x40 + WREG(41) + D_808124C0[fileNameChar];
#else
                this->windowContentVtx[phi_t2].v.ob[0] = this->windowContentVtx[phi_t2 + 2].v.ob[0] =
                    phi_t0 + 0x40 + WREG(41);
#endif
                this->windowContentVtx[phi_t2 + 1].v.ob[0] = this->windowContentVtx[phi_t2 + 3].v.ob[0] =
                    this->windowContentVtx[phi_t2].v.ob[0] + WREG(42);
                this->windowContentVtx[phi_t2].v.ob[1] = this->windowContentVtx[phi_t2 + 1].v.ob[1] = temp_t1 - 3;
                this->windowContentVtx[phi_t2 + 2].v.ob[1] = this->windowContentVtx[phi_t2 + 3].v.ob[1] =
                    this->windowContentVtx[phi_t2].v.ob[1] - WREG(43);
            }

            phi_t0 = this->windowPosX - 14;
            temp_t1 -= 0x16;

            for (phi_a1 = 0; phi_a1 < 4; phi_a1++, phi_t2 += 4) {
                this->windowContentVtx[phi_t2].v.ob[0] = this->windowContentVtx[phi_t2 + 2].v.ob[0] = phi_t0;
                this->windowContentVtx[phi_t2 + 1].v.ob[0] = this->windowContentVtx[phi_t2 + 3].v.ob[0] =
                    this->windowContentVtx[phi_t2].v.ob[0] + D_80812820[phi_a1];
                this->windowContentVtx[phi_t2].v.ob[1] = this->windowContentVtx[phi_t2 + 1].v.ob[1] = temp_t1;
                this->windowContentVtx[phi_t2 + 2].v.ob[1] = this->windowContentVtx[phi_t2 + 3].v.ob[1] =
                    this->windowContentVtx[phi_t2].v.ob[1] - D_80812828[phi_a1];
                phi_t0 += D_80812818[phi_a1];
            }

            this->windowContentVtx[phi_t2 - 15].v.tc[0] = this->windowContentVtx[phi_t2 - 13].v.tc[0] = 0x400;

            phi_t0 = this->windowPosX + 63;
            temp_t1 += 4;

            for (phi_a1 = 0; phi_a1 < 20; phi_a1++, phi_t2 += 4, phi_t0 += 9) {
                this->windowContentVtx[phi_t2].v.ob[0] = this->windowContentVtx[phi_t2 + 2].v.ob[0] = phi_t0;
                this->windowContentVtx[phi_t2 + 1].v.ob[0] = this->windowContentVtx[phi_t2 + 3].v.ob[0] =
                    this->windowContentVtx[phi_t2].v.ob[0] + 0xA;
                this->windowContentVtx[phi_t2].v.ob[1] = this->windowContentVtx[phi_t2 + 1].v.ob[1] = temp_t1;
                this->windowContentVtx[phi_t2 + 2].v.ob[1] = this->windowContentVtx[phi_t2 + 3].v.ob[1] =
                    this->windowContentVtx[phi_t2].v.ob[1] - 0xA;

                if (phi_a1 == 9) {
                    phi_t0 = this->windowPosX + 54;
                    temp_t1 -= 8;
                }
            }

            phi_t0 = this->windowPosX + 4;
            temp_t1 -= 0xA;

            for (phi_a1 = 0; phi_a1 < 10; phi_a1++, phi_t2 += 4, phi_t0 += 0x10) {
                this->windowContentVtx[phi_t2].v.ob[0] = this->windowContentVtx[phi_t2 + 2].v.ob[0] = phi_t0;
                this->windowContentVtx[phi_t2 + 1].v.ob[0] = this->windowContentVtx[phi_t2 + 3].v.ob[0] =
                    this->windowContentVtx[phi_t2].v.ob[0] + 0x10;
                this->windowContentVtx[phi_t2].v.ob[1] = this->windowContentVtx[phi_t2 + 1].v.ob[1] = temp_t1;
                this->windowContentVtx[phi_t2 + 2].v.ob[1] = this->windowContentVtx[phi_t2 + 3].v.ob[1] =
                    this->windowContentVtx[phi_t2].v.ob[1] - 0x10;
            }
        } else {
            phi_t2 += 0xA8;
        }
    }

    phi_t0 = this->windowPosX - 6;
    phi_ra = -0xC;

    for (phi_t5 = 0; phi_t5 < 2; phi_t5++, phi_t2 += 4, phi_ra -= 0x10) {
        this->windowContentVtx[phi_t2].v.ob[0] = this->windowContentVtx[phi_t2 + 2].v.ob[0] = phi_t0;
        this->windowContentVtx[phi_t2 + 1].v.ob[0] = this->windowContentVtx[phi_t2 + 3].v.ob[0] =
            this->windowContentVtx[phi_t2].v.ob[0] + 0x40;
        this->windowContentVtx[phi_t2].v.ob[1] = this->windowContentVtx[phi_t2 + 1].v.ob[1] =
            this->buttonYOffsets[phi_t5 + 3] + phi_ra;
        this->windowContentVtx[phi_t2 + 2].v.ob[1] = this->windowContentVtx[phi_t2 + 3].v.ob[1] =
            this->windowContentVtx[phi_t2].v.ob[1] - 0x10;
        this->windowContentVtx[phi_t2 + 1].v.tc[0] = this->windowContentVtx[phi_t2 + 3].v.tc[0] = 0x800;
    }

    this->windowContentVtx[phi_t2].v.ob[0] = this->windowContentVtx[phi_t2 + 2].v.ob[0] = phi_t0;
    this->windowContentVtx[phi_t2 + 1].v.ob[0] = this->windowContentVtx[phi_t2 + 3].v.ob[0] =
        this->windowContentVtx[phi_t2].v.ob[0] + 0x40;
    this->windowContentVtx[phi_t2].v.ob[1] = this->windowContentVtx[phi_t2 + 1].v.ob[1] =
        this->buttonYOffsets[5] - 0x34;
    this->windowContentVtx[phi_t2 + 2].v.ob[1] = this->windowContentVtx[phi_t2 + 3].v.ob[1] =
        this->windowContentVtx[phi_t2].v.ob[1] - 0x10;
    this->windowContentVtx[phi_t2 + 1].v.tc[0] = this->windowContentVtx[phi_t2 + 3].v.tc[0] = 0x800;

    phi_t2 += 4;

    if (((this->menuMode == FS_MENU_MODE_CONFIG) && (this->configMode >= CM_MAIN_MENU)) ||
        ((this->menuMode == FS_MENU_MODE_SELECT) && (this->selectMode == SM_CONFIRM_FILE))) {
        if (this->menuMode == FS_MENU_MODE_CONFIG) {
            if ((this->configMode == CM_SELECT_COPY_SOURCE) || (this->configMode == CM_SELECT_COPY_DEST) ||
                (this->configMode == CM_ERASE_SELECT)) {
                phi_t5 = D_8081283C[this->buttonIndex];
            } else if ((this->configMode == CM_ERASE_CONFIRM) || (this->configMode == CM_COPY_CONFIRM)) {
                phi_t5 = D_80812844[this->buttonIndex];
            } else {
                phi_t5 = D_80812830[this->buttonIndex];
            }
        } else {
            phi_t5 = D_80812848[this->confirmButtonIndex];
        }

        this->windowContentVtx[phi_t2].v.ob[0] = this->windowContentVtx[phi_t2 + 2].v.ob[0] = this->windowPosX - 0xA;
        this->windowContentVtx[phi_t2 + 1].v.ob[0] = this->windowContentVtx[phi_t2 + 3].v.ob[0] =
            this->windowContentVtx[phi_t2].v.ob[0] + 0x48;
        this->windowContentVtx[phi_t2].v.ob[1] = this->windowContentVtx[phi_t2 + 1].v.ob[1] =
            this->windowContentVtx[phi_t5].v.ob[1] + 4;
        this->windowContentVtx[phi_t2 + 2].v.ob[1] = this->windowContentVtx[phi_t2 + 3].v.ob[1] =
            this->windowContentVtx[phi_t2].v.ob[1] - 0x18;
        this->windowContentVtx[phi_t2 + 1].v.tc[0] = this->windowContentVtx[phi_t2 + 3].v.tc[0] = 0x900;
        this->windowContentVtx[phi_t2 + 2].v.tc[1] = this->windowContentVtx[phi_t2 + 3].v.tc[1] = 0x300;
    }

    this->windowContentVtx[phi_t2 + 4].v.ob[0] = this->windowContentVtx[phi_t2 + 6].v.ob[0] = this->windowPosX + 0x3A;
    this->windowContentVtx[phi_t2 + 5].v.ob[0] = this->windowContentVtx[phi_t2 + 7].v.ob[0] =
        this->windowContentVtx[phi_t2 + 4].v.ob[0] + 0x80;
    this->windowContentVtx[phi_t2 + 4].v.ob[1] = this->windowContentVtx[phi_t2 + 5].v.ob[1] =
        this->windowContentVtx[D_80812830[this->warningButtonIndex]].v.ob[1];
    this->windowContentVtx[phi_t2 + 6].v.ob[1] = this->windowContentVtx[phi_t2 + 7].v.ob[1] =
        this->windowContentVtx[phi_t2 + 4].v.ob[1] - 0x10;
    this->windowContentVtx[phi_t2 + 5].v.tc[0] = this->windowContentVtx[phi_t2 + 7].v.tc[0] = 0x1000;
}

static u16 D_8081284C[] = { 0x007C, 0x0124, 0x01CC };

static void* sQuestItemTextures[] = {
    gFileSelKokiriEmeraldTex,   gFileSelGoronRubyTex,       gFileSelZoraSapphireTex,
    gFileSelForestMedallionTex, gFileSelFireMedallionTex,   gFileSelWaterMedallionTex,
    gFileSelSpiritMedallionTex, gFileSelShadowMedallionTex, gFileSelLightMedallionTex,
};

static s16 sQuestItemRed[] = { 255, 255, 255, 0, 255, 0, 255, 200, 200 };
static s16 sQuestItemGreen[] = { 255, 255, 255, 255, 60, 100, 130, 50, 200 };
static s16 sQuestItemBlue[] = { 255, 255, 255, 0, 0, 255, 0, 255, 0 };
static s16 sQuestItemFlags[] = {
    QUEST_KOKIRI_EMERALD,  QUEST_GORON_RUBY,       QUEST_ZORA_SAPPHIRE,    QUEST_MEDALLION_FOREST, QUEST_MEDALLION_FIRE,
    QUEST_MEDALLION_WATER, QUEST_MEDALLION_SPIRIT, QUEST_MEDALLION_SHADOW, QUEST_MEDALLION_LIGHT,
};

#if OOT_NTSC && OOT_VERSION < GC_JP_CE
static void* sSaveXTextures[] = { gFileSelSaveXJPNTex, gFileSelSaveXENGTex };
#endif

static s16 sNamePrimColors[2][3] = { { 255, 255, 255 }, { 100, 100, 100 } };

#if !OOT_PAL_N64
static void* sHeartTextures[] = { gHeartFullTex, gDefenseHeartFullTex };
#else
static void* sHeartTextures[][5] = {
    { gHeartEmptyTex, gHeartQuarterTex, gHeartHalfTex, gHeartThreeQuarterTex, gHeartFullTex },
    { gDefenseHeartEmptyTex, gDefenseHeartQuarterTex, gDefenseHeartHalfTex, gDefenseHeartThreeQuarterTex,
      gDefenseHeartFullTex },
};
static u8 sHeartTextureIndices[16] = { 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3 };
#endif

static s16 sHeartPrimColors[2][3] = { { 255, 70, 50 }, { 200, 0, 0 } };
static s16 sHeartEnvColors[2][3] = { { 50, 40, 60 }, { 255, 255, 255 } };

void FileSelect_DrawFileInfo(GameState* thisx, s16 fileIndex, s16 isActive) {
    FileSelectState* this = (FileSelectState*)thisx;
    Font* sp54 = &this->font;
    s16 i;
    s16 j;
    s16 k;
#if OOT_PAL_N64
    s16 health;
    s16 heartTextureIndex;
#endif
    s16 heartType;
    s16 vtxOffset;
    s16 deathCountSplit[3];

    OPEN_DISPS(this->state.gfxCtx, "../z_file_choose.c", 1709);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0,
                      PRIMITIVE, 0);

    // draw file name
    if (this->nameAlpha[fileIndex] != 0) {
        gSPVertex(POLY_OPA_DISP++, &this->windowContentVtx[D_8081284C[fileIndex]], 32, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0x00, 0x00, sNamePrimColors[isActive][0], sNamePrimColors[isActive][1],
                        sNamePrimColors[isActive][2], this->nameAlpha[fileIndex]);

        for (vtxOffset = 0, i = 0; vtxOffset < 0x20; i++, vtxOffset += 4) {
            FileSelect_DrawCharacter(this->state.gfxCtx,
                                     sp54->fontBuf + this->fileNames[fileIndex][i] * FONT_CHAR_TEX_SIZE, vtxOffset);
        }
    }

    if ((fileIndex == this->selectedFileIndex) || (fileIndex == this->copyDestFileIndex)) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0, 0,
                          PRIMITIVE, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0x00, 0x00, 255, 255, 255, this->fileInfoAlpha[fileIndex]);
        gSPVertex(POLY_OPA_DISP++, &this->windowContentVtx[D_8081284C[fileIndex]] + 0x24, 12, 0);

        FileSelect_SplitNumber(this->deaths[fileIndex], &deathCountSplit[0], &deathCountSplit[1], &deathCountSplit[2]);

        // draw death count
        for (k = 0, vtxOffset = 0; k < 3; k++, vtxOffset += 4) {
            FileSelect_DrawCharacter(this->state.gfxCtx, sp54->fontBuf + deathCountSplit[k] * FONT_CHAR_TEX_SIZE,
                                     vtxOffset);
        }

        gDPPipeSync(POLY_OPA_DISP++);

        heartType = (this->defense[fileIndex] == 0) ? 0 : 1;

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0x00, 0x00, sHeartPrimColors[heartType][0], sHeartPrimColors[heartType][1],
                        sHeartPrimColors[heartType][2], this->fileInfoAlpha[fileIndex]);
        gDPSetEnvColor(POLY_OPA_DISP++, sHeartEnvColors[heartType][0], sHeartEnvColors[heartType][1],
                       sHeartEnvColors[heartType][2], 255);

        k = this->healthCapacities[fileIndex] / 0x10;

#if !OOT_PAL_N64
        // draw hearts
        for (vtxOffset = 0, j = 0; j < k; j++, vtxOffset += 4) {
            gSPVertex(POLY_OPA_DISP++, &this->windowContentVtx[D_8081284C[fileIndex] + vtxOffset] + 0x30, 4, 0);
            POLY_OPA_DISP = FileSelect_QuadTextureIA8(POLY_OPA_DISP, sHeartTextures[heartType], 0x10, 0x10, 0);
        }
#else
        health = this->health[fileIndex];
        if (health <= 48) { // 3 hearts
            health = 48;
        }
        heartTextureIndex = 4;

        // draw hearts
        for (vtxOffset = 0, j = 0; j < k; j++, vtxOffset += 4) {
            if (health < 16) {
                if (health != 0) {
                    heartTextureIndex = sHeartTextureIndices[health];
                    health = 0;
                } else {
                    heartTextureIndex = 0;
                }
            } else {
                health -= 16;
            }

            gSPVertex(POLY_OPA_DISP++, &this->windowContentVtx[D_8081284C[fileIndex] + vtxOffset] + 0x30, 4, 0);
            POLY_OPA_DISP =
                FileSelect_QuadTextureIA8(POLY_OPA_DISP, sHeartTextures[heartType][heartTextureIndex], 0x10, 0x10, 0);
        }
#endif

        gDPPipeSync(POLY_OPA_DISP++);

        // draw quest items
        for (vtxOffset = 0, j = 0; j < 9; j++, vtxOffset += 4) {
            if (this->questItems[fileIndex] & gBitFlags[sQuestItemFlags[j]]) {
                gSPVertex(POLY_OPA_DISP++, &this->windowContentVtx[D_8081284C[fileIndex] + vtxOffset] + 0x80, 4, 0);
                gDPPipeSync(POLY_OPA_DISP++);
                gDPSetPrimColor(POLY_OPA_DISP++, 0x00, 0x00, sQuestItemRed[j], sQuestItemGreen[j], sQuestItemBlue[j],
                                this->fileInfoAlpha[fileIndex]);
                gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

                if (j < 3) {
                    gDPLoadTextureBlock(POLY_OPA_DISP++, sQuestItemTextures[j], G_IM_FMT_RGBA, G_IM_SIZ_32b, 16, 16, 0,
                                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP,
                                        G_TX_NOMASK, G_TX_NOLOD);
                    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

                } else {
                    POLY_OPA_DISP = FileSelect_QuadTextureIA8(POLY_OPA_DISP, sQuestItemTextures[j], 0x10, 0x10, 0);
                }
            }
        }
    }

    CLOSE_DISPS(this->state.gfxCtx, "../z_file_choose.c", 1797);
}

static void* sFileInfoBoxTextures[] = {
    gFileSelFileInfoBox1Tex, gFileSelFileInfoBox2Tex, gFileSelFileInfoBox3Tex,
    gFileSelFileInfoBox4Tex, gFileSelFileInfoBox5Tex,
};

static void* sTitleLabels[][9] = {
#if OOT_NTSC
    { gFileSelPleaseSelectAFileJPNTex, gFileSelOpenThisFileJPNTex, gFileSelCopyWhichFileJPNTex,
      gFileSelCopyToWhichFileJPNTex, gFileSelAreYouSureJPNTex, gFileSelFileCopiedJPNTex, gFileSelEraseWhichFileJPNTex,
      gFileSelAreYouSure2JPNTex, gFileSelFileErasedJPNTex },
    { gFileSelPleaseSelectAFileENGTex, gFileSelOpenThisFileENGTex, gFileSelCopyWhichFileENGTex,
      gFileSelCopyToWhichFileENGTex, gFileSelAreYouSureENGTex, gFileSelFileCopiedENGTex, gFileSelEraseWhichFileENGTex,
      gFileSelAreYouSure2ENGTex, gFileSelFileErasedENGTex },
#else
    { gFileSelPleaseSelectAFileENGTex, gFileSelOpenThisFileENGTex, gFileSelCopyWhichFileENGTex,
      gFileSelCopyToWhichFileENGTex, gFileSelAreYouSureENGTex, gFileSelFileCopiedENGTex, gFileSelEraseWhichFileENGTex,
      gFileSelAreYouSure2ENGTex, gFileSelFileErasedENGTex },
    { gFileSelPleaseSelectAFileGERTex, gFileSelOpenThisFileGERTex, gFileSelCopyWhichFileGERTex,
      gFileSelCopyToWhichFileGERTex, gFileSelAreYouSureGERTex, gFileSelFileCopiedGERTex, gFileSelEraseWhichFileGERTex,
      gFileSelAreYouSure2GERTex, gFileSelFileErasedGERTex },
    { gFileSelPleaseSelectAFileFRATex, gFileSelOpenThisFileFRATex, gFileSelCopyWhichFileFRATex,
      gFileSelCopyToWhichFileFRATex, gFileSelAreYouSureFRATex, gFileSelFileCopiedFRATex, gFileSelEraseWhichFileFRATex,
      gFileSelAreYouSure2FRATex, gFileSelFileErasedFRATex }
#endif
};

static void* sWarningLabels[][5] = {
#if OOT_NTSC
    { gFileSelNoFileToCopyJPNTex, gFileSelNoFileToEraseJPNTex, gFileSelNoEmptyFileJPNTex, gFileSelFileEmptyJPNTex,
      gFileSelFileInUseJPNTex },
    { gFileSelNoFileToCopyENGTex, gFileSelNoFileToEraseENGTex, gFileSelNoEmptyFileENGTex, gFileSelFileEmptyENGTex,
      gFileSelFileInUseENGTex },
#else
    { gFileSelNoFileToCopyENGTex, gFileSelNoFileToEraseENGTex, gFileSelNoEmptyFileENGTex, gFileSelFileEmptyENGTex,
      gFileSelFileInUseENGTex },
    { gFileSelNoFileToCopyGERTex, gFileSelNoFileToEraseGERTex, gFileSelNoEmptyFileGERTex, gFileSelFileEmptyGERTex,
      gFileSelFileInUseGERTex },
    { gFileSelNoFileToCopyFRATex, gFileSelNoFileToEraseFRATex, gFileSelNoEmptyFileFRATex, gFileSelFileEmptyFRATex,
      gFileSelFileInUseFRATex },
#endif
};

static void* sFileButtonTextures[][3] = {
#if OOT_NTSC
    { gFileSelFile1ButtonJPNTex, gFileSelFile2ButtonJPNTex, gFileSelFile3ButtonJPNTex },
    { gFileSelFile1ButtonENGTex, gFileSelFile2ButtonENGTex, gFileSelFile3ButtonENGTex },
#else
    { gFileSelFile1ButtonENGTex, gFileSelFile2ButtonENGTex, gFileSelFile3ButtonENGTex },
    { gFileSelFile1ButtonGERTex, gFileSelFile2ButtonGERTex, gFileSelFile3ButtonGERTex },
    { gFileSelFile1ButtonFRATex, gFileSelFile2ButtonFRATex, gFileSelFile3ButtonFRATex },
#endif
};

static void* sActionButtonTextures[][4] = {
#if OOT_NTSC
    { gFileSelCopyButtonJPNTex, gFileSelEraseButtonJPNTex, gFileSelYesButtonJPNTex, gFileSelQuitButtonJPNTex },
    { gFileSelCopyButtonENGTex, gFileSelEraseButtonENGTex, gFileSelYesButtonENGTex, gFileSelQuitButtonENGTex },
#else
    { gFileSelCopyButtonENGTex, gFileSelEraseButtonENGTex, gFileSelYesButtonENGTex, gFileSelQuitButtonENGTex },
    { gFileSelCopyButtonGERTex, gFileSelEraseButtonGERTex, gFileSelYesButtonGERTex, gFileSelQuitButtonGERTex },
    { gFileSelCopyButtonFRATex, gFileSelEraseButtonFRATex, gFileSelYesButtonFRATex, gFileSelQuitButtonFRATex },
#endif
};

static void* sOptionsButtonTextures[] = LANGUAGE_ARRAY(gFileSelOptionsButtonJPNTex, gFileSelOptionsButtonENGTex,
                                                       gFileSelOptionsButtonGERTex, gFileSelOptionsButtonENGTex);

/**
 * Draw most window contents including buttons, labels, and icons.
 * Does not include anything from the keyboard and settings windows.
 */
void FileSelect_DrawWindowContents(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    s16 fileIndex;
    s16 i;
    s16 quadVtxIndex;
    s16 temp;
    s16 isActive;
    s16 pad;

    OPEN_DISPS(this->state.gfxCtx, "../z_file_choose.c", 1940);

    // draw title label
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, this->titleAlpha[0]);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
    gSPVertex(POLY_OPA_DISP++, this->windowContentVtx, 4, 0);
    gDPLoadTextureBlock(POLY_OPA_DISP++, sTitleLabels[gSaveContext.language][this->titleLabel], G_IM_FMT_IA,
                        G_IM_SIZ_8b, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                        G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

    // draw next title label
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, this->titleAlpha[1]);
    gDPLoadTextureBlock(POLY_OPA_DISP++, sTitleLabels[gSaveContext.language][this->nextTitleLabel], G_IM_FMT_IA,
                        G_IM_SIZ_8b, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                        G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

    temp = 4;

    gDPPipeSync(POLY_OPA_DISP++);

    // draw file info box (large box when a file is selected)
    for (fileIndex = 0; fileIndex < 3; fileIndex++, temp += 20) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                        this->fileInfoAlpha[fileIndex]);
        gSPVertex(POLY_OPA_DISP++, &this->windowContentVtx[temp], 20, 0);

        for (quadVtxIndex = 0, i = 0; i < 5; i++, quadVtxIndex += 4) {
            gDPLoadTextureBlock(POLY_OPA_DISP++, sFileInfoBoxTextures[i], G_IM_FMT_IA, G_IM_SIZ_16b,
                                sFileInfoBoxPartWidths[i], 56, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP,
                                G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
            gSP1Quadrangle(POLY_OPA_DISP++, quadVtxIndex, quadVtxIndex + 2, quadVtxIndex + 3, quadVtxIndex + 1, 0);
        }
    }

    for (i = 0; i < 3; i++, temp += 20) {
        // draw file button
        gSPVertex(POLY_OPA_DISP++, &this->windowContentVtx[temp], 20, 0);

        isActive = ((this->n64ddFlag == this->n64ddFlags[i]) || (this->nameBoxAlpha[i] == 0)) ? 0 : 1;

        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sWindowContentColors[isActive][0], sWindowContentColors[isActive][1],
                        sWindowContentColors[isActive][2], this->fileButtonAlpha[i]);
        gDPLoadTextureBlock(POLY_OPA_DISP++, sFileButtonTextures[gSaveContext.language][i], G_IM_FMT_IA, G_IM_SIZ_16b,
                            64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                            G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

        // draw file name box
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sWindowContentColors[isActive][0], sWindowContentColors[isActive][1],
                        sWindowContentColors[isActive][2], this->nameBoxAlpha[i]);
        gDPLoadTextureBlock(POLY_OPA_DISP++, gFileSelNameBoxTex, G_IM_FMT_IA, G_IM_SIZ_16b, 108, 16, 0,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, 4, 6, 7, 5, 0);

        // draw disk label for 64DD
        if (this->n64ddFlags[i]) {
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sWindowContentColors[isActive][0], sWindowContentColors[isActive][1],
                            sWindowContentColors[isActive][2], this->nameAlpha[i]);
            gDPLoadTextureBlock(POLY_OPA_DISP++, gFileSelDISKButtonTex, G_IM_FMT_IA, G_IM_SIZ_16b, 44, 16, 0,
                                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                                G_TX_NOLOD, G_TX_NOLOD);
            gSP1Quadrangle(POLY_OPA_DISP++, 8, 10, 11, 9, 0);
        }

        // draw connectors
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, sWindowContentColors[isActive][0], sWindowContentColors[isActive][1],
                        sWindowContentColors[isActive][2], this->connectorAlpha[i]);
        gDPLoadTextureBlock(POLY_OPA_DISP++, gFileSelConnectorTex, G_IM_FMT_IA, G_IM_SIZ_8b, 24, 16, 0,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, 12, 14, 15, 13, 0);

        if (this->n64ddFlags[i]) {
            gSP1Quadrangle(POLY_OPA_DISP++, 16, 18, 19, 17, 0);
        }
    }

    // draw file info
    for (fileIndex = 0; fileIndex < 3; fileIndex++) {
        isActive = ((this->n64ddFlag == this->n64ddFlags[fileIndex]) || (this->nameBoxAlpha[fileIndex] == 0)) ? 0 : 1;
        FileSelect_DrawFileInfo(&this->state, fileIndex, isActive);
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
    gSPVertex(POLY_OPA_DISP++, &this->windowContentVtx[0x274], 20, 0);

    // draw primary action buttons (copy/erase)
    for (quadVtxIndex = 0, i = 0; i < 2; i++, quadVtxIndex += 4) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                        this->actionButtonAlpha[i]);
        gDPLoadTextureBlock(POLY_OPA_DISP++, sActionButtonTextures[gSaveContext.language][i], G_IM_FMT_IA, G_IM_SIZ_16b,
                            64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                            G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, quadVtxIndex, quadVtxIndex + 2, quadVtxIndex + 3, quadVtxIndex + 1, 0);
    }

    gDPPipeSync(POLY_OPA_DISP++);

    // draw confirm buttons (yes/quit)
    for (quadVtxIndex = 0, i = 0; i < 2; i++, quadVtxIndex += 4) {
        temp = this->confirmButtonTexIndices[i];

        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                        this->confirmButtonAlpha[i]);
        gDPLoadTextureBlock(POLY_OPA_DISP++, sActionButtonTextures[gSaveContext.language][temp], G_IM_FMT_IA,
                            G_IM_SIZ_16b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                            G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, quadVtxIndex, quadVtxIndex + 2, quadVtxIndex + 3, quadVtxIndex + 1, 0);
    }

    // draw options button
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                    this->optionButtonAlpha);
    gDPLoadTextureBlock(POLY_OPA_DISP++, sOptionsButtonTextures[gSaveContext.language], G_IM_FMT_IA, G_IM_SIZ_16b, 64,
                        16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                        G_TX_NOLOD, G_TX_NOLOD);
    gSP1Quadrangle(POLY_OPA_DISP++, 8, 10, 11, 9, 0);

    // draw highlight over currently selected button
    if (((this->menuMode == FS_MENU_MODE_CONFIG) &&
         ((this->configMode == CM_MAIN_MENU) || (this->configMode == CM_SELECT_COPY_SOURCE) ||
          (this->configMode == CM_SELECT_COPY_DEST) || (this->configMode == CM_COPY_CONFIRM) ||
          (this->configMode == CM_ERASE_SELECT) || (this->configMode == CM_ERASE_CONFIRM))) ||
        ((this->menuMode == FS_MENU_MODE_SELECT) && (this->selectMode == SM_CONFIRM_FILE))) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0, 0,
                          PRIMITIVE, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->highlightColor[0], this->highlightColor[1],
                        this->highlightColor[2], this->highlightColor[3]);
        gDPLoadTextureBlock(POLY_OPA_DISP++, gFileSelBigButtonHighlightTex, G_IM_FMT_I, G_IM_SIZ_8b, 72, 24, 0,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, 12, 14, 15, 13, 0);
    }

    // draw warning labels
    if (this->warningLabel > FS_WARNING_NONE) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, this->emptyFileTextAlpha);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
        gDPLoadTextureBlock(POLY_OPA_DISP++, sWarningLabels[gSaveContext.language][this->warningLabel], G_IM_FMT_IA,
                            G_IM_SIZ_8b, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,
                            G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, 16, 18, 19, 17, 0);
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);

    CLOSE_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2198);
}

void FileSelect_ConfigModeDraw(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    f32 eyeX;
    f32 eyeY;
    f32 eyeZ;

    OPEN_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2218);
    gDPPipeSync(POLY_OPA_DISP++);

    eyeX = 1000.0f * Math_CosS(ZREG(11)) - 1000.0f * Math_SinS(ZREG(11));
    eyeY = ZREG(13);
    eyeZ = 1000.0f * Math_SinS(ZREG(11)) + 1000.0f * Math_CosS(ZREG(11));

    FileSelect_SetView(this, eyeX, eyeY, eyeZ);
    Skybox_Draw(&this->skyboxCtx, this->state.gfxCtx, 1, this->envCtx.skyboxBlend, eyeX, eyeY, eyeZ);
    gDPSetTextureLUT(POLY_OPA_DISP++, G_TT_NONE);
    ZREG(11) += ZREG(10);
    Environment_UpdateSkybox(SKYBOX_NORMAL_SKY, &this->envCtx, &this->skyboxCtx);
    gDPPipeSync(POLY_OPA_DISP++);
    Gfx_SetupDL_42Opa(this->state.gfxCtx);
    FileSelect_SetView(this, 0.0f, 0.0f, 64.0f);
    FileSelect_SetWindowVtx(&this->state);
    FileSelect_SetWindowContentVtx(&this->state);

    if ((this->configMode != CM_NAME_ENTRY) && (this->configMode != CM_START_NAME_ENTRY)) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                        this->windowAlpha);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

        Matrix_Translate(0.0f, 0.0f, -93.6f, MTXMODE_NEW);
        Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);

        if (this->windowRot != 0) {
            Matrix_RotateX(this->windowRot / 100.0f, MTXMODE_APPLY);
        }

        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, this->state.gfxCtx, "../z_file_choose.c", 2282);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[0], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, gFileSelWindow1DL);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[32], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, gFileSelWindow2DL);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[64], 16, 0);
        gSPDisplayList(POLY_OPA_DISP++, gFileSelWindow3DL);

        gDPPipeSync(POLY_OPA_DISP++);

        FileSelect_DrawWindowContents(&this->state);
    }

    // draw name entry menu
    if ((this->configMode >= CM_ROTATE_TO_NAME_ENTRY) && (this->configMode <= CM_NAME_ENTRY_TO_MAIN)) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                        this->windowAlpha);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

        Matrix_Translate(0.0f, 0.0f, -93.6f, MTXMODE_NEW);
        Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
        Matrix_RotateX((this->windowRot - 314.0f) / 100.0f, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, this->state.gfxCtx, "../z_file_choose.c", 2316);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[0], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, gFileSelWindow1DL);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[32], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, gFileSelWindow2DL);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[64], 16, 0);
        gSPDisplayList(POLY_OPA_DISP++, gFileSelWindow3DL);

        gDPPipeSync(POLY_OPA_DISP++);

        FileSelect_DrawNameEntry(&this->state);
    }

    // draw options menu
    if ((this->configMode >= CM_MAIN_TO_OPTIONS) && (this->configMode <= CM_OPTIONS_TO_MAIN)) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                        this->windowAlpha);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

        Matrix_Translate(0.0f, 0.0f, -93.6f, MTXMODE_NEW);
        Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
        Matrix_RotateX((this->windowRot - 314.0f) / 100.0f, MTXMODE_APPLY);

        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, this->state.gfxCtx, "../z_file_choose.c", 2337);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[0], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, gFileSelWindow1DL);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[32], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, gFileSelWindow2DL);

        gSPVertex(POLY_OPA_DISP++, &this->windowVtx[64], 16, 0);
        gSPDisplayList(POLY_OPA_DISP++, gFileSelWindow3DL);

        gDPPipeSync(POLY_OPA_DISP++);

        FileSelect_DrawOptions(&this->state);
    }

    gDPPipeSync(POLY_OPA_DISP++);
    FileSelect_SetView(this, 0.0f, 0.0f, 64.0f);

    CLOSE_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2352);
}

/**
 * Fade out the main menu elements to transition to select mode.
 * Update function for `SM_FADE_MAIN_TO_SELECT`
 */
void FileSelect_FadeMainToSelect(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    s16 i;

    for (i = 0; i < 3; i++) {
        if (i != this->buttonIndex) {
            this->fileButtonAlpha[i] -= 25;
            this->actionButtonAlpha[FS_BTN_ACTION_COPY] = this->actionButtonAlpha[FS_BTN_ACTION_ERASE] =
                this->optionButtonAlpha = this->fileButtonAlpha[i];

            if (SLOT_OCCUPIED(sramCtx, i)) {
                this->nameAlpha[i] = this->nameBoxAlpha[i] = this->fileButtonAlpha[i];
                this->connectorAlpha[i] -= 31;
            }
        }
    }

    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->actionTimer = 8;
        this->selectMode++;
        this->confirmButtonIndex = FS_BTN_CONFIRM_YES;
    }
}

/**
 * Moves the selected file to the top of the window.
 * Update function for `SM_MOVE_FILE_TO_TOP`
 */
void FileSelect_MoveSelectedFileToTop(GameState* thisx) {
    static s16 fileYOffsets[] = { 0, 16, 32 }; // amount to move by to reach the top of the screen
    FileSelectState* this = (FileSelectState*)thisx;
    s16 yStep;

    yStep = ABS(this->buttonYOffsets[this->buttonIndex] - fileYOffsets[this->buttonIndex]) / this->actionTimer;
    this->buttonYOffsets[this->buttonIndex] += yStep;
    this->actionTimer--;

    if ((this->actionTimer == 0) || (this->buttonYOffsets[this->buttonIndex] == fileYOffsets[this->buttonIndex])) {
        this->buttonYOffsets[FS_BTN_SELECT_YES] = this->buttonYOffsets[FS_BTN_SELECT_QUIT] = -24;
        this->actionTimer = 8;
        this->selectMode++;
    }
}

/**
 * Fade in the file info for the selected file.
 * Update function for `SM_FADE_IN_FILE_INFO`
 */
void FileSelect_FadeInFileInfo(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    this->fileInfoAlpha[this->buttonIndex] += 25;
    this->nameBoxAlpha[this->buttonIndex] -= 50;

    if (this->nameBoxAlpha[this->buttonIndex] <= 0) {
        this->nameBoxAlpha[this->buttonIndex] = 0;
    }

    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->fileInfoAlpha[this->buttonIndex] = 200;
        this->actionTimer = 8;
        this->selectMode++;
    }

    this->confirmButtonAlpha[FS_BTN_CONFIRM_YES] = this->confirmButtonAlpha[FS_BTN_CONFIRM_QUIT] =
        this->fileInfoAlpha[this->buttonIndex];
}

/**
 * Update the cursor and handle the option that the player picks for confirming the selected file.
 * Update function for `SM_CONFIRM_FILE`
 */
void FileSelect_ConfirmFile(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    Input* input = &this->state.input[0];

    if (CHECK_BTN_ALL(input->press.button, BTN_START) || (CHECK_BTN_ALL(input->press.button, BTN_A))) {
        if (this->confirmButtonIndex == FS_BTN_CONFIRM_YES) {
            Rumble_Request(300.0f, 180, 20, 100);
            Audio_PlaySfxGeneral(NA_SE_SY_FSEL_DECIDE_L, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            this->selectMode = SM_FADE_OUT;
            func_800F6964(0xF);
        } else {
            Audio_PlaySfxGeneral(NA_SE_SY_FSEL_CLOSE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            this->selectMode++;
        }
    } else if (CHECK_BTN_ALL(input->press.button, BTN_B)) {
        Audio_PlaySfxGeneral(NA_SE_SY_FSEL_CLOSE, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        this->selectMode++;
    } else if (ABS(this->stickAdjY) >= 30) {
        Audio_PlaySfxGeneral(NA_SE_SY_FSEL_CURSOR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        this->confirmButtonIndex ^= 1;
    }
}

/**
 * Fade out the file info for the selected file before returning to the main menu.
 * Update function for `SM_FADE_OUT_FILE_INFO`
 */
void FileSelect_FadeOutFileInfo(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    this->fileInfoAlpha[this->buttonIndex] -= 25;
    this->nameBoxAlpha[this->buttonIndex] += 25;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->buttonYOffsets[FS_BTN_SELECT_YES] = this->buttonYOffsets[FS_BTN_SELECT_QUIT] = 0;
        this->nameBoxAlpha[this->buttonIndex] = 200;
        this->fileInfoAlpha[this->buttonIndex] = 0;
        this->nextTitleLabel = FS_TITLE_SELECT_FILE;
        this->actionTimer = 8;
        this->selectMode++;
    }

    this->confirmButtonAlpha[0] = this->confirmButtonAlpha[1] = this->fileInfoAlpha[this->buttonIndex];
}

/**
 * Move the selected file back to the slot position then go to config mode for the main menu.
 * Update function for `SM_MOVE_FILE_TO_SLOT`
 */
void FileSelect_MoveSelectedFileToSlot(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    s16 yStep;
    s16 i;

    yStep = ABS(this->buttonYOffsets[this->buttonIndex]) / this->actionTimer;
    this->buttonYOffsets[this->buttonIndex] -= yStep;

    if (this->buttonYOffsets[this->buttonIndex] <= 0) {
        this->buttonYOffsets[this->buttonIndex] = 0;
    }

    for (i = 0; i < 3; i++) {
        if (i != this->buttonIndex) {
            this->fileButtonAlpha[i] += 25;

            if (this->fileButtonAlpha[i] >= 200) {
                this->fileButtonAlpha[i] = 200;
            }

            this->actionButtonAlpha[FS_BTN_ACTION_COPY] = this->actionButtonAlpha[FS_BTN_ACTION_ERASE] =
                this->optionButtonAlpha = this->fileButtonAlpha[i];

            if (SLOT_OCCUPIED(sramCtx, i)) {
                this->nameBoxAlpha[i] = this->nameAlpha[i] = this->fileButtonAlpha[i];
                this->connectorAlpha[i] += 31;
            }
        }
    }

    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->titleLabel = this->nextTitleLabel;
        this->actionTimer = 8;
        this->menuMode = FS_MENU_MODE_CONFIG;
        this->configMode = CM_MAIN_MENU;
        this->nextConfigMode = CM_MAIN_MENU;
        this->selectMode = SM_FADE_MAIN_TO_SELECT;
    }
}

/**
 * Fill the screen with black to fade out.
 * Update function for `SM_FADE_OUT`
 */
void FileSelect_FadeOut(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    sScreenFillAlpha += VREG(10);

    if (sScreenFillAlpha >= 255) {
        sScreenFillAlpha = 255;
        this->selectMode++;
    }
}

/**
 * Load the save for the appropriate file and start the game.
 * Note: On Debug ROM, File 1 will go to Map Select.
 * Update function for `SM_LOAD_GAME`
 */
void FileSelect_LoadGame(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

#if DEBUG_FEATURES
    if (this->buttonIndex == FS_BTN_SELECT_FILE_1) {
        Audio_PlaySfxGeneral(NA_SE_SY_FSEL_DECIDE_L, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        gSaveContext.fileNum = this->buttonIndex;
        Sram_OpenSave(&this->sramCtx);
        gSaveContext.gameMode = GAMEMODE_NORMAL;
        SET_NEXT_GAMESTATE(&this->state, MapSelect_Init, MapSelectState);
        this->state.running = false;
    } else
#endif
    {
        Audio_PlaySfxGeneral(NA_SE_SY_FSEL_DECIDE_L, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        gSaveContext.fileNum = this->buttonIndex;
        Sram_OpenSave(&this->sramCtx);
        gSaveContext.gameMode = GAMEMODE_NORMAL;
        SET_NEXT_GAMESTATE(&this->state, Play_Init, PlayState);
        this->state.running = false;
    }

    gSaveContext.respawn[RESPAWN_MODE_DOWN].entranceIndex = ENTR_LOAD_OPENING;
    gSaveContext.respawnFlag = 0;
    gSaveContext.seqId = (u8)NA_BGM_DISABLED;
    gSaveContext.natureAmbienceId = 0xFF;
    gSaveContext.showTitleCard = true;
    gSaveContext.dogParams = 0;
    gSaveContext.timerState = TIMER_STATE_OFF;
    gSaveContext.subTimerState = SUBTIMER_STATE_OFF;
    gSaveContext.eventInf[0] = 0;
    gSaveContext.eventInf[1] = 0;
    gSaveContext.eventInf[2] = 0;
    gSaveContext.eventInf[3] = 0;
    gSaveContext.prevHudVisibilityMode = HUD_VISIBILITY_ALL;
    gSaveContext.nayrusLoveTimer = 0;
    gSaveContext.healthAccumulator = 0;
    gSaveContext.magicState = MAGIC_STATE_IDLE;
    gSaveContext.prevMagicState = MAGIC_STATE_IDLE;
    gSaveContext.forcedSeqId = NA_BGM_GENERAL_SFX;
    gSaveContext.skyboxTime = CLOCK_TIME(0, 0);
    gSaveContext.nextTransitionType = TRANS_NEXT_TYPE_DEFAULT;
    gSaveContext.nextCutsceneIndex = 0xFFEF;
    gSaveContext.cutsceneTrigger = 0;
    gSaveContext.chamberCutsceneNum = CHAMBER_CS_FOREST;
    gSaveContext.nextDayTime = NEXT_TIME_NONE;
    gSaveContext.retainWeatherMode = false;

    gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
        gSaveContext.buttonStatus[3] = gSaveContext.buttonStatus[4] = BTN_ENABLED;

    gSaveContext.forceRisingButtonAlphas = gSaveContext.nextHudVisibilityMode = gSaveContext.hudVisibilityMode =
        gSaveContext.hudVisibilityModeTimer = gSaveContext.magicCapacity = 0; // false, HUD_VISIBILITY_NO_CHANGE

    // Set the fill target to be the saved magic amount
    gSaveContext.magicFillTarget = gSaveContext.save.info.playerData.magic;
    // Set `magicLevel` and `magic` to 0 so `magicCapacity` then `magic` grows from nothing to respectively the full
    // capacity and `magicFillTarget`
    gSaveContext.save.info.playerData.magicLevel = gSaveContext.save.info.playerData.magic = 0;

    PRINTF_COLOR_GREEN();
    PRINTF("Z_MAGIC_NOW_NOW=%d  MAGIC_NOW=%d\n", ((void)0, gSaveContext.magicFillTarget),
           gSaveContext.save.info.playerData.magic);
    PRINTF_RST();

    gSaveContext.save.info.playerData.naviTimer = 0;

    if ((gSaveContext.save.info.equips.buttonItems[0] != ITEM_SWORD_KOKIRI) &&
        (gSaveContext.save.info.equips.buttonItems[0] != ITEM_SWORD_MASTER) &&
        (gSaveContext.save.info.equips.buttonItems[0] != ITEM_SWORD_BIGGORON) &&
        (gSaveContext.save.info.equips.buttonItems[0] != ITEM_GIANTS_KNIFE)) {
        u16 swordEquipValue;

        gSaveContext.save.info.equips.buttonItems[0] = ITEM_NONE;
        swordEquipValue =
            (gEquipMasks[EQUIP_TYPE_SWORD] & gSaveContext.save.info.equips.equipment) >> (EQUIP_TYPE_SWORD * 4);
        gSaveContext.save.info.equips.equipment &= gEquipNegMasks[EQUIP_TYPE_SWORD];
        gSaveContext.save.info.inventory.equipment ^= OWNED_EQUIP_FLAG(EQUIP_TYPE_SWORD, swordEquipValue - 1);
    }

#if PLATFORM_N64
    if (D_80121212 != 0) {
        s32 fileNum = gSaveContext.fileNum;

        n64dd_SetDiskVersion(this->n64ddFlags[fileNum]);
    }
#endif
}

static void (*sSelectModeUpdateFuncs[])(GameState*) = {
    FileSelect_FadeMainToSelect, FileSelect_MoveSelectedFileToTop,  FileSelect_FadeInFileInfo, FileSelect_ConfirmFile,
    FileSelect_FadeOutFileInfo,  FileSelect_MoveSelectedFileToSlot, FileSelect_FadeOut,        FileSelect_LoadGame,
};

void FileSelect_SelectModeUpdate(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;

    sSelectModeUpdateFuncs[this->selectMode](&this->state);
}

void FileSelect_SelectModeDraw(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    f32 eyeX;
    f32 eyeY;
    f32 eyeZ;

    OPEN_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2753);

    gDPPipeSync(POLY_OPA_DISP++);

    eyeX = 1000.0f * Math_CosS(ZREG(11)) - 1000.0f * Math_SinS(ZREG(11));
    eyeY = ZREG(13);
    eyeZ = 1000.0f * Math_SinS(ZREG(11)) + 1000.0f * Math_CosS(ZREG(11));

    FileSelect_SetView(this, eyeX, eyeY, eyeZ);
    Skybox_Draw(&this->skyboxCtx, this->state.gfxCtx, 1, this->envCtx.skyboxBlend, eyeX, eyeY, eyeZ);
    gDPSetTextureLUT(POLY_OPA_DISP++, G_TT_NONE);
    ZREG(11) += ZREG(10);
    Environment_UpdateSkybox(SKYBOX_NORMAL_SKY, &this->envCtx, &this->skyboxCtx);
    gDPPipeSync(POLY_OPA_DISP++);
    Gfx_SetupDL_42Opa(this->state.gfxCtx);
    FileSelect_SetView(this, 0.0f, 0.0f, 64.0f);
    FileSelect_SetWindowVtx(&this->state);
    FileSelect_SetWindowContentVtx(&this->state);

    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                    this->windowAlpha);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

    Matrix_Translate(0.0f, 0.0f, -93.6f, MTXMODE_NEW);
    Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
    Matrix_RotateX(this->windowRot / 100.0f, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, this->state.gfxCtx, "../z_file_choose.c", 2810);

    gSPVertex(POLY_OPA_DISP++, &this->windowVtx[0], 32, 0);
    gSPDisplayList(POLY_OPA_DISP++, gFileSelWindow1DL);

    gSPVertex(POLY_OPA_DISP++, &this->windowVtx[32], 32, 0);
    gSPDisplayList(POLY_OPA_DISP++, gFileSelWindow2DL);

    gSPVertex(POLY_OPA_DISP++, &this->windowVtx[64], 16, 0);
    gSPDisplayList(POLY_OPA_DISP++, gFileSelWindow3DL);

    FileSelect_DrawWindowContents(&this->state);
    gDPPipeSync(POLY_OPA_DISP++);
    FileSelect_SetView(this, 0.0f, 0.0f, 64.0f);

    CLOSE_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2834);
}

static void (*sFileSelectDrawFuncs[])(GameState*) = {
    FileSelect_InitModeDraw,
    FileSelect_ConfigModeDraw,
    FileSelect_SelectModeDraw,
};

static void (*sFileSelectUpdateFuncs[])(GameState*) = {
    FileSelect_InitModeUpdate,
    FileSelect_ConfigModeUpdate,
    FileSelect_SelectModeUpdate,
};

void FileSelect_Main(GameState* thisx) {
    static void* controlsTextures[] =
        LANGUAGE_ARRAY(gFileSelControlsJPNTex, gFileSelControlsENGTex, gFileSelControlsGERTex, gFileSelControlsFRATex);
    FileSelectState* this = (FileSelectState*)thisx;
    Input* input = &this->state.input[0];

    OPEN_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2898);

#if PLATFORM_N64
    if ((D_80121212 != 0) && (func_801C70FC() != 0)) {
        this->n64ddFlag = 1;
    } else {
        this->n64ddFlag = 0;
    }
#else
    this->n64ddFlag = 0;
#endif

    gSPSegment(POLY_OPA_DISP++, 0x00, NULL);
    gSPSegment(POLY_OPA_DISP++, 0x01, this->staticSegment);
    gSPSegment(POLY_OPA_DISP++, 0x02, this->parameterSegment);
#if OOT_PAL_N64
    gSPSegment(POLY_OPA_DISP++, 0x06, this->objectMagSegment);
#endif

    Gfx_SetupFrame(this->state.gfxCtx, 0, 0, 0);

    this->stickAdjX = input->rel.stick_x;
    this->stickAdjY = input->rel.stick_y;

    if (this->stickAdjX < -30) {
        if (this->stickXDir == -1) {
            this->inputTimerX--;
            if (this->inputTimerX < 0) {
                this->inputTimerX = 2;
            } else {
                this->stickAdjX = 0;
            }
        } else {
            this->inputTimerX = 10;
            this->stickXDir = -1;
        }
    } else if (this->stickAdjX > 30) {
        if (this->stickXDir == 1) {
            this->inputTimerX--;
            if (this->inputTimerX < 0) {
                this->inputTimerX = 2;
            } else {
                this->stickAdjX = 0;
            }
        } else {
            this->inputTimerX = 10;
            this->stickXDir = 1;
        }
    } else {
        this->stickXDir = 0;
    }

    if (this->stickAdjY < -30) {
        if (this->stickYDir == -1) {
            this->inputTimerY--;
            if (this->inputTimerY < 0) {
                this->inputTimerY = 2;
            } else {
                this->stickAdjY = 0;
            }
        } else {
            this->inputTimerY = 10;
            this->stickYDir = -1;
        }
    } else if (this->stickAdjY > 30) {
        if (this->stickYDir == 1) {
            this->inputTimerY--;
            if (this->inputTimerY < 0) {
                this->inputTimerY = 2;
            } else {
                this->stickAdjY = 0;
            }
        } else {
            this->inputTimerY = 10;
            this->stickYDir = 1;
        }
    } else {
        this->stickYDir = 0;
    }

    this->emptyFileTextAlpha = 0;

    FileSelect_PulsateCursor(&this->state);
    sFileSelectUpdateFuncs[this->menuMode](&this->state);
    sFileSelectDrawFuncs[this->menuMode](&this->state);

    // do not draw controls text in the options menu
    if ((this->configMode <= CM_NAME_ENTRY_TO_MAIN) || (this->configMode >= CM_UNUSED_DELAY)) {
        Gfx_SetupDL_39Opa(this->state.gfxCtx);

        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 100, 255, 255, this->controlsAlpha);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
        gDPLoadTextureBlock(POLY_OPA_DISP++, controlsTextures[gSaveContext.language], G_IM_FMT_IA, G_IM_SIZ_8b, 144, 16,
                            0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                            G_TX_NOLOD, G_TX_NOLOD);
        gSPTextureRectangle(POLY_OPA_DISP++, 90 << 2, 204 << 2, 234 << 2, 220 << 2, G_TX_RENDERTILE, 0, 0, 1 << 10,
                            1 << 10);
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gSPDisplayList(POLY_OPA_DISP++, sScreenFillSetupDL);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 0, 0, 0, sScreenFillAlpha);
    gDPFillRectangle(POLY_OPA_DISP++, 0, 0, gScreenWidth - 1, gScreenHeight - 1);

    CLOSE_DISPS(this->state.gfxCtx, "../z_file_choose.c", 3035);
}

void FileSelect_InitContext(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    EnvironmentContext* envCtx = &this->envCtx;
#if PLATFORM_GC && OOT_PAL
    SramContext* sramCtx = &this->sramCtx;
#endif

    Sram_Alloc(&this->state, &this->sramCtx);

    ZREG(7) = 32;
    ZREG(8) = 22;
    ZREG(9) = 20;
    ZREG(10) = -10;
    ZREG(11) = 0;
    ZREG(12) = 1000;
    ZREG(13) = -700;
    ZREG(14) = 164;
    ZREG(15) = 104;
    ZREG(16) = 160;
    ZREG(17) = 100;
    ZREG(18) = 162;
    ZREG(19) = 152;
    ZREG(20) = 214;

    XREG(13) = 580;
    XREG(14) = 400;
    XREG(35) = 20;
    XREG(36) = 20;
    XREG(37) = 20;
    XREG(43) = 8;
    XREG(44) = -78;
    XREG(45) = 0;
    XREG(46) = 0;
    XREG(47) = 0;
    XREG(48) = 0;
    XREG(49) = 3;
    XREG(50) = 8;
    XREG(51) = 8;
    XREG(52) = 10;
    XREG(73) = 0;

    VREG(0) = 14;
    VREG(1) = 5;
    VREG(2) = 4;
    VREG(4) = 1;
    VREG(5) = 6;
    VREG(6) = 2;
    VREG(7) = 6;
    VREG(8) = 80;

    sScreenFillAlpha = 255;

    VREG(10) = 10;
    VREG(11) = 30;
    VREG(12) = -100;
    VREG(13) = -85;
    VREG(14) = 4;
    VREG(16) = 25;
    VREG(17) = 1;
    VREG(18) = 1;
    VREG(20) = 92;
    VREG(21) = 171;
    VREG(22) = 11;
    VREG(23) = 10;
    VREG(24) = 26;
    VREG(25) = 2;
    VREG(26) = 1;
    VREG(27) = 0;
    VREG(28) = 0;
    VREG(29) = 160;
    VREG(30) = 64;
    VREG(31) = 154;
    VREG(32) = 152;
    VREG(33) = 106;

    WREG(38) = 16;
    WREG(39) = 9;
    WREG(40) = 10;
    WREG(41) = 14;
    WREG(42) = 11;
    WREG(43) = 12;

    this->menuMode = FS_MENU_MODE_INIT;

    this->buttonIndex = this->selectMode = this->selectedFileIndex = this->copyDestFileIndex =
        this->confirmButtonIndex = 0;

    this->confirmButtonTexIndices[0] = 2;
    this->confirmButtonTexIndices[1] = 3;
    this->titleLabel = FS_TITLE_SELECT_FILE;
    this->nextTitleLabel = FS_TITLE_OPEN_FILE;
    this->highlightPulseDir = 1;
    this->unk_1CAAC = 0xC;
    this->highlightColor[0] = 155;
    this->highlightColor[1] = 255;
    this->highlightColor[2] = 255;
    this->highlightColor[3] = 70;
    this->configMode = CM_FADE_IN_START;
    this->windowRot = 0.0f;
    this->stickXDir = this->inputTimerX = 0;
    this->stickYDir = this->inputTimerY = 0;
    this->kbdX = this->kbdY = this->charIndex = 0;
    this->kbdButton = FS_KBD_BTN_NONE;

    this->windowColor[0] = 100;
    this->windowColor[1] = 150;
    this->windowColor[2] = 255;

    this->windowAlpha = this->titleAlpha[0] = this->titleAlpha[1] = this->fileButtonAlpha[0] =
        this->fileButtonAlpha[1] = this->fileButtonAlpha[2] = this->nameBoxAlpha[0] = this->nameBoxAlpha[1] =
            this->nameBoxAlpha[2] = this->nameAlpha[0] = this->nameAlpha[1] = this->nameAlpha[2] =
                this->connectorAlpha[0] = this->connectorAlpha[1] = this->connectorAlpha[2] = this->fileInfoAlpha[0] =
                    this->fileInfoAlpha[1] = this->fileInfoAlpha[2] = this->actionButtonAlpha[FS_BTN_ACTION_COPY] =
                        this->actionButtonAlpha[FS_BTN_ACTION_ERASE] = this->confirmButtonAlpha[FS_BTN_CONFIRM_YES] =
                            this->confirmButtonAlpha[FS_BTN_CONFIRM_QUIT] = this->optionButtonAlpha =
                                this->nameEntryBoxAlpha = this->controlsAlpha = this->emptyFileTextAlpha = 0;

    this->windowPosX = 6;
    this->actionTimer = 8;
    this->warningLabel = FS_WARNING_NONE;

    this->warningButtonIndex = this->buttonYOffsets[0] = this->buttonYOffsets[1] = this->buttonYOffsets[2] =
        this->buttonYOffsets[3] = this->buttonYOffsets[4] = this->buttonYOffsets[5] = this->fileNamesY[0] =
            this->fileNamesY[1] = this->fileNamesY[2] = 0;

    this->unk_1CAD6[0] = 0;
    this->unk_1CAD6[1] = 3;
    this->unk_1CAD6[2] = 6;
    this->unk_1CAD6[3] = 8;
    this->unk_1CAD6[4] = 10;

    Letterbox_SetSizeTarget(0);

    gSaveContext.skyboxTime = CLOCK_TIME(0, 0);
    gSaveContext.save.dayTime = CLOCK_TIME(0, 0);

    Skybox_Init(&this->state, &this->skyboxCtx, SKYBOX_NORMAL_SKY);

    gTimeSpeed = 10;

    envCtx->changeSkyboxState = CHANGE_SKYBOX_INACTIVE;
    envCtx->changeSkyboxTimer = 0;
    envCtx->changeLightEnabled = false;
    envCtx->changeLightTimer = 0;
    envCtx->skyboxDmaState = SKYBOX_DMA_INACTIVE;
    envCtx->skybox1Index = 99;
    envCtx->skybox2Index = 99;
    envCtx->lightConfig = 0;
    envCtx->changeLightNextConfig = 0;
    envCtx->lightSetting = 0;
    envCtx->skyboxConfig = 2;
    envCtx->skyboxDisabled = 0;
    envCtx->skyboxBlend = 0;
    envCtx->glareAlpha = 0.0f;
    envCtx->lensFlareAlphaScale = 0.0f;

    Environment_UpdateSkybox(SKYBOX_NORMAL_SKY, &this->envCtx, &this->skyboxCtx);

    gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
        gSaveContext.buttonStatus[3] = gSaveContext.buttonStatus[4] = BTN_ENABLED;

    this->n64ddFlags[0] = this->n64ddFlags[1] = this->n64ddFlags[2] = this->defense[0] = this->defense[1] =
        this->defense[2] = 0;

#if PLATFORM_GC && OOT_PAL
    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, SRAM_SIZE, OS_READ);

    gSaveContext.language = sramCtx->readBuff[SRAM_HEADER_LANGUAGE];

    if (gSaveContext.language >= LANGUAGE_MAX) {
        sramCtx->readBuff[SRAM_HEADER_LANGUAGE] = gSaveContext.language = LANGUAGE_ENG;
    }
#endif
}

void FileSelect_Destroy(GameState* thisx) {
}

void FileSelect_Init(GameState* thisx) {
    FileSelectState* this = (FileSelectState*)thisx;
    s32 pad;
    u32 size = (uintptr_t)_title_staticSegmentRomEnd - (uintptr_t)_title_staticSegmentRomStart;

#if PLATFORM_N64
    if (D_80121212 != 0) {
        func_801C7268();
    }
#endif

#if !OOT_PAL_N64
    SREG(30) = 1;
#else
    SREG(30) = 2;
#endif
    PRINTF("SIZE=%x\n", size);

    this->staticSegment = GAME_STATE_ALLOC(&this->state, size, "../z_file_choose.c", 3392);
    ASSERT(this->staticSegment != NULL, "this->staticSegment != NULL", "../z_file_choose.c", 3393);
    DMA_REQUEST_SYNC(this->staticSegment, (uintptr_t)_title_staticSegmentRomStart, size, "../z_file_choose.c", 3394);

    size = (uintptr_t)_parameter_staticSegmentRomEnd - (uintptr_t)_parameter_staticSegmentRomStart;
    this->parameterSegment = GAME_STATE_ALLOC(&this->state, size, "../z_file_choose.c", 3398);
    ASSERT(this->parameterSegment != NULL, "this->parameterSegment != NULL", "../z_file_choose.c", 3399);
    DMA_REQUEST_SYNC(this->parameterSegment, (uintptr_t)_parameter_staticSegmentRomStart, size, "../z_file_choose.c",
                     3400);

#if OOT_PAL_N64
    size = gObjectTable[OBJECT_MAG].vromEnd - gObjectTable[OBJECT_MAG].vromStart;
    this->objectMagSegment = GAME_STATE_ALLOC(&this->state, size, "../z_file_choose.c", UNK_LINE);
    DMA_REQUEST_SYNC(this->objectMagSegment, gObjectTable[OBJECT_MAG].vromStart, size, "../z_file_choose.c", UNK_LINE);
#endif

    Matrix_Init(&this->state);
    View_Init(&this->view, this->state.gfxCtx);
    this->state.main = FileSelect_Main;
    this->state.destroy = FileSelect_Destroy;
    FileSelect_InitContext(&this->state);
    Font_LoadOrderedFont(&this->font);
    SEQCMD_RESET_AUDIO_HEAP(0, 10);
    // Setting ioData to 1 and writing it to ioPort 7 will skip the harp intro
    Audio_PlaySequenceWithSeqPlayerIO(SEQ_PLAYER_BGM_MAIN, NA_BGM_FILE_SELECT, 0, 7, 1);
}
