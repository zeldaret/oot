#include "ultra64.h"
#include "global.h"

#define DEFAULT_LEN_1CH 0x1A0
#define DEFAULT_LEN_2CH 0x340

#define DMEM_TEMP 0x3C0
#define DMEM_UNCOMPRESSED_NOTE 0x580
#define DMEM_NOTE_PAN_TEMP 0x5C0
#define DMEM_SCRATCH2 0x760              // = DMEM_TEMP + DEFAULT_LEN_2CH + a bit more
#define DMEM_COMPRESSED_ADPCM_DATA 0x940 // = DMEM_LEFT_CH
#define DMEM_LEFT_CH 0x940
#define DMEM_RIGHT_CH 0xAE0
#define DMEM_WET_TEMP 0x3E0
#define DMEM_WET_SCRATCH 0x720 // = DMEM_WET_TEMP + DEFAULT_LEN_2CH
#define DMEM_WET_LEFT_CH 0xC80
#define DMEM_WET_RIGHT_CH 0xE20 // = DMEM_WET_LEFT_CH + DEFAULT_LEN_1CH

Acmd* AudioSynth_LoadRingBufferPart(Acmd* cmd, u16 dmem, u16 startPos, s32 length, SynthesisReverb* reverb);
Acmd* AudioSynth_SaveBufferOffset(Acmd* cmd, u16 dmem, u16 offset, s32 length, s16* buf);
Acmd* AudioSynth_SaveRingBufferPart(Acmd* cmd, u16 dmem, u16 startPos, s32 length, SynthesisReverb* reverb);
Acmd* AudioSynth_DoOneAudioUpdate(s16* aiBuf, s32 aiBufLen, Acmd* cmd, s32 updateIndex);
Acmd* AudioSynth_ProcessNote(s32 noteIndex, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s16* aiBuf,
                             s32 aiBufLen, Acmd* cmd, s32 updateIndex);
Acmd* AudioSynth_LoadWaveSamples(Acmd* cmd, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s32 nSamplesToLoad);
Acmd* AudioSynth_NoteApplyHeadsetPanEffects(Acmd* cmd, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s32 bufLen,
                                            s32 flags, s32 side);
Acmd* AudioSynth_ProcessEnvelope(Acmd* cmd, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s32 aiBufLen,
                                 u16 inBuf, s32 headsetPanSettings, s32 flags);
Acmd* AudioSynth_FinalResample(Acmd* cmd, NoteSynthesisState* synthState, s32 count, u16 pitch, u16 inpDmem,
                               s32 resampleFlags);

extern s16 D_8012FBAA[];
extern u32 D_801304A0;
extern u32 D_801304A4;
extern u32 D_801304A8;
extern u32 D_801304AC;
extern u8 D_801304C0[];

void AudioSynth_InitNextRingBuf(s32 chunkLen, s32 bufIndex, s32 reverbIndex) {
    ReverbRingBufferItem* bufItem;
    s32 pad[3];
    SynthesisReverb* reverb = &gAudioContext.synthesisReverbs[reverbIndex];
    s32 temp_a0_2;
    s32 temp_a0_4;
    s32 sampleCnt;
    s32 extraSamples;
    s32 i;
    s32 j;

    if (reverb->downsampleRate >= 2) {
        if (reverb->framesToIgnore == 0) {
            bufItem = &reverb->items[reverb->curFrame][bufIndex];
            Audio_osInvalDCache(bufItem->toDownsampleLeft, DEFAULT_LEN_2CH);

            for (j = 0, i = 0; i < bufItem->lengthA / 2; j += reverb->downsampleRate, i++) {
                reverb->leftRingBuf[bufItem->startPos + i] = bufItem->toDownsampleLeft[j];
                reverb->rightRingBuf[bufItem->startPos + i] = bufItem->toDownsampleRight[j];
            }

            for (i = 0; i < bufItem->lengthB / 2; j += reverb->downsampleRate, i++) {
                reverb->leftRingBuf[i] = bufItem->toDownsampleLeft[j];
                reverb->rightRingBuf[i] = bufItem->toDownsampleRight[j];
            }
        }
    }

    bufItem = &reverb->items[reverb->curFrame][bufIndex];
    sampleCnt = chunkLen / reverb->downsampleRate;
    extraSamples = (sampleCnt + reverb->nextRingBufPos) - reverb->bufSizePerChan;
    temp_a0_2 = reverb->nextRingBufPos;
    if (extraSamples < 0) {
        bufItem->lengthA = sampleCnt * 2;
        bufItem->lengthB = 0;
        bufItem->startPos = reverb->nextRingBufPos;
        reverb->nextRingBufPos += sampleCnt;
    } else {
        bufItem->lengthA = (sampleCnt - extraSamples) * 2;
        bufItem->lengthB = extraSamples * 2;
        bufItem->startPos = reverb->nextRingBufPos;
        reverb->nextRingBufPos = extraSamples;
    }

    bufItem->numSamplesAfterDownsampling = sampleCnt;
    bufItem->chunkLen = chunkLen;

    if (reverb->unk_14 != 0) {
        temp_a0_4 = reverb->unk_14 + temp_a0_2;
        if (temp_a0_4 >= reverb->bufSizePerChan) {
            temp_a0_4 -= reverb->bufSizePerChan;
        }
        bufItem = &reverb->items2[reverb->curFrame][bufIndex];
        sampleCnt = chunkLen / reverb->downsampleRate;
        extraSamples = (temp_a0_4 + sampleCnt) - reverb->bufSizePerChan;
        if (extraSamples < 0) {
            bufItem->lengthA = sampleCnt * 2;
            bufItem->lengthB = 0;
            bufItem->startPos = temp_a0_4;
        } else {
            bufItem->lengthA = (sampleCnt - extraSamples) * 2;
            bufItem->lengthB = extraSamples * 2;
            bufItem->startPos = temp_a0_4;
        }
        bufItem->numSamplesAfterDownsampling = sampleCnt;
        bufItem->chunkLen = chunkLen;
    }
}

void func_800DB03C(s32 arg0) {
    NoteSubEu* subEu;
    NoteSubEu* subEu2;
    s32 baseIndex;
    s32 i;

    baseIndex = gAudioContext.maxSimultaneousNotes * arg0;
    for (i = 0; i < gAudioContext.maxSimultaneousNotes; i++) {
        subEu = &gAudioContext.notes[i].noteSubEu;
        subEu2 = &gAudioContext.noteSubsEu[baseIndex + i];
        if (subEu->bitField0.s.enabled) {
            subEu->bitField0.s.needsInit = false;
        } else {
            subEu2->bitField0.s.enabled = false;
        }

        subEu->unk_06 = 0;
    }
}

Acmd* AudioSynth_Update(Acmd* cmdStart, s32* cmdCnt, s16* aiStart, s32 aiBufLen) {
    s32 chunkLen;
    s16* aiBufP;
    Acmd* cmdP;
    s32 i;
    s32 j;
    SynthesisReverb* reverb;

    cmdP = cmdStart;
    for (i = gAudioContext.audioBufferParameters.updatesPerFrame; i > 0; i--) {
        Audio_ProcessSequences(i - 1);
        func_800DB03C(gAudioContext.audioBufferParameters.updatesPerFrame - i);
    }

    aiBufP = aiStart;
    gAudioContext.curLoadedBook = NULL;
    for (i = gAudioContext.audioBufferParameters.updatesPerFrame; i > 0; i--) {
        if (i == 1) {
            chunkLen = aiBufLen;
        } else if ((aiBufLen / i) >= gAudioContext.audioBufferParameters.samplesPerUpdateMax) {
            chunkLen = gAudioContext.audioBufferParameters.samplesPerUpdateMax;
        } else if (gAudioContext.audioBufferParameters.samplesPerUpdateMin >= (aiBufLen / i)) {
            chunkLen = gAudioContext.audioBufferParameters.samplesPerUpdateMin;
        } else {
            chunkLen = gAudioContext.audioBufferParameters.samplesPerUpdate;
        }

        for (j = 0; j < gAudioContext.numSynthesisReverbs; j++) {
            if (gAudioContext.synthesisReverbs[j].useReverb) {
                AudioSynth_InitNextRingBuf(chunkLen, gAudioContext.audioBufferParameters.updatesPerFrame - i, j);
            }
        }

        cmdP = AudioSynth_DoOneAudioUpdate(aiBufP, chunkLen, cmdP,
                                           gAudioContext.audioBufferParameters.updatesPerFrame - i);
        aiBufLen -= chunkLen;
        aiBufP += chunkLen * 2;
    }

    for (j = 0; j < gAudioContext.numSynthesisReverbs; j++) {
        if (gAudioContext.synthesisReverbs[j].framesToIgnore != 0) {
            gAudioContext.synthesisReverbs[j].framesToIgnore--;
        }
        gAudioContext.synthesisReverbs[j].curFrame ^= 1;
    }

    *cmdCnt = cmdP - cmdStart;
    return cmdP;
}

void func_800DB2C0(s32 updateIndexStart, s32 noteIndex) {
    NoteSubEu* temp_v1;
    s32 i;

    for (i = updateIndexStart + 1; i < gAudioContext.audioBufferParameters.updatesPerFrame; i++) {
        temp_v1 = &gAudioContext.noteSubsEu[(gAudioContext.maxSimultaneousNotes * i) + noteIndex];
        if (!temp_v1->bitField0.s.needsInit) {
            temp_v1->bitField0.s.enabled = 0;
        } else {
            break;
        }
    }
}

Acmd* AudioSynth_LoadRingBuffer1AtTemp(Acmd* cmd, SynthesisReverb* reverb, s16 bufIndex) {
    ReverbRingBufferItem* bufItem = &reverb->items[reverb->curFrame][bufIndex];

    cmd = AudioSynth_LoadRingBufferPart(cmd, DMEM_WET_TEMP, bufItem->startPos, bufItem->lengthA, reverb);
    if (bufItem->lengthB != 0) {
        // Ring buffer wrapped
        cmd = AudioSynth_LoadRingBufferPart(cmd, DMEM_WET_TEMP + bufItem->lengthA, 0, bufItem->lengthB, reverb);
    }
    return cmd;
}

Acmd* AudioSynth_SaveRingBuffer1AtTemp(Acmd* cmd, SynthesisReverb* reverb, s16 bufIndex) {
    ReverbRingBufferItem* bufItem = &reverb->items[reverb->curFrame][bufIndex];

    cmd = AudioSynth_SaveRingBufferPart(cmd, DMEM_WET_TEMP, bufItem->startPos, bufItem->lengthA, reverb);
    if (bufItem->lengthB != 0) {
        // Ring buffer wrapped
        cmd = AudioSynth_SaveRingBufferPart(cmd, DMEM_WET_TEMP + bufItem->lengthA, 0, bufItem->lengthB, reverb);
    }
    return cmd;
}

Acmd* AudioSynth_LeakReverb(Acmd* cmd, SynthesisReverb* reverb) {
    // Leak some audio from the left reverb channel into the right reverb channel and vice versa (pan)
    aDMEMMove(cmd++, DMEM_WET_LEFT_CH, DMEM_WET_SCRATCH, DEFAULT_LEN_1CH);
    aMix(cmd++, 0x1A, reverb->leakRtl, DMEM_WET_RIGHT_CH, DMEM_WET_LEFT_CH);
    aMix(cmd++, 0x1A, reverb->leakLtr, DMEM_WET_SCRATCH, DMEM_WET_RIGHT_CH);
    return cmd;
}

Acmd* func_800DB4E4(Acmd* cmd, s32 arg1, SynthesisReverb* reverb, s16 arg3) {
    ReverbRingBufferItem* item = &reverb->items[reverb->curFrame][arg3];
    s16 offsetA;
    s16 offsetB;

    offsetA = (item->startPos & 7) * 2;
    offsetB = ALIGN16(offsetA + item->lengthA);
    cmd = AudioSynth_LoadRingBufferPart(cmd, DMEM_WET_TEMP, item->startPos - (offsetA / 2), DEFAULT_LEN_1CH, reverb);
    if (item->lengthB != 0) {
        // Ring buffer wrapped
        cmd = AudioSynth_LoadRingBufferPart(cmd, DMEM_WET_TEMP + offsetB, 0, DEFAULT_LEN_1CH - offsetB, reverb);
    }
    aSetBuffer(cmd++, 0, DMEM_WET_TEMP + offsetA, DMEM_WET_LEFT_CH, arg1 * 2);
    aResample(cmd++, reverb->resampleFlags, reverb->unk_0E, reverb->unk_30);
    aSetBuffer(cmd++, 0, DMEM_WET_TEMP + DEFAULT_LEN_1CH + offsetA, DMEM_WET_RIGHT_CH, arg1 * 2);
    aResample(cmd++, reverb->resampleFlags, reverb->unk_0E, reverb->unk_34);
    return cmd;
}

Acmd* func_800DB680(Acmd* cmd, SynthesisReverb* reverb, s16 bufIndex) {
    ReverbRingBufferItem* bufItem = &reverb->items[reverb->curFrame][bufIndex];

    aSetBuffer(cmd++, 0, DMEM_WET_LEFT_CH, DMEM_WET_SCRATCH, bufItem->unk_18 * 2);
    aResample(cmd++, reverb->resampleFlags, bufItem->unk_16, reverb->unk_38);

    cmd = AudioSynth_SaveBufferOffset(cmd, DMEM_WET_SCRATCH, bufItem->startPos, bufItem->lengthA, reverb->leftRingBuf);
    if (bufItem->lengthB != 0) {
        // Ring buffer wrapped
        cmd = AudioSynth_SaveBufferOffset(cmd, DMEM_WET_SCRATCH + bufItem->lengthA, 0, bufItem->lengthB,
                                          reverb->leftRingBuf);
    }
    aSetBuffer(cmd++, 0, DMEM_WET_RIGHT_CH, DMEM_WET_SCRATCH, bufItem->unk_18 * 2);
    aResample(cmd++, reverb->resampleFlags, bufItem->unk_16, reverb->unk_3C);
    cmd = AudioSynth_SaveBufferOffset(cmd, DMEM_WET_SCRATCH, bufItem->startPos, bufItem->lengthA, reverb->rightRingBuf);

    if (bufItem->lengthB != 0) {
        // Ring buffer wrapped
        cmd = AudioSynth_SaveBufferOffset(cmd, DMEM_WET_SCRATCH + bufItem->lengthA, 0, bufItem->lengthB,
                                          reverb->rightRingBuf);
    }

    return cmd;
}

Acmd* func_800DB828(Acmd* cmd, s32 arg1, SynthesisReverb* reverb, s16 arg3) {
    ReverbRingBufferItem* item = &reverb->items[reverb->curFrame][arg3];
    s16 offsetA;
    s16 offsetB;

    item->unk_14 = (item->unk_18 << 0xF) / arg1;
    offsetA = (item->startPos & 7) * 2;
    item->unk_16 = (arg1 << 0xF) / item->unk_18;
    offsetB = ALIGN16(offsetA + item->lengthA);
    cmd = AudioSynth_LoadRingBufferPart(cmd, DMEM_WET_TEMP, item->startPos - (offsetA / 2), DEFAULT_LEN_1CH, reverb);
    if (item->lengthB != 0) {
        // Ring buffer wrapped
        cmd = AudioSynth_LoadRingBufferPart(cmd, DMEM_WET_TEMP + offsetB, 0, DEFAULT_LEN_1CH - offsetB, reverb);
    }
    aSetBuffer(cmd++, 0, DMEM_WET_TEMP + offsetA, DMEM_WET_LEFT_CH, arg1 * 2);
    aResample(cmd++, reverb->resampleFlags, item->unk_14, reverb->unk_30);
    aSetBuffer(cmd++, 0, DMEM_WET_TEMP + DEFAULT_LEN_1CH + offsetA, DMEM_WET_RIGHT_CH, arg1 * 2);
    aResample(cmd++, reverb->resampleFlags, item->unk_14, reverb->unk_34);
    return cmd;
}

Acmd* AudioSynth_FilterReverb(Acmd* cmd, s32 count, SynthesisReverb* reverb) {
    // Apply a filter (convolution) to each reverb channel.
    if (reverb->filterLeft != NULL) {
        aFilter(cmd++, 2, count, reverb->filterLeft);
        aFilter(cmd++, reverb->resampleFlags, DMEM_WET_LEFT_CH, reverb->filterLeftState);
    }

    if (reverb->filterRight != NULL) {
        aFilter(cmd++, 2, count, reverb->filterRight);
        aFilter(cmd++, reverb->resampleFlags, DMEM_WET_RIGHT_CH, reverb->filterRightState);
    }
    return cmd;
}

Acmd* AudioSynth_MaybeMixRingBuffer1(Acmd* cmd, SynthesisReverb* reverb, s32 arg2) {
    SynthesisReverb* temp_a3;

    temp_a3 = &gAudioContext.synthesisReverbs[reverb->unk_05];
    if (temp_a3->downsampleRate == 1) {
        cmd = AudioSynth_LoadRingBuffer1AtTemp(cmd, temp_a3, arg2);
        aMix(cmd++, 0x34, reverb->unk_08, DMEM_WET_LEFT_CH, DMEM_WET_TEMP);
        cmd = AudioSynth_SaveRingBuffer1AtTemp(cmd, temp_a3, arg2);
    }
    return cmd;
}

void func_800DBB94(void) {
}

void AudioSynth_ClearBuffer(Acmd* cmd, s32 arg1, s32 arg2) {
    aClearBuffer(cmd, arg1, arg2);
}

void func_800DBBBC(void) {
}

void func_800DBBC4(void) {
}

void func_800DBBCC(void) {
}

void AudioSynth_Mix(Acmd* cmd, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    aMix(cmd, arg1, arg2, arg3, arg4);
}

void func_800DBC08(void) {
}

void func_800DBC10(void) {
}

void func_800DBC18(void) {
}

void AudioSynth_SetBuffer(Acmd* cmd, s32 flags, s32 dmemIn, s32 dmemOut, s32 count) {
    aSetBuffer(cmd, flags, dmemIn, dmemOut, count);
}

void func_800DBC54(void) {
}

void func_800DBC5C(void) {
}

// possible fake match?
void AudioSynth_DMemMove(Acmd* cmd, s32 dmemIn, s32 dmemOut, s32 count) {
    cmd->words.w0 = _SHIFTL(A_DMEMMOVE, 24, 8) | _SHIFTL(dmemIn, 0, 24);
    cmd->words.w1 = _SHIFTL(dmemOut, 16, 16) | _SHIFTL(count, 0, 16);
}

void func_800DBC90(void) {
}

void func_800DBC98(void) {
}

void func_800DBCA0(void) {
}

void func_800DBCA8(void) {
}

void AudioSynth_InterL(Acmd* cmd, s32 dmemIn, s32 dmemOut, s32 count) {
    cmd->words.w0 = _SHIFTL(A_INTERL, 24, 8) | _SHIFTL(count, 0, 16);
    cmd->words.w1 = _SHIFTL(dmemIn, 16, 16) | _SHIFTL(dmemOut, 0, 16);
}

void AudioSynth_EnvSetup1(Acmd* cmd, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    aEnvSetup1(cmd, arg1, arg2, arg3, arg4);
}

void func_800DBD08(void) {
}

void AudioSynth_LoadBuffer(Acmd* cmd, s32 arg1, s32 arg2, s32 arg3) {
    aLoadBuffer(cmd, arg3, arg1, arg2);
}

void AudioSynth_SaveBuffer(Acmd* cmd, s32 arg1, s32 arg2, s32 arg3) {
    aSaveBuffer(cmd, arg1, arg3, arg2);
}

void AudioSynth_EnvSetup2(Acmd* cmd, s32 volLeft, s32 volRight) {
    cmd->words.w0 = _SHIFTL(A_ENVSETUP2, 24, 8);
    cmd->words.w1 = _SHIFTL(volLeft, 16, 16) | _SHIFTL(volRight, 0, 16);
}

void func_800DBD7C(void) {
}

void func_800DBD84(void) {
}

void func_800DBD8C(void) {
}

void AudioSynth_S8Dec(Acmd* cmd, s32 flags, s16* state) {
    aS8Dec(cmd, flags, state);
}

void AudioSynth_HiLoGain(Acmd* cmd, s32 gain, s32 dmemIn, s32 dmemOut, s32 count) {
    cmd->words.w0 = _SHIFTL(A_HILOGAIN, 24, 8) | _SHIFTL(gain, 16, 8) | _SHIFTL(count, 0, 16);
    cmd->words.w1 = _SHIFTL(dmemIn, 16, 16) | _SHIFTL(dmemOut, 0, 16);
}

void AudioSynth_UnkCmd19(Acmd* cmd, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    cmd->words.w0 = _SHIFTL(A_UNK19, 24, 8) | _SHIFTL(arg4, 16, 8) | _SHIFTL(arg3, 0, 16);
    cmd->words.w1 = _SHIFTL(arg1, 16, 16) | _SHIFTL(arg2, 0, 16);
}

void func_800DBE18(void) {
}

void func_800DBE20(void) {
}

void func_800DBE28(void) {
}

void func_800DBE30(void) {
}

void AudioSynth_UnkCmd3(Acmd* cmd, s32 arg1, s32 arg2, s32 arg3) {
    cmd->words.w0 = _SHIFTL(A_UNK3, 24, 8) | _SHIFTL(arg3, 0, 16);
    cmd->words.w1 = _SHIFTL(arg1, 16, 16) | _SHIFTL(arg2, 0, 16);
}

void func_800DBE5C(void) {
}

void func_800DBE64(void) {
}

void func_800DBE6C(void) {
}

void AudioSynth_SetFilter(Acmd* cmd, s32 flags, s32 countOrBuf, s32 addr) {
    aFilter(cmd, flags, countOrBuf, addr);
}

void AudioSynth_SetFilterCount(Acmd* cmd, s32 count, s32 addr) {
    aFilter(cmd, 2, count, addr);
}

Acmd* AudioSynth_LoadRingBuffer1(Acmd* cmd, s32 arg1, SynthesisReverb* reverb, s16 bufIndex) {
    ReverbRingBufferItem* ringBufferItem = &reverb->items[reverb->curFrame][bufIndex];

    cmd =
        AudioSynth_LoadRingBufferPart(cmd, DMEM_WET_LEFT_CH, ringBufferItem->startPos, ringBufferItem->lengthA, reverb);
    if (ringBufferItem->lengthB != 0) {
        // Ring buffer wrapped
        cmd = AudioSynth_LoadRingBufferPart(cmd, DMEM_WET_LEFT_CH + ringBufferItem->lengthA, 0, ringBufferItem->lengthB,
                                            reverb);
    }

    return cmd;
}

Acmd* AudioSynth_LoadRingBuffer2(Acmd* cmd, s32 arg1, SynthesisReverb* reverb, s16 bufIndex) {
    ReverbRingBufferItem* bufItem = &reverb->items2[reverb->curFrame][bufIndex];

    cmd = AudioSynth_LoadRingBufferPart(cmd, DMEM_WET_LEFT_CH, bufItem->startPos, bufItem->lengthA, reverb);
    if (bufItem->lengthB != 0) {
        // Ring buffer wrapped
        cmd = AudioSynth_LoadRingBufferPart(cmd, DMEM_WET_LEFT_CH + bufItem->lengthA, 0, bufItem->lengthB, reverb);
    }
    return cmd;
}

Acmd* AudioSynth_LoadRingBufferPart(Acmd* cmd, u16 dmem, u16 startPos, s32 length, SynthesisReverb* reverb) {
    aLoadBuffer(cmd++, &reverb->leftRingBuf[startPos], dmem, length);
    aLoadBuffer(cmd++, &reverb->rightRingBuf[startPos], dmem + DEFAULT_LEN_1CH, length);
    return cmd;
}

Acmd* AudioSynth_SaveRingBufferPart(Acmd* cmd, u16 dmem, u16 startPos, s32 length, SynthesisReverb* reverb) {
    aSaveBuffer(cmd++, dmem, &reverb->leftRingBuf[startPos], length);
    aSaveBuffer(cmd++, dmem + DEFAULT_LEN_1CH, &reverb->rightRingBuf[startPos], length);
    return cmd;
}

Acmd* AudioSynth_SaveBufferOffset(Acmd* cmd, u16 dmem, u16 offset, s32 length, s16* buf) {
    aSaveBuffer(cmd++, dmem, &buf[offset], length);
    return cmd;
}

Acmd* AudioSynth_MaybeLoadRingBuffer2(Acmd* cmd, s32 arg1, SynthesisReverb* reverb, s16 bufIndex) {
    if (reverb->downsampleRate == 1) {
        cmd = AudioSynth_LoadRingBuffer2(cmd, arg1, reverb, bufIndex);
    }

    return cmd;
}

Acmd* func_800DC164(Acmd* cmd, s32 arg1, SynthesisReverb* reverb, s16 arg3) {
    // Sets DMEM_WET_{LEFT,RIGHT}_CH, clobbers DMEM_TEMP
    if (reverb->downsampleRate == 1) {
        if (reverb->unk_18 != 0) {
            cmd = func_800DB828(cmd, arg1, reverb, arg3);
        } else {
            cmd = AudioSynth_LoadRingBuffer1(cmd, arg1, reverb, arg3);
        }
    } else {
        cmd = func_800DB4E4(cmd, arg1, reverb, arg3);
    }
    return cmd;
}

Acmd* AudioSynth_SaveReverbSamples(Acmd* cmd, SynthesisReverb* reverb, s16 bufIndex) {
    ReverbRingBufferItem* bufItem = &reverb->items[reverb->curFrame][bufIndex];

    if (reverb->downsampleRate == 1) {
        if (reverb->unk_18 != 0) {
            cmd = func_800DB680(cmd, reverb, bufIndex);
        } else {
            // Put the oldest samples in the ring buffer into the wet channels
            cmd = AudioSynth_SaveRingBufferPart(cmd, DMEM_WET_LEFT_CH, bufItem->startPos, bufItem->lengthA, reverb);
            if (bufItem->lengthB != 0) {
                // Ring buffer wrapped
                cmd = AudioSynth_SaveRingBufferPart(cmd, DMEM_WET_LEFT_CH + bufItem->lengthA, 0, bufItem->lengthB,
                                                    reverb);
            }
        }
    } else {
        // Downsampling is done later by CPU when RSP is done, therefore we need to have
        // double buffering. Left and right buffers are adjacent in memory.
        AudioSynth_SaveBuffer(cmd++, DMEM_WET_LEFT_CH, DEFAULT_LEN_2CH,
                              reverb->items[reverb->curFrame][bufIndex].toDownsampleLeft);
    }

    reverb->resampleFlags = 0;
    return cmd;
}

Acmd* AudioSynth_SaveRingBuffer2(Acmd* cmd, SynthesisReverb* reverb, s16 bufIndex) {
    ReverbRingBufferItem* bufItem = &reverb->items2[reverb->curFrame][bufIndex];

    cmd = AudioSynth_SaveRingBufferPart(cmd, DMEM_WET_LEFT_CH, bufItem->startPos, bufItem->lengthA, reverb);
    if (bufItem->lengthB != 0) {
        // Ring buffer wrapped
        cmd = AudioSynth_SaveRingBufferPart(cmd, DMEM_WET_LEFT_CH + bufItem->lengthA, 0, bufItem->lengthB, reverb);
    }
    return cmd;
}

Acmd* AudioSynth_DoOneAudioUpdate(s16* aiBuf, s32 aiBufLen, Acmd* cmd, s32 updateIndex) {
    u8 noteIndices[0x5C];
    s16 count;
    s16 reverbIndex;
    SynthesisReverb* reverb;
    s32 useReverb;
    s32 t;
    s32 i;
    NoteSubEu* noteSubEu;
    NoteSubEu* noteSubEu2;
    s32 unk14;

    t = gAudioContext.maxSimultaneousNotes * updateIndex;
    count = 0;
    if (gAudioContext.numSynthesisReverbs == 0) {
        for (i = 0; i < gAudioContext.maxSimultaneousNotes; i++) {
            if (gAudioContext.noteSubsEu[t + i].bitField0.s.enabled) {
                noteIndices[count++] = i;
            }
        }
    } else {
        for (reverbIndex = 0; reverbIndex < gAudioContext.numSynthesisReverbs; reverbIndex++) {
            for (i = 0; i < gAudioContext.maxSimultaneousNotes; i++) {
                noteSubEu = &gAudioContext.noteSubsEu[t + i];
                if (noteSubEu->bitField0.s.enabled && noteSubEu->bitField1.s.reverbIndex == reverbIndex) {
                    noteIndices[count++] = i;
                }
            }
        }

        for (i = 0; i < gAudioContext.maxSimultaneousNotes; i++) {
            noteSubEu = &gAudioContext.noteSubsEu[t + i];
            if (noteSubEu->bitField0.s.enabled &&
                noteSubEu->bitField1.s.reverbIndex >= gAudioContext.numSynthesisReverbs) {
                noteIndices[count++] = i;
            }
        }
    }

    aClearBuffer(cmd++, DMEM_LEFT_CH, DEFAULT_LEN_2CH);
    i = 0;
    for (reverbIndex = 0; reverbIndex < gAudioContext.numSynthesisReverbs; reverbIndex++) {
        reverb = &gAudioContext.synthesisReverbs[reverbIndex];
        useReverb = reverb->useReverb;
        if (useReverb) {
            cmd = func_800DC164(cmd, aiBufLen, reverb, updateIndex);
            aMix(cmd++, 0x34, reverb->unk_0A, DMEM_WET_LEFT_CH, DMEM_LEFT_CH);
            unk14 = reverb->unk_14;
            if (unk14) {
                aDMEMMove(cmd++, DMEM_WET_LEFT_CH, DMEM_WET_TEMP, DEFAULT_LEN_2CH);
            }

            aMix(cmd++, 0x34, reverb->unk_0C + 0x8000, DMEM_WET_LEFT_CH, DMEM_WET_LEFT_CH);
            if (reverb->leakRtl != 0 || reverb->leakLtr != 0) {
                cmd = AudioSynth_LeakReverb(cmd, reverb);
            }

            if (unk14) {
                cmd = AudioSynth_SaveReverbSamples(cmd, reverb, updateIndex);
                if (reverb->unk_05 != -1) {
                    cmd = AudioSynth_MaybeMixRingBuffer1(cmd, reverb, updateIndex);
                }
                cmd = AudioSynth_MaybeLoadRingBuffer2(cmd, aiBufLen, reverb, updateIndex);
                aMix(cmd++, 0x34, reverb->unk_16, DMEM_WET_TEMP, DMEM_WET_LEFT_CH);
            }
        }

        while (i < count) {
            noteSubEu2 = &gAudioContext.noteSubsEu[noteIndices[i] + t];
            if (noteSubEu2->bitField1.s.reverbIndex == reverbIndex) {
                cmd = AudioSynth_ProcessNote(noteIndices[i], noteSubEu2,
                                             &gAudioContext.notes[noteIndices[i]].synthesisState, aiBuf, aiBufLen, cmd,
                                             updateIndex);
            } else {
                break;
            }
            i++;
        }

        if (useReverb) {
            if (reverb->filterLeft != NULL || reverb->filterRight != NULL) {
                cmd = AudioSynth_FilterReverb(cmd, aiBufLen * 2, reverb);
            }
            if (unk14) {
                cmd = AudioSynth_SaveRingBuffer2(cmd, reverb, updateIndex);
            } else {
                cmd = AudioSynth_SaveReverbSamples(cmd, reverb, updateIndex);
                if (reverb->unk_05 != -1) {
                    cmd = AudioSynth_MaybeMixRingBuffer1(cmd, reverb, updateIndex);
                }
            }
        }
    }

    while (i < count) {
        cmd = AudioSynth_ProcessNote(noteIndices[i], &gAudioContext.noteSubsEu[t + noteIndices[i]],
                                     &gAudioContext.notes[noteIndices[i]].synthesisState, aiBuf, aiBufLen, cmd,
                                     updateIndex);
        i++;
    }

    updateIndex = aiBufLen * 2;
    aInterleave(cmd++, DMEM_TEMP, DMEM_LEFT_CH, DMEM_RIGHT_CH, updateIndex);
    aSaveBuffer(cmd++, DMEM_TEMP, aiBuf, updateIndex * 2);

    return cmd;
}

Acmd* AudioSynth_ProcessNote(s32 noteIndex, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s16* aiBuf,
                             s32 aiBufLen, Acmd* cmd, s32 updateIndex) {
    s32 pad1[3];
    AudioBankSample* audioBankSample;
    AdpcmLoop* loopInfo;
    s32 samplesRemaining;
    s32 nSamplesInThisIteration;
    s32 noteFinished;
    s32 restart;
    s32 flags;
    u16 resamplingRateFixedPoint;
    s32 phi_s6;
    s32 phi_s7;
    s32 phi_a1_2;
    s32 temp_v1_5;
    s32 sp120;
    s32 temp_v1_6;
    void* buf;
    s32 phi_s0;
    s32 sampleAddr;
    u32 samplesLenFixedPoint;
    s32 samplesLenAdjusted;
    s32 nAdpcmSamplesProcessed;
    s32 endPos;
    s32 nSamplesToProcess;
    s32 phi_s4;
    s32 phi_s3;
    s32 pad2[7];
    s32 spD4;
    s32 phi_s1;
    s32 spCC;
    s32 spC8;
    u8* phi_a1;
    s32 nParts;
    s32 curPart;
    s32 phi_t0;
    s32 side;
    s32 resampledTempLen;
    u16 noteSamplesDmemAddrBeforeResampling;
    s32 temp_mult;
    s32 thing;
    s32 s5;
    Note* note;
    u32 nSamplesToLoad;
    u16 unk7;
    u16 unkE;
    s16* filter;
    s32 bookOffset;
    s32 finished;
    s32 aligned;
    s16 addr;
    u16 unused;

    bookOffset = noteSubEu->bitField1.s.bookOffset;
    finished = noteSubEu->bitField0.s.finished;
    note = &gAudioContext.notes[noteIndex];
    flags = A_CONTINUE;

    if (noteSubEu->bitField0.s.needsInit == true) {
        flags = A_INIT;
        synthState->restart = 0;
        synthState->samplePosInt = note->unk_BC;
        synthState->samplePosFrac = 0;
        synthState->curVolLeft = 0;
        synthState->curVolRight = 0;
        synthState->prevHeadsetPanRight = 0;
        synthState->prevHeadsetPanLeft = 0;
        synthState->reverbVol = noteSubEu->reverbVol;
        synthState->numAdpcmParts = 0;
        synthState->unk_1A = 1;
        note->noteSubEu.bitField0.s.finished = false;
        finished = false;
    }

    resamplingRateFixedPoint = noteSubEu->resamplingRateFixedPoint;
    nParts = noteSubEu->bitField1.s.hasTwoAdpcmParts + 1;
    samplesLenFixedPoint = (resamplingRateFixedPoint * aiBufLen * 2) + synthState->samplePosFrac;
    nSamplesToLoad = samplesLenFixedPoint >> 16;
    synthState->samplePosFrac = samplesLenFixedPoint & 0xFFFF;

    // Partially-optimized out no-op ifs required for matching. SM64 decomp
    // makes it clear that this is how it should look.
    if (synthState->numAdpcmParts == 1 && nParts == 2) {
    } else if (synthState->numAdpcmParts == 2 && nParts == 1) {
    } else {
    }

    synthState->numAdpcmParts = nParts;

    if (noteSubEu->bitField1.s.isSyntheticWave) {
        cmd = AudioSynth_LoadWaveSamples(cmd, noteSubEu, synthState, nSamplesToLoad);
        noteSamplesDmemAddrBeforeResampling = DMEM_UNCOMPRESSED_NOTE + (synthState->samplePosInt * 2);
        synthState->samplePosInt += nSamplesToLoad;
    } else {
        // ADPCM note
        audioBankSample = noteSubEu->sound.audioBankSound->sample;
        loopInfo = audioBankSample->loop;
        endPos = loopInfo->end;
        sampleAddr = audioBankSample->sampleAddr;
        resampledTempLen = 0;

        for (curPart = 0; curPart < nParts; curPart++) {
            // reordering in the loop prelude
            nAdpcmSamplesProcessed = 0;
            s5 = 0;

            if (nParts == 1) {
                samplesLenAdjusted = nSamplesToLoad;
            } else if (nSamplesToLoad & 1) {
                samplesLenAdjusted = (nSamplesToLoad & ~1) + (curPart * 2);
            } else {
                samplesLenAdjusted = nSamplesToLoad;
            }

            if (audioBankSample->codec == 0 || audioBankSample->codec == 3) {
                if (gAudioContext.curLoadedBook != (*audioBankSample->book).book) {
                    u32 nEntries;
                    switch (bookOffset) {
                        case 1:
                            gAudioContext.curLoadedBook = D_8012FBAA;
                            break;
                        case 2:
                        case 3:
                        default:
                            gAudioContext.curLoadedBook = (*audioBankSample->book).book;
                            break;
                    }
                    if (1) {}
                    if (1) {}
                    if (1) {}
                    nEntries = 16 * audioBankSample->book->order * audioBankSample->book->npredictors;
                    aLoadADPCM(cmd++, nEntries, gAudioContext.curLoadedBook);
                }
            }

            while (nAdpcmSamplesProcessed != samplesLenAdjusted) {
                noteFinished = false;
                restart = false;
                phi_s4 = 0;

                phi_s3 = synthState->samplePosInt & 0xF;
                samplesRemaining = endPos - synthState->samplePosInt;
                nSamplesToProcess = samplesLenAdjusted - nAdpcmSamplesProcessed;

                if (phi_s3 == 0 && synthState->restart == false) {
                    phi_s3 = 16;
                }
                phi_s6 = 16 - phi_s3;

                if (nSamplesToProcess < samplesRemaining) {
                    phi_s1 = (s32)(nSamplesToProcess - phi_s6 + 15) / 16;
                    phi_s0 = phi_s1 * 16;
                    phi_s7 = phi_s6 + phi_s0 - nSamplesToProcess;
                } else {
                    phi_s0 = samplesRemaining - phi_s6;
                    phi_s7 = 0;
                    if (phi_s0 <= 0) {
                        phi_s0 = 0;
                        phi_s6 = samplesRemaining;
                    }
                    phi_s1 = (phi_s0 + 15) / 16;
                    if (loopInfo->count != 0) {
                        // Loop around and restart
                        restart = true;
                    } else {
                        noteFinished = true;
                    }
                }

                switch (audioBankSample->codec) {
                    case CODEC_ADPCM:
                        spD4 = 9;
                        spCC = 0x10;
                        spC8 = 0;
                        break;
                    case 3:
                        spD4 = 5;
                        spCC = 0x10;
                        spC8 = 0;
                        break;
                    case CODEC_S8:
                        spD4 = 0x10;
                        spCC = 0x10;
                        spC8 = 0;
                        break;
                    case 2:
                        AudioSynth_ClearBuffer(cmd++, DMEM_UNCOMPRESSED_NOTE, (samplesLenAdjusted * 2) + 0x20);
                        flags = A_CONTINUE;
                        sp120 = 0;
                        nAdpcmSamplesProcessed = samplesLenAdjusted;
                        s5 = samplesLenAdjusted;
                        goto skip;
                    case 5:
                        AudioSynth_ClearBuffer(cmd++, DMEM_UNCOMPRESSED_NOTE, (samplesLenAdjusted * 2) + 0x20);
                        flags = A_CONTINUE;
                        sp120 = 0;
                        nAdpcmSamplesProcessed = samplesLenAdjusted;
                        s5 = samplesLenAdjusted;
                        goto skip;
                    case 4:
                        break;
                }

                if (phi_s1 != 0) {
                    temp_v1_5 = (synthState->samplePosInt + spCC - phi_s3) / 16;
                    temp_mult = (temp_v1_5 * spD4);
                    if (audioBankSample->medium == 0) {
                        phi_a1 = spC8 + temp_mult + sampleAddr;
                    } else if (audioBankSample->medium == 1) {
                        return cmd;
                    } else {
                        phi_a1 =
                            Audio_DmaSampleData((u32)(spC8 + temp_mult + sampleAddr), ALIGN16((phi_s1 * spD4) + 0x10),
                                                flags, &synthState->sampleDmaIndex, audioBankSample->medium);
                    }

                    if (phi_a1 == NULL) {
                        return cmd;
                    }

                    phi_t0 = (u32)phi_a1 & 0xF;
                    aligned = ALIGN16((phi_s1 * spD4) + 16);
                    addr = DMEM_COMPRESSED_ADPCM_DATA - aligned;
                    aLoadBuffer(cmd++, phi_a1 - phi_t0, addr, aligned);
                } else {
                    phi_s0 = 0;
                    phi_t0 = 0;
                }

                if (synthState->restart) {
                    aSetLoop(cmd++, audioBankSample->loop->state);
                    flags = A_LOOP;
                    synthState->restart = false;
                }

                nSamplesInThisIteration = phi_s0 + phi_s6 - phi_s7;
                if (nAdpcmSamplesProcessed == 0) {
                    if (1) {}
                    sp120 = phi_s3 * 2;
                } else {
                    phi_s4 = ALIGN16(s5 + 16);
                }
                switch (audioBankSample->codec) {
                    case CODEC_ADPCM:
                        aligned = ALIGN16((phi_s1 * spD4) + 0x10);
                        addr = DMEM_COMPRESSED_ADPCM_DATA - aligned;
                        aSetBuffer(cmd++, 0, addr + phi_t0, DMEM_UNCOMPRESSED_NOTE + phi_s4, phi_s0 * 2);
                        aADPCMdec(cmd++, flags, synthState->synthesisBuffers->adpcmdecState);
                        break;
                    case 3:
                        aligned = ALIGN16((phi_s1 * spD4) + 0x10);
                        addr = DMEM_COMPRESSED_ADPCM_DATA - aligned;
                        aSetBuffer(cmd++, 0, addr + phi_t0, DMEM_UNCOMPRESSED_NOTE + phi_s4, phi_s0 * 2);
                        aADPCMdec(cmd++, flags | 4, synthState->synthesisBuffers->adpcmdecState);
                        break;
                    case CODEC_S8:
                        aligned = ALIGN16((phi_s1 * spD4) + 0x10);
                        addr = DMEM_COMPRESSED_ADPCM_DATA - aligned;
                        AudioSynth_SetBuffer(cmd++, 0, addr + phi_t0, DMEM_UNCOMPRESSED_NOTE + phi_s4, phi_s0 * 2);
                        AudioSynth_S8Dec(cmd++, flags, synthState->synthesisBuffers->adpcmdecState);
                        break;
                }

                if (nAdpcmSamplesProcessed != 0) {
                    aDMEMMove(cmd++, DMEM_UNCOMPRESSED_NOTE + phi_s4 + (phi_s3 * 2), DMEM_UNCOMPRESSED_NOTE + s5,
                              nSamplesInThisIteration * 2);
                }

                nAdpcmSamplesProcessed += nSamplesInThisIteration;

                switch (flags) {
                    case A_INIT:
                        sp120 = 0x20;
                        s5 = (phi_s0 + 0x10) * 2;
                        break;
                    case A_LOOP:
                        s5 = nSamplesInThisIteration * 2 + s5;
                        break;
                    default:
                        if (s5 != 0) {
                            s5 = nSamplesInThisIteration * 2 + s5;
                        } else {
                            s5 = (phi_s3 + nSamplesInThisIteration) * 2;
                        }
                        break;
                }

                flags = A_CONTINUE;

            skip:
                if (noteFinished) {
                    AudioSynth_ClearBuffer(cmd++, DMEM_UNCOMPRESSED_NOTE + s5,
                                           (samplesLenAdjusted - nAdpcmSamplesProcessed) * 2);
                    finished = true;
                    note->noteSubEu.bitField0.s.finished = true;
                    func_800DB2C0(updateIndex, noteIndex);
                    break;
                } else {
                    if (restart) {
                        synthState->restart = true;
                        synthState->samplePosInt = loopInfo->start;
                    } else {
                        synthState->samplePosInt += nSamplesToProcess;
                    }
                }
            }

            switch (nParts) {
                case 1:
                    noteSamplesDmemAddrBeforeResampling = DMEM_UNCOMPRESSED_NOTE + sp120;
                    break;
                case 2:
                    switch (curPart) {
                        case 0:
                            AudioSynth_InterL(cmd++, DMEM_UNCOMPRESSED_NOTE + sp120, DMEM_TEMP + 0x20,
                                              ((samplesLenAdjusted / 2) + 7) & ~7);
                            resampledTempLen = samplesLenAdjusted;
                            noteSamplesDmemAddrBeforeResampling = DMEM_TEMP + 0x20;
                            if (finished) {
                                AudioSynth_ClearBuffer(cmd++, noteSamplesDmemAddrBeforeResampling + resampledTempLen,
                                                       samplesLenAdjusted + 0x10);
                            }
                            break;
                        case 1:
                            AudioSynth_InterL(cmd++, DMEM_UNCOMPRESSED_NOTE + sp120,
                                              DMEM_TEMP + 0x20 + resampledTempLen, ((samplesLenAdjusted / 2) + 7) & ~7);
                            break;
                    }
            }
            if (finished) {
                break;
            }
        }
    }

    flags = A_CONTINUE;
    if (noteSubEu->bitField0.s.needsInit == true) {
        noteSubEu->bitField0.s.needsInit = false;
        flags = A_INIT;
    }

    cmd = AudioSynth_FinalResample(cmd, synthState, aiBufLen * 2, resamplingRateFixedPoint,
                                   noteSamplesDmemAddrBeforeResampling, flags);
    if (bookOffset == 3) {
        AudioSynth_UnkCmd19(cmd++, DMEM_TEMP, DMEM_TEMP, aiBufLen * 2, 0);
    }

    if (bookOffset == 2) {
        AudioSynth_UnkCmd3(cmd++, DMEM_TEMP, DMEM_TEMP, aiBufLen * 2);
    }

    phi_a1_2 = noteSubEu->unk_2;
    if (phi_a1_2 != 0) {
        if (phi_a1_2 < 0x10) {
            phi_a1_2 = 0x10;
        }
        AudioSynth_HiLoGain(cmd++, phi_a1_2, DMEM_TEMP, 0, (aiBufLen * 2) + 0x20);
    }

    filter = noteSubEu->filter;
    if (filter != 0) {
        AudioSynth_SetFilterCount(cmd++, aiBufLen * 2, filter);
        AudioSynth_SetFilter(cmd++, flags, DMEM_TEMP, synthState->synthesisBuffers->mixEnvelopeState);
    }

    unk7 = noteSubEu->unk_07;
    unkE = noteSubEu->unk_0E;
    buf = &synthState->synthesisBuffers->panSamplesBuffer[0x18];
    if (unk7 != 0 && noteSubEu->unk_0E != 0) {
        AudioSynth_DMemMove(cmd++, DMEM_TEMP, DMEM_SCRATCH2, aiBufLen * 2);
        thing = DMEM_SCRATCH2 - unk7;
        if (synthState->unk_1A != 0) {
            AudioSynth_ClearBuffer(cmd++, thing, unk7);
            synthState->unk_1A = 0;
        } else {
            AudioSynth_LoadBuffer(cmd++, thing, unk7, buf);
        }
        AudioSynth_SaveBuffer(cmd++, DMEM_TEMP + (aiBufLen * 2) - unk7, unk7, buf);
        AudioSynth_Mix(cmd++, (aiBufLen * 2) >> 4, unkE, DMEM_SCRATCH2, thing);
        AudioSynth_DMemMove(cmd++, thing, DMEM_TEMP, aiBufLen * 2);
    } else {
        synthState->unk_1A = 1;
    }

    if (noteSubEu->headsetPanRight != 0 || synthState->prevHeadsetPanRight != 0) {
        side = 1;
    } else if (noteSubEu->headsetPanLeft != 0 || synthState->prevHeadsetPanLeft != 0) {
        side = 2;
    } else {
        side = 0;
    }
    cmd = AudioSynth_ProcessEnvelope(cmd, noteSubEu, synthState, aiBufLen, DMEM_TEMP, side, flags);
    if (noteSubEu->bitField1.s.usesHeadsetPanEffects2) {
        if (!(flags & A_INIT)) {
            flags = A_CONTINUE;
        }
        cmd = AudioSynth_NoteApplyHeadsetPanEffects(cmd, noteSubEu, synthState, aiBufLen * 2, flags, side);
    }
    return cmd;
}

Acmd* AudioSynth_FinalResample(Acmd* cmd, NoteSynthesisState* synthState, s32 count, u16 pitch, u16 inpDmem,
                               s32 resampleFlags) {
    if (pitch == 0) {
        AudioSynth_ClearBuffer(cmd++, DMEM_TEMP, count);
    } else {
        aSetBuffer(cmd++, 0, inpDmem, DMEM_TEMP, count);
        aResample(cmd++, resampleFlags, pitch, synthState->synthesisBuffers->finalResampleState);
    }
    return cmd;
}

Acmd* AudioSynth_ProcessEnvelope(Acmd* cmd, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s32 aiBufLen,
                                 u16 inBuf, s32 headsetPanSettings, s32 flags) {
    u32 phi_a1;
    u16 curVolLeft;
    u16 targetVolLeft;
    s32 phi_t1;
    s16 reverbVol;
    u16 curVolRight;
    s16 rampLeft;
    s16 rampRight;
    s16 rampReverb;
    s16 sourceReverbVol;
    u16 targetVolRight;
    s32 pad;

    curVolLeft = synthState->curVolLeft;
    targetVolLeft = noteSubEu->targetVolLeft;
    targetVolLeft <<= 4;
    reverbVol = noteSubEu->reverbVol;
    curVolRight = synthState->curVolRight;
    targetVolRight = noteSubEu->targetVolRight;
    targetVolRight <<= 4;

    if (targetVolLeft != curVolLeft) {
        rampLeft = (targetVolLeft - curVolLeft) / (aiBufLen >> 3);
    } else {
        rampLeft = 0;
    }
    if (targetVolRight != curVolRight) {
        rampRight = (targetVolRight - curVolRight) / (aiBufLen >> 3);
    } else {
        rampRight = 0;
    }

    sourceReverbVol = synthState->reverbVol;
    phi_t1 = sourceReverbVol & 0x7F;

    if (sourceReverbVol != reverbVol) {
        rampReverb = (((reverbVol & 0x7F) - phi_t1) << 9) / (aiBufLen >> 3);
        synthState->reverbVol = reverbVol;
    } else {
        rampReverb = 0;
    }

    synthState->curVolLeft = curVolLeft + (rampLeft * (aiBufLen >> 3));
    synthState->curVolRight = curVolRight + (rampRight * (aiBufLen >> 3));

    if (noteSubEu->bitField1.s.usesHeadsetPanEffects2) {
        AudioSynth_ClearBuffer(cmd++, DMEM_NOTE_PAN_TEMP, DEFAULT_LEN_1CH);
        AudioSynth_EnvSetup1(cmd++, phi_t1 * 2, rampReverb, rampLeft, rampRight);
        AudioSynth_EnvSetup2(cmd++, curVolLeft, curVolRight);
        switch (headsetPanSettings) {
            case 1:
                phi_a1 = D_801304A4;
                break;
            case 2:
                phi_a1 = D_801304A8;
                break;
            default:
                phi_a1 = D_801304AC;
                break;
        }
    } else {
        aEnvSetup1(cmd++, phi_t1 * 2, rampReverb, rampLeft, rampRight);
        aEnvSetup2(cmd++, curVolLeft, curVolRight);
        phi_a1 = D_801304AC;
    }

    aEnvMixer(cmd++, inBuf, aiBufLen, (sourceReverbVol & 0x80) >> 7, noteSubEu->bitField0.s.stereoHeadsetEffects,
              noteSubEu->bitField0.s.usesHeadsetPanEffects, noteSubEu->bitField0.s.stereoStrongRight,
              noteSubEu->bitField0.s.stereoStrongLeft, phi_a1, D_801304A0);
    return cmd;
}

Acmd* AudioSynth_LoadWaveSamples(Acmd* cmd, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s32 nSamplesToLoad) {
    s32 temp_v0;
    s32 unk6 = noteSubEu->unk_06;
    s32 samplePosInt = synthState->samplePosInt;
    s32 repeats;

    if (noteSubEu->bitField1.s.bookOffset != 0) {
        AudioSynth_LoadBuffer(cmd++, DMEM_UNCOMPRESSED_NOTE, ALIGN16(nSamplesToLoad * 2), gWaveSamples[8]);
        gWaveSamples[8] += nSamplesToLoad * 2;
        return cmd;
    } else {
        aLoadBuffer(cmd++, noteSubEu->sound.samples, DMEM_UNCOMPRESSED_NOTE, 0x80);
        if (unk6 != 0) {
            samplePosInt = (samplePosInt * D_801304C0[unk6 >> 2]) / D_801304C0[unk6 & 3];
        }
        samplePosInt &= 0x3F;
        temp_v0 = 0x40 - samplePosInt;
        if (temp_v0 < nSamplesToLoad) {
            repeats = ((nSamplesToLoad - temp_v0 + 0x3F) / 0x40);
            if (repeats != 0) {
                aDuplicate(cmd++, repeats, DMEM_UNCOMPRESSED_NOTE, DMEM_UNCOMPRESSED_NOTE + 0x80, 0x80);
            }
        }
        synthState->samplePosInt = samplePosInt;
    }
    return cmd;
}

Acmd* AudioSynth_NoteApplyHeadsetPanEffects(Acmd* cmd, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s32 bufLen,
                                            s32 flags, s32 side) {
    u16 dest;
    u16 pitch;
    u8 prevPanShift;
    u8 panShift;

    switch (side) {
        case 1:
            dest = DMEM_LEFT_CH;
            panShift = noteSubEu->headsetPanRight;
            prevPanShift = synthState->prevHeadsetPanRight;
            synthState->prevHeadsetPanLeft = 0;
            synthState->prevHeadsetPanRight = panShift;
            break;
        case 2:
            dest = DMEM_RIGHT_CH;
            panShift = noteSubEu->headsetPanLeft;
            prevPanShift = synthState->prevHeadsetPanLeft;
            synthState->prevHeadsetPanLeft = panShift;
            synthState->prevHeadsetPanRight = 0;
            break;
        default:
            return cmd;
    }

    if (flags != A_INIT) {
        // Slightly adjust the sample rate in order to fit a change in pan shift
        if (panShift != prevPanShift) {
            pitch = (((bufLen << 0xF) / 2) - 1) / ((bufLen + panShift - prevPanShift - 2) / 2);
            aSetBuffer(cmd++, 0, DMEM_NOTE_PAN_TEMP, DMEM_TEMP, bufLen + panShift - prevPanShift);
            aResampleZoh(cmd++, pitch, 0);
        } else {
            aDMEMMove(cmd++, DMEM_NOTE_PAN_TEMP, DMEM_TEMP, bufLen);
        }

        if (prevPanShift != 0) {
            aLoadBuffer(cmd++, &synthState->synthesisBuffers->panResampleState[0x8], DMEM_NOTE_PAN_TEMP,
                        ALIGN16(prevPanShift));
            aDMEMMove(cmd++, DMEM_TEMP, DMEM_NOTE_PAN_TEMP + prevPanShift, bufLen + panShift - prevPanShift);
        } else {
            aDMEMMove(cmd++, DMEM_TEMP, DMEM_NOTE_PAN_TEMP, bufLen + panShift);
        }
    } else {
        // Just shift right
        aDMEMMove(cmd++, DMEM_NOTE_PAN_TEMP, DMEM_TEMP, bufLen);
        aClearBuffer(cmd++, DMEM_NOTE_PAN_TEMP, panShift);
        aDMEMMove(cmd++, DMEM_TEMP, DMEM_NOTE_PAN_TEMP + panShift, bufLen);
    }

    if (panShift) {
        // Save excessive samples for next iteration
        aSaveBuffer(cmd++, DMEM_NOTE_PAN_TEMP + bufLen, &synthState->synthesisBuffers->panResampleState[0x8],
                    ALIGN16(panShift));
    }
    aAddMixer(cmd++, ALIGN64(bufLen), DMEM_NOTE_PAN_TEMP, dest, 0x7FFF);
    return cmd;
}
