#include "file_choose.h"

void func_80808000(FileChooseContext* this);
void FileChoose_DrawCharacter(GraphicsContext* gfxCtx, void* texture, s16 vtx);
extern s16 gScreenFillAlpha;
extern void (*gFileSelectDrawFuncs[])(FileChooseContext*);
extern void (*gFileSelectUpdateFuncs[])(FileChooseContext*);
extern void (*gConfigModeUpdateFuncs[])(FileChooseContext*);
extern void (*gSelectModeUpdateFuncs[])(FileChooseContext*);
extern Gfx* gControlsTexture[];
extern Gfx D_80812728[];
extern u8 gEmptyName[];
extern s16 gSelectFileYOffsets[];
extern s16 D_80812750[];
extern s16 D_80812818[];
extern s16 D_80812820[];
extern s16 D_80812828[];
extern s16 D_80812830[];
extern s16 D_8081283C[];
extern s16 D_80812844[];
extern s16 D_80812848[];
extern u16 D_8081284C[];
extern void* D_80812854[];
extern s16 D_80812878[];
extern s16 D_8081288C[];
extern s16 D_808128A0[];
extern s16 D_808128B4[];
extern s16 D_808128C8[2][3];
extern void* D_808128D4[];
extern s16 D_808128DC[2][3];
extern s16 D_808128E8[2][3];
extern s16 D_8081275C[2][3];
extern void* D_808128F4[];
extern void* D_80812908[3][9];
extern void* D_80812974[3][5];
extern void* D_808129B0[3][3];
extern void* D_808129D4[3][4];
extern void* D_80812A04[];

extern u8 D_80000002; // this is code in the very beginning of ram???
extern s16 D_80812814[];
extern Gfx D_01046F00[];
extern Gfx D_01047118[];
extern Gfx D_01047328[];
extern u8 D_01000000[];
extern u8 D_0101AD00[];
extern u8 D_01015600[];
extern u8 D_0101B680[];

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

Gfx* func_8080AFD0(Gfx* gfx, void* timg, s16 arg2, s16 arg3, s16 arg4) {
    gDPLoadTextureBlockYuv(gfx++, timg, G_IM_FMT_IA, G_IM_SIZ_8b, arg2, arg3, 0, G_TX_NOMIRROR | G_TX_WRAP,
                              G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);

    gSP1Quadrangle(gfx++, arg4, arg4 + 2, arg4 + 3, arg4 + 1, 0);

    return gfx;
}

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

/**
 * Converts a numerical value to ones-tens-hundreds digits
 */
void func_8080B394(u16 value, s16* hundreds, s16* tens, s16* ones) {
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

void func_8080BE28(FileChooseContext* thisx) {
}

void func_8080BE30(FileChooseContext* this) {
    XREG(73) += 2;
    if (XREG(73) == 0xFE) {
        this->configMode = this->nextConfigMode;
        XREG(73) = 0;
    }
}

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

void FileChoose_FlashCursor(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    s16 alphaStep;
    SramContext* sramCtx = &this->sramCtx;
    Input* controller3 = &this->state.input[2];

    if (CHECK_BTN_ALL(controller3->press.button, BTN_DLEFT)) {
        sramCtx->readBuff[SRAM_HEADER_LANGUAGE] = gSaveContext.language = LANGUAGE_PAL_ENG;
        *((u8*)0x80000002) = LANGUAGE_PAL_ENG;

        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, 3, OS_WRITE);
        osSyncPrintf("1:read_buff[]=%x, %x, %x, %x\n", sramCtx->readBuff[SRAM_HEADER_SOUND],
                     sramCtx->readBuff[SRAM_HEADER_ZTARGET], sramCtx->readBuff[SRAM_HEADER_LANGUAGE],
                     sramCtx->readBuff[SRAM_HEADER_MAGIC]);

        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, SRAM_SIZE, OS_READ);
        osSyncPrintf("read_buff[]=%x, %x, %x, %x\n", sramCtx->readBuff[SRAM_HEADER_SOUND],
                     sramCtx->readBuff[SRAM_HEADER_ZTARGET], sramCtx->readBuff[SRAM_HEADER_LANGUAGE],
                     sramCtx->readBuff[SRAM_HEADER_MAGIC]);
    } else if (CHECK_BTN_ALL(controller3->press.button, BTN_DUP)) {
        sramCtx->readBuff[SRAM_HEADER_LANGUAGE] = gSaveContext.language = LANGUAGE_PAL_GER;
        *((u8*)0x80000002) = LANGUAGE_PAL_GER;

        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, 3, OS_WRITE);
        osSyncPrintf("1:read_buff[]=%x, %x, %x, %x\n", sramCtx->readBuff[SRAM_HEADER_SOUND],
                     sramCtx->readBuff[SRAM_HEADER_ZTARGET], sramCtx->readBuff[SRAM_HEADER_LANGUAGE],
                     sramCtx->readBuff[SRAM_HEADER_MAGIC]);
        SsSram_ReadWrite(OS_K1_TO_PHYSICAL(0xA8000000), sramCtx->readBuff, SRAM_SIZE, OS_READ);
        osSyncPrintf("read_buff[]=%x, %x, %x, %x\n", sramCtx->readBuff[SRAM_HEADER_SOUND],
                     sramCtx->readBuff[SRAM_HEADER_ZTARGET], sramCtx->readBuff[SRAM_HEADER_LANGUAGE],
                     sramCtx->readBuff[SRAM_HEADER_MAGIC]);
    } else if (CHECK_BTN_ALL(controller3->press.button, BTN_DRIGHT)) {
        sramCtx->readBuff[SRAM_HEADER_LANGUAGE] = gSaveContext.language = LANGUAGE_PAL_FR;
        *((u8*)0x80000002) = LANGUAGE_PAL_FR;

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

void FileChoose_ConfigModeUpdate(FileChooseContext* this) {
    gConfigModeUpdateFuncs[this->configMode](this);
}

void func_8080C330(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
    s16 i;
    s16 j;
    s16 x;
    s16 tmp;
    s16 tmp2;
    s16 tmp3;

    this->allocVtx1 = Graph_Alloc(this->state.gfxCtx, sizeof(Vtx) * 80);
    tmp = this->windowPosX - 90;

    for (x = 0, i = 0; i < 4; i++) {
        tmp += 0x40;
        tmp2 = (i == 3) ? 0x30 : 0x40;

        for (j = 0, tmp3 = 0x50; j < 5; j++, x += 4, tmp3 -= 0x20) {
            this->allocVtx1[x].v.ob[0] = this->allocVtx1[x + 2].v.ob[0] = tmp;

            this->allocVtx1[x + 1].v.ob[0] = this->allocVtx1[x + 3].v.ob[0] = tmp + tmp2;

            this->allocVtx1[x].v.ob[1] = this->allocVtx1[x + 1].v.ob[1] = tmp3;

            this->allocVtx1[x + 2].v.ob[1] = this->allocVtx1[x + 3].v.ob[1] = tmp3 - 0x20;

            this->allocVtx1[x].v.ob[2] = this->allocVtx1[x + 1].v.ob[2] = this->allocVtx1[x + 2].v.ob[2] =
                this->allocVtx1[x + 3].v.ob[2] = 0;

            this->allocVtx1[x].v.flag = this->allocVtx1[x + 1].v.flag = this->allocVtx1[x + 2].v.flag =
                this->allocVtx1[x + 3].v.flag = 0;

            this->allocVtx1[x].v.tc[0] = this->allocVtx1[x].v.tc[1] = this->allocVtx1[x + 1].v.tc[1] =
                this->allocVtx1[x + 2].v.tc[0] = 0;

            this->allocVtx1[x + 1].v.tc[0] = this->allocVtx1[x + 3].v.tc[0] = tmp2 * 0x20;

            this->allocVtx1[x + 2].v.tc[1] = this->allocVtx1[x + 3].v.tc[1] = 0x400;

            this->allocVtx1[x].v.cn[0] = this->allocVtx1[x + 2].v.cn[0] = this->allocVtx1[x].v.cn[1] =
                this->allocVtx1[x + 2].v.cn[1] = this->allocVtx1[x].v.cn[2] = this->allocVtx1[x + 2].v.cn[2] =
                    this->allocVtx1[x + 1].v.cn[0] = this->allocVtx1[x + 3].v.cn[0] = this->allocVtx1[x + 1].v.cn[1] =
                        this->allocVtx1[x + 3].v.cn[1] = this->allocVtx1[x + 1].v.cn[2] =
                            this->allocVtx1[x + 3].v.cn[2] = this->allocVtx1[x].v.cn[3] =
                                this->allocVtx1[x + 2].v.cn[3] = this->allocVtx1[x + 1].v.cn[3] =
                                    this->allocVtx1[x + 3].v.cn[3] = 255;
        }
    }
}

void func_8080C60C(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
    s16 phi_t2;
    s16 phi_t0;
    s16 phi_t5;
    s16 phi_a1;
    s16 phi_ra;
    s16 temp_t1;
    SramContext* sramCtx = &this->sramCtx;
    ;

    this->allocVtx2 = Graph_Alloc(this->state.gfxCtx, 0x288 * sizeof(Vtx));

    for (phi_t2 = 0; phi_t2 < 0x288; phi_t2 += 4) {
        this->allocVtx2[phi_t2].v.ob[0] = this->allocVtx2[phi_t2 + 2].v.ob[0] = 0x12C;
        this->allocVtx2[phi_t2 + 1].v.ob[0] = this->allocVtx2[phi_t2 + 3].v.ob[0] =
            this->allocVtx2[phi_t2].v.ob[0] + 0x10;
        this->allocVtx2[phi_t2].v.ob[1] = this->allocVtx2[phi_t2 + 1].v.ob[1] = 0;
        this->allocVtx2[phi_t2 + 2].v.ob[1] = this->allocVtx2[phi_t2 + 3].v.ob[1] =
            this->allocVtx2[phi_t2].v.ob[1] - 0x10;

        this->allocVtx2[phi_t2].v.ob[2] = this->allocVtx2[phi_t2 + 1].v.ob[2] = this->allocVtx2[phi_t2 + 2].v.ob[2] =
            this->allocVtx2[phi_t2 + 3].v.ob[2] = 0;

        this->allocVtx2[phi_t2].v.flag = this->allocVtx2[phi_t2 + 1].v.flag = this->allocVtx2[phi_t2 + 2].v.flag =
            this->allocVtx2[phi_t2 + 3].v.flag = 0;

        this->allocVtx2[phi_t2].v.tc[0] = this->allocVtx2[phi_t2].v.tc[1] = this->allocVtx2[phi_t2 + 1].v.tc[1] =
            this->allocVtx2[phi_t2 + 2].v.tc[0] = 0;

        this->allocVtx2[phi_t2 + 1].v.tc[0] = this->allocVtx2[phi_t2 + 2].v.tc[1] =
            this->allocVtx2[phi_t2 + 3].v.tc[0] = this->allocVtx2[phi_t2 + 3].v.tc[1] = 0x200;

        this->allocVtx2[phi_t2].v.cn[0] = this->allocVtx2[phi_t2 + 1].v.cn[0] = this->allocVtx2[phi_t2 + 2].v.cn[0] =
            this->allocVtx2[phi_t2 + 3].v.cn[0] = this->allocVtx2[phi_t2].v.cn[1] =
                this->allocVtx2[phi_t2 + 1].v.cn[1] = this->allocVtx2[phi_t2 + 2].v.cn[1] =
                    this->allocVtx2[phi_t2 + 3].v.cn[1] = this->allocVtx2[phi_t2].v.cn[2] =
                        this->allocVtx2[phi_t2 + 1].v.cn[2] = this->allocVtx2[phi_t2 + 2].v.cn[2] =
                            this->allocVtx2[phi_t2 + 3].v.cn[2] = this->allocVtx2[phi_t2].v.cn[3] =
                                this->allocVtx2[phi_t2 + 1].v.cn[3] = this->allocVtx2[phi_t2 + 2].v.cn[3] =
                                    this->allocVtx2[phi_t2 + 3].v.cn[3] = 0xFF;
    }

    this->allocVtx2[0].v.ob[0] = this->allocVtx2[2].v.ob[0] = this->windowPosX;
    this->allocVtx2[1].v.ob[0] = this->allocVtx2[3].v.ob[0] = this->allocVtx2[0].v.ob[0] + 0x80;
    this->allocVtx2[0].v.ob[1] = this->allocVtx2[1].v.ob[1] = 0x48;
    this->allocVtx2[2].v.ob[1] = this->allocVtx2[3].v.ob[1] = this->allocVtx2[0].v.ob[1] - 0x10;
    this->allocVtx2[1].v.tc[0] = this->allocVtx2[3].v.tc[0] = 0x1000;

    for (phi_a1 = 0, phi_t2 = 4; phi_a1 < 3; phi_a1++) {
        phi_t0 = this->windowPosX - 6;
        for (phi_t5 = 0; phi_t5 < 5; phi_t5++, phi_t2 += 4) {
            this->allocVtx2[phi_t2].v.ob[0] = this->allocVtx2[phi_t2 + 2].v.ob[0] = phi_t0;
            this->allocVtx2[phi_t2 + 1].v.ob[0] = this->allocVtx2[phi_t2 + 3].v.ob[0] =
                this->allocVtx2[phi_t2].v.ob[0] + D_80812750[phi_t5];
            this->allocVtx2[phi_t2].v.ob[1] = this->allocVtx2[phi_t2 + 1].v.ob[1] = this->fileNamesY[phi_a1] + 0x2C;
            this->allocVtx2[phi_t2 + 2].v.ob[1] = this->allocVtx2[phi_t2 + 3].v.ob[1] =
                this->allocVtx2[phi_t2].v.ob[1] - 0x38;
            this->allocVtx2[phi_t2 + 1].v.tc[0] = this->allocVtx2[phi_t2 + 3].v.tc[0] = D_80812750[phi_t5] << 5;
            this->allocVtx2[phi_t2 + 2].v.tc[1] = this->allocVtx2[phi_t2 + 3].v.tc[1] = 0x700;
            phi_t0 += D_80812750[phi_t5];
        }
    }

    phi_t0 = this->windowPosX - 6;
    phi_ra = 0x2C;
    for (phi_t5 = 0; phi_t5 < 3; phi_t5++, phi_t2 += 20, phi_ra -= 0x10) {
        this->allocVtx2[phi_t2].v.ob[0] = this->allocVtx2[phi_t2 + 2].v.ob[0] = phi_t0;
        this->allocVtx2[phi_t2 + 1].v.ob[0] = this->allocVtx2[phi_t2 + 3].v.ob[0] =
            this->allocVtx2[phi_t2].v.ob[0] + 0x40;
        this->allocVtx2[phi_t2].v.ob[1] = this->allocVtx2[phi_t2 + 1].v.ob[1] = this->buttonYOffsets[phi_t5] + phi_ra;
        this->allocVtx2[phi_t2 + 2].v.ob[1] = this->allocVtx2[phi_t2 + 3].v.ob[1] =
            this->allocVtx2[phi_t2].v.ob[1] - 0x10;
        this->allocVtx2[phi_t2 + 1].v.tc[0] = this->allocVtx2[phi_t2 + 3].v.tc[0] = 0x800;
        this->allocVtx2[phi_t2 + 4].v.ob[0] = this->allocVtx2[phi_t2 + 6].v.ob[0] = phi_t0 + 0x40;
        this->allocVtx2[phi_t2 + 5].v.ob[0] = this->allocVtx2[phi_t2 + 7].v.ob[0] =
            this->allocVtx2[phi_t2 + 4].v.ob[0] + 0x6C;
        this->allocVtx2[phi_t2 + 4].v.ob[1] = this->allocVtx2[phi_t2 + 5].v.ob[1] =
            this->buttonYOffsets[phi_t5] + phi_ra;
        this->allocVtx2[phi_t2 + 6].v.ob[1] = this->allocVtx2[phi_t2 + 7].v.ob[1] =
            this->allocVtx2[phi_t2 + 4].v.ob[1] - 0x10;
        this->allocVtx2[phi_t2 + 5].v.tc[0] = this->allocVtx2[phi_t2 + 7].v.tc[0] = 0xD80;

        if ((this->configMode == 0xF) && (phi_t5 == this->copyDestFileIndex)) {
            temp_t1 = this->fileNamesY[phi_t5] + 0x2C;
        } else if (((this->configMode == 0x10) || (this->configMode == 0x11)) && (phi_t5 == this->copyDestFileIndex)) {
            temp_t1 = this->buttonYOffsets[phi_t5] + phi_ra;
        } else {
            temp_t1 = phi_ra + this->buttonYOffsets[phi_t5] + this->fileNamesY[phi_t5];
        }

        this->allocVtx2[phi_t2 + 8].v.ob[0] = this->allocVtx2[phi_t2 + 10].v.ob[0] = phi_t0 + 0xA8;
        this->allocVtx2[phi_t2 + 9].v.ob[0] = this->allocVtx2[phi_t2 + 11].v.ob[0] =
            this->allocVtx2[phi_t2 + 8].v.ob[0] + 0x2C;
        this->allocVtx2[phi_t2 + 8].v.ob[1] = this->allocVtx2[phi_t2 + 9].v.ob[1] = temp_t1;
        this->allocVtx2[phi_t2 + 10].v.ob[1] = this->allocVtx2[phi_t2 + 11].v.ob[1] =
            this->allocVtx2[phi_t2 + 8].v.ob[1] - 0x10;
        this->allocVtx2[phi_t2 + 9].v.tc[0] = this->allocVtx2[phi_t2 + 11].v.tc[0] = 0x580;
        this->allocVtx2[phi_t2 + 12].v.ob[0] = this->allocVtx2[phi_t2 + 14].v.ob[0] = phi_t0 + 0x34;
        this->allocVtx2[phi_t2 + 13].v.ob[0] = this->allocVtx2[phi_t2 + 15].v.ob[0] =
            this->allocVtx2[phi_t2 + 12].v.ob[0] + 0x18;
        this->allocVtx2[phi_t2 + 12].v.ob[1] = this->allocVtx2[phi_t2 + 13].v.ob[1] =
            this->buttonYOffsets[phi_t5] + phi_ra;
        this->allocVtx2[phi_t2 + 14].v.ob[1] = this->allocVtx2[phi_t2 + 15].v.ob[1] =
            this->allocVtx2[phi_t2 + 12].v.ob[1] - 0x10;
        this->allocVtx2[phi_t2 + 13].v.tc[0] = this->allocVtx2[phi_t2 + 15].v.tc[0] = 0x300;
        this->allocVtx2[phi_t2 + 16].v.ob[0] = this->allocVtx2[phi_t2 + 18].v.ob[0] = phi_t0 + 0x9C;
        this->allocVtx2[phi_t2 + 17].v.ob[0] = this->allocVtx2[phi_t2 + 19].v.ob[0] =
            this->allocVtx2[phi_t2 + 16].v.ob[0] + 0x18;
        this->allocVtx2[phi_t2 + 16].v.ob[1] = this->allocVtx2[phi_t2 + 17].v.ob[1] =
            this->buttonYOffsets[phi_t5] + phi_ra;
        this->allocVtx2[phi_t2 + 18].v.ob[1] = this->allocVtx2[phi_t2 + 19].v.ob[1] =
            this->allocVtx2[phi_t2 + 16].v.ob[1] - 0x10;
        this->allocVtx2[phi_t2 + 17].v.tc[0] = this->allocVtx2[phi_t2 + 19].v.tc[0] = 0x300;
    }
    phi_ra = 0x2C;

    for (phi_t5 = 0; phi_t5 < 3; phi_t5++, phi_ra -= gGameInfo->data[1766]) {
        if ((sramCtx->readBuff[gSramSlotOffsets[phi_t5] + 0x1C] == 0x5A) ||
            (sramCtx->readBuff[gSramSlotOffsets[phi_t5] + 0x1D] == 0x45) ||
            (sramCtx->readBuff[gSramSlotOffsets[phi_t5] + 0x1E] == 0x4C) ||
            (sramCtx->readBuff[gSramSlotOffsets[phi_t5] + 0x1F] == 0x44) ||
            (sramCtx->readBuff[gSramSlotOffsets[phi_t5] + 0x20] == 0x41) ||
            (sramCtx->readBuff[gSramSlotOffsets[phi_t5] + 0x21] == 0x5A)) {
            phi_t0 = this->windowPosX - gGameInfo->data[1767];
            if ((this->configMode == 0xF) && (phi_t5 == this->copyDestFileIndex)) {
                temp_t1 = this->fileNamesY[phi_t5] + 0x2C;
            } else if (((this->configMode == 0x10) || (this->configMode == 0x11)) &&
                       (phi_t5 == this->copyDestFileIndex)) {
                temp_t1 = this->buttonYOffsets[phi_t5] + phi_ra;
            } else {
                temp_t1 = phi_ra + this->buttonYOffsets[phi_t5] + this->fileNamesY[phi_t5];
            }
            temp_t1 += 2;
            for (phi_a1 = 0; phi_a1 < 8; phi_a1++, phi_t2 += 4, phi_t0 += gGameInfo->data[1768]) {
                this->allocVtx2[phi_t2].v.ob[0] = this->allocVtx2[phi_t2 + 2].v.ob[0] =
                    gGameInfo->data[1769] + phi_t0 + 0x40;
                this->allocVtx2[phi_t2 + 1].v.ob[0] = this->allocVtx2[phi_t2 + 3].v.ob[0] =
                    this->allocVtx2[phi_t2].v.ob[0] + gGameInfo->data[1770];
                this->allocVtx2[phi_t2].v.ob[1] = this->allocVtx2[phi_t2 + 1].v.ob[1] = temp_t1 - 3;
                this->allocVtx2[phi_t2 + 2].v.ob[1] = this->allocVtx2[phi_t2 + 3].v.ob[1] =
                    this->allocVtx2[phi_t2].v.ob[1] - gGameInfo->data[1771];
            }

            phi_t0 = this->windowPosX - 0xE;
            temp_t1 -= 0x16;
            for (phi_a1 = 0; phi_a1 < 4; phi_a1++, phi_t2 += 4) {
                this->allocVtx2[phi_t2].v.ob[0] = this->allocVtx2[phi_t2 + 2].v.ob[0] = phi_t0;
                this->allocVtx2[phi_t2 + 1].v.ob[0] = this->allocVtx2[phi_t2 + 3].v.ob[0] =
                    this->allocVtx2[phi_t2].v.ob[0] + D_80812820[phi_a1];
                this->allocVtx2[phi_t2].v.ob[1] = this->allocVtx2[phi_t2 + 1].v.ob[1] = temp_t1;
                this->allocVtx2[phi_t2 + 2].v.ob[1] = this->allocVtx2[phi_t2 + 3].v.ob[1] =
                    this->allocVtx2[phi_t2].v.ob[1] - D_80812828[phi_a1];
                phi_t0 += D_80812818[phi_a1];
            }
            this->allocVtx2[phi_t2 - 15].v.tc[0] = this->allocVtx2[phi_t2 - 13].v.tc[0] = 0x400;

            phi_t0 = this->windowPosX + 0x3F;
            temp_t1 += 4;
            for (phi_a1 = 0; phi_a1 < 20; phi_a1++, phi_t2 += 4, phi_t0 += 9) {
                this->allocVtx2[phi_t2].v.ob[0] = this->allocVtx2[phi_t2 + 2].v.ob[0] = phi_t0;
                this->allocVtx2[phi_t2 + 1].v.ob[0] = this->allocVtx2[phi_t2 + 3].v.ob[0] =
                    this->allocVtx2[phi_t2].v.ob[0] + 0xA;
                this->allocVtx2[phi_t2].v.ob[1] = this->allocVtx2[phi_t2 + 1].v.ob[1] = temp_t1;
                this->allocVtx2[phi_t2 + 2].v.ob[1] = this->allocVtx2[phi_t2 + 3].v.ob[1] =
                    this->allocVtx2[phi_t2].v.ob[1] - 0xA;

                if (phi_a1 == 9) {
                    phi_t0 = this->windowPosX + 0x36;
                    temp_t1 -= 8;
                }
            }
            phi_t0 = this->windowPosX + 4;
            temp_t1 -= 0xA;
            for (phi_a1 = 0; phi_a1 < 10; phi_a1++, phi_t2 += 4, phi_t0 += 0x10) {
                this->allocVtx2[phi_t2].v.ob[0] = this->allocVtx2[phi_t2 + 2].v.ob[0] = phi_t0;
                this->allocVtx2[phi_t2 + 1].v.ob[0] = this->allocVtx2[phi_t2 + 3].v.ob[0] =
                    this->allocVtx2[phi_t2].v.ob[0] + 0x10;
                this->allocVtx2[phi_t2].v.ob[1] = this->allocVtx2[phi_t2 + 1].v.ob[1] = temp_t1;
                this->allocVtx2[phi_t2 + 2].v.ob[1] = this->allocVtx2[phi_t2 + 3].v.ob[1] =
                    this->allocVtx2[phi_t2].v.ob[1] - 0x10;
            }
        } else {
            phi_t2 += 0xA8;
        }
    }
    phi_t0 = this->windowPosX - 6;
    phi_ra = -0xC;
    for (phi_t5 = 0; phi_t5 < 2; phi_t5++, phi_t2 += 4, phi_ra -= 0x10) {
        this->allocVtx2[phi_t2].v.ob[0] = this->allocVtx2[phi_t2 + 2].v.ob[0] = phi_t0;
        this->allocVtx2[phi_t2 + 1].v.ob[0] = this->allocVtx2[phi_t2 + 3].v.ob[0] =
            this->allocVtx2[phi_t2].v.ob[0] + 0x40;
        this->allocVtx2[phi_t2].v.ob[1] = this->allocVtx2[phi_t2 + 1].v.ob[1] =
            this->buttonYOffsets[phi_t5 + 3] + phi_ra;
        this->allocVtx2[phi_t2 + 2].v.ob[1] = this->allocVtx2[phi_t2 + 3].v.ob[1] =
            this->allocVtx2[phi_t2].v.ob[1] - 0x10;
        this->allocVtx2[phi_t2 + 1].v.tc[0] = this->allocVtx2[phi_t2 + 3].v.tc[0] = 0x800;
    }

    this->allocVtx2[phi_t2].v.ob[0] = this->allocVtx2[phi_t2 + 2].v.ob[0] = phi_t0;
    this->allocVtx2[phi_t2 + 1].v.ob[0] = this->allocVtx2[phi_t2 + 3].v.ob[0] = this->allocVtx2[phi_t2].v.ob[0] + 0x40;
    this->allocVtx2[phi_t2].v.ob[1] = this->allocVtx2[phi_t2 + 1].v.ob[1] = this->buttonYOffsets[5] - 0x34;
    this->allocVtx2[phi_t2 + 2].v.ob[1] = this->allocVtx2[phi_t2 + 3].v.ob[1] = this->allocVtx2[phi_t2].v.ob[1] - 0x10;
    this->allocVtx2[phi_t2 + 1].v.tc[0] = this->allocVtx2[phi_t2 + 3].v.tc[0] = 0x800;

    phi_t2 += 4;

    if (((this->menuMode == 1) && (this->configMode >= 2)) || ((this->menuMode == 2) && (this->selectMode == 3))) {
        if (this->menuMode == 1) {
            if ((this->configMode == 4) || (this->configMode == 7) || (this->configMode == 0x15)) {
                phi_t5 = D_8081283C[this->buttonIndex];
            } else if ((this->configMode == 0x18) || (this->configMode == 0xC)) {
                phi_t5 = D_80812844[this->buttonIndex];
            } else {
                phi_t5 = D_80812830[this->buttonIndex];
            }
        } else {
            phi_t5 = D_80812848[this->confirmButtonIndex];
        }

        this->allocVtx2[phi_t2].v.ob[0] = this->allocVtx2[phi_t2 + 2].v.ob[0] = this->windowPosX - 0xA;
        this->allocVtx2[phi_t2 + 1].v.ob[0] = this->allocVtx2[phi_t2 + 3].v.ob[0] =
            this->allocVtx2[phi_t2].v.ob[0] + 0x48;
        this->allocVtx2[phi_t2].v.ob[1] = this->allocVtx2[phi_t2 + 1].v.ob[1] = this->allocVtx2[phi_t5].v.ob[1] + 4;
        this->allocVtx2[phi_t2 + 2].v.ob[1] = this->allocVtx2[phi_t2 + 3].v.ob[1] =
            this->allocVtx2[phi_t2].v.ob[1] - 0x18;
        this->allocVtx2[phi_t2 + 1].v.tc[0] = this->allocVtx2[phi_t2 + 3].v.tc[0] = 0x900;
        this->allocVtx2[phi_t2 + 2].v.tc[1] = this->allocVtx2[phi_t2 + 3].v.tc[1] = 0x300;
    }
    this->allocVtx2[phi_t2 + 4].v.ob[0] = this->allocVtx2[phi_t2 + 6].v.ob[0] = this->windowPosX + 0x3A;
    this->allocVtx2[phi_t2 + 5].v.ob[0] = this->allocVtx2[phi_t2 + 7].v.ob[0] =
        this->allocVtx2[phi_t2 + 4].v.ob[0] + 0x80;
    this->allocVtx2[phi_t2 + 4].v.ob[1] = this->allocVtx2[phi_t2 + 5].v.ob[1] =
        this->allocVtx2[D_80812830[this->warningButtonIndex]].v.ob[1];
    this->allocVtx2[phi_t2 + 6].v.ob[1] = this->allocVtx2[phi_t2 + 7].v.ob[1] =
        this->allocVtx2[phi_t2 + 4].v.ob[1] - 0x10;
    this->allocVtx2[phi_t2 + 5].v.tc[0] = this->allocVtx2[phi_t2 + 7].v.tc[0] = 0x1000;
}

void func_8080D8CC(FileChooseContext* thisx, s16 arg1, s16 arg2) {
    FileChooseContext* this = thisx;
    Font* sp54  = &this->font;
    s32 phi_a2_2;
    s16 phi_s0;
    s16 phi_s2;
    s16 phi_s3;
    s16 spD8[3];

    OPEN_DISPS(this->state.gfxCtx, "../z_file_choose.c", 1709);
    if (1) {}
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0,
                      PRIMITIVE, 0);

    if (this->nameAlpha[arg1] != 0) {
        gSPVertex(POLY_OPA_DISP++, &this->allocVtx2[D_8081284C[arg1]], 32, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0x00, 0x00, D_808128C8[arg2][0], D_808128C8[arg2][1], D_808128C8[arg2][2],
                        this->nameAlpha[arg1]);
        for (phi_s0 = 0, phi_s2 = 0; phi_s2 < 0x20; phi_s0++, phi_s2 += 4) {
            FileChoose_DrawCharacter(this->state.gfxCtx,
                                     sp54->fontBuf + this->fileNames[arg1][phi_s0] * FONT_CHAR_TEX_SIZE, phi_s2);
        }
    }

    if ((arg1 == this->selectedFileIndex) || (arg1 == this->copyDestFileIndex)) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0, 0,
                          PRIMITIVE, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0x00, 0x00, 255, 255, 255, this->fileInfoAlpha[arg1]);
        gSPVertex(POLY_OPA_DISP++, &this->allocVtx2[D_8081284C[arg1]] + 0x24, 12, 0);

        func_8080B394(this->deaths[arg1], &spD8[0], &spD8[1], &spD8[2]);

        for (phi_s0 = 0, phi_s2 = 0; phi_s0 < 3; phi_s0++, phi_s2 += 4) {
            FileChoose_DrawCharacter(this->state.gfxCtx, sp54->fontBuf + spD8[phi_s0] * FONT_CHAR_TEX_SIZE, phi_s2);
        }

        gDPPipeSync(POLY_OPA_DISP++);

        phi_a2_2 = (this->defense[arg1] == 0) ? 0 : 1;

        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0x00, 0x00, D_808128DC[phi_a2_2][0], D_808128DC[phi_a2_2][1],
                        D_808128DC[phi_a2_2][2], this->fileInfoAlpha[arg1]);
        gDPSetEnvColor(POLY_OPA_DISP++, D_808128E8[phi_a2_2][0], D_808128E8[phi_a2_2][1], D_808128E8[phi_a2_2][2], 255);

        phi_s0 = this->healthCapacities[arg1] / 0x10;

        for (phi_s2 = 0, phi_s3 = 0; phi_s3 < phi_s0; phi_s3++, phi_s2 += 4) {
            gSPVertex(POLY_OPA_DISP++, &this->allocVtx2[D_8081284C[arg1] + phi_s2] + 0x30, 4, 0);
            
            POLY_OPA_DISP = func_8080AFD0(POLY_OPA_DISP, D_808128D4[phi_a2_2], 0x10, 0x10, 0);
        }

        gDPPipeSync(POLY_OPA_DISP++);

        for (phi_s2 = 0, phi_s3 = 0; phi_s3 < 9; phi_s3++, phi_s2 += 4) {
            if (this->questItems[arg1] & gBitFlags[D_808128B4[phi_s3]]) {
                gSPVertex(POLY_OPA_DISP++, &this->allocVtx2[D_8081284C[arg1] + phi_s2] + 0x80, 4, 0);
                gDPPipeSync(POLY_OPA_DISP++);
                gDPSetPrimColor(POLY_OPA_DISP++, 0x00, 0x00, D_80812878[phi_s3], D_8081288C[phi_s3], D_808128A0[phi_s3],
                                this->fileInfoAlpha[arg1]);
                gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);

                if (phi_s3 < 3) {
                    gDPLoadTextureBlock(POLY_OPA_DISP++, D_80812854[phi_s3], G_IM_FMT_RGBA, G_IM_SIZ_32b, 16, 16, 0,
                                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP,
                                        G_TX_NOMASK, G_TX_NOLOD);
                    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

                } else {
                    POLY_OPA_DISP = func_8080AFD0(POLY_OPA_DISP, D_80812854[phi_s3], 0x10, 0x10, 0);
                }
            }
        }
    }
    CLOSE_DISPS(this->state.gfxCtx, "../z_file_choose.c", 1797);
}

#ifdef NON_MATCHING
void func_8080E074(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
    s16 phi_s0;
    s16 phi_s5;
    s16 phi_t3;
    s16 phi_t2;
    s16 phi_a3;

    OPEN_DISPS(this->state.gfxCtx, "../z_file_choose.c", 1940);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, this->titleAlpha[0]);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
    
    gSPVertex(POLY_OPA_DISP++, this->allocVtx2, 4, 0);

    gDPLoadTextureBlock(POLY_OPA_DISP++, D_80812908[gSaveContext.language][this->titleLabel], G_IM_FMT_IA, G_IM_SIZ_8b,
                        128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,  G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    
    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, this->titleAlpha[1]);
    gDPLoadTextureBlock(POLY_OPA_DISP++, D_80812908[gSaveContext.language][this->nextTitleLabel], G_IM_FMT_IA,
                        G_IM_SIZ_8b, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,  G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);

    gDPPipeSync(POLY_OPA_DISP++);
    phi_s5 = 4;
    for (phi_s0 = 0; phi_s0 < 3; phi_s0++, phi_s5 += 0x14) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                        this->fileInfoAlpha[phi_s0]);
        gSPVertex(POLY_OPA_DISP++, &this->allocVtx2[phi_s5], 20, 0);
        
        for (phi_t2 = 0, phi_t3 = 0; phi_t3 < 5; phi_t3++, phi_t2 += 4) { 
            gDPLoadTextureBlock(POLY_OPA_DISP++, D_808128F4[phi_t3], G_IM_FMT_IA, G_IM_SIZ_16b, D_80812750[phi_t3], 56,
                                0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,  G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
            gSP1Quadrangle(POLY_OPA_DISP++, phi_t2, phi_t2 + 2, phi_t2 + 3, phi_t2 + 1, 0);
        }
    }
    for (phi_t3 = 0; phi_t3 < 3; phi_t3++, phi_s5 += 20) {
        gSPVertex(POLY_OPA_DISP++, &this->allocVtx2[phi_s5], 20, 0);

        phi_a3 = ((this->n64ddFlag == this->n64ddFlags[phi_t3]) || (this->nameBoxAlpha[phi_t3] == 0)) ? 0 : 1;

        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, D_8081275C[phi_a3][0], D_8081275C[phi_a3][1], D_8081275C[phi_a3][2],
                        this->fileButtonAlpha[phi_t3]);
        gDPLoadTextureBlock(POLY_OPA_DISP++, D_808129B0[gSaveContext.language][phi_t3], G_IM_FMT_IA, G_IM_SIZ_16b, 64,
                            16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,  G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, 0, 2, 3, 1, 0);
        
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, D_8081275C[phi_a3][0], D_8081275C[phi_a3][1], D_8081275C[phi_a3][2],
                        this->nameBoxAlpha[phi_t3]);
        gDPLoadTextureBlock(POLY_OPA_DISP++, D_01015600, G_IM_FMT_IA, G_IM_SIZ_16b, 108, 16, 0,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,  G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
                            
        gSP1Quadrangle(POLY_OPA_DISP++, 4, 6, 7, 5, 0);

        if (this->n64ddFlags[phi_t3]) {
            gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, D_8081275C[phi_a3][0], D_8081275C[phi_a3][1], D_8081275C[phi_a3][2],
                            this->nameAlpha[phi_t3]);
            gDPLoadTextureBlock(POLY_OPA_DISP++, D_0101AD00, G_IM_FMT_IA, G_IM_SIZ_16b, 44, 16, 0,
                                G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,  G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
            gSP1Quadrangle(POLY_OPA_DISP++, 8, 10, 11, 9, 0);
            if (1){}
        }
        
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, D_8081275C[phi_a3][0], D_8081275C[phi_a3][1], D_8081275C[phi_a3][2],
                        this->connectorAlpha[phi_t3]);
        gDPLoadTextureBlock(POLY_OPA_DISP++, D_01000000, G_IM_FMT_IA, G_IM_SIZ_8b, 24, 16, 0,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,  G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, 12, 14, 15, 13, 0);
        if (this->n64ddFlags[phi_t3]) {
            gSP1Quadrangle(POLY_OPA_DISP++, 16, 18, 19, 17, 0);
        }
        
    }

    for (phi_s0 = 0; phi_s0 < 3; phi_s0++) {
        func_8080D8CC(this, phi_s0, ((this->n64ddFlag == this->n64ddFlags[phi_s0]) || (this->nameBoxAlpha[phi_s0] == 0)) ? 0 : 1);
    }

    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0, PRIMITIVE,
                      ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
    gSPVertex(POLY_OPA_DISP++, &this->allocVtx2[0x274], 20, 0);
    
    for (phi_t2 = 0, phi_t3 = 0; phi_t3 < 2; phi_t3++, phi_t2 += 4) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                        this->actionBtnAlpha[phi_t3]);
        gDPLoadTextureBlock(POLY_OPA_DISP++, D_808129D4[gSaveContext.language][phi_t3], G_IM_FMT_IA, G_IM_SIZ_16b, 64,
                            16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,  G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, phi_t2, phi_t2 + 2, phi_t2 + 3, phi_t2 + 1, 0);
    }
    gDPPipeSync(POLY_OPA_DISP++);

    for (phi_t2 = 0, phi_t3 = 0; phi_t3 < 2; phi_t3++, phi_t2 += 4) {
        phi_s5 = this->unk_1CAAE[phi_t3];
        
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                        this->confirmButtonAlpha[phi_s5]);
        gDPLoadTextureBlock(POLY_OPA_DISP++, D_808129D4[gSaveContext.language][phi_s5], G_IM_FMT_IA,
                            G_IM_SIZ_16b, 64, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,  G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, phi_t2, phi_t2 + 2, phi_t2 + 3, phi_t2 + 1, 0);
    }
    
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                    this->optionButtonAlpha);
    gDPLoadTextureBlock(POLY_OPA_DISP++, D_80812A04[gSaveContext.language], G_IM_FMT_IA, G_IM_SIZ_16b, 64, 16, 0,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,  G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gSP1Quadrangle(POLY_OPA_DISP++, 8, 10, 11, 9, 0);

    if (((this->menuMode == 1) &&
         ((this->configMode == 2) || (this->configMode == 4) || (this->configMode == 7) || (this->configMode == 0xC) ||
          (this->configMode == 0x15) || (this->configMode == 0x18))) ||
        ((this->menuMode == 2) && (this->selectMode == 3))) {
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0, 0,
                          PRIMITIVE, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, this->highlightColor[0], this->highlightColor[1],
                        this->highlightColor[2], this->highlightColor[3]);
        gDPLoadTextureBlock(POLY_OPA_DISP++, D_0101B680, G_IM_FMT_I, G_IM_SIZ_8b, 72, 24, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,  G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, 12, 14, 15, 13, 0);
    }
    if (this->warningLabel >= 0) {
        
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetCombineLERP(POLY_OPA_DISP++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, this->emptyFileTextAlpha);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
        gDPLoadTextureBlock(POLY_OPA_DISP++, D_80812974[gSaveContext.language][this->warningLabel], G_IM_FMT_IA,
                            G_IM_SIZ_8b, 128, 16, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK,  G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
        gSP1Quadrangle(POLY_OPA_DISP++, 16, 18, 19, 17, 0);
    }
    gDPPipeSync(POLY_OPA_DISP++);
    gDPSetCombineMode(POLY_OPA_DISP++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);
    CLOSE_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2198);
}
#else
void func_8080E074(FileChooseContext* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080E074.s")
#endif

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

    Skybox_Init(&this->state, &this->skyboxCtx, 1);

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
    Audio_QueueSeqCmd(0xF000000A);
    func_800F5E18(0, 0x57, 0, 7, 1);
}
