#include <ultra64.h>
#include <global.h>

// like audio_load in sm64, but completely rewritten

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E11F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E12DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1618.s")

s32 Audio_IsBankLoadComplete(s32 bankId) {
    if (bankId == 0xFF) {
        return true;
    } else if (gAudioContext.gBankLoadStatus[bankId] >= 2) {
        return true;
    } else if(gAudioContext.gBankLoadStatus[func_800E2768(1, bankId)] >= 2) {
        return true;
    } else {
        return false;
    }
}

s32 Audio_IsSeqLoadComplete(s32 seqId) {
    if (seqId == 0xFF) {
        return 1;
    } else if (gAudioContext.gSeqLoadStatus[seqId] >= 2) {
        return 1;
    } else if (gAudioContext.gSeqLoadStatus[func_800E2768(0, seqId)] >= 2) {
        return true;
    } else {
        return false;
    }
}

s32 func_800E19A0(s32 arg0) {
    if (arg0 == 0xFF) {
        return true;
    } else if (gAudioContext.gUnusedLoadStatus[arg0] >= 2) {
        return true;
    } else if (gAudioContext.gUnusedLoadStatus[func_800E2768(2, arg0)] >= 2) {
        return true;
    } else {
        return false;
    }
}

void Audio_SetBankLoadStatus(s32 bankId, s32 status) {
    if ((bankId != 0xFF) && (gAudioContext.gBankLoadStatus[bankId] != 5)) {
        gAudioContext.gBankLoadStatus[bankId] = status;
    }
}

void Audio_SetSeqLoadStatus(s32 seqId, s32 status) {
    if ((seqId != 0xFF) && (gAudioContext.gSeqLoadStatus[seqId] != 5)) {
        gAudioContext.gSeqLoadStatus[seqId] = status;
    }
}

void func_800E1A78(s32 arg0, s32 arg1) {
    if (arg0 != 0xFF) {
        if (gAudioContext.gUnusedLoadStatus[arg0] != 5) {
            gAudioContext.gUnusedLoadStatus[arg0] = arg1;
        }

        if ((gAudioContext.gUnusedLoadStatus[arg0] == 5) || (gAudioContext.gUnusedLoadStatus[arg0] == 2)) {
            func_800E0E90(arg0);
        }
    }
}

void func_800E1AD8(s32 arg0, s32 arg1) {
    if ((arg0 != 0xFF) && (gAudioContext.gUnusedLoadStatus[arg0] != 5)) {
        gAudioContext.gUnusedLoadStatus[arg0] = arg1;
    }
}

void func_800E1B08(unk_dma_s *arg0, u32 romAddr, u16 arg2) {
    s32 i;

    arg0->unk_02 = arg2;
    arg0->unk_04 = romAddr;

    for(i = 0; i < arg0->unk_00; i++){
        if ((arg0[i + 1].unk_04 != 0) && (arg0[i + 1].unk_08 == 2)){
            arg0[i + 1].unk_00w += romAddr;
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1B68.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1C18.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1C78.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1D64.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1E34.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1E6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1EB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1EF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1F38.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E1F7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E202C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E20D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2124.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E217C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E22C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2318.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2338.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2454.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2558.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2768.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E27A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E27F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E283C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2AA8.s")

void (*D_801304D0)(OSPiHandle* handle, OSIoMesg* mb, s32 direction)= osEPiStartDma;

void func_800E2BCC(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2BE0.s")

void func_800E2CB8(void) {
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2CC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2CE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E2FEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E301C.s")

u32 D_801304D4 = 0;
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3028.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3034.s")

u32 D_801304D8 = 0;
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3094.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3400.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3414.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E35E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3670.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3678.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E36EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3874.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E38F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E390C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3A14.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3A44.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3AC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3BEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3D10.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3D1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3E58.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E3FB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4044.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4058.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4198.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4590.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4744.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E478C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E48C0.s")

// large
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4918.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4D94.s")

void func_800E4ED4(void) {
}

void func_800E4EDC(void) {
}

void func_800E4EE4(void) {
}

u32 D_801304DC = 0;
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E4EEC.s")

extern u8* D_8016B738[];
extern OSMesgQueue D_8016B6E0;
extern OSMesg D_8016B6F8;
void func_800E4F58(void) {
    u32 pad;
    u32 sp20;
    u8 *temp_v0;

    if (osRecvMesg(&D_8016B6E0, &sp20, OS_MESG_NOBLOCK) != -1) {
        pad = sp20 >> 0x18;
        temp_v0 = D_8016B738[pad];
        if (temp_v0 != NULL) {
            *temp_v0 = 0;
        }
    }
}

void func_800E4FB0(void) {
    osCreateMesgQueue(&D_8016B6E0, &D_8016B6F8, 0x10);
}

void func_800E4FE0(void) {
    func_800E5000();
}

u32 D_801304E0 = 0x80;
u32 D_801304E4 = 0;
//large
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5000.s")

#include <ultra64.h>
#include <global.h>

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5584.s")

#ifdef NON_MATCHING
void func_800E5958(s32 arg0, u32 arg1) {
    SequencePlayer* seqPlayer;
    s32 temp_t7;
    void *temp_v0;
    s16 phi_a1;
    f32 a1;

    if (arg1 == 0) {
        arg1 = 1;
    }
    seqPlayer = &gAudioContext.gSequencePlayers[arg0];
    seqPlayer->state = 2;
    seqPlayer->fadeTimer = arg1;
    seqPlayer->fadeVelocity = -(seqPlayer->fadeVolume / seqPlayer->fadeTimer);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5958.s")
#endif

void func_800E59AC(s32 playerIdx, u32 fadeTimer) {
    SequencePlayer* seqPlayer;
    if (fadeTimer != 0) {
        seqPlayer = &gAudioContext.gSequencePlayers[playerIdx];
        seqPlayer->state = 1;
        seqPlayer->fadeTimerUnkEu = fadeTimer;
        seqPlayer->fadeTimer = fadeTimer;
        seqPlayer->fadeVolume = 0.0f;
        seqPlayer->fadeVelocity = 0.0f;
    }
}

extern OSMesgQueue D_80174D70;
extern OSMesgQueue D_80174D88;
extern OSMesgQueue D_80174DA0;
extern OSMesg D_80174DB8;
extern OSMesg D_80174DC0;
extern OSMesg D_80174DBC;
#ifdef NON_MATCHING
void func_800E59F4(void) {
    gAudioContext.unk_5BD8 = 0;
    gAudioContext.unk_5BD9 = 0;
    gAudioContext.unk_5BDA = 0;
    gAudioContext.unk_5BE8 = &D_80174D70;
    gAudioContext.unk_5BEC = &D_80174D88;
    gAudioContext.unk_5BE4 = &D_80174DA0;
    osCreateMesgQueue(gAudioContext.unk_5BE8, &D_80174DB8, 1);
    osCreateMesgQueue(gAudioContext.unk_5BEC, &D_80174DC0, 4);
    osCreateMesgQueue(gAudioContext.unk_5BE4, &D_80174DBC, 1);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E59F4.s")
#endif

#ifdef NON_MATCHING
void func_800E5A8C(u32 arg0, u32 *arg1) {
    unk_5C50_s *t = &gAudioContext.unk_5C50[gAudioContext.unk_5BD8];

    t->unk_00 = arg0;
    t->unk_04 = *arg1;

    gAudioContext.unk_5BD8++;

    if (gAudioContext.unk_5BD8 == gAudioContext.unk_5BD9) {
        gAudioContext.unk_5BD8--;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5A8C.s")
#endif

void func_800E5AD8(u32 arg0, u32 arg1) {
    func_800E5A8C(arg0, &arg1);
}

void func_800E5AFC(u32 arg0, u32 arg1) {
    func_800E5A8C(arg0, &arg1);
}

void func_800E5B20(u32 arg0, u8 arg1) {
    u32 sp1C;

    sp1C = arg1 << 0x18;
    func_800E5A8C(arg0, &sp1C);
}

void func_800E5B50(u32 arg0, u16 arg1) {
    u32 sp1C = arg1 << 0x10;
    func_800E5A8C(arg0, &sp1C);
}

u32 D_801304E8 = 0;
#ifdef NON_MATCHING
s32 func_800E5B80(void) {
    u8 temp_a0;
    u8 temp_a3;
    u8 temp_v0;

    temp_v0 = gAudioContext.unk_5BD8;
    temp_a3 = gAudioContext.unk_5BD9;
    temp_a0 = ((temp_v0 - temp_a3) + 0x100);
    if (D_801304E8 < temp_a0) {
        D_801304E8 = temp_a0;
    }

    if (osSendMesg(gAudioContext.unk_5BEC, (void*)(((temp_a3 & 0xFF) << 8) | (temp_v0 & 0xFF)), OS_MESG_NOBLOCK) != -1) {
        gAudioContext.unk_5BD9 = gAudioContext.unk_5BD8;
        return 0;
    } else {
        return -1;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5B80.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5C10.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5C28.s")

u8 D_801304EC = 0;
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5D6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5E20.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5E84.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5EA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5EDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5F34.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E5F88.s")

#ifdef NON_MATCHING
extern u32 D_801304D8;
void func_800E6024(void) {
    gAudioContext.unk_2984 = 1;
    if (D_801304D8 != 0) {
        func_800E5F88(0);
        gAudioContext.gAudioResetStatus = 0;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E6024.s")
#endif

s8 func_800E6070(s32 playerIdx, s32 channelIdx, s32 scriptIdx) {
    SequencePlayer* seqPlayer = &gAudioContext.gSequencePlayers[playerIdx];
    SequenceChannel* channel;
    if (seqPlayer->enabled) {
        channel = seqPlayer->channels[channelIdx];
        return channel->soundScriptIO[scriptIdx];
    } else {
        return -1;
    }
}

s8 func_800E60C4(s32 arg0, s32 arg1) {
    return gAudioContext.gSequencePlayers[arg0].unk_158[arg1];
}

void func_800E60EC(void *memAddr, u32 size) {
    Audio_SoundAllocPoolInit(&gAudioContext.gUnkPool, memAddr, size);
}

void func_800E611C(void) {
    gAudioContext.gUnkPool.start = NULL;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E6128.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E6300.s")

void func_800E64B0(s32 arg0, s32 arg1, s32 arg2) {
    func_800E5AFC(((arg0 & 0xFF) << 0x10) | 0xFA000000 | ((arg1 & 0xFF) << 8) | (arg2 & 0xFF), 1);
}

void func_800E64F8(void) {
    func_800E5AFC(0xFA000000, 0);
}

void func_800E651C(u32 arg0, s32 arg1) {
    func_800E5AFC((arg1 & 0xFF) | 0xFD000000, arg0);
}

extern OSMesgQueue* D_80174D68;
void func_800E6550(void) {
    osRecvMesg(D_80174D68, NULL, OS_MESG_NOBLOCK);
    osRecvMesg(D_80174D68, NULL, OS_MESG_BLOCK);
}

#ifdef NON_MATCHING
s32 func_800E6590(s32 arg0, s32 arg1, s32 arg2) {
    u32 temp_v1_2;
    AudioBankSound *temp_a0;
    Note *temp_a0_2;
    SequenceChannelLayer *temp_v0;
    SequenceChannel *temp_v1;
    SequencePlayer *seqPlayer;

    seqPlayer = &gAudioContext.gSequencePlayers[arg0];
    if (seqPlayer->enabled) {
        temp_v1 = seqPlayer->channels[arg1];
        if (temp_v1->enabled) {
            temp_v0 = temp_v1->layers[arg2];
            if (temp_v0 == NULL) {
                return 0;
            }

            if (temp_v0->enabled) {
                temp_a0_2 = temp_v0->note;
                if (temp_a0_2 == NULL) {
                    return 0;
                }

                if (!temp_v0->bit3) {
                    return 0;
                }

                if (temp_v0 == temp_a0_2->playbackState.parentLayer) {
                    temp_a0 = temp_a0_2->noteSubEu.sound.audioBankSound;
                    if (temp_a0 == 0) {
                        return 0;
                    }
                    return temp_a0->sample->loop->end - temp_a0_2->synthesisState.samplePosInt;
                }
                return 0;
            }
        }
    }
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E6590.s")
#endif

void func_800E6680(void) {
    func_800E66C0(0);
}

void func_800E66A0(void) {
    func_800E66C0(2);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E11F0/func_800E66C0.s")

// matching, but marked NON_MATCHING until data is decompiled
u32 Audio_RandUInt(void) {
    static u32 audRand = 0x12345678;

    audRand = ((osGetCount() + 0x1234567) * (audRand + gAudioContext.unk_289C));
    audRand += gAudioContext.gAudioRandom;
    return audRand;
}

void func_800E6818(void) {
    func_800E59F4();
}
