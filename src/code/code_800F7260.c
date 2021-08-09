#include "ultra64.h"
#include "global.h"
#include "vt.h"

typedef struct {
    /* 0x00 */ u16 sfxId;
    /* 0x04 */ Vec3f* pos;
    /* 0x08 */ u8 unk_8;
    /* 0x0C */ f32* unk_C;
    /* 0x10 */ f32* unk_10;
    /* 0x14 */ s8* unk_14;
} Struct_800F738C; // size = 0x18

typedef struct {
    /* 0x00 */ f32 unk_0;
    /* 0x04 */ f32 unk_4;
    /* 0x08 */ f32 unk_8;
    /* 0x0C */ u16 unk_C;
} Struct_800F8EA0; // size = 0x10

// rodata for func_800F7680 (this file)
char D_80133340[] = "SE";

// rodata for func_800F7CEC (this file)
char D_80133344[] = VT_COL(RED, WHITE) "<INAGAKI CHECK> dist over! flag:%04X ptr:%08X pos:%f-%f-%f" VT_RST "\n";

// file padding
s32 D_8013338C = 0;

// rodata for Audio_ProcessSeqCmd (code_800F9280.c)
char D_80133390[] = "SEQ H";
char D_80133398[] = "    L";

// data
u8 D_801333A0 = 0;

u8 D_801333A4 = 0;

/**
 * Array of pointers to arrays of SoundBankEntry of sizes: 9, 12, 22, 20, 8, 3, 5
 *
 * 0 : Player Bank          size 9
 * 1 : Item Bank            size 12
 * 2 : Environment Bank     size 22
 * 3 : Enemy Bank           size 20
 * 4 : System Bank          size 8
 * 5 : Ocarina Bank         size 3
 * 6 : Voice Bank           size 5
 */
SoundBankEntry* gSoundBanks[7] = {
    D_8016BAD0, D_8016BC80, D_8016BEC0, D_8016C2E0, D_8016C6A0, D_8016C820, D_8016C8B0,
};

u8 sBankSizes[ARRAY_COUNT(gSoundBanks)] = {
    ARRAY_COUNT(D_8016BAD0), ARRAY_COUNT(D_8016BC80), ARRAY_COUNT(D_8016BEC0), ARRAY_COUNT(D_8016C2E0),
    ARRAY_COUNT(D_8016C6A0), ARRAY_COUNT(D_8016C820), ARRAY_COUNT(D_8016C8B0),
};

u8 D_801333CC = 0;

u16 D_801333D0 = 0;

Vec3f D_801333D4 = { 0.0f, 0.0f, 0.0f };

f32 D_801333E0 = 1.0f;

UNK_TYPE D_801333E4 = 0;

s8 D_801333E8 = 0;

UNK_TYPE D_801333EC = 0;

u8 D_801333F0 = 0;

u8 D_801333F4 = 0;

u8 D_801333F8 = 0;

extern Struct_800F738C D_8016C9A0[];
extern Struct_800F8EA0 D_8016E270[];
extern Struct_8013331C* D_8013331C[9];

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

void Audio_QueueSeqCmdMute(u8 arg0) {
    D_801333D0 |= (1 << arg0);
    Audio_SetVolScale(0, 2, 0x40, 0xF);
    Audio_SetVolScale(3, 2, 0x40, 0xF);
}

void Audio_ClearBGMMute(u8 arg0) {
    D_801333D0 &= ((1 << arg0) ^ 0xFFFF);
    if (D_801333D0 == 0) {
        Audio_SetVolScale(0, 2, 0x7F, 0xF);
        Audio_SetVolScale(3, 2, 0x7F, 0xF);
    }
}

// a3 = freq scale factor for ocarina
// a5 = reverb add
void Audio_PlaySoundGeneral(u16 sfxId, Vec3f* a1, u8 a2, f32* a3, f32* a4, s8* a5) {
    u8 i;
    Struct_800F738C* phi_v0;

    if (D_8016E264[SFX_BANK_SHIFT(sfxId)] == 0) {
        phi_v0 = &D_8016C9A0[D_801333A0];
        if (D_801333F4 == 0) {
            for (i = 0; i < 10; i++) {
                if (sfxId == D_8016E2E0[i]) {
                    if (D_8016E310[i] == 0) {
                        sfxId = D_8016E2F8[i];
                    } else {
                        phi_v0->sfxId = D_8016E2F8[i];
                        phi_v0->pos = a1;
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
        phi_v0->pos = a1;
        phi_v0->unk_8 = a2;
        phi_v0->unk_C = a3;
        phi_v0->unk_10 = a4;
        phi_v0->unk_14 = a5;
        D_801333A0++;
    }
}

void func_800F74E0(u8 arg0, SoundBankEntry* arg1) {
    Struct_800F738C* entry;
    s32 phi_a0;
    u8 i = D_801333A4;

    for (i; i != D_801333A0; i++) {
        phi_a0 = false;
        entry = &D_8016C9A0[i];
        switch (arg0) {
            case 0:
                if (SFX_BANK_MASK(entry->sfxId) == SFX_BANK_MASK(arg1->unk_28)) {
                    phi_a0 = true;
                }
                break;
            case 1:
                if (SFX_BANK_MASK(entry->sfxId) == SFX_BANK_MASK(arg1->unk_28) && (&entry->pos->x == arg1->posX)) {
                    phi_a0 = true;
                }
                break;
            case 2:
                if (&entry->pos->x == arg1->posX) {
                    phi_a0 = true;
                }
                break;
            case 3:
                if (&entry->pos->x == arg1->posX && entry->sfxId == arg1->unk_28) {
                    phi_a0 = true;
                }
                break;
            case 4:
                if (entry->unk_8 == arg1->unk_C && entry->sfxId == arg1->unk_28) {
                    phi_a0 = true;
                }
                break;
            case 5:
                if (entry->sfxId == arg1->unk_28) {
                    phi_a0 = true;
                }
                break;
        }
        if (phi_a0) {
            entry->sfxId = 0;
        }
        // i++;
    }
}

#ifdef NON_MATCHING
// Down to a/v regalloc and some stuff where the compiler gets confused about reusing values. There's some fake matching
// stuff to improve regalloc enough to verify equivalence.
void func_800F7680(void) {
    u16 flag1;
    u8 sp55;
    u8 phi_a1;
    Struct_800F738C* sp50;
    SoundBankEntry* temp_v0;
    Struct_8013331C* sp48;
    s32 phi_s5;
    u8 sp43;
    u8 phi_s1;
    u16 flag2;

    sp50 = &D_8016C9A0[D_801333A4];
    phi_s1 = 0x80;
    if (sp50->sfxId == 0) {
        return;
    }
    phi_s5 = SFX_BANK(sp50->sfxId);
    if ((1 << phi_s5) & D_801333F0) {
        func_800F2D6C(D_80133340, sp50->sfxId);
        phi_s5 = SFX_BANK(sp50->sfxId);
    }
    sp55 = 0;
    phi_a1 = gSoundBanks[phi_s5][0].next;
    while (phi_a1 != 0xFF && phi_a1 != 0) {
        if (gSoundBanks[phi_s5][phi_a1].posX == &sp50->pos->x) {
            sp48 = &D_8013331C[SFX_BANK_SHIFT(sp50->sfxId)][SFX_INDEX(sp50->sfxId)];
            if (!(!(sp48->unk_2 & 0x20) || sp48->unk_0 != gSoundBanks[phi_s5][phi_a1].unk_24)) {
                return;
            }
            if (gSoundBanks[phi_s5][phi_a1].unk_28 == sp50->sfxId) {
                sp55 = D_80130594[D_801333CC][phi_s5];
            } else {
                //!@bug possibly uninitialized sp43 ? confirm when matching
                if (sp55 == 0) {
                    phi_s1 = phi_a1;
                    flag1 = gSoundBanks[phi_s5][phi_a1].unk_28 & 0xFFFF;
                    sp43 = D_8013331C[SFX_BANK_SHIFT(flag1)][SFX_INDEX(flag1)].unk_0;
                } else if (gSoundBanks[phi_s5][phi_a1].unk_24 < sp43) {
                    phi_s1 = phi_a1;
                    flag1 = gSoundBanks[phi_s5][phi_a1].unk_28 & 0xFFFF;
                    sp43 = D_8013331C[SFX_BANK_SHIFT(flag1)][SFX_INDEX(flag1)].unk_0;
                }
                sp55++;
                if (sp55 == D_80130594[D_801333CC][phi_s5]) {
                    phi_a1 = (sp48->unk_0 >= sp43) ? phi_s1 : 0;
                }
            }
            if (D_80130594[D_801333CC][phi_s5] == sp55) {
                flag2 = sp50->sfxId & 0xC00; // Problem is around here
                sp48 = &D_8013331C[SFX_BANK_SHIFT(sp50->sfxId)][SFX_INDEX(sp50->sfxId)];
                if ((flag2) || (D_8013331C[SFX_BANK_SHIFT(sp50->sfxId)][SFX_INDEX(sp50->sfxId)].unk_2 & 4) ||
                    (phi_a1 == phi_s1)) {
                    if ((gSoundBanks[phi_s5][phi_a1].unk_26 & 8) && gSoundBanks[phi_s5][phi_a1].unk_2A != 1) {
                        Audio_ClearBGMMute(gSoundBanks[phi_s5][phi_a1].unk_2E);
                    }
                    gSoundBanks[phi_s5][phi_a1].unk_C = sp50->unk_8;
                    gSoundBanks[phi_s5][phi_a1].unk_28 = sp50->sfxId;
                    gSoundBanks[phi_s5][phi_a1].unk_2A = 1;
                    gSoundBanks[phi_s5][phi_a1].unk_2B = 2;
                    gSoundBanks[phi_s5][phi_a1].unk_10 = sp50->unk_C;
                    gSoundBanks[phi_s5][phi_a1].unk_14 = sp50->unk_10;
                    gSoundBanks[phi_s5][phi_a1].unk_18 = sp50->unk_14;
                    gSoundBanks[phi_s5][phi_a1].unk_26 = sp48->unk_2;
                    gSoundBanks[phi_s5][phi_a1].unk_24 = sp48->unk_0;
                    if (!sp48->unk_2) {}
                } else if (gSoundBanks[phi_s5][phi_a1].unk_2A == 5) {
                    gSoundBanks[phi_s5][phi_a1].unk_2A = 4;
                }
                phi_a1 = 0;
            }
        }
        if (phi_a1 != 0) {
            phi_a1 = gSoundBanks[phi_s5][phi_a1].next;
        }
    }
    if (gSoundBanks[phi_s5][D_8016E1A8[phi_s5]].next != 0xFF && phi_a1 != 0) {
        phi_a1 = D_8016E1A8[phi_s5];
        temp_v0 = &gSoundBanks[phi_s5][phi_a1];
        temp_v0->posX = &sp50->pos->x;
        temp_v0->posY = &sp50->pos->y;
        temp_v0->posZ = &sp50->pos->z;
        temp_v0->unk_C = sp50->unk_8;
        temp_v0->unk_10 = sp50->unk_C;
        temp_v0->unk_14 = sp50->unk_10;
        temp_v0->unk_18 = sp50->unk_14;
        sp48 = &D_8013331C[SFX_BANK_SHIFT(sp50->sfxId)][SFX_INDEX(sp50->sfxId)];
        temp_v0->unk_26 = sp48->unk_2;
        temp_v0->unk_24 = sp48->unk_0;
        temp_v0->unk_28 = sp50->sfxId;
        temp_v0->unk_2A = 1;
        temp_v0->unk_2B = 2;
        temp_v0->prev = D_8016E1A0[phi_s5];
        gSoundBanks[phi_s5][D_8016E1A0[phi_s5]].next = D_8016E1A8[phi_s5];
        D_8016E1A0[phi_s5] = D_8016E1A8[phi_s5];
        D_8016E1A8[phi_s5] = gSoundBanks[phi_s5][D_8016E1A8[phi_s5]].next;
        gSoundBanks[phi_s5][D_8016E1A8[phi_s5]].prev = 0xFF;
        temp_v0->next = 0xFF;
    }
}
#else
void func_800F7680(void);
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800F7260/func_800F7680.s")
#endif

void func_800F7B54(u8 bankId, u8 bankIndex) {
    SoundBankEntry* entry = &gSoundBanks[bankId][bankIndex];
    u8 i;

    if (entry->unk_26 & 8) {
        Audio_ClearBGMMute(entry->unk_2E);
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

void func_800F7CEC(u8 arg0) {
    u8 phi_a1;
    u8 spAE;
    u8 phi_s4;
    u8 spAC;
    u8 phi_s3;
    u8 phi_s0;
    u8 spA9;
    u8 phi_v1_5;
    u8 temp1;
    u8 temp2;
    u16 temp3;
    f32 tempf1;
    SoundBankEntry* temp_s2;
    Struct_800F7CEC sp84[3];
    Struct_800F7CEC* temp_s4_3;
    s32 pad;

    phi_s3 = 0;
    for (spAC = 0; spAC < 3; spAC++) {
        sp84[spAC].unk_0 = 0x7FFFFFFF;
        sp84[spAC].unk_4 = 0xFF;
    }
    phi_s4 = gSoundBanks[arg0][0].next;
    phi_s0 = 0;
    while (phi_s4 != 0xFF) {
        if ((1 == gSoundBanks[arg0][phi_s4].unk_2A) && (gSoundBanks[arg0][phi_s4].unk_28 & 0xC00)) {
            gSoundBanks[arg0][phi_s4].unk_2B--;
        } else if (!(gSoundBanks[arg0][phi_s4].unk_28 & 0xC00) && (gSoundBanks[arg0][phi_s4].unk_2A == 5)) {
            Audio_QueueCmdS8((gSoundBanks[arg0][phi_s4].unk_2E << 8) | 0x6020000, 0);
            func_800F7B54(arg0, phi_s4);
        }
        if (gSoundBanks[arg0][phi_s4].unk_2B == 0) {
            func_800F7B54(arg0, phi_s4);
        } else if (gSoundBanks[arg0][phi_s4].unk_2A != 0) {
            temp_s2 = &gSoundBanks[arg0][phi_s4];

            if (&D_801333D4.x == temp_s2[0].posX) {
                temp_s2->unk_1C = 0.0f;
            } else {
                tempf1 = *temp_s2->posY * 1;
                temp_s2->unk_1C = (SQ(*temp_s2->posX) + SQ(tempf1) + SQ(*temp_s2->posZ)) * 1;
            }
            spA9 = temp_s2->unk_24;
            if (temp_s2->unk_26 & 0x10) {
                temp_s2->unk_20 = SQ(0xFF - spA9) * 0x1690;
            } else {
                if (temp_s2->unk_1C > 0x7FFFFFD0) {
                    temp_s2->unk_1C = 0x70000008;
                    osSyncPrintf(D_80133344, temp_s2->unk_28, temp_s2->posX, temp_s2->posZ, *temp_s2->posX,
                                 *temp_s2->posY, *temp_s2->posZ);
                }
                temp3 = temp_s2->unk_28;
                temp_s2->unk_20 = (u32)temp_s2->unk_1C + (SQ(0xFF - spA9) * 0x1690) + temp3 - temp3;
                if (*temp_s2->posZ < 0.0f) {
                    temp_s2->unk_20 += (s32)(-*temp_s2->posZ * 6.0f);
                }
            }
            if (temp_s2->unk_1C > 1.0e10f) {
                if (temp_s2->unk_2A == 4) {
                    Audio_QueueCmdS8((temp_s2->unk_2E << 8) | 0x6020000, 0);
                    if (temp_s2->unk_28 & 0xC00) {
                        func_800F7B54(arg0, phi_s4);
                        phi_s4 = phi_s0;
                    }
                }
            } else {
                spAE = D_80130578[D_801333CC][arg0];
                for (spAC = 0; spAC < spAE; spAC++) {
                    if (sp84[spAC].unk_0 >= temp_s2->unk_20) {
                        if (phi_s3 < D_80130578[D_801333CC][arg0]) {
                            phi_s3++;
                        }
                        for (phi_a1 = spAE - 1; phi_a1 > spAC; phi_a1--) {
                            sp84[phi_a1].unk_0 = sp84[phi_a1 - 1].unk_0;
                            sp84[phi_a1].unk_4 = sp84[phi_a1 - 1].unk_4;
                        }
                        sp84[spAC].unk_0 = temp_s2->unk_20;
                        sp84[spAC].unk_4 = phi_s4;
                        spAC = spAE;
                    }
                }
            }
            phi_s0 = phi_s4;
        }
        phi_s4 = gSoundBanks[arg0][phi_s0].next;
    }
    for (spAC = 0; spAC < phi_s3; spAC++) {
        temp_s2 = &gSoundBanks[arg0][sp84[spAC].unk_4];
        if (temp_s2->unk_2A == 1) {
            temp_s2->unk_2A = 2;
        } else if (temp_s2->unk_2A == 4) {
            temp_s2->unk_2A = 3;
        }
    }

    spAE = D_80130578[D_801333CC][arg0];
    for (spAC = 0; spAC < spAE; spAC++) {
        phi_v1_5 = 0;
        temp_s4_3 = &D_8016E1B8[arg0][spAC];
        temp1 = temp_s4_3->unk_4;

        if (temp_s4_3->unk_4 == 0xFF) {
            phi_v1_5 = 1;
        } else {
            temp_s2 = &gSoundBanks[arg0][temp_s4_3[0].unk_4];
            if (temp_s2->unk_2A == 4) {
                if (temp_s2->unk_28 & 0xC00) {
                    func_800F7B54(arg0, temp_s4_3->unk_4);
                } else {
                    temp_s2->unk_2A = 1;
                }
                phi_v1_5 = 1;
            } else if (temp_s2->unk_2A == 0) {
                temp_s4_3->unk_4 = 0xFF;
                phi_v1_5 = 1;
            } else {
                for (phi_a1 = 0; phi_a1 < spAE; phi_a1++) {
                    if (temp_s4_3->unk_4 == sp84[phi_a1].unk_4) {
                        sp84[phi_a1].unk_4 = 0xFF;
                        phi_a1 = spAE;
                    }
                }
                phi_s3--;
            }
        }

        if (phi_v1_5 == 1) {
            for (phi_a1 = 0; phi_a1 < spAE; phi_a1++) {
                temp2 = sp84[phi_a1].unk_4;
                if ((temp2 != 0xFF) && (gSoundBanks[arg0][temp2].unk_2A != 3)) {
                    for (phi_s0 = 0; phi_s0 < spAE; phi_s0++) {
                        if (temp2 == D_8016E1B8[arg0][phi_s0].unk_4) {
                            phi_v1_5 = 0;
                            phi_s0 = spAE;
                        }
                    }
                    if (phi_v1_5 == 1) {
                        temp_s4_3->unk_4 = temp2;

                        sp84[phi_a1].unk_4 = 0xFF;

                        phi_a1 = spAE + 1;
                        phi_s3--;
                    }
                }
            }
            if (phi_a1 == spAE) {
                temp_s4_3->unk_4 = 0xFF;
            }
        }
    }
}

void func_800F8480(u8 bankId) {
    u8 bankIndex;
    SequenceChannel* seqChannel;
    SoundBankEntry* entry;
    u8 i;

    for (i = 0; i < D_80130578[D_801333CC][bankId]; i++) {
        bankIndex = D_8016E1B8[bankId][i].unk_4;
        if (bankIndex != 0xFF) {
            entry = &gSoundBanks[bankId][bankIndex];
            seqChannel = gAudioContext.seqPlayers[2].channels[D_8016E260];
            if (entry->unk_2A == 2) {
                entry->unk_2E = D_8016E260;
                if (entry->unk_26 & 8) {
                    Audio_QueueSeqCmdMute(D_8016E260);
                }
                if (entry->unk_26 & 0xC0) {
                    switch (entry->unk_26 & 0xC0) {
                        case 0x40:
                            entry->unk_2F = Audio_NextRandom() & 0xF;
                            break;
                        case 0x80:
                            entry->unk_2F = Audio_NextRandom() & 0x1F;
                            break;
                        case 0xC0:
                            entry->unk_2F = Audio_NextRandom() & 0x3F;
                            break;
                        default:
                            entry->unk_2F = 0;
                            break;
                    }
                }
                func_800F3A08(bankId, bankIndex, D_8016E260);
                Audio_QueueCmdS8(0x06020000 | ((D_8016E260 & 0xFF) << 8), 1);
                Audio_QueueCmdS8(0x06020000 | ((D_8016E260 & 0xFF) << 8) | 4, entry->unk_28 & 0xFF);
                if (D_80130570[bankId] != 0) {
                    Audio_QueueCmdS8(0x06020000 | ((D_8016E260 & 0xFF) << 8) | 5, (entry->unk_28 & 0x100) >> 8);
                }
                if (entry->unk_28 & 0xC00) {
                    entry->unk_2A = 4;
                } else {
                    entry->unk_2A = 5;
                }
            } else if ((u8)seqChannel->soundScriptIO[1] == 0xFF) {
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

void func_800F87A0(u8 bankId) {
    SoundBankEntry* entry;
    s32 pad;
    SoundBankEntry sp48;
    u8 bankIndex = gSoundBanks[bankId][0].next;

    while (bankIndex != 0xFF) {
        entry = &gSoundBanks[bankId][bankIndex];
        if (entry->unk_2A >= 3) {
            Audio_QueueCmdS8(0x06020000 | ((entry->unk_2E & 0xFF) << 8), 0);
        }
        if (entry->unk_2A != 0) {
            func_800F7B54(bankId, bankIndex);
        }
        bankIndex = gSoundBanks[bankId][0].next;
    }
    sp48.unk_28 = bankId << 12;
    func_800F74E0(0, &sp48);
}

void func_800F8884(u8 bankId, Vec3f* pos) {
    SoundBankEntry* entry;
    u8 bankIndex = gSoundBanks[bankId][0].next;
    u8 bankIndex2 = 0;

    while (bankIndex != 0xFF) {
        entry = &gSoundBanks[bankId][bankIndex];
        if (entry->posX == &pos->x) {
            if (entry->unk_2A >= 3) {
                Audio_QueueCmdS8(0x06020000 | ((entry->unk_2E & 0xFF) << 8), 0);
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
    SoundBankEntry sp18;

    func_800F8884(bankId, pos);
    sp18.unk_28 = bankId << 12;
    sp18.posX = &pos->x;
    func_800F74E0(1, &sp18);
}

void func_800F89E8(Vec3f* pos) {
    u8 i;
    SoundBankEntry sp24;

    for (i = 0; i < ARRAY_COUNT(gSoundBanks); i++) {
        func_800F8884(i, pos);
    }
    sp24.posX = &pos->x;
    func_800F74E0(2, &sp24);
}

void func_800F8A44(Vec3f* pos, u16 sfxId) {
    SoundBankEntry* entry;
    u8 bankIndex = gSoundBanks[SFX_BANK(sfxId)][0].next;
    u8 bankIndex2 = 0;
    SoundBankEntry sp50;

    while (bankIndex != 0xFF) {
        entry = &gSoundBanks[SFX_BANK(sfxId)][bankIndex];
        if (entry->posX == &pos->x && entry->unk_28 == sfxId) {
            if (entry->unk_2A >= 3) {
                Audio_QueueCmdS8(0x06020000 | ((entry->unk_2E & 0xFF) << 8), 0);
            }
            if (entry->unk_2A != 0) {
                func_800F7B54(SFX_BANK(sfxId), bankIndex);
            }
            bankIndex = 0xFF;
        } else {
            bankIndex2 = bankIndex;
        }
        if (bankIndex != 0xFF) {
            bankIndex = gSoundBanks[SFX_BANK(sfxId)][bankIndex2].next;
        }
    }
    sp50.posX = &pos->x;
    sp50.unk_28 = sfxId;
    func_800F74E0(3, &sp50);
}

void func_800F8BA0(u8 arg0, u16 sfxId) {
    SoundBankEntry* entry;
    u8 bankIndex = gSoundBanks[SFX_BANK(sfxId)][0].next;
    u8 bankIndex2 = 0;
    SoundBankEntry sp58;

    while (bankIndex != 0xFF) {
        entry = &gSoundBanks[SFX_BANK(sfxId)][bankIndex];
        if (entry->unk_C == arg0 && entry->unk_28 == sfxId) {
            if (entry->unk_2A >= 3) {
                Audio_QueueCmdS8(0x06020000 | ((entry->unk_2E & 0xFF) << 8), 0);
            }
            if (entry->unk_2A != 0) {
                func_800F7B54(SFX_BANK(sfxId), bankIndex);
            }
        } else {
            bankIndex2 = bankIndex;
        }
        if (bankIndex != 0xFF) {
            bankIndex = gSoundBanks[SFX_BANK(sfxId)][bankIndex2].next;
        }
    }
    sp58.unk_C = arg0;
    sp58.unk_28 = sfxId;
    func_800F74E0(4, &sp58);
}

void Audio_StopSfx(u32 sfxId) {
    SoundBankEntry* entry;
    u8 bankIndex = gSoundBanks[SFX_BANK(sfxId)][0].next;
    u8 bankIndex2 = 0;
    SoundBankEntry sp50;

    while (bankIndex != 0xFF) {
        entry = &gSoundBanks[SFX_BANK(sfxId)][bankIndex];
        if (entry->unk_28 == sfxId) {
            if (entry->unk_2A >= 3) {
                Audio_QueueCmdS8(0x06020000 | ((entry->unk_2E & 0xFF) << 8), 0);
            }
            if (entry->unk_2A != 0) {
                func_800F7B54(SFX_BANK(sfxId), bankIndex);
            }
        } else {
            bankIndex2 = bankIndex;
        }
        bankIndex = gSoundBanks[SFX_BANK(sfxId)][bankIndex2].next;
    }
    sp50.unk_28 = sfxId;
    func_800F74E0(5, &sp50);
}

void func_800F8E3C(void) {
    while (D_801333A0 != D_801333A4) {
        func_800F7680();
        D_801333A4++;
    }
}

void func_800F8EA0(u8 arg0, u8 arg1, u16 arg2) {
    if (arg2 == 0) {
        arg2++;
    }
    D_8016E270[arg0].unk_4 = arg1 / 127.0f;
    D_8016E270[arg0].unk_C = arg2;
    D_8016E270[arg0].unk_8 = ((D_8016E270[arg0].unk_0 - D_8016E270[arg0].unk_4) / arg2);
}

void func_800F8F34(u8 arg0) {
    if (D_8016E270[arg0].unk_C != 0) {
        D_8016E270[arg0].unk_C--;
        if (D_8016E270[arg0].unk_C != 0) {
            D_8016E270[arg0].unk_0 -= D_8016E270[arg0].unk_8;
        } else {
            D_8016E270[arg0].unk_0 = D_8016E270[arg0].unk_4;
        }
    }
}

void func_800F8F88(void) {
    u8 i;

    if (IS_SEQUENCE_CHANNEL_VALID(gAudioContext.seqPlayers[2].channels[0])) {
        D_8016E260 = 0;
        for (i = 0; i < ARRAY_COUNT(gSoundBanks); i++) {
            func_800F7CEC(i);
            func_800F8480(i);
            func_800F8F34(i);
        }
    }
}

u8 func_800F8FF4(u32 sfxId) {
    SoundBankEntry* entry;
    u8 bankIndex = gSoundBanks[SFX_BANK(sfxId)][0].next;

    while (bankIndex != 0xFF) {
        entry = &gSoundBanks[SFX_BANK(sfxId)][bankIndex];
        if (entry->unk_28 == sfxId) {
            return true;
        }
        bankIndex = entry->next;
    }
    return false;
}

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
