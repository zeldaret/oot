#include "file_choose.h"

s32 D_808124C0[] = { 0x00020003, 0x00020002, 0x00020002, 0x00020002, 0x00020002, 0x00010002, 0x00000001,
                     0x00010002, 0x00010001, 0x00040002, 0x00020002, 0x00010001, 0x00000002, 0x00000001,
                     0x00010001, 0x00010001, 0x00000001, 0x00010001, 0x00020002, 0x00020002, 0x00020003,
                     0x00020002, 0x00040003, 0x00020004, 0x00010002, 0x00020001, 0x00010002, 0x00020003,
                     0x00020002, 0x00000002, 0x00020002, 0x00000003, 0x00010000 };
s32 D_80812544[] = { 0x00010002, 0x00000001, 0x00010002, 0x00010001, 0x00040002, 0x00020002, 0x00010001, 0x00000002,
                     0x00000001, 0x00010001, 0x00010001, 0x00000001, 0x00010001, 0x00020002, 0x00020002, 0x00020003,
                     0x00020002, 0x00040003, 0x00020004, 0x00010002, 0x00020001, 0x00010002, 0x00020003, 0x00020002,
                     0x00000002, 0x00020002, 0x00030002, 0x00020002, 0x00020002, 0x00020002, 0x00020002, 0x00010003 };
s32 D_808125C4[] = { 0x01033480, 0x01033480, 0x01033B80 };
s32 D_808125D0[] = { 0x01015280, 0x01014200, 0x01015280, 0x01014780, 0x01015280, 0x01014D00 };
s32 D_808125E8[] = { 0x001C002C };
s32 D_808125EC[] = { 0xFFE2FFF0, 0xFFFA0004, 0x000E0018, 0x0022002C, 0x0036FFF0, 0xFFF00000 };
s32 D_80812604[] = { 0x00480045, 0x00450045, 0x00450045, 0x00450045, 0x00450045, 0x00450000 };
s32 D_8081261C[] = { 0x01032480, 0x01032C80, 0x01032480, 0x00800080, 0x00800010, 0x01041100, 0x01041100,
                     0x01041500, 0x00400040, 0x00400010, 0x01041F00, 0x01042300, 0x01042C00, 0x00400090,
                     0x00400010, 0x01044600, 0x01044E00, 0x01045600, 0x00800080, 0x00800010 };
s32 D_8081266C[] = { 0x01041900, 0x01041900, 0x01041C00, 0x00300030, 0x00300010, 0x01040E00, 0x01040E00, 0x01040E00,
                     0x00300030, 0x00300010, 0x01040500, 0x01040800, 0x01040B00, 0x00300030, 0x00300010, 0x01040200,
                     0x01040200, 0x01040200, 0x00300030, 0x00300010, 0x01043000, 0x01043300, 0x01043800, 0x00300050,
                     0x00300010, 0x01043B00, 0x01043E00, 0x01044300, 0x00300050, 0x00300010 };
s32 D_808126E4[] = { 0x00FF0000 };
s32 D_808126E8[] = { 0x00FF0000 };
s32 D_808126EC[] = { 0x00FF0000 };
s32 D_808126F0[] = { 0x00000000 };
s32 D_808126F4[] = { 0x00000000 };
s32 D_808126F8[] = { 0x00000000 };
s32 D_808126FC[] = { 0x00010000 };
s32 D_80812700[] = { 0x00140000 };
s32 D_80812704[] = { 0x00FF00FF, 0x00FF0000, 0x00FF00FF };
s32 D_80812710[] = { 0x00000000, 0x00000000, 0x00960096, 0x00000000, 0x006A0000 };

s16 gScreenFillAlpha = 255;

s32 D_80812728[] = { 0xE7000000, 0x00000000, 0xD9C0F9FA, 0x00000000, 0xEF802C30,
                     0x00504340, 0xFCFFFFFF, 0xFFFDF6FB, 0xDF000000, 0x00000000 };
s32 D_80812750[] = { 0x00240024, 0x00240024, 0x00180000 };
s32 D_8081275C[] = { 0x00640096, 0x00FF0064, 0x00640064 };

u8 gEmptyName[] = { 0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E, 0x3E };

void* gConfigModeUpdateFuncs[] = {
    FileChoose_StartFadeIn,
    FileChoose_FinishFadeIn,
    FileChoose_UpdateMainMenu,
    FileCopy_SetupSourceSelect,
    FileCopy_SelectSource,
    func_80804248,
    func_808043D8,
    FileChoose_SelectCopyDest,
    func_80804858,
    func_80804924,
    func_80804A50,
    func_80804C74,
    func_80804CD0,
    func_80804ED8,
    func_8080510C,
    func_808051C8,
    func_80805318,
    func_80805434,
    func_80805524,
    FileCopy_SetupMainMenu,
    func_8080595C,
    func_80805B2C,
    func_80805EB8,
    func_80806180,
    func_8080625C,
    func_80806444,
    func_808064F4,
    func_80806710,
    func_808068F0,
    func_808069B4,
    func_80806C20,
    func_8080BE28,
    FileChoose_RotateToNameEntry,
    FileChoose_UpdateKeyboardCursor,
    FileChoose_StartNameEntry,
    FileChoose_RotateFromOptions,
    FileChoose_RotateToOptions,
    FileChoose_UpdateOptionsMenu,
    FileChoose_StartOptions,
    FileChoose_RotateFromOptions,
    func_8080BE30,
};
s16 D_80812814[] = { 0x0046, 0x00C8 }; // used for calculating alpha for the flashing cursor
s32 D_80812818[] = { 0x001A000A, 0x000A000A };
s32 D_80812820[] = { 0x0020000C, 0x000C000C };
s32 D_80812828[] = { 0x0010000C, 0x000C000C };
s32 D_80812830[] = { 0x00400054, 0x00680274, 0x0278027C };
s32 D_8081283C[] = { 0x00400054, 0x00680278 };
s32 D_80812844[] = { 0x02740278 };
s32 D_80812848[] = { 0x02740278 };
s32 D_8081284C[] = { 0x007C0124, 0x01CC0000 };
s32 D_80812854[] = { 0x0101C880, 0x0101CC80, 0x0101D080, 0x01000180, 0x01000280,
                     0x01000380, 0x01000480, 0x01000580, 0x01000680 };
s32 D_80812878[] = { 0x00FF00FF, 0x00FF0000, 0x00FF0000, 0x00FF00C8, 0x00C80000 };
s32 D_8081288C[] = { 0x00FF00FF, 0x00FF00FF, 0x003C0064, 0x00820032, 0x00C80000 };
s32 D_808128A0[] = { 0x00FF00FF, 0x00FF0000, 0x000000FF, 0x000000FF, 0x00000000 };
s32 D_808128B4[] = { 0x00120013, 0x00140000, 0x00010002, 0x00030004, 0x00050000 };
s32 D_808128C8[] = { 0x00FF00FF, 0x00FF0064, 0x00640064 };
s32 D_808128D4[] = { 0x02000400, 0x02000900 };
s32 D_808128DC[] = { 0x00FF0046, 0x003200C8, 0x00000000 };
s32 D_808128E8[] = { 0x00320028, 0x003C00FF, 0x00FF00FF };
s32 D_808128F4[] = { 0x01016380, 0x01017340, 0x01018300, 0x010192C0, 0x0101A280 };
s32 D_80812908[] = { 0x0102AC80, 0x0102B480, 0x01024C80, 0x01025480, 0x01025C80, 0x01026480, 0x0102DC80,
                     0x0102E480, 0x0102EC80, 0x0102BC80, 0x0102C480, 0x01026C80, 0x01027480, 0x01027C80,
                     0x01028480, 0x0102F480, 0x0102FC80, 0x01030480, 0x0102CC80, 0x0102D480, 0x01028C80,
                     0x01029480, 0x01029C80, 0x0102A480, 0x01030C80, 0x01031480, 0x01031C80 };
s32 D_80812974[] = { 0x0101D480, 0x0101DC80, 0x0101E480, 0x0101EC80, 0x0101F480, 0x0101FC80, 0x01020480, 0x01020C80,
                     0x01021480, 0x01021C80, 0x01022480, 0x01022C80, 0x01023480, 0x01023C80, 0x01024480 };
s32 D_808129B0[] = { 0x01037200, 0x01037A00, 0x01038200, 0x01038A00, 0x01039200,
                     0x01039A00, 0x0103A200, 0x0103AA00, 0x0103B200 };
s32 D_808129D4[] = { 0x01035A00, 0x0103D200, 0x0103BA00, 0x0103EA00, 0x01036200, 0x0103DA00,
                     0x0103C200, 0x0103F200, 0x01036A00, 0x0103E200, 0x0103CA00, 0x0103FA00 };
s32 D_80812A04[] = { 0x01045E00, 0x01046600, 0x01045E00 };
s32 D_80812A10[] = { 0x00000010, 0x00200000 };

void* gSelectModeUpdateFuncs[] = {
    func_8080FE2C, func_8080FF98, func_8081009C, func_8081017C,
    func_80810354, func_80810440, func_80810698, func_808106F4,
};

void* gFileSelectDrawFuncs[] = {
    FileChoose_InitModeDraw,
    FileChoose_ConfigModeDraw,
    FileChoose_SelectModeDraw,
};

void* gFileSelectUpdateFuncs[] = {
    FileChoose_InitModeUpdate,
    FileChoose_ConfigModeUpdate,
    FileChoose_SelectModeUpdate,
};

s32 D_80812A50[] = { 0x01033F00, 0x01034800, 0x01035100, 0x00000000 };

u8 gSelectedSetting;

extern s16 D_80811BB0[6][32];
extern s16 D_808123F0[];

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80806DB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80806F34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_8080723C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80807DCC.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80808000.s")
void func_80808000(FileChooseContext* thisx) {
    FileChooseContext* this = thisx;
    Input* controller1 = &this->state.input[0];
    SaveContext* saveCtx = &gSaveContext;
    s16 i;
    s16 val;
    s16 tmp;
    u16 dayTime;
    s32 tmp32;

    OPEN_DISPS(this->state.gfxCtx, "../z_file_nameset_PAL.c", 368);

    func_80806F34(this);
    func_8080723C(this);
    func_8080BFE4(this);

    tmp = (this->newFileNameCharCount * 4) + 4;
    val = this->allocVtx4[tmp].n.ob[0] - 6;
    this->allocVtx4[0x26].n.ob[0] = val;
    this->allocVtx4[0x24].n.ob[0] = val;

    val = this->allocVtx4[0x24].n.ob[0] + 0x18;
    this->allocVtx4[0x27].n.ob[0] = val;
    this->allocVtx4[0x25].n.ob[0] = val;

    val = this->allocVtx4[tmp].n.ob[1] + 7;
    this->allocVtx4[0x25].n.ob[1] = val;
    this->allocVtx4[0x24].n.ob[1] = val;

    val = this->allocVtx4[0x24].n.ob[1] - 0x18;
    this->allocVtx4[0x27].n.ob[1] = val;
    this->allocVtx4[0x26].n.ob[1] = val;

    if ((this->kbdButtonIndex == 0) || (this->kbdButtonIndex == 1) || (this->kbdButtonIndex == 4)) {
        if (this->kbdButtonIndex != this->kbdX) {
            osSyncPrintf("014 xpos=%d  contents=%d\n", this->kbdX, this->kbdButtonIndex);
        }

        val = D_80811BB0[this->kbdX][32] - 4;
        this->allocVtx4[0x2A].n.ob[0] = val;
        this->allocVtx4[0x28].n.ob[0] = val;
        val = this->allocVtx4[0x28].n.ob[0] + 0x34;
        this->allocVtx4[0x2B].n.ob[0] = val;
        this->allocVtx4[0x29].n.ob[0] = val;
        val = D_80811BB0[this->kbdX][33] + 4;
        this->allocVtx4[0x29].n.ob[1] = val;
        this->allocVtx4[0x28].n.ob[1] = val;
    } else if ((this->kbdButtonIndex == 2) || (this->kbdButtonIndex == 3)) {
        if (this->kbdButtonIndex != this->kbdX) {
            osSyncPrintf("23 xpos=%d  contents=%d\n", this->kbdX, this->kbdButtonIndex);
        }

        val = D_80811BB0[this->kbdX][32] - 4;
        this->allocVtx4[0x2A].n.ob[0] = val;
        this->allocVtx4[0x28].n.ob[0] = val;
        val = this->allocVtx4[0x28].n.ob[0] + 0x28;
        this->allocVtx4[0x2B].n.ob[0] = val;
        this->allocVtx4[0x29].n.ob[0] = val;
        val = D_80811BB0[this->kbdX][33] + 4;
        this->allocVtx4[0x29].n.ob[1] = val;
        this->allocVtx4[0x28].n.ob[1] = val;
    } else {
        if (this->charIndex >= 65) {
            osSyncPrintf("mjp=%d  xpos=%d  ypos=%d  name_contents=%d\n", this->charIndex, this->kbdX, this->kbdY,
                         this->kbdButtonIndex);
        }

        val = this->allocVtx3[this->charIndex * 4].n.ob[0] - D_80812544[this->charIndex] - 6;
        this->allocVtx4[0x2A].n.ob[0] = val;
        this->allocVtx4[0x28].n.ob[0] = val;
        val = this->allocVtx4[0x28].n.ob[0] + 0x18;
        this->allocVtx4[0x2B].n.ob[0] = val;
        this->allocVtx4[0x29].n.ob[0] = val;
        val = this->allocVtx3[this->charIndex * 4].n.ob[1] + 6;
        this->allocVtx4[0x29].n.ob[1] = val;
        this->allocVtx4[0x28].n.ob[1] = val;
    }

    val = this->allocVtx4[0x28].n.ob[1] - 0x18;
    this->allocVtx4[0x2B].n.ob[1] = val;
    this->allocVtx4[0x2A].n.ob[1] = val;

    gSPVertex(oGfxCtx->polyOpa.p++, &this->allocVtx4[0x24], 8, 0);
    gDPPipeSync(oGfxCtx->polyOpa.p++);
    gDPSetCombineLERP(oGfxCtx->polyOpa.p++, 1, 0, PRIMITIVE, 0, TEXEL0, 0, PRIMITIVE, 0, 1, 0, PRIMITIVE, 0, TEXEL0, 0,
                      PRIMITIVE, 0);
    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, this->highlightColor[0], this->highlightColor[1],
                    this->highlightColor[2], this->highlightColor[3]);

    gDPLoadTextureBlock(oGfxCtx->polyOpa.p++, 0x0101BD40, G_IM_FMT_I, G_IM_SIZ_8b, 0x18, 0x18, 0,
                        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                        G_TX_NOLOD);

    gSP1Quadrangle(oGfxCtx->polyOpa.p++, 0, 2, 3, 1, 0);

    if ((this->kbdButtonIndex == 0) || (this->kbdButtonIndex == 1) || (this->kbdButtonIndex == 4)) {
        gDPLoadTextureBlock(oGfxCtx->polyOpa.p++, 0x0101BF80, G_IM_FMT_I, G_IM_SIZ_8b, 0x38, 0x18, 0,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);

    } else if ((this->kbdButtonIndex == 2) || (this->kbdButtonIndex == 3)) {
        gDPLoadTextureBlock(oGfxCtx->polyOpa.p++, 0x0101C4C0, G_IM_FMT_I, G_IM_SIZ_8b, 0x28, 0x18, 0,
                            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD,
                            G_TX_NOLOD);
    }
    gSP1Quadrangle(oGfxCtx->polyOpa.p++, 4, 6, 7, 5, 0);

    func_80807DCC(this);
    gDPPipeSync(oGfxCtx->polyOpa.p++);
    func_800949A8(this->state.gfxCtx);

    gDPSetCombineLERP(oGfxCtx->polyOpa.p++, 0, 0, 0, PRIMITIVE, TEXEL0, 0, PRIMITIVE, 0, 0, 0, 0, PRIMITIVE, TEXEL0, 0,
                      PRIMITIVE, 0);
    gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 255, 255, 255, 255);

    if (this->configMode == CM_KEYBOARD_CURSOR) {
        if (CHECK_BTN_ALL(controller1->press.button, BTN_START)) {
            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_L, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->kbdY = 5;
            this->kbdX = 4;
        } else {
            if (CHECK_BTN_ALL(controller1->press.button, BTN_B)) {
                if ((this->newFileNameCharCount == 7) && (this->fileNames[this->buttonIndex][7] != 0x3E)) {
                    for (i = this->newFileNameCharCount; i < 7; i++) {
                        this->fileNames[this->buttonIndex][i] = this->fileNames[this->buttonIndex][i + 1];
                    }
                    this->fileNames[this->buttonIndex][i] = 0x3E;
                    Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_S, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                           &D_801333E8);
                } else {
                    this->newFileNameCharCount--;
                    if (this->newFileNameCharCount < 0) {
                        this->newFileNameCharCount = 0;
                        this->configMode = 0x23;
                    } else {
                        for (i = this->newFileNameCharCount; i < 7; i++) {
                            this->fileNames[this->buttonIndex][i] = this->fileNames[this->buttonIndex][i + 1];
                        }
                        this->fileNames[this->buttonIndex][i] = 0x3E;
                        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_S, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                               &D_801333E8);
                    }
                }
            } else {
                if (this->charPage < 3) {
                    if (this->kbdY != 5) {
                        gDPSetPrimColor(oGfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0x00, 0xFF);
                        gSPVertex(oGfxCtx->polyOpa.p++, &this->allocVtx3[this->charIndex * 4], 4, 0);
                        func_80806DB0(this->state.gfxCtx, this->font.fontBuf[D_808123F0[this->charIndex]], 0);

                        if (CHECK_BTN_ALL(controller1->press.button, BTN_A)) {
                            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_S, &D_801333D4, 4, &D_801333E0, &D_801333E0,
                                                   &D_801333E8);
                            this->fileNames[this->buttonIndex][this->newFileNameCharCount] =
                                D_808123F0[this->charIndex];
                            this->newFileNameCharCount++;
                            if (this->newFileNameCharCount >= 8) {
                                this->newFileNameCharCount = 7;
                            }
                        }
                    } else {
                        if (CHECK_BTN_ALL(controller1->press.button, BTN_A)) {
                            if (this->kbdButtonIndex != this->charPage) {
                                if (this->kbdButtonIndex == 3) {
                                    if ((this->newFileNameCharCount == 7) &&
                                        (this->fileNames[this->buttonIndex][7] != 0x3E)) {
                                        for (i = this->newFileNameCharCount; i < 7; i++) {
                                            this->fileNames[this->buttonIndex][i] =
                                                this->fileNames[this->buttonIndex][i + 1];
                                        }
                                        this->fileNames[this->buttonIndex][i] = 0x3E;
                                        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_S, &D_801333D4, 4, &D_801333E0,
                                                               &D_801333E0, &D_801333E8);
                                    } else {
                                        this->newFileNameCharCount--;
                                        if (this->newFileNameCharCount < 0) {
                                            this->newFileNameCharCount = 0;
                                        }
                                        for (i = this->newFileNameCharCount; i < 7; i++) {
                                            this->fileNames[this->buttonIndex][i] =
                                                this->fileNames[this->buttonIndex][i + 1];
                                        }
                                        this->fileNames[this->buttonIndex][i] = 0x3E;
                                        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_S, &D_801333D4, 4, &D_801333E0,
                                                               &D_801333E0, &D_801333E8);
                                    }
                                } else {
                                    if (this->kbdButtonIndex == 4) {
                                        tmp = 0;

                                        for (i = 0; i < 8; i++) {
                                            if (this->fileNames[this->buttonIndex][i] != 0x3E) {
                                                tmp = 1;
                                                break;
                                            }
                                        }

                                        if (tmp != 0) {
                                            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_L, &D_801333D4, 4, &D_801333E0,
                                                                   &D_801333E0, &D_801333E8);
                                            saveCtx->fileNum = this->buttonIndex;
                                            dayTime = gSaveContext.dayTime;
                                            Sram_InitSave(this, &this->sramCtx);
                                            gSaveContext.dayTime = dayTime;
                                            this->configMode = CM_35;
                                            this->nameBoxAlpha[this->buttonIndex] = this->nameAlpha[this->buttonIndex] =
                                                200;
                                            this->connectorAlpha[this->buttonIndex] = 255;
                                            func_800AA000(300.0f, 0xB4, 0x14, 0x64);
                                        } else {
                                            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_ERROR, &D_801333D4, 4, &D_801333E0,
                                                                   &D_801333E0, &D_801333E8);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    if (CHECK_BTN_ALL(controller1->press.button, BTN_CRIGHT)) {
                        Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                        this->newFileNameCharCount++;
                        if (this->newFileNameCharCount >= 8) {
                            this->newFileNameCharCount = 7;
                        }
                    } else {
                        if (CHECK_BTN_ALL(controller1->press.button, BTN_CLEFT)) {
                            Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                            this->newFileNameCharCount--;
                            if (this->newFileNameCharCount < 0) {
                                this->newFileNameCharCount = 0;
                            }
                        }
                    }
                }
            }
        }
    }
    gDPPipeSync(oGfxCtx->polyOpa.p++);
    gDPSetCombineMode(oGfxCtx->polyOpa.p++, G_CC_MODULATEIDECALA, G_CC_MODULATEIDECALA);
    CLOSE_DIDPS(this->state.gfxCtx, "../z_file_nameset_PAL.c", 550);
}

/**
 * Fade in the name entry box and slide it to the center of the screen from the right side.
 * After the name entry box is in place, init the keyboard/cursor and change modes
 */
void FileChoose_StartNameEntry(FileChooseContext* this) {
    this->nameEntryBoxAlpha += 25;

    if (this->nameEntryBoxAlpha >= 255) {
        this->nameEntryBoxAlpha = 255;
    }

    this->nameEntryBoxPosX -= 30;

    if (this->nameEntryBoxPosX <= 0) {
        this->nameEntryBoxPosX = 0;
        this->nameEntryBoxAlpha = 255;
        this->kbdX = 0;
        this->kbdY = 0;
        this->kbdButtonIndex = 99;
        this->configMode = CM_KEYBOARD_CURSOR;
    }
}

/**
 * Update the keyboard cursor and play sounds at the appropriate times.
 * There are many special cases for warping the cursor depending on where
 * on the keyboard the cursor currently is.
 */
void FileChoose_UpdateKeyboardCursor(FileChooseContext* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    s16 prevKbdX;

    this->kbdButtonIndex = 99;

    if (this->kbdY != 5) {
        if (this->stickRelX < -30) {
            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->charIndex--;
            this->kbdX--;
            if (this->kbdX < 0) {
                this->kbdX = 12;
                this->charIndex = (this->kbdY * 13) + this->kbdX;
            }
        } else if (this->stickRelX > 30) {
            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->charIndex++;
            this->kbdX++;
            if (this->kbdX > 12) {
                this->kbdX = 0;
                this->charIndex = (this->kbdY * 13) + this->kbdX;
            }
        }
    } else {
        if (this->stickRelX < -30) {
            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->kbdX--;
            if (this->kbdX < 3) {
                this->kbdX = 4;
            }
        } else if (this->stickRelX > 30) {
            Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            this->kbdX++;
            if (this->kbdX > 4) {
                this->kbdX = 3;
            }
        }
    }

    if (this->stickRelY > 30) {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->kbdY--;

        if (this->kbdY < 0) {
            // dont go to bottom row
            if (this->kbdX < 8) {
                this->kbdY = 4;
                this->charIndex = (s32)(this->kbdX + 52);
            } else {
                this->kbdY = 5;
                this->charIndex += 52;
                prevKbdX = this->kbdX;

                if (this->kbdX < 10) {
                    this->kbdX = 3;
                } else if (this->kbdX < 13) {
                    this->kbdX = 4;
                }

                this->unk_1CAD6[this->kbdX] = prevKbdX;
            }
        } else {
            this->charIndex -= 13;

            if (this->kbdY == 4) {
                this->charIndex = 52;
                this->kbdX = this->unk_1CAD6[this->kbdX];
                this->charIndex += this->kbdX;
            }
        }
    } else if (this->stickRelY < -30) {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->kbdY++;

        if (this->kbdY > 5) {
            this->kbdY = 0;
            this->kbdX = this->unk_1CAD6[this->kbdX];
            this->charIndex = this->kbdX;
        } else {
            this->charIndex += 13;

            if (this->kbdY == 5) {
                if (this->kbdX < 8) {
                    this->kbdY = 0;
                    this->charIndex = this->kbdX;
                } else {
                    prevKbdX = this->kbdX;

                    if (this->kbdX < 3) {
                        this->kbdX = 0;
                    } else if (this->kbdX < 6) {
                        this->kbdX = 1;
                    } else if (this->kbdX < 8) {
                        this->kbdX = 2;
                    } else if (this->kbdX < 10) {
                        this->kbdX = 3;
                    } else if (this->kbdX < 13) {
                        this->kbdX = 4;
                    }

                    this->unk_1CAD6[this->kbdX] = prevKbdX;
                }
            }
        }
    }

    if (this->kbdY == 5) {
        this->kbdButtonIndex = this->kbdX;
    }
}

/**
 * This function is mostly a copy paste of `FileChoose_StartNameEntry`.
 * The name entry box fades and slides in even though it is not visible.
 * After this is complete, change to the options menu mode
 */
void FileChoose_StartOptions(FileChooseContext* this) {
    this->nameEntryBoxAlpha += 25;

    if (this->nameEntryBoxAlpha >= 255) {
        this->nameEntryBoxAlpha = 255;
    }

    this->nameEntryBoxPosX -= 30;

    if (this->nameEntryBoxPosX <= 0) {
        this->nameEntryBoxPosX = 0;
        this->nameEntryBoxAlpha = 255;
        this->configMode = CM_OPTIONS_MENU;
    }
}

/**
 * Update the cursor and appropriate settings for the options menu
 * If the player presses B, write the selected options to the SRAM header
 * and set configMode to rotate back to the main menu
 */
void FileChoose_UpdateOptionsMenu(FileChooseContext* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    SramContext* sramCtx = &this->sramCtx;
    Input* controller1 = &this->state.input[0];

    if (CHECK_BTN_ALL(controller1->press.button, BTN_B)) {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_L, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->configMode = CM_ROT_FROM_OPTIONS;
        sramCtx->readBuff[0] = gSaveContext.audioSetting;
        sramCtx->readBuff[1] = gSaveContext.zTargetSetting;
        osSyncPrintf("ＳＡＶＥ");
        Sram_WriteSramHeader(sramCtx);
        osSyncPrintf(VT_FGCOL(YELLOW));
        osSyncPrintf("sram->read_buff[2] = J_N = %x\n", sramCtx->readBuff[2]);
        osSyncPrintf("sram->read_buff[2] = J_N = %x\n", &sramCtx->readBuff[2]);
        osSyncPrintf("Na_SetSoundOutputMode = %d\n", gSaveContext.audioSetting);
        osSyncPrintf("Na_SetSoundOutputMode = %d\n", gSaveContext.audioSetting);
        osSyncPrintf("Na_SetSoundOutputMode = %d\n", gSaveContext.audioSetting);
        osSyncPrintf(VT_RST);
        func_800F6700(gSaveContext.audioSetting);
        osSyncPrintf("終了\n");
        return;
    }

    if (this->stickRelX < -30) {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);

        if (gSelectedSetting == SETTING_AUDIO) {
            gSaveContext.audioSetting--;

            // because audio setting is unsigned, can't check for < 0
            if (gSaveContext.audioSetting > 0xF0) {
                gSaveContext.audioSetting = AUDIO_SURROUND;
            }
        } else {
            gSaveContext.zTargetSetting ^= 1;
        }
    } else if (this->stickRelX > 30) {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);

        if (gSelectedSetting == SETTING_AUDIO) {
            gSaveContext.audioSetting++;

            if (gSaveContext.audioSetting > AUDIO_SURROUND) {
                gSaveContext.audioSetting = AUDIO_STEREO;
            }
        } else {
            gSaveContext.zTargetSetting ^= 1;
        }
    }

    if ((this->stickRelY < -30) || (this->stickRelY > 30)) {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_CURSOR, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        gSelectedSetting ^= 1;
        return;
    } else if (CHECK_BTN_ALL(controller1->press.button, BTN_A)) {
        Audio_PlaySoundGeneral(NA_SE_SY_FSEL_DECIDE_L, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        gSelectedSetting ^= 1;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808099C8.s")

void func_8080AF30(FileChooseContext* this) {
    func_808099C8(this);
}
