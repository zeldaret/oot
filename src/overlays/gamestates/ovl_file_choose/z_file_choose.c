#include "ultra64.h"
#include "global.h"

#define SRAM_SIZE 0x8000
extern s16 D_80812724;
extern void (*D_80812A38[3])(FileChooseContext*);
extern void (*D_80812A44[3])(FileChooseContext*);
extern Gfx* D_80812A50[];
extern Gfx D_80812728[];

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080AF50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080AFD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B1A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B22C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B394.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B40C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B494.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B52C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BE28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BE30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BE84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BEF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BF6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BFE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080C2F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080C330.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080C60C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080D8CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080E074.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080F560.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080FE2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080FF98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8081009C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8081017C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80810354.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80810440.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80810698.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808106F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8081097C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808109B8.s")

void FileChoose_Main(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    Input* controller1 = &this->state.input[0];

    OPEN_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2898);

    this->n64ddFlag = 0;

    gSPSegment(oGfxCtx->polyOpa.p++, 0x00, NULL);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x01, this->staticSegment);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x02, this->parameterSegment);

    func_80095248(this->state.gfxCtx, 0, 0, 0);

    this->inputX = controller1->rel.stick_x;
    this->inputY = controller1->rel.stick_y;

    if (this->inputX < -30) {
        if (this->xIndexOffset == -1) {
            this->inputTimerX -= 1;
            if (this->inputTimerX < 0) {
                this->inputTimerX = 2;
            } else {
                this->inputX = 0;
            }
        } else {
            this->inputTimerX = 10;
            this->xIndexOffset = -1;
        }
    } else {
        if (this->inputX >= 31) {
            if (this->xIndexOffset == 1) {
                this->inputTimerX -= 1;
                if (this->inputTimerX < 0) {
                    this->inputTimerX = 2;
                } else {
                    this->inputX = 0;
                }
            } else {
                this->inputTimerX = 10;
                this->xIndexOffset = 1;
            }
        } else {
            this->xIndexOffset = 0;
        }
    }

    if (this->inputY < -30) {
        if (this->yIndexOffset == -1) {
            this->inputTimerY -= 1;
            if (this->inputTimerY < 0) {
                this->inputTimerY = 2;
            } else {
                this->inputY = 0;
            }
        } else {
            this->inputTimerY = 10;
            this->yIndexOffset = -1;
        }
    } else {
        if (this->inputY >= 31) {
            if (this->yIndexOffset == 1) {
                this->inputTimerY -= 1;
                if (this->inputTimerY < 0) {
                    this->inputTimerY = 2;
                } else {
                    this->inputY = 0;
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
    func_8080BFE4(this);
    D_80812A44[this->menuIndex](this);
    D_80812A38[this->menuIndex](this);

    if ((this->fileSelectStateIndex < 0x24) || (this->fileSelectStateIndex >= 0x28)) {
        func_800944C4(this->state.gfxCtx);

        gDPSetCombineLERP(oGfxCtx->polyOpa.p++, PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0,
                          PRIMITIVE, ENVIRONMENT, TEXEL0, ENVIRONMENT, TEXEL0, 0, PRIMITIVE, 0);
        gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 0x64, 0xFF, 0xFF, this->bottomTextAlpha);
        gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0x00, 0x00, 0x00, 0x00);
        gDPLoadTextureBlock(oGfxCtx->polyOpa.p++, D_80812A50[gSaveContext.language], G_IM_FMT_IA, G_IM_SIZ_8b, 0x90,
                            0x10, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK,
                            G_TX_NOLOD, G_TX_NOLOD);
        gSPTextureRectangle(oGfxCtx->polyOpa.p++, 0x0168, 0x0330, 0x03A8, 0x0370, G_TX_RENDERTILE, 0, 0, 0x0400,
                            0x0400);
    }

    gDPPipeSync(oGfxCtx->polyOpa.p++);
    gSPDisplayList(oGfxCtx->polyOpa.p++, D_80812728);
    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 0, 0, 0, D_80812724);
    gDPFillRectangle(oGfxCtx->polyOpa.p++, 0, 0, gScreenWidth - 1, gScreenHeight - 1);

    CLOSE_DISPS(this->state.gfxCtx, "../z_file_choose.c", 3035);
}

void FileChoose_InitContext(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    EnvironmentContext* envCtx = &this->envCtx;
    SramContext* sramCtx = &this->sramCtx;

    Sram_Alloc(&this->state, sramCtx);

    ZREG(7) = 0x20;
    ZREG(8) = 0x16;
    ZREG(9) = 0x14;
    ZREG(10) = -0xA;
    ZREG(11) = 0;
    ZREG(12) = 0x3E8;
    ZREG(13) = -0x2BC;
    ZREG(14) = 0xA4;
    ZREG(15) = 0x68;
    ZREG(16) = 0xA0;
    ZREG(17) = 0x64;
    ZREG(18) = 0xA2;
    ZREG(19) = 0x98;
    ZREG(20) = 0xD6;

    XREG(13) = 0x244;
    XREG(14) = 0x190;
    XREG(35) = 0x14;
    XREG(36) = 0x14;
    XREG(37) = 0x14;
    XREG(43) = 8;
    XREG(44) = -0x4E;
    XREG(45) = 0;
    XREG(46) = 0;
    XREG(47) = 0;
    XREG(48) = 0;
    XREG(49) = 3;
    XREG(50) = 8;
    XREG(51) = 8;
    XREG(52) = 0xA;
    XREG(73) = 0;

    VREG(0) = 0xE;
    VREG(1) = 5;
    VREG(2) = 4;
    VREG(4) = 1;
    VREG(5) = 6;
    VREG(6) = 2;
    VREG(7) = 6;
    VREG(8) = 0x50;

    D_80812724 = 0xFF;

    VREG(10) = 0xA;
    VREG(11) = 0x1E;
    VREG(12) = -0x64;
    VREG(13) = -0x55;
    VREG(14) = 4;
    VREG(16) = 0x19;
    VREG(17) = 1;
    VREG(18) = 1;
    VREG(20) = 0x5C;
    VREG(21) = 0xAB;
    VREG(22) = 0xB;
    VREG(23) = 0xA;
    VREG(24) = 0x1A;
    VREG(25) = 2;
    VREG(26) = 1;
    VREG(27) = 0;
    VREG(28) = 0;
    VREG(29) = 0xA0;
    VREG(30) = 0x40;
    VREG(31) = 0x9A;
    VREG(32) = 0x98;
    VREG(33) = 0x6A;

    WREG(38) = 0x10;
    WREG(39) = 9;
    WREG(40) = 0xA;
    WREG(41) = 0xE;
    WREG(42) = 0xB;
    WREG(43) = 0xC;

    this->menuIndex = 0;

    this->buttonIndex = this->openFileStateIndex = this->selectedFileIndex = this->copyDestFileIndex =
        this->openChoiceIndex = 0;

    this->unk_1CAAE[0] = 2;
    this->unk_1CAAE[1] = 3;
    this->titleTexIndex = 0;
    this->nextTitleTexIndex = 1;
    this->highlightFlashDir = 1;
    this->unk_1CAAC = 0xC;
    this->highlightColor[0] = 155;
    this->highlightColor[1] = 255;
    this->highlightColor[2] = 255;
    this->highlightColor[3] = 70;
    this->fileSelectStateIndex = 0;
    this->windowRot = 0.0f;
    this->xIndexOffset = this->inputTimerX = 0;
    this->yIndexOffset = this->inputTimerY = 0;
    this->kbdX = this->kbdY = this->charIndex = 0;
    this->kbdButtonIndex = 0x63;

    this->windowColor[0] = 100;
    this->windowColor[1] = 150;
    this->windowColor[2] = 255;

    this->windowAlpha = this->titleAlpha[0] = this->titleAlpha[1] = this->fileButtonAlpha[0] =
        this->fileButtonAlpha[1] = this->fileButtonAlpha[2] = this->nameBoxAlpha[0] = this->nameBoxAlpha[1] =
            this->nameBoxAlpha[2] = this->nameAlpha[0] = this->nameAlpha[1] = this->nameAlpha[2] =
                this->connectorAlpha[0] = this->connectorAlpha[1] = this->connectorAlpha[2] = this->fileInfoAlpha[0] =
                    this->fileInfoAlpha[1] = this->fileInfoAlpha[2] = this->copyEraseAlpha[0] =
                        this->copyEraseAlpha[1] = this->yesQuitAlpha[0] = this->yesQuitAlpha[1] =
                            this->optionButtonAlpha = this->nameEntryBoxAlpha = this->bottomTextAlpha =
                                this->emptyFileTextAlpha = 0;

    this->windowPosX = 6;
    this->actionTimer = 8;
    this->fileWarningTexIndex = -1;

    this->warningFileIndex = this->buttonsPosY[0] = this->buttonsPosY[1] = this->buttonsPosY[2] = this->buttonsPosY[3] =
        this->buttonsPosY[4] = this->buttonsPosY[5] = this->fileNamesY[0] = this->fileNamesY[1] = this->fileNamesY[2] =
            0;

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

    gSaveContext.language = sramCtx->readBuff[2];
    if (gSaveContext.language >= 3) {
        sramCtx->readBuff[2] = gSaveContext.language = 0;
    }
}

void FileChoose_Destroy(GameState* thisx) {
}

void FileChoose_Init(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    u32 size = (u32)_title_staticSegmentRomEnd - (u32)_title_staticSegmentRomStart;
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
    func_8006EF10(this->font);
    Audio_SetBGM(0xF000000A);
    func_800F5E18(0, 0x57, 0, 7, 1);
}
