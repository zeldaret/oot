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
    func_800E5AFC(MK_CMD(0x83, arg0, 0x00, 0x00),
                  (arg1 * (u16)gAudioContext.gAudioBufferParameters.updatesPerFrame) / 4);
    D_8016E750[arg0].unk_254 = 0xFFFF;
}

extern u32 D_8013340C;
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F9280/func_800F94FC.s")

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

    for (i = D_80133404; i != D_80133400; i++) {
        if (arg0 == (D_8016E350[i] & arg1)) {
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

    for (i = 0; i < D_8016E750[arg0].unk_4D; i++) {
        u8 unkb = (D_8016E750[arg0].unk_2C[i] & 0xF00000) >> 0x14;

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

    for (i = 0, phi_f0 = 1.0f; i < 4; i++) {
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

    for (i = 0; i < 4; i++) {
        if (D_8016E750[i].unk_260 != 0) {
            temp_v0 = func_800E5E20(&sp70);
            if ((temp_v0 == 1) || (temp_v0 == 2) || (temp_v0 == 3) || (temp_v0 == 4)) {
                D_8016E750[i].unk_260 = 0;
                func_800F94FC(D_8016E750[i].unk_25C);
            }
        }

        if (D_8016E750[i].unk_13 != 0) {
            phi_f0 = 1.0f;
            for (j = 0; j < 4; j++) {
                phi_f0 *= (D_8016E750[i].unk_0E[j] / 127.0f);
            }

            Audio_SetBGM(0x40000000 | (i << 0x18) | (D_8016E750[i].unk_12 << 0x10) | ((u8)(phi_f0 * 127.0f) & 0xFFFF));
            D_8016E750[i].unk_13 = 0;
        }

        if (D_8016E750[i].unk_0C != 0) {
            if (0) {}
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
                if (1) {}
                t2 = temp_a3_2 & 0xFFFF;
                switch (temp_v0_4) {
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
            for (k = 0; k < 0x10; k++) {
                if (D_8016E750[i].unk_50[k].unk_0C != 0) {
                    D_8016E750[i].unk_50[k].unk_0C--;
                    if (D_8016E750[i].unk_50[k].unk_0C != 0) {
                        D_8016E750[i].unk_50[k].unk_00 =
                            D_8016E750[i].unk_50[k].unk_00 - D_8016E750[i].unk_50[k].unk_08;
                    } else {
                        D_8016E750[i].unk_50[k].unk_00 = D_8016E750[i].unk_50[k].unk_04;
                        D_8016E750[i].unk_252 ^= (1 << k);
                    }
                    func_800E5AD8(0x1000000 | ((i & 0xFF) << 0x10) | ((k & 0xFF) << 8), D_8016E750[i].unk_50[k].unk_00);
                }
            }
        }

        if (D_8016E750[i].unk_250 != 0) {
            for (k = 0; k < 0x10; k++) {
                if (D_8016E750[i].unk_50[k].unk_1C != 0) {
                    D_8016E750[i].unk_50[k].unk_1C--;
                    if (D_8016E750[i].unk_50[k].unk_1C != 0) {
                        D_8016E750[i].unk_50[k].unk_10 =
                            D_8016E750[i].unk_50[k].unk_10 - D_8016E750[i].unk_50[k].unk_18;
                    } else {
                        D_8016E750[i].unk_50[k].unk_10 = D_8016E750[i].unk_50[k].unk_14;
                        D_8016E750[i].unk_250 ^= (1 << k);
                    }
                    temp_a1 = k;
                    func_800E5AD8(0x4000000 | ((i & 0xFF) << 0x10) | ((temp_a1 & 0xFF) << 8),
                                  D_8016E750[i].unk_50[k].unk_10);
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
                for (j = 0; j < D_8016E750[i].unk_4D; j++) {
                    temp_a0 = (D_8016E750[i].unk_2C[j] & 0xF00000) >> 0x14;
                    temp_s1 = (D_8016E750[i].unk_2C[j] & 0xF0000) >> 0x10;
                    temp_s0_3 = (D_8016E750[i].unk_2C[j] & 0xFF00) >> 8;
                    temp_a3_3 = D_8016E750[i].unk_2C[j] & 0xFF;
                    switch (temp_a0) {
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
                            Audio_SetBGM(0xB0003000 | ((u8)(temp_s1) << 0x18) | ((u8)(temp_s0_3) << 0x10) |
                                         ((u8)(temp_a3_3)));
                            break;
                        case 4:
                            Audio_SetBGM(0xB0004000 | ((u8)(temp_s1) << 0x18) | ((u8)(temp_a3_3) << 0x10));
                            break;
                        case 5:
                            Audio_SetBGM(((u8)(temp_s1) << 0x18) | ((u16)(D_8016E750[i].unk_2C[j])) |
                                         ((u8)(D_8016E750[temp_s1].unk_4E) << 0x10));
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
                            Audio_SetBGM(0x50000000 | ((u8)(temp_s1) << 0x18) | ((u8)(temp_s0_3) << 0x10) |
                                         ((u16)(temp_a3_3 * 10)));
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
#define CMD46(a) (_SHIFTL(0x46, 24, 8) | _SHIFTL(a, 16, 8))
u8 func_800FAD34(void) {
    if (D_80133418 != 0) {
        if (D_80133418 == 1) {
            if (func_800E5EDC() == 1) {
                D_80133418 = 0;
                func_800E5B20(CMD46(2), D_801333CC);
                func_800F7170();
            }
        } else if (D_80133418 == 2) {
            while (func_800E5EDC() != 1) {}
            D_80133418 = 0;
            func_800E5B20(CMD46(2), D_801333CC);
            func_800F7170();
        }
    }

    return D_80133418;
}

void func_800FADF8(void) {
    u8 i, j;

    for (i = 0; i < 4; i++) {
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
        for (j = 0; j < 4; j++) {
            D_8016E750[i].unk_0E[j] = 0x7F;
        }
        D_8016E750[i].unk_12 = 1;
        D_8016E750[i].unk_13 = 1;
    }
}

void func_800FAEB4(void) {
    u8 i, j;

    for (i = 0; i < 4; i++) {
        D_8016E750[i].unk_00 = 1.0f;
        D_8016E750[i].unk_0C = 0;
        D_8016E750[i].unk_13 = 0;
        for (j = 0; j < 4; j++) {
            D_8016E750[i].unk_0E[j] = 0x7F;
        }
    }
    func_800FADF8();
}
