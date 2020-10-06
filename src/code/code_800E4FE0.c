// possibly external.c
#include "global.h"

#define AS_F32(x) (*(f32*)&(x)->unk_04)
#define AS_U8(x) (*(u8*)&(x)->unk_04)
#define AS_S8(x) (*(s8*)&(x)->unk_04)
#define AS_U16(x) (*(u16*)&(x)->unk_04)
#define AS_U32(x) (*(u32*)&(x)->unk_04)
#define AS_S32(x) (*(s32*)&(x)->unk_04)

typedef enum {
    SEQUENCE_TABLE,
    BANK_TABLE,
    AUDIO_TABLE
} AudioTableType;

typedef enum {
    CHAN_UPD_UNK_0,             // 0
    CHAN_UPD_VOL_SCALE,         // 1
    CHAN_UPD_VOL,               // 2
    CHAN_UPD_PAN_SIGNED,        // 3
    CHAN_UPD_FREQ_SCALE,        // 4
    CHAN_UPD_REVERB,            // 5
    CHAN_UPD_SCRIPT_IO,         // 6
    CHAN_UPD_PAN_UNSIGNED,      // 7
    CHAN_UPD_STOP_SOMETHING2,   // 8
    CHAN_UPD_MUTE_BEHAVE,       // 9
    CHAN_UPD_VIBE_X8,           // 10
    CHAN_UPD_VIBE_X32,          // 11
    CHAN_UPD_UNK_0F,            // 12
    CHAN_UPD_UNK_20,            // 13
    CHAN_UPD_REVERB_FLG         // 14
} ChannelUpdateType;

//extern s32 D_8014A6CC;
extern u32 D_8014A6C8;
extern u32 D_8014A6C4;
extern f32 D_80149480;
extern f32 D_80149484;
extern f32 D_80149488;
extern u8 gSequenceTable[];
extern u8 gAudioBankTable[];
extern u8 gAudioTable[];
extern u8 D_80155340[];
extern void(*D_801755D0)(void); // not sure about arguments yet.

void func_800E3FB4(unk_1770_s *arg0, u32 size);
void func_800E4044(u32 devAddr, void* ramAddr, u32 size, s16 arg3);
void *func_800E27F8(s32 tableType);
u32 func_800E2768(s32, u32);
void *func_800E27A4(s32 poolIdx, s32 id);
u32 func_800E2318(u32 arg0, u32 *arg1);
u32 func_800E2338(u32 arg0, u32 *arg1, s32 arg2);
void func_800E6300(SequenceChannel *channel, unk_5C50_s *arg1);
void func_800E59AC(s32 playerIdx, u32 fadeTimer);
void func_800E6818(void);
AudioTask* func_800E5000(void);
u8 *func_800E2558(u32 tableType, u32 bankId, s32 *arg2);
void func_800E2BCC(s32 arg0, s32 arg1, s32 arg2, s32 arg3);
void func_800E2AA8(u32 tableOffset, u8* addr, u32 size, u32 arg3);
unk_1770_s *func_800E3AC8(s32 devAddr, void* ramAddr, s32 arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6);
unk_1770_s *func_800E3A44(char *arg0, s32 arg1, void *arg2, s32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7);
void* func_800E2CE0(s32 arg0, s32 arg1, s32 arg2, s32 arg3, OSMesgQueue *arg4);
u8* func_800E22C4(s32 seqId);
void func_800E5D6C(u32);

// AudioMgr_Retrace
AudioTask* func_800E4FE0(void) {
    return func_800E5000();
}

u32 D_801304E0 = 0x80;
AudioTask* D_801304E4 = NULL;

extern u8 D_80155C70[];
#ifdef NON_EQUIVALENT
// haven't verified Equivalency yet.
AudioTask *func_800E5000(void) {
    u32 sp6C;
    s32 cmdCount;
    s32 sp5C;
    s16 *sp58;
    u32 sp4C;
    s32 sp48;
    void *sp3C;
    void *sp34;
    OSTask_t *temp_v1_10;
    OSMesgQueue *temp_s1;
    s16 temp_a0_2;
    s16 temp_v0_2;
    s16 temp_v1;
    s16 temp_v1_2;
    s16 temp_v1_9;
    s32 temp_a0;
    s32 temp_a3;
    s32 temp_a3_2;
    s32 temp_hi;
    s32 temp_s0;
    s32 temp_s0_2;
    s32 temp_s0_3;
    s32 temp_s0_4;
    s32 temp_s0_5;
    s32 temp_t4;
    s32 temp_t6;
    s32 temp_t7;
    s32 temp_v1_6;
    s32 temp_v1_7;
    s32 temp_v1_8;
    u32 temp_t3;
    u32 temp_t4_2;
    void *temp_t0;
    void *temp_v1_3;
    void *temp_v1_4;
    void *temp_v1_5;
    s16 phi_v1;
    s32 phi_a0;
    void *phi_v1_2;
    s32 phi_s0;
    s32 phi_v1_3;
    void *phi_v1_4;
    s32 phi_s0_2;
    s32 phi_v1_5;
    s32 phi_s0_3;
    s32 phi_s0_4;
    void *phi_v1_6;
    s32 phi_s0_5;
    s32 i;

    gAudioContext.unk_289C++;
    if (gAudioContext.unk_289C % (gAudioContext.gAudioBufferParameters.presetUnk4) != 0) {
        if (D_801755D0 != 0) {
            D_801755D0();
        }

        if (gAudioContext.gAudioBufferParameters.presetUnk4 == ((gAudioContext.unk_289C % (gAudioContext.gAudioBufferParameters.presetUnk4)) + 1)) {
            return D_801304E4;
        } else {
            return NULL;
        }
    }

    osSendMesg(gAudioContext.unk_5BE8, gAudioContext.unk_289C, 0);
    temp_t4 = gAudioContext.curAIBufIdx + 1;
    temp_t6 = (gAudioContext.curAIBufIdx + 1) % 3;
    gAudioContext.rspTaskIdx ^= 1;
    gAudioContext.curAIBufIdx++;
    gAudioContext.curAIBufIdx %= 3;
    temp_hi = (gAudioContext.curAIBufIdx - 2 + 3) % 3;
    sp6C = osAiGetLength() / 4;
    if (gAudioContext.unk_2984 < 0x10) {
        if (gAudioContext.aiBufLengths[temp_hi] != 0) {
            sp34 = &gAudioContext + (temp_hi * 4);
            sp3C = &gAudioContext + (temp_hi * 2);
            osAiSetNextBuffer(gAudioContext.aiBuffers[temp_hi], gAudioContext.aiBufLengths[temp_hi] * 4);
        }
    }

    if (D_801755D0 != NULL) {
        D_801755D0();
    }

    sp5C = gAudioContext.unk_28A0;
    for(i = 0; i < gAudioContext.unk_28A0; i++) {
        if (osRecvMesg(&gAudioContext.unk_1ED0, NULL, 0) == 0) {
            sp5C--;
        }
    }

    if (sp5C != 0) {
        for(i = 0; i < sp5C; i++){
            osRecvMesg(&gAudioContext.unk_1ED0, NULL, 1);
        }
    }

    sp48 = gAudioContext.unk_1ED0.validCount;
    if (gAudioContext.unk_1ED0.validCount != 0) {
        for(i = 0; i < sp48; i++){
            osRecvMesg(&gAudioContext.unk_1ED0, NULL, 0);
        }
    }
    gAudioContext.unk_28A0 = 0;
    func_800E11F0();
    func_800E2FEC(gAudioContext.gAudioResetStatus);
    func_800E4F58();
    if ((gAudioContext.gAudioResetStatus != 0) && (Audio_ResetStep() == 0)) {
        if (gAudioContext.gAudioResetStatus == 0) {
            osSendMesg(gAudioContext.unk_5BE4, gAudioContext.gAudioResetPresetIdToLoad, 0);
        }

        D_801304E4 = NULL;
        return NULL;
    }

    if (gAudioContext.unk_2984 > 0x10) {
        return NULL;
    } else if (gAudioContext.unk_2984 != 0) {
        gAudioContext.unk_2984++;
    }

    gAudioContext.currTask = &gAudioContext.rspTask[gAudioContext.rspTaskIdx];
    gAudioContext.currCmdBuff = gAudioContext.gAudioCmdBuffers[gAudioContext.rspTaskIdx];
    gAudioContext.aiBufLengths[gAudioContext.curAIBufIdx] = (s16) ((((gAudioContext.gAudioBufferParameters.samplesPerFrameTarget - sp6C) + 0x80) & 0xFFF0) + 0x10);
    if (gAudioContext.aiBufLengths[gAudioContext.curAIBufIdx] < gAudioContext.gAudioBufferParameters.minAiBufferLength) {
        gAudioContext.aiBufLengths[gAudioContext.curAIBufIdx] = gAudioContext.gAudioBufferParameters.minAiBufferLength;
    }

    if (gAudioContext.gAudioBufferParameters.maxAiBufferLength < gAudioContext.aiBufLengths[gAudioContext.curAIBufIdx]) {
        gAudioContext.aiBufLengths[gAudioContext.curAIBufIdx] = gAudioContext.gAudioBufferParameters.maxAiBufferLength;
    }

    if (gAudioContext.gAudioResetStatus == 0) {
        i = 0;
        while(osRecvMesg(gAudioContext.unk_5BEC, &sp4C, 0) != -1){
            func_800E5D6C(sp4C);
            i++;
        }
        if ((i == 0) && (gAudioContext.unk_5BDA != 0)) {
            func_800E5B80();
        }
    }

    gAudioContext.currCmdBuff = func_800DB0C4(gAudioContext.currCmdBuff, &cmdCount, gAudioContext.aiBuffers[gAudioContext.curAIBufIdx], gAudioContext.aiBufLengths[gAudioContext.curAIBufIdx]);
    gAudioContext.gAudioRandom = osGetCount() * (gAudioContext.gAudioRandom + gAudioContext.unk_289C);
    gAudioContext.gAudioRandom = gAudioContext.aiBuffers[gAudioContext.curAIBufIdx][gAudioContext.unk_289C & 0xFF] + gAudioContext.gAudioRandom;;
    gWaveSamples[8] = (s16*)((((u8*)func_800E4FE0)) + (gAudioContext.gAudioRandom & 0xFFF0));
    gAudioContext.currTask->taskQueue = NULL;
    gAudioContext.currTask->unk_44 = NULL;
    temp_v1_10 = &gAudioContext.currTask->task.t;
    temp_v1_10->type = 2U;
    temp_v1_10->flags = 0U;
    temp_v1_10->ucode_boot = D_801120C0;
    temp_v1_10->ucode_boot_size = 0x1000;
    temp_v1_10->ucode_data_size = (((s32) (D_80155F50 - D_80155C70) >> 3) * 8) - 1;
    temp_v1_10->ucode = D_801120C0;
    temp_v1_10->ucode_data = D_80155C70;
    temp_v1_10->ucode_size = 0x1000;
    temp_v1_10->dram_stack = NULL;
    temp_v1_10->dram_stack_size = 0;
    temp_v1_10->output_buff = NULL;
    temp_v1_10->output_buff_size = NULL;
    temp_v1_10->data_ptr = gAudioContext.gAudioCmdBuffers[gAudioContext.rspTaskIdx];
    temp_v1_10->yield_data_ptr = NULL;
    temp_v1_10->yield_data_size = 0;
    temp_v1_10->data_size = cmdCount * sizeof(ACmd);

    if (D_801304E0 < cmdCount) {
        D_801304E0 = cmdCount;
    }

    if (gAudioContext.gAudioBufferParameters.presetUnk4 == 1) {
        return gAudioContext.currTask;
    }
    D_801304E4 = gAudioContext.currTask;
    return NULL;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E4FE0/func_800E5000.s")
#endif

void func_800E2124(u8,u8, void*);
void func_800E5958(s32 arg0, u32 arg1);

void func_800E5584(unk_5C50_s *arg0) {
    s32 i;
    s32 pad;
    s32 pad2;
    u32 temp_a1_5;
    u32 temp_t7;

    switch(arg0->bytes.b0){
        case 0x81:
            func_800E1C18(arg0->bytes.b2, arg0->bytes.b3);
            return;
        case 0x82:
            func_800E20D4(arg0->bytes.b1, arg0->bytes.b2, arg0->bytes.b3);
            func_800E59AC(arg0->bytes.b1, arg0->unk_04);
            return;
        case 0x85:
            func_800E2124(arg0->bytes.b1, arg0->bytes.b2, arg0->unk_04);
            return;

        case 0x83:
            if (gAudioContext.gSequencePlayers[arg0->bytes.b1].enabled) {
                temp_a1_5 = arg0->unk_04;
                if (temp_a1_5 == 0) {
                    Audio_SequencePlayerDisableAsFinished(&gAudioContext.gSequencePlayers[arg0->bytes.b1]);
                } else {
                    func_800E5958(arg0->bytes.b1, temp_a1_5);
                }
            }
            return;

        case 0xF0:
            gAudioContext.gSoundMode = AS_U32(arg0);
            return;

        case 0xF1:
            for(i = 0; i < gAudioContext.gAudioBufferParameters.numSequencePlayers; i++){
                SequencePlayer* seqPlayer = &gAudioContext.gSequencePlayers[i];
                seqPlayer->muted = 1;
                seqPlayer->recalculateVolume = 1;
            }
            return;

        case 0xF2:
            if (AS_U32(arg0) == 1) {
                for(i = 0; i < gAudioContext.gMaxSimultaneousNotes; i++){
                    Note* note = &gAudioContext.gNotes[i];
                    NoteSubEu *subEu = &note->noteSubEu.bitField0;
                    if (subEu->bitField0.s.enabled && note->playbackState.unk_04 == 0) {                        
                        if (note->playbackState.parentLayer->seqChannel->muteBehavior & 8) {
                            subEu->bitField0.s.finished = 1;
                        }
                    }
                }
            }

            for(i = 0; i < gAudioContext.gAudioBufferParameters.numSequencePlayers; i++){
                SequencePlayer* seqPlayer = &gAudioContext.gSequencePlayers[i];
                seqPlayer->muted = 0;
                seqPlayer->recalculateVolume = 1;
            }

            return;
        case 0xF3:
            func_800E1D64(arg0->bytes.b1, arg0->bytes.b2, arg0->bytes.b3);
            return;
        case 0xF4:
            func_800E1EB0(arg0->bytes.b1, arg0->bytes.b2, arg0->bytes.b3, &gAudioContext.unk_1E20);
            return;
        case 0xF5:
            func_800E1EF4(arg0->bytes.b1, arg0->bytes.b2, arg0->bytes.b3, &gAudioContext.unk_1E20);
            return;
        case 0xFC:
            func_800E1E6C(arg0->bytes.b1, arg0->bytes.b2, arg0->bytes.b3, &gAudioContext.unk_1E20);
            return;
        case 0xF6:
            func_800E1F7C(arg0->bytes.b2);
            return;
        case 0x90:
            gAudioContext.unk_5BDC[arg0->bytes.b1] =  AS_U16(arg0);
            return;
        case 0xF9:
            gAudioContext.gAudioResetStatus = 5;
            gAudioContext.gAudioResetPresetIdToLoad = AS_U32(arg0);
            return;
        case 0xFB:
            D_801755D0 = AS_U32(arg0);
            return;

        case 0xE0:
        case 0xE1:
        case 0xE2:
            func_800E7744(arg0->bytes.b0 - 0xE0, arg0->bytes.b1, arg0->bytes.b2, arg0->unk_04);
            return;

        case 0xFE:
            temp_t7 = AS_U32(arg0);
            if (temp_t7 == 1) {
                for(i = 0; i < gAudioContext.gAudioBufferParameters.numSequencePlayers; i++){
                    SequencePlayer* seqPlayer = &gAudioContext.gSequencePlayers[i];
                    if(seqPlayer->enabled){
                        Audio_SequencePlayerDisableAsFinished(seqPlayer);
                    }
                }
            }
            func_800E66C0(temp_t7);
            return;
        case 0xE3:
            func_800DE4B0(AS_S32(arg0));
            return;
        default:
            return;
    }
}

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
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E4FE0/func_800E5958.s")
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

void func_800E59F4(void) {
    gAudioContext.unk_5BD8 = 0;
    gAudioContext.unk_5BD9 = 0;
    gAudioContext.unk_5BDA = 0;
    gAudioContext.unk_5BE8 = &gAudioContext.unk_5BF0;
    gAudioContext.unk_5BEC = &gAudioContext.unk_5C08;
    gAudioContext.unk_5BE4 = &gAudioContext.unk_5C20;
    osCreateMesgQueue(gAudioContext.unk_5BE8, &gAudioContext.unk_5C38, 1);
    osCreateMesgQueue(gAudioContext.unk_5BEC, &gAudioContext.unk_5C40, 4);
    osCreateMesgQueue(gAudioContext.unk_5BE4, &gAudioContext.unk_5C3C, 1);
}

#ifdef NON_MATCHING
void func_800E5A8C(u32 arg0, void **arg1) {
    unk_5C50_s *t = &gAudioContext.unk_5C50[gAudioContext.unk_5BD8];

    t->unk_00 = arg0;
    t->unk_04 = *arg1;

    gAudioContext.unk_5BD8++;

    if (gAudioContext.unk_5BD8 == gAudioContext.unk_5BD9) {
        gAudioContext.unk_5BD8--;
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E4FE0/func_800E5A8C.s")
#endif

void func_800E5AD8(u32 arg0, f32 arg1) {
    func_800E5A8C(arg0, &arg1);
}

void func_800E5AFC(u32 arg0, u32 arg1) {
    func_800E5A8C(arg0, &arg1);
}

void func_800E5B20(u32 arg0, s8 arg1) {
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
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E4FE0/func_800E5B80.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E4FE0/func_800E5C10.s")

void func_800E5C28(unk_5C50_s *arg01) {
    unk_5c50_b* arg0 = arg01;
    SequencePlayer *seqPlayer;
    u16 phi_v0;
    s32 i;

    if ((arg0->b0 & 0xF0) == 0xF0) {
        func_800E5584(arg0);
        return;
    }

    if (arg0->b1 < gAudioContext.gAudioBufferParameters.numSequencePlayers) {
        seqPlayer = &gAudioContext.gSequencePlayers[arg0->b1];
        if ((arg0->b0 & 0x80) != 0) {
            func_800E5584(arg0);
            return;
        }
        if ((arg0->b0 & 0x40) != 0) {
            func_800E6128(seqPlayer, arg0);
            return;
        }

        if (arg0->b2 < 0x10) {
            func_800E6300(seqPlayer->channels[arg0->b2], arg0);
            return;
        }
        if (arg0->b2 == 0xFF) {
            phi_v0 = gAudioContext.unk_5BDC[arg0->b1];
            for(i = 0; i < 0x10; i++){
                if(phi_v0 & 1){
                    func_800E6300(seqPlayer->channels[i], arg0);
                }
                phi_v0 = phi_v0 >> 1;
            }
        }
    }
}

void func_800E5D6C(u32 arg0) {
    static u8 D_801304EC = 0;
    unk_5c50_b* s;
    u8 tmp;

    if (gAudioContext.unk_5BDA == 0) {
        D_801304EC = arg0 >> 8;
    }


    while(true){
        tmp = arg0 & 0xFF;
        if(D_801304EC == tmp){
            gAudioContext.unk_5BDA = 0;
            return;
        }

        s = &gAudioContext.unk_5C50[D_801304EC++ & 0xFF].bytes;
        if (s->b0 == 0xF8) {
            gAudioContext.unk_5BDA = 1;
            return;
        }

        func_800E5C28(s);
        s->b0 = 0;

    }
}

u32 func_800E5E20(u32 *arg0) {
    u32 sp1C;

    if (osRecvMesg(&gAudioContext.unk_1E20, &sp1C, 0) == -1) {
        *arg0 = 0;
        return 0;
    }
    *arg0 = sp1C & 0xFFFFFF;
    return sp1C >> 0x18;
}

void func_800E5E84(s32 arg0, u32 *arg1) {
    func_800E1F38(arg0, arg1);
}

void func_800E5EA4(s32 arg0, u32 *arg1, u32 *arg2) {
    *arg1 = gAudioContext.gCtlEntries[arg0].unk_02;
    *arg2 = gAudioContext.gCtlEntries[arg0].unk_03;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E4FE0/func_800E5EDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E4FE0/func_800E5F34.s")

#ifdef NON_MATCHING
s32 func_800E5F88(u32 arg0) {
    s32 sp24;
    u32 sp20;
    u8 temp_v0;

    func_800E5F34();
    temp_v0 = gAudioContext.gAudioResetStatus;
    if (temp_v0 != 0) {
        func_800E5C10();
        if (arg0 == gAudioContext.gAudioResetPresetIdToLoad) {
            return -2;
        }
        if (temp_v0 >= 3) {
            gAudioContext.gAudioResetPresetIdToLoad = arg0;
            return -3;
        }
        osRecvMesg(gAudioContext.unk_5BE4, &sp20, 1);
    }
    func_800E5F34();
    func_800E5AFC(0xF9000000U, arg0);
    return func_800E5B80();
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E4FE0/func_800E5F88.s")
s32 func_800E5F88(u32 arg0);
#endif

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
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E4FE0/func_800E6024.s")
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

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E4FE0/func_800E6128.s")

void func_800E6300(SequenceChannel *channel, unk_5C50_s *arg1) {
    f32 floatData;
    s8 s8Data;

    switch(arg1->bytes.b0){
        case CHAN_UPD_VOL_SCALE:
            floatData = AS_F32(arg1);
            if (floatData != channel->volumeScale) {
                channel->volumeScale = floatData;
                channel->changes.s.volume = 1;
            }
            return;
        case CHAN_UPD_VOL:
            floatData = AS_F32(arg1);
            if (floatData != channel->volume) {
                channel->volume = floatData;
                channel->changes.s.volume = 1;
            }
            return;
        case CHAN_UPD_PAN_SIGNED:
            s8Data = AS_S8(arg1);
            if (s8Data != channel->newPan) {
                channel->newPan = s8Data;
                channel->changes.s.pan = 1;
            }
            return;
        case CHAN_UPD_PAN_UNSIGNED:
            s8Data = AS_U8(arg1);
            if (s8Data != channel->newPan) {
                channel->panChannelWeight = s8Data;
                channel->changes.s.pan = 1;
            }
            return;
        case CHAN_UPD_FREQ_SCALE:
            floatData = AS_F32(arg1);
            if (floatData != channel->freqScale) {
                channel->freqScale = floatData;
                channel->changes.s.freqScale = 1;
            }
            return;
        case CHAN_UPD_REVERB:
            s8Data = AS_S8(arg1);
            if (s8Data != channel->reverb) {
                channel->reverb = s8Data;
            }
            return;
        case CHAN_UPD_SCRIPT_IO:
            if (arg1->bytes.b3 < 8) {
                channel->soundScriptIO[arg1->bytes.b3] = AS_S8(arg1);
            }
            return;
        case CHAN_UPD_STOP_SOMETHING2:
            channel->stopSomething2 = AS_S8(arg1);
            return;
        case CHAN_UPD_MUTE_BEHAVE:
            channel->muteBehavior = AS_S8(arg1);
            return;
        case CHAN_UPD_VIBE_X8:
            channel->vibratoExtentTarget = AS_U8(arg1) * 8;
            channel->vibratoExtentChangeDelay = 1;
            return;
        case CHAN_UPD_VIBE_X32:
            channel->vibratoRateTarget = AS_U8(arg1) * 32;
            channel->vibratoRateChangeDelay = 1;
            return;
        case CHAN_UPD_UNK_0F:
            channel->unk_0F = AS_U8(arg1);
            return;
        case CHAN_UPD_UNK_20:
            channel->unk_20 = AS_U16(arg1);
            return;
        case CHAN_UPD_REVERB_FLG:
            channel->reverbBits.asByte = AS_U8(arg1);
            return;
    }
}

void func_800E64B0(s32 arg0, s32 arg1, s32 arg2) {
    func_800E5AFC(((arg0 & 0xFF) << 0x10) | 0xFA000000 | ((arg1 & 0xFF) << 8) | (arg2 & 0xFF), 1);
}

void func_800E64F8(void) {
    func_800E5AFC(0xFA000000, 0);
}

void func_800E651C(u32 arg0, s32 arg1) {
    func_800E5AFC((arg1 & 0xFF) | 0xFD000000, arg0);
}

void func_800E6550(void) {
    osRecvMesg(gAudioContext.unk_5BE8, NULL, OS_MESG_NOBLOCK);
    osRecvMesg(gAudioContext.unk_5BE8, NULL, OS_MESG_BLOCK);
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
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E4FE0/func_800E6590.s")
#endif

void func_800E6680(void) {
    func_800E66C0(0);
}

void func_800E66A0(void) {
    func_800E66C0(2);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E4FE0/func_800E66C0.s")

u32 Audio_RandUInt(void) {
    static u32 audRand = 0x12345678;

    audRand = ((osGetCount() + 0x1234567) * (audRand + gAudioContext.unk_289C));
    audRand += gAudioContext.gAudioRandom;
    return audRand;
}

void func_800E6818(void) {
    func_800E59F4();
}
