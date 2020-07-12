#include <ultra64.h>
#include <global.h>

#define SFX_BANK_ID(sfxId) ((sfxId >> 0xC) & 0xFF)
#define SFX_BANK_ID_2(sfxId) (sfxId & 0xF000)
#define SFX_BANK_ID_3(sfxId) SFX_BANK_ID(SFX_BANK_ID_2(sfxId))

typedef struct {
    u16 unk_0;
    Vec3f* unk_4;
    u8 unk_8;
    u32* unk_C;
    u32* unk_10;
    u32* unk_14;
} Struct_800F738C; // size = 0x18

typedef struct {
    Vec3f* unk_0;
    char unk_4[0x08];
    u8 unk_C;
    char unk_10[0x1A];
    u16 unk_28;
    u8 unk_2A;
    char unk_2B[0x2];
    u8 unk_2D;
    u8 unk_2E;
    char unk_2F[0x1];
} Struct_800F74E0; // size = 0x30

typedef struct {
    f32 unk_0;
    f32 unk_4;
    f32 unk_8;
    f32 unk_C;
} Struct_800F8EA0; // size = 0x10

extern Struct_800F8EA0 D_8016E270[];

extern u8 D_8016E260;

extern UNK_TYPE D_80174C30;
extern UNK_PTR D_801729A8;

extern u8 D_8016E264[];

extern u8 D_801333A0;
extern u8 D_801333A4;

extern u16 D_801333D0;

extern u16 D_8016E2F8[];
extern u16 D_8016E2E0[];

extern u8 D_8016E310[];

extern u8 D_801333F4;

extern Struct_800F738C D_8016C9A0[];

extern Struct_800F74E0* D_801333A8[];

// TODO move prototypes
void func_800E5B20(u32, u8);

void func_800F7CEC(u8);
void func_800F8480(u8);
void func_800F8F34(u8);

void func_800FA240(u8, u8, u8, u8);

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F7260.s")
void func_800F7260(u16 arg0) {
    u8 phi_v0;

    for (phi_v0 = 0; phi_v0 < 7; phi_v0++) {
        if (arg0 & 1) {
            D_8016E264[phi_v0] = 1;
        } else {
            D_8016E264[phi_v0] = 0;
        }
        arg0 = (arg0 >> 1) & 0xFFFF;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F72B8.s")
void func_800F72B8(u8 arg0) {
    D_801333D0 |= (1 << arg0);
    func_800FA240(0, 2, 0x40, 0xF);
    func_800FA240(3, 2, 0x40, 0xF);
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F731C.s")
void func_800F731C(u8 arg0) {
    D_801333D0 &= ((1 << arg0) ^ 0xFFFF);
    if (D_801333D0 == 0) {
        func_800FA240(0, 2, 0x7F, 0xF);
        func_800FA240(3, 2, 0x7F, 0xF);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/Audio_PlaySoundGeneral.s")
void Audio_PlaySoundGeneral(u16 sfxId, Vec3f *a1, u8 a2, u32 *a3, u32 *a4, u32 *a5) {
    u8 i;
    Struct_800F738C *phi_v0;

    if (D_8016E264[SFX_BANK_ID(sfxId)] == 0) {
        phi_v0 = &D_8016C9A0[D_801333A0];
        if (D_801333F4 == 0) {
            for (i = 0; i < 0xA; i++) {
                if (sfxId == D_8016E2E0[i]) {
                    if (D_8016E310[i] == 0) {
                        sfxId = D_8016E2F8[i];
                    } else {
                        phi_v0->unk_0 = D_8016E2F8[i];
                        phi_v0->unk_4 = a1;
                        phi_v0->unk_8 = a2;
                        phi_v0->unk_C = a3;
                        phi_v0->unk_10 = a4;
                        phi_v0->unk_14 = a5;
                        D_801333A0++;
                        phi_v0 = &D_8016C9A0[D_801333A0];
                    }
                    i = 0xA;
                }
            }
        }
        phi_v0->unk_0 = sfxId;
        phi_v0->unk_4 = a1;
        phi_v0->unk_8 = a2;
        phi_v0->unk_C = a3;
        phi_v0->unk_10 = a4;
        phi_v0->unk_14 = a5;
        D_801333A0++;
    }
}

#ifdef NON_MATCHING
// Regalloc, data loads
void func_800F74E0(u8 arg0, Struct_800F74E0 *arg1) {
    s32 phi_a0;
    u8 i;

    for (i = D_801333A4; i != D_801333A0; i++) {
        phi_a0 = false;
        switch (arg0) {
            case 0:
                if (SFX_BANK_ID_2(arg1->unk_28) == SFX_BANK_ID_2(D_8016C9A0[i].unk_0)) {
                    phi_a0 = true;
                    break;
                }
            case 1:
                if (SFX_BANK_ID_2(arg1->unk_28) == SFX_BANK_ID_2(D_8016C9A0[i].unk_0) && D_8016C9A0[i].unk_4 == arg1->unk_0) {
                    phi_a0 = true;
                    break;
                }
            case 2:
                if (D_8016C9A0[i].unk_4 == arg1->unk_0) {
                    phi_a0 = true;
                    break;
                }
            case 3:
                if (arg1->unk_0 == D_8016C9A0[i].unk_4 && D_8016C9A0[i].unk_0 == arg1->unk_28) {
                    phi_a0 = true;
                    break;
                }
            case 4:
                if (arg1->unk_C == D_8016C9A0[i].unk_8 && D_8016C9A0[i].unk_0 == arg1->unk_28) {
                    phi_a0 = true;
                    break;
                }
            case 5:
                if (arg1->unk_28 == D_8016C9A0[i].unk_0) {
                    phi_a0 = true;
                    break;
                }
        }
        if (phi_a0) {
            D_8016C9A0[i].unk_0 = 0;
        }
    }
}
#else
void func_800F74E0(u8, Struct_800F74E0*);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F74E0.s")
#endif

void func_800F7680(void);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F7680.s")

void func_800F7B54(u8, u8);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F7B54.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F7CEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8480.s")

#ifdef NON_MATCHING
// Regalloc
void func_800F87A0(u8 arg0) {
    Struct_800F74E0 *temp_s0;
    Struct_800F74E0 **temp_s2;
    Struct_800F74E0 sp48;
    u8 phi_s1;

    temp_s2 = &D_801333A8[arg0];
    phi_s1 = (*temp_s2)->unk_2D;
    while (phi_s1 != 0xFF) {
        temp_s0 = &(*temp_s2)[phi_s1];
        if (temp_s0->unk_2A >= 3) {
            func_800E5B20(0x06020000 | (temp_s0->unk_2E * 0x100), 0);
        }
        if (temp_s0->unk_2A != 0) {
            func_800F7B54(arg0, phi_s1);
        }
        phi_s1 = (*temp_s2)->unk_2D;
    }
    sp48.unk_28 = arg0 << 0xC;
    func_800F74E0(0, &sp48);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F87A0.s")
#endif

void func_800F8884(u8, Vec3f*);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8884.s")

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F89A0.s")
void func_800F89A0(u8 arg0, Vec3f* arg1) {
    Struct_800F74E0 sp18;

    func_800F8884(arg0, arg1);
    sp18.unk_28 = arg0 << 0xC;
    sp18.unk_0 = arg1;
    func_800F74E0(1, &sp18);
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F89E8.s")
void func_800F89E8(Vec3f *arg0) {
    u8 i;
    Struct_800F74E0 sp24;

    for (i = 0; i < 7; i++) {
        func_800F8884(i, arg0);
    }
    sp24.unk_0 = arg0;
    func_800F74E0(2, &sp24);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8A44.s")
/* void func_800F8A44(Vec3f* arg0, u16 arg1) {
    Struct_800F74E0 sp50;
    u8 temp_fp;
    Struct_800F74E0 *temp_s0;
    Struct_800F74E0 **temp_s3;
    Struct_800F74E0 *temp_t9;
    u8 phi_s1;
    u8 phi_v0;
    u8 phi_s4;

    temp_fp = SFX_BANK_ID_3(arg1);
    temp_s3 = &D_801333A8[temp_fp];

    phi_s1 = (*temp_s3)->unk_2D;
    phi_v0 = (*temp_s3)->unk_2D;
    phi_s4 = 0;
    while ((*temp_s3)->unk_2D != 0xFF) {
        temp_s0 = &(*temp_s3)[phi_s1];
        if (arg0 == temp_s0->unk_0 && arg1 == temp_s0->unk_28) {
            if (temp_s0->unk_2A >= 3) {
                func_800E5B20((temp_s0->unk_2E << 8) | 0x6020000, 0);
            }
            if (temp_s0->unk_2A != 0) {
                func_800F7B54(temp_fp, phi_s1);
            }
            phi_v0 = 0xFF;
            phi_s1 = 0xFF;
        } else {
            phi_s4 = phi_s1;
        }
        if (phi_v0 != 0xFF) {
            temp_t9 = &(*temp_s3)[phi_s4];
            phi_v0 = temp_t9->unk_2D;
            phi_s1 = temp_t9->unk_2D;
        }
    }
    sp50.unk_0 = arg0;
    sp50.unk_28 = arg1;
    func_800F74E0(3, &sp50);
} */

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8BA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8D04.s")

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8E3C.s")
void func_800F8E3C(void) {
    while (D_801333A0 != D_801333A4) {
        func_800F7680();
        D_801333A4++;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8EA0.s")
/* void func_800F8EA0(u8 arg0, u8 arg1, u16 arg2) {
    f32 temp_f0;
    Struct_800F8EA0 *temp_v0;

    if (arg2 == 0) {
        arg2++;
    }
    temp_v0 = &D_8016E270[arg0];
    temp_v0->unk_C = arg2;
    temp_v0->unk_4 = temp_f0 = arg1 / 127.0f;
    temp_v0->unk_8 = ((temp_v0->unk_0 - temp_f0) / arg2);
} */

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8F34.s")

#ifdef NON_MATCHING
// Regalloc
void func_800F8F88(void) {
    u8 i;

    if (D_801729A8 != &D_80174C30) {
        D_8016E260 = 0;
        for (i = 0; i < 7; i++) {
            func_800F7CEC(i);
            func_800F8480(i);
            func_800F8F34(i);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8F88.s")
#endif

#ifdef NON_MATCHING
// Regalloc
u8 func_800F8FF4(u32 arg0) {
    Struct_800F74E0 *temp_a1;
    Struct_800F74E0 *temp_v1;
    u8 phi_v0;

    temp_v1 = D_801333A8[SFX_BANK_ID_3(arg0)];
    phi_v0 = temp_v1->unk_2D;
    while (phi_v0 != 0xFF) {
        temp_a1 = &temp_v1[phi_v0];
        if (arg0 == temp_a1->unk_28) {
            return 1;
        }
        phi_v0 = temp_a1->unk_2D;
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8FF4.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F905C.s")

