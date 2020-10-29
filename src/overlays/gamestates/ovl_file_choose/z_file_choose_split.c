#include "file_choose.h"

s32 D_80811BB0[] = { 0xFFA20048, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFDA0048, 0x00000000, 0x07000000, 0xFFFFFFFF,
                     0xFFA20038, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFDA0038, 0x00000000, 0x07000200, 0xFFFFFFFF,
                     0xFFA0FFD0, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFCCFFD0, 0x00000000, 0x05800000, 0xFFFFFFFF,
                     0xFFA0FFC0, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFCCFFC0, 0x00000000, 0x05800200, 0xFFFFFFFF,
                     0xFFD0FFD0, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFCFFD0, 0x00000000, 0x05800000, 0xFFFFFFFF,
                     0xFFD0FFC0, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFFCFFC0, 0x00000000, 0x05800200, 0xFFFFFFFF,
                     0x0000FFD0, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x001CFFD0, 0x00000000, 0x03800000, 0xFFFFFFFF,
                     0x0000FFC0, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x001CFFC0, 0x00000000, 0x03800200, 0xFFFFFFFF,
                     0x0020FFD0, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x003CFFD0, 0x00000000, 0x03800000, 0xFFFFFFFF,
                     0x0020FFC0, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x003CFFC0, 0x00000000, 0x03800200, 0xFFFFFFFF,
                     0x0040FFD0, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x006CFFD0, 0x00000000, 0x05800000, 0xFFFFFFFF,
                     0x0040FFC0, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x006CFFC0, 0x00000000, 0x05800200, 0xFFFFFFFF };
s32 D_80811D30[] = { 0xFFA20048, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x00220048, 0x00000000, 0x10000000, 0xFFFFFFFF,
                     0xFFA20038, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x00220038, 0x00000000, 0x10000200, 0xFFFFFFFF,
                     0xFF9C002C, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFDC002C, 0x00000000, 0x08000000, 0xFFFFFFFF,
                     0xFF9C001C, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFDC001C, 0x00000000, 0x08000200, 0xFFFFFFFF,
                     0xFF9C0004, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFDC0004, 0x00000000, 0x08000000, 0xFFFFFFFF,
                     0xFF9CFFF4, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFDCFFF4, 0x00000000, 0x08000200, 0xFFFFFFFF,
                     0xFF9CFFDC, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x001CFFDC, 0x00000000, 0x10000000, 0xFFFFFFFF,
                     0xFF9CFFCC, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x001CFFCC, 0x00000000, 0x10000200, 0xFFFFFFFF };
s32 D_80811E30[] = { 0xFFA20048, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x00220048, 0x00000000, 0x10000000, 0xFFFFFFFF,
                     0xFFA20038, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x00220038, 0x00000000, 0x10000200, 0xFFFFFFFF,
                     0xFF9C002C, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFDC002C, 0x00000000, 0x08000000, 0xFFFFFFFF,
                     0xFF9C001C, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFDC001C, 0x00000000, 0x08000200, 0xFFFFFFFF,
                     0xFF9C0004, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x002C0004, 0x00000000, 0x12000000, 0xFFFFFFFF,
                     0xFF9CFFF4, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x002CFFF4, 0x00000000, 0x12000200, 0xFFFFFFFF,
                     0xFF9CFFDC, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x001CFFDC, 0x00000000, 0x10000000, 0xFFFFFFFF,
                     0xFF9CFFCC, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x001CFFCC, 0x00000000, 0x10000200, 0xFFFFFFFF };
s32 D_80811F30[] = { 0xFF9C001A, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFCC001A, 0x00000000, 0x06000000, 0xFFFFFFFF,
                     0xFF9C000A, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFCC000A, 0x00000000, 0x06000200, 0xFFFFFFFF,
                     0xFFD0001A, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x0000001A, 0x00000000, 0x06000000, 0xFFFFFFFF,
                     0xFFD0000A, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x0000000A, 0x00000000, 0x06000200, 0xFFFFFFFF,
                     0x0004001A, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x0034001A, 0x00000000, 0x06000000, 0xFFFFFFFF,
                     0x0004000A, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x0034000A, 0x00000000, 0x06000200, 0xFFFFFFFF,
                     0x0038001A, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x0068001A, 0x00000000, 0x06000000, 0xFFFFFFFF,
                     0x0038000A, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x0068000A, 0x00000000, 0x06000200, 0xFFFFFFFF,
                     0xFF9CFFF2, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFCCFFF2, 0x00000000, 0x06000000, 0xFFFFFFFF,
                     0xFF9CFFE2, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFCCFFE2, 0x00000000, 0x06000200, 0xFFFFFFFF,
                     0xFFD0FFF2, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x0000FFF2, 0x00000000, 0x06000000, 0xFFFFFFFF,
                     0xFFD0FFE2, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x0000FFE2, 0x00000000, 0x06000200, 0xFFFFFFFF,
                     0xFF9CFFCA, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFCFFCA, 0x00000000, 0x0C000000, 0xFFFFFFFF,
                     0xFF9CFFBA, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFFCFFBA, 0x00000000, 0x0C000200, 0xFFFFFFFF,
                     0xFFFCFFCA, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x005CFFCA, 0x00000000, 0x0C000000, 0xFFFFFFFF,
                     0xFFFCFFBA, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x005CFFBA, 0x00000000, 0x0C000200, 0xFFFFFFFF };
s32 D_80812130[] = { 0xFF9C001A, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFCC001A, 0x00000000, 0x06000000, 0xFFFFFFFF,
                     0xFF9C000A, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFCC000A, 0x00000000, 0x06000200, 0xFFFFFFFF,
                     0xFFD0001A, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x0000001A, 0x00000000, 0x06000000, 0xFFFFFFFF,
                     0xFFD0000A, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x0000000A, 0x00000000, 0x06000200, 0xFFFFFFFF,
                     0x0004001A, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x0034001A, 0x00000000, 0x06000000, 0xFFFFFFFF,
                     0x0004000A, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x0034000A, 0x00000000, 0x06000200, 0xFFFFFFFF,
                     0x0038001A, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x0068001A, 0x00000000, 0x06000000, 0xFFFFFFFF,
                     0x0038000A, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x0068000A, 0x00000000, 0x06000200, 0xFFFFFFFF,
                     0xFF9CFFF2, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFECFFF2, 0x00000000, 0x0A000000, 0xFFFFFFFF,
                     0xFF9CFFE2, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFECFFE2, 0x00000000, 0x0A000200, 0xFFFFFFFF,
                     0xFFF0FFF2, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x0040FFF2, 0x00000000, 0x0A000000, 0xFFFFFFFF,
                     0xFFF0FFE2, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x0040FFE2, 0x00000000, 0x0A000200, 0xFFFFFFFF,
                     0xFF9CFFCA, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFCFFCA, 0x00000000, 0x0C000000, 0xFFFFFFFF,
                     0xFF9CFFBA, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFFCFFBA, 0x00000000, 0x0C000200, 0xFFFFFFFF,
                     0xFFFCFFCA, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x005CFFCA, 0x00000000, 0x0C000000, 0xFFFFFFFF,
                     0xFFFCFFBA, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x005CFFBA, 0x00000000, 0x0C000200, 0xFFFFFFFF };
s32 D_80812330[] = { 0xFF9C001C, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x009C001C, 0x00000000, 0x20000000, 0xFFFFFFFF,
                     0xFF9C001A, 0x00000000, 0x00000040, 0xFFFFFFFF, 0x009C001A, 0x00000000, 0x20000040, 0xFFFFFFFF };
s32 D_80812370[] = { 0xFF9CFFF4, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x009CFFF4, 0x00000000, 0x20000000, 0xFFFFFFFF,
                     0xFF9CFFF2, 0x00000000, 0x00000040, 0xFFFFFFFF, 0x009CFFF2, 0x00000000, 0x20000040, 0xFFFFFFFF };
s32 D_808123B0[] = { 0xFF9CFFCC, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x009CFFCC, 0x00000000, 0x20000000, 0xFFFFFFFF,
                     0xFF9CFFCA, 0x00000000, 0x00000040, 0xFFFFFFFF, 0x009CFFCA, 0x00000000, 0x20000040, 0xFFFFFFFF };
s32 D_808123F0[] = { 0x000A000B, 0x000C000D, 0x000E000F, 0x00100011, 0x00120013, 0x00140015, 0x00160017, 0x00180019,
                     0x001A001B, 0x001C001D, 0x001E001F, 0x00200021, 0x00220023, 0x00240025, 0x00260027, 0x00280029,
                     0x002A002B, 0x002C002D, 0x002E002F, 0x00300031, 0x00320033, 0x00340035, 0x00360037, 0x00380039,
                     0x003A003B, 0x003C003D, 0x00010002, 0x00030004, 0x00050006, 0x00070008, 0x00090000, 0x0040003F,
                     0x003E0000, 0x00000000, 0x00000000, 0x00000000 };
s16 D_80812480[] = { -48, -48, -48, -24, -24, 0 }; // copy screen button y positions

s16 D_8081248C[3][3] = {
    { 0, -48, -48 },
    { -64, 16, -48 },
    { -64, -64, 32 },
};

s16 D_808124A0 = 15;

s16 D_808124A4[] = { -56, -40, -24, 0 };

s16 D_808124AC[] = { 0, 16, 32, 0, 0, 0, 0 };


// update func for configMode 3
void func_80803D40(FileChooseContext* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    s16 yPosStep;
    s16 i;

    for (i = 0; i < 5; i++) {
        yPosStep = (ABS(this->buttonsPosY[i] - D_80812480[i])) / this->actionTimer;

        if (this->buttonsPosY[i] >= D_80812480[i]) {
            this->buttonsPosY[i] -= yPosStep;
        } else {
            this->buttonsPosY[i] += yPosStep;
        }
    }

    this->copyEraseAlpha[0] -= 25;
    this->copyEraseAlpha[1] -= 25;
    this->optionButtonAlpha -= 25;
    this->confirmButtonAlpha[BTN_CONFIRM_QUIT] += 25;
    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->actionTimer = 8;

        this->copyEraseAlpha[0] = this->copyEraseAlpha[1] = this->optionButtonAlpha = 0;

        this->confirmButtonAlpha[BTN_CONFIRM_QUIT] = 200;
        this->titleLabel = this->nextTitleLabel;

        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->buttonIndex = BTN_COPY_QUIT;
        this->configMode++;
    }
}

void func_80803ED8(FileChooseContext* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    Input* controller1 = &this->state.input[0];

    if (((this->buttonIndex == BTN_COPY_QUIT) && CHECK_BTN_ANY(controller1->press.button, BTN_A | BTN_START)) ||
        CHECK_BTN_ALL(controller1->press.button, BTN_B)) {
        this->actionTimer = 8;
        this->buttonIndex = BTN_COPY_QUIT;
        this->nextTitleLabel = TITLE_SELECT_FILE;
        this->configMode = 19;
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
    s16 yPosStep;
    s16 i;

    for (i = 0; i < 3; i++) {
        yPosStep = ABS(this->buttonsPosY[i] - D_8081248C[this->buttonIndex][i]) / this->actionTimer;

        if (D_8081248C[this->buttonIndex][i] >= this->buttonsPosY[i]) {
            this->buttonsPosY[i] += yPosStep;
        } else {
            this->buttonsPosY[i] -= yPosStep;
        }
    }

    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->nameBoxAlpha[this->buttonIndex] -= 25;

    this->actionTimer--;
    if (this->actionTimer == 0) {
        this->buttonsPosY[this->buttonIndex] = D_8081248C[this->buttonIndex][this->buttonIndex];
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

void func_808044A0(FileChooseContext* thisx) {
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
    s16 yPosStep;

    for (i = 0; i < 3; i++) {
        yPosStep = ABS(this->buttonsPosY[i] - D_80812480[i]) / this->actionTimer;

        if (this->buttonsPosY[i] >= D_80812480[i]) {
            this->buttonsPosY[i] -= yPosStep;
        } else {
            this->buttonsPosY[i] += yPosStep;
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
    s16 yPosStep;

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
                yPosStep = ABS(this->buttonsPosY[i] - D_808124A4[i]) / this->actionTimer;
                this->buttonsPosY[i] += yPosStep;

                if (this->buttonsPosY[i] >= D_808124A4[i]) {
                    this->buttonsPosY[i] = D_808124A4[i];
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
    s16 yPosStep;

    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->confirmButtonAlpha[BTN_CONFIRM_YES] -= 25;

    for (i = 0; i < 3; i++) {
        if ((i != this->copyDestFileIndex) && (i != this->selectedFileIndex)) {
            this->fileButtonAlpha[i] += 0x19;

            if (SLOT_OCCUPIED(sramCtx, i)) {
                this->nameBoxAlpha[i] = this->nameAlpha[i] = this->fileButtonAlpha[i];
                this->connectorAlpha[i] += 31;
            }
        }

        yPosStep = ABS(this->buttonsPosY[i] - D_8081248C[this->selectedFileIndex][i]) / this->actionTimer;

        if (D_8081248C[this->selectedFileIndex][i] >= this->buttonsPosY[i]) {
            this->buttonsPosY[i] += yPosStep;
        } else {
            this->buttonsPosY[i] -= yPosStep;
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
    s16 yPosStep;

    this->fileInfoAlpha[this->copyDestFileIndex] += 25;
    this->nameAlpha[this->copyDestFileIndex] += 25;
    this->titleAlpha[1] += 31;
    yPosStep = ABS(this->fileNamesY[this->copyDestFileIndex] + 56) / this->actionTimer;
    this->fileNamesY[this->copyDestFileIndex] -= yPosStep;

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
        this->fileNamesY[this->copyDestFileIndex] = this->buttonsPosY[3] = 0;
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
    s16 yPosStep;

    for (i = 0; i < 5; i++) {
        yPosStep = ABS(this->buttonsPosY[i]) / this->actionTimer;

        if (this->buttonsPosY[i] >= 0) {
            this->buttonsPosY[i] -= yPosStep;
        } else {
            this->buttonsPosY[i] += yPosStep;
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

    this->copyEraseAlpha[0] += 25;
    this->copyEraseAlpha[1] += 25;
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

void func_80805824(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
    s16 i;
    s16 yPosStep;

    for (i = 0; i < 5; i++) {
        yPosStep = ABS(this->buttonsPosY[i]) / this->actionTimer;

        if (this->buttonsPosY[i] >= 0) {
            this->buttonsPosY[i] -= yPosStep;
        } else {
            this->buttonsPosY[i] += yPosStep;
        }
    }

    this->copyEraseAlpha[0] += 25;
    this->confirmButtonAlpha[1] -= 25;
    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->copyEraseAlpha[0] = 0xC8;
        this->confirmButtonAlpha[1] = 0;
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->configMode = 2;
    }

    this->optionButtonAlpha = this->copyEraseAlpha[1] = this->copyEraseAlpha[0];
}

void func_8080595C(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
    s16 i;
    s16 yPosStep;

    for (i = 0; i < 5; i++) {
        yPosStep = ABS(this->buttonsPosY[i] - D_80812480[i]) / this->actionTimer;

        if (this->buttonsPosY[i] >= D_80812480[i]) {
            this->buttonsPosY[i] -= yPosStep;
        } else {
            this->buttonsPosY[i] += yPosStep;
        }
    }

    this->copyEraseAlpha[0] -= 50;
    this->copyEraseAlpha[1] -= 50;
    this->optionButtonAlpha -= 50;
    this->confirmButtonAlpha[BTN_CONFIRM_QUIT] += 25;

    if (this->copyEraseAlpha[0] <= 0) {
        this->copyEraseAlpha[0] = this->copyEraseAlpha[1] = this->optionButtonAlpha = 0;
    }

    this->titleAlpha[0] -= 31;
    this->titleAlpha[1] += 31;
    this->actionTimer--;

    if (this->actionTimer == 0) {
        this->highlightColor[3] = 70;
        this->highlightFlashDir = 1;
        XREG(35) = XREG(36);
        this->copyEraseAlpha[0] = this->copyEraseAlpha[1] = this->optionButtonAlpha = 0;
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
    s16 yPosStep;

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

    yPosStep = ABS(this->buttonsPosY[this->buttonIndex] - D_808124AC[this->buttonIndex]) / this->actionTimer;

    if (this->buttonsPosY[this->buttonIndex] >= D_808124AC[this->buttonIndex]) {
        this->buttonsPosY[this->buttonIndex] -= yPosStep;
    } else {
        this->buttonsPosY[this->buttonIndex] += yPosStep;
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

        this->buttonsPosY[this->buttonIndex] = D_808124AC[this->buttonIndex];
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
    s16 yPosStep;

    yPosStep = ABS(this->buttonsPosY[this->buttonIndex] - D_80812480[this->buttonIndex]) / this->actionTimer;

    if (this->buttonsPosY[this->buttonIndex] >= D_80812480[this->buttonIndex]) {
        this->buttonsPosY[this->buttonIndex] -= yPosStep;
    } else {
        this->buttonsPosY[this->buttonIndex] += yPosStep;
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
        this->buttonsPosY[this->buttonIndex] = D_80812480[this->buttonIndex];
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
        this->buttonsPosY[3] = 0;
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
    s16 yPosStep;

    for (i = 0; i < 5; i++) {
        yPosStep = ABS(this->buttonsPosY[i]) / this->actionTimer;

        if (this->buttonsPosY[i] >= 0) {
            this->buttonsPosY[i] -= yPosStep;
        } else {
            this->buttonsPosY[i] += yPosStep;
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
        this->copyEraseAlpha[0] = 200;
        this->confirmButtonAlpha[0] = this->confirmButtonAlpha[1] = 0;
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->configMode = 2;
    }

    this->optionButtonAlpha = this->copyEraseAlpha[1] = this->copyEraseAlpha[0];
}

void func_80806C20(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
    s16 i;
    s16 yPosStep;

    for (i = 0; i < 5; i++) {
        yPosStep = ABS(this->buttonsPosY[i]) / this->actionTimer;

        if (this->buttonsPosY[i] >= 0) {
            this->buttonsPosY[i] -= yPosStep;
        } else {
            this->buttonsPosY[i] += yPosStep;
        }
    }

    this->copyEraseAlpha[0] += 25;
    this->copyEraseAlpha[1] += 25;
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
        this->copyEraseAlpha[0] = 200;
        this->confirmButtonAlpha[BTN_CONFIRM_QUIT] = 0;
        this->titleLabel = this->nextTitleLabel;
        this->titleAlpha[0] = 255;
        this->titleAlpha[1] = 0;
        this->configMode = 2;
    }

    this->optionButtonAlpha = this->copyEraseAlpha[1] = this->copyEraseAlpha[0];
}