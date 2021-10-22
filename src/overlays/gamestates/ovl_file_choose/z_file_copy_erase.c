#include "file_choose.h"

// when choosing a file to copy or erase, the 6 main menu buttons are placed at these offsets
static s16 sChooseFileYOffsets[] = { -48, -48, -48, -24, -24, 0 };

static s16 D_8081248C[3][3] = {
    { 0, -48, -48 },
    { -64, 16, -48 },
    { -64, -64, 32 },
};

static s16 sEraseDelayTimer = 15;

/**
 * Start moving the main menu buttons toward their final positions indicated by `sChooseFileYOffsets`
 * Fade out the copy/erase/options buttons and bring in the new title
 * When action timer is 0 set the cursor to the quit button and move on to the next config mode.
 * Update function for `CM_COPY_SOURCE_MENU`
 */
void FileCopy_SetupSourceSelect(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    s16 yStep;
    s16 i;

    for (i = 0; i < 5; i++) {
        yStep = (ABS(this->buttonYOffsets[i] - sChooseFileYOffsets[i])) / this->actionTimer;

        if (this->buttonYOffsets[i] >= sChooseFileYOffsets[i]) {
            this->buttonYOffsets[i] -= yStep;
        } else {
            this->buttonYOffsets[i] += yStep;
        }
    }

    this->actionButtonAlpha[BTN_ACTION_COPY] -= 25;
    this->actionButtonAlpha[BTN_ACTION_ERASE] -= 25;
    this->optionButtonAlpha -= 25;
    this->confirmButtonAlpha[BTN_CONFIRM_QUIT] += 25;
    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->actionTimer = 8;

        this->actionButtonAlpha[BTN_ACTION_COPY] = this->actionButtonAlpha[BTN_ACTION_ERASE] = this->optionButtonAlpha = 0;

        this->confirmButtonAlpha[BTN_CONFIRM_QUIT] = 200;
        this->titleLabel = this->nextTitleLabel;

        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->buttonIndex = BTN_COPY_QUIT;
        this->configMode++;
    }
}

/**
 * Description here
 * Update function for `CM_SELECT_COPY_SOURCE`
 */
void FileCopy_SelectSource(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    Input* controller1 = &this->state.input[0];

    if (((this->buttonIndex == BTN_COPY_QUIT) && CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) ||
        CHECK_BTN_ALL(controller1->press.button, BTN_B)) {
        this->actionTimer = 8;
        this->buttonIndex = BTN_MAIN_COPY;
        this->nextTitleLabel = TITLE_SELECT_FILE;
        this->configMode = CM_COPY_RETURN_MAIN;
        this->warningLabel = WARNING_NONE;
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CLOSE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    }

    if (CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) {
        if (SLOT_OCCUPIED(sramCtx, this->buttonIndex)) {
            this->actionTimer = 8;
            this->selectedFileIndex = this->buttonIndex;
            this->configMode = CM_05;
            this->nextTitleLabel = TITLE_COPY_TO;
            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_L, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        } else {
            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
        return;
    }

    if (ABS(this->stickRelY) >= 30) {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);

        if (this->stickRelY >= 30) {
            this->buttonIndex--;

            if (this->buttonIndex < BTN_COPY_FILE_1) {
                this->buttonIndex = BTN_COPY_QUIT;
            }
        } else {
            this->buttonIndex++;

            if (this->buttonIndex > BTN_COPY_QUIT) {
                this->buttonIndex = BTN_COPY_FILE_1;
            }
        }
    }

    if (this->buttonIndex != BTN_COPY_QUIT) {
        if (!SLOT_OCCUPIED(sramCtx, this->buttonIndex)) {
            this->warningLabel = WARNING_FILE_EMPTY;
            this->warningButtonIndex = this->buttonIndex;
            this->emptyFileTextAlpha = 255;
        } else {
            this->warningLabel = WARNING_NONE;
        }
    }
}

// move buttons to setup for copy decision
/**
 * Description here
 * Update function for `CM_05`
 */
void func_80804248(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    s16 yStep;
    s16 i;

    for (i = 0; i < 3; i++) {
        yStep = ABS(this->buttonYOffsets[i] - D_8081248C[this->buttonIndex][i]) / this->actionTimer;

        if (D_8081248C[this->buttonIndex][i] >= this->buttonYOffsets[i]) {
            this->buttonYOffsets[i] += yStep;
        } else {
            this->buttonYOffsets[i] -= yStep;
        }
    }

    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->nameBoxAlpha[this->buttonIndex] -= 25;

    this->actionTimer--;
    if (this->actionTimer == 0) {
        this->buttonYOffsets[this->buttonIndex] = D_8081248C[this->buttonIndex][this->buttonIndex];
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->actionTimer = 8;
        this->configMode++;
    }
}

// show name and info box, put cursor on quit
/**
 * Description here
 * Update function for `CM_06`
 */
void func_808043D8(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;

    this->nameBoxAlpha[this->buttonIndex] -= 25;
    this->fileInfoAlpha[this->buttonIndex] += 25;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->nameBoxAlpha[this->buttonIndex] = 0;
        this->fileInfoAlpha[this->buttonIndex] = 200;
        this->buttonIndex = BTN_COPY_QUIT;
        this->actionTimer = 8;
        this->configMode = CM_07;
    }
}

/**
 * Description here
 * Update function for `CM_07`
 */
void FileChoose_SelectCopyDest(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    Input* controller1 = &this->state.input[0];

    if (((this->buttonIndex == BTN_COPY_QUIT) && CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) ||
        CHECK_BTN_ALL(controller1->press.button, BTN_B)) {
        this->buttonIndex = this->selectedFileIndex;
        this->nextTitleLabel = TITLE_COPY_FROM;
        this->actionTimer = 8;
        this->configMode = CM_08;
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CLOSE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    }

    if (CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) {
        if (!SLOT_OCCUPIED(sramCtx, this->buttonIndex)) {
            this->copyDestFileIndex = this->buttonIndex;
            this->nextTitleLabel = TITLE_COPY_CONFIRM;
            this->actionTimer = 8;
            this->configMode = CM_10;
            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_L, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        } else {
            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
        return;
    }

    if (ABS(this->stickRelY) >= 30) {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);

        if (this->stickRelY >= 30) {
            this->buttonIndex--;

            if ((this->buttonIndex == this->selectedFileIndex)) {
                this->buttonIndex--;

                if (this->buttonIndex < BTN_COPY_FILE_1) {
                    this->buttonIndex = BTN_COPY_QUIT;
                }
            } else {
                if (this->buttonIndex < BTN_COPY_FILE_1) {
                    this->buttonIndex = BTN_COPY_QUIT;
                }
            }
        } else {
            this->buttonIndex++;

            if (this->buttonIndex > BTN_COPY_QUIT) {
                this->buttonIndex = BTN_COPY_FILE_1;
            }

            if (this->buttonIndex == this->selectedFileIndex) {
                this->buttonIndex++;
            }
        }
    }

    if (this->buttonIndex != BTN_COPY_QUIT) {
        if (SLOT_OCCUPIED(sramCtx, this->buttonIndex)) {
            this->warningLabel = WARNING_FILE_IN_USE;
            this->warningButtonIndex = this->buttonIndex;
            this->emptyFileTextAlpha = 255;
        } else {
            this->warningLabel = WARNING_NONE;
        }
    }
}

/**
 * Description here
 * Update function for `CM_08`
 */
void func_80804858(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;

    this->fileInfoAlpha[this->buttonIndex] -= 25;
    this->nameBoxAlpha[this->buttonIndex] += 25;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->nextTitleLabel = TITLE_COPY_FROM;
        this->nameBoxAlpha[this->buttonIndex] = 200;
        this->fileInfoAlpha[this->buttonIndex] = 0;
        this->actionTimer = 8;
        this->configMode++;
    }
}

/**
 * Description here
 * Update function for `CM_09`
 */
void func_80804924(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    s16 i;
    s16 yStep;

    for (i = 0; i < 3; i++) {
        yStep = ABS(this->buttonYOffsets[i] - sChooseFileYOffsets[i]) / this->actionTimer;

        if (this->buttonYOffsets[i] >= sChooseFileYOffsets[i]) {
            this->buttonYOffsets[i] -= yStep;
        } else {
            this->buttonYOffsets[i] += yStep;
        }
    }

    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->buttonIndex = 3;
        this->configMode = CM_SELECT_COPY_SOURCE;
    }
}

/**
 * Description here
 * Update function for `CM_10`
 */
void func_80804A50(GameState* thisx) {
    static s16 D_808124A4[] = { -56, -40, -24, 0 };
    FileChooseContext* this = (FileChooseContext*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    s16 i;
    s16 yStep;

    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;

    for (i = 0; i < 3; i++) {
        if ((i != this->copyDestFileIndex) && (i != this->selectedFileIndex)) {
            this->fileButtonAlpha[i] -= 25;

            if (SLOT_OCCUPIED(sramCtx, i)) {
                this->connectorAlpha[i] -= 31;
                this->nameBoxAlpha[i] = this->nameAlpha[i] = this->fileButtonAlpha[i];
            }
        } else {
            if (this->copyDestFileIndex == i) {
                yStep = ABS(this->buttonYOffsets[i] - D_808124A4[i]) / this->actionTimer;
                this->buttonYOffsets[i] += yStep;

                if (this->buttonYOffsets[i] >= D_808124A4[i]) {
                    this->buttonYOffsets[i] = D_808124A4[i];
                }
            }
        }
    }
    this->actionTimer--;
    if (this->actionTimer == 0) {
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->actionTimer = 8;
        this->configMode++;
    }
}

/**
 * Description here
 * Update function for `CM_11`
 */
void func_80804C74(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;

    this->confirmButtonAlpha[BTN_CONFIRM_YES] += 25;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->configMode = CM_12;
        this->buttonIndex = BTN_CONFIRM_QUIT;
    }
}

/**
 * Description here
 * Update function for `CM_12`
 */
void func_80804CD0(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    Input* controller1 = &this->state.input[0];
    u16 dayTime;

    if (((this->buttonIndex != BTN_CONFIRM_YES) && CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) ||
        CHECK_BTN_ALL(controller1->press.button, BTN_B)) {
        this->actionTimer = 8;
        this->nextTitleLabel = TITLE_COPY_TO;
        this->configMode = CM_13;
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CLOSE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else if (CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) {
        dayTime = gSaveContext.dayTime;
        Sram_CopySave(this, sramCtx);
        gSaveContext.dayTime = dayTime;
        this->fileInfoAlpha[this->copyDestFileIndex] = this->nameAlpha[this->copyDestFileIndex] = 0;
        this->nextTitleLabel = TITLE_COPY_COMPLETE;
        this->actionTimer = 8;
        this->configMode = CM_14;
        func_800AA000(300.0f, 0xB4, 0x14, 0x64);
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_L, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else if (ABS(this->stickRelY) >= 30) {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->buttonIndex ^= 1;
    }
}

/**
 * Description here
 * Update function for `CM_13`
 */
void func_80804ED8(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    s16 i;
    s16 yStep;

    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->confirmButtonAlpha[BTN_CONFIRM_YES] -= 25;

    for (i = 0; i < 3; i++) {
        if ((i != this->copyDestFileIndex) && (i != this->selectedFileIndex)) {
            this->fileButtonAlpha[i] += 25;

            if (SLOT_OCCUPIED(sramCtx, i)) {
                this->nameBoxAlpha[i] = this->nameAlpha[i] = this->fileButtonAlpha[i];
                this->connectorAlpha[i] += 31;
            }
        }

        yStep = ABS(this->buttonYOffsets[i] - D_8081248C[this->selectedFileIndex][i]) / this->actionTimer;

        if (D_8081248C[this->selectedFileIndex][i] >= this->buttonYOffsets[i]) {
            this->buttonYOffsets[i] += yStep;
        } else {
            this->buttonYOffsets[i] -= yStep;
        }
    }

    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->actionTimer = 8;
        this->buttonIndex = BTN_COPY_QUIT;
        this->configMode = CM_07;
    }
}

/**
 * Description here
 * Update function for `CM_14`
 */
void func_8080510C(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;

    this->titleAlpha[0] -= 31;
    this->confirmButtonAlpha[BTN_CONFIRM_YES] -= 25;
    this->confirmButtonAlpha[BTN_CONFIRM_QUIT] -= 25;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->titleAlpha[0] = 0;
        this->actionTimer = 8;
        this->configMode++;
        osSyncPrintf("connect_alpha=%d  decision_alpha[%d]=%d\n", this->connectorAlpha[this->copyDestFileIndex],
                     this->copyDestFileIndex, this->fileInfoAlpha[this->copyDestFileIndex]);
    }
}

/**
 * Description here
 * Update function for `CM_15`
 */
void func_808051C8(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    s16 yStep;

    this->fileInfoAlpha[this->copyDestFileIndex] += 25;
    this->nameAlpha[this->copyDestFileIndex] += 25;
    this->titleAlpha[1] += 31;
    yStep = ABS(this->fileNamesY[this->copyDestFileIndex] + 56) / this->actionTimer;
    this->fileNamesY[this->copyDestFileIndex] -= yStep;

    if (this->fileNamesY[this->copyDestFileIndex] <= -56) {
        this->fileNamesY[this->copyDestFileIndex] = -56;
    }

    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->actionTimer = 90;
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->configMode++;
    }
}

/**
 * Description here
 * Update function for `CM_16`
 */
void func_80805318(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    Input* controller1 = &this->state.input[0];

    if (this->actionTimer == 75) {
        this->connectorAlpha[this->copyDestFileIndex] = 255;
        Audio_PlaySoundGeneral(NA_SE_EV_DIAMOND_SWITCH, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }

    this->actionTimer--;

    if (this->actionTimer < 74) {
        if (CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_B | BTN_START) || (this->actionTimer == 0)) {
            this->actionTimer = 8;
            this->nextTitleLabel = TITLE_SELECT_FILE;
            this->configMode++;
            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_L, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }
}

// QuitCopyTo
/**
 * Description here
 * Update function for `CM_17`
 */
void func_80805434(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;

    this->fileInfoAlpha[this->selectedFileIndex] -= 25;
    this->fileInfoAlpha[this->copyDestFileIndex] -= 25;
    this->nameBoxAlpha[this->selectedFileIndex] += 25;
    this->nameBoxAlpha[this->copyDestFileIndex] += 25;
    this->titleAlpha[0] -= 31;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->fileNamesY[this->copyDestFileIndex] = this->buttonYOffsets[3] = 0;
        this->actionTimer = 8;
        this->titleAlpha[0] = 0;
        this->configMode++;
    }
}

// QuitCopyFrom
/**
 * Description here
 * Update function for `CM_18`
 */
void func_80805524(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    s16 i;
    s16 yStep;

    for (i = 0; i < 5; i++) {
        yStep = ABS(this->buttonYOffsets[i]) / this->actionTimer;

        if (this->buttonYOffsets[i] >= 0) {
            this->buttonYOffsets[i] -= yStep;
        } else {
            this->buttonYOffsets[i] += yStep;
        }
    }

    for (i = 0; i < 3; i++) {
        if (i != this->buttonIndex) {
            this->fileButtonAlpha[i] += 25;

            if (SLOT_OCCUPIED(sramCtx, i)) {
                this->nameBoxAlpha[i] = this->nameAlpha[i] = this->fileButtonAlpha[i];
                this->connectorAlpha[i] += 31;
            }
        }
    }

    this->actionButtonAlpha[BTN_ACTION_COPY] += 25;
    this->actionButtonAlpha[BTN_ACTION_ERASE] += 25;
    this->optionButtonAlpha += 25;
    this->titleAlpha[1] += 31;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        for (i = 0; i < 3; i++) {
            this->connectorAlpha[i] = 0;
            this->fileButtonAlpha[i] = 200;
            this->nameBoxAlpha[i] = this->nameAlpha[i] = this->connectorAlpha[i];

            if (SLOT_OCCUPIED(sramCtx, i)) {
                this->connectorAlpha[i] = 255;
                this->nameBoxAlpha[i] = this->nameAlpha[i] = this->fileButtonAlpha[i];
            }
        }

        this->fileNamesY[this->selectedFileIndex] = 0;
        this->highlightColor[3] = 70;
        this->highlightFlashDir = 1;
        XREG(35) = XREG(36);
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->configMode = CM_MAIN_MENU;
    }
}

/**
 * Description here
 * Update function for `CM_COPY_RETURN_MAIN`
 */
void FileCopy_SetupMainMenu(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    s16 i;
    s16 yStep;

    for (i = 0; i < 5; i++) {
        yStep = ABS(this->buttonYOffsets[i]) / this->actionTimer;

        if (this->buttonYOffsets[i] >= 0) {
            this->buttonYOffsets[i] -= yStep;
        } else {
            this->buttonYOffsets[i] += yStep;
        }
    }

    this->actionButtonAlpha[BTN_ACTION_COPY] += 25;
    this->confirmButtonAlpha[BTN_CONFIRM_QUIT] -= 25;
    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->actionButtonAlpha[BTN_ACTION_COPY] = 200;
        this->confirmButtonAlpha[BTN_CONFIRM_QUIT] = 0;
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->configMode = CM_MAIN_MENU;
    }

    this->optionButtonAlpha = this->actionButtonAlpha[BTN_ACTION_ERASE] = this->actionButtonAlpha[BTN_ACTION_COPY];
}

/**
 * Description here
 * Update function for `CM_20`
 */
void func_8080595C(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    s16 i;
    s16 yStep;

    for (i = 0; i < 5; i++) {
        yStep = ABS(this->buttonYOffsets[i] - sChooseFileYOffsets[i]) / this->actionTimer;

        if (this->buttonYOffsets[i] >= sChooseFileYOffsets[i]) {
            this->buttonYOffsets[i] -= yStep;
        } else {
            this->buttonYOffsets[i] += yStep;
        }
    }

    this->actionButtonAlpha[BTN_ACTION_COPY] -= 50;
    this->actionButtonAlpha[BTN_ACTION_ERASE] -= 50;
    this->optionButtonAlpha -= 50;
    this->confirmButtonAlpha[BTN_CONFIRM_QUIT] += 25;

    if (this->actionButtonAlpha[BTN_ACTION_COPY] <= 0) {
        this->actionButtonAlpha[BTN_ACTION_COPY] = this->actionButtonAlpha[BTN_ACTION_ERASE] = this->optionButtonAlpha = 0;
    }

    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->highlightColor[3] = 70;
        this->highlightFlashDir = 1;
        XREG(35) = XREG(36);
        this->actionButtonAlpha[BTN_ACTION_COPY] = this->actionButtonAlpha[BTN_ACTION_ERASE] = this->optionButtonAlpha = 0;
        this->confirmButtonAlpha[1] = 200;
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->buttonIndex = BTN_ERASE_QUIT;
        this->configMode++;
    }
}

/**
 * Description here
 * Update function for `CM_21`
 */
void func_80805B2C(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    Input* controller1 = &this->state.input[0];

    if (((this->buttonIndex == BTN_COPY_QUIT) && CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) ||
        CHECK_BTN_ALL(controller1->press.button, BTN_B)) {

        this->buttonIndex = BTN_MAIN_ERASE;
        this->actionTimer = 8;
        this->nextTitleLabel = TITLE_SELECT_FILE;
        this->configMode = CM_30;
        this->warningLabel = WARNING_NONE;
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CLOSE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    } else if (CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) {
        if (SLOT_OCCUPIED(sramCtx, this->buttonIndex)) {
            this->actionTimer = 8;
            this->selectedFileIndex = this->buttonIndex;
            this->configMode = CM_22;
            this->nextTitleLabel = TITLE_ERASE_CONFIRM;
            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_L, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        } else {
            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_ERROR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
        return;
    }

    if (ABS(this->stickRelY) >= 30) {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);

        if (this->stickRelY >= 30) {
            this->buttonIndex--;
            if (this->buttonIndex < BTN_ERASE_FILE_1) {
                this->buttonIndex = BTN_ERASE_QUIT;
            }
        } else {
            this->buttonIndex++;
            if (this->buttonIndex > BTN_ERASE_QUIT) {
                this->buttonIndex = BTN_ERASE_FILE_1;
            }
        }
    }
    if (this->buttonIndex != BTN_ERASE_QUIT) {
        if (!SLOT_OCCUPIED(sramCtx, this->buttonIndex)) {
            this->warningLabel = WARNING_FILE_EMPTY;
            this->warningButtonIndex = this->buttonIndex;
            this->emptyFileTextAlpha = 255;
        } else {
            this->warningLabel = WARNING_NONE;
        }
    } else {
        this->warningLabel = WARNING_NONE;
    }
}

/**
 * Description here
 * Update function for `CM_22`
 */
void func_80805EB8(GameState* thisx) {
    static s16 D_808124AC[] = { 0, 16, 32, 0, 0, 0, 0 };
    FileChooseContext* this = (FileChooseContext*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    s16 i;
    s16 yStep;

    for (i = 0; i < 3; i++) {
        if (i != this->buttonIndex) {
            this->fileButtonAlpha[i] -= 25;

            if (SLOT_OCCUPIED(sramCtx, i)) {
                this->connectorAlpha[i] -= 31;
                this->nameBoxAlpha[i] = this->nameAlpha[i] = this->fileButtonAlpha[i];
            }
        } else {
            this->nameBoxAlpha[i] -= 25;
        }
    }
    this->titleAlpha[0] -= 15;
    this->titleAlpha[1] += 15;

    yStep = ABS(this->buttonYOffsets[this->buttonIndex] - D_808124AC[this->buttonIndex]) / this->actionTimer;

    if (this->buttonYOffsets[this->buttonIndex] >= D_808124AC[this->buttonIndex]) {
        this->buttonYOffsets[this->buttonIndex] -= yStep;
    } else {
        this->buttonYOffsets[this->buttonIndex] += yStep;
    }

    this->actionTimer--;

    if (this->actionTimer == 0) {
        for (i = 0; i < 3; i++) {
            if (i != this->buttonIndex) {
                this->fileButtonAlpha[i] = 0;

                if (SLOT_OCCUPIED(sramCtx, i)) {
                    this->connectorAlpha[i] = 0;
                    this->nameBoxAlpha[i] = this->nameAlpha[i] = this->fileButtonAlpha[i] = 0;
                }
            } else {
                this->nameBoxAlpha[i] = 0;
            }
        }

        this->buttonYOffsets[this->buttonIndex] = D_808124AC[this->buttonIndex];
        this->actionTimer = 8;
        this->configMode++;
    }
}

/**
 * Description here
 * Update function for `CM_23`
 */
void func_80806180(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;

    this->confirmButtonAlpha[BTN_CONFIRM_YES] += 25;
    this->titleAlpha[0] -= 15;
    this->titleAlpha[1] += 15;
    this->fileInfoAlpha[this->buttonIndex] += 25;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->actionTimer = 8;
        this->titleLabel = this->nextTitleLabel;
        this->fileInfoAlpha[this->buttonIndex] = this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->confirmButtonAlpha[BTN_CONFIRM_YES] = 200;
        this->buttonIndex = BTN_ERASE_FILE_2;
        this->configMode = CM_24;
    }
}

/**
 * Description here
 * Update function for `CM_24`
 */
void func_8080625C(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    Input* controller1 = &this->state.input[0];

    if (((this->buttonIndex != BTN_CONFIRM_YES) && CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) ||
        CHECK_BTN_ALL(controller1->press.button, BTN_B)) {
        this->buttonIndex = this->selectedFileIndex;
        this->nextTitleLabel = TITLE_ERASE_FILE;
        this->configMode = CM_25;
        this->actionTimer = 8;
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CLOSE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else if (CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) {
        this->n64ddFlags[this->selectedFileIndex] = this->connectorAlpha[this->selectedFileIndex] = 0;
        Audio_PlaySoundGeneral(NA_SE_EV_DIAMOND_SWITCH, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->actionTimer = 8;
        this->configMode = CM_27;
        this->nextTitleLabel = TITLE_ERASE_COMPLETE;
        func_800AA000(200.0f, 0xFF, 0x14, 0x96);
        sEraseDelayTimer = 15;
    } else if (ABS(this->stickRelY) >= 30) {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->buttonIndex ^= 1;
    }
}

/**
 * Description here
 * Update function for `CM_25`
 */
void func_80806444(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;

    this->fileInfoAlpha[this->buttonIndex] -= 25;
    this->nameBoxAlpha[this->buttonIndex] += 25;
    this->confirmButtonAlpha[BTN_CONFIRM_YES] -= 25;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->actionTimer = 8;
        this->fileInfoAlpha[this->buttonIndex] = 0;
        this->configMode++;
    }
}

/**
 * Description here
 * Update function for `CM_26`
 */
void func_808064F4(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    s16 i;
    s16 yStep;

    yStep = ABS(this->buttonYOffsets[this->buttonIndex] - sChooseFileYOffsets[this->buttonIndex]) / this->actionTimer;

    if (this->buttonYOffsets[this->buttonIndex] >= sChooseFileYOffsets[this->buttonIndex]) {
        this->buttonYOffsets[this->buttonIndex] -= yStep;
    } else {
        this->buttonYOffsets[this->buttonIndex] += yStep;
    }

    for (i = 0; i < 3; i++) {
        if (i != this->buttonIndex) {
            this->fileButtonAlpha[i] += 25;

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
        this->buttonYOffsets[this->buttonIndex] = sChooseFileYOffsets[this->buttonIndex];
        this->actionTimer = 8;
        this->buttonIndex = BTN_ERASE_QUIT;
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->configMode = CM_21;
    }
}

/**
 * Description here
 * Update function for `CM_27`
 */
void func_80806710(GameState* thisx) {
    static s16 D_80813800;
    FileChooseContext* this = (FileChooseContext*)thisx;
    SramContext* sramCtx = &this->sramCtx;

    if (sEraseDelayTimer == 0) {
        if (this->actionTimer == 8) {
            D_80813800 = 1;
        }

        if (this->actionTimer != 0) {
            this->titleAlpha[0] -= 31;
            this->titleAlpha[1] += 31;
            this->fileInfoAlpha[this->selectedFileIndex] -= 25;
            this->confirmButtonAlpha[BTN_CONFIRM_YES] -= 25;
            this->confirmButtonAlpha[BTN_CONFIRM_QUIT] -= 25;
        }

        this->fileNamesY[this->selectedFileIndex] -= D_80813800;
        this->actionTimer--;
        D_80813800 += 2;

        if (this->actionTimer == 0) {
            Sram_EraseSave(this, sramCtx);
            this->titleLabel = this->nextTitleLabel;
            this->titleAlpha[0] = 255;
            this->titleAlpha[1] = this->connectorAlpha[this->selectedFileIndex] = 0;
            this->confirmButtonAlpha[0] = this->confirmButtonAlpha[1] = 0;
            if (1) {} // probably a fake match, there should be a better chained assignment
            this->fileInfoAlpha[this->selectedFileIndex] = this->nameBoxAlpha[this->selectedFileIndex] =
                this->confirmButtonAlpha[1];
            this->configMode++;
            this->actionTimer = 90;
        }
    } else {
        sEraseDelayTimer--;

        if (sEraseDelayTimer == 0) {
            Audio_PlaySoundGeneral(NA_SE_OC_ABYSS, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }
}

/**
 * Description here
 * Update function for `CM_28`
 */
void func_808068F0(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    Input* controller1 = &this->state.input[0];

    if (CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_B | BTN_START) || (--this->actionTimer == 0)) {
        this->buttonYOffsets[3] = 0;
        this->actionTimer = 8;
        this->nextTitleLabel = TITLE_SELECT_FILE;
        this->configMode++;
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CLOSE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    }
}

/**
 * Description here
 * Update function for `CM_29`
 */
void func_808069B4(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    s16 i;
    s16 yStep;

    for (i = 0; i < 5; i++) {
        yStep = ABS(this->buttonYOffsets[i]) / this->actionTimer;

        if (this->buttonYOffsets[i] >= 0) {
            this->buttonYOffsets[i] -= yStep;
        } else {
            this->buttonYOffsets[i] += yStep;
        }
    }

    for (i = 0; i < 3; i++) {
        this->fileButtonAlpha[i] += 25;

        if (SLOT_OCCUPIED(sramCtx, i)) {
            this->nameBoxAlpha[i] = this->nameAlpha[i] = this->fileButtonAlpha[i];
            this->connectorAlpha[i] += 31;
        }
    }

    if (this->fileButtonAlpha[this->selectedFileIndex] >= 200) {
        this->fileButtonAlpha[this->selectedFileIndex] = 200;
    }

    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->fileNamesY[this->selectedFileIndex] = 0;
        this->highlightColor[3] = 70;
        this->highlightFlashDir = 1;
        XREG(35) = XREG(36);
        this->actionButtonAlpha[BTN_ACTION_COPY] = 200;
        this->confirmButtonAlpha[0] = this->confirmButtonAlpha[1] = 0;
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->configMode = CM_MAIN_MENU;
    }

    this->optionButtonAlpha = this->actionButtonAlpha[BTN_ACTION_ERASE] = this->actionButtonAlpha[BTN_ACTION_COPY];
}

/**
 * Description here
 * Update function for `CM_30`
 */
void func_80806C20(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    s16 i;
    s16 yStep;

    for (i = 0; i < 5; i++) {
        yStep = ABS(this->buttonYOffsets[i]) / this->actionTimer;

        if (this->buttonYOffsets[i] >= 0) {
            this->buttonYOffsets[i] -= yStep;
        } else {
            this->buttonYOffsets[i] += yStep;
        }
    }

    this->actionButtonAlpha[BTN_ACTION_COPY] += 25;
    this->actionButtonAlpha[BTN_ACTION_ERASE] += 25;
    this->optionButtonAlpha += 25;
    this->confirmButtonAlpha[BTN_CONFIRM_QUIT] -= 50;

    if (this->confirmButtonAlpha[BTN_CONFIRM_QUIT] <= 0) {
        this->confirmButtonAlpha[BTN_CONFIRM_QUIT] = 0;
    }

    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->highlightColor[3] = 70;
        this->highlightFlashDir = 1;
        XREG(35) = XREG(36);
        this->actionButtonAlpha[BTN_ACTION_COPY] = 200;
        this->confirmButtonAlpha[BTN_CONFIRM_QUIT] = 0;
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->configMode = CM_MAIN_MENU;
    }

    this->optionButtonAlpha = this->actionButtonAlpha[BTN_ACTION_ERASE] = this->actionButtonAlpha[BTN_ACTION_COPY];
}
