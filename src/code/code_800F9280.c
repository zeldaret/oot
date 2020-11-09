#include "ultra64.h"
#include "global.h"
#include "ultra64/abi.h"
extern unk_D_8016E750 D_8016E750[4];
extern u8 D_8016E348[4];
extern u32 D_8016E350[0x100];
extern u8 D_80133404;
extern u8 D_80133400;
extern u8 D_80133408;

void func_800F94FC(u32 arg0);

void func_800F9280(u8 arg0, u8 arg1, u8 arg2, u16 arg3);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800F9280.s")

void func_800F9474(u8 arg0, u16 arg1) {
    func_800E5AFC(MK_CMD(0x83, arg0, 0x00, 0x00), (arg1 * (u16)gAudioContext.gAudioBufferParameters.updatesPerFrame) / 4);
    D_8016E750[arg0].unk_254 = 0xFFFF;
}

extern u32 D_8013340C;

// big boi
#ifdef NON_MATCHING
#if 0
void func_800F94FC(u32 arg0) {
    u8 sp59;
    u32 sp3C;
    u32 sp38;
    u32 sp34;
    u32 sp30;
    s32 sp2C;
    u8 *sp24;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 temp_f0_4;
    f32 temp_f10;
    f32 temp_f2;
    f32 temp_f6;
    f32 temp_f8;
    s32 temp_a1;
    s32 temp_a2_7;
    s32 temp_a3_2;
    s32 temp_t0;
    s32 temp_t0_2;
    s32 temp_t0_3;
    s32 temp_t1;
    s32 temp_t1_2;
    s32 temp_t5;
    s32 temp_t8;
    s32 temp_v0_10;
    s32 temp_v1;
    s32 temp_v1_10;
    s32 temp_v1_11;
    s32 temp_v1_12;
    s32 temp_v1_2;
    s32 temp_v1_3;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_v1_7;
    s32 temp_v1_8;
    s32 temp_v1_9;
    u32 temp_a0_2;
    u32 temp_a0_6;
    u32 temp_a2;
    u32 temp_a2_4;
    u32 temp_a2_5;
    u32 temp_a2_6;
    u32 temp_a3;
    u32 temp_a3_3;
    u32 temp_t9;
    u32 temp_v0_11;
    u32 temp_v0_12;
    u32 temp_v0_14;
    u32 temp_v0_3;
    u32 temp_v0_5;
    u32 temp_v0_6;
    u32 temp_v0_8;
    u8 *temp_t4;
    u8 *temp_t4_2;
    u8 temp_a0;
    u8 temp_t2;
    u8 temp_t2_2;
    u8 temp_t6;
    u8 temp_t8_3;
    u8 temp_v1_13;
    unk_D_8016E750 *temp_a0_5;
    unk_D_8016E750 *temp_t8_2;
    unk_D_8016E750 *temp_v0_13;
    unk_D_8016E750 *temp_v0_4;
    unk_D_8016E750 *temp_v0_7;
    unk_D_8016E750 *temp_v0_9;
    void *temp_a0_3;
    void *temp_a0_4;
    void *temp_a1_2;
    void *temp_a1_3;
    void *temp_a2_2;
    void *temp_a2_3;
    void *temp_v0;
    void *temp_v0_2;
    s32 phi_v1;
    s32 phi_v1_2;
    s32 phi_v1_3;
    s32 phi_t1;
    u8 phi_t3;
    s32 phi_v0;
    s32 phi_v1_4;
    s32 phi_v1_5;
    s32 phi_v1_6;
    s32 phi_t1_2;
    s32 phi_v0_2;
    s32 phi_v1_7;
    s32 phi_a1;
    f32 phi_f8;
    s32 phi_v1_8;
    u32 phi_a1_2;
    s32 phi_a1_3;
    f32 phi_f10;
    s32 phi_a1_4;
    f32 phi_f6;
    u32 phi_v1_9;
    s32 phi_t1_3;
    s32 phi_t1_4;
    u8 i;

    if ((D_8013340C != 0) && ((arg0 & 0xF0000000) != 0x70000000)) {
        func_800F2D6C(D_80133390, (arg0 >> 0x10));
        func_800F2D6C(D_80133398, arg0);
    }

    temp_a3 = arg0 & 0xF000000;
    temp_t9 = (arg0 >> 0x1C) & 0xFF;
    temp_a3 = temp_a3 >> 0x18;
    temp_a1 = temp_a3 & 0xFF;
    switch(temp_t9){
        case 0:
            temp_a0 = temp_a3 & 0xFF;
            temp_a2 = (arg0 & 0xFF00) >> 8;
            if ((D_8016E750[temp_a0].unk_260 == 0) && (temp_a2 < 0x80)) {
                func_800F9280(temp_a0, arg0, temp_a2, (arg0 & 0xFF0000) >> 0xD);
            }
            return;
        case 1:
            func_800F9474(temp_a3, (arg0 & 0xFF0000) >> 0xD);
            return;
        case 2:
            temp_t8 = temp_a3 & 0xFF;
            temp_t4 = &D_8016E348[temp_t8];
            temp_t2 = *temp_t4;
            sp2C = temp_t8;
            if (temp_t2 > 0) {
                temp_a0_2 = arg0 & 0xFF;
                sp30 = temp_a0_2;
                phi_v1 = 0;
loop_11:
                if (temp_a0_2 == *((temp_t8 * 0xA) + &D_8016E320 + (phi_v1 * 2))) {
                    if (phi_v1 == 0) {
                        func_800F9280(sp2F, sp33, (u8) (((u32) (arg0 & 0xFF00) >> 8) & 0xFF), (u16) (((u32) (arg0 & 0xFF0000) >> 0xD) & 0xFFFF));
                    }
                } else {
                    temp_v1 = (phi_v1 + 1) & 0xFF;
                    phi_v1 = temp_v1;
                    if (temp_v1 < (s32) D_8016E348[temp_a1]) {
                        goto loop_11;
                    }
block_16:
                    temp_t1 = temp_t2 & 0xFF;
                    sp30 = arg0 & 0xFF;
                    temp_a2_2 = (sp2C * 0xA) + &D_8016E320;
                    phi_t1 = temp_t1;
                    if ((s32) temp_t2 > 0) {
                        phi_t1_3 = temp_t1;
loop_18:
                        phi_v1_3 = phi_v1_2;
                        if ((s32) (((u32) (arg0 & 0xFF00) >> 8) & 0xFF) >= (s32) (temp_a2_2 + (phi_v1_2 * 2))->unk1) {
                            phi_v1_3 = temp_t2 & 0xFF;
                            phi_t1_3 = phi_v1_2 & 0xFF;
                        }
                        temp_v1_2 = (phi_v1_3 + 1) & 0xFF;
                        phi_v1_2 = temp_v1_2;
                        phi_t1 = phi_t1_3;
                        if (temp_v1_2 < (s32) D_8016E348[temp_a1]) {
                            goto loop_18;
                        }
                    }
                    sp3C = ((u32) (arg0 & 0xFF00) >> 8) & 0xFF;
                    phi_t3 = temp_t2;
                    if ((s32) temp_t2 < 5) {
                        temp_t6 = temp_t2 + 1;
                        *temp_t4 = temp_t6;
                        phi_t3 = temp_t6 & 0xFF;
                    }
                    temp_v1_3 = (phi_t3 - 1) & 0xFF;
                    temp_t0 = phi_t1;
                    phi_v0 = temp_v1_3;
                    phi_v1_4 = temp_v1_3;
                    if (phi_t1 != temp_v1_3) {
loop_24:
                        temp_a1_2 = temp_a2_2 + (phi_v0 * 2);
                        temp_a0_3 = temp_a2_2 + (phi_v1_4 * 2);
                        temp_a0_3->unk1 = (u8) temp_a1_2->unk-1;
                        temp_v1_4 = (phi_v1_4 - 1) & 0xFF;
                        temp_a0_3->unk0 = (u8) temp_a1_2->unk-2;
                        phi_v0 = temp_v1_4;
                        phi_v1_4 = temp_v1_4;
                        if (temp_t0 != temp_v1_4) {
                            goto loop_24;
                        }
                    }
                    temp_v0 = temp_a2_2 + (phi_t1 * 2);
                    temp_v0->unk1 = (s8) sp3C;
                    temp_v0->unk0 = (s8) sp30;
                    if (temp_t0 == 0) {
                        func_800F9280(sp2F, sp33, sp3F, (u16) (((u32) (arg0 & 0xFF0000) >> 0xD) & 0xFFFF));
                    }
                }
            }
            return;
        case 3:
            temp_t5 = temp_a3 & 0xFF;
            temp_t4_2 = &D_8016E348[temp_t5];
            temp_t2_2 = *temp_t4_2;
            sp2C = temp_t5;
            phi_t1_2 = (s32) temp_t2_2;
            if ((s32) temp_t2_2 > 0) {
                phi_v1_5 = 0;
                phi_t1_4 = (s32) temp_t2_2;
loop_29:
                phi_v1_6 = phi_v1_5;
                if ((arg0 & 0xFF) == *((temp_t5 * 0xA) + &D_8016E320 + (phi_v1_5 * 2))) {
                    phi_v1_6 = temp_t2_2 & 0xFF;
                    phi_t1_4 = phi_v1_5 & 0xFF;
                }
                temp_v1_5 = (phi_v1_6 + 1) & 0xFF;
                phi_v1_5 = temp_v1_5;
                phi_t1_2 = phi_t1_4;
                if (temp_v1_5 < (s32) D_8016E348[temp_a1]) {
                    goto loop_29;
                }
            }
            if (phi_t1_2 != temp_t2_2) {
                temp_a3_2 = temp_t2_2 - 1;
                temp_v1_6 = phi_t1_2 & 0xFF;
                if (phi_t1_2 < temp_a3_2) {
                    temp_a2_3 = (sp2C * 0xA) + &D_8016E320;
                    phi_v0_2 = temp_v1_6;
                    phi_v1_7 = temp_v1_6;
loop_35:
                    temp_a1_3 = temp_a2_3 + (phi_v0_2 * 2);
                    temp_a0_4 = temp_a2_3 + (phi_v1_7 * 2);
                    temp_a0_4->unk1 = (u8) temp_a1_3->unk3;
                    temp_v1_7 = (phi_v1_7 + 1) & 0xFF;
                    temp_a0_4->unk0 = (u8) temp_a1_3->unk2;
                    phi_v0_2 = temp_v1_7;
                    phi_v1_7 = temp_v1_7;
                    if (temp_v1_7 < temp_a3_2) {
                        goto loop_35;
                    }
                }
                *temp_t4_2 = (u8) (temp_t2_2 - 1);
            }
            if (phi_t1_2 == 0) {
                temp_a3_3 = ((u32) (arg0 & 0xFF0000) >> 0xD) & 0xFFFF;
                sp3C = temp_a3_3;
                sp24 = temp_t4_2;
                func_800F9474(sp2F, temp_a3_3 & 0xFFFF);
                if (*temp_t4_2 != 0) {
                    temp_v0_2 = (sp2C * 0xA) + &D_8016E320;
                    func_800F9280((u8) sp2C, temp_v0_2->unk0, temp_v0_2->unk1, (u16) temp_a3_3);
                }
            }
            return;
        case 4:
            temp_v0_3 = (u32) (arg0 & 0xFF0000) >> 0xF;
            temp_v1_8 = temp_v0_3 & 0xFF;
            phi_a1 = temp_v0_3 & 0xFF;
            if (temp_v1_8 == 0) {
                phi_a1 = (temp_v1_8 + 1) & 0xFF;
            }
            temp_v0_4 = &D_8016E750[temp_a3 & 0xFF];
            temp_f2 = temp_v0_4->unk_00;
            temp_f0 = (f32) (u32) (arg0 & 0xFF) / 127.0f;
            temp_v0_4->unk_04 = temp_f0;
            if (temp_f2 != temp_f0) {
                temp_f8 = (f32) phi_a1;
                phi_f8 = temp_f8;
                if (phi_a1 < 0) {
                    phi_f8 = temp_f8 + 4294967296.0f;
                }
                temp_v0_4->unk_0C = (u16) phi_a1;
                temp_v0_4->unk_08 = (temp_f2 - temp_v0_4->unk_04) / phi_f8;
            }
            return;
        case 5:
            temp_v0_5 = (u32) (arg0 & 0xFF0000) >> 0xF;
            temp_v1_9 = temp_v0_5 & 0xFF;
            phi_a1_2 = temp_v0_5 & 0xFF;
            if (temp_v1_9 == 0) {
                phi_a1_2 = (temp_v1_9 + 1) & 0xFF;
            }
            temp_t0_2 = temp_a3 & 0xFF;
            temp_a0_5 = &D_8016E750[temp_t0_2];
            temp_f0_2 = (f32) (u32) (arg0 & 0xFFFF) / 1000.0f;
            phi_v1_8 = 0;
loop_49:
            temp_v1_10 = (phi_v1_8 + 1) & 0xFF;
            temp_a0_5->unk_50[phi_v1_8].unk_14 = temp_f0_2;
            temp_a0_5->unk_50[phi_v1_8].unk_1C = (u16) phi_a1_2;
            temp_a0_5->unk_50[phi_v1_8].unk_18 = (temp_a0_5->unk_50[phi_v1_8].unk_10 - temp_f0_2) / (f32) phi_a1_2;
            phi_v1_8 = temp_v1_10;
            if (temp_v1_10 < 0x10) {
                goto loop_49;
            }
            D_8016E750[temp_t0_2].unk_250 = 0xFFFF;
            return;
        case 13:
            temp_v0_6 = (u32) (arg0 & 0xFF0000) >> 0xF;
            temp_v1_11 = temp_v0_6 & 0xFF;
            phi_a1_3 = temp_v0_6 & 0xFF;
            if (temp_v1_11 == 0) {
                phi_a1_3 = (temp_v1_11 + 1) & 0xFF;
            }
            temp_a0_6 = ((u32) (arg0 & 0xF000) >> 0xC) & 0xFF;
            temp_v0_7 = &D_8016E750[temp_a3 & 0xFF];
            temp_f0_3 = (f32) (u32) (arg0 & 0xFFF) / 1000.0f;
            temp_f10 = (f32) phi_a1_3;
            temp_v0_7->unk_50[temp_a0_6].unk_14 = temp_f0_3;
            phi_f10 = temp_f10;
            if (phi_a1_3 < 0) {
                phi_f10 = temp_f10 + 4294967296.0f;
            }
            temp_v0_7->unk_50[temp_a0_6].unk_1C = (u16) phi_a1_3;
            temp_v0_7->unk_50[temp_a0_6].unk_18 = (temp_v0_7->unk_50[temp_a0_6].unk_10 - temp_f0_3) / phi_f10;
            temp_v0_7->unk_250 = temp_v0_7->unk_250 | (1 << temp_a0_6);
            return;
        case 6:
            temp_v0_8 = (u32) (arg0 & 0xFF0000) >> 0xF;
            temp_v1_12 = temp_v0_8 & 0xFF;
            phi_a1_4 = temp_v0_8 & 0xFF;
            if (temp_v1_12 == 0) {
                phi_a1_4 = (temp_v1_12 + 1) & 0xFF;
            }
            temp_t0_3 = temp_a3 & 0xFF;
            temp_a2_4 = ((u32) (arg0 & 0xF00) >> 8) & 0xFF;
            temp_t8_2 = &D_8016E750[temp_t0_3];
            temp_f0_4 = (f32) (u32) (arg0 & 0xFF) / 127.0f;
            temp_t8_2->unk_50[temp_a2_4].unk_04 = temp_f0_4;
            if (temp_t8_2->unk_50[temp_a2_4].unk_00 != temp_f0_4) {
                temp_v0_9 = &D_8016E750[temp_t0_3];
                temp_f6 = (f32) phi_a1_4;
                phi_f6 = temp_f6;
                if (phi_a1_4 < 0) {
                    phi_f6 = temp_f6 + 4294967296.0f;
                }
                temp_v0_9->unk_50[temp_a2_4].unk_0C = (u16) phi_a1_4;
                temp_v0_9->unk_50[temp_a2_4].unk_08 = (temp_v0_9->unk_50[temp_a2_4].unk_00 - temp_v0_9->unk_50[temp_a2_4].unk_04) / phi_f6;
                temp_v0_9->unk_252 = temp_v0_9->unk_252 | (1 << temp_a2_4);
            }
            return;
        case 7:
            func_800E5B20(((temp_a3 & 0xFF) << 0x10) | 0x46000000 | (((u32) (arg0 & 0xFF0000) >> 0x10) & 0xFF), (s8) arg0);
            return;
        case 8:
            temp_v0_10 = temp_a3 & 0xFF;
            temp_a2_5 = ((u32) (arg0 & 0xF00) >> 8) & 0xFF;
            if ((D_8016E750[temp_v0_10].unk_258 & (1 << temp_a2_5)) == 0) {
                func_800E5B20(((temp_v0_10 & 0xFF) << 0x10) | 0x6000000 | ((temp_a2_5 & 0xFF) << 8) | (((u32) (arg0 & 0xFF0000) >> 0x10) & 0xFF), (s8) arg0);
            }
            return;
        case 9:
            D_8016E750[temp_a3 & 0xFF].unk_258 = (u16) arg0;
            return;
        case 10:
            temp_a2_6 = arg0 & 0xFFFF;
            phi_v1_9 = temp_a2_6;
            if (temp_a2_6 != 0) {
                temp_v0_11 = (temp_a3 & 0xFF) << 0x10;
                sp30 = temp_v0_11;
                sp34 = temp_a2_6;
                sp38 = temp_a3;
                func_800E5B50(temp_v0_11 | 0x90000000, temp_a2_6 & 0xFFFF);
                func_800E5B20(temp_v0_11 | 0x8000000 | 0xFF00, (u8)1);
                phi_v1_9 = sp34;
            }
            temp_a2_7 = phi_v1_9 ^ 0xFFFF;
            if (temp_a2_7 != 0) {
                temp_v0_12 = ((temp_a3 >> 0x18) & 0xFF) << 0x10;
                func_800E5B50(temp_v0_12 | 0x90000000, temp_a2_7 & 0xFFFF);
                func_800E5B20(temp_v0_12 | 0x8000000 | 0xFF00, (u8)0);
            }
            return;
        case 11:
            D_8016E750[temp_a3 & 0xFF].unk_14 = arg0;
            return;
        case 12:
            if ((((u32) (arg0 & 0xF00000) >> 0x14) & 0xFF) == 0xF) {
                D_8016E750[temp_a3 & 0xFF].unk_4D = 0;
            }
            return;
        case 14:
            temp_v0_14 = ((u32) (arg0 & 0xF00) >> 8) & 0xFF;
            if (temp_v0_14 == 0) {
                func_800E5AFC(0xF0000000U, (u32) *(&D_80133410 + (arg0 & 0xFF)));
            } else if (temp_v0_14 == 1) {
                D_80133408 = (u8) (arg0 & 1);
            }
            return;
        case 15:
            D_801333CC = (s8) ((u32) (arg0 & 0xFF00) >> 8);
            temp_t8_3 = D_80133414;
            D_80133414 = (u8) arg0;
            sp59 = temp_t8_3;
            func_800E5F88(arg0 & 0xFF);
            func_800F71BC(sp59);
            func_800E5AFC(0xF8000000U, 0U);
            return;

    }

    temp_v0_13 = &D_8016E750[temp_a3 & 0xFF];
    temp_v1_13 = temp_v0_13->unk_4D;
    temp_t1_2 = temp_v1_13 & 0xFF;
    if ((s32) temp_v1_13 < 7) {
        temp_v0_13->unk_4D = temp_v1_13 + 1;
        if (temp_t1_2 < 8) {
            temp_v0_13->unk_2C[temp_t1_2] = arg0;
            temp_v0_13->unk_4C = 2;
            return;
            return;
        }
    }
}
#endif
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800F94FC.s")
#endif

void Audio_SetBGM(u32 bgmID) {
    D_8016E350[D_80133400] = bgmID;
    D_80133400++;
}

void func_800FA034(void) {
    while (D_80133400 != D_80133404) {
        func_800F94FC(D_8016E350[D_80133404++]);
    }
}

u16 func_800FA0B4(u8 playerIdx) {
    if (!gAudioContext.gSequencePlayers[playerIdx].enabled) {
        return 0xFFFF;
    }
    return D_8016E750[playerIdx].unk_254;
}

s32 func_800FA11C(u32 arg0, u32 arg1) {
    u8 i;

    for(i = D_80133404; i != D_80133400; i++){
        if(arg0 == (D_8016E350[i] & arg1)){
            return false;
        }
    }

    return true;
}

void func_800FA174(u8 arg0) {
    D_8016E348[arg0] = 0;
}

void func_800FA18C(u8 arg0, u8 arg1) {
    u8 i;

    for(i = 0; i < D_8016E750[arg0].unk_4D; i++){
        u8 unkb  = (D_8016E750[arg0].unk_2C[i] & 0xF00000) >> 0x14;

        if (unkb == arg1) {
            D_8016E750[arg0].unk_2C[i] = 0xFF000000;
        }
    }
}

void func_800FA240(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
    f32 phi_f0;
    u8 i;

    D_8016E750[arg0].unk_0E[arg1] = arg2 & 0x7F;
    if (arg3 != 0) {
        D_8016E750[arg0].unk_13 = 1;
        D_8016E750[arg0].unk_12 = arg3;
        return;
    }

    for(i = 0, phi_f0 = 1.0f; i < 4; i++){
        phi_f0 *= D_8016E750[arg0].unk_0E[i] / 127.0f;
    }

    func_800F94FC((arg0 << 0x18) | 0x40000000 | (arg3 << 0x10) | ((u8)(phi_f0 * 127.0f)));
}

#ifdef NON_MATCHING
void func_800FA3DC(void) {
    u32 sp70;
    s32 temp_a3_2;
    u8 temp_a3_3;
    
    u8 temp_a0;
    u32 temp_a1;
    u8 temp_s0_3;
    u8 temp_s1;
    u8 temp_v0_4;
    u32 temp_v0;
    f32 phi_f0;
    u16 phi_a2;
    u8 phi_t0;
    u8 i;
    u8 j;
    u8 k;
    u32 t;
    u32 t2;

    for(i = 0; i < 4; i++){
        if (D_8016E750[i].unk_260 != 0) {
            temp_v0 = func_800E5E20(&sp70);
            if ((temp_v0 == 1) || (temp_v0 == 2) || (temp_v0 == 3) || (temp_v0 == 4)) {
                D_8016E750[i].unk_260 = 0;
                func_800F94FC(D_8016E750[i].unk_25C);
            }
        }

        if (D_8016E750[i].unk_13 != 0) {
            phi_f0 = 1.0f;
            for(j = 0; j < 4; j++){
                phi_f0 *= (D_8016E750[i].unk_0E[j] / 127.0f);
            }

            Audio_SetBGM(0x40000000 | (i << 0x18) | (D_8016E750[i].unk_12 << 0x10) | ((u8)(phi_f0 * 127.0f) & 0xFFFF));
            D_8016E750[i].unk_13 = 0;
        }

        if (D_8016E750[i].unk_0C != 0) {
            if(0){}
            D_8016E750[i].unk_0C--;
            if (D_8016E750[i].unk_0C != 0) {
                D_8016E750[i].unk_00 -= D_8016E750[i].unk_08;
            } else {
                D_8016E750[i].unk_00 = D_8016E750[i].unk_04;
            }

            func_800E5AD8(0x41000000 | (i & 0xFF) << 0x10, D_8016E750[i].unk_00);
        }
    
        if (D_8016E750[i].unk_14 != 0) {
            t = D_8016E750[i].unk_14;
            phi_t0 = (t & 0xFF0000) >> 0xF;
            phi_a2 = t & 0xFFF;
            if (phi_t0 == 0) {
                phi_t0++;
            }

            if (gAudioContext.gSequencePlayers[i].enabled) {
                temp_v0_4 = (t & 0xF000) >> 0xC;
                temp_a3_2 = gAudioContext.gSequencePlayers[i].tempo / 0x30;
                if(1){}
                t2 = temp_a3_2 & 0xFFFF;
                switch(temp_v0_4){
                    case 1:
                        t2 = phi_a2 + t2;
                        phi_a2 = t2;
                        break;
                    case 2:
                        if ((s32)(u16)(t & 0xFFF) < temp_a3_2) {
                            t2 = temp_a3_2 - D_8016E750[i].unk_14;
                            phi_a2 = t2;
                        }
                        break;
                    case 3:
                        t2 = t2 * ((u16)phi_a2 / 100.0f);
                        phi_a2 = t2;
                        break;
                    case 4:
                        phi_a2 = D_8016E750[i].unk_18 != 0 ? D_8016E750[i].unk_18 : t2;
                        
                        break;

                }
                
                if (phi_a2 > 0x12C) {
                    phi_a2 = 0x12C;
                }
                
                if (D_8016E750[i].unk_18 == 0) {
                    D_8016E750[i].unk_18 = temp_a3_2;
                }
                
                D_8016E750[i].unk_20 = phi_a2;
                D_8016E750[i].unk_1C = temp_a3_2;
                D_8016E750[i].unk_24 = (D_8016E750[i].unk_1C - D_8016E750[i].unk_20) / phi_t0;
                D_8016E750[i].unk_28 = phi_t0;
                D_8016E750[i].unk_14 = 0;
            }
        }
        
        if (D_8016E750[i].unk_28 != 0) {
            D_8016E750[i].unk_28--;
            if (D_8016E750[i].unk_28 != 0) {
                D_8016E750[i].unk_1C = D_8016E750[i].unk_1C - D_8016E750[i].unk_24;
            } else {
                D_8016E750[i].unk_1C = D_8016E750[i].unk_20;
            }
            func_800E5AFC(((i & 0xFF) << 0x10) | 0x47000000, (s32)D_8016E750[i].unk_1C);
        }

        if (D_8016E750[i].unk_252 != 0) {
            for(k = 0; k < 0x10; k++){
                if (D_8016E750[i].unk_50[k].unk_0C != 0) {
                    D_8016E750[i].unk_50[k].unk_0C--;
                    if (D_8016E750[i].unk_50[k].unk_0C != 0) {
                        D_8016E750[i].unk_50[k].unk_00 = D_8016E750[i].unk_50[k].unk_00 - D_8016E750[i].unk_50[k].unk_08;
                    } else {
                        D_8016E750[i].unk_50[k].unk_00 = D_8016E750[i].unk_50[k].unk_04;
                        D_8016E750[i].unk_252 ^= (1 << k);
                    }
                    func_800E5AD8(0x1000000 | ((i & 0xFF) << 0x10) | ((k & 0xFF) << 8), D_8016E750[i].unk_50[k].unk_00);
                }
            }
        }

        if (D_8016E750[i].unk_250 != 0) {
            for(k = 0; k < 0x10; k++){
                if (D_8016E750[i].unk_50[k].unk_1C != 0) {
                    D_8016E750[i].unk_50[k].unk_1C--;
                    if (D_8016E750[i].unk_50[k].unk_1C != 0) {
                        D_8016E750[i].unk_50[k].unk_10 = D_8016E750[i].unk_50[k].unk_10 - D_8016E750[i].unk_50[k].unk_18;
                    } else {
                        D_8016E750[i].unk_50[k].unk_10 = D_8016E750[i].unk_50[k].unk_14;
                        D_8016E750[i].unk_250 ^= (1 << k);
                    }
                    temp_a1 = k;
                    func_800E5AD8(0x4000000 | ((i & 0xFF) << 0x10) | ((temp_a1 & 0xFF) << 8), D_8016E750[i].unk_50[k].unk_10);
                }
            }
        }

        if (D_8016E750[i].unk_4D != 0) {
            if (!func_800FA11C(0xF0000000, 0xF0000000)) {
                D_8016E750[i].unk_4D = 0;
                return;
            }

            if (D_8016E750[i].unk_4C != 0) {
                D_8016E750[i].unk_4C--;
            } else if (!gAudioContext.gSequencePlayers[i].enabled) {
                for(j = 0; j < D_8016E750[i].unk_4D; j++){
                    temp_a0 = (D_8016E750[i].unk_2C[j] & 0xF00000) >> 0x14;
                    temp_s1 = (D_8016E750[i].unk_2C[j] & 0xF0000) >> 0x10;
                    temp_s0_3 = (D_8016E750[i].unk_2C[j] & 0xFF00) >> 8;
                    temp_a3_3 = D_8016E750[i].unk_2C[j] & 0xFF;
                    switch(temp_a0) {
                        case 0:
                            func_800FA240(temp_s1, 1, 0x7F, temp_a3_3);
                            break;
                        case 7:
                            if (temp_a3_3 == D_8016E348[i]) {
                                func_800FA240(temp_s1, 1, 0x7F, temp_s0_3);
                            }
                            break;
                        case 1:
                            Audio_SetBGM(0x30000000 | ((u8)(i) << 0x18) | ((u16)(D_8016E750[i].unk_254)));
                            break;
                        case 2:
                            Audio_SetBGM(((u8)(temp_s1) << 0x18) | 0x10000 | ((u16)(D_8016E750[temp_s1].unk_254)));
                            D_8016E750[temp_s1].unk_13 = 1;
                            D_8016E750[temp_s1].unk_0E[1] = 0x7F;
                            break;
                        case 3:
                            Audio_SetBGM(0xB0003000 | ((u8)(temp_s1) << 0x18) | ((u8)(temp_s0_3) << 0x10) | ((u8)(temp_a3_3)));
                            break;
                        case 4:
                            Audio_SetBGM(0xB0004000 | ((u8)(temp_s1) << 0x18) | ((u8)(temp_a3_3) << 0x10));
                            break;
                        case 5:
                            Audio_SetBGM(((u8)(temp_s1) << 0x18) | ((u16)(D_8016E750[i].unk_2C[j])) | ((u8)(D_8016E750[temp_s1].unk_4E) << 0x10));
                            func_800FA240(temp_s1, 1, 0x7F, 0);
                            D_8016E750[temp_s1].unk_4E = 0;
                            break;
                        case 6:
                            D_8016E750[i].unk_4E = temp_s0_3;
                            break;
                        case 8:
                            func_800FA240(temp_s1, temp_s0_3, 0x7F, temp_a3_3);
                            break;
                        case 14:
                            if (temp_a3_3 & 1) {
                                func_800E5AFC(0xE3000000, 0);
                            }

                            if (temp_a3_3 & 2) {
                                func_800E5AFC(0xE3000000, 1);
                            }

                            if (temp_a3_3 & 4) {
                                func_800E5AFC(0xE3000000, 2);
                            }
                            break;
                        case 9:
                            phi_a2 = D_8016E750[i].unk_2C[j];
                            Audio_SetBGM(0xA0000000 | (((u8)temp_s1) << 0x18) | (phi_a2));
                            break;
                        case 10:
                            Audio_SetBGM(0x50000000 | ((u8)(temp_s1) << 0x18) | ((u8)(temp_s0_3) << 0x10) | ((u16)(temp_a3_3 * 10)));
                            break;
                    }
                }
                D_8016E750[i].unk_4D = 0;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800FA3DC.s")
#endif

extern u8 D_80133418;
extern u8 D_801333CC;

u8 func_800FAD34(void) {
    if (D_80133418 != 0) {
        if (D_80133418 == 1) {
            if (func_800E5EDC() == 1) {
                D_80133418 = 0;
                func_800E5B20(0x46020000, D_801333CC);
                func_800F7170();
            }
        } else if (D_80133418 == 2) {
            while(func_800E5EDC() != 1){ }
            D_80133418 = 0;
            func_800E5B20(0x46020000, D_801333CC);
            func_800F7170();
        }
    }

    return D_80133418;
}

void func_800FADF8(void) {
    u8 i, j;

    for(i = 0; i < 4; i++){
        D_8016E348[i] = 0;
        D_8016E750[i].unk_254 = 0xFFFF;
        D_8016E750[i].unk_256 = 0xFFFF;
        D_8016E750[i].unk_28 = 0;
        D_8016E750[i].unk_18 = 0;
        D_8016E750[i].unk_14 = 0;
        D_8016E750[i].unk_258 = 0;
        D_8016E750[i].unk_4D = 0;
        D_8016E750[i].unk_4E = 0;
        D_8016E750[i].unk_250 = 0;
        D_8016E750[i].unk_252 = 0;
        for(j = 0; j < 4; j++){
            D_8016E750[i].unk_0E[j] = 0x7F;
        }
        D_8016E750[i].unk_12 = 1;
        D_8016E750[i].unk_13 = 1;
    }
}

void func_800FAEB4(void) {
    u8 i, j;

    for(i = 0; i < 4; i++){
        D_8016E750[i].unk_00 = 1.0f;
        D_8016E750[i].unk_0C = 0;
        D_8016E750[i].unk_13 = 0;
        for(j = 0; j < 4; j++){
            D_8016E750[i].unk_0E[j] = 0x7F;
        }    
    }
    func_800FADF8();
}
