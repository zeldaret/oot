#include <ultra64.h>
#include <global.h>
#include <vt.h>
#include <alloca.h>

s16 D_80812480[5] = { 
    0xFFD0, 0xFFD0, 0xFFD0, 0xFFE8, 0xFFE8 
};

s16 D_8081248C[3][3] = { 
    {0x0000, 0xFFD0, 0xFFD0},
    {0xFFC0, 0x0010, 0xFFD0},
    {0xFFC0, 0xFFC0, 0x0020},
};

s16 D_80812724 = 0x00FF;

u32 D_80812728[5][2] = {
    {0xE7000000, 0x00000000},
    {0xD9C0F9FA, 0x00000000}, 
    {0xEF802C30, 0x00504340}, 
    {0xFCFFFFFF, 0xFFFDF6FB}, 
    {0xDF000000, 0x00000000}
};

s16 D_80812750[5] = {
    0x0024, 0x0024, 0x0024, 0x0024, 0x0018
};

s16 D_8081275C[2][3] = {
    {0x0064, 0x0096, 0x00FF}, 
    {0x0064, 0x0064, 0x0064}
};

s16 D_80812818[4] = {
    0x001A, 0x000A, 0x000A, 0x000A
};

s16 D_80812820[4] = {
    0x0020, 0x000C, 0x000C, 0x000C
};

s16 D_80812828[4] = {
    0x0010, 0x000C, 0x000C, 0x000C
};

s16 D_80812830[6] = {
    0x0040, 0x0054, 0x0068, 0x0274, 0x0278, 0x027C
};

s16 D_8081283C[4] = {
    0x0040, 0x0054, 0x0068, 0x0278
};

s16 D_80812844[4] = {
    0x0274, 0x0278
};

s16 D_80812848[2] = {
    0x0274,0x0278
};

 u16 D_8081284C[3] = {
    0x007C, 0x0124, 0x01CC
};

 s32 D_80812854[9] = {
    0x0101C880, 0x0101CC80, 0x0101D080, 
    0x01000180, 0x01000280, 0x01000380,
    0x01000480, 0x01000580, 0x01000680
};

 s16 D_80812878[9] = {
    0x00FF, 0x00FF, 0x00FF, 0x0000, 0x00FF, 
    0x0000, 0x00FF, 0x00C8, 0x00C8
};

 s16 D_8081288C[9] = {
    0x00FF, 0x00FF, 0x00FF, 0x00FF, 0x003C, 
    0x0064, 0x0082, 0x0032, 0x00C8
};

 s16 D_808128A0[9] = {
    0x00FF, 0x00FF, 0x00FF, 0x0000, 0x0000, 
    0x00FF, 0x0000, 0x00FF, 0x0000
};

 s16 D_808128B4[9] = {
    0x0012, 0x0013, 0x0014, 0x0000, 0x0001, 
    0x0002, 0x0003, 0x0004, 0x0005
};

 s16 D_808128C8[2][3] = {
    {0x00FF, 0x00FF, 0x00FF},
    {0x0064, 0x0064, 0x0064}
};

 s32 D_808128D4[2] = {
    0x02000400, 0x02000900
};

 s16 D_808128DC[2][3] = {
    {0x00FF, 0x0046, 0x0032}, 
    {0x00C8, 0x0000, 0x0000}
};

 s16 D_808128E8[2][3] = {
    {0x0032, 0x0028, 0x003C},
    {0x00FF, 0x00FF, 0x00FF}
};

 s32 D_808128F4[5] = {
    0x01016380, 0x01017340, 0x01018300, 0x010192C0, 0x0101A280
};

 s32 D_80812908[3][9] = {
    {0x0102AC80, 0x0102B480, 0x01024C80, 0x01025480, 0x01025C80, 0x01026480, 0x0102DC80, 0x0102E480, 0x0102EC80}, 
    {0x0102BC80, 0x0102C480, 0x01026C80, 0x01027480, 0x01027C80, 0x01028480, 0x0102F480, 0x0102FC80, 0x01030480}, 
    {0x0102CC80, 0x0102D480, 0x01028C80, 0x01029480, 0x01029C80, 0x0102A480, 0x01030C80, 0x01031480, 0x01031C80}
};

 s32 D_80812974[3][5] = {
    {0x0101D480, 0x0101DC80, 0x0101E480, 0x0101EC80, 0x0101F480}, 
    {0x0101FC80, 0x01020480, 0x01020C80, 0x01021480, 0x01021C80}, 
    {0x01022480, 0x01022C80, 0x01023480, 0x01023C80, 0x01024480}
};

 s32 D_808129B0[3][3] = {
    {0x01037200, 0x01037A00, 0x01038200}, 
    {0x01038A00, 0x01039200, 0x01039A00},
    {0x0103A200, 0x0103AA00, 0x0103B200}
};

 s32 D_808129D4[3][4] = {
    {0x01035A00, 0x0103D200, 0x0103BA00, 0x0103EA00}, 
    {0x01036200, 0x0103DA00, 0x0103C200, 0x0103F200},
    {0x01036A00, 0x0103E200, 0x0103CA00, 0x0103FA00}
};

 s32 D_80812A04[3] = {
    0x01045E00, 0x01046600, 0x01045E00
};

s16 D_80812A10[3] = {
    0x0000, 0x0010, 0x0020
};

void func_8080FE2C(FileChooseContext*);
void func_8080FF98(FileChooseContext*);
void func_8081009C(FileChooseContext*);
void func_8081017C(FileChooseContext*);
void func_80810354(FileChooseContext*);
void func_80810440(FileChooseContext*);
void func_80810698(FileChooseContext*);
void func_808106F4(FileChooseContext*);

void (*D_80812A18[8])(FileChooseContext*) = {
    func_8080FE2C, func_8080FF98, func_8081009C,
    func_8081017C, func_80810354, func_80810440,
    func_80810698, func_808106F4
};

void func_8080B224(FileChooseContext*);
void func_8080F560(FileChooseContext*);
void func_808109B8(FileChooseContext*);

void (*D_80812A38[3])(FileChooseContext*) = {
    func_8080B224, func_8080F560, func_808109B8
};

void func_8080B1A8(FileChooseContext*);
void func_8080C2F4(FileChooseContext*);
void func_8081097C(FileChooseContext*);

void (*D_80812A44[3])(FileChooseContext*) = {
    func_8080B1A8, func_8080C2F4, func_8081097C
};

u32 D_80812A50[3] = {
    0x01033F00, 0x01034800, 0x01035100
};


#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80803D40.s")
#if 0

void func_80803D40(FileChooseContext* this) {
    s16 temp_a2_2;
    s16 i;

    for (i = 0; i < 5; i++) {
        temp_a2_2 = ((this->buttonsFile[i] - D_80812480[i] >= 0) ? 
                        (this->buttonsFile[i] - D_80812480[i]) : 
                       -(this->buttonsFile[i] - D_80812480[i])) 
                    / this->actionTimer;

        if (this->buttonsFile[i] >= D_80812480[i]) {
            this->buttonsFile[i] = this->buttonsFile[i] - temp_a2_2;
        } else {
            this->buttonsFile[i] = this->buttonsFile[i] + temp_a2_2;
        }
    }
    
    this->buttonCopyEraseA[0] -= 0x19;
    this->buttonCopyEraseA[1] -= 0x19;
    this->buttonOptionsA -= 0x19;
    this->buttonYesQuitA[1] += 0x19;

    this->fileSelectOpenTitleA[0] -= 0x1F;
    this->fileSelectOpenTitleA[1] += 0x1F;
    
    this->actionTimer -= 1;
    if (this->actionTimer == 0) {
        this->actionTimer = 8;

        this->buttonCopyEraseA[0] = 
        this->buttonCopyEraseA[1] = this->buttonOptionsA = 0;
        
        this->buttonYesQuitA[1] = 0xC8;
        this->titleTexIdx = this->nextTitleTexIdx;
        
        this->fileSelectOpenTitleA[0] = 0xFF;
        this->fileSelectOpenTitleA[1] = 0;
        this->btnIdx = 3;
        this->fileSelectStateIdx += 1;
    }
}
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80803ED8.s")
// OK

void func_80803ED8(FileChooseContext* this) {
    Input* controller1;
    u8* temp_v0;
    u32 pad;

    controller1 = &this->state.input[0];
    if ((this->btnIdx == 3 &&
        controller1->press.in.button & (A_BUTTON | START_BUTTON)) || 
        CHECK_PAD(controller1->press, B_BUTTON)) {
            this->actionTimer = 8;
            this->btnIdx = 3;
            this->nextTitleTexIdx = 0;
            this->fileSelectStateIdx = 0x13;
            this->fileWarningTexIdx = -1;
            Audio_PlaySoundGeneral(0x483C, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
    }

    if (controller1->press.in.button & (A_BUTTON | START_BUTTON)) {
        if (!IS_INVALID_SAVE(this->sram.read_buff + D_8012A4E0[this->btnIdx])) {
                this->actionTimer = 8;
                this->selectedFileIdx = this->btnIdx;
                this->fileSelectStateIdx = 5;
                this->nextTitleTexIdx = 3;
                Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                return;
        }
        Audio_PlaySoundGeneral(0x483D, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    }

    if ((this->stickY >= 0 ? this->stickY : -this->stickY) >= 0x1E) {
        Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        if (this->stickY >= 0x1E) {
            this->btnIdx -= 1;
            if (this->btnIdx < 0) {
                this->btnIdx = 3;
            }
        } else {
            this->btnIdx += 1;
            if (this->btnIdx >= 4) {
                this->btnIdx = 0;
            }
        }
    }

    if (this->btnIdx != 3) {
        temp_v0 = &((u8*)this->sram.read_buff)[D_8012A4E0[this->btnIdx]];
        if (IS_INVALID_SAVE(this->sram.read_buff + D_8012A4E0[this->btnIdx])) {
            this->fileWarningTexIdx = 3;
            this->warningFileIdx = this->btnIdx;
            this->fileEmptyTextA = 0xFF;
        } else {
            this->fileWarningTexIdx = -1;
        }
    }
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80804248.s")
#if 0
void func_80804248(FileChooseContext* this) {
    s16 temp_a1_2;
    s16 i;

    for (i = 0; i < 3; i++) {
        temp_a1_2 = ABS(this->buttonsFile[i] - D_8081248C[this->btnIdx][i]) / this->actionTimer;
        if (D_8081248C[this->btnIdx][i] >= this->buttonsFile[i]) {
            this->buttonsFile[i] += temp_a1_2;
        } else {
            this->buttonsFile[i] -= temp_a1_2;
        }
    }

    this->fileSelectOpenTitleA[0] -= 0x1F;
    this->fileSelectOpenTitleA[1] += 0x1F;
    this->fileNameBoxesA[this->btnIdx] -= 0x19;

    this->actionTimer -= 1;
    if (this->actionTimer == 0) {
        this->buttonsFile[this->btnIdx] = D_8081248C[this->btnIdx][this->btnIdx];
        this->titleTexIdx = this->nextTitleTexIdx;
        this->fileSelectOpenTitleA[0] = 0xFF;
        this->fileSelectOpenTitleA[1] = 0;
        this->actionTimer = 8;
        this->fileSelectStateIdx += 1;
    }
}
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808043D8.s")
// OK
void func_808043D8(FileChooseContext* this) {
    this->fileNameBoxesA[this->btnIdx] -= 0x19;
    this->fileInfoA[this->btnIdx] += 0x19;
    this->actionTimer -= 1;
    if (this->actionTimer == 0) {
        this->fileNameBoxesA[this->btnIdx] = 0;
        this->fileInfoA[this->btnIdx] = 0xC8;
        this->btnIdx = 3;
        this->actionTimer = 8;
        this->fileSelectStateIdx = 7;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808044A0.s")
// OK
void func_808044A0(FileChooseContext* this) {
    s32 pad;
    Input* controller1 = &this->state.input[0];
    s32 stickAbs;
    u8* sram;

    if (((this->btnIdx == 3) && CHECK_BTN_ALL(controller1->press, (A_BUTTON | START_BUTTON))) || 
        CHECK_PAD(controller1->press, B_BUTTON)) {
            this->btnIdx = this->selectedFileIdx;
            this->nextTitleTexIdx = 2;
            this->actionTimer = 8;
            this->fileSelectStateIdx = 8;
            Audio_PlaySoundGeneral(0x483C, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
    }

    if (CHECK_BTN_ALL(controller1->press, (A_BUTTON | START_BUTTON))) {
        if (IS_INVALID_SAVE(this->sram.read_buff + D_8012A4E0[this->btnIdx])) {
            this->copyDsFiletIdx = this->btnIdx;
            this->nextTitleTexIdx = 4;
            this->actionTimer = 8;
            this->fileSelectStateIdx = 10;
            Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
        }
        Audio_PlaySoundGeneral(0x483D, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    }

    stickAbs = ABS(this->stickY);
    if (stickAbs >= 30) {
        Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        if (this->stickY >= 30) {
            this->btnIdx -= 1;
            if ((this->btnIdx == this->selectedFileIdx)) {
                this->btnIdx -= 1;
                if (this->btnIdx < 0)
                    this->btnIdx = 3;
            } else {
                if (this->btnIdx < 0)
                    this->btnIdx = 3;
            }
        } else {
            this->btnIdx += 1;
            if (this->btnIdx >= 4) {
                this->btnIdx = 0;
            }
            if (this->btnIdx == this->selectedFileIdx) {
                this->btnIdx += 1;
            }
        }
    }

    if (this->btnIdx != 3) {
        if (!IS_INVALID_SAVE(this->sram.read_buff + D_8012A4E0[this->btnIdx])) {
            this->fileWarningTexIdx = 4;
            this->warningFileIdx = this->btnIdx;
            this->fileEmptyTextA = 0xFF;
        } else {
            this->fileWarningTexIdx = -1;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80804858.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80804924.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80804A50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80804C74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80804CD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80804ED8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080510C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808051C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80805318.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80805434.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80805524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80805824.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080595C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80805B2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80805EB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80806180.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080625C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80806444.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808064F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80806710.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808068F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808069B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80806C20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80806DB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80806F34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080723C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80807DCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80808000.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80808F84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80809038.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080960C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080969C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808099C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080AF30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080AF50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080AFD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B1A8.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B224.s")
void func_8080B224(FileChooseContext* this) {
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B22C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B394.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B40C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B494.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B52C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BE30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BE84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BEF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BF6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BFE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080C2F4.s")
