#include "global.h"

#define NON_CONST(x, type) (*(type*)(&x))

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_80110450/func_80110450.s")
void func_80110450(GlobalContext* globalCtx) {
    globalCtx->unk_10A20 = 0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_80110450/func_80110460.s")
void func_80110460(GlobalContext* globalCtx) {
    u16* temp_ptr = &globalCtx->unk_10A20;
    if (!(*temp_ptr < 2 || *temp_ptr >= 0x14) || 
        (*temp_ptr >= 0x15 && *temp_ptr < 0x18)) {
        func_800760F4(globalCtx);
    }
}

void func_801104C8(GlobalContext* globalCtx);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_80110450/func_801104C8.s")
/* void func_801104C8(GlobalContext* globalCtx) {
    static const s16 D_80153D80 = 0;

    s16 *temp_s1;
    s16 *temp_s2;
    s32 temp_s0;
    s32 temp_s4;
    s32 temp_v0_3;
    s32 temp_v0_4;
    u32 temp_t7;
    u8 temp_v0;
    u8 temp_v0_2;
    s16 i;
    s16 j;
    s16 phi_t0;
    s16 phi_v1;
    s16 phi_v0;
    u8 phi_t0_2;
    u8 phi_v1_2;
    u8 phi_v0_2;

    u16* temp_ptr = &globalCtx->unk_10A20;
    switch (*temp_ptr - 1) {
        case 0:
            func_80106CCC(globalCtx);
            gSaveContext.timer1State = 0;
            gSaveContext.timer2State = 0;
            gSaveContext.eventInf[1] &= 0xFFFE;
            for (i = 0; i < ARRAY_COUNT(gSpoilingItems); i++) { // search for spoiling items
                if (INV_CONTENT(ITEM_POCKET_EGG) == gSpoilingItems[i]) {
                    INV_CONTENT(gSpoilingItemReverts[i]) = gSpoilingItemReverts[i]; // if a spoiling item is found, revert it
                    for (j = 1; j < ARRAY_COUNT(gSaveContext.equips.buttonItems); j++) { // search c buttons for the found spoiling item
                        if (gSaveContext.equips.buttonItems[j] == gSpoilingItems[i]) {
                            gSaveContext.equips.buttonItems[j] = gSpoilingItemReverts[i]; // if found on a c button, revert it
                            Interface_LoadItemIcon1(globalCtx, j);
                        }
                    }
                }
            }
            // restore "temporary B" to the B Button if not a sword item
            if (gSaveContext.equips.buttonItems[0] != ITEM_SWORD_KOKIRI && 
                gSaveContext.equips.buttonItems[0] != ITEM_SWORD_MASTER && 
                gSaveContext.equips.buttonItems[0] != ITEM_SWORD_BGS && 
                gSaveContext.equips.buttonItems[0] != ITEM_SWORD_KNIFE) {
                if (gSaveContext.buttonStatus[0] != BTN_ENABLED) {
                    gSaveContext.equips.buttonItems[0] = gSaveContext.buttonStatus[0];
                } else {
                    gSaveContext.equips.buttonItems[0] = ITEM_NONE;
                }
            }
            gSaveContext.nayrusLoveTimer = 0x7D0;
            gSaveContext.naviTimer = 0;
            gSaveContext.seqIndex = 0xFF;
            gSaveContext.nightSeqIndex = 0xFF;
            gSaveContext.eventInf[0] = 0;
            gSaveContext.eventInf[1] = 0;
            gSaveContext.eventInf[2] = 0;
            gSaveContext.eventInf[3] = 0;
            gSaveContext.buttonStatus[4] = 0;
            gSaveContext.buttonStatus[3] = 0;
            gSaveContext.buttonStatus[2] = 0;
            gSaveContext.buttonStatus[1] = 0;
            gSaveContext.buttonStatus[0] = 0;
            gSaveContext.unk_13EC = 0;
            gSaveContext.unk_13EA = 0;
            gSaveContext.unk_13E8 = 0;
            gSaveContext.unk_13E7 = 0;
            func_80075F14(globalCtx);
            NON_CONST(D_80153D80,s16) = 0x14;
            //phi_t0 = (VREG(90) >= 0x65) ? 0xFF : (VREG(90) * 0xFF) / 0x64;
            //phi_v1 = CLAMP_MAX(VREG(91) * 3, 0xFF);
            //phi_v0 = (VREG(92) >= 0x65) ? 0xFF : (VREG(92) * 0xFF) / 0x64;
            phi_t0 = VREG(90);
            phi_v1 = VREG(91);
            phi_v0 = VREG(92);
            func_800AA000(0.0f, (phi_t0 >= 0x65) ? 0xFF : (phi_t0 * 0x100U - phi_t0) / 100, 
                            CLAMP_MAX(phi_v1 * 3, 0xFFU), 
                            (phi_v0 >= 0x65) ? 0xFF : (phi_v0 * 0x100U - phi_v0) / 100);
            *temp_ptr = 2;
            break;
        case 2:
            NON_CONST(D_80153D80,s16)--;
            if (NON_CONST(D_80153D80,s16) == 0) {
                globalCtx->pauseCtx.state = 8;
                (*temp_ptr)++;
                func_800AA15C();
                return;
            }
            break;
        case 19:
            NON_CONST(D_80153D80,s16) = 0;
            (*temp_ptr)++;
            func_80075F14(globalCtx);
            ShrinkWindow_SetVal(0x20);
            break;
        case 20:
            NON_CONST(D_80153D80,s16) = 50;
            (*temp_ptr)++;
            func_800AA000(0.0f, (VREG(90) * 0xFF) / 0x64, CLAMP_MAX(VREG(91) * 3, 0xFF), (VREG(92) * 0xFF) / 0x64);
            break;
        case 21:
            NON_CONST(D_80153D80,s16)--;
            if (NON_CONST(D_80153D80,s16) == 0) {
                NON_CONST(D_80153D80,s16) = 64;
                (*temp_ptr)++;
                return;
            }
            break;
        case 22:
            NON_CONST(D_80153D80,s16)--;
            if (NON_CONST(D_80153D80,s16) == 0) {
                NON_CONST(D_80153D80,s16) = 50;
                (*temp_ptr)++;
                return;
            }
            break;
        case 23:
            func_800763A8(globalCtx);
            NON_CONST(D_80153D80,s16)--;
            if (NON_CONST(D_80153D80,s16) == 0) {
                *temp_ptr = 0;
                return;
            }
            break;
    }
} */
