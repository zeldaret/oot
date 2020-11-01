#include "ultra64.h"
#include "global.h"
#include "vt.h"

typedef struct {
    /* 0x00 */ u16 sfxId;
    /* 0x04 */ Vec3f* pos;
    /* 0x08 */ u8 unk_8;
    /* 0x0C */ u32* unk_C;
    /* 0x10 */ u32* unk_10;
    /* 0x14 */ u32* unk_14;
} Struct_800F738C; // size = 0x18

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
    u8 unk_0;
    u16 unk_2;
} Struct_8013331C;

u8 D_80133340[4] = {
    0x53,
    0x45,
    0x00,
    0x00,
};

char D_80133344[] = VT_COL(RED, WHITE) "<INAGAKI CHECK> dist over! flag:%04X ptr:%08X pos:%f-%f-%f" VT_RST "\n";

s32 D_8013338C = 0;

UNK_TYPE D_80133390[] = {
    0x53455120,
    0x48000000,
};

UNK_TYPE D_80133398[] = {
    0x20202020,
    0x4C000000,
};

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

f32 D_801333E8 = 0.0f;

UNK_TYPE D_801333EC = 0;

u8 D_801333F0 = 0;

u8 D_801333F4 = 0;

u8 D_801333F8 = 0;

extern Struct_800F738C D_8016C9A0[];
extern Struct_800F7CEC D_8016E1B8[7][3]; // total size = 0xA8
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

void func_800F72B8(u8 arg0) {
    D_801333D0 |= (1 << arg0);
    func_800FA240(0, 2, 0x40, 0xF);
    func_800FA240(3, 2, 0x40, 0xF);
}

void func_800F731C(u8 arg0) {
    D_801333D0 &= ((1 << arg0) ^ 0xFFFF);
    if (D_801333D0 == 0) {
        func_800FA240(0, 2, 0x7F, 0xF);
        func_800FA240(3, 2, 0x7F, 0xF);
    }
}

void Audio_PlaySoundGeneral(u16 sfxId, Vec3f* a1, u8 a2, u32* a3, u32* a4, u32* a5) {
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

    while (i != D_801333A0) {
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
        i++;
    }
}

#ifdef NON_EQUIVALENT
// Mostly ok at the start, then runs into some reorderings near the assignments
// of temp_s0 and temp_a2, inducing regalloc throughout the rest
void func_800F7680(void) {
    u8 sp43;
    Struct_8013331C* temp_a2;
    SoundBankEntry* temp_s0;
    s32 phi_s5;
    Struct_800F738C* phi_t2;
    u8 phi_a1;
    u8 phi_t4;
    s32 phi_s1;

    phi_t2 = &D_8016C9A0[D_801333A4];
    phi_s1 = 0x80;
    if (phi_t2->sfxId == 0) {
        return;
    }
    phi_s5 = SFX_BANK(phi_t2->sfxId);
    if ((1 << phi_s5) & D_801333F0) {
        func_800F2D6C(D_80133340, phi_t2->sfxId);
        phi_s5 = SFX_BANK(phi_t2->sfxId);
    }
    phi_t4 = 0;
    phi_a1 = gSoundBanks[phi_s5][0].next;
    while (phi_a1 != 0xFF && phi_a1 != 0) {
        if (gSoundBanks[phi_s5][phi_a1].posX == &phi_t2->pos->x) {
            temp_a2 = &D_8013331C[SFX_BANK_SHIFT(phi_t2->sfxId)][SFX_INDEX(phi_t2->sfxId)];
            temp_s0 = &gSoundBanks[phi_s5][phi_a1];
            if (!(temp_a2->unk_2 & 0x20) || temp_s0->unk_24 != temp_a2->unk_0) {
                if (temp_s0->unk_28 == phi_t2->sfxId) {
                    phi_t4 = D_80130594[phi_s5][D_801333CC];
                } else {
                    //!@bug possibly uninitialized sp43 ? confirm when matching
                    if (phi_t4 == 0) {
                        phi_s1 = phi_a1;
                        sp43 = D_8013331C[SFX_BANK_SHIFT(temp_s0->unk_28)][SFX_INDEX(temp_s0->unk_28)].unk_0;
                    } else if (temp_s0->unk_24 < sp43) {
                        if (1) {}
                        if (1) {}
                        if (1) {}
                        if (1) {}
                        if (1) {}
                        if (1) {}
                        phi_s1 = phi_a1;
                        sp43 = D_8013331C[SFX_BANK_SHIFT(temp_s0->unk_28)][SFX_INDEX(temp_s0->unk_28)].unk_0;
                    }
                    phi_t4++;
                    if (phi_t4 == D_80130594[phi_s5][D_801333CC]) {
                        phi_a1 = (temp_a2->unk_0 >= sp43) ? phi_s1 : 0;
                    }
                }
                if (D_80130594[phi_s5][D_801333CC] == phi_t4) {
                    if ((phi_t2->sfxId & 0xC00) || (temp_a2->unk_2 & 4) || phi_a1 == phi_s1) {
                        if ((gSoundBanks[phi_s5][phi_a1].unk_26 & 8) && gSoundBanks[phi_s5][phi_a1].unk_2A != 1) {
                            func_800F731C(gSoundBanks[phi_s5][phi_a1].unk_2E);
                        }
                        gSoundBanks[phi_s5][phi_a1].unk_C = phi_t2->unk_8;
                        gSoundBanks[phi_s5][phi_a1].unk_28 = phi_t2->sfxId;
                        gSoundBanks[phi_s5][phi_a1].unk_2A = 1;
                        gSoundBanks[phi_s5][phi_a1].unk_2B = 2;
                        gSoundBanks[phi_s5][phi_a1].unk_10 = phi_t2->unk_C;
                        gSoundBanks[phi_s5][phi_a1].unk_14 = phi_t2->unk_10;
                        gSoundBanks[phi_s5][phi_a1].unk_18 = phi_t2->unk_14;
                        gSoundBanks[phi_s5][phi_a1].unk_26 = temp_a2->unk_2;
                        gSoundBanks[phi_s5][phi_a1].unk_24 = temp_a2->unk_0;
                    } else if (gSoundBanks[phi_s5][phi_a1].unk_2A == 5) {
                        gSoundBanks[phi_s5][phi_a1].unk_2A = 4;
                    }
                    phi_a1 = 0;
                }
            } else {
                return;
            }
        }
        if (phi_a1 != 0) {
            phi_a1 = gSoundBanks[phi_s5][phi_a1].next;
        }
    }
    if (gSoundBanks[phi_s5][D_8016E1A8[phi_s5]].next != 0xFF && phi_a1 != 0) {
        phi_a1 = D_8016E1A8[phi_s5];
        temp_s0 = &gSoundBanks[phi_s5][phi_a1];
        temp_s0->posX = &phi_t2->pos->x;
        temp_s0->posY = &phi_t2->pos->y;
        temp_s0->posZ = &phi_t2->pos->z;
        temp_s0->unk_C = phi_t2->unk_8;
        temp_s0->unk_10 = phi_t2->unk_C;
        temp_s0->unk_14 = phi_t2->unk_10;
        temp_s0->unk_18 = phi_t2->unk_14;
        temp_a2 = &D_8013331C[SFX_BANK_SHIFT(phi_t2->sfxId)][SFX_INDEX(phi_t2->sfxId)];
        temp_s0->unk_26 = temp_a2->unk_2;
        temp_s0->unk_24 = temp_a2->unk_0;
        temp_s0->unk_28 = phi_t2->sfxId;
        temp_s0->unk_2A = 1;
        temp_s0->unk_2B = 2;
        temp_s0->prev = D_8016E1A0[phi_s5];
        gSoundBanks[phi_s5][D_8016E1A0[phi_s5]].next = D_8016E1A8[phi_s5];
        D_8016E1A0[phi_s5] = D_8016E1A8[phi_s5];
        D_8016E1A8[phi_s5] = gSoundBanks[phi_s5][D_8016E1A8[phi_s5]].next;
        gSoundBanks[phi_s5][D_8016E1A8[phi_s5]].prev = 0xFF;
        temp_s0->next = 0xFF;
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

void func_800F8480(u8 bankId) {
    u8 bankIndex;
    SequenceChannel* seqChannel;
    SoundBankEntry* entry;
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
    SoundBankEntry* entry;
    u8 bankIndex = gSoundBanks[bankId][0].next;
    u8 bankIndex2 = 0;

    while (bankIndex != 0xFF) {
        entry = &gSoundBanks[bankId][bankIndex];
        if (entry->posX == &pos->x) {
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
    SoundBankEntry sp18;

    func_800F8884(bankId, pos);
    sp18.unk_28 = bankId << 0xC;
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
                func_800E5B20(0x06020000 | ((entry->unk_2E & 0xFF) << 8), 0);
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
                func_800E5B20(0x06020000 | ((entry->unk_2E & 0xFF) << 8), 0);
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

void func_800F8D04(u32 sfxId) {
    SoundBankEntry* entry;
    u8 bankIndex = gSoundBanks[SFX_BANK(sfxId)][0].next;
    u8 bankIndex2 = 0;
    SoundBankEntry sp50;

    while (bankIndex != 0xFF) {
        entry = &gSoundBanks[SFX_BANK(sfxId)][bankIndex];
        if (entry->unk_28 == sfxId) {
            if (entry->unk_2A >= 3) {
                func_800E5B20(0x06020000 | ((entry->unk_2E & 0xFF) << 8), 0);
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

    if (IS_SEQUENCE_CHANNEL_VALID(gAudioContext.gSequencePlayers[2].channels[0])) {
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
