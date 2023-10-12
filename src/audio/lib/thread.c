#include "global.h"

#define SAMPLES_TO_OVERPRODUCE 0x10
#define EXTRA_BUFFERED_AI_SAMPLES_TARGET 0x80

AudioTask* AudioThread_UpdateImpl(void);
void AudioThread_SetFadeInTimer(s32 seqPlayerIndex, s32 fadeTimer);
void AudioThread_SetFadeOutTimer(s32 seqPlayerIndex, s32 fadeTimer);
void AudioThread_ProcessCmds(u32);
void AudioThread_ProcessSeqPlayerCmd(SequencePlayer* seqPlayer, AudioCmd* cmd);
void AudioThread_ProcessChannelCmd(SequenceChannel* channel, AudioCmd* cmd);
s32 func_800E66C0(s32 flags);

// AudioMgr_Retrace
AudioTask* AudioThread_Update(void) {
    return AudioThread_UpdateImpl();
}

/**
 * This is Audio_Update for the audio thread
 */
AudioTask* AudioThread_UpdateImpl(void) {
    static s32 sMaxAbiCmdCnt = 0x80;
    static AudioTask* sWaitingAudioTask = NULL;
    u32 samplesRemainingInAi;
    s32 abiCmdCnt;
    s32 pad;
    s32 j;
    s32 sp5C;
    s16* curAiBuffer;
    OSTask_t* task;
    s32 index;
    u32 sp4C;
    s32 sp48;
    s32 i;

    gAudioCtx.totalTaskCount++;
    if (gAudioCtx.totalTaskCount % (gAudioCtx.audioBufferParameters.specUnk4) != 0) {
        if (gAudioCustomUpdateFunction != NULL) {
            gAudioCustomUpdateFunction();
        }

        if ((gAudioCtx.totalTaskCount % gAudioCtx.audioBufferParameters.specUnk4) + 1 ==
            gAudioCtx.audioBufferParameters.specUnk4) {
            return sWaitingAudioTask;
        } else {
            return NULL;
        }
    }

    osSendMesg(gAudioCtx.taskStartQueueP, (OSMesg)gAudioCtx.totalTaskCount, OS_MESG_NOBLOCK);
    gAudioCtx.rspTaskIndex ^= 1;
    gAudioCtx.curAiBufIndex++;
    gAudioCtx.curAiBufIndex %= 3;
    index = (gAudioCtx.curAiBufIndex - 2 + 3) % 3;
    samplesRemainingInAi = osAiGetLength() / 4;

    if (gAudioCtx.resetTimer < 16) {
        if (gAudioCtx.aiBufLengths[index] != 0) {
            osAiSetNextBuffer(gAudioCtx.aiBuffers[index], gAudioCtx.aiBufLengths[index] * 4);
            if (gAudioCtx.aiBuffers[index]) {}
            if (gAudioCtx.aiBufLengths[index]) {}
        }
    }

    if (gAudioCustomUpdateFunction != NULL) {
        gAudioCustomUpdateFunction();
    }

    sp5C = gAudioCtx.curAudioFrameDmaCount;
    for (i = 0; i < gAudioCtx.curAudioFrameDmaCount; i++) {
        if (osRecvMesg(&gAudioCtx.curAudioFrameDmaQueue, NULL, OS_MESG_NOBLOCK) == 0) {
            sp5C--;
        }
    }

    if (sp5C != 0) {
        for (i = 0; i < sp5C; i++) {
            osRecvMesg(&gAudioCtx.curAudioFrameDmaQueue, NULL, OS_MESG_BLOCK);
        }
    }

    sp48 = MQ_GET_COUNT(&gAudioCtx.curAudioFrameDmaQueue);
    if (sp48 != 0) {
        for (i = 0; i < sp48; i++) {
            osRecvMesg(&gAudioCtx.curAudioFrameDmaQueue, NULL, OS_MESG_NOBLOCK);
        }
    }

    gAudioCtx.curAudioFrameDmaCount = 0;
    AudioLoad_DecreaseSampleDmaTtls();
    AudioLoad_ProcessLoads(gAudioCtx.resetStatus);
    AudioLoad_ProcessScriptLoads();

    if (gAudioCtx.resetStatus != 0) {
        if (AudioHeap_ResetStep() == 0) {
            if (gAudioCtx.resetStatus == 0) {
                osSendMesg(gAudioCtx.audioResetQueueP, (OSMesg)(u32)gAudioCtx.specId, OS_MESG_NOBLOCK);
            }

            sWaitingAudioTask = NULL;
            return NULL;
        }
    }

    if (gAudioCtx.resetTimer > 16) {
        return NULL;
    }
    if (gAudioCtx.resetTimer != 0) {
        gAudioCtx.resetTimer++;
    }

    gAudioCtx.curTask = &gAudioCtx.rspTask[gAudioCtx.rspTaskIndex];
    gAudioCtx.curAbiCmdBuf = gAudioCtx.abiCmdBufs[gAudioCtx.rspTaskIndex];

    index = gAudioCtx.curAiBufIndex;
    curAiBuffer = gAudioCtx.aiBuffers[index];

    gAudioCtx.aiBufLengths[index] =
        (s16)((((gAudioCtx.audioBufferParameters.samplesPerFrameTarget - samplesRemainingInAi) +
                EXTRA_BUFFERED_AI_SAMPLES_TARGET) &
               ~0xF) +
              SAMPLES_TO_OVERPRODUCE);
    if (gAudioCtx.aiBufLengths[index] < gAudioCtx.audioBufferParameters.minAiBufferLength) {
        gAudioCtx.aiBufLengths[index] = gAudioCtx.audioBufferParameters.minAiBufferLength;
    }

    if (gAudioCtx.aiBufLengths[index] > gAudioCtx.audioBufferParameters.maxAiBufferLength) {
        gAudioCtx.aiBufLengths[index] = gAudioCtx.audioBufferParameters.maxAiBufferLength;
    }

    j = 0;
    if (gAudioCtx.resetStatus == 0) {
        // msg = 0000RREE R = read pos, E = End Pos
        while (osRecvMesg(gAudioCtx.threadCmdProcQueueP, (OSMesg*)&sp4C, OS_MESG_NOBLOCK) != -1) {
            if (1) {}
            AudioThread_ProcessCmds(sp4C);
            j++;
        }
        if ((j == 0) && (gAudioCtx.threadCmdQueueFinished)) {
            AudioThread_ScheduleProcessCmds();
        }
    }

    gAudioCtx.curAbiCmdBuf =
        AudioSynth_Update(gAudioCtx.curAbiCmdBuf, &abiCmdCnt, curAiBuffer, gAudioCtx.aiBufLengths[index]);

    // Update audioRandom to the next random number
    gAudioCtx.audioRandom = (gAudioCtx.audioRandom + gAudioCtx.totalTaskCount) * osGetCount();
    gAudioCtx.audioRandom = gAudioCtx.audioRandom + gAudioCtx.aiBuffers[index][gAudioCtx.totalTaskCount & 0xFF];

    // gWaveSamples[8] interprets compiled assembly code as s16 samples as a way to generate sound with noise.
    // Start with the address of AudioThread_Update, and offset it by a random number between 0 - 0xFFF0
    // Use the resulting address as the starting address to interpret an array of samples i.e. `s16 samples[]`
    gWaveSamples[8] = (s16*)((u8*)AudioThread_Update + (gAudioCtx.audioRandom & 0xFFF0));

    index = gAudioCtx.rspTaskIndex;
    gAudioCtx.curTask->msgQueue = NULL;
    gAudioCtx.curTask->unk_44 = NULL;

    task = &gAudioCtx.curTask->task.t;
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
    task->data_ptr = (u64*)gAudioCtx.abiCmdBufs[index];
    task->data_size = abiCmdCnt * sizeof(Acmd);
    task->yield_data_ptr = NULL;
    task->yield_data_size = 0;

    if (sMaxAbiCmdCnt < abiCmdCnt) {
        sMaxAbiCmdCnt = abiCmdCnt;
    }

    if (gAudioCtx.audioBufferParameters.specUnk4 == 1) {
        return gAudioCtx.curTask;
    } else {
        sWaitingAudioTask = gAudioCtx.curTask;
        return NULL;
    }
}

void AudioThread_ProcessGlobalCmd(AudioCmd* cmd) {
    s32 i;
    s32 pad[3];
    u32 flags;

    switch (cmd->op) {
        case AUDIOCMD_OP_GLOBAL_SYNC_LOAD_SEQ_PARTS:
            AudioLoad_SyncLoadSeqParts(cmd->arg1, cmd->arg2);
            break;

        case AUDIOCMD_OP_GLOBAL_INIT_SEQPLAYER:
            AudioLoad_SyncInitSeqPlayer(cmd->arg0, cmd->arg1, cmd->arg2);
            AudioThread_SetFadeInTimer(cmd->arg0, cmd->asInt);
            break;

        case AUDIOCMD_OP_GLOBAL_INIT_SEQPLAYER_SKIP_TICKS:
            AudioLoad_SyncInitSeqPlayerSkipTicks(cmd->arg0, cmd->arg1, cmd->asInt);
            break;

        case AUDIOCMD_OP_GLOBAL_DISABLE_SEQPLAYER:
            if (gAudioCtx.seqPlayers[cmd->arg0].enabled) {
                if (cmd->asInt == 0) {
                    AudioSeq_SequencePlayerDisableAsFinished(&gAudioCtx.seqPlayers[cmd->arg0]);
                } else {
                    AudioThread_SetFadeOutTimer(cmd->arg0, cmd->asInt);
                }
            }
            break;

        case AUDIOCMD_OP_GLOBAL_SET_SOUND_MODE:
            gAudioCtx.soundMode = cmd->asUInt;
            break;

        case AUDIOCMD_OP_GLOBAL_MUTE:
            for (i = 0; i < gAudioCtx.audioBufferParameters.numSequencePlayers; i++) {
                SequencePlayer* seqPlayer = &gAudioCtx.seqPlayers[i];

                seqPlayer->muted = true;
                seqPlayer->recalculateVolume = true;
            }
            break;

        case AUDIOCMD_OP_GLOBAL_UNMUTE:
            if (cmd->asUInt == 1) {
                for (i = 0; i < gAudioCtx.numNotes; i++) {
                    Note* note = &gAudioCtx.notes[i];
                    NoteSubEu* subEu = &note->noteSubEu;

                    if (subEu->bitField0.enabled && (note->playbackState.unk_04 == 0) &&
                        (note->playbackState.parentLayer->channel->muteBehavior & MUTE_BEHAVIOR_3)) {
                        subEu->bitField0.finished = true;
                    }
                }
            }

            for (i = 0; i < gAudioCtx.audioBufferParameters.numSequencePlayers; i++) {
                SequencePlayer* seqPlayer = &gAudioCtx.seqPlayers[i];

                seqPlayer->muted = false;
                seqPlayer->recalculateVolume = true;
            }
            break;

        case AUDIOCMD_OP_GLOBAL_SYNC_LOAD_INSTRUMENT:
            AudioLoad_SyncLoadInstrument(cmd->arg0, cmd->arg1, cmd->arg2);
            break;

        case AUDIOCMD_OP_GLOBAL_ASYNC_LOAD_SAMPLE_BANK:
            AudioLoad_AsyncLoadSampleBank(cmd->arg0, cmd->arg1, cmd->arg2, &gAudioCtx.externalLoadQueue);
            break;

        case AUDIOCMD_OP_GLOBAL_ASYNC_LOAD_FONT:
            AudioLoad_AsyncLoadFont(cmd->arg0, cmd->arg1, cmd->arg2, &gAudioCtx.externalLoadQueue);
            break;

        case AUDIOCMD_OP_GLOBAL_ASYNC_LOAD_SEQ:
            AudioLoad_AsyncLoadSeq(cmd->arg0, cmd->arg1, cmd->arg2, &gAudioCtx.externalLoadQueue);
            break;

        case AUDIOCMD_OP_GLOBAL_DISCARD_SEQ_FONTS:
            AudioLoad_DiscardSeqFonts(cmd->arg1);
            break;

        case AUDIOCMD_OP_GLOBAL_SET_CHANNEL_MASK:
            gAudioCtx.threadCmdChannelMask[cmd->arg0] = cmd->asUShort;
            break;

        case AUDIOCMD_OP_GLOBAL_RESET_AUDIO_HEAP:
            gAudioCtx.resetStatus = 5;
            gAudioCtx.specId = cmd->asUInt;
            break;

        case AUDIOCMD_OP_GLOBAL_SET_CUSTOM_UPDATE_FUNCTION:
            gAudioCustomUpdateFunction = (AudioCustomUpdateFunction)cmd->asUInt;
            break;

        case AUDIOCMD_OP_GLOBAL_SET_DRUM_FONT:
        case AUDIOCMD_OP_GLOBAL_SET_SFX_FONT:
        case AUDIOCMD_OP_GLOBAL_SET_INSTRUMENT_FONT:
            Audio_SetFontInstrument(cmd->op - AUDIOCMD_OP_GLOBAL_SET_DRUM_FONT, cmd->arg0, cmd->arg1, cmd->data);
            break;

        case AUDIOCMD_OP_GLOBAL_DISABLE_ALL_SEQPLAYERS:
            flags = cmd->asUInt;
            if (flags == 1) {
                for (i = 0; i < gAudioCtx.audioBufferParameters.numSequencePlayers; i++) {
                    SequencePlayer* seqPlayer = &gAudioCtx.seqPlayers[i];

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

void AudioThread_SetFadeOutTimer(s32 seqPlayerIndex, s32 fadeTimer) {
    SequencePlayer* seqPlayer = &gAudioCtx.seqPlayers[seqPlayerIndex];

    if (fadeTimer == 0) {
        fadeTimer = 1;
    }

    seqPlayer->fadeVelocity = -(seqPlayer->fadeVolume / fadeTimer);
    seqPlayer->state = 2;
    seqPlayer->fadeTimer = fadeTimer;
}

void AudioThread_SetFadeInTimer(s32 seqPlayerIndex, s32 fadeTimer) {
    SequencePlayer* seqPlayer;

    if (fadeTimer != 0) {
        seqPlayer = &gAudioCtx.seqPlayers[seqPlayerIndex];
        seqPlayer->state = 1;
        seqPlayer->fadeTimerUnkEu = fadeTimer;
        seqPlayer->fadeTimer = fadeTimer;
        seqPlayer->fadeVolume = 0.0f;
        seqPlayer->fadeVelocity = 0.0f;
    }
}

void AudioThread_InitMesgQueuesImpl(void) {
    gAudioCtx.threadCmdWritePos = 0;
    gAudioCtx.threadCmdReadPos = 0;
    gAudioCtx.threadCmdQueueFinished = false;

    gAudioCtx.taskStartQueueP = &gAudioCtx.taskStartQueue;
    gAudioCtx.threadCmdProcQueueP = &gAudioCtx.threadCmdProcQueue;
    gAudioCtx.audioResetQueueP = &gAudioCtx.audioResetQueue;

    osCreateMesgQueue(gAudioCtx.taskStartQueueP, gAudioCtx.taskStartMsgBuf, ARRAY_COUNT(gAudioCtx.taskStartMsgBuf));
    osCreateMesgQueue(gAudioCtx.threadCmdProcQueueP, gAudioCtx.threadCmdProcMsgBuf,
                      ARRAY_COUNT(gAudioCtx.threadCmdProcMsgBuf));
    osCreateMesgQueue(gAudioCtx.audioResetQueueP, gAudioCtx.audioResetMsgBuf, ARRAY_COUNT(gAudioCtx.audioResetMsgBuf));
}

void AudioThread_QueueCmd(u32 opArgs, void** data) {
    AudioCmd* cmd = &gAudioCtx.threadCmdBuf[gAudioCtx.threadCmdWritePos & 0xFF];

    cmd->opArgs = opArgs;
    cmd->data = *data;

    gAudioCtx.threadCmdWritePos++;

    if (gAudioCtx.threadCmdWritePos == gAudioCtx.threadCmdReadPos) {
        gAudioCtx.threadCmdWritePos--;
    }
}

void AudioThread_QueueCmdF32(u32 opArgs, f32 data) {
    AudioThread_QueueCmd(opArgs, (void**)&data);
}

void AudioThread_QueueCmdS32(u32 opArgs, s32 data) {
    AudioThread_QueueCmd(opArgs, (void**)&data);
}

void AudioThread_QueueCmdS8(u32 opArgs, s8 data) {
    u32 uData = data << 0x18;

    AudioThread_QueueCmd(opArgs, (void**)&uData);
}

void AudioThread_QueueCmdU16(u32 opArgs, u16 data) {
    u32 uData = data << 0x10;

    AudioThread_QueueCmd(opArgs, (void**)&uData);
}

s32 AudioThread_ScheduleProcessCmds(void) {
    static s32 D_801304E8 = 0;
    s32 ret;

    if (D_801304E8 < (u8)((gAudioCtx.threadCmdWritePos - gAudioCtx.threadCmdReadPos) + 0x100)) {
        D_801304E8 = (u8)((gAudioCtx.threadCmdWritePos - gAudioCtx.threadCmdReadPos) + 0x100);
    }

    ret = osSendMesg(gAudioCtx.threadCmdProcQueueP,
                     (OSMesg)(((gAudioCtx.threadCmdReadPos & 0xFF) << 8) | (gAudioCtx.threadCmdWritePos & 0xFF)),
                     OS_MESG_NOBLOCK);
    if (ret != -1) {
        gAudioCtx.threadCmdReadPos = gAudioCtx.threadCmdWritePos;
        ret = 0;
    } else {
        return -1;
    }

    return ret;
}

void AudioThread_ResetCmdQueue(void) {
    gAudioCtx.threadCmdQueueFinished = false;
    gAudioCtx.threadCmdReadPos = gAudioCtx.threadCmdWritePos;
}

void AudioThread_ProcessCmd(AudioCmd* cmd) {
    SequencePlayer* seqPlayer;
    u16 threadCmdChannelMask;
    s32 channelIndex;

    if ((cmd->op & 0xF0) == 0xF0) {
        AudioThread_ProcessGlobalCmd(cmd);
        return;
    }

    if (cmd->arg0 < gAudioCtx.audioBufferParameters.numSequencePlayers) {
        seqPlayer = &gAudioCtx.seqPlayers[cmd->arg0];
        if (cmd->op & 0x80) {
            AudioThread_ProcessGlobalCmd(cmd);
            return;
        }
        if (cmd->op & 0x40) {
            AudioThread_ProcessSeqPlayerCmd(seqPlayer, cmd);
            return;
        }

        if (cmd->arg1 < SEQ_NUM_CHANNELS) {
            AudioThread_ProcessChannelCmd(seqPlayer->channels[cmd->arg1], cmd);
            return;
        }
        if (cmd->arg1 == AUDIOCMD_ALL_CHANNELS) {
            threadCmdChannelMask = gAudioCtx.threadCmdChannelMask[cmd->arg0];
            for (channelIndex = 0; channelIndex < SEQ_NUM_CHANNELS; channelIndex++) {
                if (threadCmdChannelMask & 1) {
                    AudioThread_ProcessChannelCmd(seqPlayer->channels[channelIndex], cmd);
                }
                threadCmdChannelMask = threadCmdChannelMask >> 1;
            }
        }
    }
}

void AudioThread_ProcessCmds(u32 msg) {
    static u8 sCurCmdRdPos = 0;
    AudioCmd* cmd;
    u8 endPos;

    if (!gAudioCtx.threadCmdQueueFinished) {
        sCurCmdRdPos = msg >> 8;
    }

    while (true) {
        endPos = msg & 0xFF;
        if (sCurCmdRdPos == endPos) {
            gAudioCtx.threadCmdQueueFinished = false;
            return;
        }

        cmd = &gAudioCtx.threadCmdBuf[sCurCmdRdPos++ & 0xFF];
        if (cmd->op == AUDIOCMD_OP_GLOBAL_STOP_AUDIOCMDS) {
            gAudioCtx.threadCmdQueueFinished = true;
            return;
        }

        AudioThread_ProcessCmd(cmd);
        cmd->op = AUDIOCMD_OP_NOOP;
    }
}

u32 func_800E5E20(u32* out) {
    u32 sp1C;

    if (osRecvMesg(&gAudioCtx.externalLoadQueue, (OSMesg*)&sp1C, OS_MESG_NOBLOCK) == -1) {
        *out = 0;
        return 0;
    }
    *out = sp1C & 0xFFFFFF;
    return sp1C >> 0x18;
}

u8* AudioThread_GetFontsForSequence(s32 seqId, u32* outNumFonts) {
    return AudioLoad_GetFontsForSequence(seqId, outNumFonts);
}

void Audio_GetSampleBankIdsOfFont(s32 fontId, u32* sampleBankId1, u32* sampleBankId2) {
    *sampleBankId1 = gAudioCtx.soundFontList[fontId].sampleBankId1;
    *sampleBankId2 = gAudioCtx.soundFontList[fontId].sampleBankId2;
}

s32 func_800E5EDC(void) {
    s32 pad;
    s32 specId;

    if (osRecvMesg(gAudioCtx.audioResetQueueP, (OSMesg*)&specId, OS_MESG_NOBLOCK) == -1) {
        return 0;
    } else if (gAudioCtx.specId != specId) {
        return -1;
    } else {
        return 1;
    }
}

void func_800E5F34(void) {
    // macro?
    // clang-format off
    s32 chk = -1; OSMesg msg; do {} while (osRecvMesg(gAudioCtx.audioResetQueueP, &msg, OS_MESG_NOBLOCK) != chk);
    // clang-format on
}

s32 AudioThread_ResetAudioHeap(s32 specId) {
    s32 resetStatus;
    OSMesg msg;
    s32 pad;

    func_800E5F34();
    resetStatus = gAudioCtx.resetStatus;
    if (resetStatus != 0) {
        AudioThread_ResetCmdQueue();
        if (gAudioCtx.specId == specId) {
            return -2;
        } else if (resetStatus > 2) {
            gAudioCtx.specId = specId;
            return -3;
        } else {
            osRecvMesg(gAudioCtx.audioResetQueueP, &msg, OS_MESG_BLOCK);
        }
    }

    func_800E5F34();
    AUDIOCMD_GLOBAL_RESET_AUDIO_HEAP(specId);

    return AudioThread_ScheduleProcessCmds();
}

void AudioThread_PreNMIInternal(void) {
    gAudioCtx.resetTimer = 1;
    if (gAudioContextInitialized) {
        AudioThread_ResetAudioHeap(0);
        gAudioCtx.resetStatus = 0;
    }
}

s8 AudioThread_GetChannelIO(s32 seqPlayerIndex, s32 channelIndex, s32 ioPort) {
    SequencePlayer* seqPlayer = &gAudioCtx.seqPlayers[seqPlayerIndex];
    SequenceChannel* channel;

    if (seqPlayer->enabled) {
        channel = seqPlayer->channels[channelIndex];
        return channel->seqScriptIO[ioPort];
    } else {
        return SEQ_IO_VAL_NONE;
    }
}

s8 AudioThread_GetSeqPlayerIO(s32 seqPlayerIndex, s32 ioPort) {
    return gAudioCtx.seqPlayers[seqPlayerIndex].seqScriptIO[ioPort];
}

void AudioThread_InitExternalPool(void* ramAddr, u32 size) {
    AudioHeap_InitPool(&gAudioCtx.externalPool, ramAddr, size);
}

void AudioThread_ResetExternalPool(void) {
    gAudioCtx.externalPool.startRamAddr = NULL;
}

void AudioThread_ProcessSeqPlayerCmd(SequencePlayer* seqPlayer, AudioCmd* cmd) {
    f32 fadeVolume;

    switch (cmd->op) {
        case AUDIOCMD_OP_SEQPLAYER_FADE_VOLUME_SCALE:
            if (seqPlayer->fadeVolumeScale != cmd->asFloat) {
                seqPlayer->fadeVolumeScale = cmd->asFloat;
                seqPlayer->recalculateVolume = true;
            }
            break;

        case AUDIOCMD_OP_SEQPLAYER_SET_TEMPO:
            seqPlayer->tempo = cmd->asInt * SEQTICKS_PER_BEAT;
            break;

        case AUDIOCMD_OP_SEQPLAYER_CHANGE_TEMPO:
            seqPlayer->tempoChange = cmd->asInt * SEQTICKS_PER_BEAT;
            break;

        case AUDIOCMD_OP_SEQPLAYER_CHANGE_TEMPO_SEQTICKS:
            seqPlayer->tempoChange = cmd->asInt;
            break;

        case AUDIOCMD_OP_SEQPLAYER_SET_TRANSPOSITION:
            seqPlayer->transposition = cmd->asSbyte;
            break;

        case AUDIOCMD_OP_SEQPLAYER_SET_IO:
            seqPlayer->seqScriptIO[cmd->arg2] = cmd->asSbyte;
            break;

        case AUDIOCMD_OP_SEQPLAYER_FADE_TO_SET_VOLUME:
            fadeVolume = (s32)cmd->arg1 / 127.0f;
            goto apply_fade;

        case AUDIOCMD_OP_SEQPLAYER_FADE_TO_SCALED_VOLUME:
            fadeVolume = ((s32)cmd->arg1 / 100.0f) * seqPlayer->fadeVolume;
        apply_fade:
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

        case AUDIOCMD_OP_SEQPLAYER_RESET_VOLUME:
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

void AudioThread_ProcessChannelCmd(SequenceChannel* channel, AudioCmd* cmd) {
    switch (cmd->op) {
        case AUDIOCMD_OP_CHANNEL_SET_VOL_SCALE:
            if (channel->volumeScale != cmd->asFloat) {
                channel->volumeScale = cmd->asFloat;
                channel->changes.s.volume = true;
            }
            break;

        case AUDIOCMD_OP_CHANNEL_SET_VOL:
            if (channel->volume != cmd->asFloat) {
                channel->volume = cmd->asFloat;
                channel->changes.s.volume = true;
            }
            break;

        case AUDIOCMD_OP_CHANNEL_SET_PAN:
            if (channel->newPan != cmd->asSbyte) {
                channel->newPan = cmd->asSbyte;
                channel->changes.s.pan = true;
            }
            break;

        case AUDIOCMD_OP_CHANNEL_SET_PAN_WEIGHT:
            //! @bug: Should compare `asSbyte` to `panChannelWeight`
            if (channel->newPan != cmd->asSbyte) {
                channel->panChannelWeight = cmd->asSbyte;
                channel->changes.s.pan = true;
            }
            break;

        case AUDIOCMD_OP_CHANNEL_SET_FREQ_SCALE:
            if (channel->freqScale != cmd->asFloat) {
                channel->freqScale = cmd->asFloat;
                channel->changes.s.freqScale = true;
            }
            break;

        case AUDIOCMD_OP_CHANNEL_SET_REVERB_VOLUME:
            if (channel->targetReverbVol != cmd->asSbyte) {
                channel->targetReverbVol = cmd->asSbyte;
            }
            break;

        case AUDIOCMD_OP_CHANNEL_SET_IO:
            if (cmd->arg2 < ARRAY_COUNT(channel->seqScriptIO)) {
                channel->seqScriptIO[cmd->arg2] = cmd->asSbyte;
            }
            break;

        case AUDIOCMD_OP_CHANNEL_SET_MUTE:
            channel->muted = cmd->asSbyte;
            break;

        case AUDIOCMD_OP_CHANNEL_SET_MUTE_BEHAVIOR:
            channel->muteBehavior = cmd->asSbyte;
            break;

        case AUDIOCMD_OP_CHANNEL_SET_VIBRATO_DEPTH:
            channel->vibratoDepthTarget = cmd->asUbyte * 8;
            channel->vibratoDepthChangeDelay = 1;
            break;

        case AUDIOCMD_OP_CHANNEL_SET_VIBRATO_RATE:
            channel->vibratoRateTarget = cmd->asUbyte * 32;
            channel->vibratoRateChangeDelay = 1;
            break;

        case AUDIOCMD_OP_CHANNEL_SET_COMB_FILTER_SIZE:
            channel->combFilterSize = cmd->asUbyte;
            break;

        case AUDIOCMD_OP_CHANNEL_SET_COMB_FILTER_GAIN:
            channel->combFilterGain = cmd->asUShort;
            break;

        case AUDIOCMD_OP_CHANNEL_SET_STEREO:
            channel->stereo.asByte = cmd->asUbyte;
            break;

        default:
            break;
    }
}

/**
 * Call an audio-thread command that has no code to process it. Unused.
 */
void AudioThread_Noop1Cmd(s32 arg0, s32 arg1, s32 arg2) {
    AUDIOCMD_GLOBAL_NOOP_1(arg0, arg1, arg2, 1);
}

/**
 * Call an audio-thread command that has no code to process it. Unused.
 */
void AudioThread_Noop1CmdZeroed(void) {
    AUDIOCMD_GLOBAL_NOOP_1(0, 0, 0, 0);
}

/**
 * Call an audio-thread command that has no code to process it. Unused.
 */
void AudioThread_Noop2Cmd(u32 arg0, s32 arg1) {
    AUDIOCMD_GLOBAL_NOOP_2(0, 0, arg1, arg0);
}

void AudioThread_WaitForAudioTask(void) {
    osRecvMesg(gAudioCtx.taskStartQueueP, NULL, OS_MESG_NOBLOCK);
    osRecvMesg(gAudioCtx.taskStartQueueP, NULL, OS_MESG_BLOCK);
}

s32 func_800E6590(s32 seqPlayerIndex, s32 channelIndex, s32 layerIndex) {
    SequencePlayer* seqPlayer;
    SequenceLayer* layer;
    Note* note;
    TunedSample* tunedSample;
    s32 loopEnd;
    s32 samplePos;

    seqPlayer = &gAudioCtx.seqPlayers[seqPlayerIndex];
    if (seqPlayer->enabled && seqPlayer->channels[channelIndex]->enabled) {
        layer = seqPlayer->channels[channelIndex]->layers[layerIndex];
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

s32 func_800E66C0(s32 flags) {
    s32 phi_v1;
    NotePlaybackState* playbackState;
    NoteSubEu* noteSubEu;
    s32 i;
    Note* note;
    TunedSample* tunedSample;

    phi_v1 = 0;
    for (i = 0; i < gAudioCtx.numNotes; i++) {
        note = &gAudioCtx.notes[i];
        playbackState = &note->playbackState;
        if (note->noteSubEu.bitField0.enabled) {
            noteSubEu = &note->noteSubEu;
            if (playbackState->adsr.action.s.state != 0) {
                if (flags >= 2) {
                    tunedSample = noteSubEu->tunedSample;
                    if (tunedSample == NULL || noteSubEu->bitField1.isSyntheticWave) {
                        continue;
                    }
                    if (tunedSample->sample->medium == MEDIUM_RAM) {
                        continue;
                    }
                }

                phi_v1++;
                if ((flags & 1) == 1) {
                    playbackState->adsr.fadeOutVel = gAudioCtx.audioBufferParameters.ticksPerUpdateInv;
                    playbackState->adsr.action.s.release = 1;
                }
            }
        }
    }
    return phi_v1;
}

u32 AudioThread_NextRandom(void) {
    static u32 sAudioRandom = 0x12345678;

    sAudioRandom = ((osGetCount() + 0x1234567) * (sAudioRandom + gAudioCtx.totalTaskCount));
    sAudioRandom += gAudioCtx.audioRandom;

    return sAudioRandom;
}

void AudioThread_InitMesgQueues(void) {
    AudioThread_InitMesgQueuesImpl();
}
