#include "file_choose.h"

void func_80808000(FileChooseContext* this);
extern s16 gScreenFillAlpha;
extern void (*gFileSelectDrawFuncs[])(FileChooseContext*);
extern void (*gFileSelectUpdateFuncs[])(FileChooseContext*);
extern void (*gConfigModeUpdateFuncs[])(FileChooseContext*);
extern void (*gSelectModeUpdateFuncs[])(FileChooseContext*);
extern Gfx* gControlsTexture[];
extern Gfx D_80812728[];
extern u8 gEmptyName[];
extern s16 gSelectFileYOffsets[];

extern u8 D_80000002; // this is code in the very beginning of ram???
extern s16 D_80812814[];
extern Gfx D_01046F00[];
extern Gfx D_01047118[];
extern Gfx D_01047328[];

void FileChoose_SetupView(FileChooseContext* this, f32 eyeX, f32 eyeY, f32 eyeZ) {
    Vec3f eye;
    Vec3f lookAt;
    Vec3f up;

    lookAt.x = lookAt.y = lookAt.z = 0.0f;
    up.x = up.z = 0.0f;

    eye.x = eyeX;
    eye.y = eyeY;
    eye.z = eyeZ;

    up.y = 1.0f;

    func_800AA358(&this->view, &eye, &lookAt, &up);
    func_800AAA50(&this->view, 0x7F);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080AFD0.s")

void FileChoose_InitModeUpdate(FileChooseContext* this) {
    if (this->menuMode == MENU_MODE_INIT) {
        this->menuMode = MENU_MODE_CONFIG;
        this->configMode = CM_FADE_IN_START;
        this->nextTitleLabel = TITLE_OPEN_FILE;
        osSyncPrintf("Ｓｒａｍ Ｓｔａｒｔ─Ｌｏａｄ  》》》》》  ");
        Sram_VerifyAndLoadAllSaves(this, &this->sramCtx);
        osSyncPrintf("終了！！！\n");
    }
}

void FileChoose_InitModeDraw(GameState* thisx) {
}

/**
 * Fade in the menu window and title label.
 * If a file is occupied fade in the name, name box, and connector.
 * Fade in the copy erase and options button according to the window alpha.
 */
void FileChoose_FadeInMenuElements(FileChooseContext* this) {
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

    this->actionBtnAlpha[BTN_ACTION_COPY] = this->actionBtnAlpha[BTN_ACTION_ERASE] = this->optionButtonAlpha =
        this->windowAlpha;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B394.s")

/**
 * Reduce the alpha of the black screen fill to create a fade in effect.
 * Additionally, slide the window from the right to the center of the screen
 */
void FileChoose_StartFadeIn(FileChooseContext* this) {
    FileChoose_FadeInMenuElements(this);
    gScreenFillAlpha -= 40;
    this->windowPosX -= 20;

    if (this->windowPosX <= -94) {
        this->windowPosX = -94;
        this->configMode = CM_FADE_IN_END;
        gScreenFillAlpha = 0;
    }
}

/**
 * Finish fading in the remaining menu elements.
 * Fade in the controls text at the bottom of the screen.
 */
void FileChoose_FinishFadeIn(FileChooseContext* this) {
    s32 pad;

    this->controlsAlpha += VREG(1);
    FileChoose_FadeInMenuElements(this);

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
 */
void FileChoose_UpdateMainMenu(FileChooseContext* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    Input* controller1 = &this->state.input[0];

    if (CHECK_BTN_ALL(controller1->press.button, BTN_START) || CHECK_BTN_ALL(controller1->press.button, BTN_A)) {
        if (this->buttonIndex < BTN_MAIN_COPY) {
            osSyncPrintf("REGCK_ALL[%x]=%x,%x,%x,%x,%x,%x\n", this->buttonIndex, NEWF_GET_Z(sramCtx, this->buttonIndex),
                         NEWF_GET_E(sramCtx, this->buttonIndex), NEWF_GET_L(sramCtx, this->buttonIndex),
                         NEWF_GET_D(sramCtx, this->buttonIndex), NEWF_GET_A(sramCtx, this->buttonIndex),
                         NEWF_GET_Z2(sramCtx, this->buttonIndex));

            if (!SLOT_OCCUPIED(sramCtx, this->buttonIndex)) {
                Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_L, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->configMode = CM_MAIN_TO_KEYBOARD;
                this->kbdButton = 99;
                this->charPage = CHAR_PAGE_ENG;
                this->kbdX = 0;
                this->kbdY = 0;
                this->charIndex = 0;
                this->charBgAlpha = 0;
                this->newFileNameCharCount = 0;
                this->nameEntryBoxPosX = 120;
                this->nameEntryBoxAlpha = 0;
                MemCopy(&this->fileNames[this->buttonIndex][0], &gEmptyName, 8);
            } else if (this->n64ddFlags[this->buttonIndex] == this->n64ddFlag) {
                Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_L, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->actionTimer = 8;
                this->selectMode = 0;
                this->selectedFileIndex = this->buttonIndex;
                this->menuMode = MENU_MODE_SELECT;
                this->nextTitleLabel = TITLE_OPEN_FILE;
            } else if (this->n64ddFlags[this->buttonIndex] == 0) {
                Audio_PlaySoundGeneral(NA_SE_SY_FSEL_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
        } else {
            if (this->warningLabel == WARNING_NONE) {
                Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_L, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                this->prevConfigMode = this->configMode;

                if (this->buttonIndex == BTN_MAIN_COPY) {
                    this->configMode = CM_COPY_SOURCE_MENU;
                    this->nextTitleLabel = TITLE_COPY_FROM;
                } else if (this->buttonIndex == BTN_MAIN_ERASE) {
                    this->configMode = CM_20;
                    this->nextTitleLabel = TITLE_ERASE_FILE;
                } else {
                    this->configMode = CM_MAIN_TO_OPTIONS;
                    this->kbdButton = 0;
                    this->kbdX = 0;
                    this->kbdY = 0;
                    this->charBgAlpha = 0;
                    this->newFileNameCharCount = 0;
                    this->nameEntryBoxPosX = 120;
                }

                this->actionTimer = 8;
            } else {
                Audio_PlaySoundGeneral(NA_SE_SY_FSEL_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
        }
    } else {
        if (ABS(this->stickRelY) > 30) {
            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);

            if (this->stickRelY > 30) {
                this->buttonIndex--;
                if (this->buttonIndex < BTN_MAIN_FILE_1) {
                    this->buttonIndex = BTN_MAIN_OPTIONS;
                }
            } else {
                this->buttonIndex++;
                if (this->buttonIndex > BTN_MAIN_OPTIONS) {
                    this->buttonIndex = BTN_MAIN_FILE_1;
                }
            }
        }

        if (this->buttonIndex == BTN_MAIN_COPY) {
            if (!SLOT_OCCUPIED(sramCtx, 0) && !SLOT_OCCUPIED(sramCtx, 1) && !SLOT_OCCUPIED(sramCtx, 2)) {
                this->warningButtonIndex = this->buttonIndex;
                this->warningLabel = WARNING_NO_FILE_COPY;
                this->emptyFileTextAlpha = 255;
            } else if (SLOT_OCCUPIED(sramCtx, 0) && SLOT_OCCUPIED(sramCtx, 1) && SLOT_OCCUPIED(sramCtx, 2)) {
                this->warningButtonIndex = this->buttonIndex;
                this->warningLabel = WARNING_NO_EMPTY_FILES;
                this->emptyFileTextAlpha = 255;
            } else {
                this->warningLabel = WARNING_NONE;
            }
        } else if (this->buttonIndex == BTN_MAIN_ERASE) {
            if (!SLOT_OCCUPIED(sramCtx, 0) && !SLOT_OCCUPIED(sramCtx, 1) && !SLOT_OCCUPIED(sramCtx, 2)) {
                this->warningButtonIndex = this->buttonIndex;
                this->warningLabel = WARNING_NO_FILE_ERASE;
                this->emptyFileTextAlpha = 255;
            } else {
                this->warningLabel = WARNING_NONE;
            }
        } else {
            this->warningLabel = WARNING_NONE;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BE28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BE30.s")

/**
 * Rotate the window from the main menu to the name entry menu
 */
void FileChoose_RotateToNameEntry(FileChooseContext* this) {
    this->windowRot += VREG(16);

    if (this->windowRot >= 314.0f) {
        this->windowRot = 314.0f;
        this->configMode = CM_START_NAME_ENTRY;
    }
}

/**
 * Rotate the window from the main menu to the options menu
 */
void FileChoose_RotateToOptions(FileChooseContext* this) {
    this->windowRot += VREG(16);

    if (this->windowRot >= 314.0f) {
        this->windowRot = 314.0f;
        this->configMode = CM_START_OPTIONS;
    }
}

/**
 * Rotate the window from the options menu to the main menu
 */
void FileChoose_RotateFromOptions(FileChooseContext* this) {
    this->windowRot += VREG(16);

    if (this->windowRot >= 628.0f) {
        this->windowRot = 0.0f;
        this->configMode = CM_MAIN_MENU;
    }
}

void FileChoose_FlashCursor(GameState* thisx);
#ifdef NON_MATCHING
void FileChoose_FlashCursor(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    s16 alphaStep;
    SramContext* sramCtx = &this->sramCtx;
    Input* controller3 = &this->state.input[2];

    if (CHECK_BTN_ALL(controller3->press.button, BTN_DLEFT)) {
        D_80000002 = sramCtx->readBuff[SRAM_HEADER_LANGUAGE] = gSaveContext.language = LANGUAGE_PAL_ENG;

        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, 3, OS_WRITE);
        osSyncPrintf("1:read_buff[]=%x, %x, %x, %x\n", sramCtx->readBuff[SRAM_HEADER_SOUND],
                     sramCtx->readBuff[SRAM_HEADER_ZTARGET], sramCtx->readBuff[SRAM_HEADER_LANGUAGE],
                     sramCtx->readBuff[SRAM_HEADER_MAGIC]);

        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, SRAM_SIZE, OS_READ);
        osSyncPrintf("read_buff[]=%x, %x, %x, %x\n", sramCtx->readBuff[SRAM_HEADER_SOUND],
                     sramCtx->readBuff[SRAM_HEADER_ZTARGET], sramCtx->readBuff[SRAM_HEADER_LANGUAGE],
                     sramCtx->readBuff[SRAM_HEADER_MAGIC]);

    } else if (CHECK_BTN_ALL(controller3->press.button, BTN_DUP)) {
        D_80000002 = sramCtx->readBuff[SRAM_HEADER_LANGUAGE] = gSaveContext.language = LANGUAGE_PAL_GER;

        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, 3, OS_WRITE);
        osSyncPrintf("1:read_buff[]=%x, %x, %x, %x\n", sramCtx->readBuff[SRAM_HEADER_SOUND],
                     sramCtx->readBuff[SRAM_HEADER_ZTARGET], sramCtx->readBuff[SRAM_HEADER_LANGUAGE],
                     sramCtx->readBuff[SRAM_HEADER_MAGIC]);
        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, SRAM_SIZE, OS_READ);
        osSyncPrintf("read_buff[]=%x, %x, %x, %x\n", sramCtx->readBuff[SRAM_HEADER_SOUND],
                     sramCtx->readBuff[SRAM_HEADER_ZTARGET], sramCtx->readBuff[SRAM_HEADER_LANGUAGE],
                     sramCtx->readBuff[SRAM_HEADER_MAGIC]);

    } else if (CHECK_BTN_ALL(controller3->press.button, BTN_DRIGHT)) {
        D_80000002 = sramCtx->readBuff[SRAM_HEADER_LANGUAGE] = gSaveContext.language = LANGUAGE_PAL_FR;

        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, 3, OS_WRITE);
        osSyncPrintf("1:read_buff[]=%x, %x, %x, %x\n", sramCtx->readBuff[SRAM_HEADER_SOUND],
                     sramCtx->readBuff[SRAM_HEADER_ZTARGET], sramCtx->readBuff[SRAM_HEADER_LANGUAGE],
                     sramCtx->readBuff[SRAM_HEADER_MAGIC]);

        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, SRAM_SIZE, OS_READ);
        osSyncPrintf("read_buff[]=%x, %x, %x, %x\n", sramCtx->readBuff[SRAM_HEADER_SOUND],
                     sramCtx->readBuff[SRAM_HEADER_ZTARGET], sramCtx->readBuff[SRAM_HEADER_LANGUAGE],
                     sramCtx->readBuff[SRAM_HEADER_MAGIC]);
    }

    alphaStep = ABS(this->highlightColor[3] - D_80812814[this->highlightFlashDir]) / XREG(35);

    if (this->highlightColor[3] >= D_80812814[this->highlightFlashDir]) {
        this->highlightColor[3] -= alphaStep;
    } else {
        this->highlightColor[3] += alphaStep;
    }

    XREG(35)--;

    if (XREG(35) == 0) {
        this->highlightColor[3] = D_80812814[this->highlightFlashDir];
        XREG(35) = XREG(36 + this->highlightFlashDir);
        this->highlightFlashDir ^= 1;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/FileChoose_FlashCursor.s")
#endif

void FileChoose_ConfigModeUpdate(FileChooseContext* this) {
    gConfigModeUpdateFuncs[this->configMode](this);
}

void func_8080C330(FileChooseContext* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080C330.s")
// void func_8080C330(FileChooseContext* this) {
//     GraphicsContext* gfxCtx = this->state.gfxCtx;
//     s16 i;
//     s16 j;
//     s16 x;
//     s16 tmp;
//     s16 tmp2;
//     s16 tmp3;

//     this->allocVtx1 = Graph_Alloc(gfxCtx, sizeof(Vtx) * 80);
//     tmp = this->windowPosX - 90;

//     for (i = 0, x = 0; i < 4; i++) {
//         tmp += 0x40;
//         if (i == 3) {
//             tmp2 = 0x30;
//         } else {
//             tmp2 = 0x40;
//         }
//         tmp3 = 0x50;

//         for (j = 0; j < 5; j++, x += 4) {

//             this->allocVtx1[x].v.ob[0] = 
//             this->allocVtx1[x+2].v.ob[0] = tmp;

//             this->allocVtx1[x+3].v.ob[0] = tmp + tmp2;
//             this->allocVtx1[x+1].v.ob[0] = tmp + tmp2;
//             // 54
//             this->allocVtx1[x].v.ob[1] = 
//             this->allocVtx1[x+1].v.ob[1] = tmp3;

//             this->allocVtx1[x+3].v.ob[1] = tmp3 - 0x20;
//             this->allocVtx1[x+2].v.ob[1] = tmp3 - 0x20;
//             // 59
//             this->allocVtx1[x].v.ob[2] = 
//             this->allocVtx1[x+1].v.ob[2] = 
//             this->allocVtx1[x+2].v.ob[2] = 
//             this->allocVtx1[x+3].v.ob[2] = 0;
//             // 64
//             this->allocVtx1[x].v.flag = 
//             this->allocVtx1[x+1].v.flag = 
//             this->allocVtx1[x+2].v.flag = 
//             this->allocVtx1[x+3].v.flag = 0;
//             // 69
//             this->allocVtx1[x].v.tc[0] = 
//             this->allocVtx1[x].v.tc[1] = 
//             this->allocVtx1[x+1].v.tc[1] = 
//             this->allocVtx1[x+2].v.tc[0] = 0;
//             //74
//             this->allocVtx1[x+3].v.tc[0] = tmp2 * 32;
//             this->allocVtx1[x+1].v.tc[0] = tmp2 * 32;
//             // 76
//             this->allocVtx1[x+2].v.tc[1] = 
//             this->allocVtx1[x+3].v.tc[1] = 0x400;
//             // 79
//             this->allocVtx1[x].v.cn[0] = 
//             this->allocVtx1[x+2].v.cn[0] = 
//             this->allocVtx1[x].v.cn[1] = 
//             this->allocVtx1[x+2].v.cn[1] = 
//             this->allocVtx1[x].v.cn[2] = 
//             this->allocVtx1[x+2].v.cn[2] = 
//             this->allocVtx1[x+1].v.cn[0] = 
//             this->allocVtx1[x+3].v.cn[0] = 
//             this->allocVtx1[x+1].v.cn[1] = 
//             this->allocVtx1[x+3].v.cn[1] = 
//             this->allocVtx1[x+1].v.cn[2] = 
//             this->allocVtx1[x+3].v.cn[2] = 
//             this->allocVtx1[x].v.cn[3] = 
//             this->allocVtx1[x+2].v.cn[3] = 
//             this->allocVtx1[x+1].v.cn[3] = 
//             this->allocVtx1[x+3].v.cn[3] = 0xFF;

//             tmp3 -= 0x20;
//         }
//     }
// }

void func_8080C60C(FileChooseContext* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080C60C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080D8CC.s")

void func_8080E074(FileChooseContext* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080E074.s")

void FileChoose_ConfigModeDraw(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    f32 skyboxX;
    f32 skyboxY;
    f32 skyboxZ;

    OPEN_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2218);
    gDPPipeSync(POLY_OPA_DISP++);

    skyboxX = (1000.0f * Math_CosS(ZREG(11))) - (1000.0f * Math_SinS(ZREG(11)));
    skyboxY = ZREG(13);
    skyboxZ = (1000.0f * Math_SinS(ZREG(11))) + (1000.0f * Math_CosS(ZREG(11)));

    FileChoose_SetupView(this, skyboxX, skyboxY, skyboxZ);
    SkyboxDraw_Draw(&this->skyboxCtx, this->state.gfxCtx, 1, this->envCtx.unk_13, skyboxX, skyboxY, skyboxZ);
    gDPSetTextureLUT(POLY_OPA_DISP++, G_TT_NONE);
    ZREG(11) += ZREG(10);
    func_8006FC88(1, &this->envCtx, &this->skyboxCtx);
    gDPPipeSync(POLY_OPA_DISP++);
    func_800949A8(this->state.gfxCtx);
    FileChoose_SetupView(this, 0.0f, 0.0f, 64.0f);
    func_8080C330(this);
    func_8080C60C(this);

    if ((this->configMode != CM_KEYBOARD) && (this->configMode != CM_START_NAME_ENTRY)) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                        this->windowAlpha);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

        Matrix_Translate(0.0f, 0.0f, -93.6f, MTXMODE_NEW);
        Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);

        if (this->windowRot != 0) {
            Matrix_RotateX(this->windowRot / 100.0f, 1);
        }

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(this->state.gfxCtx, "../z_file_choose.c", 2282),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPVertex(POLY_OPA_DISP++, &this->allocVtx1[0], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_01046F00);

        gSPVertex(POLY_OPA_DISP++, &this->allocVtx1[32], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_01047118);

        gSPVertex(POLY_OPA_DISP++, &this->allocVtx1[64], 16, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_01047328);

        gDPPipeSync(POLY_OPA_DISP++);

        func_8080E074(this);
    }

    if ((this->configMode >= CM_MAIN_TO_KEYBOARD) && (this->configMode <= CM_KEYBOARD_TO_MAIN)) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                        this->windowAlpha);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

        Matrix_Translate(0.0f, 0.0f, -93.6f, MTXMODE_NEW);
        Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
        Matrix_RotateX((this->windowRot - 314.0f) / 100.0f, MTXMODE_APPLY);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(this->state.gfxCtx, "../z_file_choose.c", 2316),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPVertex(POLY_OPA_DISP++, &this->allocVtx1[0], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_01046F00);

        gSPVertex(POLY_OPA_DISP++, &this->allocVtx1[32], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_01047118);

        gSPVertex(POLY_OPA_DISP++, &this->allocVtx1[64], 16, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_01047328);

        gDPPipeSync(POLY_OPA_DISP++);

        func_80808000(this);
    }

    if ((this->configMode >= CM_MAIN_TO_OPTIONS) && (this->configMode <= CM_OPTIONS_TO_MAIN)) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                        this->windowAlpha);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

        Matrix_Translate(0.0f, 0.0f, -93.6f, MTXMODE_NEW);
        Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
        Matrix_RotateX((this->windowRot - 314.0f) / 100.0f, MTXMODE_APPLY);

        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(this->state.gfxCtx, "../z_file_choose.c", 2337),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPVertex(POLY_OPA_DISP++, &this->allocVtx1[0], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_01046F00);

        gSPVertex(POLY_OPA_DISP++, &this->allocVtx1[32], 32, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_01047118);

        gSPVertex(POLY_OPA_DISP++, &this->allocVtx1[64], 16, 0);
        gSPDisplayList(POLY_OPA_DISP++, D_01047328);

        gDPPipeSync(POLY_OPA_DISP++);

        func_8080AF30(this);
    }

    gDPPipeSync(POLY_OPA_DISP++);
    FileChoose_SetupView(this, 0.0f, 0.0f, 64.0f);

    CLOSE_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2352);
}

void func_8080FE2C(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
    SramContext* sramCtx = &this->sramCtx;
    s16 i;

    for (i = 0; i < 3; i++) {
        if (i != this->buttonIndex) {
            this->fileButtonAlpha[i] -= 25;
            this->actionBtnAlpha[BTN_ACTION_COPY] = this->actionBtnAlpha[BTN_ACTION_ERASE] = this->optionButtonAlpha =
                this->fileButtonAlpha[i];

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
        this->confirmButtonIndex = BTN_CONFIRM_YES;
    }
}

void func_8080FF98(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
    s16 yStep;

    yStep = ABS(this->buttonYOffsets[this->buttonIndex] - gSelectFileYOffsets[this->buttonIndex]) / this->actionTimer;
    this->buttonYOffsets[this->buttonIndex] += yStep;
    this->actionTimer--;

    if ((this->actionTimer == 0) ||
        (this->buttonYOffsets[this->buttonIndex] == gSelectFileYOffsets[this->buttonIndex])) {
        this->buttonYOffsets[BTN_SELECT_YES] = this->buttonYOffsets[BTN_SELECT_QUIT] = -24;
        this->actionTimer = 8;
        this->selectMode++;
    }
}

void func_8081009C(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;

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

    this->confirmButtonAlpha[BTN_CONFIRM_YES] = this->confirmButtonAlpha[BTN_CONFIRM_QUIT] =
        this->fileInfoAlpha[this->buttonIndex];
}

void func_8081017C(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
    Input* controller1 = &this->state.input[0];

    if (CHECK_BTN_ALL(controller1->press.button, BTN_START) || (CHECK_BTN_ALL(controller1->press.button, BTN_A))) {
        if (this->confirmButtonIndex == BTN_CONFIRM_YES) {
            func_800AA000(300.0f, 0xB4, 0x14, 0x64);
            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_L, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->selectMode = SM_FADE_OUT;
            func_800F6964(0xF);
        } else {
            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CLOSE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->selectMode++;
        }
    } else if (CHECK_BTN_ALL(controller1->press.button, BTN_B)) {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CLOSE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->selectMode++;
    } else if (ABS(this->stickRelY) >= 30) {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->confirmButtonIndex ^= 1;
    }
}

void func_80810354(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;

    this->fileInfoAlpha[this->buttonIndex] -= 25;
    this->nameBoxAlpha[this->buttonIndex] += 25;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->buttonYOffsets[BTN_SELECT_YES] = this->buttonYOffsets[BTN_SELECT_QUIT] = 0;
        this->nameBoxAlpha[this->buttonIndex] = 200;
        this->fileInfoAlpha[this->buttonIndex] = 0;
        this->nextTitleLabel = TITLE_SELECT_FILE;
        this->actionTimer = 8;
        this->selectMode++;
    }

    this->confirmButtonAlpha[0] = this->confirmButtonAlpha[1] = this->fileInfoAlpha[this->buttonIndex];
}

void func_80810440(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
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

            this->actionBtnAlpha[BTN_ACTION_COPY] = this->actionBtnAlpha[BTN_ACTION_ERASE] = this->optionButtonAlpha =
                this->fileButtonAlpha[i];

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
        this->menuMode = MENU_MODE_CONFIG;
        this->configMode = CM_MAIN_MENU;
        this->nextConfigMode = CM_MAIN_MENU;
        this->selectMode = SM_00;
    }
}

void FileChoose_FadeOut(FileChooseContext* this) {
    gScreenFillAlpha += VREG(10);

    if (gScreenFillAlpha >= 255) {
        gScreenFillAlpha = 255;
        this->selectMode += 1;
    }
}

/**
 * Load the save for the appropriate file and start the game.
 * Note: On Debug ROM, File 1 will go to Map Select
 */
void FileChoose_LoadGame(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
    u16 swordEquipMask;
    s32 pad;

    if (this->buttonIndex == BTN_SELECT_FILE_1) {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_L, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        gSaveContext.fileNum = this->buttonIndex;
        Sram_OpenSave(&this->sramCtx);
        gSaveContext.gameMode = 0;
        SET_NEXT_GAMESTATE(&this->state, Select_Init, SelectContext);
        this->state.running = false;
    } else {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_L, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        gSaveContext.fileNum = this->buttonIndex;
        Sram_OpenSave(&this->sramCtx);
        gSaveContext.gameMode = 0;
        SET_NEXT_GAMESTATE(&this->state, Gameplay_Init, GlobalContext);
        this->state.running = false;
    }
    
    gSaveContext.respawn[0].entranceIndex = -1;
    gSaveContext.respawnFlag = 0;
    gSaveContext.seqIndex = 0xFF;
    gSaveContext.nightSeqIndex = 0xFF;
    gSaveContext.showTitleCard = true;
    gSaveContext.dogParams = 0;
    gSaveContext.timer1State = 0;
    gSaveContext.timer2State = 0;
    gSaveContext.eventInf[0] = 0;
    gSaveContext.eventInf[1] = 0;
    gSaveContext.eventInf[2] = 0;
    gSaveContext.eventInf[3] = 0;
    gSaveContext.unk_13EE = 0x32;
    gSaveContext.nayrusLoveTimer = 0;
    gSaveContext.healthAccumulator = 0;
    gSaveContext.unk_13F0 = 0;
    gSaveContext.unk_13F2 = 0;
    gSaveContext.unk_140E = 0;
    gSaveContext.environmentTime = 0;
    gSaveContext.nextTransition = 0xFF;
    gSaveContext.nextCutsceneIndex = 0xFFEF;
    gSaveContext.cutsceneTrigger = 0;
    gSaveContext.chamberCutsceneNum = 0;
    gSaveContext.nextDayTime = 0xFFFF;
    gSaveContext.unk_13C3 = 0;

    gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
        gSaveContext.buttonStatus[3] = gSaveContext.buttonStatus[4] = BTN_ENABLED;

    gSaveContext.unk_13E7 = gSaveContext.unk_13E8 = gSaveContext.unk_13EA = gSaveContext.unk_13EC =
        gSaveContext.unk_13F4 = 0;

    gSaveContext.unk_13F6 = gSaveContext.magic;
    gSaveContext.magic = 0;
    gSaveContext.magicLevel = gSaveContext.magic;

    if (1) {}
    osSyncPrintf(VT_FGCOL(GREEN));
    osSyncPrintf("Z_MAGIC_NOW_NOW=%d  MAGIC_NOW=%d\n", (0, gSaveContext.unk_13F6), gSaveContext.magic);
    osSyncPrintf(VT_RST);

    gSaveContext.naviTimer = 0;

    if ((gSaveContext.equips.buttonItems[0] != ITEM_SWORD_KOKIRI) &&
        (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_MASTER) &&
        (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_BGS) &&
        (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_KNIFE)) {

        gSaveContext.equips.buttonItems[0] = ITEM_NONE;
        swordEquipMask = gEquipMasks[EQUIP_SWORD] & gSaveContext.equips.equipment;
        gSaveContext.equips.equipment &= gEquipNegMasks[EQUIP_SWORD];
        gSaveContext.inventory.equipment ^= (gBitFlags[swordEquipMask - 1] << gEquipShifts[EQUIP_SWORD]);
    }
}

void FileChoose_SelectModeUpdate(FileChooseContext* this) {
    gSelectModeUpdateFuncs[this->selectMode](this);
}

void FileChoose_SelectModeDraw(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    f32 eyeX;
    f32 eyeY;
    f32 eyeZ;

    OPEN_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2753);

    gDPPipeSync(POLY_OPA_DISP++);

    eyeX = (1000.0f * Math_CosS(ZREG(11))) - (1000.0f * Math_SinS(ZREG(11)));
    eyeY = ZREG(13);
    eyeZ = (1000.0f * Math_SinS(ZREG(11))) + (1000.0f * Math_CosS(ZREG(11)));

    FileChoose_SetupView(this, eyeX, eyeY, eyeZ);
    SkyboxDraw_Draw(&this->skyboxCtx, this->state.gfxCtx, 1, this->envCtx.unk_13, eyeX, eyeY, eyeZ);
    gDPSetTextureLUT(POLY_OPA_DISP++, G_TT_NONE);
    ZREG(11) += ZREG(10);
    func_8006FC88(1, &this->envCtx, &this->skyboxCtx);
    gDPPipeSync(POLY_OPA_DISP++);
    func_800949A8(this->state.gfxCtx);
    FileChoose_SetupView(this, 0.0f, 0.0f, 64.0f);
    func_8080C330(this);
    func_8080C60C(this);

    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                    this->windowAlpha);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

    Matrix_Translate(0.0f, 0.0f, -93.6f, MTXMODE_NEW);
    Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
    Matrix_RotateX(this->windowRot / 100.0f, MTXMODE_APPLY);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(this->state.gfxCtx, "../z_file_choose.c", 2810),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPVertex(POLY_OPA_DISP++, &this->allocVtx1[0], 32, 0);
    gSPDisplayList(POLY_OPA_DISP++, D_01046F00);

    gSPVertex(POLY_OPA_DISP++, &this->allocVtx1[32], 32, 0);
    gSPDisplayList(POLY_OPA_DISP++, D_01047118);

    gSPVertex(POLY_OPA_DISP++, &this->allocVtx1[64], 16, 0);
    gSPDisplayList(POLY_OPA_DISP++, D_01047328);

    func_8080E074(this);
    gDPPipeSync(POLY_OPA_DISP++);
    FileChoose_SetupView(this, 0.0f, 0.0f, 64.0f);

    CLOSE_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2834);
}

void FileChoose_Main(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    Input* controller1 = &this->state.input[0];

    OPEN_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2898);

    this->n64ddFlag = 0;

    gSPSegment(POLY_OPA_DISP++, 0x00, NULL);
    gSPSegment(POLY_OPA_DISP++, 0x01, this->staticSegment);
    gSPSegment(POLY_OPA_DISP++, 0x02, this->parameterSegment);

    func_80095248(this->state.gfxCtx, 0, 0, 0);

    this->stickRelX = controller1->rel.stick_x;
    this->stickRelY = controller1->rel.stick_y;

    if (this->stickRelX < -30) {
        if (this->xIndexOffset == -1) {
            this->inputTimerX--;
            if (this->inputTimerX < 0) {
                this->inputTimerX = 2;
            } else {
                this->stickRelX = 0;
            }
        } else {
            this->inputTimerX = 10;
            this->xIndexOffset = -1;
        }
    } else {
        if (this->stickRelX > 30) {
            if (this->xIndexOffset == 1) {
                this->inputTimerX--;
                if (this->inputTimerX < 0) {
                    this->inputTimerX = 2;
                } else {
                    this->stickRelX = 0;
                }
            } else {
                this->inputTimerX = 10;
                this->xIndexOffset = 1;
            }
        } else {
            this->xIndexOffset = 0;
        }
    }

    if (this->stickRelY < -30) {
        if (this->yIndexOffset == -1) {
            this->inputTimerY -= 1;
            if (this->inputTimerY < 0) {
                this->inputTimerY = 2;
            } else {
                this->stickRelY = 0;
            }
        } else {
            this->inputTimerY = 10;
            this->yIndexOffset = -1;
        }
    } else {
        if (this->stickRelY > 30) {
            if (this->yIndexOffset == 1) {
                this->inputTimerY -= 1;
                if (this->inputTimerY < 0) {
                    this->inputTimerY = 2;
                } else {
                    this->stickRelY = 0;
                }
            } else {
                this->inputTimerY = 10;
                this->yIndexOffset = 1;
            }
        } else {
            this->yIndexOffset = 0;
        }
    }

    this->emptyFileTextAlpha = 0;

    FileChoose_FlashCursor(this);
    gFileSelectUpdateFuncs[this->menuMode](this); // 803FE738
    gFileSelectDrawFuncs[this->menuMode](this);

    // do not draw controls text in the options menu
    if ((this->configMode <= 35) || (this->configMode >= 40)) {
        func_800944C4(this->state.gfxCtx);

        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 100, 255, 255, this->controlsAlpha);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
        gDPLoadTextureBlock(POLY_OPA_DISP++, gControlsTexture[gSaveContext.language], G_IM_FMT_IA, G_IM_SIZ_8b, 144, 16,
                            0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                            G_TX_NOLOD, G_TX_NOLOD);
        gSPTextureRectangle(POLY_OPA_DISP++, 0x0168, 0x0330, 0x03A8, 0x0370, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gSPDisplayList(POLY_OPA_DISP++, D_80812728);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 0, 0, 0, gScreenFillAlpha);
    gDPFillRectangle(POLY_OPA_DISP++, 0, 0, gScreenWidth - 1, gScreenHeight - 1);

    CLOSE_DISPS(this->state.gfxCtx, "../z_file_choose.c", 3035);
}

void FileChoose_InitContext(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    EnvironmentContext* envCtx = &this->envCtx;
    SramContext* sramCtx = &this->sramCtx;

    Sram_Alloc(&this->state, sramCtx);

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

    gScreenFillAlpha = 255;

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

    this->menuMode = MENU_MODE_INIT;

    this->buttonIndex = this->selectMode = this->selectedFileIndex = this->copyDestFileIndex =
        this->confirmButtonIndex = 0;

    this->unk_1CAAE[0] = 2;
    this->unk_1CAAE[1] = 3;
    this->titleLabel = TITLE_SELECT_FILE;
    this->nextTitleLabel = TITLE_OPEN_FILE;
    this->highlightFlashDir = 1;
    this->unk_1CAAC = 0xC;
    this->highlightColor[0] = 155;
    this->highlightColor[1] = 255;
    this->highlightColor[2] = 255;
    this->highlightColor[3] = 70;
    this->configMode = 0;
    this->windowRot = 0.0f;
    this->xIndexOffset = this->inputTimerX = 0;
    this->yIndexOffset = this->inputTimerY = 0;
    this->kbdX = this->kbdY = this->charIndex = 0;
    this->kbdButton = 99;

    this->windowColor[0] = 100;
    this->windowColor[1] = 150;
    this->windowColor[2] = 255;

    this->windowAlpha = this->titleAlpha[0] = this->titleAlpha[1] = this->fileButtonAlpha[0] =
        this->fileButtonAlpha[1] = this->fileButtonAlpha[2] = this->nameBoxAlpha[0] = this->nameBoxAlpha[1] =
            this->nameBoxAlpha[2] = this->nameAlpha[0] = this->nameAlpha[1] = this->nameAlpha[2] =
                this->connectorAlpha[0] = this->connectorAlpha[1] = this->connectorAlpha[2] = this->fileInfoAlpha[0] =
                    this->fileInfoAlpha[1] = this->fileInfoAlpha[2] = this->actionBtnAlpha[BTN_ACTION_COPY] =
                        this->actionBtnAlpha[BTN_ACTION_ERASE] = this->confirmButtonAlpha[BTN_CONFIRM_YES] =
                            this->confirmButtonAlpha[BTN_CONFIRM_QUIT] = this->optionButtonAlpha =
                                this->nameEntryBoxAlpha = this->controlsAlpha = this->emptyFileTextAlpha = 0;

    this->windowPosX = 6;
    this->actionTimer = 8;
    this->warningLabel = WARNING_NONE;

    this->warningButtonIndex = this->buttonYOffsets[0] = this->buttonYOffsets[1] = this->buttonYOffsets[2] =
        this->buttonYOffsets[3] = this->buttonYOffsets[4] = this->buttonYOffsets[5] = this->fileNamesY[0] =
            this->fileNamesY[1] = this->fileNamesY[2] = 0;

    this->unk_1CAD6[0] = 0;
    this->unk_1CAD6[1] = 3;
    this->unk_1CAD6[2] = 6;
    this->unk_1CAD6[3] = 8;
    this->unk_1CAD6[4] = 10;

    ShrinkWindow_SetVal(0);

    gSaveContext.environmentTime = 0;
    gSaveContext.dayTime = 0;

    func_800B0E50(&this->state, &this->skyboxCtx, 1);

    D_8011FB40 = 10;

    envCtx->unk_19 = 0;
    envCtx->unk_1A = 0;
    envCtx->unk_21 = 0;
    envCtx->unk_22 = 0;
    envCtx->unk_44 = 0;
    envCtx->unk_10 = 0x63;
    envCtx->unk_11 = 0x63;
    envCtx->unk_1F = 0;
    envCtx->unk_20 = 0;
    envCtx->unk_BD = 0;
    envCtx->gloomySky = 2;
    envCtx->skyDisabled = 0;
    envCtx->unk_13 = 0;
    envCtx->unk_84 = 0.0f;
    envCtx->unk_88 = 0.0f;

    func_8006FC88(1, &this->envCtx, &this->skyboxCtx);

    gSaveContext.buttonStatus[0] = gSaveContext.buttonStatus[1] = gSaveContext.buttonStatus[2] =
        gSaveContext.buttonStatus[3] = gSaveContext.buttonStatus[4] = BTN_ENABLED;

    this->n64ddFlags[0] = this->n64ddFlags[1] = this->n64ddFlags[2] = this->defense[0] = this->defense[1] =
        this->defense[2] = 0;

    SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, SRAM_SIZE, OS_READ);

    gSaveContext.language = sramCtx->readBuff[SRAM_HEADER_LANGUAGE];
    if (gSaveContext.language > LANGUAGE_PAL_FR) {
        sramCtx->readBuff[SRAM_HEADER_LANGUAGE] = gSaveContext.language = LANGUAGE_PAL_ENG;
    }
}

void FileChoose_Destroy(GameState* thisx) {
}

void FileChoose_Init(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    u32 size = (u32)_title_staticSegmentRomEnd - (u32)_title_staticSegmentRomStart; // 01AA4000
    s32 pad;

    SREG(30) = 1;
    osSyncPrintf("SIZE=%x\n", size);

    this->staticSegment = GameState_Alloc(&this->state, size, "../z_file_choose.c", 3392);
    if (this->staticSegment == NULL) {
        __assert("this->staticSegment != NULL", "../z_file_choose.c", 3393);
    }
    DmaMgr_SendRequest1(this->staticSegment, (u32)_title_staticSegmentRomStart, size, "../z_file_choose.c", 3394);

    size = (u32)_parameter_staticSegmentRomEnd - (u32)_parameter_staticSegmentRomStart;
    this->parameterSegment = GameState_Alloc(&this->state, size, "../z_file_choose.c", 3398);
    if (this->parameterSegment == NULL) {
        __assert("this->parameterSegment != NULL", "../z_file_choose.c", 3399);
    }
    DmaMgr_SendRequest1(this->parameterSegment, (u32)_parameter_staticSegmentRomStart, size, "../z_file_choose.c",
                        3400);

    Matrix_Init(&this->state);
    View_Init(&this->view, this->state.gfxCtx);
    this->state.main = FileChoose_Main;
    this->state.destroy = FileChoose_Destroy;
    FileChoose_InitContext(this);
    Font_LoadOrderedFont(&this->font);
    Audio_SetBGM(0xF000000A);
    func_800F5E18(0, 0x57, 0, 7, 1);
}
