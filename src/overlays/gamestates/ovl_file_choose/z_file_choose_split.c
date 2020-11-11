#include "file_choose.h"

s16 D_80811BB0[6][32] = {
    {
        0xFFA2, 0x0048, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 0xFFDA, 0x0048, 0x0000,
        0x0000, 0x0700, 0x0000, 0xFFFF, 0xFFFF, 0xFFA2, 0x0038, 0x0000, 0x0000, 0x0000, 0x0200,
        0xFFFF, 0xFFFF, 0xFFDA, 0x0038, 0x0000, 0x0000, 0x0700, 0x0200, 0xFFFF, 0xFFFF,
    },
    {
        0xFFA0, 0xFFD0, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 0xFFCC, 0xFFD0, 0x0000,
        0x0000, 0x0580, 0x0000, 0xFFFF, 0xFFFF, 0xFFA0, 0xFFC0, 0x0000, 0x0000, 0x0000, 0x0200,
        0xFFFF, 0xFFFF, 0xFFCC, 0xFFC0, 0x0000, 0x0000, 0x0580, 0x0200, 0xFFFF, 0xFFFF,
    },
    {
        0xFFD0, 0xFFD0, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 0xFFFC, 0xFFD0, 0x0000,
        0x0000, 0x0580, 0x0000, 0xFFFF, 0xFFFF, 0xFFD0, 0xFFC0, 0x0000, 0x0000, 0x0000, 0x0200,
        0xFFFF, 0xFFFF, 0xFFFC, 0xFFC0, 0x0000, 0x0000, 0x0580, 0x0200, 0xFFFF, 0xFFFF,
    },
    {
        0x0000, 0xFFD0, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 0x001C, 0xFFD0, 0x0000,
        0x0000, 0x0380, 0x0000, 0xFFFF, 0xFFFF, 0x0000, 0xFFC0, 0x0000, 0x0000, 0x0000, 0x0200,
        0xFFFF, 0xFFFF, 0x001C, 0xFFC0, 0x0000, 0x0000, 0x0380, 0x0200, 0xFFFF, 0xFFFF,
    },
    {
        0x0020, 0xFFD0, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 0x003C, 0xFFD0, 0x0000,
        0x0000, 0x0380, 0x0000, 0xFFFF, 0xFFFF, 0x0020, 0xFFC0, 0x0000, 0x0000, 0x0000, 0x0200,
        0xFFFF, 0xFFFF, 0x003C, 0xFFC0, 0x0000, 0x0000, 0x0380, 0x0200, 0xFFFF, 0xFFFF,
    },
    {
        0x0040, 0xFFD0, 0x0000, 0x0000, 0x0000, 0x0000, 0xFFFF, 0xFFFF, 0x006C, 0xFFD0, 0x0000,
        0x0000, 0x0580, 0x0000, 0xFFFF, 0xFFFF, 0x0040, 0xFFC0, 0x0000, 0x0000, 0x0000, 0x0200,
        0xFFFF, 0xFFFF, 0x006C, 0xFFC0, 0x0000, 0x0000, 0x0580, 0x0200, 0xFFFF, 0xFFFF,
    },
};

Vtx D_80811D30[] = {
    VTX(-94, 72, 0, 0, 0, 255, 255, 255, 255),     VTX(34, 72, 0, 4096, 0, 255, 255, 255, 255),
    VTX(-94, 56, 0, 0, 512, 255, 255, 255, 255),   VTX(34, 56, 0, 4096, 512, 255, 255, 255, 255),
    VTX(-100, 44, 0, 0, 0, 255, 255, 255, 255),    VTX(-36, 44, 0, 2048, 0, 255, 255, 255, 255),
    VTX(-100, 28, 0, 0, 512, 255, 255, 255, 255),  VTX(-36, 28, 0, 2048, 512, 255, 255, 255, 255),
    VTX(-100, 4, 0, 0, 0, 255, 255, 255, 255),     VTX(-36, 4, 0, 2048, 0, 255, 255, 255, 255),
    VTX(-100, -12, 0, 0, 512, 255, 255, 255, 255), VTX(-36, -12, 0, 2048, 512, 255, 255, 255, 255),
    VTX(-100, -36, 0, 0, 0, 255, 255, 255, 255),   VTX(28, -36, 0, 4096, 0, 255, 255, 255, 255),
    VTX(-100, -52, 0, 0, 512, 255, 255, 255, 255), VTX(28, -52, 0, 4096, 512, 255, 255, 255, 255),
};

Vtx D_80811E30[] = {
    VTX(-94, 72, 0, 0, 0, 255, 255, 255, 255),     VTX(34, 72, 0, 4096, 0, 255, 255, 255, 255),
    VTX(-94, 56, 0, 0, 512, 255, 255, 255, 255),   VTX(34, 56, 0, 4096, 512, 255, 255, 255, 255),
    VTX(-100, 44, 0, 0, 0, 255, 255, 255, 255),    VTX(-36, 44, 0, 2048, 0, 255, 255, 255, 255),
    VTX(-100, 28, 0, 0, 512, 255, 255, 255, 255),  VTX(-36, 28, 0, 2048, 512, 255, 255, 255, 255),
    VTX(-100, 4, 0, 0, 0, 255, 255, 255, 255),     VTX(44, 4, 0, 4608, 0, 255, 255, 255, 255),
    VTX(-100, -12, 0, 0, 512, 255, 255, 255, 255), VTX(44, -12, 0, 4608, 512, 255, 255, 255, 255),
    VTX(-100, -36, 0, 0, 0, 255, 255, 255, 255),   VTX(28, -36, 0, 4096, 0, 255, 255, 255, 255),
    VTX(-100, -52, 0, 0, 512, 255, 255, 255, 255), VTX(28, -52, 0, 4096, 512, 255, 255, 255, 255),
};

Vtx D_80811F30[] = {
    VTX(-100, 26, 0, 0, 0, 255, 255, 255, 255),    VTX(-52, 26, 0, 1536, 0, 255, 255, 255, 255),
    VTX(-100, 10, 0, 0, 512, 255, 255, 255, 255),  VTX(-52, 10, 0, 1536, 512, 255, 255, 255, 255),
    VTX(-48, 26, 0, 0, 0, 255, 255, 255, 255),     VTX(0, 26, 0, 1536, 0, 255, 255, 255, 255),
    VTX(-48, 10, 0, 0, 512, 255, 255, 255, 255),   VTX(0, 10, 0, 1536, 512, 255, 255, 255, 255),
    VTX(4, 26, 0, 0, 0, 255, 255, 255, 255),       VTX(52, 26, 0, 1536, 0, 255, 255, 255, 255),
    VTX(4, 10, 0, 0, 512, 255, 255, 255, 255),     VTX(52, 10, 0, 1536, 512, 255, 255, 255, 255),
    VTX(56, 26, 0, 0, 0, 255, 255, 255, 255),      VTX(104, 26, 0, 1536, 0, 255, 255, 255, 255),
    VTX(56, 10, 0, 0, 512, 255, 255, 255, 255),    VTX(104, 10, 0, 1536, 512, 255, 255, 255, 255),
    VTX(-100, -14, 0, 0, 0, 255, 255, 255, 255),   VTX(-52, -14, 0, 1536, 0, 255, 255, 255, 255),
    VTX(-100, -30, 0, 0, 512, 255, 255, 255, 255), VTX(-52, -30, 0, 1536, 512, 255, 255, 255, 255),
    VTX(-48, -14, 0, 0, 0, 255, 255, 255, 255),    VTX(0, -14, 0, 1536, 0, 255, 255, 255, 255),
    VTX(-48, -30, 0, 0, 512, 255, 255, 255, 255),  VTX(0, -30, 0, 1536, 512, 255, 255, 255, 255),
    VTX(-100, -54, 0, 0, 0, 255, 255, 255, 255),   VTX(-4, -54, 0, 3072, 0, 255, 255, 255, 255),
    VTX(-100, -70, 0, 0, 512, 255, 255, 255, 255), VTX(-4, -70, 0, 3072, 512, 255, 255, 255, 255),
    VTX(-4, -54, 0, 0, 0, 255, 255, 255, 255),     VTX(92, -54, 0, 3072, 0, 255, 255, 255, 255),
    VTX(-4, -70, 0, 0, 512, 255, 255, 255, 255),   VTX(92, -70, 0, 3072, 512, 255, 255, 255, 255),
};

Vtx D_80812130[] = {
    VTX(-100, 26, 0, 0, 0, 255, 255, 255, 255),    VTX(-52, 26, 0, 1536, 0, 255, 255, 255, 255),
    VTX(-100, 10, 0, 0, 512, 255, 255, 255, 255),  VTX(-52, 10, 0, 1536, 512, 255, 255, 255, 255),
    VTX(-48, 26, 0, 0, 0, 255, 255, 255, 255),     VTX(0, 26, 0, 1536, 0, 255, 255, 255, 255),
    VTX(-48, 10, 0, 0, 512, 255, 255, 255, 255),   VTX(0, 10, 0, 1536, 512, 255, 255, 255, 255),
    VTX(4, 26, 0, 0, 0, 255, 255, 255, 255),       VTX(52, 26, 0, 1536, 0, 255, 255, 255, 255),
    VTX(4, 10, 0, 0, 512, 255, 255, 255, 255),     VTX(52, 10, 0, 1536, 512, 255, 255, 255, 255),
    VTX(56, 26, 0, 0, 0, 255, 255, 255, 255),      VTX(104, 26, 0, 1536, 0, 255, 255, 255, 255),
    VTX(56, 10, 0, 0, 512, 255, 255, 255, 255),    VTX(104, 10, 0, 1536, 512, 255, 255, 255, 255),
    VTX(-100, -14, 0, 0, 0, 255, 255, 255, 255),   VTX(-20, -14, 0, 2560, 0, 255, 255, 255, 255),
    VTX(-100, -30, 0, 0, 512, 255, 255, 255, 255), VTX(-20, -30, 0, 2560, 512, 255, 255, 255, 255),
    VTX(-16, -14, 0, 0, 0, 255, 255, 255, 255),    VTX(64, -14, 0, 2560, 0, 255, 255, 255, 255),
    VTX(-16, -30, 0, 0, 512, 255, 255, 255, 255),  VTX(64, -30, 0, 2560, 512, 255, 255, 255, 255),
    VTX(-100, -54, 0, 0, 0, 255, 255, 255, 255),   VTX(-4, -54, 0, 3072, 0, 255, 255, 255, 255),
    VTX(-100, -70, 0, 0, 512, 255, 255, 255, 255), VTX(-4, -70, 0, 3072, 512, 255, 255, 255, 255),
    VTX(-4, -54, 0, 0, 0, 255, 255, 255, 255),     VTX(92, -54, 0, 3072, 0, 255, 255, 255, 255),
    VTX(-4, -70, 0, 0, 512, 255, 255, 255, 255),   VTX(92, -70, 0, 3072, 512, 255, 255, 255, 255),
};

Vtx gOptionsDividerTop[] = {
    VTX(-100, 28, 0, 0, 0, 255, 255, 255, 255),
    VTX(156, 28, 0, 8192, 0, 255, 255, 255, 255),
    VTX(-100, 26, 0, 0, 64, 255, 255, 255, 255),
    VTX(156, 26, 0, 8192, 64, 255, 255, 255, 255),
};

Vtx gOptionsDividerMiddle[] = {
    VTX(-100, -12, 0, 0, 0, 255, 255, 255, 255),
    VTX(156, -12, 0, 8192, 0, 255, 255, 255, 255),
    VTX(-100, -14, 0, 0, 64, 255, 255, 255, 255),
    VTX(156, -14, 0, 8192, 64, 255, 255, 255, 255),
};

Vtx gOptionsDividerBottom[] = {
    VTX(-100, -52, 0, 0, 0, 255, 255, 255, 255),
    VTX(156, -52, 0, 8192, 0, 255, 255, 255, 255),
    VTX(-100, -54, 0, 0, 64, 255, 255, 255, 255),
    VTX(156, -54, 0, 8192, 64, 255, 255, 255, 255),
};

s16 D_808123F0[] = {
    0x000A, 0x000B, 0x000C, 0x000D, 0x000E, 0x000F, 0x0010, 0x0011, 0x0012, 0x0013, 0x0014, 0x0015,
    0x0016, 0x0017, 0x0018, 0x0019, 0x001A, 0x001B, 0x001C, 0x001D, 0x001E, 0x001F, 0x0020, 0x0021,
    0x0022, 0x0023, 0x0024, 0x0025, 0x0026, 0x0027, 0x0028, 0x0029, 0x002A, 0x002B, 0x002C, 0x002D,
    0x002E, 0x002F, 0x0030, 0x0031, 0x0032, 0x0033, 0x0034, 0x0035, 0x0036, 0x0037, 0x0038, 0x0039,
    0x003A, 0x003B, 0x003C, 0x003D, 0x0001, 0x0002, 0x0003, 0x0004, 0x0005, 0x0006, 0x0007, 0x0008,
    0x0009, 0x0000, 0x0040, 0x003F, 0x003E, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000,
};

// when choosing a file to copy or erase, the 6 main menu buttons are placed at these offsets
s16 sChooseFileYOffsets[] = { -48, -48, -48, -24, -24, 0 };

s16 D_8081248C[3][3] = {
    { 0, -48, -48 },
    { -64, 16, -48 },
    { -64, -64, 32 },
};

s16 D_808124A0 = 15;

s16 D_808124A4[] = { -56, -40, -24, 0 };

s16 D_808124AC[] = { 0, 16, 32, 0, 0, 0, 0 };

/**
 * Start moving the main menu buttons toward their final positions indicated by `sChooseFileYOffsets`
 * Fade out the copy/erase/options buttons and bring in the new title
 * When action timer is 0 set the cursor to the quit button and move on to the next config mode
 */
void FileCopy_SetupSourceSelect(FileChooseContext* thisx) {
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

    this->actionBtnAlpha[BTN_ACTION_COPY] -= 25;
    this->actionBtnAlpha[BTN_ACTION_ERASE] -= 25;
    this->optionButtonAlpha -= 25;
    this->confirmButtonAlpha[BTN_CONFIRM_QUIT] += 25;
    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->actionTimer = 8;

        this->actionBtnAlpha[BTN_ACTION_COPY] = this->actionBtnAlpha[BTN_ACTION_ERASE] = this->optionButtonAlpha = 0;

        this->confirmButtonAlpha[BTN_CONFIRM_QUIT] = 200;
        this->titleLabel = this->nextTitleLabel;

        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->buttonIndex = BTN_COPY_QUIT;
        this->configMode++;
    }
}

void FileCopy_SelectSource(FileChooseContext* thisx) {
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
            this->configMode = 5;
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
void func_80804248(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
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
void func_808043D8(FileChooseContext* this) {
    this->nameBoxAlpha[this->buttonIndex] -= 25;
    this->fileInfoAlpha[this->buttonIndex] += 25;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->nameBoxAlpha[this->buttonIndex] = 0;
        this->fileInfoAlpha[this->buttonIndex] = 200;
        this->buttonIndex = BTN_COPY_QUIT;
        this->actionTimer = 8;
        this->configMode = 7;
    }
}

void FileChoose_SelectCopyDest(FileChooseContext* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    Input* controller1 = &this->state.input[0];

    if (((this->buttonIndex == BTN_COPY_QUIT) && CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) ||
        CHECK_BTN_ALL(controller1->press.button, BTN_B)) {
        this->buttonIndex = this->selectedFileIndex;
        this->nextTitleLabel = TITLE_COPY_FROM;
        this->actionTimer = 8;
        this->configMode = 8;
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CLOSE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    }

    if (CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) {
        if (!SLOT_OCCUPIED(sramCtx, this->buttonIndex)) {
            this->copyDestFileIndex = this->buttonIndex;
            this->nextTitleLabel = TITLE_COPY_CONFIRM;
            this->actionTimer = 8;
            this->configMode = 10;
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

                if (this->buttonIndex < BTN_COPY_FILE_1)
                    this->buttonIndex = BTN_COPY_QUIT;
            } else {
                if (this->buttonIndex < BTN_COPY_FILE_1)
                    this->buttonIndex = BTN_COPY_QUIT;
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

void func_80804858(FileChooseContext* this) {
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

void func_80804924(FileChooseContext* thisx) {
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
        this->configMode = 4;
    }
}

void func_80804A50(FileChooseContext* thisx) {
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

void func_80804C74(FileChooseContext* this) {
    this->confirmButtonAlpha[BTN_CONFIRM_YES] += 25;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->configMode = 12;
        this->buttonIndex = BTN_CONFIRM_QUIT;
    }
}

void func_80804CD0(FileChooseContext* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    Input* controller1 = &this->state.input[0];
    u16 dayTime;

    if (((this->buttonIndex != BTN_CONFIRM_YES) && CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) ||
        CHECK_BTN_ALL(controller1->press.button, BTN_B)) {
        this->actionTimer = 8;
        this->nextTitleLabel = TITLE_COPY_TO;
        this->configMode = 13;
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CLOSE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else if (CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) {
        dayTime = gSaveContext.dayTime;
        Sram_CopySave(this, sramCtx);
        gSaveContext.dayTime = dayTime;
        this->fileInfoAlpha[this->copyDestFileIndex] = this->nameAlpha[this->copyDestFileIndex] = 0;
        this->nextTitleLabel = TITLE_COPY_COMPLETE;
        this->actionTimer = 8;
        this->configMode = 14;
        func_800AA000(300.0f, 0xB4, 0x14, 0x64);
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_L, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else if (ABS(this->stickRelY) >= 30) {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->buttonIndex ^= 1;
    }
}

void func_80804ED8(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
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
        this->configMode = 7;
    }
}

void func_8080510C(FileChooseContext* this) {
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

void func_808051C8(FileChooseContext* this) {
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

void func_80805318(FileChooseContext* thisx) {
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
void func_80805434(FileChooseContext* this) {
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
void func_80805524(FileChooseContext* thisx) {
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

    this->actionBtnAlpha[BTN_ACTION_COPY] += 25;
    this->actionBtnAlpha[BTN_ACTION_ERASE] += 25;
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
        this->configMode = 2;
    }
}

void FileCopy_SetupMainMenu(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
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

    this->actionBtnAlpha[BTN_ACTION_COPY] += 25;
    this->confirmButtonAlpha[BTN_CONFIRM_QUIT] -= 25;
    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->actionBtnAlpha[BTN_ACTION_COPY] = 200;
        this->confirmButtonAlpha[BTN_CONFIRM_QUIT] = 0;
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->configMode = CM_MAIN_MENU;
    }

    this->optionButtonAlpha = this->actionBtnAlpha[BTN_ACTION_ERASE] = this->actionBtnAlpha[BTN_ACTION_COPY];
}

void func_8080595C(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
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

    this->actionBtnAlpha[BTN_ACTION_COPY] -= 50;
    this->actionBtnAlpha[BTN_ACTION_ERASE] -= 50;
    this->optionButtonAlpha -= 50;
    this->confirmButtonAlpha[BTN_CONFIRM_QUIT] += 25;

    if (this->actionBtnAlpha[BTN_ACTION_COPY] <= 0) {
        this->actionBtnAlpha[BTN_ACTION_COPY] = this->actionBtnAlpha[BTN_ACTION_ERASE] = this->optionButtonAlpha = 0;
    }

    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->highlightColor[3] = 70;
        this->highlightFlashDir = 1;
        XREG(35) = XREG(36);
        this->actionBtnAlpha[BTN_ACTION_COPY] = this->actionBtnAlpha[BTN_ACTION_ERASE] = this->optionButtonAlpha = 0;
        this->confirmButtonAlpha[1] = 200;
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->buttonIndex = BTN_ERASE_QUIT;
        this->configMode++;
    }
}

void func_80805B2C(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
    SramContext* sramCtx = &this->sramCtx;
    Input* controller1 = &this->state.input[0];

    if (((this->buttonIndex == BTN_COPY_QUIT) && CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) ||
        CHECK_BTN_ALL(controller1->press.button, BTN_B)) {

        this->buttonIndex = BTN_MAIN_ERASE;
        this->actionTimer = 8;
        this->nextTitleLabel = TITLE_SELECT_FILE;
        this->configMode = 30;
        this->warningLabel = WARNING_NONE;
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CLOSE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    } else if (CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) {
        if (SLOT_OCCUPIED(sramCtx, this->buttonIndex)) {
            this->actionTimer = 8;
            this->selectedFileIndex = this->buttonIndex;
            this->configMode = 22;
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

void func_80805EB8(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
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

void func_80806180(FileChooseContext* this) {
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
        this->configMode = 24;
    }
}

void func_8080625C(FileChooseContext* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    Input* controller1 = &this->state.input[0];

    if (((this->buttonIndex != BTN_CONFIRM_YES) && CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) ||
        CHECK_BTN_ALL(controller1->press.button, BTN_B)) {
        this->buttonIndex = this->selectedFileIndex;
        this->nextTitleLabel = TITLE_ERASE_FILE;
        this->configMode = 25;
        this->actionTimer = 8;
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CLOSE, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else if (CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) {
        this->n64ddFlags[this->selectedFileIndex] = this->connectorAlpha[this->selectedFileIndex] = 0;
        Audio_PlaySoundGeneral(NA_SE_EV_DIAMOND_SWITCH, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->actionTimer = 8;
        this->configMode = 27;
        this->nextTitleLabel = TITLE_ERASE_COMPLETE;
        func_800AA000(200.0f, 0xFF, 0x14, 0x96);
        D_808124A0 = 15;
    } else if (ABS(this->stickRelY) >= 30) {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->buttonIndex ^= 1;
    }
}

void func_80806444(FileChooseContext* this) {
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

void func_808064F4(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
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
        this->configMode = 21;
    }
}

void func_80806710(FileChooseContext* thisx) {
    static s16 D_80813800;
    FileChooseContext* this = thisx;
    SramContext* sramCtx = &this->sramCtx;

    if (D_808124A0 == 0) {
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
        D_808124A0--;

        if (D_808124A0 == 0) {
            Audio_PlaySoundGeneral(NA_SE_OC_ABYSS, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }
}

void func_808068F0(FileChooseContext* thisx) {
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

void func_808069B4(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
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
        this->actionBtnAlpha[BTN_ACTION_COPY] = 200;
        this->confirmButtonAlpha[0] = this->confirmButtonAlpha[1] = 0;
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->configMode = 2;
    }

    this->optionButtonAlpha = this->actionBtnAlpha[BTN_ACTION_ERASE] = this->actionBtnAlpha[BTN_ACTION_COPY];
}

void func_80806C20(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
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

    this->actionBtnAlpha[BTN_ACTION_COPY] += 25;
    this->actionBtnAlpha[BTN_ACTION_ERASE] += 25;
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
        this->actionBtnAlpha[BTN_ACTION_COPY] = 200;
        this->confirmButtonAlpha[BTN_CONFIRM_QUIT] = 0;
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->configMode = 2;
    }

    this->optionButtonAlpha = this->actionBtnAlpha[BTN_ACTION_ERASE] = this->actionBtnAlpha[BTN_ACTION_COPY];
}