#include <ultra64.h>
#include <global.h>

#define SFX_BANK_ID(sfxId) ((sfxId >> 0xC) & 0xFF)
#define SFX_ID(sfxId) (sfxId & 0x1FF) // consider rename to SFX_INDEX or similar

#define SFX_BANK_ID_2(sfxId) (sfxId & 0xF000)
#define SFX_BANK_ID_3(sfxId) SFX_BANK_ID(SFX_BANK_ID_2(sfxId))

typedef struct {
    /* 0x00 */ u16     sfxId;
    /* 0x04 */ Vec3f*  unk_4;
    /* 0x08 */ u8      unk_8;
    /* 0x0C */ u32*    unk_C;
    /* 0x10 */ u32*    unk_10;
    /* 0x14 */ u32*    unk_14;
} Struct_800F738C; // size = 0x18

typedef struct {
    /* 0x00 */ Vec3f*   pos;        // "pos"
    /* 0x04 */ f32*     unk_4;
    /* 0x08 */ f32*     unk_8;
    /* 0x0C */ u8       unk_C;
    /* 0x10 */ u32*     unk_10;
    /* 0x14 */ u32*     unk_14;
    /* 0x18 */ u32*     unk_18;
    /* 0x1C */ f32      unk_1C;
    /* 0x20 */ u32      unk_20;
    /* 0x24 */ u8       unk_24; 
    /* 0x26 */ u16      unk_26;
    /* 0x28 */ u16      unk_28;     // "flag"
    /* 0x2A */ u8       unk_2A;
    /* 0x2B */ u8       unk_2B;
    /* 0x2C */ u8       prev;       // prev bank index
    /* 0x2D */ u8       next;       // next bank index
    /* 0x2E */ u8       unk_2E;
    /* 0x2F */ u8       unk_2F;
} Struct_800F74E0; // size = 0x30

typedef struct {
    /* 0x00 */ f32 unk_0;
    /* 0x04 */ f32 unk_4;
    /* 0x08 */ f32 unk_8;
    /* 0x0C */ u16 unk_C;
} Struct_800F8EA0; // size = 0x10

typedef struct {
    u32 unk_0;
    u8 unk_4;
} Struct_800F7CEC;

typedef struct {
    u8  unk_0;
    u16 unk_2;
} Struct_8013331C;



extern u8 D_80130570[];

extern u8 D_80130578[4][7];

extern u8 D_80130594[4][7];

extern Struct_800F74E0 D_8016BAD0[];
extern Struct_800F74E0 D_8016BC80[];
extern Struct_800F74E0 D_8016BEC0[];
extern Struct_800F74E0 D_8016C2E0[];
extern Struct_800F74E0 D_8016C6A0[];
extern Struct_800F74E0 D_8016C820[];
extern Struct_800F74E0 D_8016C8B0[];

u8 D_80133340[4] = {
    0x53, 0x45, 0x00, 0x00,
};
                    //VT_COL(RED,WHITE)                                                         VT_RST
char D_80133344[] = "\x1B[41;37m" "<INAGAKI CHECK> dist over! flag:%04X ptr:%08X pos:%f-%f-%f" "\x1B[m" "\n";

s32 D_8013338C = 0;

UNK_TYPE D_80133390[] = {
    0x53455120, 0x48000000,
};

UNK_TYPE D_80133398[] = {
    0x20202020, 0x4C000000,
};

u8 D_801333A0 = 0;

u8 D_801333A4 = 0;

/**
 * Array of pointers to arrays of Struct_800F74E0 of sizes: 9, 12, 22, 20, 8, 3, 5
 *
 * 0 : Player Bank          size 9
 * 1 : Item Bank            size 12
 * 2 : Environment Bank     size 22
 * 3 : Enemy Bank           size 20
 * 4 : System Bank          size 8
 * 5 : Ocarina Bank         size 3
 * 6 : Voice Bank           size 5
 */
// TODO remember to update gSoundBanks in variables.h
Struct_800F74E0* gSoundBanks[7] = {
    D_8016BAD0,
    D_8016BC80,
    D_8016BEC0,
    D_8016C2E0,
    D_8016C6A0,
    D_8016C820,
    D_8016C8B0,
};

/*
 * Array of bank sizes
 * 
 * 09 12 22 20 08 03 05
 * 
 */
u8 sBankSizes[7] = {
    9, 12, 22, 20, 8, 3, 5,
};

u8 D_801333CC = 0;

u16 D_801333D0 = 0;

Vec3f D_801333D4 = { 0.0f, 0.0f, 0.0f };

f32 D_801333E0 = 1.0f;

UNK_TYPE D_801333E4 = 0;

f32 D_801333E8 = 0.0f;

UNK_TYPE D_801333EC = 0;

u8 D_801333F0 = 0;

u8 D_801333F4 = 0;

u8 D_801333F8 = 0;



// Array of Struct_800F738C of size 256 / 0x100
extern Struct_800F738C D_8016C9A0[];

extern u8 D_8016E1A0[];
extern u8 D_8016E1A8[];

extern Struct_800F7CEC D_8016E1B8[7][3]; // total size = 0xA8

extern Struct_800F8EA0 D_8016E270[];

extern u8 D_8016E264[];

extern u16 D_8016E2F8[];
extern u16 D_8016E2E0[];

extern u8 D_8016E310[];

extern u8 D_8016E260;

extern u8 D_8016E1B0[];

extern Struct_8013331C* D_8013331C[9];



void func_800F3A08(u8, u8, u8);

// audio random ?
s32 func_800E67C0(void);

// TODO move prototypes
void func_800E5B20(u32, s8);

void func_800F7CEC(u8);
void func_800F8480(u8);
void func_800F8F34(u8);

void func_800F7B54(u8, u8);

void func_800FA240(u8, u8, u8, u8);

void func_800F2D6C(u8*, u16 sfxId);

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F7260.s")
void func_800F7260(u16 arg0) {
    u8 bankId;

    for (bankId = 0; bankId < ARRAY_COUNT(gSoundBanks); bankId++) {
        if (arg0 & 1) {
            D_8016E264[bankId] = 1;
        } else {
            D_8016E264[bankId] = 0;
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
            for (i = 0; i < 10; i++) {
                if (sfxId == D_8016E2E0[i]) {
                    if (D_8016E310[i] == 0) {
                        sfxId = D_8016E2F8[i];
                    } else {
                        phi_v0->sfxId = D_8016E2F8[i];
                        phi_v0->unk_4 = a1;
                        phi_v0->unk_8 = a2;
                        phi_v0->unk_C = a3;
                        phi_v0->unk_10 = a4;
                        phi_v0->unk_14 = a5;
                        D_801333A0++;
                        phi_v0 = &D_8016C9A0[D_801333A0];
                    }
                    i = 10;
                }
            }
        }
        phi_v0->sfxId = sfxId;
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
                if (SFX_BANK_ID_2(arg1->unk_28) == SFX_BANK_ID_2(D_8016C9A0[i].sfxId)) {
                    phi_a0 = true;
                    break;
                }
            case 1:
                if (SFX_BANK_ID_2(arg1->unk_28) == SFX_BANK_ID_2(D_8016C9A0[i].sfxId) && D_8016C9A0[i].unk_4 == arg1->pos) {
                    phi_a0 = true;
                    break;
                }
            case 2:
                if (arg1->pos == D_8016C9A0[i].unk_4) {
                    phi_a0 = true;
                    break;
                }
            case 3:
                if (arg1->pos == D_8016C9A0[i].unk_4 && D_8016C9A0[i].sfxId == arg1->unk_28) {
                    phi_a0 = true;
                    break;
                }
            case 4:
                if (arg1->unk_C == D_8016C9A0[i].unk_8 && D_8016C9A0[i].sfxId == arg1->unk_28) {
                    phi_a0 = true;
                    break;
                }
            case 5:
                if (arg1->unk_28 == D_8016C9A0[i].sfxId) {
                    phi_a0 = true;
                    break;
                }
        }
        if (phi_a0) {
            D_8016C9A0[i].sfxId = 0;
        }
    }
}
#else
void func_800F74E0(u8, Struct_800F74E0*);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F74E0.s")
#endif

void func_800F7680(void);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F7680.s")
// process_sound_request ?
/* void func_800F7680(void) {
    Struct_8013331C *temp_a2;
    Struct_8013331C *temp_t5;
    Struct_8013331C *temp_v1_3;
    s32 sfxId;
    u8 temp_v0;
    u8 bankId;
    Struct_800F738C *phi_t2;
    Struct_800F74E0 *phi_t3;
    u8 bankIndex;
    u8 counter;
    u8 phi_s2;
    s32 phi_s1;
    Struct_800F74E0 *phi_s0;

    counter = 0;
    phi_s1 = 0x80;
    phi_t2 = &D_8016C9A0[D_801333A4];
    if (phi_t2->sfxId == 0) {
        return;
    }

    if (D_801333F0 & (1 << SFX_BANK_ID_3(phi_t2->sfxId))) {
        func_800F2D6C(D_80133340, phi_t2->sfxId);
    }

    bankId = SFX_BANK_ID_3(phi_t2->sfxId);
    bankIndex = gSoundBanks[bankId][0].next;
    while (bankIndex != 0xFF && bankIndex != 0) {
        if (gSoundBanks[bankId][bankIndex].pos == phi_t2->unk_4) {
            temp_t5 = D_8013331C[SFX_BANK_ID(phi_t2->sfxId)];
            if ((!(temp_t5[SFX_ID(phi_t2->sfxId)].unk_2 & 0x20)) || 
                temp_t5[SFX_ID(phi_t2->sfxId)].unk_0 != gSoundBanks[bankId][bankIndex].unk_24) {
                temp_v0 = D_80130594[bankId][D_801333CC];
                if (phi_t2->sfxId == gSoundBanks[bankId][bankIndex].unk_28) {
                    counter = temp_v0;
                } else {
                    if (counter == 0) {
                        phi_s2 = D_8013331C[SFX_BANK_ID(gSoundBanks[bankId][bankIndex].unk_28)][SFX_ID(gSoundBanks[bankId][bankIndex].unk_28)].unk_0;
                        phi_s1 = bankIndex;
                    } else if (gSoundBanks[bankId][bankIndex].unk_24 < phi_s2) {
                        phi_s2 = D_8013331C[SFX_BANK_ID(gSoundBanks[bankId][bankIndex].unk_28)][SFX_ID(gSoundBanks[bankId][bankIndex].unk_28)].unk_0;
                        phi_s1 = bankIndex;
                    }
                    counter++;
                    if (counter == temp_v0) {
                        bankIndex = (temp_t5[SFX_ID(phi_t2->sfxId)].unk_0 >= phi_s2) ? phi_s1 : 0;
                    }
                }
                if (counter == temp_v0) {
                    sfxId = SFX_ID(phi_t2->sfxId);
                    if ((phi_t2->sfxId & 0xC00) || 
                        (temp_t5[SFX_ID(phi_t2->sfxId)].unk_2 & 4) || 
                        (phi_s1 == bankIndex)) {
                        if ((gSoundBanks[bankId][bankIndex].unk_26 & 8) && gSoundBanks[bankId][bankIndex].unk_2A != 1) {
                            func_800F731C(gSoundBanks[bankId][bankIndex].unk_2E);
                        }
                        gSoundBanks[bankId][bankIndex].unk_C = phi_t2->unk_8;
                        gSoundBanks[bankId][bankIndex].unk_28 = phi_t2->sfxId;
                        gSoundBanks[bankId][bankIndex].unk_2A = 1;
                        gSoundBanks[bankId][bankIndex].unk_2B = 2;
                        gSoundBanks[bankId][bankIndex].unk_10 = phi_t2->unk_C;
                        gSoundBanks[bankId][bankIndex].unk_14 = phi_t2->unk_10;
                        gSoundBanks[bankId][bankIndex].unk_18 = phi_t2->unk_14;
                        gSoundBanks[bankId][bankIndex].unk_26 = temp_t5[sfxId].unk_2;
                        gSoundBanks[bankId][bankIndex].unk_24 = temp_t5[sfxId].unk_0;
                    } else if (gSoundBanks[bankId][bankIndex].unk_2A == 5) {
                        gSoundBanks[bankId][bankIndex].unk_2A = 4;
                    }
                    bankIndex = 0;
                }
            }
        }
        if (bankIndex != 0) {
            bankIndex = gSoundBanks[bankId][bankIndex].next;
        }
    }
    if (gSoundBanks[bankId][D_8016E1A8[bankId]].next != 0xFF && bankIndex != 0) {
        bankIndex = D_8016E1A8[bankId];
        phi_s0 = &gSoundBanks[bankId][bankIndex];
        phi_s0->pos =   &phi_t2->unk_4->x;
        phi_s0->unk_4 = &phi_t2->unk_4->y;
        phi_s0->unk_8 = &phi_t2->unk_4->z;
        phi_s0->unk_C = phi_t2->unk_8;
        phi_s0->unk_10 = phi_t2->unk_C;
        phi_s0->unk_14 = phi_t2->unk_10;
        phi_s0->unk_18 = phi_t2->unk_14;
        temp_v1_3 = &D_8013331C[SFX_BANK_ID(phi_t2->sfxId)][SFX_ID(phi_t2->sfxId)];
        phi_s0->unk_26 = temp_v1_3->unk_2;
        phi_s0->unk_24 = temp_v1_3->unk_0;
        phi_s0->unk_28 = phi_t2->sfxId;
        phi_s0->unk_2A = 1;
        phi_s0->unk_2B = 2;
        phi_s0->prev = D_8016E1A0[bankId];
        gSoundBanks[bankId][D_8016E1A0[bankId]].next = D_8016E1A8[bankId];
        D_8016E1A0[bankId] = D_8016E1A8[bankId];
        D_8016E1A8[bankId] = gSoundBanks[bankId][D_8016E1A8[bankId]].next;
        gSoundBanks[bankId][D_8016E1A8[bankId]].prev = 0xFF;
        phi_s0->next = 0xFF;
    }
} */

/* void func_800F7680(void) {
    u8 bankId;
    u8 bankIndex;
    u8 phi_t4;
    u8 bankIndex2;

    if (D_8016C9A0[D_801333A4].sfxId != 0) {
        bankId = SFX_BANK_ID_3(D_8016C9A0[D_801333A4].sfxId);
        if (((1 << bankId) & D_801333F0) != 0) {
            func_800F2D6C(D_80133340, D_8016C9A0[D_801333A4].sfxId);
        }
        bankIndex = gSoundBanks[bankId][0].next;
        phi_t4 = 0;
        bankIndex2 = 0x80;
        while (bankIndex != 0xFF && bankIndex != 0) {
            if (D_8016C9A0[D_801333A4].unk_4 == gSoundBanks[bankId][bankIndex].pos) {
                if (((D_8013331C[SFX_BANK_ID(D_8016C9A0[D_801333A4].sfxId)][SFX_ID(D_8016C9A0[D_801333A4].sfxId)].unk_2 & 0x20) == 0) || 
                    (D_8013331C[SFX_BANK_ID(D_8016C9A0[D_801333A4].sfxId)][SFX_ID(D_8016C9A0[D_801333A4].sfxId)].unk_0 != gSoundBanks[bankId][bankIndex].unk_24)) {
                    if (D_8016C9A0[D_801333A4].sfxId == gSoundBanks[bankId][bankIndex].unk_28) {
                        phi_t4 = D_80130594[bankId][D_801333CC];
                    } else {
                        if (phi_t4 == 0) {
                            bankIndex2 = bankIndex;
                        } else if (gSoundBanks[bankId][bankIndex].unk_24 < D_8013331C[SFX_BANK_ID(gSoundBanks[bankId][bankIndex].unk_28)][SFX_ID(gSoundBanks[bankId][bankIndex].unk_28)].unk_0) {
                            bankIndex2 = bankIndex;
                        }
                        phi_t4++;
                        if (phi_t4 == D_80130594[bankId][D_801333CC]) {
                            bankIndex = 0;
                            if (D_8013331C[SFX_BANK_ID(D_8016C9A0[D_801333A4].sfxId)][SFX_ID(D_8016C9A0[D_801333A4].sfxId)].unk_0 >= 
                                D_8013331C[SFX_BANK_ID(gSoundBanks[bankId][bankIndex].unk_28)][SFX_ID(gSoundBanks[bankId][bankIndex].unk_28)].unk_0) {
                                bankIndex = bankIndex2;
                            }
                        }
                    }
                    if (phi_t4 == D_80130594[bankId][D_801333CC]) {
                        if ((D_8016C9A0[D_801333A4].sfxId & 0xC00) || 
                                (D_8013331C[SFX_BANK_ID(D_8016C9A0[D_801333A4].sfxId)][SFX_ID(D_8016C9A0[D_801333A4].sfxId)].unk_2 & 4) || 
                                bankIndex2 == bankIndex) {
                            if ((gSoundBanks[bankId][bankIndex].unk_26 & 8) && gSoundBanks[bankId][bankIndex].unk_2A != 1) {
                                func_800F731C(gSoundBanks[bankId][bankIndex].unk_2E);
                            }
                            gSoundBanks[bankId][bankIndex].unk_C  = D_8016C9A0[D_801333A4].unk_8;
                            gSoundBanks[bankId][bankIndex].unk_28 = D_8016C9A0[D_801333A4].sfxId;
                            gSoundBanks[bankId][bankIndex].unk_2A = 1;
                            gSoundBanks[bankId][bankIndex].unk_2B = 2;
                            gSoundBanks[bankId][bankIndex].unk_10 = D_8016C9A0[D_801333A4].unk_C;
                            gSoundBanks[bankId][bankIndex].unk_14 = D_8016C9A0[D_801333A4].unk_10;
                            gSoundBanks[bankId][bankIndex].unk_18 = D_8016C9A0[D_801333A4].unk_14;
                            gSoundBanks[bankId][bankIndex].unk_26 = D_8013331C[SFX_BANK_ID(D_8016C9A0[D_801333A4].sfxId)][SFX_ID(D_8016C9A0[D_801333A4].sfxId)].unk_2;
                            gSoundBanks[bankId][bankIndex].unk_24 = D_8013331C[SFX_BANK_ID(D_8016C9A0[D_801333A4].sfxId)][SFX_ID(D_8016C9A0[D_801333A4].sfxId)].unk_0;
                        } else if (gSoundBanks[bankId][bankIndex].unk_2A == 5) {
                            gSoundBanks[bankId][bankIndex].unk_2A = 4;
                        }
                        bankIndex = 0;
                    }
                }
            }
            if (bankIndex != 0) {
                bankIndex = gSoundBanks[bankId][bankIndex].next;
            }
        }
        if (gSoundBanks[bankId][D_8016E1A8[bankId]].next != 0xFF && gSoundBanks[bankId][D_8016E1A8[bankId]].next != 0) {
            gSoundBanks[bankId][D_8016E1A8[bankId]].pos    = &D_8016C9A0[D_801333A4].unk_4->x;
            gSoundBanks[bankId][D_8016E1A8[bankId]].unk_4  = &D_8016C9A0[D_801333A4].unk_4->y;
            gSoundBanks[bankId][D_8016E1A8[bankId]].unk_8  = &D_8016C9A0[D_801333A4].unk_4->z;
            gSoundBanks[bankId][D_8016E1A8[bankId]].unk_C  = D_8016C9A0[D_801333A4].unk_8;
            gSoundBanks[bankId][D_8016E1A8[bankId]].unk_10 = D_8016C9A0[D_801333A4].unk_C;
            gSoundBanks[bankId][D_8016E1A8[bankId]].unk_14 = D_8016C9A0[D_801333A4].unk_10;
            gSoundBanks[bankId][D_8016E1A8[bankId]].unk_18 = D_8016C9A0[D_801333A4].unk_14;
            gSoundBanks[bankId][D_8016E1A8[bankId]].unk_26 = D_8013331C[SFX_BANK_ID(D_8016C9A0[D_801333A4].sfxId)][SFX_ID(D_8016C9A0[D_801333A4].sfxId)].unk_2;
            gSoundBanks[bankId][D_8016E1A8[bankId]].unk_24 = D_8013331C[SFX_BANK_ID(D_8016C9A0[D_801333A4].sfxId)][SFX_ID(D_8016C9A0[D_801333A4].sfxId)].unk_0;
            gSoundBanks[bankId][D_8016E1A8[bankId]].unk_2A = 1;
            gSoundBanks[bankId][D_8016E1A8[bankId]].unk_2B = 2;
            gSoundBanks[bankId][D_8016E1A8[bankId]].unk_28 = D_8016C9A0[D_801333A4].sfxId;
            gSoundBanks[bankId][D_8016E1A8[bankId]].prev = D_8016E1A0[bankId];
            gSoundBanks[bankId][D_8016E1A0[bankId]].next = D_8016E1A8[bankId];
            D_8016E1A0[bankId] = D_8016E1A8[bankId];
            D_8016E1A8[bankId] = gSoundBanks[bankId][D_8016E1A8[bankId]].next;
            gSoundBanks[bankId][gSoundBanks[bankId][D_8016E1A8[bankId]].next].prev = 0xFF;
            gSoundBanks[bankId][D_8016E1A8[bankId]].next = 0xFF;
        }
    }
} */

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F7B54.s")
void func_800F7B54(u8 bankId, u8 bankIndex) {
    Struct_800F74E0* entry;
    u8 i;

    entry = &gSoundBanks[bankId][bankIndex];
    if (entry->unk_26 & 8) {
        func_800F731C(entry->unk_2E);
    }
    if (bankIndex == D_8016E1A0[bankId]) {
        D_8016E1A0[bankId] = entry->prev;
    } else {
        gSoundBanks[bankId][entry->next].prev = entry->prev;
    }
    gSoundBanks[bankId][entry->prev].next = entry->next;
    entry->next = D_8016E1A8[bankId];
    entry->prev = 0xFF;
    gSoundBanks[bankId][D_8016E1A8[bankId]].prev = bankIndex;
    D_8016E1A8[bankId] = bankIndex;
    entry->unk_2A = 0;

    for (i = 0; i < D_80130578[D_801333CC][bankId]; i++) {
        if (D_8016E1B8[bankId][i].unk_4 == bankIndex) {
            D_8016E1B8[bankId][i].unk_4 = 0xFF;
            i = D_80130578[D_801333CC][bankId];
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F7CEC.s")
/* void func_800F7CEC(u8 bankId) {
    Struct_800F7CEC sp84[3];
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;
    s32 temp_a1;
    s32 temp_lo;
    s32 temp_s0;
    s32 temp_t1;
    s32 temp_t3;
    u32 temp_t7;
    u8 temp_a0;
    u8 temp_s4;
    u8 temp_t0;
    u8 temp_t2;
    Struct_800F74E0 *entry;
    s32 phi_t3;
    s32 phi_t5;
    s32 phi_v1;
    u8 phi_s4;
    s32 phi_a3;
    f32 phi_f0;
    s32 phi_t3_2;
    s32 phi_s3;
    s32 phi_v1_3;
    s32 phi_a1;
    s32 phi_t3_3;
    s32 phi_s0;
    s32 phi_s3_2;
    s32 phi_t3_4;
    s32 phi_a2;
    u8 phi_t3_5;
    s32 phi_t0;
    u8 phi_t1;
    s32 phi_a1_2;
    s32 phi_t4;
    s32 phi_t2;
    s32 phi_a1_5;
    u8 phi_s4_2;
    s32 phi_v1_7;

    for (phi_t3 = 0; phi_t3 < 3; phi_t3++) {
        sp84[phi_t3].unk_0 = 0x7FFFFFFF;
        sp84[phi_t3].unk_4 = 0xFF;
    }

    phi_s4 = gSoundBanks[bankId][0].next;
    phi_s3_2 = 0;
    phi_s0 = 0;
    while (phi_s4 != 0xFF) {
        if (gSoundBanks[bankId][phi_s4].unk_2A == 1 && (gSoundBanks[bankId][phi_s4].unk_28 & 0xC00)) {
            gSoundBanks[bankId][phi_s4].unk_2B--;
        } else if (!(gSoundBanks[bankId][phi_s4].unk_28 & 0xC00)) {
            if (gSoundBanks[bankId][phi_s4].unk_2A == 5) {
                func_800E5B20(0x06020000 | ((gSoundBanks[bankId][phi_s4].unk_2E & 0xFF) << 8), 0);
                func_800F7B54(bankId, phi_s4);
            }
        }
        if (gSoundBanks[bankId][phi_s4].unk_2B == 0) {
            func_800F7B54(bankId, phi_s4);
        } else {
            entry = &gSoundBanks[bankId][phi_s4];
            if (gSoundBanks[bankId][phi_s4].unk_2A != 0) {
                if (entry->pos == &D_801333D4) {
                    entry->unk_1C = 0.0f;
                } else {
                    temp_f12 = *((f32*)entry->pos);
                    temp_f0 = *entry->unk_4;
                    temp_f2 = *entry->unk_8;
                    entry->unk_1C = (temp_f2 * temp_f2) + (temp_f12 * temp_f12) + (temp_f0 * temp_f0);
                }
                if (entry->unk_26 & 0x10) {
                    entry->unk_20 = SQ(0xFF - entry->unk_24) * 0x1690;
                } else {
                    if (entry->unk_1C > 2.1474836e9f) {
                        entry->unk_1C = 1.8790482e9f;
                        // "\x1B[41;37m<INAGAKI CHECK> dist over! flag:%04X ptr:%08X pos:%f-%f-%f\x1B[m\n"
                        osSyncPrintf(D_80133344, entry->unk_28, entry->pos, entry->unk_8, *entry->pos, *entry->unk_4, *entry->unk_8);
                    }
                    temp_t7 = ((entry->unk_1C + (SQ(0xFF - entry->unk_24) * 0x1690)) + entry->unk_28) - entry->unk_28;
                    entry->unk_20 = temp_t7;
                    if (*entry->unk_8 < 0.0f) {
                        entry->unk_20 = temp_t7 + -*entry->unk_8 * 6.0f;
                    }
                }
                if (entry->unk_1C > 1.0e10f) {
                    if (entry->unk_2A == 4) {
                        func_800E5B20((entry->unk_2E << 8) | 0x6020000, 0);
                        if (entry->unk_28 & 0xC00) {
                            func_800F7B54(bankId, phi_s4);
                            phi_s4 = phi_s0;
                        }
                    }
                } else {
                    temp_t1 = D_80130578[bankId][D_801333CC];
                    for (phi_t3_2 = 0; phi_t3_2 < temp_t1; phi_t3_2++) {
                        if (sp84[phi_t3_2].unk_0 >= entry->unk_20) {
                            if (phi_s3_2 < D_80130578[bankId][D_801333CC]) {
                                phi_s3_2++;
                            }
                            for (;phi_t3_2 < temp_t1 - 1; phi_a1--) {
                                sp84[phi_a1].unk_0 = sp84[phi_a1 - 1].unk_0;
                                sp84[phi_a1].unk_4 = sp84[phi_a1 - 1].unk_4;
                            }
                            sp84[phi_t3_2].unk_0 = entry->unk_20;
                            sp84[phi_t3_2].unk_4 = phi_s4;
                            phi_t3_2 = temp_t1;
                        }
                    }
                }
                phi_s0 = phi_s4;
            }
        }
        phi_s4 = gSoundBanks[bankId][phi_s0].next;
    }

    for (phi_t3_4 = 0; phi_t3_4 < phi_s3_2; phi_t3_4++) {
        if (gSoundBanks[bankId][sp84[phi_t3_4].unk_4].unk_2A == 1) {
            gSoundBanks[bankId][sp84[phi_t3_4].unk_4].unk_2A = 2;
        } else if (gSoundBanks[bankId][sp84[phi_t3_4].unk_4].unk_2A == 4) {
            gSoundBanks[bankId][sp84[phi_t3_4].unk_4].unk_2A = 3;
        }
    }

    for (phi_t3_5 = 0; phi_t3_5 < D_80130578[bankId][D_801333CC]; phi_t3_5++) {
        if (D_8016E1B8[bankId][phi_t3_5].unk_4 == 0xFF) {
            phi_v1 = 1;
        } else {
            if (gSoundBanks[bankId][D_8016E1B8[bankId][phi_t3_5].unk_4].unk_2A == 4) {
                if (gSoundBanks[bankId][D_8016E1B8[bankId][phi_t3_5].unk_4].unk_28 & 0xC00) {
                    func_800F7B54(bankId, D_8016E1B8[bankId][phi_t3_5].unk_4);
                } else {
                    gSoundBanks[bankId][D_8016E1B8[bankId][phi_t3_5].unk_4].unk_2A = 1;
                }
                phi_v1 = 1;
            } else if (gSoundBanks[bankId][D_8016E1B8[bankId][phi_t3_5].unk_4].unk_2A == 0) {
                D_8016E1B8[bankId][phi_t3_5].unk_4 = 0xFF;
                phi_v1 = 1;
            } else {
                for (phi_a1_2 = 0; phi_a1_2 < D_80130578[bankId][D_801333CC]; phi_a1_2++) {
                    if (D_8016E1B8[bankId][phi_t3_5].unk_4 == sp84[phi_a1_2].unk_4) {
                        sp84[phi_a1_2].unk_4 = 0xFF;
                        phi_a1_2 = D_80130578[bankId][D_801333CC];
                    }
                }
                phi_v1 = 0;
            }
        }
        if (phi_v1 == 1) {
            for (phi_a1_5 = 0; phi_a1_5 < D_80130578[bankId][D_801333CC]; phi_a1_5++) {
                if (sp84[phi_a1_5].unk_4 != 0xFF) {
                    if (3 != gSoundBanks[bankId][sp84[phi_a1_5].unk_4].unk_2A) {
                        for (phi_s0 = 0; phi_s0 < D_80130578[bankId][D_801333CC]; phi_s0++) {
                            if (sp84[phi_a1_5].unk_4 == D_8016E1B8[bankId][phi_s0].unk_4) {
                                phi_s0 = D_80130578[bankId][D_801333CC];
                                phi_v1 = 0;
                            }
                        }
                        if (phi_v1 == 1) {
                            D_8016E1B8[bankId][phi_t3_5].unk_4 = sp84[phi_a1_5].unk_4;
                            sp84[phi_a1_5].unk_4 = 0xFF;
                            phi_a1_5 = D_80130578[bankId][D_801333CC] + 1;
                        }
                    }
                }
            }
            if (D_80130578[bankId][D_801333CC] == phi_a1_5) {
                D_8016E1B8[bankId][phi_t3_5].unk_4 = 0xFF;
            }
        }
    }
} */

#ifdef NON_MATCHING
// Single register swap
void func_800F8480(u8 bankId) {
    u8 bankIndex;
    SequenceChannel* seqChannel;
    Struct_800F74E0* entry;
    s32 pad;
    u8 i;

    for (i = 0; i < D_80130578[D_801333CC][bankId]; i++) {
        bankIndex = D_8016E1B8[bankId][i].unk_4;
        if (bankIndex != 0xFF) {
            entry = &gSoundBanks[bankId][bankIndex];
            seqChannel = gAudioContext.gSequencePlayers[2].channels[D_8016E260];
            if (entry->unk_2A == 2) {
                entry->unk_2E = D_8016E260;
                if (entry->unk_26 & 8) {
                    func_800F72B8(D_8016E260);
                }
                switch (entry->unk_26 & 0xC0) {
                    case 0:
                        break;
                    case 0x40:
                        entry->unk_2F = func_800E67C0() & 0xF;
                        break;
                    case 0x80:
                        entry->unk_2F = func_800E67C0() & 0x1F;
                        break;
                    case 0xC0:
                        entry->unk_2F = func_800E67C0() & 0x3F;
                        break;
                    default:
                        entry->unk_2F = 0;
                        break;
                }
                func_800F3A08(bankId, bankIndex, D_8016E260);
                func_800E5B20(0x06020000 | ((D_8016E260 & 0xFF) << 8), 1);
                func_800E5B20(0x06020000 | ((D_8016E260 & 0xFF) << 8) | 4, entry->unk_28 & 0xFF);
                if (D_80130570[bankId] != 0) {
                    func_800E5B20(0x06020000 | ((D_8016E260 & 0xFF) << 8) | 5, (entry->unk_28 & 0x100) >> 8);
                }
                if (entry->unk_28 & 0xC00) {
                    entry->unk_2A = 4;
                } else {
                    entry->unk_2A = 5;
                }
            } else if (seqChannel->soundScriptIO[1] == 0xFF) {
                func_800F7B54(bankId, bankIndex);
            } else if (entry->unk_2A == 3) {
                func_800F3A08(bankId, bankIndex, D_8016E260);
                if (entry->unk_28 & 0xC00) {
                    entry->unk_2A = 4;
                } else {
                    entry->unk_2A = 5;
                }
            }
        }
        D_8016E260++;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8480.s")
#endif

void func_800F87A0(u8 bankId) {
    Struct_800F74E0* entry;
    s32 pad;
    Struct_800F74E0 sp48;
    u8 bankIndex;

    bankIndex = gSoundBanks[bankId][0].next;
    while (bankIndex != 0xFF) {
        entry = &gSoundBanks[bankId][bankIndex];
        if (entry->unk_2A >= 3) {
            func_800E5B20(0x06020000 | ((entry->unk_2E & 0xFF) << 8), 0);
        }
        if (entry->unk_2A != 0) {
            func_800F7B54(bankId, bankIndex);
        }
        bankIndex = gSoundBanks[bankId][0].next;
    }
    sp48.unk_28 = bankId << 0xC;
    func_800F74E0(0, &sp48);
}

void func_800F8884(u8 bankId, Vec3f* pos) {
    Struct_800F74E0* entry;
    u8 bankIndex;
    u8 bankIndex2;

    bankIndex = gSoundBanks[bankId][0].next;
    bankIndex2 = 0;
    while (bankIndex != 0xFF) {
        entry = &gSoundBanks[bankId][bankIndex];
        if (entry->pos == pos) {
            if (entry->unk_2A >= 3) {
                func_800E5B20(0x06020000 | ((entry->unk_2E & 0xFF) << 8), 0);
            }
            if (entry->unk_2A != 0) {
                func_800F7B54(bankId, bankIndex);
            }
        } else {
            bankIndex2 = bankIndex;
        }
        bankIndex = gSoundBanks[bankId][bankIndex2].next;
    }
}

void func_800F89A0(u8 bankId, Vec3f* pos) {
    Struct_800F74E0 sp18;

    func_800F8884(bankId, pos);
    sp18.unk_28 = bankId << 0xC;
    sp18.pos = pos;
    func_800F74E0(1, &sp18);
}

void func_800F89E8(Vec3f* pos) {
    u8 i;
    Struct_800F74E0 sp24;

    for (i = 0; i < ARRAY_COUNT(gSoundBanks); i++) {
        func_800F8884(i, pos);
    }
    sp24.pos = pos;
    func_800F74E0(2, &sp24);
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8A44.s")
void func_800F8A44(Vec3f* pos, u16 sfxId) {
    Struct_800F74E0* entry;
    u8 bankIndex;
    u8 bankIndex2;
    Struct_800F74E0 sp50;

    bankIndex = gSoundBanks[SFX_BANK_ID_3(sfxId)][0].next;
    bankIndex2 = 0;
    while (bankIndex != 0xFF) {
        entry = &gSoundBanks[SFX_BANK_ID_3(sfxId)][bankIndex];
        if (entry->pos == pos && entry->unk_28 == sfxId) {
            if (entry->unk_2A >= 3) {
                func_800E5B20(0x06020000 | ((entry->unk_2E & 0xFF) << 8), 0);
            }
            if (entry->unk_2A != 0) {
                func_800F7B54(SFX_BANK_ID_3(sfxId), bankIndex);
            }
            bankIndex = 0xFF;
        } else {
            bankIndex2 = bankIndex;
        }
        if (bankIndex != 0xFF) {
            bankIndex = gSoundBanks[SFX_BANK_ID_3(sfxId)][bankIndex2].next;
        }
    }
    sp50.pos = pos;
    sp50.unk_28 = sfxId;
    func_800F74E0(3, &sp50);
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8BA0.s")
void func_800F8BA0(u8 arg0, u16 sfxId) {
    Struct_800F74E0* entry;
    u8 bankIndex;
    u8 bankIndex2;
    Struct_800F74E0 sp58;

    bankIndex = gSoundBanks[SFX_BANK_ID_3(sfxId)][0].next;
    bankIndex2 = 0;
    while (bankIndex != 0xFF) {
        entry = &gSoundBanks[SFX_BANK_ID_3(sfxId)][bankIndex];
        if (entry->unk_C == arg0 && entry->unk_28 == sfxId) {
            if (entry->unk_2A >= 3) {
                func_800E5B20(0x06020000 | ((entry->unk_2E & 0xFF) << 8), 0);
            }
            if (entry->unk_2A != 0) {
                func_800F7B54(SFX_BANK_ID_3(sfxId), bankIndex);
            }
        } else {
            bankIndex2 = bankIndex;
        }
        if (bankIndex != 0xFF) {
            bankIndex = gSoundBanks[SFX_BANK_ID_3(sfxId)][bankIndex2].next;
        }
    }
    sp58.unk_C = arg0;
    sp58.unk_28 = sfxId;
    func_800F74E0(4, &sp58);
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8D04.s")
void func_800F8D04(u32 sfxId) {
    Struct_800F74E0* entry;
    u8 bankIndex;
    u8 bankIndex2;
    Struct_800F74E0 sp50;

    bankIndex = gSoundBanks[SFX_BANK_ID_3(sfxId)][0].next;
    bankIndex2 = 0;
    while (bankIndex != 0xFF) {
        entry = &gSoundBanks[SFX_BANK_ID_3(sfxId)][bankIndex];
        if (entry->unk_28 == sfxId) {
            if (entry->unk_2A >= 3) {
                func_800E5B20(0x06020000 | ((entry->unk_2E & 0xFF) << 8), 0);
            }
            if (entry->unk_2A != 0) {
                func_800F7B54(SFX_BANK_ID_3(sfxId), bankIndex);
            }
        } else {
            bankIndex2 = bankIndex;
        }
        bankIndex = gSoundBanks[SFX_BANK_ID_3(sfxId)][bankIndex2].next;
    }
    sp50.unk_28 = sfxId;
    func_800F74E0(5, &sp50);
}

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

    if (IS_SEQUENCE_CHANNEL_VALID(gAudioContext.gSequencePlayers[2].channels[0])) {
        D_8016E260 = 0;
        for (i = 0; i < ARRAY_COUNT(gSoundBanks); i++) {
            func_800F7CEC(i);
            func_800F8480(i);
            func_800F8F34(i);
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F8FF4.s")
// Audio_SoundInBank ?
u8 func_800F8FF4(u32 sfxId) {
    Struct_800F74E0* entry;
    u8 bankIndex;

    bankIndex = gSoundBanks[SFX_BANK_ID_3(sfxId)][0].next;
    while (bankIndex != 0xFF) {
        entry = &gSoundBanks[SFX_BANK_ID_3(sfxId)][bankIndex];
        if (entry->unk_28 == sfxId) {
            return true;
        }
        bankIndex = entry->next;
    }
    return false;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F905C.s")
void func_800F905C(void) {
    u8 bankId;
    u8 i;
    u8 bankIndex;

    D_801333A0 = 0;
    D_801333A4 = 0;
    D_801333D0 = 0;
    for (bankId = 0; bankId < ARRAY_COUNT(gSoundBanks); bankId++) {
        D_8016E1A0[bankId] = 0;
        D_8016E1A8[bankId] = 1;
        D_8016E1B0[bankId] = 0;
        D_8016E264[bankId] = 0;
        D_8016E270[bankId].unk_0 = 1.0f;
        D_8016E270[bankId].unk_C = 0;
    }
    for (bankId = 0; bankId < ARRAY_COUNT(gSoundBanks); bankId++) {
        for (i = 0; i < 3; i++) {
            D_8016E1B8[bankId][i].unk_4 = 0xFF;
        }
    }
    for (bankId = 0; bankId < ARRAY_COUNT(gSoundBanks); bankId++) {
        gSoundBanks[bankId][0].prev = 0xFF;
        gSoundBanks[bankId][0].next = 0xFF;
        for (i = 1; i < sBankSizes[bankId] - 1; i++) {
            gSoundBanks[bankId][i].prev = i - 1;
            gSoundBanks[bankId][i].next = i + 1;
        }
        gSoundBanks[bankId][i].prev = i - 1;
        gSoundBanks[bankId][i].next = 0xFF;
    }
    if (D_801333F8 == 0) {
        for (bankId = 0; bankId < 10; bankId++) {
            D_8016E2E0[bankId] = 0;
            D_8016E2F8[bankId] = 0;
            D_8016E310[bankId] = 0;
        }
        D_801333F8++;
    }
}
