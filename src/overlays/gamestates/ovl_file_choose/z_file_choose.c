#include "ultra64.h"
#include "global.h"

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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80810DAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808113A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80811A18.s")
//void func_80811A20(FileSelectContext* this);
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80811A20.s")
void func_80811A20(GameState* thisx) {
    FileChooseContext* this = (FileChooseContext*)thisx;
    u8* sp30;
    u32 sp2C;
    u32 temp_a1;
    u32 temp_a1_2;
    void* temp_v0;
    void* temp_v0_2;

    temp_a1 = _title_staticSegmentRomEnd - _title_staticSegmentRomStart;
    gGameInfo->unk110 = 1;
    sp2C = temp_a1;
    sp30 = _title_staticSegmentRomStart;
    osSyncPrintf("SIZE=%x\n", temp_a1);
    temp_v0 = GameState_Alloc(this, temp_a1, "../z_file_choose.c", 0xD40);
    this->staticSegment = temp_v0;
    if (temp_v0 == 0) {
        __assert("this->staticSegment != NULL", "../z_file_choose.c", 0xD41);
    }
    DmaMgr_SendRequest1(this->staticSegment, sp30, sp2C, "../z_file_choose.c", 0xD42);
    temp_a1_2 = _parameter_staticSegmentRomEnd - _parameter_staticSegmentRomStart;
    sp2C = temp_a1_2;
    sp30 = _parameter_staticSegmentRomStart;
    temp_v0_2 = GameState_Alloc(this, temp_a1_2, "../z_file_choose.c", 0xD46);
    this->parameterSegment = temp_v0_2;
    if (temp_v0_2 == 0) {
        __assert("this->parameterSegment != NULL", "../z_file_choose.c", 0xD47);
    }
    DmaMgr_SendRequest1(this->parameterSegment, sp30, sp2C, "../z_file_choose.c", 0xD48);
    Matrix_Init(this);
    View_Init(&this->view, this->state.gfxCtx);
    this->state.main = &func_80810DAC;
    this->state.destroy = &func_80811A18;
    func_808113A8(this);
    func_8006EF10(this->kanfont);
    Audio_SetBGM(0xF000000A);
    func_800F5E18(0, 0x57, 0, 7, 1);
}
