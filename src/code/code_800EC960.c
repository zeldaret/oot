#include <ultra64.h>
#include <global.h>

typedef struct {
    f32 unk_00;
    f32 unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
} unk_s1;
typedef struct {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    s32 unk_0C;
} unk_s2;

void func_800FA240(u8, u8, u8, u8);
void func_800F5550(u16);
void func_800F5E18(u8 arg0, u16 arg1, u8 arg2, s8 arg3, s8 arg4);
u8 *func_800E5E84(s32 arg0, u8 *arg1);
void func_800F4784(unk_s2 *arg0);
void func_800F56A8(void);

extern u8 D_80131880;
extern u8 D_80131858;
extern f32 D_80130F24;
extern u8 D_80130F34;
extern u32 D_80130F28;
extern u8 D_80131F4C[];
extern u32 D_8016BAB8;
extern u8 D_80131F50;

// stick float vals
extern f32      D_8012F6B4[];

extern s32      D_80130EFC;
extern s32      D_80130F00;
extern s32      D_80130F04;
extern s32      D_80130F08;
extern u8       D_80131F64;
extern u8       D_80133408;
extern s8       D_8013060C;
extern u8       D_80130604;
extern s8       D_80130614;
extern f32      D_80130620;
extern s8       D_80130624;
extern u8       D_80131878;
extern s32      D_80130F3C;
extern u8       D_80130F14; // cur note?
extern u8       D_80130F18; // prev note? 
extern u8       D_80130F1C; // note index?
extern u8       D_80130F20;
extern u8       D_80130F0C;
extern u8       D_80130F38;
extern u16      D_80130F48;
extern s8       D_80130F10; // ocarina active?
extern u8       D_80131BF0[];
extern u8       D_80130618;
extern u8       D_8013061C;
extern u8       D_8013063C;
extern u8       D_80130640;
extern u8       D_80130644;
extern u8       D_80130648;
extern s8       D_801306C8[];
extern u8       D_80133414;
extern u8       D_80130610;
extern u8       D_80130600;
extern u8       D_801305F8[];
extern s8       D_80130608;
extern u8       D_801305FF;
extern s32      D_8013064C;
extern u8       D_801305CC;
extern u8       D_8013062C;
extern u8       D_80130630;
extern u8       D_80130658[];
extern u8       D_80133418;
extern u16      D_80130628;
extern s8       D_80130F2C;

extern f32      D_8016B7A8;
extern f32      D_8016B7B0;
extern unk_s2   D_8016B7B8;
extern unk_s2   D_8016B7C8;
extern f32      D_8016B7D8;
extern u8       D_8016B8B0;
extern u8       D_8016B8B1;
extern u8       D_8016B8B2;
extern u8       D_8016B8B3;
extern u8       D_8016B8B4;
extern unk_s1   D_8016B8B8[];
extern u8       D_8016B9D8;
extern u8       D_8016B9F2;
extern u8       D_8016B9F3;
extern u8       D_8016B9F4;
extern u16      D_8016B9F6;

extern s8       D_8016BA08;
extern s8       D_8016BA09;
extern s32      D_8016BA0C; // cur button.
extern s32      D_8016BA10;
extern s32      D_8016BA14;
extern s32      D_8016BA18; // prev button.
extern u8       D_8016BA29; // has played a note?
extern u8       D_8016BAA8;
extern f32      D_8016BAAC;

void func_800EC960(u8 arg0) {
    if (!arg0) {
        osSyncPrintf("AUDIO : Ocarina Control Assign Normal\n");
        D_80130EFC = 0x800F;
        D_80130F00 = 0x8000;
        D_80130F04 = 8;
        D_80130F08 = 4;
    } else {
        osSyncPrintf("AUDIO : Ocarina Control Assign Custom\n");
        D_80130EFC = 0xC007;
        D_80130F00 = 0x4000;
        D_80130F04 = 4;
        D_80130F08 = 0x8000;
    }
}

void PadMgr_RequestPadData(PadMgr* padmgr, Input* inputs, s32 mode);

#ifdef NON_MATCHING
// need to know more about D_8016BA08
void func_800ECA00(void) {
    Input sp20[4];
    s32 pad;
    s32 sp18;

    sp18 = D_8016BA0C;
    PadMgr_RequestPadData(&gPadMgr, &sp20, 0);
    D_8016BA0C = sp20[0].cur.in.button;
    D_8016BA14 = sp18;
    D_8016BA08 = sp20[0].rel.in.x;
    D_8016BA09 = sp20[0].rel.in.y;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800ECA00.s")
#endif

// adju stick input f32
f32 func_800ECA60(s8 inp) {
    s8 inpAdj;
    f32 ret;

    if (inp > 0x40) {
        inpAdj = 127;
    } else if (inp < -0x40) {
        inpAdj = -128;
    } else if (inp >= 0) {
        inpAdj = (inp * 127) / 64;
    } else {
        inpAdj = (inp * 128) / 64;
    }
    ret = D_8012F6B4[inpAdj];
    return ret;
}

u8 func_800ECAF0(void) {
    u8 ret;

    if (D_80131878 != 0) {
        ret = D_80131878 - 1;
        D_80131878 = 0;
    } else if (D_80130F3C != 0) {
        ret = 0xFE;
    } else {
        ret = 0xFF;
    }

    return ret;
}

u8 func_800ECB34(u8 arg0) {
    u8 temp_v1;

    temp_v1 = D_80131BF0[arg0 & 0x3F];
    if (temp_v1 == 5) {
        if (arg0 & 0x80) {
            return 2;
        }
        return 3;
    }
    return temp_v1;
}

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    char unk_03[5];
} unk_s3_00;

typedef struct {
    unk_s3_00 unk_00[20];    
} unk_s3;
extern unk_s3 D_80130F80[];
extern u8 D_80131C00[];
#ifdef NON_MATCHING
void func_800ECB7C(u8 arg0) {
    u8 temp_a0;
    u8 phi_v1;
    u8 phi_v0;

    phi_v1 = 0;
    phi_v0 = 0;
    while(phi_v0 < 8 && phi_v1 < 0x10){
        temp_a0 = D_80130F80[arg0].unk_00[phi_v1].unk_00;
        phi_v1++;
        if (temp_a0 != 0xFF) {
            D_80131C00[109 + phi_v0] = D_80131BF0[temp_a0];
            phi_v0++;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800ECB7C.s")
#endif

extern u8 D_8013170C;
extern u8 D_8016BA2A;
extern u8 D_8016BA2B;
extern u16 D_8016BA2C;
extern u8 D_8013187C;
extern u8 D_8016BA2E; // curSong append idx?
extern u8 D_8016B9F9;
extern u16 D_80130F4C;
extern u16 D_8016BA30[];
extern u16 D_8016BA50[];
extern u16 D_8016BA70[];
extern u8 D_8016BA90[];
extern u8 D_8016BA28; // notes cnt ?

#ifdef NON_MATCHING
void func_800ECC04(u16 arg0) {
    s32 phi_t0;
    u8 i;

    if (D_8013170C != 0xFF) {
        if ((arg0 & 0x0FFF) == 0x0FFF) {
            arg0 |= 0x1000;
        }
    }

    phi_t0 = arg0;

    if (arg0 == 0xCFFF) {
        if (D_8013170C != 0xFF) {
            phi_t0 = 0xDFFF;
            arg0 = 0xDFFF;
        }
    }

    if (phi_t0 == 0xFFF) {
        if (D_8013170C != 0xFF) {
            phi_t0 = 0x1FFF;
            arg0 = 0x1FFF;
        }
    }

    if (phi_t0 != 0xFFFF) {
        D_80130F3C = 0x80000000 + arg0;
        D_8016BA2A = 0;
        D_8016BA2B = 0xE;
        if (phi_t0 != 0xA000) {
            D_8016BA2B--;
        }

        D_8016BA2C = phi_t0 & 0x3FFF;
        D_8013187C = 8;
        D_8016BA29 = 0;
        D_80131878 = 0;
        D_8016BA2E = 0;
        D_8016B9F9 = func_800ECAF0();
        D_80130F0C = 1;
        D_80130F4C = 0;

        for(i = 0; i < 0xE; i++){
            D_8016BA30[i] = 0;
            D_8016BA50[i] = 0;
            D_8016BA70[i] = 0;
            D_8016BA90[i] = 0;
        }

        if (phi_t0 & 0x8000) {
            D_8013187C = 0;
        }

        if (phi_t0 & 0x4000) {
            D_8016BA28 = 0;
        }

        if (phi_t0 & 0xD000) {
            func_800ECB7C(0xC);
        }
    } else {
        D_80130F3C = 0;
        D_80130F0C = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800ECC04.s")
#endif

void func_800ECDBC(void) {
    if (D_80130F14 != 0xFF) {
        if (D_8016BA29 == 0) {
            D_8016BA29 = 1;
            D_80130F20 = 0xFF;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800ECDF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800ED200.s")

#define OCARINA_CUP (0xE)
#define OCARINA_CDOWN (0x5)
#define OCARINA_CLEFT (0xB)
#define OCARINA_CRIGHT (0x9)
#define OCARINA_A (0x2)

#ifdef NON_MATCHING
void func_800ED458(s32 arg0) {
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_a1_3;
    s32 temp_a1_4;
    s32 temp_v0_2;
    s32 temp_v0_3;
    s32 temp_v0_4;
    s32 temp_v1;
    s32 temp_v1_2;
    s8 temp_v0_5;
    u8 temp_a0;
    u8 temp_t5;
    u8 temp_v0;
    u8 temp_v1_3;
    u8 temp_v1_4;
    u8 phi_v0;
    u8 phi_v1;
    s32 phi_v1_2;
    u8 phi_v0_2;

    if (D_80130F3C != 0) {
        if (D_80131880 != 0) {
            D_80131880--;
            return;
        }
    }

    if ((D_8016BA10 == 0) || ((D_80130EFC & D_8016BA0C) != (D_80130EFC & D_8016BA10))) {
        D_8016BA10 = 0;
        D_80130F14 = 0xFF;
        D_80130F1C = 0xFF;
        if (!(D_8016BA18 & (D_8016BA0C & D_80130EFC & D_8016BA14 & D_80130EFC)) && (D_8016BA0C != 0)) {
            D_8016BA18 = D_8016BA0C;
        } else {
            D_8016BA18 = D_8016BA18 & (D_8016BA0C & D_80130EFC & D_8016BA14 & D_80130EFC);
        }

        if (D_8016BA18 & D_80130F00) {
            osSyncPrintf("Presss NA_KEY_D4 %08x\n", D_80130F00);
            D_80130F14 = 2;
            D_80130F1C = 0;
        } else if (D_8016BA18 & D_80130F08) {
            osSyncPrintf("Presss NA_KEY_F4 %08x\n", D_80130F08);
            D_80130F14 = 5;
            D_80130F1C = 1;
        } else if (D_8016BA18 & 1) {
            osSyncPrintf("Presss NA_KEY_A4 %08x\n", 1);
            D_80130F14 = 9;
            D_80130F1C = 2;
        } else if (D_8016BA18 & 2) {
            osSyncPrintf("Presss NA_KEY_B4 %08x\n", 2);
            D_80130F14 = 0xB;
            D_80130F1C = 3;
        } else if (D_8016BA18 & D_80130F04) {
            osSyncPrintf("Presss NA_KEY_D5 %08x\n");
            D_80130F14 = 0xE;
            D_80130F1C = 4;
        }

        if ((D_80130F14 != 0xFF) && (D_8016BA0C & 0x10) && (D_80131858 != 2)) {
            D_80130F14++;
            D_80130F1C += 0x80;
        }

        if ((D_80130F14 != 0xFF) && (D_8016BA0C & 0x2000) && (D_80131858 != 2)) {
            D_80130F14 = D_80131858 - 1;
            D_80130F1C += 0x40;;
        }
        if (D_80131858 != 2) {
            D_80130F2C = D_8016BA09;
            D_80130F24 = func_800ECA60(D_80130F2C);
            D_80130F34 = (D_8016BA08 < 0 ? -D_8016BA08 : D_8016BA08)  >> 2;
            func_800E5B20(0x6020D06, D_80130F34);
        } else {
            D_80130F2C = 0;
            D_80130F24 = 1.0f;
        }

        if ((D_80130F14 != 0xFF) && (D_80130F14 != D_80130F18)) {
            func_800E5B20(0x6020D07, D_80130F10 - 1);
            func_800E5B20(0x6020D05, D_80130F14);
            Audio_PlaySoundGeneral(0x5800, &D_801333D4, 4, &D_80130F24, &D_80130F28, &D_801333E8);
        } else if ((D_80130F18 != 0xFF) && (D_80130F14 == 0xFF)) {
            func_800F8D04(0x5800);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800ED458.s")
#endif

void func_800ED848(u8 arg0) {
    D_80130F0C = arg0;
}

void func_800ED858(u8 arg0) {
    if (D_80130F10 != arg0) {
        Audio_SetBGM(arg0 | 0x82010D00);
        D_80130F10 = arg0;
        if (arg0 == 0) {
            D_8016BA0C = 0;
            D_8016BA14 = 0;
            D_8016BA18 = 0;
            D_8016BA10 = 0xFFFF;
            func_800ED458(0);
            func_800F8D04(0x5800);
            func_800F7260(0);
            D_80130F38 = 0;
            D_80130F48 = 0;
            D_80130F0C = 0;
            D_80130F3C = 0;
            func_800F731C(0xD);
            return;
        }
        D_8016BA0C = 0;
        func_800ECA00();
        D_8016BA10 = D_8016BA0C;
        func_800F72B8(0xD);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800ED93C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EDA3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EDD68.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EE170.s")

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
} unk_s5;
extern unk_s5 D_8016BA00;

extern unk_s5 D_8016B9FC;
extern void *D_80131840;
extern UNK_TYPE D_80131884;
extern u8 D_80130F50;
extern unk_s5 D_8016B9F8;

void func_800EE29C(void) {
    D_8016BA00.unk_01 = D_80131858;
    D_8016BA00.unk_02 = D_8016BA2E;
    if (D_80131858 == 0xFF) {
        D_80131858 = 0;
    }
}

void func_800EE2D4(void) {
    D_8016B9F8.unk_00 = D_80130F1C & 0x3F;
    D_8016B9F8.unk_01 = func_800ECAF0();
    D_8016B9F8.unk_02 = D_8016BA2E;
}

void func_800EE318(void) {
    s32 temp_t1;
    s32 temp_t2;
    u16 temp_v0;
    u8 temp_a0;
    s32 phi_t2;

    if ((D_80130F50 & 0x3F) < 0x10) {
        D_8016B9FC.unk_00 = func_800ECB34(D_80130F50);
    }
    
    D_8016B9FC.unk_01 = D_80130F38;

    if (D_80131840 != &D_80131884) {
        D_8016B9FC.unk_02 = D_80130F48;
    } else if(D_80130F48 == 0) {
        D_8016B9FC.unk_02 = 0;
    } else {
        D_8016B9FC.unk_02 = ((D_80130F48 - 1) % 8) + 1;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EE3C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EE3D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EE3F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EE404.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EE57C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EE5EC.s")

extern s32 D_8016BA04;
extern s32 D_80130F68;
void func_800EE6F4(void) {
    D_8016BA04 = gAudioContext.unk_289C;
    if (D_80130F10 != 0) {
        if (D_80130F0C == 1) {
            func_800ECA00();
        }
        if ((D_80130F38 == 0) && (D_80130F0C == 1)) {
            func_800ED458(0);
        }
        if (D_80130F3C != 0) {
            if ((D_80130F3C & 0x4000) != 0) {
                func_800ED200();
            } else {
                func_800ECDF8();
            }
        }
        func_800EDA3C();
        D_80130F68 = D_8016BA04;
        if (D_80130F38 == 0) {
            func_800EE404();
        }
        if ((D_80130F3C != 0) && (D_80130F18 != D_80130F14)) {
            D_80131880 = 1;
        }
        D_80130F18 = D_80130F14;
    }
    func_800EE2D4();
    func_800EE318();
    func_800EE29C();
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EE824.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EE930.s")

extern u32 D_8016BAB0;
extern u32 D_8016BAB4;

void func_800EE97C(void) {
    Input sp20[4];
    u32 btn;

    PadMgr_RequestPadData(&gPadMgr, &sp20, 0);
    btn = sp20[3].cur.in.button;
    D_8016BAB0 = btn & 0xFFFF;
    D_8016BAB8 = (btn ^ D_8016BAB4) & btn;
    D_8016BAB4 = btn;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EE9D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800EEA50.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F1BDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F2150.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F227C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F2464.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F27A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F28AC.s")

void func_800F28B4(void) {
    if (D_8016BAB8 & 0x800) {
        if (D_80131F50 > 0) {
            D_80131F50--;
        } else {
            D_80131F50 = 1;
        }
    }

    if (D_8016BAB8 & 0x400) {
        if (D_80131F50 <= 0) {
            D_80131F50++;
        } else {
            D_80131F50 = 0;
        }
    }

    if (D_8016BAB8 & 0x200) {
        D_80131F4C[D_80131F50]--;
        if (D_80131F50 == 1) {
            func_800F5E90(D_80131F4C[1]);
            ; // might be a fake match? 
        }
    }

    if (D_8016BAB8 & 0x100) {
        D_80131F4C[D_80131F50]++;
        if (D_80131F50 == 1) {
            func_800F5E90(D_80131F4C[1]);
        }
    }

    if (D_8016BAB8 & 0x8000) {
        func_800E5B20(0x46000000, D_80131F4C[1]);
        Audio_SetBGM(D_80131F4C[0] | 0x10000);
    }

    if (D_8016BAB8 & 0x4000) {
        Audio_SetBGM(0x100100FF);
    }
}

void func_800F29FC(void) {
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F2A04.s")

typedef struct {
    u8 unk_00[6];
    u16 unk_06;
} unk_s4;
extern unk_s4 D_8016B7E8[];
extern u8 D_80131ED4;
extern u8 D_80131ED8;

#ifdef NON_MATCHING
void func_800F2D6C(s8 *arg0, u16 arg1) {
    u8 i;

    D_8016B7E8[D_80131ED4].unk_06 = arg1;

    i = 0;
    while(arg0[i] != 0){
        D_8016B7E8[D_80131ED4].unk_00[i] = arg0[i];
        i++;
    }
    
    while(i < 5){
        D_8016B7E8[D_80131ED4].unk_00[i] = 0;    
        i++;
    }

    if (D_80131ED4 < 0x18) {
        D_80131ED4++;
        return;
    }

    D_80131ED4 = 0;
    D_80131ED8 = 1;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F2D6C.s")
#endif

extern u8 D_80131C98;
extern u8 D_80131C9C;
extern u8 D_80131CA0;
extern u8 D_80131CA8;
extern u16 D_80131E08[];
extern u8 D_8013340C;
extern u8 D_80131EEE;
void func_800F1BDC(void);
void func_800F2150(void);
void func_800F227C(void);
void func_800F2464(void);
void func_800F27A0(void);
void func_800F28AC(void);
void func_800F2A04(void);

void func_800F2E28(void) {
    if (D_80131C98 != 0) {
        if (D_80131C9C != 0) {
            func_800F7260((u16)0x6FU);
        }

        if ((D_8016BAB8 & 0x20) != 0) {
            if (D_80131CA0 < 0xE) {
                D_80131CA0++;
            } else {
                D_80131CA0 = 0;
            }
        }
        if ((D_8016BAB8 & 0x10) != 0) {
            if (D_80131CA0 > 0) {
                D_80131CA0--;
            } else {
                D_80131CA0 = 0xE;
            }
        }
        if ((D_8016BAB8 & 0x2000) != 0) {
            D_80131CA8++;
            D_80131CA8 &= 7;
        }
        
        switch(D_80131CA0){
            case 0:
                if ((D_8016BAB8 & 0x8000) != 0) {
                    D_80131E08[5] ^= 0x1;
                    Audio_SetBGM(D_80131E08[5] | 0xE0000100);
                    if (func_800FA0B4(0) != 1) {
                        Audio_SetBGM(0x100000FFU);
                    }
                    Audio_SetBGM(0x110000FFU);
                    Audio_SetBGM(0x130000FFU);
                }
                if ((D_8016BAB8 & 0x4000) != 0) {
                    D_80131C9C ^= 0x1;
                    if (D_80131C9C == 0) {
                        func_800F7260(0);
                    }
                }
                break;
            case 1:
                func_800F1BDC();
                break;
            case 7:
                func_800F2150();
                break;
            case 13:
                func_800F227C();
                break;
            case 8:
                func_800F2464();
                break;
            case 5:
                func_800F27A0();
                break;
            case 3:
                func_800F28AC();
                break;
            case 9:
                func_800F28B4();
                break;
            case 11:
                func_800F29FC();
                break;
            case 12:
                func_800F2A04();
                break;
            case 14:
            default:
                break;
        }

        D_8013340C = D_80131EEE;
    }
}

extern u32 D_8016B7A0;
extern u32 D_8016B7A4;
extern s32 D_8016BABC;
extern s32 D_8016BAC0;

void func_800F50CC(void);
void func_800F4A70(void);
void func_800F5CF8(void);

void func_800F3054(void) {
    if (func_800FAD34() == 0) {
        D_8016BABC = gAudioContext.unk_289C;
        D_8016B7A0 = osGetTime();
        func_800EE6F4();
        func_800F4784(&D_8016B7B8);
        func_800F4784(&D_8016B7C8);
        func_800F4A70();
        func_800F56A8();
        func_800F5CF8();
        if (D_80133414 == 7) {
            func_800F50CC();
        }
        func_800F8E3C();
        func_800FA034();
        func_800F8F88();
        func_800FA3DC();
        func_800EE97C();
        func_800F2E28();
        func_800E5B80();
        D_8016BAC0 = gAudioContext.unk_289C;
        D_8016B7A4 = osGetTime();
    }
}

void func_800F3138(UNK_TYPE arg0) {
}

void func_800F3140(UNK_TYPE arg0, UNK_TYPE arg1) {
}

void func_800E5AFC(u32, u32);

#ifdef NON_MATCHING
void func_800F314C(u16 arg0) {
    func_800E5AFC(0x82000000 | ((arg0 & 0x00FF) << 8), 1);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F314C.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F3188.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F32F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F3468.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F35EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F37B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F3990.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F3A08.s")

void func_800F3ED4(void) {
    u8 i;
    unk_s1* t;

    for(i = 0; i < 16; i++){
        t = &D_8016B8B8[i];
        t->unk_00 = 1.0f;
        t->unk_04 = 1.0f;
        t->unk_08 = 0;
        t->unk_09 = 0x40;
        t->unk_0A = 0;
        t->unk_0B = 0xFF;
        t->unk_0C = 0xFF;
    }

    D_8016B8B8[0xD].unk_0C = 0;
    D_8013061C = 0;
    D_80130618 = 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F3F3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F3F84.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F4010.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F4138.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F4190.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F41E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F4254.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F436C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F4414.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F44EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F4524.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F4578.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F45D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F4634.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F46E0.s")

void func_800F4784(unk_s2 *arg0) {
    if (arg0->unk_0C != 0) {
        arg0->unk_0C--;
        if (arg0->unk_0C != 0) {
            arg0->unk_00 = arg0->unk_00 + arg0->unk_08;
        } else {
            arg0->unk_00 = arg0->unk_04;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F47BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F47FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F483C.s")

#ifdef NON_MATCHING
void func_800F4870(u8 arg0) {
    s32 sp28;
    s32 temp_s0;
    s32 temp_v0;
    u8 phi_s0;
    s8 phi_s1;

    phi_s1 = 0;
    if(arg0 == 0){
        phi_s1 = 0x7F;
    }
    phi_s0 = 0;
    while(phi_s0 < 16){
        func_800E5B20(0x7000000 | ((phi_s0 & 0xFF) << 8), phi_s1);
        phi_s0++;
    }

    if (arg0 == 7) {
        D_80130600 = 2;
    } else {
        func_800F491C(D_801305F8[arg0 & 7]);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F4870.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F491C.s")

void func_800F4A54(u8 arg0) {
    D_8016B8B0 = arg0;
    D_8016B8B2 = 1;
}

void func_800F4A70(void) {
    if (D_8016B8B2 == 1) {
        if (D_8016B8B1 != D_8016B8B0) {
            func_800FA240(0, 0, D_8016B8B0, 0xA);
            D_8016B8B1 = D_8016B8B0;
            D_8016B8B3 = 1;
        }
        D_8016B8B2 = 0;
    } else if (D_8016B8B3 == 1 && D_80130608 == 0) {
        func_800FA240(0, 0, 0x7F, 0xA);
        D_8016B8B1 = 0x7F;
        D_8016B8B3 = 0;
    }
    
    if(D_80130600 != 0)
    {
        D_80130600--;
        if(D_80130600 == 0){
            func_800F491C(D_801305FF);
        }
    }
}

void func_800F4B58(Vec3f *arg0, u16 arg1, u8* arg2) {
    Audio_PlaySoundGeneral(arg1, arg0, 4, &gNoteFrequencies[arg2[D_801305CC] + 39], &D_801333E0, &D_801333E8);
    
    if (D_801305CC < 15) {
        D_801305CC++;
    }
}

void func_800F4BE8(void) {
    D_801305CC = 0;
}

void func_800F4BF4(Vec3f *arg0, u16 arg1, s8 arg2) {
    Audio_PlaySoundGeneral(arg1, arg0, 4, &gNoteFrequencies[arg2 + 39], &D_801333E0, &D_801333E8);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F4C58.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F4E30.s")


void func_800F50CC(void) {
    if (D_8013064C != 0) {
        D_8013064C = 0;
    }
}

void *func_800F50EC(s32 arg0) {
    if (D_8013064C == arg0) {
        D_8013064C = 0;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F510C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F52A0.s")

void func_800F5504(void) {
    D_8013064C = 0;
}

void func_800F5510(u16 arg0) {
    func_800F5550(arg0);
    func_800F5E18(0, arg0, 0, 0, 1);
}


#ifdef NON_MATCHING
void func_800F5550(u16 arg0) {
    u8 sp27;
    s32 sp20;
    s32 temp_v1;
    s32 temp_v1_2;
    u8 temp_v0;
    u8 phi_v0;
    s8 phi_v1;

    sp27 = 0;
    if (func_800FA0B4(0) != 0x4C) {
        if (func_800FA0B4(3) == 0x2F) {
            func_800F9474(3, 0);
            func_800E5AFC(0xF8000000, 0);
        }
        if ((D_80130658[D_80130630] & 0x20) && (D_80130658[arg0] & 0x10)) {

            if ((D_8013062C & 0x3F) != 0) {
                sp27 = 0x1E;
            }
            func_800F5E18(0, arg0, sp27, 7, arg0);
            D_8013062C = 0;
        } else {
            func_800F5E18(0, arg0, 0, 7, D_80130658[arg0] & 0x40 ? 1 : 0xFF);
            if (!(D_80130658[arg0] & 0x20)) {
                D_8013062C = 0xC0;
            }
        }
        D_80130630 = arg0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F5550.s")
#endif

void func_800F56A8(void) {
    u16 temp_v0;
    u8 bvar;

    temp_v0 = func_800FA0B4(0);
    bvar = temp_v0 & 0xFF;
    if ((temp_v0 != 0xFFFF) && ((D_80130658[bvar] & 0x10) != 0)) {
        if (D_8013062C != 0xC0) {
            D_8013062C = gAudioContext.gSequencePlayers->unk_158[3];
        } else {
            D_8013062C = 0;
        }
    }
}

void func_800F5718(void) {
    if (func_800FA0B4(0) != 0x4C) {
        Audio_SetBGM(0x4C);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F574C.s")

void func_800F5918(void) {
    if (func_800FA0B4(0) == 0x6C) {
        if (func_800FA11C(0, 0xF0000000) != 0) {
            Audio_SetBGM(0xB00500D2);
        }
    }
}

#ifdef NON_MATCHING
void func_800F595C(u16 arg0) {
    if (D_80130658[(u8)arg0] & 2) {
        func_800F5C64(arg0);
    } else if (D_80130658[(u8)arg0] & 4) {
        Audio_SetBGM(0x1000000 | arg0);
        
    } else {
        func_800F5E18(0, arg0, 0, 7, -1);
        Audio_SetBGM(0x110000FF);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F595C.s")
#endif

#ifdef NON_MATCHING
void func_800F59E8(u16 arg0x) {
    u8 arg0 = arg0x;
    if (D_80130658[arg0] & 2) {
        Audio_SetBGM(0x110000FF);
    } else if (D_80130658[arg0] & 4) {
        Audio_SetBGM(0x110000FF);
    } else {
        Audio_SetBGM(0x100000FF);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F59E8.s")
#endif

#ifdef NON_MATCHING
s32 func_800F5A58(u8 arg0) {
    s32 sp18;
    s32 temp_v1;
    u8 temp_v0;
    u8 phi_a1;
    u8 phi_return;

    phi_a1 = !(D_80130658[arg0] & 2) || D_80130658[arg0] & 4 ? 1 : 0;

    phi_return = 0;
    if (func_800FA0B4(phi_a1) == arg0) {
        phi_return = 1;
    }
    
    return phi_return;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F5A58.s")
#endif

#ifdef NON_MATCHING
void func_800F5ACC(u16 arg0) {
    u8 temp_a0;
    u16 temp_v0;

    temp_a0 = temp_v0 = func_800FA0B4(0);
    if (temp_a0 != 0x2E && temp_a0 != 0x62 && arg0 != temp_v0) {
        func_800F5E90(3);
        if (temp_v0 != 0xFFFF) {
            D_80130628 = temp_v0;
        } else {
            osSyncPrintf("Middle Boss BGM Start not stack \n");
        }
        Audio_SetBGM(arg0 & 0xFFFFFFFF);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F5ACC.s")
#endif

void func_800F5B58(void) {
    if (func_800FA0B4(0) != 0xFFFF) {
        if (D_80130628 != 0xFFFF) {
            if (D_80130658[func_800FA0B4(0) & 0xFF] & 8) {
                if (D_80130628 == 0xFFFF) {
                    Audio_SetBGM(0x100000FF);
                } else {
                    Audio_SetBGM(D_80130628 & 0xFFFFFFFF);
                }
                D_80130628 = 0xFFFF;
            }
        }
    }
}

void func_800F5BF0(u8 arg0) {
    u16 temp_v0;

    temp_v0 = func_800FA0B4(0);
    if (temp_v0 != 1) {
        D_80130628 = temp_v0;
    }
    func_800F6FB4(arg0);
}

void func_800F5C2C(void) {
    if (D_80130628 != 0xFFFF) {
        u32 t = D_80130628;
        Audio_SetBGM(t);
    }
    D_80130628 = 0xFFFF;
}

void func_800F5C64(u16 arg0) {
    u16 sp26;
    s32 sp20;
    u8 *sp1C;
    u8 *sp18;

    sp26 = func_800FA0B4(1);
    sp1C = func_800E5E84(sp26 & 0xFF, &sp20);
    sp18 = func_800E5E84(arg0 & 0xFF, &sp20);
    if ((sp26 == 0xFFFF) || (*sp1C == *sp18)) {
        D_8016B9F4 = 1;
    } else {
        D_8016B9F4 = 5;
        Audio_SetBGM(0x110000FF);
    }
    D_8016B9F6 = arg0;
}

void func_800F5CF8(void) {
    u16 sp26;
    u16 sp24;
    u16 sp22;

    if (D_8016B9F4 != 0) {
        D_8016B9F4--;
        if (D_8016B9F4 == 0) {
            func_800E5AFC(0xE3000000, 0);
            func_800E5AFC(0xE3000000, 1);
            func_800FA0B4(0);
            sp26 = func_800FA0B4(1);
            sp22 = func_800FA0B4(3);
            if (sp26 == 0xFFFF) {
                func_800FA240(0, 1, 0, 5);
                func_800FA240(3, 1, 0, 5);
                Audio_SetBGM(0xC180010A);
                Audio_SetBGM(0xC183010A);
                Audio_SetBGM(0xC1900000);
                if (sp22 != 0x2F) {
                    Audio_SetBGM(0xC1930000);
                }
            }
            Audio_SetBGM(D_8016B9F6 | 0x1010000);
            Audio_SetBGM(0xA000FFFF);
            if (sp22 != 0x2F) {
                Audio_SetBGM(0xA300FFFF);
            }
        }
    }
}

void func_800F5E18(u8 arg0, u16 arg1, u8 arg2, s8 arg3, s8 arg4) {
    Audio_SetBGM(0x70000000 | (arg0 << 0x18) | ((arg3 & 0xFF) << 0x10) | (u8)arg4);
    Audio_SetBGM((arg0 << 0x18) | (arg2 << 0x10) | arg1);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F5E90.s")

void func_800F6114(f32 arg0) {
    f32 phi_f0;

    if (D_8013061C == 0x81) {
        if (arg0 != D_80130620) {
            if (arg0 < 150.0f) {
                phi_f0 = 0.0f;
            } else if (arg0 > 500.0f) {
                phi_f0 = 350.0f;
            } else {
                phi_f0 = arg0 - 150.0f;
            }

            D_80130624 = ((350.0f - phi_f0) * 127.0f) / 350.0f;
            func_800FA240(3, 3, D_80130624, 0xA);
            if (D_8016E750[0].unk_254 != 1) {
                func_800FA240(0, 3, (0x7F - D_80130624), 0xA);
            }
        }
        if (D_8016E750[0].unk_254 != 1) {
            func_800F510C(D_80130624);
        }
    }
    D_80130620 = arg0;
}

#ifdef NON_MATCHING
void func_800F6268(f32 arg0, u16 arg1) {
    s32 pad;
    s8 temp_a0;
    s8 phi_v1;

    D_8016BAA8 = 1;
    D_8016BAAC = arg0;
    if (D_8016B9F2 == 0) {
        temp_a0 = func_800FA0B4(0) & 0xFFFF;
        if (temp_a0 == (arg1 & 0x00FF)) {
            if ((arg1 & 0x00FF) == 0x2F) {
                if (2000.0f < arg0) {
                    phi_v1 = (u8)0x7F;
                } else if (arg0 < 200.0f) {
                    phi_v1 = (u8)0;
                } else {
                    phi_v1 = ((arg0 - 200.0f) * 127.0f) / 1800.0f;
                }
                Audio_SetBGM((0x7F - phi_v1) | 0x60030000);
                Audio_SetBGM((0x7F - phi_v1) | 0x60030100);
                Audio_SetBGM((phi_v1 & 0x00FF) | 0x60030D00);
                if (D_8016B9D8 == 0) {
                    D_8016B9D8++;
                }
            }
        } else if ((temp_a0 == 1) && ((arg1 & 0x00FF) == 0x2F)) {
            if (((arg1 & 0x00FF) != (s8)func_800FA0B4(3)) && (D_8016B9D8 < 0xA)) {
                func_800F5E18(3, 0x2F, 0, 0, 0);
                Audio_SetBGM(0xA300FFFC);
                D_8016B9D8 = 0xA;
            }

            if (arg0 > 2000.0f) {
                phi_v1 = 0x7F;
            } else if (arg0 < 200.0f) {
                phi_v1 = 0;
            } else {
                phi_v1 = ((arg0 - 200.0f) * 127.0f) / 1800.0f;
            }
            Audio_SetBGM((0x7F - phi_v1) | 0x63030000);
            Audio_SetBGM((0x7F - phi_v1) | 0x63030100);
        }

        if (D_8016B9D8 < 0xA) {
            D_8016B9D8++;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F6268.s")
#endif

void func_800F64E0(u8 arg0) {
    D_80130608 = arg0;
    if (arg0 != 0) {
        Audio_PlaySoundGeneral(0x4800, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800E5AFC(0xF1000000, 0);
    } else {
        Audio_PlaySoundGeneral(0x4801, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        func_800E5AFC(0xF2000000, 0);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F6584.s")

void func_800F66C0(s8 arg0) {
    D_80130614 = arg0 & 0x7F;
}

void func_800F66DC(s8 arg0) {
    if (arg0 != 0) {
        D_80130618 = arg0 & 0x7F;
    }
}

#ifdef NON_MATCHING
void func_800F6700(s8 arg0) {
    u8 sp1F;

    switch(arg0){
        case 0:
            sp1F = 0;
            D_80130604 = 0;
            break;
        case 1:
            sp1F = 3;
            D_80130604 = 3;
            break;
        case 2:
            sp1F = 1;
            D_80130604 = 1;
            break;
        case 3:
            sp1F = 0;
            D_80130604 = 2;
            break;
    }

    Audio_SetBGM(sp1F | 0xE0000000);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F6700.s")
#endif

void func_800F67A0(u8 arg0) {
    if (D_8013063C != arg0) {
        if (arg0 == 0) {
            func_800F8D04(0x86B);
        } else if (D_8013063C == 0) {
            Audio_PlaySoundGeneral(0x86B, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        }
    }
    D_8013063C = arg0;
    D_80130644 = arg0;
}

void func_800F6828(u8 arg0) {
    u32 t;
    u8 i;

    D_80130648 = arg0;
    D_80130640 = arg0;
    if (D_8016E750[0].unk_254 == 1) {
        for(i = 0; i < 16; i++){
            t = i;
            func_800E5B20(((t & 0xFF) << 8) | 0x6000000 | 6, arg0);
        }
    }
}

void func_800F68BC(s8 arg0) {
    D_8013060C = arg0;
}

void func_800F68D4(u16 arg0, Vec3f *arg1, u8 arg2, u32 *arg3, u32* arg4, u32* arg5) {
    if (D_8013060C == 0) {
        Audio_PlaySoundGeneral(arg0, arg1, arg2, arg3, arg4, arg5);
    }
}

void func_800F691C(u16 arg0) {
    func_800F68D4(arg0, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F6964.s")

void func_800F6AB0(u16 arg0) {
    Audio_SetBGM(((arg0 & 0xFF) << 0x10) | 0x100000FF);
    Audio_SetBGM(((arg0 & 0xFF) << 0x10) | 0x110000FF);
    Audio_SetBGM(((arg0 & 0xFF) << 0x10) | 0x130000FF);
    func_800FA240(0, 3, 0x7F, 0);
    func_800FA240(0, 1, 0x7F, 0);
}

void func_800F6B3C(void) {
    func_800F9280(2, 0, 0xFF, 5);
}

void func_800F6B68(void) {
    func_800E5AFC(0x83000000, 0);
    func_800E5AFC(0x83010000, 0);
    func_800E5AFC(0x83020000, 0);
    func_800E5AFC(0x83030000, 0);
    func_800E5B80();
}

s8 func_800F6BB8(void) {
    return func_800E6680();
}

void func_800F6BDC(void) {
    func_800F6B68();
    func_800E5B80();
    while(true){
        if(!func_800F6BB8()){
            return; 
        }
    }
}

void func_800F6C14(void) {
    func_800E6024();
}

// probably some kind of init ?
void func_800F6C34(void) {
    D_8013061C = 0;
    D_8016B7A8 = 1.0f;
    D_8016B7B0 = 1.0f;
    D_8013063C = 0;
    D_80130640 = 0;
    D_80130644 = 0;
    D_80130648 = 0;
    func_800ED858(0);
    D_8016B7B8.unk_0C = 0;
    D_8016B7C8.unk_0C = 0;
    D_8016B7B8.unk_00 = 1.0f;
    D_8016B7C8.unk_00 = 1.0f;
    D_8016B7D8 = 1.0f;
    D_8016B8B0 = 0x7F;
    D_8016B8B1 = 0x7F;
    D_8016B8B2 = 0;
    D_8016B8B3 = 0;
    D_8016B8B4 = 0xFF;
    D_8016B9D8 = 0;
    D_80130610 = D_801306C8[D_80133414];
    D_80130608 = 0;
    D_80130628 = 0xFFFF;
    func_800E5B20(0x46000000, -1);
    D_8013064C = 0;
    D_8016B9F4 = 0;
    D_8016B9F3 = 1;
    D_8016B9F2 = 0;
}

#ifdef NON_MATCHING
void func_800F6D58(u8 arg0, u8 arg1, u8 arg2) {
    s32 sp34;
    s32 temp_a0;
    s32 temp_s0;
    s32 temp_s0_2;
    u8 temp_s1;
    u8 temp_s2;
    s32 temp_v0;
    s32 phi_v1;
    s32 phi_a1;
    s32 phi_s1;
    s32 phi_s0;

    temp_s1 = arg0 & 0xFF;
    temp_s2 = arg1 & 0xFF;
    if ((D_8016E750[0].unk_254 != 1) && (func_800FA11C(1, 0xF00000FF) != 0)) {
        D_80131F64 = 1;
        return;
    }

    phi_a1 = temp_s2;
    if (((temp_s1 << 8) + temp_s2) == 0x101) {
        sp34 = temp_s2;
        phi_a1 = sp34;
        if (func_800FA0B4(3) != 0x2F) {
            D_8016B9D8 = (u8)0U;
            phi_a1 = sp34;
        }
    }
    temp_v0 = temp_s1 >> 4;
    temp_a0 = temp_s1 & 0xF;
    phi_v1 = temp_v0 & 0xFF;
    if ((temp_v0 & 0xFF) == 0) {
        phi_v1 = temp_a0 & 0xFF;
    }
    temp_s0 = phi_v1 & 0xFF;
    if ((temp_a0 & 0xFF) >= phi_v1) {
        phi_s1 = temp_s0;
        phi_s0 = temp_s0;
loop_10:
        Audio_SetBGM((phi_a1 << 0x10) | 0x80000000 | (phi_s1 << 8) | arg2);
        temp_s0_2 = (phi_s0 + 1) & 0xFF;
        phi_s1 = temp_s0_2;
        phi_s0 = temp_s0_2;
        if ((temp_a0 & 0xFF) >= temp_s0_2) {
            goto loop_10;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F6D58.s")
#endif

#ifdef NON_MATCHING
void func_800F6E7C(u16 arg0, u16 arg1) {
    u8 phi_s0;
    u8 t;
    u8 i;

    if (func_800FA0B4(0) == 0x4C) {
        func_800F3F3C(0xF);
        return;
    }

    Audio_SetBGM(0x70000001);
    Audio_SetBGM(0x70040000 | ((arg0 >> 8) & 0xFF));
    t = arg0 & 0x00FF;
    Audio_SetBGM(0x70050000 | t);
    func_800FA240(0, 0, 0x7F, 1);

    i = 0;
    if (D_80133408 != 0) {
        Audio_SetBGM(0xE0000100);
        i = 1;
    }

    Audio_SetBGM(1);
    
    if (i != 0) {
        Audio_SetBGM(0xE0000101);
    }

    for(i = 0; i < 16; i++){
        if(!(arg1 & (1 << i)) && (arg0 & (1 << i))){
            Audio_SetBGM((i << 8) | 0x80010000 | 1);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F6E7C.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800EC960/func_800F6FB4.s")

void func_800F70F8(void) {
    func_800E3094(0, 0);
}

void func_800F711C(void) {
    func_800F6C34();
    func_800EE930();
    func_800F3ED4();
    func_800FAEB4();
    func_800F905C();
    func_800F9280(2, 0, 0x70, 0xA);
}

void func_800F7170(void) {
    func_800F9280(2, 0, 0x70, 1);
    func_800E5AFC(0xF2000000, 1);
    func_800E5B80();
    func_800E5AFC(0xF8000000, 0);
}

void func_800F71BC(s32 arg0) {
    D_80133418 = 1;
    func_800F6C34();
    func_800EE930();
    func_800F3ED4();
    func_800FADF8();
    func_800F905C();
}

void func_800F7208(void) {
    func_800FADF8();
    func_800E5AFC(0xF2000000, 1);
    func_800F6C34();
    func_800F3ED4();
    func_800F9280(2, 0, 0x70, 1);
}
