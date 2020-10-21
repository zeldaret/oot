#include "ultra64.h"
#include "global.h"

// clang-format off
#define SAVE_NEWF_OK(sramCtx, slotNum)                       \
    ((sramCtx->readBuff[gSramSlotOffsets[0][slotNum] + 0x1C] == 'Z') || \
     (sramCtx->readBuff[gSramSlotOffsets[0][slotNum] + 0x1D] == 'E') || \
     (sramCtx->readBuff[gSramSlotOffsets[0][slotNum] + 0x1E] == 'L') || \
     (sramCtx->readBuff[gSramSlotOffsets[0][slotNum] + 0x1F] == 'D') || \
     (sramCtx->readBuff[gSramSlotOffsets[0][slotNum] + 0x20] == 'A') || \
     (sramCtx->readBuff[gSramSlotOffsets[0][slotNum] + 0x21] == 'Z'))
// clang-format on

void func_80808000(FileChooseContext* this);

extern s16 D_80812724;
extern void (*gFileSelectDrawFuncs[])(FileChooseContext*);
extern void (*gFileSelectUpdateFuncs[])(FileChooseContext*);
extern void (*D_80812770[])(FileChooseContext*);
extern void (*D_80812A18[])(FileChooseContext*);
extern Gfx* D_80812A50[];
extern Gfx D_80812728[];
extern u8 D_80000002; // this is code in the very beginning of ram???
extern s16 D_80812814[];
extern Gfx D_01046F00[];
extern Gfx D_01047118[];
extern Gfx D_01047328[];

void func_8080AF50(FileChooseContext* this, f32 eyeX, f32 eyeY, f32 eyeZ) {
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

// update func for menuIndex 0
void func_8080B1A8(FileChooseContext* this) {
    if (this->menuIndex == 0) {
        this->menuIndex = 1;
        this->fileSelectStateIndex = 0;
        this->nextTitleTexIndex = 1;
        osSyncPrintf("Ｓｒａｍ Ｓｔａｒｔ─Ｌｏａｄ  》》》》》  ");
        Sram_VerifyAndLoadAllSaves(this, &this->sramCtx);
        osSyncPrintf("終了！！！\n");
    }
}

// draw func for menuIndex 0
void func_8080B224(FileChooseContext* this) {
}

void func_8080B22C(FileChooseContext* this) {
    SramContext* sramCtx = &this->sramCtx;
    s16 i;

    this->titleAlpha[0] += VREG(1);
    this->windowAlpha += VREG(2);

    for (i = 0; i < 3; i++) {
        this->fileButtonAlpha[i] = this->windowAlpha;
        if (SAVE_NEWF_OK(sramCtx, i)) {
            this->nameBoxAlpha[i] = this->nameAlpha[i] = this->windowAlpha;
            this->connectorAlpha[i] += VREG(1);
            if (this->connectorAlpha[i] >= 0xFF) {
                this->connectorAlpha[i] = 0xFF;
            }
        }
    }

    this->copyEraseAlpha[0] = this->copyEraseAlpha[1] = this->optionButtonAlpha = this->windowAlpha;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B394.s")

// update func for fileSelectStateIndex 0
void func_8080B40C(FileChooseContext* this) {
    func_8080B22C(this);
    D_80812724 -= 0x28;
    this->windowPosX -= 20;

    if (this->windowPosX <= -94) {
        this->windowPosX = -94;
        this->fileSelectStateIndex = 1;
        D_80812724 = 0;
    }
}

// update func for fileSelectStateIndex 1
void func_8080B494(FileChooseContext* this) {
    s32 pad;

    this->bottomTextAlpha += VREG(1);
    func_8080B22C(this);

    if (this->titleAlpha[0] >= 255) {
        this->titleAlpha[0] = 255;
        this->bottomTextAlpha = 255;
        this->windowAlpha = 200;
        this->fileSelectStateIndex = 2;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080B52C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BE28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BE30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BE84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BEF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BF6C.s")

// 803F9644
void func_8080BFE4(GameState* thisx);
#ifdef NON_MATCHING
void func_8080BFE4(GameState* thisx) {
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
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080BFE4.s")
#endif

// update func for menuIndex 1
void func_8080C2F4(FileChooseContext* this) {
    D_80812770[this->fileSelectStateIndex](this);
}

void func_8080C330(FileChooseContext* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080C330.s")

void func_8080C60C(FileChooseContext* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080C60C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080D8CC.s")

void func_8080E074(FileChooseContext* this);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080E074.s")

// draw func for menuIndex 1
void func_8080F560(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    f32 skyboxX;
    f32 skyboxY;
    f32 skyboxZ;

    OPEN_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2218);
    gDPPipeSync(oGfxCtx->polyOpa.p++);

    skyboxX = (1000.0f * Math_Coss(ZREG(11))) - (1000.0f * Math_Sins(ZREG(11)));
    skyboxY = ZREG(13);
    skyboxZ = (1000.0f * Math_Sins(ZREG(11))) + (1000.0f * Math_Coss(ZREG(11)));

    func_8080AF50(this, skyboxX, skyboxY, skyboxZ);
    SkyboxDraw_Draw(&this->skyboxCtx, this->state.gfxCtx, 1, this->envCtx.unk_13, skyboxX, skyboxY, skyboxZ);
    gDPSetTextureLUT(oGfxCtx->polyOpa.p++, G_TT_NONE);
    ZREG(11) += ZREG(10);
    func_8006FC88(1, &this->envCtx, &this->skyboxCtx);
    gDPPipeSync(oGfxCtx->polyOpa.p++);
    func_800949A8(this->state.gfxCtx);
    func_8080AF50(this, 0.0f, 0.0f, 64.0f);
    func_8080C330(this);
    func_8080C60C(this);

    if ((this->fileSelectStateIndex != 0x21) && (this->fileSelectStateIndex != 0x22)) {
        gDPPipeSync(oGfxCtx->polyOpa.p++);
        gDPSetCombineMode(oGfxCtx->polyOpa.p++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                        this->windowAlpha);
        gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0, 0, 0, 0);

        Matrix_Translate(0.0f, 0.0f, -93.6f, MTXMODE_NEW);
        Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);

        if (this->windowRot != 0) {
            Matrix_RotateX(this->windowRot / 100.0f, 1);
        }

        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(this->state.gfxCtx, "../z_file_choose.c", 2282),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPVertex(oGfxCtx->polyOpa.p++, &this->allocVtx1[0], 32, 0);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_01046F00);

        gSPVertex(oGfxCtx->polyOpa.p++, &this->allocVtx1[32], 32, 0);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_01047118);

        gSPVertex(oGfxCtx->polyOpa.p++, &this->allocVtx1[64], 16, 0);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_01047328);

        gDPPipeSync(oGfxCtx->polyOpa.p++);

        func_8080E074(this);
    }

    if ((this->fileSelectStateIndex >= 0x20) && (this->fileSelectStateIndex < 0x24)) {
        gDPPipeSync(oGfxCtx->polyOpa.p++);
        gDPSetCombineMode(oGfxCtx->polyOpa.p++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                        this->windowAlpha);
        gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0, 0, 0, 0);

        Matrix_Translate(0.0f, 0.0f, -93.6f, MTXMODE_NEW);
        Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
        Matrix_RotateX((this->windowRot - 314.0f) / 100.0f, 1);
        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(this->state.gfxCtx, "../z_file_choose.c", 2316),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPVertex(oGfxCtx->polyOpa.p++, &this->allocVtx1[0], 32, 0);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_01046F00);

        gSPVertex(oGfxCtx->polyOpa.p++, &this->allocVtx1[32], 32, 0);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_01047118);

        gSPVertex(oGfxCtx->polyOpa.p++, &this->allocVtx1[64], 16, 0);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_01047328);

        gDPPipeSync(oGfxCtx->polyOpa.p++);

        func_80808000(this);
    }

    if ((this->fileSelectStateIndex >= 0x24) && (this->fileSelectStateIndex < 0x28)) {
        gDPPipeSync(oGfxCtx->polyOpa.p++);
        gDPSetCombineMode(oGfxCtx->polyOpa.p++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                        this->windowAlpha);
        gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0, 0, 0, 0);

        Matrix_Translate(0.0f, 0.0f, -93.6f, MTXMODE_NEW);
        Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
        Matrix_RotateX((this->windowRot - 314.0f) / 100.0f, MTXMODE_APPLY);
        gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(this->state.gfxCtx, "../z_file_choose.c", 2337),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

        gSPVertex(oGfxCtx->polyOpa.p++, &this->allocVtx1[0], 32, 0);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_01046F00);

        gSPVertex(oGfxCtx->polyOpa.p++, &this->allocVtx1[32], 32, 0);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_01047118);

        gSPVertex(oGfxCtx->polyOpa.p++, &this->allocVtx1[64], 16, 0);
        gSPDisplayList(oGfxCtx->polyOpa.p++, D_01047328);

        gDPPipeSync(oGfxCtx->polyOpa.p++);

        func_8080AF30(this);
    }

    gDPPipeSync(oGfxCtx->polyOpa.p++);
    func_8080AF50(this, 0.0f, 0.0f, 64.0f);

    CLOSE_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2352);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080FE2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080FF98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8081009C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8081017C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80810354.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80810440.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80810698.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808106F4.s")

// update func for menuIndex 2
void func_8081097C(FileChooseContext* this) {
    D_80812A18[this->openFileStateIndex](this);
}

// draw func for menuIndex 2
void func_808109B8(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    f32 eyeX;
    f32 eyeY;
    f32 eyeZ;

    OPEN_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2753);

    gDPPipeSync(oGfxCtx->polyOpa.p++);

    eyeX = (1000.0f * Math_Coss(ZREG(11))) - (1000.0f * Math_Sins(ZREG(11)));
    eyeY = ZREG(13);
    eyeZ = (1000.0f * Math_Sins(ZREG(11))) + (1000.0f * Math_Coss(ZREG(11)));

    func_8080AF50(this, eyeX, eyeY, eyeZ);
    SkyboxDraw_Draw(&this->skyboxCtx, this->state.gfxCtx, 1, this->envCtx.unk_13, eyeX, eyeY, eyeZ);
    gDPSetTextureLUT(oGfxCtx->polyOpa.p++, G_TT_NONE);
    ZREG(11) += ZREG(10);
    func_8006FC88(1, &this->envCtx, &this->skyboxCtx);
    gDPPipeSync(oGfxCtx->polyOpa.p++);
    func_800949A8(this->state.gfxCtx);
    func_8080AF50(this, 0.0f, 0.0f, 64.0f);
    func_8080C330(this);
    func_8080C60C(this);

    gDPSetCombineMode(oGfxCtx->polyOpa.p++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, this->windowColor[0], this->windowColor[1], this->windowColor[2],
                    this->windowAlpha);
    gDPSetEnvColor(oGfxCtx->polyOpa.p++, 0, 0, 0, 0);

    Matrix_Translate(0.0f, 0.0f, -93.6f, MTXMODE_NEW);
    Matrix_Scale(0.78f, 0.78f, 0.78f, MTXMODE_APPLY);
    Matrix_RotateX(this->windowRot / 100.0f, MTXMODE_APPLY);
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(this->state.gfxCtx, "../z_file_choose.c", 2810),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPVertex(oGfxCtx->polyOpa.p++, &this->allocVtx1[0], 32, 0);
    gSPDisplayList(oGfxCtx->polyOpa.p++, D_01046F00);

    gSPVertex(oGfxCtx->polyOpa.p++, &this->allocVtx1[32], 32, 0);
    gSPDisplayList(oGfxCtx->polyOpa.p++, D_01047118);

    gSPVertex(oGfxCtx->polyOpa.p++, &this->allocVtx1[64], 16, 0);
    gSPDisplayList(oGfxCtx->polyOpa.p++, D_01047328);

    func_8080E074(this);
    gDPPipeSync(oGfxCtx->polyOpa.p++);
    func_8080AF50(this, 0.0f, 0.0f, 64.0f);

    CLOSE_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2834);
}

void FileChoose_Main(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    Input* controller1 = &this->state.input[0];

    OPEN_DISPS(this->state.gfxCtx, "../z_file_choose.c", 2898);

    this->n64ddFlag = 0;

    gSPSegment(oGfxCtx->polyOpa.p++, 0x00, NULL);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x01, this->staticSegment);
    gSPSegment(oGfxCtx->polyOpa.p++, 0x02, this->parameterSegment);

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

    func_8080BFE4(this);
    gFileSelectUpdateFuncs[this->menuIndex](this);
    gFileSelectDrawFuncs[this->menuIndex](this);

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

    gSaveContext.language = sramCtx->readBuff[SRAM_HEADER_LANGUAGE];
    if (gSaveContext.language > LANGUAGE_PAL_FR) {
        sramCtx->readBuff[SRAM_HEADER_LANGUAGE] = gSaveContext.language = LANGUAGE_PAL_ENG;
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
