#include <ultra64.h>
#include <global.h>
#include <vt.h>
#include <alloca.h>

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80803D40.s")
#if 0
static s16 arr_3D40[5] = { 0xFFD0, 0xFFD0, 0xFFD0, 0xFFE8, 0xFFE8 };

void func_80803D40(ChooseContext* chooseCtx) {
    s32 temp_a2;
    s16 temp_a2_2;
    s16 i;

    for (i = 0; i < 5; i++) {
        temp_a2 = chooseCtx->unk_1CA52[i] - arr_3D40[i];
        temp_a2_2 = (temp_a2 >= 0 ? temp_a2 : -temp_a2) / chooseCtx->unk_1CA50;
        if (chooseCtx->unk_1CA52[i] >= arr_3D40[i]) {
            chooseCtx->unk_1CA52[i] = (chooseCtx->unk_1CA52[i] - temp_a2_2);
        } else {
            chooseCtx->unk_1CA52[i] = (chooseCtx->unk_1CA52[i] + temp_a2_2);
        }
    }
    
    chooseCtx->unk_1CA92 -= 0x19;
    chooseCtx->unk_1CA94 -= 0x19;
    chooseCtx->unk_1CA9A -= 0x19;
    chooseCtx->unk_1CA98 += 0x19;

    chooseCtx->unk_1CA50 -= 1;
    chooseCtx->colorAlpha -= 0x1F;
    chooseCtx->unk_1CA70 += 0x1F;
    
    if (chooseCtx->unk_1CA50 == 0) {
        chooseCtx->unk_1CA50 = 8;
        chooseCtx->unk_1CA92 = 0;
        chooseCtx->unk_1CA94 = 0;
        chooseCtx->unk_1CA9A = 0;      
        chooseCtx->unk_1CA98 = 0xC8;
        chooseCtx->unk_1CA64 = chooseCtx->unk_1CA66;
        
        chooseCtx->colorAlpha = 0xFF;
        chooseCtx->unk_1CA70 = 0;
        chooseCtx->unk_1CA38 = 3;
        chooseCtx->fileSelectStateIdx += 1;
    }
}
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80803ED8.s")
// OK
#if 0
void func_80803ED8(ChooseContext* chooseCtx) {
    Input* controller1;
    u8* temp_v0;
    u32 pad;

    controller1 = &chooseCtx->state.input[0];
    if (chooseCtx->unk_1CA38 == 3 &&
        controller1->press.in.button & (A_BUTTON | START_BUTTON) || 
        CHECK_PAD(controller1->press, B_BUTTON)) {
            chooseCtx->unk_1CA50 = 8;
            chooseCtx->unk_1CA38 = 3;
            chooseCtx->unk_1CA66 = 0;
            chooseCtx->fileSelectStateIdx = 0x13;
            chooseCtx->decisionAlphaIdx = -1;
            Audio_PlaySoundGeneral(0x483C, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            return;
    }

    if (controller1->press.in.button & (A_BUTTON | START_BUTTON)) {
        temp_v0 = D_8012A4E0[chooseCtx->unk_1CA38] + (u8*)chooseCtx->sram.read_buff;
        if ((*(temp_v0 + 0x1C) == 'Z') ||
            (*(temp_v0 + 0x1D) == 'E') ||
            (*(temp_v0 + 0x1E) == 'L') ||
            (*(temp_v0 + 0x1F) == 'D') ||
            (*(temp_v0 + 0x20) == 'A') ||
            (*(temp_v0 + 0x21) == 'Z')) {
                chooseCtx->unk_1CA50 = 8;
                chooseCtx->unk_1CA46 = chooseCtx->unk_1CA38;
                chooseCtx->fileSelectStateIdx = 5;
                chooseCtx->unk_1CA66 = 3;
                Audio_PlaySoundGeneral(0x483B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
                return;
        }
        Audio_PlaySoundGeneral(0x483D, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        return;
    }

    if ((chooseCtx->unk_1CABC >= 0 ? chooseCtx->unk_1CABC : -chooseCtx->unk_1CABC) >= 0x1E) {
        Audio_PlaySoundGeneral(0x4839, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        if (chooseCtx->unk_1CABC >= 0x1E) {
            chooseCtx->unk_1CA38 -= 1;
            if (chooseCtx->unk_1CA38 < 0) {
                chooseCtx->unk_1CA38 = 3;
            }
        } else {
            chooseCtx->unk_1CA38 += 1;
            if (chooseCtx->unk_1CA38 >= 4) {
                chooseCtx->unk_1CA38 = 0;
            }
        }
    }

    if (chooseCtx->unk_1CA38 != 3) {
        temp_v0 = D_8012A4E0[chooseCtx->unk_1CA38] + (u8*)chooseCtx->sram.read_buff;
        if ((*(temp_v0 + 0x1C) != 'Z') &&
            (*(temp_v0 + 0x1D) != 'E') &&
            (*(temp_v0 + 0x1E) != 'L') &&
            (*(temp_v0 + 0x1F) != 'D') &&
            (*(temp_v0 + 0x20) != 'A') &&
            (*(temp_v0 + 0x21) != 'Z')) {
                chooseCtx->decisionAlphaIdx = 3;
                chooseCtx->unk_1CA62 = chooseCtx->unk_1CA38;
                chooseCtx->unk_1CAA0 = 0xFF;
        } else {
            chooseCtx->decisionAlphaIdx = -1;
        }
    }
}
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_80804248.s")
#if 0
static s16 arr[][3] = { 
    {0x0000, 0xFFD0, 0xFFD0},
    {0xFFC0, 0x0010, 0xFFD0},
    {0xFFC0, 0xFFC0, 0x0020},
};

void func_80804248(ChooseContext* chooseCtx) {
    s16 temp_a1_2;
    s16 i;

    for (i = 0; i < 3; i++) {
        temp_a1_2 = ABS(chooseCtx->unk_1CA52[i] - arr[chooseCtx->unk_1CA38][i]) / chooseCtx->unk_1CA50;
        if (arr[chooseCtx->unk_1CA38][i] >= chooseCtx->unk_1CA52[i]) {
            chooseCtx->unk_1CA52[i] += temp_a1_2;
        } else {
            chooseCtx->unk_1CA52[i] -= temp_a1_2;
        }
    }

    chooseCtx->colorAlpha -= 0x1F;
    chooseCtx->unk_1CA70 += 0x1F;
    chooseCtx->unk_1CA7A[chooseCtx->unk_1CA38] -= 0x19;
    chooseCtx->unk_1CA50 -= 1;

    if (chooseCtx->unk_1CA50 == 0) {
        chooseCtx->unk_1CA52[chooseCtx->unk_1CA38] = arr[chooseCtx->unk_1CA38][chooseCtx->unk_1CA38];
        chooseCtx->unk_1CA64 = chooseCtx->unk_1CA66;
        chooseCtx->colorAlpha = 0xFF;
        chooseCtx->unk_1CA70 = 0;
        chooseCtx->unk_1CA50 = 8;
        chooseCtx->fileSelectStateIdx += 1;
    }
}
#endif

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808043D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/gamestates/ovl_file_choose/func_808044A0.s")

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
