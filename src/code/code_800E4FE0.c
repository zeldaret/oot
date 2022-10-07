#include "global.h"

#define SAMPLES_TO_OVERPRODUCE 0x10
#define EXTRA_BUFFERED_AI_SAMPLES_TARGET 0x80

void Audio_ProcessChannelThreadCmd(SequenceChannel* channel, AudioCmd* cmd);
void func_800E59AC(s32 playerIdx, s32 fadeTimer);
void Audio_InitMesgQueues(void);
AudioTask* func_800E5000(void);
void Audio_ProcessCmds(u32);
void Audio_ProcessSeqPlayerThreadCmd(SequencePlayer* seqPlayer, AudioCmd* cmd);
void func_800E5958(s32 playerIdx, s32 fadeTimer);
s32 func_800E66C0(s32 arg0);

// AudioMgr_Retrace
AudioTask* func_800E4FE0(void) {
    return func_800E5000();
}

/**
 * This is Audio_Update for the audio thread
 */
AudioTask* func_800E5000(void) {
    static s32 sMaxAbiCmdCnt = 0x80;
    static AudioTask* sWaitingAudioTask = NULL;
    u32 samplesRemainingInAi;
    s32 abiCmdCnt;
    s32 pad;
    s32 j;
    s32 sp5C;
    s16* currAiBuffer;
    OSTask_t* task;
    s32 index;
    u32 sp4C;
    s32 sp48;
    s32 i;

    gAudioContext.totalTaskCount++;
    if (gAudioContext.totalTaskCount % (gAudioContext.audioBufferParameters.specUnk4) != 0) {
        if (gCustomAudioUpdateFunction != NULL) {
            gCustomAudioUpdateFunction();
        }

        if ((gAudioContext.totalTaskCount % gAudioContext.audioBufferParameters.specUnk4) + 1 ==
            gAudioContext.audioBufferParameters.specUnk4) {
            return sWaitingAudioTask;
        } else {
            return NULL;
        }
    }

    osSendMesg(gAudioContext.taskStartQueueP, (OSMesg)gAudioContext.totalTaskCount, OS_MESG_NOBLOCK);
    gAudioContext.rspTaskIndex ^= 1;
    gAudioContext.curAiBufIndex++;
    gAudioContext.curAiBufIndex %= 3;
    index = (gAudioContext.curAiBufIndex - 2 + 3) % 3;
    samplesRemainingInAi = osAiGetLength() / 4;

    if (gAudioContext.resetTimer < 16) {
        if (gAudioContext.aiBufLengths[index] != 0) {
            osAiSetNextBuffer(gAudioContext.aiBuffers[index], gAudioContext.aiBufLengths[index] * 4);
            if (gAudioContext.aiBuffers[index]) {}
            if (gAudioContext.aiBufLengths[index]) {}
        }
    }

    if (gCustomAudioUpdateFunction != NULL) {
        gCustomAudioUpdateFunction();
    }

    sp5C = gAudioContext.curAudioFrameDmaCount;
    for (i = 0; i < gAudioContext.curAudioFrameDmaCount; i++) {
        if (osRecvMesg(&gAudioContext.currAudioFrameDmaQueue, NULL, OS_MESG_NOBLOCK) == 0) {
            sp5C--;
        }
    }

    if (sp5C != 0) {
        for (i = 0; i < sp5C; i++) {
            osRecvMesg(&gAudioContext.currAudioFrameDmaQueue, NULL, OS_MESG_BLOCK);
        }
    }

    sp48 = MQ_GET_COUNT(&gAudioContext.currAudioFrameDmaQueue);
    if (sp48 != 0) {
        for (i = 0; i < sp48; i++) {
            osRecvMesg(&gAudioContext.currAudioFrameDmaQueue, NULL, OS_MESG_NOBLOCK);
        }
    }

    gAudioContext.curAudioFrameDmaCount = 0;
    AudioLoad_DecreaseSampleDmaTtls();
    AudioLoad_ProcessLoads(gAudioContext.resetStatus);
    AudioLoad_ProcessScriptLoads();

    if (gAudioContext.resetStatus != 0) {
        if (AudioHeap_ResetStep() == 0) {
            if (gAudioContext.resetStatus == 0) {
                osSendMesg(gAudioContext.audioResetQueueP, (OSMesg)(u32)gAudioContext.audioResetSpecIdToLoad,
                           OS_MESG_NOBLOCK);
            }

            sWaitingAudioTask = NULL;
            return NULL;
        }
    }

    if (gAudioContext.resetTimer > 16) {
        return NULL;
    }
    if (gAudioContext.resetTimer != 0) {
        gAudioContext.resetTimer++;
    }

    gAudioContext.curTask = &gAudioContext.rspTask[gAudioContext.rspTaskIndex];
    gAudioContext.curAbiCmdBuf = gAudioContext.abiCmdBufs[gAudioContext.rspTaskIndex];

    index = gAudioContext.curAiBufIndex;
    currAiBuffer = gAudioContext.aiBuffers[index];

    gAudioContext.aiBufLengths[index] =
        (s16)((((gAudioContext.audioBufferParameters.samplesPerFrameTarget - samplesRemainingInAi) +
                EXTRA_BUFFERED_AI_SAMPLES_TARGET) &
               ~0xF) +
              SAMPLES_TO_OVERPRODUCE);
    if (gAudioContext.aiBufLengths[index] < gAudioContext.audioBufferParameters.minAiBufferLength) {
        gAudioContext.aiBufLengths[index] = gAudioContext.audioBufferParameters.minAiBufferLength;
    }

    if (gAudioContext.aiBufLengths[index] > gAudioContext.audioBufferParameters.maxAiBufferLength) {
        gAudioContext.aiBufLengths[index] = gAudioContext.audioBufferParameters.maxAiBufferLength;
    }

    j = 0;
    if (gAudioContext.resetStatus == 0) {
        // msg = 0000RREE R = read pos, E = End Pos
        while (osRecvMesg(gAudioContext.cmdProcQueueP, (OSMesg*)&sp4C, OS_MESG_NOBLOCK) != -1) {
            if (1) {}
            Audio_ProcessCmds(sp4C);
            j++;
        }
        if ((j == 0) && (gAudioContext.cmdQueueFinished)) {
            Audio_ScheduleProcessCmds();
        }
    }

    gAudioContext.curAbiCmdBuf =
        AudioSynth_Update(gAudioContext.curAbiCmdBuf, &abiCmdCnt, currAiBuffer, gAudioContext.aiBufLengths[index]);

    // Update audioRandom to the next random number
    gAudioContext.audioRandom = (gAudioContext.audioRandom + gAudioContext.totalTaskCount) * osGetCount();
    gAudioContext.audioRandom =
        gAudioContext.audioRandom + gAudioContext.aiBuffers[index][gAudioContext.totalTaskCount & 0xFF];

    // gWaveSamples[8] interprets compiled assembly code as s16 samples as a way to generate sound with noise.
    // Start with the address of func_800E4FE0, and offset it by a random number between 0 - 0xFFF0
    // Use the resulting address as the starting address to interpret an array of samples i.e. `s16 samples[]`
    gWaveSamples[8] = (s16*)(((u8*)func_800E4FE0) + (gAudioContext.audioRandom & 0xFFF0));

    index = gAudioContext.rspTaskIndex;
    gAudioContext.curTask->msgQueue = NULL;
    gAudioContext.curTask->unk_44 = NULL;

    task = &gAudioContext.curTask->task.t;
    task->type = M_AUDTASK;
    task->flags = 0;
    task->ucode_boot = aspMainTextStart;
    task->ucode_boot_size = SP_UCODE_SIZE;
    task->ucode_data_size = (size_t)(aspMainDataEnd - aspMainDataStart) * sizeof(u64) - 1;
    task->ucode = aspMainTextStart;
    task->ucode_data = aspMainDataStart;
    task->ucode_size = SP_UCODE_SIZE;
    task->dram_stack = NULL;
    task->dram_stack_size = 0;
    task->output_buff = NULL;
    task->output_buff_size = NULL;
    if (1) {}
    task->data_ptr = (u64*)gAudioContext.abiCmdBufs[index];
    task->data_size = abiCmdCnt * sizeof(Acmd);
    task->yield_data_ptr = NULL;
    task->yield_data_size = 0;

    if (sMaxAbiCmdCnt < abiCmdCnt) {
        sMaxAbiCmdCnt = abiCmdCnt;
    }

    if (gAudioContext.audioBufferParameters.specUnk4 == 1) {
        return gAudioContext.curTask;
    } else {
        sWaitingAudioTask = gAudioContext.curTask;
        return NULL;
    }
}

#define ACMD_SND_MDE ((u32)0xF0000000)
#define ACMD_MUTE ((u32)0xF1000000)

void Audio_ProcessGlobalThreadCmd(AudioCmd* cmd) {
    s32 i;
    s32 pad;
    s32 pad2;
    u32 temp_a1_5;
    u32 flags;

    switch (cmd->op) {
        case AUDIOCMD_OP_GLOBAL_SYNC_LOAD_SEQ_PARTS:
            AudioLoad_SyncLoadSeqParts(cmd->arg1, cmd->arg2);
            break;

        case AUDIOCMD_OP_GLOBAL_SYNC_INIT_SEQPLAYER:
            AudioLoad_SyncInitSeqPlayer(cmd->arg0, cmd->arg1, cmd->arg2);
            func_800E59AC(cmd->arg0, cmd->asInt);
            break;

        case AUDIOCMD_OP_GLOBAL_SYNC_INIT_SEQPLAYER_SKIP_TICKS:
            AudioLoad_SyncInitSeqPlayerSkipTicks(cmd->arg0, cmd->arg1, cmd->asInt);
            break;

        case AUDIOCMD_OP_GLOBAL_DISABLE_SEQPLAYER:
            if (gAudioContext.seqPlayers[cmd->arg0].enabled) {
                if (cmd->asInt == 0) {
                    AudioSeq_SequencePlayerDisableAsFinished(&gAudioContext.seqPlayers[cmd->arg0]);
                } else {
                    func_800E5958(cmd->arg0, cmd->asInt);
                }
            }
            break;

        case AUDIOCMD_OP_GLOBAL_SET_SOUND_MODE:
            gAudioContext.soundMode = cmd->asUInt;
            break;

        case AUDIOCMD_OP_GLOBAL_MUTE:
            for (i = 0; i < gAudioContext.audioBufferParameters.numSequencePlayers; i++) {
                SequencePlayer* seqPlayer = &gAudioContext.seqPlayers[i];

                seqPlayer->muted = 1;
                seqPlayer->recalculateVolume = 1;
            }
            break;

        case AUDIOCMD_OP_GLOBAL_UNMUTE:
            if (cmd->asUInt == 1) {
                for (i = 0; i < gAudioContext.numNotes; i++) {
                    Note* note = &gAudioContext.notes[i];
                    NoteSubEu* subEu = &note->noteSubEu;

                    if (subEu->bitField0.enabled && note->playbackState.unk_04 == 0) {
                        if (note->playbackState.parentLayer->channel->muteBehavior & MUTE_BEHAVIOR_3) {
                            subEu->bitField0.finished = true;
                        }
                    }
                }
            }

            for (i = 0; i < gAudioContext.audioBufferParameters.numSequencePlayers; i++) {
                SequencePlayer* seqPlayer = &gAudioContext.seqPlayers[i];

                seqPlayer->muted = 0;
                seqPlayer->recalculateVolume = 1;
            }
            break;

        case AUDIOCMD_OP_GLOBAL_SYNC_LOAD_INSTRUMENT:
            AudioLoad_SyncLoadInstrument(cmd->arg0, cmd->arg1, cmd->arg2);
            break;

        case AUDIOCMD_OP_GLOBAL_ASYNC_LOAD_SAMPLE_BANK:
            AudioLoad_AsyncLoadSampleBank(cmd->arg0, cmd->arg1, cmd->arg2, &gAudioContext.externalLoadQueue);
            break;

        case AUDIOCMD_OP_GLOBAL_ASYNC_LOAD_FONT:
            AudioLoad_AsyncLoadFont(cmd->arg0, cmd->arg1, cmd->arg2, &gAudioContext.externalLoadQueue);
            break;

        case AUDIOCMD_OP_GLOBAL_ASYNC_LOAD_SEQ:
            AudioLoad_AsyncLoadSeq(cmd->arg0, cmd->arg1, cmd->arg2, &gAudioContext.externalLoadQueue);
            break;

        case AUDIOCMD_OP_GLOBAL_DISCARD_SEQ_FONTS:
            AudioLoad_DiscardSeqFonts(cmd->arg1);
            break;

        case AUDIOCMD_OP_GLOBAL_SET_ACTIVE_CHANNEL_FLAGS:
            gAudioContext.unk_5BDC[cmd->arg0] = cmd->asUShort;
            break;

        case AUDIOCMD_OP_GLOBAL_RESET_AUDIO_HEAP:
            gAudioContext.resetStatus = 5;
            gAudioContext.audioResetSpecIdToLoad = cmd->asUInt;
            break;

        case AUDIOCMD_OP_GLOBAL_SET_CUSTOM_UPDATE_FUNCTION:
            gCustomAudioUpdateFunction = (void (*)(void))cmd->asUInt;
            break;

        case AUDIOCMD_OP_GLOBAL_SET_DRUM_FONT:
        case AUDIOCMD_OP_GLOBAL_SET_SFX_FONT:
        case AUDIOCMD_OP_GLOBAL_SET_INSTRUMENT_FONT:
            Audio_SetFontInstrument(cmd->op - 0xE0, cmd->arg0, cmd->arg1, cmd->data);
            break;

        case AUDIOCMD_OP_GLOBAL_DISABLE_ALL_SEQPLAYERS:
            flags = cmd->asUInt;
            if (flags == 1) {
                for (i = 0; i < gAudioContext.audioBufferParameters.numSequencePlayers; i++) {
                    SequencePlayer* seqPlayer = &gAudioContext.seqPlayers[i];

                    if (seqPlayer->enabled) {
                        AudioSeq_SequencePlayerDisableAsFinished(seqPlayer);
                    }
                }
            }
            func_800E66C0(flags);
            break;

        case AUDIOCMD_OP_GLOBAL_POP_PERSISTENT_CACHE:
            AudioHeap_PopPersistentCache(cmd->asInt);
            break;

        default:
            break;
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
    osCreateMesgQueue(gAudioContext.taskStartQueueP, gAudioContext.taskStartMsgBuf,
                      ARRAY_COUNT(gAudioContext.taskStartMsgBuf));
    osCreateMesgQueue(gAudioContext.cmdProcQueueP, gAudioContext.cmdProcMsgBuf,
                      ARRAY_COUNT(gAudioContext.cmdProcMsgBuf));
    osCreateMesgQueue(gAudioContext.audioResetQueueP, gAudioContext.audioResetMsgBuf,
                      ARRAY_COUNT(gAudioContext.audioResetMsgBuf));
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
    Audio_QueueCmd(opArgs, (void**)&data);
}

void Audio_QueueCmdS32(u32 opArgs, s32 data) {
    Audio_QueueCmd(opArgs, (void**)&data);
}

void Audio_QueueCmdS8(u32 opArgs, s8 data) {
    u32 uData = data << 0x18;

    Audio_QueueCmd(opArgs, (void**)&uData);
}

void Audio_QueueCmdU16(u32 opArgs, u16 data) {
    u32 uData = data << 0x10;

    Audio_QueueCmd(opArgs, (void**)&uData);
}

s32 Audio_ScheduleProcessCmds(void) {
    static s32 D_801304E8 = 0;
    s32 ret;

    if (D_801304E8 < (u8)((gAudioContext.cmdWrPos - gAudioContext.cmdRdPos) + 0x100)) {
        D_801304E8 = (u8)((gAudioContext.cmdWrPos - gAudioContext.cmdRdPos) + 0x100);
    }

    ret =
        osSendMesg(gAudioContext.cmdProcQueueP,
                   (OSMesg)(((gAudioContext.cmdRdPos & 0xFF) << 8) | (gAudioContext.cmdWrPos & 0xFF)), OS_MESG_NOBLOCK);
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
        Audio_ProcessGlobalThreadCmd(cmd);
        return;
    }

    if (cmd->arg0 < gAudioContext.audioBufferParameters.numSequencePlayers) {
        seqPlayer = &gAudioContext.seqPlayers[cmd->arg0];
        if (cmd->op & 0x80) {
            Audio_ProcessGlobalThreadCmd(cmd);
            return;
        }
        if (cmd->op & 0x40) {
            Audio_ProcessSeqPlayerThreadCmd(seqPlayer, cmd);
            return;
        }

        if (cmd->arg1 < 0x10) {
            Audio_ProcessChannelThreadCmd(seqPlayer->channels[cmd->arg1], cmd);
            return;
        }
        if (cmd->arg1 == 0xFF) {
            phi_v0 = gAudioContext.unk_5BDC[cmd->arg0];
            for (i = 0; i < 16; i++) {
                if (phi_v0 & 1) {
                    Audio_ProcessChannelThreadCmd(seqPlayer->channels[i], cmd);
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
        if (cmd->op == AUDIOCMD_OP_GLOBAL_STOP_AUDIOCMDS) {
            gAudioContext.cmdQueueFinished = true;
            return;
        }

        Audio_ProcessCmd(cmd);
        cmd->op = 0;
    }
}

u32 func_800E5E20(u32* out) {
    u32 sp1C;

    if (osRecvMesg(&gAudioContext.externalLoadQueue, (OSMesg*)&sp1C, OS_MESG_NOBLOCK) == -1) {
        *out = 0;
        return 0;
    }
    *out = sp1C & 0xFFFFFF;
    return sp1C >> 0x18;
}

u8* func_800E5E84(s32 arg0, u32* arg1) {
    return AudioLoad_GetFontsForSequence(arg0, arg1);
}

void Audio_GetSampleBankIdsOfFont(s32 fontId, u32* sampleBankId1, u32* sampleBankId2) {
    *sampleBankId1 = gAudioContext.soundFontList[fontId].sampleBankId1;
    *sampleBankId2 = gAudioContext.soundFontList[fontId].sampleBankId2;
}

s32 func_800E5EDC(void) {
    s32 pad;
    s32 sp18;

    if (osRecvMesg(gAudioContext.audioResetQueueP, (OSMesg*)&sp18, OS_MESG_NOBLOCK) == -1) {
        return 0;
    } else if (gAudioContext.audioResetSpecIdToLoad != sp18) {
        return -1;
    } else {
        return 1;
    }
}

void func_800E5F34(void) {
    // macro?
    // clang-format off
    s32 chk = -1; OSMesg msg; do {} while (osRecvMesg(gAudioContext.audioResetQueueP, &msg, OS_MESG_NOBLOCK) != chk);
    // clang-format on
}

s32 func_800E5F88(s32 specId) {
    s32 resetStatus;
    OSMesg msg;
    s32 pad;

    func_800E5F34();
    resetStatus = gAudioContext.resetStatus;
    if (resetStatus != 0) {
        Audio_ResetCmdQueue();
        if (gAudioContext.audioResetSpecIdToLoad == specId) {
            return -2;
        } else if (resetStatus > 2) {
            gAudioContext.audioResetSpecIdToLoad = specId;
            return -3;
        } else {
            osRecvMesg(gAudioContext.audioResetQueueP, &msg, OS_MESG_BLOCK);
        }
    }

    func_800E5F34();
    AUDIOCMD_GLOBAL_RESET_AUDIO_HEAP(specId);

    return Audio_ScheduleProcessCmds();
}

void Audio_PreNMIInternal(void) {
    gAudioContext.resetTimer = 1;
    if (gAudioContextInitialized) {
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

s8 func_800E60C4(s32 playerIdx, s32 port) {
    return gAudioContext.seqPlayers[playerIdx].soundScriptIO[port];
}

void Audio_InitExternalPool(void* ramAddr, u32 size) {
    AudioHeap_InitPool(&gAudioContext.externalPool, ramAddr, size);
}

void Audio_DestroyExternalPool(void) {
    gAudioContext.externalPool.startRamAddr = NULL;
}

void Audio_ProcessSeqPlayerThreadCmd(SequencePlayer* seqPlayer, AudioCmd* cmd) {
    f32 fadeVolume;

    switch (cmd->op) {
        case AUDIOCMD_OP_SEQPLAYER_FADE_VOLUME_SCALE:
            if (seqPlayer->fadeVolumeScale != cmd->asFloat) {
                seqPlayer->fadeVolumeScale = cmd->asFloat;
                seqPlayer->recalculateVolume = 1;
            }
            break;

        case AUDIOCMD_OP_SEQPLAYER_SET_TEMPO:
            seqPlayer->tempo = cmd->asInt * TATUMS_PER_BEAT;
            break;

        case AUDIOCMD_OP_SEQPLAYER_CHANGE_TEMPO:
            seqPlayer->unk_0C = cmd->asInt * TATUMS_PER_BEAT;
            break;

        case AUDIOCMD_OP_SEQPLAYER_CHANGE_TATUM_TEMPO:
            seqPlayer->unk_0C = cmd->asInt;
            break;

        case AUDIOCMD_OP_SEQPLAYER_SET_TRANSPOSITION:
            seqPlayer->transposition = cmd->asSbyte;
            break;

        case AUDIOCMD_OP_SEQPLAYER_SET_IO:
            seqPlayer->soundScriptIO[cmd->arg2] = cmd->asSbyte;
            break;

        case AUDIOCMD_OP_SEQPLAYER_SET_FADE_VOLUME:
            fadeVolume = (s32)cmd->arg1 / 127.0f;
            goto block_11;

        case AUDIOCMD_OP_SEQPLAYER_SCALE_FADE_VOLUME:
            fadeVolume = ((s32)cmd->arg1 / 100.0f) * seqPlayer->fadeVolume;
        block_11:
            if (seqPlayer->state != 2) {
                seqPlayer->volume = seqPlayer->fadeVolume;
                if (cmd->asInt == 0) {
                    seqPlayer->fadeVolume = fadeVolume;
                } else {
                    s32 fadeTimer = cmd->asInt;

                    seqPlayer->state = 0;
                    seqPlayer->fadeTimer = fadeTimer;
                    seqPlayer->fadeVelocity = (fadeVolume - seqPlayer->fadeVolume) / fadeTimer;
                }
            }
            break;

        case AUDIOCMD_OP_SEQPLAYER_SET_FADE_TIMER:
            if (seqPlayer->state != 2) {
                if (cmd->asInt == 0) {
                    seqPlayer->fadeVolume = seqPlayer->volume;
                } else {
                    s32 fadeTimer = cmd->asInt;

                    seqPlayer->state = 0;
                    seqPlayer->fadeTimer = fadeTimer;
                    seqPlayer->fadeVelocity = (seqPlayer->volume - seqPlayer->fadeVolume) / fadeTimer;
                }
            }
            break;

        case AUDIOCMD_OP_SEQPLAYER_SET_BEND:
            seqPlayer->bend = cmd->asFloat;
            if (seqPlayer->bend == 1.0f) {
                seqPlayer->applyBend = false;
            } else {
                seqPlayer->applyBend = true;
            }
            break;

        default:
            break;
    }
}

void Audio_ProcessChannelThreadCmd(SequenceChannel* channel, AudioCmd* cmd) {
    switch (cmd->op) {
        case AUDIOCMD_OP_CHANNEL_VOL_SCALE:
            if (channel->volumeScale != cmd->asFloat) {
                channel->volumeScale = cmd->asFloat;
                channel->changes.s.volume = 1;
            }
            break;

        case AUDIOCMD_OP_CHANNEL_VOL:
            if (channel->volume != cmd->asFloat) {
                channel->volume = cmd->asFloat;
                channel->changes.s.volume = 1;
            }
            break;

        case AUDIOCMD_OP_CHANNEL_PAN_SIGNED:
            if (channel->newPan != cmd->asSbyte) {
                channel->newPan = cmd->asSbyte;
                channel->changes.s.pan = 1;
            }
            break;

        case AUDIOCMD_OP_CHANNEL_PAN_UNSIGNED:
            if (channel->newPan != cmd->asSbyte) {
                channel->panChannelWeight = cmd->asSbyte;
                channel->changes.s.pan = 1;
            }
            break;

        case AUDIOCMD_OP_CHANNEL_FREQ_SCALE:
            if (channel->freqScale != cmd->asFloat) {
                channel->freqScale = cmd->asFloat;
                channel->changes.s.freqScale = 1;
            }
            break;

        case AUDIOCMD_OP_CHANNEL_REVERB_VOLUME:
            if (channel->reverb != cmd->asSbyte) {
                channel->reverb = cmd->asSbyte;
            }
            break;

        case AUDIOCMD_OP_CHANNEL_IO:
            if (cmd->arg2 < 8) {
                channel->soundScriptIO[cmd->arg2] = cmd->asSbyte;
            }
            break;

        case AUDIOCMD_OP_CHANNEL_MUTE:
            channel->muted = cmd->asSbyte;
            break;

        case AUDIOCMD_OP_CHANNEL_MUTE_BEHAVIOR:
            channel->muteBehavior = cmd->asSbyte;
            break;

        case AUDIOCMD_OP_CHANNEL_VIBRATO_SMALL:
            channel->vibratoExtentTarget = cmd->asUbyte * 8;
            channel->vibratoExtentChangeDelay = 1;
            break;

        case AUDIOCMD_OP_CHANNEL_VIBRATO_LARGE:
            channel->vibratoRateTarget = cmd->asUbyte * 32;
            channel->vibratoRateChangeDelay = 1;
            break;

        case AUDIOCMD_OP_CHANNEL_COMB_FILTER_SIZE:
            channel->combFilterSize = cmd->asUbyte;
            break;

        case AUDIOCMD_OP_CHANNEL_COMB_FILTER_GAIN:
            channel->combFilterGain = cmd->asUShort;
            break;

        case AUDIOCMD_OP_CHANNEL_STEREO:
            channel->stereo.asByte = cmd->asUbyte;
            break;

        default:
            break;
    }
}

/**
 * Call an audio-thread command that has no code to process it. Unused.
 */
void func_800E64B0(s32 arg0, s32 arg1, s32 arg2) {
    AUDIOCMD_GLOBAL_NOOP_1(arg0, arg1, arg2, 1);
}

/**
 * Call an audio-thread command that has no code to process it. Unused.
 */
void func_800E64F8(void) {
    AUDIOCMD_GLOBAL_NOOP_1(0, 0, 0, 0);
}

/**
 * Call an audio-thread command that has no code to process it. Unused.
 */
void func_800E651C(u32 arg0, s32 arg1) {
    AUDIOCMD_GLOBAL_NOOP_2(0, 0, arg1, arg0);
}

void Audio_WaitForAudioTask(void) {
    osRecvMesg(gAudioContext.taskStartQueueP, NULL, OS_MESG_NOBLOCK);
    osRecvMesg(gAudioContext.taskStartQueueP, NULL, OS_MESG_BLOCK);
}

s32 func_800E6590(s32 playerIdx, s32 arg1, s32 arg2) {
    SequencePlayer* seqPlayer;
    SequenceLayer* layer;
    Note* note;
    TunedSample* tunedSample;
    s32 loopEnd;
    s32 samplePos;

    seqPlayer = &gAudioContext.seqPlayers[playerIdx];
    if (seqPlayer->enabled && seqPlayer->channels[arg1]->enabled) {
        layer = seqPlayer->channels[arg1]->layers[arg2];
        if (layer == NULL) {
            return 0;
        }

        if (layer->enabled) {
            if (layer->note == NULL) {
                return 0;
            }

            if (!layer->bit3) {
                return 0;
            }

            note = layer->note;
            if (layer == note->playbackState.parentLayer) {
                tunedSample = note->noteSubEu.tunedSample;
                if (tunedSample == NULL) {
                    return 0;
                }
                loopEnd = tunedSample->sample->loop->end;
                samplePos = note->synthesisState.samplePosInt;
                return loopEnd - samplePos;
            }
            return 0;
        }
    }
    return 0;
}

s32 func_800E6680(void) {
    return func_800E66C0(0);
}

void func_800E66A0(void) {
    func_800E66C0(2);
}

s32 func_800E66C0(s32 arg0) {
    s32 phi_v1;
    NotePlaybackState* playbackState;
    NoteSubEu* noteSubEu;
    s32 i;
    Note* note;
    TunedSample* tunedSample;

    phi_v1 = 0;
    for (i = 0; i < gAudioContext.numNotes; i++) {
        note = &gAudioContext.notes[i];
        playbackState = &note->playbackState;
        if (note->noteSubEu.bitField0.enabled) {
            noteSubEu = &note->noteSubEu;
            if (playbackState->adsr.action.s.state != 0) {
                if (arg0 >= 2) {
                    tunedSample = noteSubEu->tunedSample;
                    if (tunedSample == NULL || noteSubEu->bitField1.isSyntheticWave) {
                        continue;
                    }
                    if (tunedSample->sample->medium == MEDIUM_RAM) {
                        continue;
                    }
                }

                phi_v1++;
                if ((arg0 & 1) == 1) {
                    playbackState->adsr.fadeOutVel = gAudioContext.audioBufferParameters.updatesPerFrameInv;
                    playbackState->adsr.action.s.release = 1;
                }
            }
        }
    }
    return phi_v1;
}

u32 Audio_NextRandom(void) {
    static u32 audRand = 0x12345678;

    audRand = ((osGetCount() + 0x1234567) * (audRand + gAudioContext.totalTaskCount));
    audRand += gAudioContext.audioRandom;
    return audRand;
}

void Audio_InitMesgQueues(void) {
    Audio_InitMesgQueuesInternal();
}
