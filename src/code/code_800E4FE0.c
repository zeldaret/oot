#include "global.h"

typedef enum {
    CHAN_UPD_UNK_0,           // 0
    CHAN_UPD_VOL_SCALE,       // 1
    CHAN_UPD_VOL,             // 2
    CHAN_UPD_PAN_SIGNED,      // 3
    CHAN_UPD_FREQ_SCALE,      // 4
    CHAN_UPD_REVERB,          // 5
    CHAN_UPD_SCRIPT_IO,       // 6
    CHAN_UPD_PAN_UNSIGNED,    // 7
    CHAN_UPD_STOP_SOMETHING2, // 8
    CHAN_UPD_MUTE_BEHAVE,     // 9
    CHAN_UPD_VIBE_X8,         // 10
    CHAN_UPD_VIBE_X32,        // 11
    CHAN_UPD_UNK_0F,          // 12
    CHAN_UPD_UNK_20,          // 13
    CHAN_UPD_REVERB_FLG       // 14
} ChannelUpdateType;

void func_800E6300(SequenceChannel* channel, AudioCmd* arg1);
void func_800E59AC(s32 playerIdx, s32 fadeTimer);
void Audio_InitMesgQueues(void);
AudioTask* func_800E5000(void);
void Audio_ProcessCmds(u32);
void func_800E6128(SequencePlayer* seqPlayer, AudioCmd* arg1);
void func_800E5958(s32 playerIdx, s32 fadeTimer);
s32 func_800E66C0(s32 arg0);

// AudioMgr_Retrace
AudioTask* func_800E4FE0(void) {
    return func_800E5000();
}

u32 D_801304E0 = 0x80;
AudioTask* D_801304E4 = NULL;

extern u8 D_80155C70[];
#ifdef NON_EQUIVALENT
// haven't verified Equivalency yet.
AudioTask* func_800E5000(void) {
    u32 sp6C;
    s32 abiCmdCnt;
    s32 sp5C;
    s16* sp58;
    u32 sp4C;
    s32 sp48;
    void* sp3C;
    void* sp34;
    OSTask_t* temp_v1_10;
    OSMesgQueue* temp_s1;
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
    void* temp_t0;
    void* temp_v1_3;
    void* temp_v1_4;
    void* temp_v1_5;
    s16 phi_v1;
    s32 phi_a0;
    void* phi_v1_2;
    s32 phi_s0;
    s32 phi_v1_3;
    void* phi_v1_4;
    s32 phi_s0_2;
    s32 phi_v1_5;
    s32 phi_s0_3;
    s32 phi_s0_4;
    void* phi_v1_6;
    s32 phi_s0_5;
    s32 i;

    gAudioContext.totalTaskCnt++;
    if (gAudioContext.totalTaskCnt % (gAudioContext.audioBufferParameters.presetUnk4) != 0) {
        if (D_801755D0 != 0) {
            D_801755D0();
        }

        if (gAudioContext.audioBufferParameters.presetUnk4 ==
            ((gAudioContext.totalTaskCnt % (gAudioContext.audioBufferParameters.presetUnk4)) + 1)) {
            return D_801304E4;
        } else {
            return NULL;
        }
    }

    osSendMesg(gAudioContext.taskStartQueueP, gAudioContext.totalTaskCnt, 0);
    temp_t4 = gAudioContext.curAIBufIdx + 1;
    temp_t6 = (gAudioContext.curAIBufIdx + 1) % 3;
    gAudioContext.rspTaskIdx ^= 1;
    gAudioContext.curAIBufIdx++;
    gAudioContext.curAIBufIdx %= 3;
    temp_hi = (gAudioContext.curAIBufIdx - 2 + 3) % 3;
    sp6C = osAiGetLength() / 4;
    if (gAudioContext.resetTimer < 16) {
        if (gAudioContext.aiBufLengths[temp_hi] != 0) {
            sp34 = &gAudioContext + (temp_hi * 4);
            sp3C = &gAudioContext + (temp_hi * 2);
            osAiSetNextBuffer(gAudioContext.aiBuffers[temp_hi], gAudioContext.aiBufLengths[temp_hi] * 4);
        }
    }

    if (D_801755D0 != NULL) {
        D_801755D0();
    }

    sp5C = gAudioContext.sampleIoReqIdx;
    for (i = 0; i < gAudioContext.sampleIoReqIdx; i++) {
        if (osRecvMesg(&gAudioContext.unk_1ED0, NULL, 0) == 0) {
            sp5C--;
        }
    }

    if (sp5C != 0) {
        for (i = 0; i < sp5C; i++) {
            osRecvMesg(&gAudioContext.unk_1ED0, NULL, 1);
        }
    }

    sp48 = gAudioContext.unk_1ED0.validCount;
    if (gAudioContext.unk_1ED0.validCount != 0) {
        for (i = 0; i < sp48; i++) {
            osRecvMesg(&gAudioContext.unk_1ED0, NULL, 0);
        }
    }
    gAudioContext.sampleIoReqIdx = 0;
    func_800E11F0();
    Audio_ProcessLoads(gAudioContext.resetStatus);
    func_800E4F58();
    if ((gAudioContext.resetStatus != 0) && (Audio_ResetStep() == 0)) {
        if (gAudioContext.resetStatus == 0) {
            osSendMesg(gAudioContext.audioResetQueueP, gAudioContext.audioResetPresetIdToLoad, 0);
        }

        D_801304E4 = NULL;
        return NULL;
    }

    if (gAudioContext.resetTimer > 16) {
        return NULL;
    } else if (gAudioContext.resetTimer != 0) {
        gAudioContext.resetTimer++;
    }

    gAudioContext.currTask = &gAudioContext.rspTask[gAudioContext.rspTaskIdx];
    gAudioContext.curAbiCmdBuf = gAudioContext.abiCmdBufs[gAudioContext.rspTaskIdx];
    gAudioContext.aiBufLengths[gAudioContext.curAIBufIdx] =
        (s16)((((gAudioContext.audioBufferParameters.samplesPerFrameTarget - sp6C) + 0x80) & 0xFFF0) + 0x10);
    if (gAudioContext.aiBufLengths[gAudioContext.curAIBufIdx] < gAudioContext.audioBufferParameters.minAiBufferLength) {
        gAudioContext.aiBufLengths[gAudioContext.curAIBufIdx] = gAudioContext.audioBufferParameters.minAiBufferLength;
    }

    if (gAudioContext.audioBufferParameters.maxAiBufferLength < gAudioContext.aiBufLengths[gAudioContext.curAIBufIdx]) {
        gAudioContext.aiBufLengths[gAudioContext.curAIBufIdx] = gAudioContext.audioBufferParameters.maxAiBufferLength;
    }

    if (gAudioContext.resetStatus == 0) {
        i = 0;
        // msg = 0000RREE R = read pos, E = End Pos
        while (osRecvMesg(gAudioContext.cmdProcQueueP, &sp4C, 0) != -1) {
            Audio_ProcessCmds(sp4C);
            i++;
        }
        if ((i == 0) && (gAudioContext.cmdQueueFinished)) {
            Audio_ScheduleProcessCmds();
        }
    }

    gAudioContext.curAbiCmdBuf =
        AudioSynth_Update(gAudioContext.curAbiCmdBuf, &abiCmdCnt, gAudioContext.aiBuffers[gAudioContext.curAIBufIdx],
                          gAudioContext.aiBufLengths[gAudioContext.curAIBufIdx]);
    gAudioContext.audioRandom = osGetCount() * (gAudioContext.audioRandom + gAudioContext.totalTaskCnt);
    gAudioContext.audioRandom = gAudioContext.aiBuffers[gAudioContext.curAIBufIdx][gAudioContext.totalTaskCnt & 0xFF] +
                                gAudioContext.audioRandom;
    ;
    gWaveSamples[8] = (s16*)((((u8*)func_800E4FE0)) + (gAudioContext.audioRandom & 0xFFF0));
    gAudioContext.currTask->taskQueue = NULL;
    gAudioContext.currTask->unk_44 = NULL;
    temp_v1_10 = &gAudioContext.currTask->task.t;
    temp_v1_10->type = 2U;
    temp_v1_10->flags = 0U;
    temp_v1_10->ucode_boot = D_801120C0;
    temp_v1_10->ucode_boot_size = 0x1000;
    temp_v1_10->ucode_data_size = (((s32)(D_80155F50 - D_80155C70) >> 3) * 8) - 1;
    temp_v1_10->ucode = D_801120C0;
    temp_v1_10->ucode_data = D_80155C70;
    temp_v1_10->ucode_size = 0x1000;
    temp_v1_10->dram_stack = NULL;
    temp_v1_10->dram_stack_size = 0;
    temp_v1_10->output_buff = NULL;
    temp_v1_10->output_buff_size = NULL;
    temp_v1_10->data_ptr = gAudioContext.abiCmdBufs[gAudioContext.rspTaskIdx];
    temp_v1_10->yield_data_ptr = NULL;
    temp_v1_10->yield_data_size = 0;
    temp_v1_10->data_size = abiCmdCnt * sizeof(ACmd);

    if (D_801304E0 < abiCmdCnt) {
        D_801304E0 = abiCmdCnt;
    }

    if (gAudioContext.audioBufferParameters.presetUnk4 == 1) {
        return gAudioContext.currTask;
    }
    D_801304E4 = gAudioContext.currTask;
    return NULL;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E4FE0/func_800E5000.s")
#endif

#define ACMD_SND_MDE ((u32)0xF0000000)
#define ACMD_MUTE ((u32)0xF1000000)

void func_800E5584(AudioCmd* cmd) {
    s32 i;
    s32 pad;
    s32 pad2;
    u32 temp_a1_5;
    u32 temp_t7;

    switch (cmd->op) {
        case 0x81:
            func_800E1C18(cmd->arg1, cmd->arg2);
            return;
        case 0x82:
            func_800E20D4(cmd->arg0, cmd->arg1, cmd->arg2);
            func_800E59AC(cmd->arg0, cmd->data);
            return;
        case 0x85:
            func_800E2124(cmd->arg0, cmd->arg1, cmd->data);
            return;
        case 0x83:
            if (gAudioContext.seqPlayers[cmd->arg0].enabled) {
                if (cmd->asInt == 0) {
                    Audio_SequencePlayerDisableAsFinished(&gAudioContext.seqPlayers[cmd->arg0]);
                } else {
                    func_800E5958(cmd->arg0, cmd->asInt);
                }
            }
            return;
        case 0xF0:
            gAudioContext.soundMode = cmd->asUInt;
            return;
        case 0xF1:
            for (i = 0; i < gAudioContext.audioBufferParameters.numSequencePlayers; i++) {
                SequencePlayer* seqPlayer = &gAudioContext.seqPlayers[i];
                seqPlayer->muted = 1;
                seqPlayer->recalculateVolume = 1;
            }
            return;
        case 0xF2:
            if (cmd->asUInt == 1) {
                for (i = 0; i < gAudioContext.maxSimultaneousNotes; i++) {
                    Note* note = &gAudioContext.notes[i];
                    NoteSubEu* subEu = &note->noteSubEu.bitField0;
                    if (subEu->bitField0.s.enabled && note->playbackState.unk_04 == 0) {
                        if (note->playbackState.parentLayer->seqChannel->muteBehavior & 8) {
                            subEu->bitField0.s.finished = 1;
                        }
                    }
                }
            }

            for (i = 0; i < gAudioContext.audioBufferParameters.numSequencePlayers; i++) {
                SequencePlayer* seqPlayer = &gAudioContext.seqPlayers[i];
                seqPlayer->muted = 0;
                seqPlayer->recalculateVolume = 1;
            }

            return;
        case 0xF3:
            func_800E1D64(cmd->arg0, cmd->arg1, cmd->arg2);
            return;
        case 0xF4:
            Audio_AudioTableAsyncLoad(cmd->arg0, cmd->arg1, cmd->arg2, &gAudioContext.unk_1E20);
            return;
        case 0xF5:
            Audio_AudioBankAsyncLoad(cmd->arg0, cmd->arg1, cmd->arg2, &gAudioContext.unk_1E20);
            return;
        case 0xFC:
            Audio_AudioSeqAsyncLoad(cmd->arg0, cmd->arg1, cmd->arg2, &gAudioContext.unk_1E20);
            return;
        case 0xF6:
            func_800E1F7C(cmd->arg1);
            return;
        case 0x90:
            gAudioContext.unk_5BDC[cmd->arg0] = cmd->asUShort;
            return;
        case 0xF9:
            gAudioContext.resetStatus = 5;
            gAudioContext.audioResetPresetIdToLoad = cmd->asUInt;
            return;
        case 0xFB:
            D_801755D0 = cmd->asUInt;
            return;
        case 0xE0:
        case 0xE1:
        case 0xE2:
            func_800E7744(cmd->op - 0xE0, cmd->arg0, cmd->arg1, cmd->data);
            return;
        case 0xFE:
            temp_t7 = cmd->asUInt;
            if (temp_t7 == 1) {
                for (i = 0; i < gAudioContext.audioBufferParameters.numSequencePlayers; i++) {
                    SequencePlayer* seqPlayer = &gAudioContext.seqPlayers[i];
                    if (seqPlayer->enabled) {
                        Audio_SequencePlayerDisableAsFinished(seqPlayer);
                    }
                }
            }
            func_800E66C0(temp_t7);
            return;
        case 0xE3:
            func_800DE4B0(cmd->asInt);
            return;
        default:
            return;
    }
}

// SetFadeOutTimer
void func_800E5958(s32 playerIdx, s32 fadeTimer) {
    SequencePlayer* seqPlayer = &gAudioContext.seqPlayers[playerIdx];

    if (fadeTimer == 0) {
        fadeTimer = 1;
    }

    seqPlayer->fadeVelocity = -(seqPlayer->fadeVolume / fadeTimer);
    seqPlayer->state = 2;
    seqPlayer->fadeTimer = fadeTimer;
}

// SetFadeInTimer
void func_800E59AC(s32 playerIdx, s32 fadeTimer) {
    SequencePlayer* seqPlayer;
    if (fadeTimer != 0) {
        seqPlayer = &gAudioContext.seqPlayers[playerIdx];
        seqPlayer->state = 1;
        seqPlayer->fadeTimerUnkEu = fadeTimer;
        seqPlayer->fadeTimer = fadeTimer;
        seqPlayer->fadeVolume = 0.0f;
        seqPlayer->fadeVelocity = 0.0f;
    }
}

void Audio_InitMesgQueuesInternal(void) {
    gAudioContext.cmdWrPos = 0;
    gAudioContext.cmdRdPos = 0;
    gAudioContext.cmdQueueFinished = 0;
    gAudioContext.taskStartQueueP = &gAudioContext.taskStartQueue;
    gAudioContext.cmdProcQueueP = &gAudioContext.cmdProcQueue;
    gAudioContext.audioResetQueueP = &gAudioContext.audioResetQueue;
    osCreateMesgQueue(gAudioContext.taskStartQueueP, gAudioContext.taskStartMsgs,
                      ARRAY_COUNT(gAudioContext.taskStartMsgs));
    osCreateMesgQueue(gAudioContext.cmdProcQueueP, gAudioContext.cmdProcMsgs, ARRAY_COUNT(gAudioContext.cmdProcMsgs));
    osCreateMesgQueue(gAudioContext.audioResetQueueP, gAudioContext.audioResetMesgs,
                      ARRAY_COUNT(gAudioContext.audioResetMesgs));
}

void Audio_QueueCmd(u32 opArgs, void** data) {
    AudioCmd* cmd = &gAudioContext.cmdBuf[gAudioContext.cmdWrPos & 0xFF];

    cmd->opArgs = opArgs;
    cmd->data = *data;

    gAudioContext.cmdWrPos++;

    if (gAudioContext.cmdWrPos == gAudioContext.cmdRdPos) {
        gAudioContext.cmdWrPos--;
    }
}

void Audio_QueueCmdF32(u32 opArgs, f32 data) {
    Audio_QueueCmd(opArgs, &data);
}

void Audio_QueueCmdS32(u32 opArgs, s32 data) {
    Audio_QueueCmd(opArgs, &data);
}

void Audio_QueueCmdS8(u32 opArgs, s8 data) {
    u32 uData = data << 0x18;

    Audio_QueueCmd(opArgs, &uData);
}

void Audio_QueueCmdU16(u32 opArgs, u16 data) {
    u32 uData = data << 0x10;

    Audio_QueueCmd(opArgs, &uData);
}

s32 Audio_ScheduleProcessCmds(void) {
    static s32 D_801304E8 = 0;
    s32 ret;

    if (D_801304E8 < (u8)((gAudioContext.cmdWrPos - gAudioContext.cmdRdPos) + 0x100)) {
        D_801304E8 = (u8)((gAudioContext.cmdWrPos - gAudioContext.cmdRdPos) + 0x100);
    }

    ret =
        osSendMesg(gAudioContext.cmdProcQueueP,
                   (void*)(((gAudioContext.cmdRdPos & 0xFF) << 8) | (gAudioContext.cmdWrPos & 0xFF)), OS_MESG_NOBLOCK);
    if (ret != -1) {
        gAudioContext.cmdRdPos = gAudioContext.cmdWrPos;
        ret = 0;
    } else {
        return -1;
    }

    return ret;
}

void Audio_ResetCmdQueue(void) {
    gAudioContext.cmdQueueFinished = 0;
    gAudioContext.cmdRdPos = gAudioContext.cmdWrPos;
}

void Audio_ProcessCmd(AudioCmd* cmd) {
    SequencePlayer* seqPlayer;
    u16 phi_v0;
    s32 i;

    if ((cmd->op & 0xF0) == 0xF0) {
        func_800E5584(cmd);
        return;
    }

    if (cmd->arg0 < gAudioContext.audioBufferParameters.numSequencePlayers) {
        seqPlayer = &gAudioContext.seqPlayers[cmd->arg0];
        if (cmd->op & 0x80) {
            func_800E5584(cmd);
            return;
        }
        if (cmd->op & 0x40) {
            func_800E6128(seqPlayer, cmd);
            return;
        }

        if (cmd->arg1 < 0x10) {
            func_800E6300(seqPlayer->channels[cmd->arg1], cmd);
            return;
        }
        if (cmd->arg1 == 0xFF) {
            phi_v0 = gAudioContext.unk_5BDC[cmd->arg0];
            for (i = 0; i < 0x10; i++) {
                if (phi_v0 & 1) {
                    func_800E6300(seqPlayer->channels[i], cmd);
                }
                phi_v0 = phi_v0 >> 1;
            }
        }
    }
}

void Audio_ProcessCmds(u32 msg) {
    static u8 curCmdRdPos = 0;
    AudioCmd* cmd;
    u8 endPos;

    if (!gAudioContext.cmdQueueFinished) {
        curCmdRdPos = msg >> 8;
    }

    while (true) {
        endPos = msg & 0xFF;
        if (curCmdRdPos == endPos) {
            gAudioContext.cmdQueueFinished = 0;
            return;
        }

        cmd = &gAudioContext.cmdBuf[curCmdRdPos++ & 0xFF];
        if (cmd->op == 0xF8) {
            gAudioContext.cmdQueueFinished = 1;
            return;
        }

        Audio_ProcessCmd(cmd);
        cmd->op = 0;
    }
}

u32 func_800E5E20(u32* arg0) {
    u32 sp1C;

    if (osRecvMesg(&gAudioContext.unk_1E20, &sp1C, 0) == -1) {
        *arg0 = 0;
        return 0;
    }
    *arg0 = sp1C & 0xFFFFFF;
    return sp1C >> 0x18;
}

u8* func_800E5E84(s32 arg0, u32* arg1) {
    return func_800E1F38(arg0, arg1);
}

void func_800E5EA4(s32 arg0, u32* arg1, u32* arg2) {
    *arg1 = gAudioContext.ctlEntries[arg0].unk_02;
    *arg2 = gAudioContext.ctlEntries[arg0].unk_03;
}

s32 func_800E5EDC(void) {
    s32 pad;
    s32 sp18;

    if (osRecvMesg(gAudioContext.audioResetQueueP, &sp18, OS_MESG_NOBLOCK) == -1) {
        return 0;
    } else if (gAudioContext.audioResetPresetIdToLoad != sp18) {
        return -1;
    } else {
        return 1;
    }
}

void func_800E5F34(void) {
    // macro?
    // clang-format off
    s32 chk = -1; s32 sp28; do { } while (osRecvMesg(gAudioContext.audioResetQueueP, &sp28, 0) != chk);
    // clang-format on
}

s32 func_800E5F88(u32 resetPreloadID) {
    s32 resetStatus;
    OSMesg msg;
    s32 pad;

    func_800E5F34();
    resetStatus = gAudioContext.resetStatus;
    if (resetStatus != 0) {
        Audio_ResetCmdQueue();
        if (gAudioContext.audioResetPresetIdToLoad == resetPreloadID) {
            return -2;
        } else if (resetStatus > 2) {
            gAudioContext.audioResetPresetIdToLoad = resetPreloadID;
            return -3;
        } else {
            osRecvMesg(gAudioContext.audioResetQueueP, &msg, OS_MESG_BLOCK);
        }
    }

    func_800E5F34();
    Audio_QueueCmdS32(0xF9000000, resetPreloadID);

    return Audio_ScheduleProcessCmds();
}

void Audio_PreNMIInternal(void) {
    gAudioContext.resetTimer = 1;
    if (gAudioContextInitalized) {
        func_800E5F88(0);
        gAudioContext.resetStatus = 0;
    }
}

s8 func_800E6070(s32 playerIdx, s32 channelIdx, s32 scriptIdx) {
    SequencePlayer* seqPlayer = &gAudioContext.seqPlayers[playerIdx];
    SequenceChannel* channel;
    if (seqPlayer->enabled) {
        channel = seqPlayer->channels[channelIdx];
        return channel->soundScriptIO[scriptIdx];
    } else {
        return -1;
    }
}

s8 func_800E60C4(s32 arg0, s32 arg1) {
    return gAudioContext.seqPlayers[arg0].unk_158[arg1];
}

void func_800E60EC(void* memAddr, u32 size) {
    Audio_SoundAllocPoolInit(&gAudioContext.unkPool, memAddr, size);
}

void func_800E611C(void) {
    gAudioContext.unkPool.start = NULL;
}

void func_800E6128(SequencePlayer* seqPlayer, AudioCmd* cmd) {
    f32 fadeVolume;
    switch (cmd->op) {
        case 0x41:
            if (seqPlayer->fadeVolumeScale != cmd->asFloat) {
                seqPlayer->fadeVolumeScale = cmd->asFloat;
                seqPlayer->recalculateVolume = 1;
            }
            return;
        case 0x47:
            seqPlayer->tempo = cmd->asInt * 0x30;
            return;
        case 0x49:
            seqPlayer->unk_0C = cmd->asInt * 0x30;
            return;
        case 0x4E:
            seqPlayer->unk_0C = cmd->asInt;
            return;
        case 0x48:
            seqPlayer->transposition = cmd->asSbyte;
            return;
        case 0x46:
            seqPlayer->unk_158[cmd->arg2] = cmd->asSbyte;
            return;
        case 0x4A:
            fadeVolume = (s32)cmd->arg1 / 127.0f;
            goto block_11;
        case 0x4B:
            fadeVolume = ((s32)cmd->arg1 / 100.0f) * seqPlayer->fadeVolume;
        block_11:
            if (seqPlayer->state != 2) {
                seqPlayer->volume = seqPlayer->fadeVolume;
                if (cmd->asInt == 0) {
                    seqPlayer->fadeVolume = fadeVolume;
                } else {
                    s32 tmp = cmd->asInt;
                    seqPlayer->state = 0;
                    seqPlayer->fadeTimer = tmp;
                    seqPlayer->fadeVelocity = (fadeVolume - seqPlayer->fadeVolume) / tmp;
                }
            }
            return;
        case 0x4C:
            if (seqPlayer->state != 2) {
                if (cmd->asInt == 0) {
                    seqPlayer->fadeVolume = seqPlayer->volume;
                } else {
                    s32 tmp = cmd->asInt;
                    seqPlayer->state = 0;
                    seqPlayer->fadeTimer = tmp;
                    seqPlayer->fadeVelocity = (seqPlayer->volume - seqPlayer->fadeVolume) / tmp;
                }
            }
            return;
        case 0x4D:
            seqPlayer->unk_34 = cmd->asFloat;
            if (seqPlayer->unk_34 == 1.0f) {
                seqPlayer->unk_0b1 = 0;
            } else {
                seqPlayer->unk_0b1 = 1;
            }
    }
}

void func_800E6300(SequenceChannel* channel, AudioCmd* cmd) {
    switch (cmd->op) {
        case CHAN_UPD_VOL_SCALE:
            if (channel->volumeScale != cmd->asFloat) {
                channel->volumeScale = cmd->asFloat;
                channel->changes.s.volume = 1;
            }
            return;
        case CHAN_UPD_VOL:
            if (channel->volume != cmd->asFloat) {
                channel->volume = cmd->asFloat;
                channel->changes.s.volume = 1;
            }
            return;
        case CHAN_UPD_PAN_SIGNED:
            if (channel->newPan != cmd->asSbyte) {
                channel->newPan = cmd->asSbyte;
                channel->changes.s.pan = 1;
            }
            return;
        case CHAN_UPD_PAN_UNSIGNED:
            if (channel->newPan != cmd->asSbyte) {
                channel->panChannelWeight = cmd->asSbyte;
                channel->changes.s.pan = 1;
            }
            return;
        case CHAN_UPD_FREQ_SCALE:
            if (channel->freqScale != cmd->asFloat) {
                channel->freqScale = cmd->asFloat;
                channel->changes.s.freqScale = 1;
            }
            return;
        case CHAN_UPD_REVERB:
            if (channel->reverb != cmd->asSbyte) {
                channel->reverb = cmd->asSbyte;
            }
            return;
        case CHAN_UPD_SCRIPT_IO:
            if (cmd->arg2 < 8) {
                channel->soundScriptIO[cmd->arg2] = cmd->asSbyte;
            }
            return;
        case CHAN_UPD_STOP_SOMETHING2:
            channel->stopSomething2 = cmd->asSbyte;
            return;
        case CHAN_UPD_MUTE_BEHAVE:
            channel->muteBehavior = cmd->asSbyte;
            return;
        case CHAN_UPD_VIBE_X8:
            channel->vibratoExtentTarget = cmd->asUbyte * 8;
            channel->vibratoExtentChangeDelay = 1;
            return;
        case CHAN_UPD_VIBE_X32:
            channel->vibratoRateTarget = cmd->asUbyte * 32;
            channel->vibratoRateChangeDelay = 1;
            return;
        case CHAN_UPD_UNK_0F:
            channel->unk_0F = cmd->asUbyte;
            return;
        case CHAN_UPD_UNK_20:
            channel->unk_20 = cmd->asUShort;
            return;
        case CHAN_UPD_REVERB_FLG:
            channel->reverbBits.asByte = cmd->asUbyte;
            return;
    }
}

void func_800E64B0(s32 arg0, s32 arg1, s32 arg2) {
    Audio_QueueCmdS32(((arg0 & 0xFF) << 0x10) | 0xFA000000 | ((arg1 & 0xFF) << 8) | (arg2 & 0xFF), 1);
}

void func_800E64F8(void) {
    Audio_QueueCmdS32(0xFA000000, 0);
}

void func_800E651C(u32 arg0, s32 arg1) {
    Audio_QueueCmdS32((arg1 & 0xFF) | 0xFD000000, arg0);
}

void Audio_WaitForAudioTask(void) {
    osRecvMesg(gAudioContext.taskStartQueueP, NULL, OS_MESG_NOBLOCK);
    osRecvMesg(gAudioContext.taskStartQueueP, NULL, OS_MESG_BLOCK);
}

#ifdef NON_MATCHING
s32 func_800E6590(s32 arg0, s32 arg1, s32 arg2) {
    u32 temp_v1_2;
    AudioBankSound* temp_a0;
    Note* temp_a0_2;
    SequenceChannelLayer* temp_v0;
    SequenceChannel* temp_v1;
    SequencePlayer* seqPlayer;

    seqPlayer = &gAudioContext.seqPlayers[arg0];
    if (seqPlayer->enabled && seqPlayer->channels[arg1]->enabled) {
        temp_v0 = seqPlayer->channels[arg1]->layers[arg2];
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
    return 0;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/code_800E4FE0/func_800E6590.s")
#endif

s32 func_800E6680(void) {
    return func_800E66C0(0);
}

void func_800E66A0(void) {
    func_800E66C0(2);
}

s32 func_800E66C0(s32 arg0) {
    s32 phi_v1;
    NotePlaybackState* temp_a2;
    NoteSubEu* temp_a3;
    s32 i;
    Note* note;
    AudioBankSound* sound;

    phi_v1 = 0;
    for (i = 0; i < gAudioContext.maxSimultaneousNotes; i++) {
        note = &gAudioContext.notes[i];
        temp_a2 = &note->playbackState;
        if (note->noteSubEu.bitField0.s.enabled) {
            temp_a3 = &note->noteSubEu;
            if (temp_a2->adsr.action.s.state != 0) {
                if (arg0 >= 2) {
                    sound = temp_a3->sound.audioBankSound;
                    if (sound == NULL || temp_a3->bitField1.s.bit2) {
                        continue;
                    }
                    if (sound->sample->bits2 == 0) {
                        continue;
                    }
                }

                phi_v1++;
                if ((arg0 & 1) == 1) {
                    temp_a2->adsr.fadeOutVel = gAudioContext.audioBufferParameters.updatesPerFrameInv;
                    temp_a2->adsr.action.s.release = 1;
                }
            }
        }
    }
    return phi_v1;
}

u32 Audio_NextRandom(void) {
    static u32 audRand = 0x12345678;

    audRand = ((osGetCount() + 0x1234567) * (audRand + gAudioContext.totalTaskCnt));
    audRand += gAudioContext.audioRandom;
    return audRand;
}

void Audio_InitMesgQueues(void) {
    Audio_InitMesgQueuesInternal();
}
