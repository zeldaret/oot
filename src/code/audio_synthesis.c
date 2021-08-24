#include "ultra64.h"
#include "global.h"

Acmd* AudioSynth_LoadRingBuffer(Acmd* cmd, u16 arg1, u16 arg2, s32 arg3, SynthesisReverb* arg4);
Acmd* AudioSynth_SaveBufferOffset(Acmd* cmd, u16 arg1, u16 arg2, s32 arg3, s16* arg4);
Acmd* AudioSynth_SaveRingBuffer(Acmd* cmd, u16 arg1, u16 arg2, s32 arg3, SynthesisReverb* arg4);
Acmd* func_800DC384(s16* aiBuf, s32 aiBufLen, Acmd* cmd, s32 updateIdx);
Acmd* func_800DC910(s32 noteIndex, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s16* aiBuf, s32 aiBufLen,
                    Acmd* cmd, s32 updateIdx);
Acmd* func_800DD9F4(Acmd* cmd, NoteSubEu* arg1, NoteSynthesisState* arg2, s32 arg3);
Acmd* func_800DDB64(Acmd* cmd, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s32 bufLen, s32 flags, s32 side);
Acmd* func_800DD6CC(Acmd* cmd, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s32 aiBufLen, u16, s32, s32);
Acmd* func_800DD62C(Acmd* cmd, NoteSynthesisState* synthState, s32 count, u16 pitch, u16 inpDmem, s32 resampleFlags);
extern s16 D_8012FBAA[];

void AudioSynth_InitNextRingBuf(s32 chunkSize, s32 bufIdx, s32 reverbIdx) {
    ReverbRingBufferItem* bufItem;
    s32 pad[3];
    SynthesisReverb* reverb = &gAudioContext.synthesisReverbs[reverbIdx];
    s32 temp_a0_2;
    s32 temp_a0_4;
    s32 sampleCnt;
    s32 extraSamples;
    s32 i;
    s32 j;

    if (reverb->downsampleRate >= 2) {
        if (reverb->framesToIgnore == 0) {
            bufItem = &reverb->items[reverb->curFrame][bufIdx];
            // inval dcache
            Audio_osInvalDCache(bufItem->toDownsampleLeft, 0x340);

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

    bufItem = &reverb->items[reverb->curFrame][bufIdx];
    sampleCnt = chunkSize / reverb->downsampleRate;
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
    bufItem->chunkLen = chunkSize;

    if (reverb->unk_14 != 0) {
        temp_a0_4 = reverb->unk_14 + temp_a0_2;
        if (temp_a0_4 >= reverb->bufSizePerChan) {
            temp_a0_4 -= reverb->bufSizePerChan;
        }
        bufItem = &reverb->items2[reverb->curFrame][bufIdx];
        sampleCnt = chunkSize / reverb->downsampleRate;
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
        bufItem->chunkLen = chunkSize;
    }
}

void func_800DB03C(s32 arg0) {
    NoteSubEu* temp_v0_2;
    NoteSubEu* subEu;
    s32 t;
    s32 i;

    t = gAudioContext.maxSimultaneousNotes * arg0;
    for (i = 0; i < gAudioContext.maxSimultaneousNotes; i++) {
        subEu = &gAudioContext.notes[i].noteSubEu;
        temp_v0_2 = &gAudioContext.noteSubsEu[t + i];
        if (subEu->bitField0.s.enabled) {
            subEu->bitField0.s.needsInit = 0;
        } else {
            temp_v0_2->bitField0.s.enabled = 0;
        }

        subEu->unk_06 = 0;
    }
}

Acmd* AudioSynth_Update(Acmd* cmdStart, s32* cmdCnt, s16* aiStart, s32 aiBufLen) {
    s32 chunkSize;
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
            chunkSize = aiBufLen;
        } else if ((aiBufLen / i) >= gAudioContext.audioBufferParameters.samplesPerUpdateMax) {
            chunkSize = gAudioContext.audioBufferParameters.samplesPerUpdateMax;
        } else if (gAudioContext.audioBufferParameters.samplesPerUpdateMin >= (aiBufLen / i)) {
            chunkSize = gAudioContext.audioBufferParameters.samplesPerUpdateMin;
        } else {
            chunkSize = gAudioContext.audioBufferParameters.samplesPerUpdate;
        }

        for (j = 0; j < gAudioContext.numSynthesisReverbs; j++) {
            if (gAudioContext.synthesisReverbs[j].useReverb) {
                AudioSynth_InitNextRingBuf(chunkSize, gAudioContext.audioBufferParameters.updatesPerFrame - i, j);
            }
        }

        cmdP = func_800DC384(aiBufP, chunkSize, cmdP, gAudioContext.audioBufferParameters.updatesPerFrame - i);
        aiBufLen -= chunkSize;
        aiBufP += chunkSize * 2;
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

void func_800DB2C0(s32 arg0, s32 arg1) {
    NoteSubEu* temp_v1;
    s32 i;

    for (i = arg0 + 1; i < gAudioContext.audioBufferParameters.updatesPerFrame; i++) {
        temp_v1 = &gAudioContext.noteSubsEu[(gAudioContext.maxSimultaneousNotes * i) + arg1];
        if (!temp_v1->bitField0.s.needsInit) {
            temp_v1->bitField0.s.enabled = 0;
        } else {
            break;
        }
    }
}

Acmd* func_800DB330(Acmd* cmd, SynthesisReverb* reverb, s16 arg2) {
    ReverbRingBufferItem* bufItem = &reverb->items[reverb->curFrame][arg2];

    cmd = AudioSynth_LoadRingBuffer(cmd, 0x3E0, bufItem->startPos, bufItem->lengthA, reverb);
    if (bufItem->lengthB != 0) {
        cmd = AudioSynth_LoadRingBuffer(cmd, bufItem->lengthA + 0x3E0, 0, bufItem->lengthB, reverb);
    }
    return cmd;
}

Acmd* func_800DB3D8(Acmd* cmd, SynthesisReverb* arg1, s16 arg2) {
    ReverbRingBufferItem* temp_v1;

    temp_v1 = &arg1->items[arg1->curFrame][arg2];
    cmd = AudioSynth_SaveRingBuffer(cmd, 0x3E0, temp_v1->startPos, temp_v1->lengthA, arg1);
    if (temp_v1->lengthB != 0) {
        cmd = AudioSynth_SaveRingBuffer(cmd, temp_v1->lengthA + 0x3E0, 0, temp_v1->lengthB, arg1);
    }
    return cmd;
}

Acmd* func_800DB480(Acmd* cmd, SynthesisReverb* arg1) {
    aDMEMMove(cmd++, 0xC80, 0x720, 0x1A0);
    aMix(cmd++, 0x1A, arg1->unk_10, 0xE20, 0xC80);
    aMix(cmd++, 0x1A, arg1->unk_12, 0x720, 0xE20);
    return cmd;
}

Acmd* func_800DB4E4(Acmd* cmd, s32 arg1, SynthesisReverb* arg2, s16 arg3) {
    ReverbRingBufferItem* temp_v1;
    s16 temp_t0_2;
    s16 temp_t1_2;

    temp_v1 = &arg2->items[arg2->curFrame][arg3];
    temp_t0_2 = (temp_v1->startPos & 7) * 2;
    temp_t1_2 = ALIGN16(temp_t0_2 + temp_v1->lengthA);
    cmd = AudioSynth_LoadRingBuffer(cmd, 0x3E0, temp_v1->startPos - (temp_t0_2 / 2), 0x1A0, arg2);
    if (temp_v1->lengthB != 0) {
        cmd = AudioSynth_LoadRingBuffer(cmd, temp_t1_2 + 0x3E0, 0, 0x1A0 - temp_t1_2, arg2);
    }
    aSetBuffer(cmd++, 0, temp_t0_2 + 0x3E0, 0xC80, arg1 * 2);
    aResample(cmd++, arg2->resampleFlags, arg2->unk_0E, arg2->unk_30);
    aSetBuffer(cmd++, 0, temp_t0_2 + 0x580, 0xE20, arg1 * 2);
    aResample(cmd++, arg2->resampleFlags, arg2->unk_0E, arg2->unk_34);
    return cmd;
}

Acmd* func_800DB680(Acmd* cmd, SynthesisReverb* reverb, s16 bufIdx) {
    ReverbRingBufferItem* bufItem = &reverb->items[reverb->curFrame][bufIdx];

    aSetBuffer(cmd++, 0, 0xC80, 0x720, bufItem->unk_18 * 2);
    aResample(cmd++, reverb->resampleFlags, bufItem->unk_16, reverb->unk_38);

    cmd = AudioSynth_SaveBufferOffset(cmd, 0x720, bufItem->startPos, bufItem->lengthA, reverb->leftRingBuf);
    if (bufItem->lengthB != 0) {
        cmd = AudioSynth_SaveBufferOffset(cmd, bufItem->lengthA + 0x720, 0, bufItem->lengthB, reverb->leftRingBuf);
    }
    aSetBuffer(cmd++, 0, 0xE20, 0x720, bufItem->unk_18 * 2);
    aResample(cmd++, reverb->resampleFlags, bufItem->unk_16, reverb->unk_3C);
    cmd = AudioSynth_SaveBufferOffset(cmd, 0x720, bufItem->startPos, bufItem->lengthA, reverb->rightRingBuf);

    if (bufItem->lengthB != 0) {
        cmd = AudioSynth_SaveBufferOffset(cmd, bufItem->lengthA + 0x720, 0, bufItem->lengthB, reverb->rightRingBuf);
    }

    return cmd;
}

Acmd* func_800DB828(Acmd* cmd, s32 arg1, SynthesisReverb* arg2, s16 arg3) {
    ReverbRingBufferItem* temp_v1;
    s16 temp_t1;
    s16 temp_t2_2;

    temp_v1 = &arg2->items[arg2->curFrame][arg3];
    temp_v1->unk_14 = (temp_v1->unk_18 << 0xF) / arg1;
    temp_t1 = (temp_v1->startPos & 7) * 2;
    temp_v1->unk_16 = (arg1 << 0xF) / temp_v1->unk_18;
    temp_t2_2 = ALIGN16(temp_t1 + temp_v1->lengthA);
    cmd = AudioSynth_LoadRingBuffer(cmd, 0x3E0, temp_v1->startPos - (temp_t1 / 2), 0x1A0, arg2);
    if (temp_v1->lengthB != 0) {
        cmd = AudioSynth_LoadRingBuffer(cmd, temp_t2_2 + 0x3E0, 0, 0x1A0 - temp_t2_2, arg2);
    }
    aSetBuffer(cmd++, 0, temp_t1 + 0x3E0, 0xC80, arg1 * 2);
    aResample(cmd++, arg2->resampleFlags, temp_v1->unk_14, arg2->unk_30);
    aSetBuffer(cmd++, 0, temp_t1 + 0x580, 0xE20, arg1 * 2);
    aResample(cmd++, arg2->resampleFlags, temp_v1->unk_14, arg2->unk_34);
    return cmd;
}

Acmd* func_800DBA40(Acmd* cmd, s32 arg1, SynthesisReverb* arg2) {
    if (arg2->unk_270 != NULL) {
        aFilter(cmd++, 2, arg1, arg2->unk_270);
        aFilter(cmd++, arg2->resampleFlags, 0xC80, arg2->unk_278);
    }

    if (arg2->unk_274 != NULL) {
        aFilter(cmd++, 2, arg1, arg2->unk_274);
        aFilter(cmd++, arg2->resampleFlags, 0xE20, arg2->unk_27C);
    }
    return cmd;
}

Acmd* func_800DBAE8(Acmd* cmd, SynthesisReverb* arg1, s32 arg2) {
    SynthesisReverb* temp_a3;

    temp_a3 = &gAudioContext.synthesisReverbs[arg1->unk_05];
    if (temp_a3->downsampleRate == 1) {
        cmd = func_800DB330(cmd, temp_a3, arg2);
        aMix(cmd++, 0x34, arg1->unk_08, 0xC80, 0x3E0);
        cmd = func_800DB3D8(cmd, temp_a3, arg2);
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

void AudioSynth_SetBuffer(Acmd* cmd, s32 flag, s32 dmemIn, s32 dmemOut, s32 count) {
    aSetBuffer(cmd, flag, dmemIn, dmemOut, count);
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

void func_800DBCD4(Acmd* cmd, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
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

Acmd* func_800DBEB0(Acmd* cmd, s32 arg1, SynthesisReverb* reverb, s16 arg3) {
    ReverbRingBufferItem* ringBufferItem = &reverb->items[reverb->curFrame][arg3];

    cmd = AudioSynth_LoadRingBuffer(cmd, 0xC80, ringBufferItem->startPos, ringBufferItem->lengthA, reverb);
    if (ringBufferItem->lengthB != 0) {
        cmd = AudioSynth_LoadRingBuffer(cmd, ringBufferItem->lengthA + 0xC80, 0, ringBufferItem->lengthB, reverb);
    }

    return cmd;
}

Acmd* func_800DBF5C(Acmd* cmd, s32 arg1, SynthesisReverb* reverb, s16 bufIdx) {
    ReverbRingBufferItem* bufItem = &reverb->items2[reverb->curFrame][bufIdx];

    cmd = AudioSynth_LoadRingBuffer(cmd, 0xC80, bufItem->startPos, bufItem->lengthA, reverb);
    if (bufItem->lengthB != 0) {
        cmd = AudioSynth_LoadRingBuffer(cmd, bufItem->lengthA + 0xC80, 0, bufItem->lengthB, reverb);
    }
    return cmd;
}

Acmd* AudioSynth_LoadRingBuffer(Acmd* cmd, u16 dmem, u16 startPos, s32 length, SynthesisReverb* reverb) {
    aLoadBuffer(cmd++, &reverb->leftRingBuf[startPos], dmem, length);
    aLoadBuffer(cmd++, &reverb->rightRingBuf[startPos], dmem + 0x1A0, length);
    return cmd;
}

Acmd* AudioSynth_SaveRingBuffer(Acmd* cmd, u16 dmem, u16 startPos, s32 length, SynthesisReverb* reverb) {
    aSaveBuffer(cmd++, dmem, &reverb->leftRingBuf[startPos], length);
    aSaveBuffer(cmd++, dmem + 0x1A0, &reverb->rightRingBuf[startPos], length);
    return cmd;
}

Acmd* AudioSynth_SaveBufferOffset(Acmd* cmd, u16 dmem, u16 offset, s32 length, s16* buf) {
    aSaveBuffer(cmd++, dmem, &buf[offset], length);
    return cmd;
}

Acmd* func_800DC124(Acmd* cmd, s32 arg1, SynthesisReverb* reverb, s16 arg3) {
    if (reverb->downsampleRate == 1) {
        cmd = func_800DBF5C(cmd, arg1, reverb, arg3);
    }

    return cmd;
}

Acmd* func_800DC164(Acmd* cmd, s32 arg1, SynthesisReverb* reverb, s16 arg3) {
    if (reverb->downsampleRate == 1) {
        if (reverb->unk_18 != 0) {
            cmd = func_800DB828(cmd, arg1, reverb, arg3);
        } else {
            cmd = func_800DBEB0(cmd, arg1, reverb, arg3);
        }
    } else {
        cmd = func_800DB4E4(cmd, arg1, reverb, arg3);
    }
    return cmd;
}

Acmd* func_800DC1D8(Acmd* cmd, SynthesisReverb* reverb, s16 bufIdx) {
    ReverbRingBufferItem* bufItem = &reverb->items[reverb->curFrame][bufIdx];

    if (reverb->downsampleRate == 1) {
        if (reverb->unk_18 != 0) {
            cmd = func_800DB680(cmd, reverb, bufIdx);
        } else {
            cmd = AudioSynth_SaveRingBuffer(cmd, 0xC80, bufItem->startPos, bufItem->lengthA, reverb);
            if (bufItem->lengthB != 0) {
                cmd = AudioSynth_SaveRingBuffer(cmd, bufItem->lengthA + 0xC80, 0, bufItem->lengthB, reverb);
            }
        }
    } else {
        AudioSynth_SaveBuffer(cmd++, 0xC80, 0x340, reverb->items[reverb->curFrame][bufIdx].toDownsampleLeft);
    }

    reverb->resampleFlags = 0;
    return cmd;
}

Acmd* func_800DC2DC(Acmd* cmd, SynthesisReverb* reverb, s16 bufIdx) {
    ReverbRingBufferItem* bufItem = &reverb->items2[reverb->curFrame][bufIdx];

    cmd = AudioSynth_SaveRingBuffer(cmd, 0xC80, bufItem->startPos, bufItem->lengthA, reverb);
    if (bufItem->lengthB != 0) {
        cmd = AudioSynth_SaveRingBuffer(cmd, bufItem->lengthA + 0xC80, 0, bufItem->lengthB, reverb);
    }
    return cmd;
}

Acmd* func_800DC384(s16* aiBuf, s32 aiBufLen, Acmd* cmd, s32 updateIdx) {
    u8 sp9C[0x5C];
    s16 phi_s2;
    s16 phi_s4;
    SynthesisReverb* temp_t8;
    s32 useReverb;
    s32 t;
    s32 i;
    NoteSubEu* phi_v0;
    NoteSubEu* phi_v0_2;
    s32 unk14;

    t = gAudioContext.maxSimultaneousNotes * updateIdx;
    phi_s2 = 0;
    if (gAudioContext.numSynthesisReverbs == 0) {
        for (i = 0; i < gAudioContext.maxSimultaneousNotes; i++) {
            if (gAudioContext.noteSubsEu[t + i].bitField0.s.enabled) {
                sp9C[phi_s2++] = i;
            }
        }
    } else {
        for (phi_s4 = 0; phi_s4 < gAudioContext.numSynthesisReverbs; phi_s4++) {
            for (i = 0; i < gAudioContext.maxSimultaneousNotes; i++) {
                phi_v0 = &gAudioContext.noteSubsEu[t + i];
                if (phi_v0->bitField0.s.enabled && phi_v0->bitField1.s.reverbIndex == phi_s4) {
                    sp9C[phi_s2++] = i;
                }
            }
        }

        for (i = 0; i < gAudioContext.maxSimultaneousNotes; i++) {
            phi_v0 = &gAudioContext.noteSubsEu[t + i];
            if (phi_v0->bitField0.s.enabled && phi_v0->bitField1.s.reverbIndex >= gAudioContext.numSynthesisReverbs) {
                sp9C[phi_s2++] = i;
            }
        }
    }

    aClearBuffer(cmd++, 0x940, 0x340);
    i = 0;
    for (phi_s4 = 0; phi_s4 < gAudioContext.numSynthesisReverbs; phi_s4++) {
        temp_t8 = &gAudioContext.synthesisReverbs[phi_s4];
        useReverb = temp_t8->useReverb;
        if (useReverb) {
            cmd = func_800DC164(cmd, aiBufLen, temp_t8, updateIdx);
            aMix(cmd++, 0x34, temp_t8->unk_0A, 0xC80, 0x940);
            unk14 = temp_t8->unk_14;
            if (unk14) {
                aDMEMMove(cmd++, 0xC80, 0x3E0, 0x340);
            }

            aMix(cmd++, 0x34, temp_t8->unk_0C + 0x8000, 0xC80, 0xC80);
            if ((temp_t8->unk_10 != 0) || (temp_t8->unk_12 != 0)) {
                cmd = func_800DB480(cmd, temp_t8);
            }

            if (unk14) {
                cmd = func_800DC1D8(cmd, temp_t8, updateIdx);
                if (temp_t8->unk_05 != -1) {
                    cmd = func_800DBAE8(cmd, temp_t8, updateIdx);
                }
                cmd = func_800DC124(cmd, aiBufLen, temp_t8, updateIdx);
                aMix(cmd++, 0x34, temp_t8->unk_16, 0x3E0, 0xC80);
            }
        }

        while (i < phi_s2) {
            phi_v0_2 = &gAudioContext.noteSubsEu[sp9C[i] + t];
            if (phi_v0_2->bitField1.s.reverbIndex == phi_s4) {
                cmd = func_800DC910(sp9C[i], phi_v0_2, &gAudioContext.notes[sp9C[i]].synthesisState, aiBuf, aiBufLen,
                                    cmd, updateIdx);
            } else {
                break;
            }
            i++;
        }

        if (useReverb) {
            if ((temp_t8->unk_270 != NULL) || (temp_t8->unk_274 != NULL)) {
                cmd = func_800DBA40(cmd, aiBufLen * 2, temp_t8);
            }
            if (unk14) {
                cmd = func_800DC2DC(cmd, temp_t8, updateIdx);
            } else {
                cmd = func_800DC1D8(cmd, temp_t8, updateIdx);
                if (temp_t8->unk_05 != -1) {
                    cmd = func_800DBAE8(cmd, temp_t8, updateIdx);
                }
            }
        }
    }

    while (i < phi_s2) {
        cmd = func_800DC910(sp9C[i], &gAudioContext.noteSubsEu[t + sp9C[i]],
                            &gAudioContext.notes[sp9C[i]].synthesisState, aiBuf, aiBufLen, cmd, updateIdx);
        i++;
    }

    updateIdx = aiBufLen * 2;
    aInterleave(cmd++, updateIdx, 0x3C0, 0x940, 0xAE0);
    aSaveBuffer(cmd++, 0x3C0, aiBuf, updateIdx * 2);

    return cmd;
}

Acmd* func_800DC910(s32 noteIndex, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s16* aiBuf, s32 aiBufLen,
                    Acmd* cmd, s32 updateIdx) {
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
    s32 phi_s0_2;
    s32 resampledTempLen;
    u16 noteSamplesDmemAddrBeforeResampling;
    s32 temp_mult;
    s32 thing;
    s32 s5;
    Note* note;
    u32 nSamplesToLoad;
    u16 unk7;
    u16 unkE;
    s16* thing4;
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

    if (synthState->numAdpcmParts == 1 && nParts == 2) {
    } else if (synthState->numAdpcmParts == 2 && nParts == 1) {
    } else {
    }

    synthState->numAdpcmParts = nParts;

    if (noteSubEu->bitField1.s.isSyntheticWave) {
        cmd = func_800DD9F4(cmd, noteSubEu, synthState, nSamplesToLoad);
        // loopInfo = loopInfo;
        noteSamplesDmemAddrBeforeResampling = 0x580 + (synthState->samplePosInt * 2);
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
                        AudioSynth_ClearBuffer(cmd++, 0x580, (samplesLenAdjusted * 2) + 0x20);
                        flags = A_CONTINUE;
                        sp120 = 0;
                        nAdpcmSamplesProcessed = samplesLenAdjusted;
                        s5 = samplesLenAdjusted;
                        goto skip;
                    case 5:
                        AudioSynth_ClearBuffer(cmd++, 0x580, (samplesLenAdjusted * 2) + 0x20);
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
                    addr = 0x940 - aligned;
                    aLoadBuffer(cmd++, phi_a1 - phi_t0, addr, aligned);
                } else {
                    phi_s0 = 0;
                    phi_t0 = 0;
                }

                phi_s0_2 = phi_s0;
                if (synthState->restart) {
                    aSetLoop(cmd++, audioBankSample->loop->state);
                    flags = A_LOOP;
                    synthState->restart = false;
                }

                nSamplesInThisIteration = phi_s0_2 + phi_s6 - phi_s7;
                if (nAdpcmSamplesProcessed == 0) {
                    if (1) {}
                    sp120 = phi_s3 * 2;
                } else {
                    phi_s4 = ALIGN16(s5 + 16);
                }
                switch (audioBankSample->codec) {
                    case CODEC_ADPCM:
                        aligned = ALIGN16((phi_s1 * spD4) + 0x10);
                        addr = 0x940 - aligned;
                        aSetBuffer(cmd++, 0, addr + phi_t0, 0x580 + phi_s4, phi_s0_2 * 2);
                        aADPCMdec(cmd++, flags, synthState->synthesisBuffers->adpcmdecState);
                        break;
                    case 3:
                        aligned = ALIGN16((phi_s1 * spD4) + 0x10);
                        addr = 0x940 - aligned;
                        aSetBuffer(cmd++, 0, addr + phi_t0, 0x580 + phi_s4, phi_s0_2 * 2);
                        aADPCMdec(cmd++, flags | 4, synthState->synthesisBuffers->adpcmdecState);
                        break;
                    case CODEC_S8:
                        aligned = ALIGN16((phi_s1 * spD4) + 0x10);
                        addr = 0x940 - aligned;
                        AudioSynth_SetBuffer(cmd++, 0, addr + phi_t0, 0x580 + phi_s4, phi_s0_2 * 2);
                        AudioSynth_S8Dec(cmd++, flags, synthState->synthesisBuffers->adpcmdecState);
                        break;
                }

                if (nAdpcmSamplesProcessed != 0) {
                    aDMEMMove(cmd++, 0x580 + phi_s4 + (phi_s3 * 2), 0x580 + s5,
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
                    AudioSynth_ClearBuffer(cmd++, 0x580 + s5, (samplesLenAdjusted - nAdpcmSamplesProcessed) * 2);
                    finished = true;
                    note->noteSubEu.bitField0.s.finished = true;
                    func_800DB2C0(updateIdx, noteIndex);
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
                    noteSamplesDmemAddrBeforeResampling = 0x580 + sp120;
                    break;
                case 2:
                    switch (curPart) {
                        case 0:
                            AudioSynth_InterL(cmd++, 0x580 + sp120, 0x3E0, ((samplesLenAdjusted / 2) + 7) & ~7);
                            resampledTempLen = samplesLenAdjusted;
                            noteSamplesDmemAddrBeforeResampling = 0x3E0;
                            if (finished) {
                                AudioSynth_ClearBuffer(cmd++, noteSamplesDmemAddrBeforeResampling + resampledTempLen, samplesLenAdjusted + 0x10);
                            }
                            break;
                        case 1:
                            AudioSynth_InterL(cmd++, 0x580 + sp120, resampledTempLen + 0x3E0, ((samplesLenAdjusted / 2) + 7) & ~7);
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

    cmd = func_800DD62C(cmd, synthState, aiBufLen * 2, resamplingRateFixedPoint, noteSamplesDmemAddrBeforeResampling, flags);
    if (bookOffset == 3) {
        AudioSynth_UnkCmd19(cmd++, 0x3C0, 0x3C0, aiBufLen * 2, 0);
    }

    if (bookOffset == 2) {
        AudioSynth_UnkCmd3(cmd++, 0x3C0, 0x3C0, aiBufLen * 2);
    }

    phi_a1_2 = noteSubEu->unk_2;
    if (phi_a1_2 != 0) {
        if (phi_a1_2 < 0x10) {
            phi_a1_2 = 0x10;
        }
        AudioSynth_HiLoGain(cmd++, phi_a1_2, 0x3C0, 0, (aiBufLen * 2) + 0x20);
    }

    thing4 = noteSubEu->unk_14;
    if (thing4 != 0) {
        AudioSynth_SetFilterCount(cmd++, aiBufLen * 2, thing4);
        AudioSynth_SetFilter(cmd++, flags, 0x3C0, synthState->synthesisBuffers->mixEnvelopeState);
    }

    unk7 = noteSubEu->unk_07;
    unkE = noteSubEu->unk_0E;
    buf = &synthState->synthesisBuffers->panSamplesBuffer[0x18];
    if (unk7 != 0 && noteSubEu->unk_0E != 0) {
        AudioSynth_DMemMove(cmd++, 0x3C0, 0x760, aiBufLen * 2);
        thing = 0x760 - unk7;
        if (synthState->unk_1A != 0) {
            AudioSynth_ClearBuffer(cmd++, thing, unk7);
            synthState->unk_1A = 0;
        } else {
            AudioSynth_LoadBuffer(cmd++, thing, unk7, buf);
        }
        AudioSynth_SaveBuffer(cmd++, 0x3C0 + (aiBufLen * 2) - unk7, unk7, buf);
        AudioSynth_Mix(cmd++, (aiBufLen * 2) >> 4, unkE, 0x760, thing);
        AudioSynth_DMemMove(cmd++, thing, 0x3C0, aiBufLen * 2);
    } else {
        synthState->unk_1A = 1;
    }

    if ((noteSubEu->headsetPanRight != 0) || (synthState->prevHeadsetPanRight != 0)) {
        phi_s0 = 1;
    } else if ((noteSubEu->headsetPanLeft != 0) || synthState->prevHeadsetPanLeft != 0) {
        phi_s0 = 2;
    } else {
        phi_s0 = 0;
    }
    cmd = func_800DD6CC(cmd, noteSubEu, synthState, aiBufLen, 0x3C0, phi_s0, flags);
    if (noteSubEu->bitField1.s.usesHeadsetPanEffects2) {
        if (!(flags & A_INIT)) {
            flags = A_CONTINUE;
        }
        cmd = func_800DDB64(cmd, noteSubEu, synthState, aiBufLen * 2, flags, phi_s0);
    }
    return cmd;
}

Acmd* func_800DD62C(Acmd* cmd, NoteSynthesisState* synthState, s32 count, u16 pitch, u16 inpDmem, s32 resampleFlags) {
    if (pitch == 0) {
        AudioSynth_ClearBuffer(cmd++, 0x3C0, count);
    } else {
        aSetBuffer(cmd++, 0, inpDmem, 0x3C0, count);
        aResample(cmd++, resampleFlags, pitch, synthState->synthesisBuffers->finalResampleState);
    }
    return cmd;
}

extern u32 D_801304A4;
extern u32 D_801304A8;
extern u32 D_801304AC;

Acmd* func_800DD6CC(Acmd* cmd, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s32 aiBufLen, u16 arg4, s32 headsetPanSettings,
                    s32 arg6) {
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
    targetVolLeft *= 0x10;
    reverbVol = noteSubEu->reverbVol;
    curVolRight = synthState->curVolRight;
    targetVolRight = noteSubEu->targetVolRight;
    targetVolRight *= 0x10;

    rampLeft = targetVolLeft != curVolLeft ? (targetVolLeft - curVolLeft) / (aiBufLen >> 3) : 0;
    rampRight = targetVolRight != curVolRight ? (targetVolRight - curVolRight) / (aiBufLen >> 3) : 0;

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
        AudioSynth_ClearBuffer(cmd++, 0x5C0, 0x1A0);
        func_800DBCD4(cmd++, phi_t1 * 2, rampReverb, rampLeft, rampRight);
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

    aEnvMixer(cmd++, arg4, aiBufLen, (sourceReverbVol & 0x80) >> 7, noteSubEu->bitField0.s.stereoHeadsetEffects,
              noteSubEu->bitField0.s.usesHeadsetPanEffects, noteSubEu->bitField0.s.stereoStrongRight,
              noteSubEu->bitField0.s.stereoStrongLeft, phi_a1);
    return cmd;
}

extern u8 D_801304C0[];
Acmd* func_800DD9F4(Acmd* cmd, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s32 arg3) {
    s32 temp_v0;
    s32 temp_t0;
    s32 samplePosInt;

    temp_t0 = noteSubEu->unk_06;
    samplePosInt = synthState->samplePosInt;
    if (noteSubEu->bitField1.s.bookOffset != 0) {
        AudioSynth_LoadBuffer(cmd++, 0x580, ALIGN16(arg3 * 2), gWaveSamples[8]);
        gWaveSamples[8] += arg3 * 2;
        return cmd;
    } else {
        aLoadBuffer(cmd++, noteSubEu->sound.samples, 0x580, 0x80);
        if (temp_t0 != 0) {
            samplePosInt = (samplePosInt * D_801304C0[temp_t0 >> 2]) / D_801304C0[temp_t0 & 3];
        }
        samplePosInt &= 0x3F;
        temp_v0 = 0x40 - samplePosInt;
        if (temp_v0 < arg3 && ((arg3 - temp_v0 + 0x3F) / 0x40) != 0) {
            aDuplicate(cmd++, ((arg3 - temp_v0 + 0x3F) / 0x40), 0x580, 0x600, 0x80);
        }
        synthState->samplePosInt = samplePosInt;
    }
    return cmd;
}

Acmd* func_800DDB64(Acmd* cmd, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s32 bufLen, s32 flags, s32 side) {
    u16 dest;
    u16 pitch;
    u8 prevPanShift;
    u8 panShift;

    switch (side) {
        case 1:
            dest = 0x940;
            panShift = noteSubEu->headsetPanRight;
            prevPanShift = synthState->prevHeadsetPanRight;
            synthState->prevHeadsetPanLeft = 0;
            synthState->prevHeadsetPanRight = panShift;
            break;
        case 2:
            dest = 0xAE0;
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
            aSetBuffer(cmd++, 0, 0x5C0, 0x3C0, bufLen + panShift - prevPanShift);
            aResampleZoh(cmd++, pitch, 0);
        } else {
            aDMEMMove(cmd++, 0x5C0, 0x3C0, bufLen);
        }

        if (prevPanShift != 0) {
            aLoadBuffer(cmd++, &synthState->synthesisBuffers->panResampleState[0x8], 0x5C0, ALIGN16(prevPanShift));
            aDMEMMove(cmd++, 0x3C0, 0x5C0 + prevPanShift, bufLen + panShift - prevPanShift);
        } else {
            aDMEMMove(cmd++, 0x3C0, 0x5C0, bufLen + panShift);
        }
    } else {
        // Just shift right
        aDMEMMove(cmd++, 0x5C0, 0x3C0, bufLen);
        aClearBuffer(cmd++, 0x5C0, panShift);
        aDMEMMove(cmd++, 0x3C0, 0x5C0 + panShift, bufLen);
    }

    if (panShift) {
        // Save excessive samples for next iteration
        aSaveBuffer(cmd++, 0x5C0 + bufLen, &synthState->synthesisBuffers->panResampleState[0x8], ALIGN16(panShift));
    }
    aAddMixer(cmd++, ((bufLen + 0x3F) & ~0x3F), 0x5C0, dest, 0x7FFF);
    return cmd;
}
