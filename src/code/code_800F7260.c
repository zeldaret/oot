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
    u16 unk_C;
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
/* void func_800F7680(void) {
    u8 sp55;
    void *sp50;
    void *sp48;
    u8 sp43;
    void *sp3C;
    s32 sp30;
    s32 temp_a0;
    s32 temp_a0_2;
    s32 temp_lo;
    s32 temp_ra;
    s32 temp_s5;
    s32 temp_t3;
    s32 temp_t7;
    s32 temp_v0_2;
    u16 temp_a3;
    u16 temp_a3_2;
    u8 temp_t4;
    u8 temp_t4_2;
    void *temp_a0_3;
    void *temp_a2;
    void *temp_a2_2;
    void *temp_s0;
    void *temp_s0_2;
    void *temp_t0;
    void *temp_t2;
    void *temp_t7_2;
    void *temp_t9;
    void *temp_t9_2;
    void *temp_v0;
    void *temp_v0_3;
    void *temp_v1;
    void *temp_v1_2;
    s32 phi_s5;
    void *phi_t2;
    void *phi_t3;
    u8 phi_a1;
    u8 phi_t4;
    s32 phi_s2;
    s32 phi_s2_2;
    u8 phi_v1;
    s32 phi_s1;
    u8 phi_a1_2;
    u8 phi_t4_2;
    void *phi_t0;
    void *phi_s0;
    u8 phi_a1_3;
    u8 phi_v0;
    u8 phi_s2_3;
    void *phi_t3_2;
    u8 phi_v0_2;
    void *phi_t2_2;
    void *phi_t0_2;
    void *phi_t2_3;
    void *phi_t3_3;
    s32 phi_s1_2;
    s32 phi_s1_3;
    void *phi_t0_3;
    u8 phi_s2_4;
    void *phi_t0_4;

    temp_t7 = D_801333A4 * 0x18;
    temp_t2 = temp_t7 + &D_8016C9A0;
    if (*temp_t2 != 0) {
        temp_s5 = ((s32) (*temp_t2 & 0xF000) >> 0xC) & 0xFF;
        phi_s5 = temp_s5;
        if (((1 << temp_s5) & D_801333F0) != 0) {
            sp50 = temp_t2;
            func_800F2D6C(&D_80133340, *temp_t2);
            phi_s5 = ((s32) (*temp_t2 & 0xF000) >> 0xC) & 0xFF;
        }
        temp_t0 = (phi_s5 * 4) + &D_801333A8;
        phi_t3_2 = *temp_t0;
        phi_v0_2 = (*temp_t0)->unk2D;
        phi_t2_2 = temp_t7 + &D_8016C9A0;
        phi_t0_2 = temp_t0;
        if ((0xFF != (*temp_t0)->unk2D) && (phi_t3_2 = *temp_t0, phi_v0_2 = (*temp_t0)->unk2D, phi_t2_2 = temp_t7 + &D_8016C9A0, phi_t0_2 = temp_t0, ((*temp_t0)->unk2D != 0))) {
            phi_t2 = temp_t7 + &D_8016C9A0;
            phi_t3 = *temp_t0;
            phi_a1 = (*temp_t0)->unk2D;
            phi_t4 = (u8)0U;
            phi_s2 = (s32) sp43;
            phi_t0 = temp_t0;
            phi_s1_3 = 0x80;
loop_6:
            temp_s0 = phi_t3 + (phi_a1 * 0x30);
            phi_a1_3 = phi_a1;
            phi_s2_3 = (u8) phi_s2;
            phi_t2_3 = phi_t2;
            phi_t3_3 = phi_t3;
            phi_t0_3 = phi_t0;
            if (phi_t2->unk4 == temp_s0->unk0) {
                temp_a3 = phi_t2->unk0;
                temp_t9 = &D_8013331C + ((((s32) temp_a3 >> 0xC) & 0xFF) * 4);
                temp_ra = (temp_a3 & 0x1FF) * 4;
                temp_a2 = *temp_t9 + temp_ra;
                if (((temp_a2->unk2 & 0x20) == 0) || (temp_a2->unk0 != temp_s0->unk24)) {
                    temp_v0 = &D_80130594 + ((D_801333CC * 7) + phi_s5);
                    if (temp_a3 == temp_s0->unk28) {
                        temp_t4 = *temp_v0 & 0xFF;
                        phi_v1 = temp_t4;
                        phi_s1 = phi_s1_3;
                        phi_a1_2 = phi_a1;
                        phi_t4_2 = temp_t4;
                        phi_s2_4 = (u8) phi_s2;
                    } else {
                        temp_a0 = temp_s0->unk28 & 0xFFFF;
                        if (phi_t4 == 0) {
                            phi_s2_2 = (s32) *(*(&D_8013331C + (((temp_a0 >> 0xC) & 0xFF) * 4)) + ((temp_a0 & 0x1FF) * 4));
                            phi_s1_2 = phi_a1 & 0xFF;
                        } else {
                            temp_a0_2 = temp_s0->unk28 & 0xFFFF;
                            phi_s2_2 = phi_s2;
                            phi_s1_2 = phi_s1_3;
                            if ((s32) temp_s0->unk24 < phi_s2) {
                                phi_s2_2 = (s32) *(*(&D_8013331C + (((temp_a0_2 >> 0xC) & 0xFF) * 4)) + ((temp_a0_2 & 0x1FF) * 4));
                                phi_s1_2 = phi_a1 & 0xFF;
                            }
                        }
                        temp_t4_2 = (phi_t4 + 1) & 0xFF;
                        phi_v1 = temp_t4_2;
                        phi_s1 = phi_s1_2;
                        phi_a1_2 = phi_a1;
                        phi_t4_2 = temp_t4_2;
                        phi_s2_4 = (u8) phi_s2_2;
                        if (temp_t4_2 == *temp_v0) {
                            phi_v1 = temp_t4_2;
                            phi_s1 = phi_s1_2;
                            phi_a1_2 = (u8)0U;
                            phi_t4_2 = temp_t4_2;
                            phi_s2_4 = (u8) phi_s2_2;
                            if ((s32) temp_a2->unk0 >= phi_s2_2) {
                                phi_v1 = temp_t4_2;
                                phi_s1 = phi_s1_2;
                                phi_a1_2 = phi_s1_2 & 0xFF;
                                phi_t4_2 = temp_t4_2;
                                phi_s2_4 = (u8) phi_s2_2;
                            }
                        }
                    }
                    phi_a1_3 = phi_a1_2;
                    phi_s2_3 = phi_s2_4;
                    phi_t2_3 = phi_t2;
                    phi_t3_3 = phi_t3;
                    phi_t4 = phi_t4_2;
                    phi_t0_3 = phi_t0;
                    phi_s1_3 = phi_s1;
                    if (phi_v1 == *temp_v0) {
                        temp_v0_2 = (phi_a1_2 * 4) - phi_a1_2;
                        temp_v0_2 = temp_v0_2 * 0x10;
                        temp_v1 = *temp_t9 + temp_ra;
                        temp_s0_2 = phi_t3 + temp_v0_2;
                        if ((((temp_a3 & 0xC00) != 0) || ((temp_v1->unk2 & 4) != 0)) || (phi_s1 == phi_a1_2)) {
                            phi_s0 = temp_s0_2;
                            if ((temp_s0_2->unk26 & 8) != 0) {
                                phi_s0 = temp_s0_2;
                                if (temp_s0_2->unk2A != 1) {
                                    sp55 = phi_t4_2;
                                    sp50 = phi_t2;
                                    sp3C = phi_t0;
                                    sp48 = temp_v1;
                                    sp30 = temp_v0_2;
                                    func_800F731C(temp_s0_2->unk2E, phi_a1_2, temp_a2, temp_a3);
                                    phi_s0 = *phi_t0 + temp_v0_2;
                                }
                            }
                            phi_s0->unkC = (u8) phi_t2->unk8;
                            (*phi_t0 + (temp_v0_2 * 0x10))->unk28 = (u16) phi_t2->unk0;
                            (*phi_t0 + (temp_v0_2 * 0x10))->unk2A = (u8)1;
                            (*phi_t0 + (temp_v0_2 * 0x10))->unk2B = (u8)2;
                            (*phi_t0 + (temp_v0_2 * 0x10))->unk10 = (s32) phi_t2->unkC;
                            (*phi_t0 + (temp_v0_2 * 0x10))->unk14 = (s32) phi_t2->unk10;
                            (*phi_t0 + (temp_v0_2 * 0x10))->unk18 = (s32) phi_t2->unk14;
                            (*phi_t0 + (temp_v0_2 * 0x10))->unk26 = (u16) (*temp_t9 + temp_ra)->unk2;
                            (*phi_t0 + (temp_v0_2 * 0x10))->unk24 = (u8) (*temp_t9 + temp_ra)->unk0;
                            phi_t2_3 = phi_t2;
                            phi_t0_4 = phi_t0;
                            phi_t3_3 = *phi_t0_4;
                            phi_t0_3 = phi_t0_4;
                        } else {
                            phi_t2_3 = phi_t2;
                            phi_t3_3 = phi_t3;
                            phi_t4 = phi_t4_2;
                            phi_t0_3 = phi_t0;
                            if (temp_s0_2->unk2A == 5) {
                                temp_s0_2->unk2A = (u8)4U;
                                phi_t2_3 = phi_t2;
                                phi_t0_4 = phi_t0;
                                phi_t4 = phi_t4_2;
                                phi_t3_3 = *phi_t0_4;
                                phi_t0_3 = phi_t0_4;
                            }
                        }
                        phi_a1_3 = (u8)0U;
                        phi_s2_3 = phi_s2_4;
                        phi_s1_3 = phi_s1;
                    }
                }
            }
            phi_v0 = phi_a1_3;
            phi_a1 = phi_a1_3;
            if (phi_a1_3 != 0) {
                temp_t9_2 = phi_t3_3 + (phi_a1_3 * 0x30);
                phi_v0 = temp_t9_2->unk2D;
                phi_a1 = temp_t9_2->unk2D;
            }
            phi_t3_2 = phi_t3_3;
            phi_v0_2 = phi_v0;
            phi_t2_2 = phi_t2_3;
            phi_t0_2 = phi_t0_3;
            if (0xFF != phi_v0) {
                phi_t2 = phi_t2_3;
                phi_t3 = phi_t3_3;
                phi_s2 = (s32) phi_s2_3;
                phi_t0 = phi_t0_3;
                if (phi_v0 != 0) {
                    goto loop_6;
                }
                sp43 = phi_s2_3;
                phi_t3_2 = phi_t3_3;
                phi_v0_2 = phi_v0;
                phi_t2_2 = phi_t2_3;
                phi_t0_2 = phi_t0_3;
            }
        }
        temp_a2_2 = phi_s5 + &D_8016E1A8;
        if (0xFF != (phi_t3_2 + (*temp_a2_2 * 0x30))->unk2D) {
            if (phi_v0_2 != 0) {
                temp_v0_3 = phi_t3_2 + ((*temp_a2_2 & 0xFF) * 0x30);
                temp_v0_3->unk0 = (s32) phi_t2_2->unk4;
                temp_v0_3->unk4 = (s32) (phi_t2_2->unk4 + 4);
                temp_v0_3->unk8 = (s32) (phi_t2_2->unk4 + 8);
                temp_v0_3->unkC = (u8) phi_t2_2->unk8;
                temp_v0_3->unk10 = (s32) phi_t2_2->unkC;
                temp_v0_3->unk14 = (s32) phi_t2_2->unk10;
                temp_v0_3->unk18 = (s32) phi_t2_2->unk14;
                temp_a3_2 = phi_t2_2->unk0;
                temp_v1_2 = *(&D_8013331C + ((((s32) temp_a3_2 >> 0xC) & 0xFF) * 4)) + ((temp_a3_2 & 0x1FF) * 4);
                temp_v0_3->unk26 = (u16) temp_v1_2->unk2;
                temp_v0_3->unk24 = (u8) temp_v1_2->unk0;
                temp_v0_3->unk2A = (u8)1;
                temp_v0_3->unk2B = (u8)2;
                temp_a0_3 = phi_s5 + &D_8016E1A0;
                temp_v0_3->unk28 = (u16) phi_t2_2->unk0;
                temp_v0_3->unk2C = (u8) *temp_a0_3;
                (*phi_t0_2 + (*temp_a0_3 * 0x30))->unk2D = (u8) *temp_a2_2;
                temp_t3 = *phi_t0_2;
                *temp_a0_3 = (u8) *temp_a2_2;
                temp_t7_2 = temp_t3 + (*temp_a2_2 * 0x30);
                temp_lo = (temp_t7_2->unk2D & 0xFF) * 0x30;
                *temp_a2_2 = (u8) temp_t7_2->unk2D;
                (temp_t3 + temp_lo)->unk2C = (u8)0xFF;
                temp_v0_3->unk2D = (u8)0xFF;
            }
        }
    }
} */

void func_800F7B54(u8, u8);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F7B54.s")
/* void func_800F7B54(u8 arg0, u8 arg1) {
    void *sp2C;
    void *sp24;
    s32 temp_lo;
    s32 temp_s0;
    s32 temp_t6;
    s32 temp_v0_2;
    void *temp_a0;
    void *temp_a2;
    void *temp_t2;
    void *temp_v0;
    void *temp_v1;
    void *temp_v1_2;
    s32 phi_t1;
    s32 phi_t1_2;
    s32 phi_v0;
    s32 phi_v0_2;

    temp_lo = arg1 * 0x30;
    temp_s0 = arg0 & 0xFF;
    temp_t6 = temp_s0 * 4;
    temp_t2 = temp_t6 + &D_801333A8;
    temp_a2 = *temp_t2 + temp_lo;
    phi_t1 = *temp_t2;
    if ((temp_a2->unk26 & 8) != 0) {
        sp24 = temp_t2;
        sp2C = temp_a2;
        func_800F731C(temp_a2->unk2E, temp_a2);
        phi_t1 = *temp_t2;
    }
    temp_v0 = temp_s0 + &D_8016E1A0;
    if (arg1 == *temp_v0) {
        *temp_v0 = (u8) (*temp_t2 + temp_lo)->unk2C;
        phi_t1_2 = phi_t1;
    } else {
        (phi_t1 + ((*temp_t2 + temp_lo)->unk2D * 0x30))->unk2C = (u8) (*temp_t2 + temp_lo)->unk2C;
        phi_t1_2 = *(temp_t6 + &D_801333A8);
    }
    temp_v1 = temp_s0 + &D_8016E1A8;
    (phi_t1_2 + ((*temp_t2 + temp_lo)->unk2C * 0x30))->unk2D = (u8) (*temp_t2 + temp_lo)->unk2D;
    (*temp_t2 + temp_lo)->unk2C = (u8)0xFFU;
    (*temp_t2 + temp_lo)->unk2D = (u8) *temp_v1;
    (*(temp_t6 + &D_801333A8) + (*temp_v1 * 0x30))->unk2C = arg1;
    *temp_v1 = arg1;
    (*temp_t2 + temp_lo)->unk2A = (u8)0;

    temp_a0 = &D_80130578 + ((D_801333CC * 7) + temp_s0);
    phi_v0 = 0;
    if ((s32) *temp_a0 > 0) {
loop_6:
        temp_v1_2 = ((temp_s0 * 0x18) + &D_8016E1B8) + (phi_v0 * 8);
        phi_v0_2 = phi_v0;
        if (arg1 == temp_v1_2->unk4) {
            temp_v1_2->unk4 = (u8)0xFFU;
            phi_v0_2 = *temp_a0 & 0xFF;
        }
        temp_v0_2 = (phi_v0_2 + 1) & 0xFF;
        phi_v0 = temp_v0_2;
        if (temp_v0_2 < (s32) *temp_a0) {
            goto loop_6;
        }
    }
} */

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
            func_800E5B20((256 * temp_s0->unk_2E) | 0x06020000, 0);
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

//void func_800F8884(u8, Vec3f*);
#ifdef NON_MATCHING
// Missing instructions at the end, regalloc
void func_800F8884(u8 arg0, Vec3f* arg1) {
    Struct_800F74E0* temp_s0;
    Struct_800F74E0** temp_s4;
    u8 phi_s1;
    u8 phi_s2;

    temp_s4 = &D_801333A8[arg0];
    phi_s1 = (*temp_s4)->unk_2D;
    phi_s2 = 0;
    while (phi_s1 != 0xFF) {
        temp_s0 = &(*temp_s4)[phi_s1];
        if (temp_s0->unk_0 == arg1) {
            if (temp_s0->unk_2A >= 3) {
                func_800E5B20((temp_s0->unk_2E * 256) | 0x06020000, 0);
            }
            if (temp_s0->unk_2A != 0) {
                func_800F7B54(arg0, phi_s1);
            }
            phi_s1 = (*temp_s4)[phi_s2].unk_2D;
        } else {
            phi_s1 = (*temp_s4)[phi_s1].unk_2D;
            phi_s2 = phi_s1;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8884.s")
#endif

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
/* void func_800F8D04(u16 a0) {
    Struct_800F74E0 sp50;
    u32 temp_s4;
    Struct_800F74E0* temp_s0;
    Struct_800F74E0** temp_s5;
    u8 phi_s1;
    s32 phi_s2;

    temp_s4 = SFX_BANK_ID_3(a0);
    temp_s5 = &D_801333A8[temp_s4];
    phi_s1 = (*temp_s5)->unk_2D;
    phi_s2 = 0;
    while (phi_s1 != 0xFF) {
        temp_s0 = &(*temp_s5)[phi_s1];
        if (a0 == temp_s0->unk_28) {
            if (temp_s0->unk_2A >= 3) {
                func_800E5B20((temp_s0->unk_2E * 256) | 0x6020000, 0);
            }
            if (temp_s0->unk_2A != 0) {
                func_800F7B54(temp_s4, phi_s1);
            }
            phi_s1 = (*temp_s5)[phi_s2].unk_2D;
        } else {
            phi_s1 = (*temp_s5)[phi_s1].unk_2D;
            phi_s2 = phi_s1;
        }
    }
    sp50.unk_28 = a0;
    func_800F74E0(5, &sp50);
} */

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8E3C.s")
void func_800F8E3C(void) {
    while (D_801333A0 != D_801333A4) {
        func_800F7680();
        D_801333A4++;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8EA0.s")
void func_800F8EA0(u8 arg0, u8 arg1, u16 arg2) {
    f32 temp_f0;
    Struct_800F8EA0 *temp_v0;

    if (arg2 == 0) {
        arg2++;
    }
    temp_v0 = &D_8016E270[arg0];
    temp_f0 = arg1 / 127.0f;
    temp_v0->unk_4 = temp_f0;
    temp_v0->unk_C = arg2;
    temp_v0->unk_8 = ((temp_v0->unk_0 - temp_v0->unk_4) / arg2);
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8F34.s")
void func_800F8F34(u8 arg0) {
    Struct_800F8EA0* temp_v0;

    temp_v0 = &D_8016E270[arg0];
    if (temp_v0->unk_C != 0) {
        temp_v0->unk_C--;
        if (temp_v0->unk_C != 0) {
            temp_v0->unk_0 -= temp_v0->unk_8;
        } else {
            temp_v0->unk_0 = temp_v0->unk_4;
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8F88.s")
void func_800F8F88(void) {
    u8 i;
    UNK_TYPE* temp;

    temp = &D_80174C30;
    if (D_801729A8 != temp) {
        D_8016E260 = 0;
        for (i = 0; i < 7; i++) {
            func_800F7CEC(i);
            func_800F8480(i);
            func_800F8F34(i);
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8FF4.s")
u8 func_800F8FF4(u32 arg0) {
    Struct_800F74E0 *temp_a1;
    Struct_800F74E0 **temp_v1;
    u8 phi_v0;

    temp_v1 = &D_801333A8[SFX_BANK_ID_3(arg0)];
    phi_v0 = (*temp_v1)->unk_2D;
    while (phi_v0 != 0xFF) {
        temp_a1 = &(*temp_v1)[phi_v0];
        if (arg0 == temp_a1->unk_28) {
            return 1;
        }
        phi_v0 = temp_a1->unk_2D;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F905C.s")

