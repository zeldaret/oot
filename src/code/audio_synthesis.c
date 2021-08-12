#include "ultra64.h"
#include "global.h"

Acmd* AudioSynth_LoadRingBuffer(Acmd* arg0, u16 arg1, u16 arg2, s32 arg3, SynthesisReverb* arg4);
Acmd* AudioSynth_SaveBuffer(Acmd* arg0, u16 arg1, u16 arg2, s32 arg3, s16* arg4);
Acmd* AudioSynth_SaveRingBuffer(Acmd* arg0, u16 arg1, u16 arg2, s32 arg3, SynthesisReverb* arg4);
Acmd* func_800DC384(s16* aiBuf, s32 aiBufLen, Acmd* cmd, s32 updateIdx);
Acmd* func_800DC910(s32 noteIdx, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s16* aiBuf, s32 aiBufLen,
                    Acmd* cmd, s32 updateIdx);
Acmd* func_800DD9F4(Acmd* arg0, NoteSubEu* arg1, NoteSynthesisState* arg2, s32 arg3);
Acmd* func_800DDB64(Acmd* cmd, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s32 arg3, s32 arg4, s32 arg5);
Acmd* func_800DD6CC(Acmd* cmd, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s32 aiBufLen, u16, s32, s32);
Acmd* func_800DD62C(Acmd* cmd, NoteSynthesisState* synthState, s32 count, u16 pitch, u16 inpDmem, s32 resampleFlags);
extern s16 D_8012FBAA[];

// 4 nops, part of ucode_disas?
#pragma GLOBAL_ASM("asm/non_matchings/code/audio_synthesis/pad_800DACB0.s")

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
    gAudioContext.unk_0x10 = 0;
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

Acmd* func_800DB330(Acmd* arg0, SynthesisReverb* reverb, s16 arg2) {
    ReverbRingBufferItem* bufItem = &reverb->items[reverb->curFrame][arg2];

    arg0 = AudioSynth_LoadRingBuffer(arg0, 0x3E0, bufItem->startPos, bufItem->lengthA, reverb);
    if (bufItem->lengthB != 0) {
        arg0 = AudioSynth_LoadRingBuffer(arg0, bufItem->lengthA + 0x3E0, 0, bufItem->lengthB, reverb);
    }
    return arg0;
}

Acmd* func_800DB3D8(Acmd* arg0, SynthesisReverb* arg1, s16 arg2) {
    ReverbRingBufferItem* temp_v1;

    temp_v1 = &arg1->items[arg1->curFrame][arg2];
    arg0 = AudioSynth_SaveRingBuffer(arg0, 0x3E0, temp_v1->startPos, temp_v1->lengthA, arg1);
    if (temp_v1->lengthB != 0) {
        arg0 = AudioSynth_SaveRingBuffer(arg0, temp_v1->lengthA + 0x3E0, 0, temp_v1->lengthB, arg1);
    }
    return arg0;
}

Acmd* func_800DB480(Acmd* arg0, SynthesisReverb* arg1) {
    void* temp_a2;
    void* temp_a3;

    aDMEMMove(arg0++, 0xC80, 0x720, 0x1A0);
    aMix(arg0++, 0x1A, arg1->unk_10, 0xE20, 0xC80);
    aMix(arg0++, 0x1A, arg1->unk_12, 0x720, 0xE20);
    return arg0;
}

Acmd* func_800DB4E4(Acmd* arg0, s32 arg1, SynthesisReverb* arg2, s16 arg3) {
    ReverbRingBufferItem* temp_v1;
    s16 temp_t0_2;
    s16 temp_t1_2;

    temp_v1 = &arg2->items[arg2->curFrame][arg3];
    temp_t0_2 = (temp_v1->startPos & 7) * 2;
    temp_t1_2 = ALIGN16(temp_t0_2 + temp_v1->lengthA);
    arg0 = AudioSynth_LoadRingBuffer(arg0, 0x3E0, temp_v1->startPos - (temp_t0_2 / 2), 0x1A0, arg2);
    if (temp_v1->lengthB != 0) {
        arg0 = AudioSynth_LoadRingBuffer(arg0, temp_t1_2 + 0x3E0, 0, 0x1A0 - temp_t1_2, arg2);
    }
    aSetBuffer(arg0++, 0, temp_t0_2 + 0x3E0, 0xC80, arg1 * 2);
    aResample(arg0++, arg2->resampleFlags, arg2->unk_0E, arg2->unk_30);
    aSetBuffer(arg0++, 0, temp_t0_2 + 0x580, 0xE20, arg1 * 2);
    aResample(arg0++, arg2->resampleFlags, arg2->unk_0E, arg2->unk_34);
    return arg0;
}

Acmd* func_800DB680(Acmd* cmd, SynthesisReverb* reverb, s16 bufIdx) {
    ReverbRingBufferItem* bufItem = &reverb->items[reverb->curFrame][bufIdx];

    aSetBuffer(cmd++, 0, 0xC80, 0x720, bufItem->unk_18 * 2);
    aResample(cmd++, reverb->resampleFlags, bufItem->unk_16, reverb->unk_38);

    cmd = AudioSynth_SaveBuffer(cmd, 0x720, bufItem->startPos, bufItem->lengthA, reverb->leftRingBuf);
    if (bufItem->lengthB != 0) {
        cmd = AudioSynth_SaveBuffer(cmd, bufItem->lengthA + 0x720, 0, bufItem->lengthB, reverb->leftRingBuf);
    }
    aSetBuffer(cmd++, 0, 0xE20, 0x720, bufItem->unk_18 * 2);
    aResample(cmd++, reverb->resampleFlags, bufItem->unk_16, reverb->unk_3C);
    cmd = AudioSynth_SaveBuffer(cmd, 0x720, bufItem->startPos, bufItem->lengthA, reverb->rightRingBuf);

    if (bufItem->lengthB != 0) {
        cmd = AudioSynth_SaveBuffer(cmd, bufItem->lengthA + 0x720, 0, bufItem->lengthB, reverb->rightRingBuf);
    }

    return cmd;
}

Acmd* func_800DB828(Acmd* arg0, s32 arg1, SynthesisReverb* arg2, s16 arg3) {
    ReverbRingBufferItem* temp_v1;
    s16 temp_t1;
    s16 temp_t2_2;

    temp_v1 = &arg2->items[arg2->curFrame][arg3];
    temp_v1->unk_14 = (temp_v1->unk_18 << 0xF) / arg1;
    temp_t1 = (temp_v1->startPos & 7) * 2;
    temp_v1->unk_16 = (arg1 << 0xF) / temp_v1->unk_18;
    temp_t2_2 = ALIGN16(temp_t1 + temp_v1->lengthA);
    arg0 = AudioSynth_LoadRingBuffer(arg0, 0x3E0, temp_v1->startPos - (temp_t1 / 2), 0x1A0, arg2);
    if (temp_v1->lengthB != 0) {
        arg0 = AudioSynth_LoadRingBuffer(arg0, temp_t2_2 + 0x3E0, 0, 0x1A0 - temp_t2_2, arg2);
    }
    aSetBuffer(arg0++, 0, temp_t1 + 0x3E0, 0xC80, arg1 * 2);
    aResample(arg0++, arg2->resampleFlags, temp_v1->unk_14, arg2->unk_30);
    aSetBuffer(arg0++, 0, temp_t1 + 0x580, 0xE20, arg1 * 2);
    aResample(arg0++, arg2->resampleFlags, temp_v1->unk_14, arg2->unk_34);
    return arg0;
}

Acmd* func_800DBA40(Acmd* arg0, s32 arg1, SynthesisReverb* arg2) {
    if (arg2->unk_270 != NULL) {
        aFilter(arg0++, 2, arg1, arg2->unk_270);
        aFilter(arg0++, arg2->resampleFlags, 0xC80, arg2->unk_278);
    }

    if (arg2->unk_274 != NULL) {
        aFilter(arg0++, 2, arg1, arg2->unk_274);
        aFilter(arg0++, arg2->resampleFlags, 0xE20, arg2->unk_27C);
    }
    return arg0;
}

Acmd* func_800DBAE8(Acmd* arg0, SynthesisReverb* arg1, s32 arg2) {
    SynthesisReverb* temp_a3;

    temp_a3 = &gAudioContext.synthesisReverbs[arg1->unk_05];
    if (temp_a3->downsampleRate == 1) {
        arg0 = func_800DB330(arg0, temp_a3, arg2);
        aMix(arg0++, 0x34, arg1->unk_08, 0xC80, 0x3E0);
        arg0 = func_800DB3D8(arg0, temp_a3, arg2);
    }
    return arg0;
}

void func_800DBB94(void) {
}

void func_800DBB9C(Acmd* arg0, s32 arg1, s32 arg2) {
    aClearBuffer(arg0, arg1, arg2);
}

void func_800DBBBC(void) {
}

void func_800DBBC4(void) {
}

void func_800DBBCC(void) {
}

void func_800DBBD4(Acmd* arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    aMix(arg0, arg1, arg2, arg3, arg4);
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

void func_800DBCD4(Acmd* arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4) {
    aEnvSetup1(arg0, arg1, arg2, arg3, arg4);
}

void func_800DBD08(void) {
}

void func_800DBD10(Acmd* arg0, s32 arg1, s32 arg2, s32 arg3) {
    aLoadBuffer(arg0, arg3, arg1, arg2);
}

void func_800DBD38(Acmd* arg0, s32 arg1, s32 arg2, s32 arg3) {
    aSaveBuffer(arg0, arg1, arg3, arg2);
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

void AudioSynth_UnkCmd17(Acmd* arg0, s32 arg1, s32 arg2) {
    aUnkCmd17(arg0, arg1, arg2);
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

Acmd* AudioSynth_SaveBuffer(Acmd* cmd, u16 dmem, u16 offset, s32 length, s16* buf) {
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
        func_800DBD38(cmd++, 0xC80, 0x340, reverb->items[reverb->curFrame][bufIdx].toDownsampleLeft);
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

#ifdef NON_EQUIVALENT
Acmd* func_800DC910(s32 noteIdx, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s16* aiBuf, s32 aiBufLen,
                    Acmd* cmd, s32 updateIdx) {
    AudioBankSample* sp150;
    AdpcmLoop* sp14C;
    s32 sp140;
    s32 sp13C;
    s32 sp138;
    u16 sp136;
    s32 sp120;
    s32 sp110;
    s32 sp104;
    s32 sp100;
    s32 spFC;
    s32 spD4;
    s32 spCC;
    s32 spC8;
    s32 spC0;
    s32 spBC;
    s32 spB0;
    u16 spAE;
    Note* sp9C;
    u32 sp8C;
    u32 sp88;
    u32 sp50;
    Acmd* temp_a0_3;
    Acmd* temp_v0;
    Acmd* temp_v0_10;
    Acmd* temp_v0_11;
    Acmd* temp_v0_12;
    Acmd* temp_v0_13;
    Acmd* temp_v0_8;
    Acmd* temp_v0_9;
    Acmd* temp_v1_3;
    NoteSubEu* temp_a1;
    NoteSynthesisState* temp_a2;
    s32 temp_a1_3;
    s32 temp_a2_2;
    s32 temp_a2_3;
    s32 temp_a2_4;
    s32 temp_s1;
    s32 temp_s1_2;
    s32 temp_s1_3;
    s32 temp_s4;
    s32 temp_t0_3;
    s32 temp_t1;
    s32 temp_t9;
    s32 temp_v0_3;
    s32 temp_v0_5;
    s32 temp_v0_7;
    s32 temp_v1;
    s32 temp_v1_4;
    s32 temp_v1_5;
    s32 temp_v1_6;
    s32 temp_t0;
    u16 temp_t6;
    u16 temp_v1_7;
    u32 temp_a3;
    u32 temp_a3_3;
    u32 temp_a3_4;
    u32 temp_a3_5;
    u32 temp_t0_2;
    u32 temp_v0_6;
    u8 temp_a1_4;
    AdpcmLoop* temp_a1_2;
    AudioBankSample* temp_v0_2;
    AdpcmBook* temp_v0_4;
    s32 phi_t1;
    u8 phi_v1;
    s32 phi_fp;
    s32 phi_t1_2;
    s32 phi_s3;
    s32 phi_s1;
    s32 phi_a1;
    s32 phi_t1_3;
    s32 phi_t0;
    s32 phi_s4;
    s32 phi_s0;
    s32 phi_s5;
    s32 phi_s6;
    s32 phi_s7;
    s32 phi_t1_4;
    s32 phi_v1_2;
    u8 phi_v1_3;
    s32 phi_v1_4;
    s32 phi_t1_5;
    s32 phi_a1_2;
    NoteSubEu* phi_s6_2;
    s32 phi_s1_2;
    NoteSubEu* phi_s6_3;

    sp8C = noteSubEu->bitField1.s.bookOffset;
    sp88 = noteSubEu->bitField0.s.finished;
    sp9C = &gAudioContext.notes[noteIdx];
    sp138 = 0;

    if (noteSubEu->bitField0.s.needsInit == 1) {
        synthState->restart = 0;
        synthState->unk_06 = 0;
        synthState->curVolLeft = 0;
        synthState->curVolRight = 0;
        synthState->samplePosInt = sp9C->unk_BC;
        synthState->samplePosFrac = noteSubEu->reverbVol;
        synthState->unk_05 = 0;
        synthState->prevHeadsetPanRight = 0;
        synthState->prevHeadsetPanLeft = 0;
        synthState->unk_1A = 1;
        sp9C->noteSubEu.bitField0.s.finished = 0;
        sp88 = 0;
        sp138 = 1;
    }

    sp136 = noteSubEu->resamplingRateFixedPoint;
    spC0 = noteSubEu->bitField1.s.isSyntheticWave + 1;
    temp_t0 = (sp136 * aiBufLen * 2) + synthState->unk_06;
    synthState->unk_06 = temp_t0;
    if (1 != synthState->unk_05) {}
    synthState->unk_05 = spC0;
    if (noteSubEu->bitField1.s.bit2) {
        sp50 = temp_t0 >> 0x10;
        cmd = func_800DD9F4(cmd, noteSubEu, synthState, sp50);
        spAE = (synthState->samplePosInt * 2) + 0x580;
        synthState->samplePosInt += sp50;

        // OLD BLOCK 94

    } else {
        sp50 = temp_t0 >> 0x10;
        sp150 = noteSubEu->sound.audioBankSound->sample;
        sp14C = sp150->loop;
        sp100 = sp14C->end;
        spB0 = 0;
        spBC = 0;
        sp110 = sp150->sampleAddr;
        for (spBC = 0; !sp88 && spBC < spC0; spBC++) {
            if (spC0 == 1) {
                phi_fp = sp50;
            } else if (sp50 & 1) {
                phi_fp = (sp50 & ~1) + (spBC * 2);
            } else {
                phi_fp = sp50;
            }

            if (sp150->bits4 == 0 || sp150->bits4 == 3) {
                if (gAudioContext.unk_0x10 != sp150->bits4 + 8) {
                    switch (sp8C) {
                        case 1:
                            gAudioContext.unk_0x10 = D_8012FBAA;
                            ;
                            break;
                        case 2:
                            gAudioContext.unk_0x10 = sp150->bits4 + 8;
                            break;
                        case 3:
                        default:
                            break;
                    }

                    aLoadADPCM(cmd++, sp150->book->order * 0x10 * sp150->book->npredictors, gAudioContext.unk_0x10);
                }
            }
            sp104 = 0;
            phi_s5 = 0;
            while (sp104 != phi_fp) {
                sp140 = 0;
                sp13C = 0;
                spFC = phi_fp - sp104;
                phi_s3 = synthState->samplePosInt & 0xF;
                if (phi_s3 == 0 && synthState->restart == 0) {
                    phi_s3 = 0x10;
                }
                if (spFC < (sp14C->end - synthState->samplePosInt)) {
                    phi_s1 = (s32)((spFC - (0x10 - phi_s3)) + 0xF) / 0x10;
                    phi_s0 = phi_s1 * 0x10;
                    phi_s6 = (0x10 - phi_s3);
                    phi_s7 = ((0x10 - phi_s3) + phi_s0) - spFC;
                } else {
                    phi_s0 = (sp14C->end - synthState->samplePosInt) - (0x10 - phi_s3);
                    phi_s6 = (0x10 - phi_s3);
                    if (phi_s0 <= 0) {
                        phi_s0 = 0;
                        phi_s6 = (sp14C->end - synthState->samplePosInt);
                    }
                    phi_s1 = (s32)(phi_s0 + 0xF) / 0x10;
                    if (sp14C->count != 0) {
                        sp13C = 1;
                        phi_s7 = 0;
                    } else {
                        sp140 = 1;
                        phi_s7 = 0;
                    }
                }
                switch (sp150->bits4) {
                    case 0:
                        spCC = 0x10;
                        spC8 = 0;
                        spD4 = 9;
                        goto block_39;
                    case 3:
                        spCC = 0x10;
                        spC8 = 0;
                        spD4 = 5;
                        goto block_39;
                    case 1:
                        spCC = 0x10;
                        spC8 = 0;
                        spD4 = 0x10;
                        goto block_39;
                    case 2:
                        sp138 = 0;
                        sp120 = 0;
                        sp104 = phi_fp;
                        func_800DBB9C(cmd++, 0x580, (phi_fp * 2) + 0x20);
                        phi_s5 = phi_fp;
                        break;
                    case 5:
                        sp138 = 0;
                        sp120 = 0;
                        sp104 = phi_fp;
                        func_800DBB9C(cmd++, 0x580, (phi_fp * 2) + 0x20);
                        phi_s5 = phi_fp;
                        break;
                        // OLD BLOCK 71
                        // OLD BLOCK 78

                    case 4:
                    block_39:
                        if (phi_s1 != 0) {
                            temp_v1_5 = (s32)((synthState->samplePosInt + spCC) - phi_s3) / 0x10;
                            if (sp150->bits2 == 0) {
                                phi_a1 = spC8 + (temp_v1_5 * spD4) + sp110;
                            } else if (sp150->bits2 != 1) {
                                phi_a1 =
                                    func_800E12DC(spC8 + (temp_v1_5 * spD4) + sp110, ((phi_s1 * spD4) + 0x1F) & ~0xF,
                                                  sp138, &synthState->sampleDmaIndex, sp150->bits2);
                            } else {
                                return cmd;
                            }

                            if (phi_a1 != 0) {
                                phi_t0 = phi_a1 & 0xF;
                                temp_v0_7 = ((phi_s1 * spD4) + 0x1F) & 0xFFF0;
                                aLoadBuffer(cmd++, phi_a1 - phi_t0, 0x940 - temp_v0_7, temp_v0_7);
                            } else {
                                phi_t0 = 0;
                                phi_s0 = 0;
                            }

                            if (synthState->restart) {
                                aSetLoop(cmd++, sp150->loop);
                                sp138 = 2;
                                synthState->restart = 0;
                            }

                            if (sp104 == 0) {
                                sp120 = phi_s3 * 2;
                                phi_s4 = 0;
                            } else {
                                phi_s4 = (phi_s5 + 0x1F) & ~0xF;
                            }
                            switch (sp150->bits4) {
                                case 0:
                                    aSetBuffer(cmd++, 0, ((0x940 - (((phi_s1 * spD4) + 0x1F) & 0xFFF0)) + phi_t0),
                                               phi_s4 + 0x580, phi_s0 * 2);
                                    aADPCMdec(cmd++, sp138, synthState->synthesisBuffers);
                                    break;
                                case 3:
                                    aSetBuffer(cmd++, 0, ((0x940 - (((phi_s1 * spD4) + 0x1F) & 0xFFF0)) + phi_t0),
                                               phi_s4 + 0x580, phi_s0 * 2);
                                    aADPCMdec(cmd++, sp138 | 4, synthState->synthesisBuffers);
                                    break;
                                case 1:
                                    AudioSynth_SetBuffer(cmd++, 0, 0x940 - (((phi_s1 * spD4) + 0x1F) & 0xFFF0) + phi_t0,
                                                         phi_s4 + 0x580, phi_s0 * 2);
                                    AudioSynth_UnkCmd17(cmd++, sp138, (s32)synthState->synthesisBuffers);
                                    break;
                            }

                            if (sp104 != 0) {
                                aDMEMMove(cmd++, phi_s4 + (phi_s3 * 2) + 0x580, phi_s5 + 0x580,
                                          (((phi_s0 + phi_s6) - phi_s7) * 2));
                            }

                            temp_v1_6 = (phi_s0 + phi_s6) - phi_s7;
                            temp_t1 = sp104 + temp_v1_6;

                            switch (sp138) {
                                case 1:
                                    sp120 = 0x20;
                                    phi_s5 = (phi_s0 * 2) + 0x20;
                                    break;
                                case 2:
                                    phi_s5 += (temp_v1_6 * 2);
                                    break;
                                default:
                                    if (phi_s5 != 0) {
                                        phi_s5 += (temp_v1_6 * 2);
                                    } else {
                                        phi_s5 = (phi_s3 + temp_v1_6) * 2;
                                    }
                                    break;
                            }

                            sp138 = 0;
                            break;
                        }
                }

                if (sp140 != 0) {
                    sp88 = 1;
                    func_800DBB9C(cmd++, phi_s5 + 0x580, (phi_fp - sp104) * 2);
                    sp9C->noteSubEu.bitField0.s.finished = 1;
                    func_800DB2C0(updateIdx, noteIdx);
                } else {
                    if (sp13C != 0) {
                        synthState->restart = 1;
                        synthState->samplePosInt = sp14C->start;
                    } else {
                        synthState->samplePosInt += spFC;
                    }
                }
                phi_v1_2 = spC0;
            }

            switch (spC0) {
                case 1:
                    spAE = sp120 + 0x580;
                    break;
                case 2:
                    break;
                default:
                    switch (spBC) {
                        case 0:
                            spAE = 0x3E0;
                            AudioSynth_InterL(cmd++, sp120 + 0x580, 0x3E0, ((phi_fp / 2) + 7) & ~7);
                            spB0 = phi_fp;
                            if (sp88 != 0) {
                                func_800DBB9C(cmd++, phi_fp + 0x3E0, phi_fp + 0x10);
                            }
                            break;
                        case 1:
                            AudioSynth_InterL(cmd++, sp120 + 0x580, spB0 + 0x3E0, ((phi_fp / 2) + 7) & ~7);
                            break;
                    }
            }
        }
    }

    sp138 = 0;
    if (noteSubEu->bitField0.s.needsInit == 1) {
        noteSubEu->bitField0.s.needsInit = 0;
        sp138 = 1;
    }

    cmd = func_800DD62C(cmd++, synthState, aiBufLen * 2, sp136, spAE, sp138);
    if (sp8C == 3) {
        AudioSynth_UnkCmd19(cmd++, 0x3C0, 0x3C0, aiBufLen * 2, 0);
    }

    if (sp8C == 2) {
        AudioSynth_UnkCmd3(cmd++, 0x3C0, 0x3C0, aiBufLen * 2);
    }

    phi_a1_2 = noteSubEu->unk_2;
    if (phi_a1_2 != 0) {
        if (phi_a1_2 < 0x10) {
            phi_a1_2 = 0x10;
        }
        AudioSynth_HiLoGain(cmd++, phi_a1_2, 0x3C0, 0, (aiBufLen * 2) + 0x20);
    }

    if (noteSubEu->unk_14 != 0) {
        AudioSynth_SetFilterCount(cmd++, aiBufLen * 2, noteSubEu->unk_14);
        AudioSynth_SetFilter(cmd++, sp138, 0x3C0, synthState->synthesisBuffers->mixEnvelopeState);
    }

    if (noteSubEu->unk_07 != 0 && noteSubEu->unk_10 != 0) {
        AudioSynth_DMemMove(cmd++, 0x3C0, 0x760, aiBufLen * 2);
        if (synthState->unk_1A != 0) {
            func_800DBB9C(cmd++, 0x760 - noteSubEu->unk_07, noteSubEu->unk_07);
            synthState->unk_1A = 0;
        } else {
            func_800DBD10(cmd++, 0x760 - noteSubEu->unk_07, noteSubEu->unk_07,
                          &synthState->synthesisBuffers->panSamplesBuffer[0x18]);
        }
        AudioSynth_SaveBuffer(cmd++, ((aiBufLen * 2) - noteSubEu->unk_07) + 0x3C0, noteSubEu->unk_07,
                              &synthState->synthesisBuffers->panSamplesBuffer[0x18], NULL);
        func_800DBBD4(cmd++, (aiBufLen * 2) >> 4, noteSubEu->unk_10, 0x760, 0x760 - noteSubEu->unk_07);
        AudioSynth_DMemMove(cmd++, 0x760 - noteSubEu->unk_07, 0x3C0, aiBufLen * 2);
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
    cmd = func_800DD6CC(cmd, noteSubEu, synthState, aiBufLen, 0x3C0, phi_s0, sp138);
    if (noteSubEu->bitField0.s.usesHeadsetPanEffects) {
        if (!(sp138 & 1)) {
            sp138 = 0;
        }
        cmd = func_800DDB64(cmd, noteSubEu, synthState, aiBufLen * 2, sp138, phi_s0);
    }
    return cmd;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/audio_synthesis/func_800DC910.s")
#endif

Acmd* func_800DD62C(Acmd* cmd, NoteSynthesisState* synthState, s32 count, u16 pitch, u16 inpDmem, s32 resampleFlags) {
    if (pitch == 0) {
        func_800DBB9C(cmd++, 0x3C0, count);
    } else {
        aSetBuffer(cmd++, 0, inpDmem, 0x3C0, count);
        aResample(cmd++, resampleFlags, pitch, synthState->synthesisBuffers->finalResampleState);
    }
    return cmd;
}

extern u32 D_801304A4;
extern u32 D_801304A8;
extern u32 D_801304AC;

Acmd* func_800DD6CC(Acmd* cmd, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s32 aiBufLen, u16 arg4, s32 arg5,
                    s32 arg6) {
    u32 phi_a1;
    u16 curVolLeft;
    u16 targetVolLeft;
    s32 phi_t1;
    s16 reverVol;
    u16 curVolRight;
    s16 phi_a3;
    s16 phi_t0;
    s16 sp52;
    s16 sp50;
    u16 targetVolRight;
    s32 pad;

    curVolLeft = synthState->curVolLeft;
    targetVolLeft = noteSubEu->targetVolLeft;
    targetVolLeft *= 0x10;
    reverVol = noteSubEu->reverbVol;
    curVolRight = synthState->curVolRight;
    targetVolRight = noteSubEu->targetVolRight;
    targetVolRight *= 0x10;

    phi_a3 = targetVolLeft != curVolLeft ? (targetVolLeft - curVolLeft) / (aiBufLen >> 3) : 0;
    phi_t0 = targetVolRight != curVolRight ? (targetVolRight - curVolRight) / (aiBufLen >> 3) : 0;

    sp50 = synthState->samplePosFrac;
    phi_t1 = sp50 & 0x7F;

    if (sp50 != reverVol) {
        sp52 = (((reverVol & 0x7F) - phi_t1) << 9) / (aiBufLen >> 3);
        synthState->samplePosFrac = reverVol;
    } else {
        sp52 = 0;
    }

    synthState->curVolLeft = curVolLeft + (phi_a3 * (aiBufLen >> 3));
    synthState->curVolRight = curVolRight + (phi_t0 * (aiBufLen >> 3));

    if (noteSubEu->bitField1.s.hasTwoAdpcmParts) {
        func_800DBB9C(cmd++, 0x5C0, 0x1A0);
        func_800DBCD4(cmd++, phi_t1 * 2, sp52, phi_a3, phi_t0);
        AudioSynth_EnvSetup2(cmd++, curVolLeft, curVolRight);
        switch (arg5) {
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
        aEnvSetup1(cmd++, phi_t1 * 2, sp52, phi_a3, phi_t0);
        aEnvSetup2(cmd++, curVolLeft, curVolRight);
        phi_a1 = D_801304AC;
    }

    aEnvMixer(cmd++, arg4, aiBufLen, (sp50 & 0x80) >> 7, noteSubEu->bitField0.s.stereoHeadsetEffects,
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
        func_800DBD10(cmd++, 0x580, ALIGN16(arg3 * 2), gWaveSamples[8]);
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

#ifdef NON_MATCHING
Acmd* func_800DDB64(Acmd* cmd, NoteSubEu* noteSubEu, NoteSynthesisState* synthState, s32 arg3, s32 arg4, s32 arg5) {
    s32 phi_v0;
    s32 phi_v1;
    s32 phi_t0;

    switch (arg5) {
        case 1:
            phi_t0 = 0x940;
            phi_v1 = noteSubEu->headsetPanRight;
            phi_v0 = synthState->prevHeadsetPanRight;
            synthState->prevHeadsetPanLeft = 0;
            synthState->prevHeadsetPanRight = phi_v1;
            break;
        case 2:
            phi_t0 = 0xAE0;
            phi_v1 = noteSubEu->headsetPanLeft;
            phi_v0 = synthState->prevHeadsetPanLeft;
            synthState->prevHeadsetPanLeft = phi_v1;
            synthState->prevHeadsetPanRight = 0;
            break;
        default:
            return cmd;
    }

    if (arg4 != 1) {
        if (phi_v0 != phi_v1) {
            aSetBuffer(cmd++, 0, 0x5C0, 0x3C0, arg3 + phi_v1 - phi_v0);
            aResampleZOH(cmd++, (u16)((((arg3 << 0xF) / 2) - 1) / ((arg3 + phi_v1 - phi_v0 - 2) / 2)), 0);
        } else {
            aDMEMMove(cmd++, 0x5C0, 0x3C0, arg3);
        }

        if (phi_v0 != 0) {
            aLoadBuffer(cmd++, &synthState->synthesisBuffers->panResampleState[0x8], 0x5C0, ALIGN16(phi_v0));
            aDMEMMove(cmd++, 0x3C0, 0x5C0 + phi_v0, arg3 + phi_v1 - phi_v0);
        } else {
            aDMEMMove(cmd++, 0x3C0, 0x5C0, arg3 + phi_v1);
        }
    } else {
        aDMEMMove(cmd++, 0x5C0, 0x3C0, arg3);
        aClearBuffer(cmd++, 0x5C0, phi_v1);
        aDMEMMove(cmd++, 0x3C0, 0x5C0 + phi_v1, arg3);
    }

    if (phi_v1 != 0) {
        aSaveBuffer(cmd++, 0x5C0 + arg3, &synthState->synthesisBuffers->panResampleState[0x8], ALIGN16(phi_v1));
    }
    aAddMixer(cmd++, ((arg3 + 0x3F) & ~0x3F), 0x5C0, phi_t0, 0x7FFF);
    return cmd;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/audio_synthesis/func_800DDB64.s")
#endif
