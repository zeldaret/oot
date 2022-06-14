#include "ultra64.h"
#include "global.h"

#define PORTAMENTO_IS_SPECIAL(x) ((x).mode & 0x80)
#define PORTAMENTO_MODE(x) ((x).mode & ~0x80)
#define PORTAMENTO_MODE_1 1
#define PORTAMENTO_MODE_2 2
#define PORTAMENTO_MODE_3 3
#define PORTAMENTO_MODE_4 4
#define PORTAMENTO_MODE_5 5

u8 AudioSeq_ScriptReadU8(SeqScriptState* state);
s16 AudioSeq_ScriptReadS16(SeqScriptState* state);
u16 AudioSeq_ScriptReadCompressedU16(SeqScriptState* state);

u8 AudioSeq_GetInstrument(SequenceChannel* channel, u8 instId, Instrument** instOut, AdsrSettings* adsr);

/**
 * sSeqInstructionArgsTable is a table for each sequence instruction
 * that contains both how many arguments an instruction takes, as well
 * as the type of each argument
 *
 * sSeqInstructionArgsTable is bitpacked as follows:
 * abcUUUnn
 *
 * n - number of arguments that the sequence instruction takes
 *
 * a - bitFlag for the type of arg0 if it exists
 * b - bitFlag for the type of arg1 if it exists
 * c - bitFlag for the type of arg2 if it exists
 *
 * bitFlag on - argument is s16
 * bitFlag off - argument is u8
 *
 * U - Unused
 */

// CMD_ARGS_(NUMBER_OF_ARGS)
#define CMD_ARGS_0() 0
#define CMD_ARGS_1(arg0Type) (((sizeof(arg0Type) - 1) << 7) | 1)
#define CMD_ARGS_2(arg0Type, arg1Type) (((sizeof(arg0Type) - 1) << 7) | ((sizeof(arg1Type) - 1) << 6) | 2)
#define CMD_ARGS_3(arg0Type, arg1Type, arg2Type) \
    (((sizeof(arg0Type) - 1) << 7) | ((sizeof(arg1Type) - 1) << 6) | ((sizeof(arg2Type) - 1) << 5) | 3)

u8 sSeqInstructionArgsTable[] = {
    CMD_ARGS_1(s16),        // 0xB0
    CMD_ARGS_0(),           // 0xB1
    CMD_ARGS_1(s16),        // 0xB2
    CMD_ARGS_1(u8),         // 0xB3
    CMD_ARGS_0(),           // 0xB4
    CMD_ARGS_0(),           // 0xB5
    CMD_ARGS_0(),           // 0xB6
    CMD_ARGS_1(s16),        // 0xB7
    CMD_ARGS_1(u8),         // 0xB8
    CMD_ARGS_1(u8),         // 0xB9
    CMD_ARGS_1(u8),         // 0xBA
    CMD_ARGS_2(u8, s16),    // 0xBB
    CMD_ARGS_1(s16),        // 0xBC
    CMD_ARGS_2(s16, s16),   // 0xBD
    CMD_ARGS_0(),           // 0xBE
    CMD_ARGS_0(),           // 0xBF
    CMD_ARGS_0(),           // 0xC0
    CMD_ARGS_1(u8),         // 0xC1
    CMD_ARGS_1(s16),        // 0xC2
    CMD_ARGS_0(),           // 0xC3
    CMD_ARGS_0(),           // 0xC4
    CMD_ARGS_0(),           // 0xC5
    CMD_ARGS_1(u8),         // 0xC6
    CMD_ARGS_2(u8, s16),    // 0xC7
    CMD_ARGS_1(u8),         // 0xC8
    CMD_ARGS_1(u8),         // 0xC9
    CMD_ARGS_1(u8),         // 0xCA
    CMD_ARGS_1(s16),        // 0xCB
    CMD_ARGS_1(u8),         // 0xCC
    CMD_ARGS_1(u8),         // 0xCD
    CMD_ARGS_1(s16),        // 0xCE
    CMD_ARGS_1(s16),        // 0xCF
    CMD_ARGS_1(u8),         // 0xD0
    CMD_ARGS_1(u8),         // 0xD1
    CMD_ARGS_1(u8),         // 0xD2
    CMD_ARGS_1(u8),         // 0xD3
    CMD_ARGS_1(u8),         // 0xD4
    CMD_ARGS_1(u8),         // 0xD5
    CMD_ARGS_1(u8),         // 0xD6
    CMD_ARGS_1(u8),         // 0xD7
    CMD_ARGS_1(u8),         // 0xD8
    CMD_ARGS_1(u8),         // 0xD9
    CMD_ARGS_1(s16),        // 0xDA
    CMD_ARGS_1(u8),         // 0xDB
    CMD_ARGS_1(u8),         // 0xDC
    CMD_ARGS_1(u8),         // 0xDD
    CMD_ARGS_1(s16),        // 0xDE
    CMD_ARGS_1(u8),         // 0xDF
    CMD_ARGS_1(u8),         // 0xE0
    CMD_ARGS_3(u8, u8, u8), // 0xE1
    CMD_ARGS_3(u8, u8, u8), // 0xE2
    CMD_ARGS_1(u8),         // 0xE3
    CMD_ARGS_0(),           // 0xE4
    CMD_ARGS_1(u8),         // 0xE5
    CMD_ARGS_1(u8),         // 0xE6
    CMD_ARGS_1(s16),        // 0xE7
    CMD_ARGS_3(u8, u8, u8), // 0xE8
    CMD_ARGS_1(u8),         // 0xE9
    CMD_ARGS_0(),           // 0xEA
    CMD_ARGS_2(u8, u8),     // 0xEB
    CMD_ARGS_0(),           // 0xEC
    CMD_ARGS_1(u8),         // 0xED
    CMD_ARGS_1(u8),         // 0xEE
    CMD_ARGS_2(s16, u8),    // 0xEF
    CMD_ARGS_0(),           // 0xF0
    CMD_ARGS_1(u8),         // 0xF1
    // Control flow instructions (>= 0xF2) can only have 0 or 1 args
    CMD_ARGS_1(u8),  // 0xF2
    CMD_ARGS_1(u8),  // 0xF3
    CMD_ARGS_1(u8),  // 0xF4
    CMD_ARGS_1(s16), // 0xF5
    CMD_ARGS_0(),    // 0xF6
    CMD_ARGS_0(),    // 0xF7
    CMD_ARGS_1(u8),  // 0xF8
    CMD_ARGS_1(s16), // 0xF9
    CMD_ARGS_1(s16), // 0xFA
    CMD_ARGS_1(s16), // 0xFB
    CMD_ARGS_1(s16), // 0xFC
    CMD_ARGS_0(),    // 0xFD
    CMD_ARGS_0(),    // 0xFE
    CMD_ARGS_0(),    // 0xFF
};

/**
 * Read and return the argument from the sequence script for a control flow instruction.
 * Control flow instructions (>= 0xF2) can only have 0 or 1 args.
 * @return the argument value for a control flow instruction, or 0 if there is no argument
 */
u16 AudioSeq_GetScriptControlFlowArgument(SeqScriptState* state, u8 cmd) {
    u8 highBits = sSeqInstructionArgsTable[cmd - 0xB0];
    u8 lowBits = highBits & 3;
    u16 cmdArg = 0;

    // only 1 argument
    if (lowBits == 1) {
        if (!(highBits & 0x80)) {
            cmdArg = AudioSeq_ScriptReadU8(state);
        } else {
            cmdArg = AudioSeq_ScriptReadS16(state);
        }
    }
    return cmdArg;
}

s32 AudioSeq_HandleScriptFlowControl(SequencePlayer* seqPlayer, SeqScriptState* state, s32 cmd, s32 cmdArg) {
    switch (cmd) {
        case 0xFF:
            if (state->depth == 0) {
                return -1;
            }
            state->pc = state->stack[--state->depth];
            break;

        case 0xFD:
            return AudioSeq_ScriptReadCompressedU16(state);

        case 0xFE:
            return 1;

        case 0xFC:
            state->stack[state->depth++] = state->pc;
            state->pc = seqPlayer->seqData + (u16)cmdArg;
            break;

        case 0xF8:
            state->remLoopIters[state->depth] = cmdArg;
            state->stack[state->depth++] = state->pc;
            break;

        case 0xF7:
            state->remLoopIters[state->depth - 1]--;
            if (state->remLoopIters[state->depth - 1] != 0) {
                state->pc = state->stack[state->depth - 1];
            } else {
                state->depth--;
            }
            break;

        case 0xF6:
            state->depth--;
            break;

        case 0xF5:
        case 0xF9:
        case 0xFA:
        case 0xFB:
            if (cmd == 0xFA && state->value != 0) {
                break;
            }
            if (cmd == 0xF9 && state->value >= 0) {
                break;
            }
            if (cmd == 0xF5 && state->value < 0) {
                break;
            }
            state->pc = seqPlayer->seqData + (u16)cmdArg;
            break;

        case 0xF2:
        case 0xF3:
        case 0xF4:
            if (cmd == 0xF3 && state->value != 0) {
                break;
            }
            if (cmd == 0xF2 && state->value >= 0) {
                break;
            }
            state->pc += (s8)(cmdArg & 0xFF);
            break;
    }

    return 0;
}

void AudioSeq_InitSequenceChannel(SequenceChannel* channel) {
    s32 i;

    if (channel == &gAudioContext.sequenceChannelNone) {
        return;
    }

    channel->enabled = false;
    channel->finished = false;
    channel->stopScript = false;
    channel->stopSomething2 = false;
    channel->hasInstrument = false;
    channel->stereoHeadsetEffects = false;
    channel->transposition = 0;
    channel->largeNotes = false;
    channel->bookOffset = 0;
    channel->stereo.asByte = 0;
    channel->changes.asByte = 0xFF;
    channel->scriptState.depth = 0;
    channel->newPan = 0x40;
    channel->panChannelWeight = 0x80;
    channel->velocityRandomVariance = 0;
    channel->gateTimeRandomVariance = 0;
    channel->noteUnused = NULL;
    channel->reverbIndex = 0;
    channel->reverb = 0;
    channel->gain = 0;
    channel->notePriority = 3;
    channel->someOtherPriority = 1;
    channel->delay = 0;
    channel->adsr.envelope = gDefaultEnvelope;
    channel->adsr.decayIndex = 0xF0;
    channel->adsr.sustain = 0;
    channel->vibratoRateTarget = 0x800;
    channel->vibratoRateStart = 0x800;
    channel->vibratoExtentTarget = 0;
    channel->vibratoExtentStart = 0;
    channel->vibratoRateChangeDelay = 0;
    channel->vibratoExtentChangeDelay = 0;
    channel->vibratoDelay = 0;
    channel->filter = NULL;
    channel->unk_20 = 0;
    channel->unk_0F = 0;
    channel->volume = 1.0f;
    channel->volumeScale = 1.0f;
    channel->freqScale = 1.0f;

    for (i = 0; i < 8; i++) {
        channel->soundScriptIO[i] = -1;
    }

    channel->unused = false;
    Audio_InitNoteLists(&channel->notePool);
}

s32 AudioSeq_SeqChannelSetLayer(SequenceChannel* channel, s32 layerIdx) {
    SequenceLayer* layer;

    if (channel->layers[layerIdx] == NULL) {
        SequenceLayer* layer;
        layer = AudioSeq_AudioListPopBack(&gAudioContext.layerFreeList);
        channel->layers[layerIdx] = layer;
        if (layer == NULL) {
            channel->layers[layerIdx] = NULL;
            return -1;
        }
    } else {
        Audio_SeqLayerNoteDecay(channel->layers[layerIdx]);
    }

    layer = channel->layers[layerIdx];
    layer->channel = channel;
    layer->adsr = channel->adsr;
    layer->adsr.decayIndex = 0;
    layer->enabled = true;
    layer->finished = false;
    layer->stopSomething = false;
    layer->continuousNotes = false;
    layer->bit3 = false;
    layer->ignoreDrumPan = false;
    layer->bit1 = false;
    layer->notePropertiesNeedInit = false;
    layer->stereo.asByte = 0;
    layer->portamento.mode = 0;
    layer->scriptState.depth = 0;
    layer->gateTime = 0x80;
    layer->pan = 0x40;
    layer->transposition = 0;
    layer->delay = 0;
    layer->gateDelay = 0;
    layer->delay2 = 0;
    layer->note = NULL;
    layer->instrument = NULL;
    layer->freqScale = 1.0f;
    layer->bend = 1.0f;
    layer->velocitySquare2 = 0.0f;
    layer->instOrWave = 0xFF;
    return 0;
}

void AudioSeq_SeqLayerDisable(SequenceLayer* layer) {
    if (layer != NULL) {
        if (layer->channel != &gAudioContext.sequenceChannelNone && layer->channel->seqPlayer->finished == 1) {
            Audio_SeqLayerNoteRelease(layer);
        } else {
            Audio_SeqLayerNoteDecay(layer);
        }
        layer->enabled = false;
        layer->finished = true;
    }
}

void AudioSeq_SeqLayerFree(SequenceChannel* channel, s32 layerIdx) {
    SequenceLayer* layer = channel->layers[layerIdx];

    if (layer != NULL) {
        AudioSeq_AudioListPushBack(&gAudioContext.layerFreeList, &layer->listItem);
        AudioSeq_SeqLayerDisable(layer);
        channel->layers[layerIdx] = NULL;
    }
}

void AudioSeq_SequenceChannelDisable(SequenceChannel* channel) {
    s32 i;

    for (i = 0; i < 4; i++) {
        AudioSeq_SeqLayerFree(channel, i);
    }

    Audio_NotePoolClear(&channel->notePool);
    channel->enabled = false;
    channel->finished = true;
}

void AudioSeq_SequencePlayerSetupChannels(SequencePlayer* seqPlayer, u16 channelBits) {
    SequenceChannel* channel;
    s32 i;

    for (i = 0; i < 0x10; i++) {
        if (channelBits & 1) {
            channel = seqPlayer->channels[i];
            channel->fontId = seqPlayer->defaultFont;
            channel->muteBehavior = seqPlayer->muteBehavior;
            channel->noteAllocPolicy = seqPlayer->noteAllocPolicy;
        }
        channelBits = channelBits >> 1;
    }
}

void AudioSeq_SequencePlayerDisableChannels(SequencePlayer* seqPlayer, u16 channelBitsUnused) {
    SequenceChannel* channel;
    s32 i;

    for (i = 0; i < 0x10; i++) {
        channel = seqPlayer->channels[i];
        if (IS_SEQUENCE_CHANNEL_VALID(channel) == 1) {
            AudioSeq_SequenceChannelDisable(channel);
        }
    }
}

void AudioSeq_SequenceChannelEnable(SequencePlayer* seqPlayer, u8 channelIdx, void* script) {
    SequenceChannel* channel = seqPlayer->channels[channelIdx];
    s32 i;

    channel->enabled = true;
    channel->finished = false;
    channel->scriptState.depth = 0;
    channel->scriptState.pc = script;
    channel->delay = 0;
    for (i = 0; i < 4; i++) {
        if (channel->layers[i] != NULL) {
            AudioSeq_SeqLayerFree(channel, i);
        }
    }
}

void AudioSeq_SequencePlayerDisableAsFinished(SequencePlayer* seqPlayer) {
    seqPlayer->finished = true;
    AudioSeq_SequencePlayerDisable(seqPlayer);
}

void AudioSeq_SequencePlayerDisable(SequencePlayer* seqPlayer) {
    AudioSeq_SequencePlayerDisableChannels(seqPlayer, 0xFFFF);
    Audio_NotePoolClear(&seqPlayer->notePool);
    if (!seqPlayer->enabled) {
        return;
    }

    seqPlayer->enabled = false;
    seqPlayer->finished = true;

    if (AudioLoad_IsSeqLoadComplete(seqPlayer->seqId)) {
        AudioLoad_SetSeqLoadStatus(seqPlayer->seqId, LOAD_STATUS_DISCARDABLE);
    }
    if (AudioLoad_IsFontLoadComplete(seqPlayer->defaultFont)) {
        AudioLoad_SetFontLoadStatus(seqPlayer->defaultFont, LOAD_STATUS_MAYBE_DISCARDABLE);
    }

    if (seqPlayer->defaultFont == gAudioContext.fontCache.temporary.entries[0].id) {
        gAudioContext.fontCache.temporary.nextSide = 0;
    } else if (seqPlayer->defaultFont == gAudioContext.fontCache.temporary.entries[1].id) {
        gAudioContext.fontCache.temporary.nextSide = 1;
    }
}

void AudioSeq_AudioListPushBack(AudioListItem* list, AudioListItem* item) {
    if (item->prev == NULL) {
        list->prev->next = item;
        item->prev = list->prev;
        item->next = list;
        list->prev = item;
        list->u.count++;
        item->pool = list->pool;
    }
}

void* AudioSeq_AudioListPopBack(AudioListItem* list) {
    AudioListItem* item = list->prev;

    if (item == list) {
        return NULL;
    }

    item->prev->next = list;
    list->prev = item->prev;
    item->prev = NULL;
    list->u.count--;
    return item->u.value;
}

void AudioSeq_InitLayerFreelist(void) {
    s32 i;

    gAudioContext.layerFreeList.prev = &gAudioContext.layerFreeList;
    gAudioContext.layerFreeList.next = &gAudioContext.layerFreeList;
    gAudioContext.layerFreeList.u.count = 0;
    gAudioContext.layerFreeList.pool = NULL;

    for (i = 0; i < ARRAY_COUNT(gAudioContext.sequenceLayers); i++) {
        gAudioContext.sequenceLayers[i].listItem.u.value = &gAudioContext.sequenceLayers[i];
        gAudioContext.sequenceLayers[i].listItem.prev = NULL;
        AudioSeq_AudioListPushBack(&gAudioContext.layerFreeList, &gAudioContext.sequenceLayers[i].listItem);
    }
}

u8 AudioSeq_ScriptReadU8(SeqScriptState* state) {
    return *(state->pc++);
}

s16 AudioSeq_ScriptReadS16(SeqScriptState* state) {
    s16 ret = *(state->pc++) << 8;

    ret = *(state->pc++) | ret;
    return ret;
}

u16 AudioSeq_ScriptReadCompressedU16(SeqScriptState* state) {
    u16 ret = *(state->pc++);

    if (ret & 0x80) {
        ret = (ret << 8) & 0x7F00;
        ret = *(state->pc++) | ret;
    }
    return ret;
}

void AudioSeq_SeqLayerProcessScriptStep1(SequenceLayer* layer);
s32 AudioSeq_SeqLayerProcessScriptStep2(SequenceLayer* layer);
s32 AudioSeq_SeqLayerProcessScriptStep3(SequenceLayer* layer, s32 cmd);
s32 AudioSeq_SeqLayerProcessScriptStep4(SequenceLayer* layer, s32 cmd);
s32 AudioSeq_SeqLayerProcessScriptStep5(SequenceLayer* layer, s32 sameTunedSample);

void AudioSeq_SeqLayerProcessScript(SequenceLayer* layer) {
    s32 val;

    if (!layer->enabled) {
        return;
    }

    if (layer->delay > 1) {
        layer->delay--;
        if (!layer->stopSomething && layer->delay <= layer->gateDelay) {
            Audio_SeqLayerNoteDecay(layer);
            layer->stopSomething = true;
        }
        return;
    }

    AudioSeq_SeqLayerProcessScriptStep1(layer);
    val = AudioSeq_SeqLayerProcessScriptStep2(layer);
    if (val == -1) {
        return;
    }

    val = AudioSeq_SeqLayerProcessScriptStep3(layer, val);
    if (val != -1) {
        val = AudioSeq_SeqLayerProcessScriptStep4(layer, val);
    }
    if (val != -1) {
        AudioSeq_SeqLayerProcessScriptStep5(layer, val);
    }

    if (layer->stopSomething == true) {
        if ((layer->note != NULL) || layer->continuousNotes) {
            Audio_SeqLayerNoteDecay(layer);
        }
    }
}

void AudioSeq_SeqLayerProcessScriptStep1(SequenceLayer* layer) {
    if (!layer->continuousNotes) {
        Audio_SeqLayerNoteDecay(layer);
    } else if (layer->note != NULL && layer->note->playbackState.wantedParentLayer == layer) {
        Audio_SeqLayerNoteDecay(layer);
    }

    if (PORTAMENTO_MODE(layer->portamento) == PORTAMENTO_MODE_1 ||
        PORTAMENTO_MODE(layer->portamento) == PORTAMENTO_MODE_2) {
        layer->portamento.mode = 0;
    }
    layer->notePropertiesNeedInit = true;
}

s32 AudioSeq_SeqLayerProcessScriptStep5(SequenceLayer* layer, s32 sameTunedSample) {
    if (!layer->stopSomething && layer->tunedSample != NULL &&
        layer->tunedSample->sample->codec == CODEC_S16_INMEMORY && layer->tunedSample->sample->medium != MEDIUM_RAM) {
        layer->stopSomething = true;
        return -1;
    }

    if (layer->continuousNotes == true && layer->bit1 == 1) {
        return 0;
    }

    if (layer->continuousNotes == true && layer->note != NULL && layer->bit3 && sameTunedSample == true &&
        layer->note->playbackState.parentLayer == layer) {
        if (layer->tunedSample == NULL) {
            Audio_InitSyntheticWave(layer->note, layer);
        }
    } else {
        if (!sameTunedSample) {
            Audio_SeqLayerNoteDecay(layer);
        }
        layer->note = Audio_AllocNote(layer);
        if (layer->note != NULL && layer->note->playbackState.parentLayer == layer) {
            Audio_NoteVibratoInit(layer->note);
        }
    }

    if (layer->note != NULL && layer->note->playbackState.parentLayer == layer) {
        Note* note = layer->note;

        Audio_NotePortamentoInit(note);
    }
    return 0;
}

s32 AudioSeq_SeqLayerProcessScriptStep2(SequenceLayer* layer) {
    SequenceChannel* channel = layer->channel;
    SeqScriptState* state = &layer->scriptState;
    SequencePlayer* seqPlayer = channel->seqPlayer;
    u16 sp3A;
    u8 cmd;
    u16 cmdArg;
    u8 tempByte;

    for (;;) {
        cmd = AudioSeq_ScriptReadU8(state);
        if (cmd < 0xC1) {
            return cmd;
        }
        if (cmd >= 0xF2) {
            cmdArg = AudioSeq_GetScriptControlFlowArgument(state, cmd);

            if (AudioSeq_HandleScriptFlowControl(seqPlayer, state, cmd, cmdArg) == 0) {
                continue;
            }
            AudioSeq_SeqLayerDisable(layer);
            return -1;
        }

        switch (cmd) {
            case 0xC1: // layer_setshortnotevelocity
            case 0xCA: // layer_setpan
                tempByte = *(state->pc++);

                if (cmd == 0xC1) {
                    layer->velocitySquare = (f32)(tempByte * tempByte) / 16129.0f;
                } else {
                    layer->pan = tempByte;
                }
                break;

            case 0xC9: // layer_setshortnotegatetime
            case 0xC2: // layer_transpose; set transposition in semitones
                tempByte = *(state->pc++);

                if (cmd == 0xC9) {
                    layer->gateTime = tempByte;
                } else {
                    layer->transposition = tempByte;
                }
                break;

            case 0xC4: // layer_continuousnoteson
            case 0xC5: // layer_continuousnotesoff
                if (cmd == 0xC4) {
                    layer->continuousNotes = true;
                } else {
                    layer->continuousNotes = false;
                }
                layer->bit1 = false;
                Audio_SeqLayerNoteDecay(layer);
                break;

            case 0xC3: // layer_setshortnotedefaultdelay
                sp3A = AudioSeq_ScriptReadCompressedU16(state);
                layer->shortNoteDefaultDelay = sp3A;
                break;

            case 0xC6: // layer_setinstr
                cmd = AudioSeq_ScriptReadU8(state);
                if (cmd >= 0x7E) {
                    if (cmd == 0x7E) {
                        layer->instOrWave = 1;
                    } else if (cmd == 0x7F) {
                        layer->instOrWave = 0;
                    } else {
                        layer->instOrWave = cmd;
                        layer->instrument = NULL;
                    }

                    if (cmd == 0xFF) {
                        layer->adsr.decayIndex = 0;
                    }

                    break;
                }

                if ((layer->instOrWave = AudioSeq_GetInstrument(channel, cmd, &layer->instrument, &layer->adsr)) == 0) {
                    layer->instOrWave = 0xFF;
                }
                break;

            case 0xC7: // layer_portamento
                layer->portamento.mode = AudioSeq_ScriptReadU8(state);

                cmd = AudioSeq_ScriptReadU8(state);
                cmd += channel->transposition;
                cmd += layer->transposition;
                cmd += seqPlayer->transposition;

                if (cmd >= 0x80) {
                    cmd = 0;
                }

                layer->portamentoTargetNote = cmd;

                // If special, the next param is u8 instead of var
                if (PORTAMENTO_IS_SPECIAL(layer->portamento)) {
                    layer->portamentoTime = *(state->pc++);
                    break;
                }

                sp3A = AudioSeq_ScriptReadCompressedU16(state);
                layer->portamentoTime = sp3A;
                break;

            case 0xC8: // layer_disableportamento
                layer->portamento.mode = 0;
                break;

            case 0xCB:
                sp3A = AudioSeq_ScriptReadS16(state);
                layer->adsr.envelope = (EnvelopePoint*)(seqPlayer->seqData + sp3A);
                FALLTHROUGH;
            case 0xCF:
                layer->adsr.decayIndex = AudioSeq_ScriptReadU8(state);
                break;

            case 0xCC:
                layer->ignoreDrumPan = true;
                break;

            case 0xCD:
                layer->stereo.asByte = AudioSeq_ScriptReadU8(state);
                break;

            case 0xCE:
                tempByte = AudioSeq_ScriptReadU8(state);
                layer->bend = gBendPitchTwoSemitonesFrequencies[(tempByte + 0x80) & 0xFF];
                break;

            default:
                switch (cmd & 0xF0) {
                    case 0xD0: // layer_setshortnotevelocityfromtable
                        sp3A = seqPlayer->shortNoteVelocityTable[cmd & 0xF];
                        layer->velocitySquare = (f32)(sp3A * sp3A) / 16129.0f;
                        break;

                    case 0xE0: // layer_setshortnotegatetimefromtable
                        layer->gateTime = (u8)seqPlayer->shortNoteGateTimeTable[cmd & 0xF];
                        break;
                }
        }
    }
}

s32 AudioSeq_SeqLayerProcessScriptStep4(SequenceLayer* layer, s32 cmd) {
    s32 sameTunedSample = true;
    s32 instOrWave;
    s32 speed;
    f32 temp_f14;
    f32 temp_f2;
    Portamento* portamento;
    f32 freqScale;
    f32 freqScale2;
    TunedSample* tunedSample;
    Instrument* instrument;
    Drum* drum;
    SoundEffect* soundEffect;
    SequenceChannel* channel;
    SequencePlayer* seqPlayer;
    u8 semitone = cmd;
    u16 sfxId;
    s32 semitone2;
    s32 vel;
    f32 time;
    f32 tuning;

    instOrWave = layer->instOrWave;
    channel = layer->channel;
    seqPlayer = channel->seqPlayer;

    if (instOrWave == 0xFF) {
        if (!channel->hasInstrument) {
            return -1;
        }
        instOrWave = channel->instOrWave;
    }

    switch (instOrWave) {
        case 0:
            semitone += channel->transposition + layer->transposition;
            layer->semitone = semitone;
            drum = Audio_GetDrum(channel->fontId, semitone);
            if (drum == NULL) {
                layer->stopSomething = true;
                layer->delay2 = layer->delay;
                return -1;
            }
            tunedSample = &drum->tunedSample;
            layer->adsr.envelope = (EnvelopePoint*)drum->envelope;
            layer->adsr.decayIndex = (u8)drum->adsrDecayIndex;
            if (!layer->ignoreDrumPan) {
                layer->pan = drum->pan;
            }
            layer->tunedSample = tunedSample;
            layer->freqScale = tunedSample->tuning;
            break;

        case 1:
            layer->semitone = semitone;
            sfxId = (layer->transposition << 6) + semitone;
            soundEffect = Audio_GetSoundEffect(channel->fontId, sfxId);
            if (soundEffect == NULL) {
                layer->stopSomething = true;
                layer->delay2 = layer->delay + 1;
                return -1;
            }
            tunedSample = &soundEffect->tunedSample;
            layer->tunedSample = tunedSample;
            layer->freqScale = tunedSample->tuning;
            break;

        default:
            semitone += seqPlayer->transposition + channel->transposition + layer->transposition;
            semitone2 = semitone;
            layer->semitone = semitone;
            if (semitone >= 0x80) {
                layer->stopSomething = true;
                return -1;
            }
            if (layer->instOrWave == 0xFF) {
                instrument = channel->instrument;
            } else {
                instrument = layer->instrument;
            }

            if (layer->portamento.mode != 0) {
                portamento = &layer->portamento;
                vel = (semitone > layer->portamentoTargetNote) ? semitone : layer->portamentoTargetNote;

                if (instrument != NULL) {
                    tunedSample = Audio_GetInstrumentTunedSample(instrument, vel);
                    sameTunedSample = (layer->tunedSample == tunedSample);
                    layer->tunedSample = tunedSample;
                    tuning = tunedSample->tuning;
                } else {
                    layer->tunedSample = NULL;
                    tuning = 1.0f;
                    if (instOrWave >= 0xC0) {
                        layer->tunedSample = &gAudioContext.synthesisReverbs[instOrWave - 0xC0].tunedSample;
                    }
                }

                temp_f2 = gPitchFrequencies[semitone2] * tuning;
                temp_f14 = gPitchFrequencies[layer->portamentoTargetNote] * tuning;

                switch (PORTAMENTO_MODE(*portamento)) {
                    case PORTAMENTO_MODE_1:
                    case PORTAMENTO_MODE_3:
                    case PORTAMENTO_MODE_5:
                        freqScale2 = temp_f2;
                        freqScale = temp_f14;
                        break;

                    case PORTAMENTO_MODE_2:
                    case PORTAMENTO_MODE_4:
                        freqScale = temp_f2;
                        freqScale2 = temp_f14;
                        break;

                    default:
                        freqScale = temp_f2;
                        freqScale2 = temp_f2;
                        break;
                }

                portamento->extent = (freqScale2 / freqScale) - 1.0f;

                if (PORTAMENTO_IS_SPECIAL(*portamento)) {
                    speed = seqPlayer->tempo * 0x8000 / gAudioContext.tempoInternalToExternal;
                    if (layer->delay != 0) {
                        speed = speed * 0x100 / (layer->delay * layer->portamentoTime);
                    }
                } else {
                    speed = 0x20000 / (layer->portamentoTime * gAudioContext.audioBufferParameters.updatesPerFrame);
                }

                if (speed >= 0x7FFF) {
                    speed = 0x7FFF;
                } else if (speed < 1) {
                    speed = 1;
                }

                portamento->speed = speed;
                portamento->cur = 0;
                layer->freqScale = freqScale;
                if (PORTAMENTO_MODE(*portamento) == PORTAMENTO_MODE_5) {
                    layer->portamentoTargetNote = semitone;
                }
                break;
            }

            if (instrument != NULL) {
                tunedSample = Audio_GetInstrumentTunedSample(instrument, semitone);
                sameTunedSample = (tunedSample == layer->tunedSample);
                layer->tunedSample = tunedSample;
                layer->freqScale = gPitchFrequencies[semitone2] * tunedSample->tuning;
            } else {
                layer->tunedSample = NULL;
                layer->freqScale = gPitchFrequencies[semitone2];
                if (instOrWave >= 0xC0) {
                    layer->tunedSample = &gAudioContext.synthesisReverbs[instOrWave - 0xC0].tunedSample;
                }
            }
            break;
    }

    layer->delay2 = layer->delay;
    layer->freqScale *= layer->bend;
    if (layer->delay == 0) {
        if (layer->tunedSample != NULL) {
            time = (f32)layer->tunedSample->sample->loop->end;
        } else {
            time = 0.0f;
        }
        time *= seqPlayer->tempo;
        time *= gAudioContext.unk_2870;
        time /= layer->freqScale;
        if (time > 32766.0f) {
            time = 32766.0f;
        }
        layer->gateDelay = 0;
        layer->delay = (u16)(s32)time + 1;
        if (layer->portamento.mode != 0) {
            // (It's a bit unclear if 'portamento' has actually always been
            // set when this is reached...)
            if (PORTAMENTO_IS_SPECIAL(*portamento)) {
                s32 speed2;

                speed2 = seqPlayer->tempo * 0x8000 / gAudioContext.tempoInternalToExternal;
                speed2 = speed2 * 0x100 / (layer->delay * layer->portamentoTime);
                if (speed2 >= 0x7FFF) {
                    speed2 = 0x7FFF;
                } else if (speed2 < 1) {
                    speed2 = 1;
                }
                portamento->speed = speed2;
            }
        }
    }
    return sameTunedSample;
}

s32 AudioSeq_SeqLayerProcessScriptStep3(SequenceLayer* layer, s32 cmd) {
    SeqScriptState* state = &layer->scriptState;
    u16 delay;
    s32 velocity;
    SequenceChannel* channel = layer->channel;
    SequencePlayer* seqPlayer = channel->seqPlayer;
    s32 intDelta;
    f32 floatDelta;

    if (cmd == 0xC0) {
        layer->delay = AudioSeq_ScriptReadCompressedU16(state);
        layer->stopSomething = true;
        layer->bit1 = false;
        return -1;
    }

    layer->stopSomething = false;
    if (channel->largeNotes == 1) {
        switch (cmd & 0xC0) {
            case 0x00:
                delay = AudioSeq_ScriptReadCompressedU16(state);
                velocity = *(state->pc++);
                layer->gateTime = *(state->pc++);
                layer->lastDelay = delay;
                break;

            case 0x40:
                delay = AudioSeq_ScriptReadCompressedU16(state);
                velocity = *(state->pc++);
                layer->gateTime = 0;
                layer->lastDelay = delay;
                break;

            case 0x80:
                delay = layer->lastDelay;
                velocity = *(state->pc++);
                layer->gateTime = *(state->pc++);
                break;
        }

        if (velocity > 0x7F || velocity < 0) {
            velocity = 0x7F;
        }
        layer->velocitySquare = (f32)velocity * (f32)velocity / 16129.0f;
        cmd -= (cmd & 0xC0);
    } else {
        switch (cmd & 0xC0) {
            case 0x00:
                delay = AudioSeq_ScriptReadCompressedU16(state);
                layer->lastDelay = delay;
                break;

            case 0x40:
                delay = layer->shortNoteDefaultDelay;
                break;

            case 0x80:
                delay = layer->lastDelay;
                break;
        }
        cmd -= (cmd & 0xC0);
    }

    if (channel->velocityRandomVariance != 0) {
        floatDelta =
            layer->velocitySquare * (f32)(gAudioContext.audioRandom % channel->velocityRandomVariance) / 100.0f;
        if ((gAudioContext.audioRandom & 0x8000) != 0) {
            floatDelta = -floatDelta;
        }
        layer->velocitySquare2 = layer->velocitySquare + floatDelta;
        if (layer->velocitySquare2 < 0.0f) {
            layer->velocitySquare2 = 0.0f;
        } else if (layer->velocitySquare2 > 1.0f) {
            layer->velocitySquare2 = 1.0f;
        }
    } else {
        layer->velocitySquare2 = layer->velocitySquare;
    }

    layer->delay = delay;
    layer->gateDelay = (layer->gateTime * delay) >> 8;
    if (channel->gateTimeRandomVariance != 0) {
        //! @bug should probably be gateTimeRandomVariance
        intDelta = (layer->gateDelay * (gAudioContext.audioRandom % channel->velocityRandomVariance)) / 100;
        if ((gAudioContext.audioRandom & 0x4000) != 0) {
            intDelta = -intDelta;
        }
        layer->gateDelay += intDelta;
        if (layer->gateDelay < 0) {
            layer->gateDelay = 0;
        } else if (layer->gateDelay > layer->delay) {
            layer->gateDelay = layer->delay;
        }
    }

    if ((seqPlayer->muted && (channel->muteBehavior & (0x40 | 0x10)) != 0) || channel->stopSomething2) {
        layer->stopSomething = true;
        return -1;
    }
    if (seqPlayer->skipTicks != 0) {
        layer->stopSomething = true;
        return -1;
    }
    return cmd;
}

void AudioSeq_SetChannelPriorities(SequenceChannel* channel, u8 arg1) {
    if ((arg1 & 0xF) != 0) {
        channel->notePriority = arg1 & 0xF;
    }
    arg1 = arg1 >> 4;
    if (arg1 != 0) {
        channel->someOtherPriority = arg1;
    }
}

u8 AudioSeq_GetInstrument(SequenceChannel* channel, u8 instId, Instrument** instOut, AdsrSettings* adsr) {
    Instrument* inst = Audio_GetInstrumentInner(channel->fontId, instId);

    if (inst == NULL) {
        *instOut = NULL;
        return 0;
    }
    adsr->envelope = inst->envelope;
    adsr->decayIndex = inst->adsrDecayIndex;
    *instOut = inst;
    instId += 2;
    return instId;
}

void AudioSeq_SetInstrument(SequenceChannel* channel, u8 instId) {
    if (instId >= 0x80) {
        channel->instOrWave = instId;
        channel->instrument = NULL;
    } else if (instId == 0x7F) {
        channel->instOrWave = 0;
        channel->instrument = (Instrument*)1;
    } else if (instId == 0x7E) {
        channel->instOrWave = 1;
        channel->instrument = (Instrument*)2;
    } else if ((channel->instOrWave = AudioSeq_GetInstrument(channel, instId, &channel->instrument, &channel->adsr)) ==
               0) {
        channel->hasInstrument = false;
        return;
    }
    channel->hasInstrument = true;
}

void AudioSeq_SequenceChannelSetVolume(SequenceChannel* channel, u8 volume) {
    channel->volume = (f32)(s32)volume / 127.0f;
}

void AudioSeq_SequenceChannelProcessScript(SequenceChannel* channel) {
    s32 i;
    u8* data;
    u8* test;
    SequencePlayer* seqPlayer;

    if (channel->stopScript) {
        goto exit_loop;
    }
    seqPlayer = channel->seqPlayer;
    if (seqPlayer->muted && (channel->muteBehavior & 0x80)) {
        return;
    }

    if (channel->delay >= 2) {
        channel->delay--;
        goto exit_loop;
    }

    while (true) {
        SeqScriptState* scriptState = &channel->scriptState;
        s32 param;
        s16 pad1;
        u16 offset;
        u32 cmdArgs[3];
        s8 signedParam;
        u8 cmd = AudioSeq_ScriptReadU8(scriptState);
        u8 lowBits;
        u8 highBits;
        s32 result;
        s32 pad2;

        if (cmd >= 0xB0) {
            highBits = sSeqInstructionArgsTable[cmd - 0xB0];
            lowBits = highBits & 3;

            // read in arguments for the instruction
            for (i = 0; i < lowBits; i++, highBits <<= 1) {
                if (!(highBits & 0x80)) {
                    cmdArgs[i] = AudioSeq_ScriptReadU8(scriptState);
                } else {
                    cmdArgs[i] = AudioSeq_ScriptReadS16(scriptState);
                }
            }
            if (cmd >= 0xF2) {
                result = AudioSeq_HandleScriptFlowControl(seqPlayer, scriptState, cmd, cmdArgs[0]);

                if (result != 0) {
                    if (result == -1) {
                        AudioSeq_SequenceChannelDisable(channel);
                    } else {
                        channel->delay = result;
                    }
                    break;
                }
            } else {
                switch (cmd) {
                    case 0xEA:
                        channel->stopScript = true;
                        goto exit_loop;

                    case 0xF1:
                        Audio_NotePoolClear(&channel->notePool);
                        cmd = (u8)cmdArgs[0];
                        Audio_NotePoolFill(&channel->notePool, cmd);
                        break;

                    case 0xF0:
                        Audio_NotePoolClear(&channel->notePool);
                        break;

                    case 0xC2:
                        offset = (u16)cmdArgs[0];
                        channel->dynTable = (void*)&seqPlayer->seqData[offset];
                        break;

                    case 0xC5:
                        if (scriptState->value != -1) {

                            data = (*channel->dynTable)[scriptState->value];
                            offset = (u16)((data[0] << 8) + data[1]);

                            channel->dynTable = (void*)&seqPlayer->seqData[offset];
                        }
                        break;

                    case 0xEB:
                        result = (u8)cmdArgs[0];
                        cmd = (u8)cmdArgs[0];

                        if (seqPlayer->defaultFont != 0xFF) {
                            offset = ((u16*)gAudioContext.sequenceFontTable)[seqPlayer->seqId];
                            lowBits = gAudioContext.sequenceFontTable[offset];
                            cmd = gAudioContext.sequenceFontTable[offset + lowBits - result];
                        }

                        if (AudioHeap_SearchCaches(FONT_TABLE, CACHE_EITHER, cmd)) {
                            channel->fontId = cmd;
                        }

                        cmdArgs[0] = cmdArgs[1];
                        FALLTHROUGH;
                    case 0xC1:
                        cmd = (u8)cmdArgs[0];
                        AudioSeq_SetInstrument(channel, cmd);
                        break;

                    case 0xC3:
                        channel->largeNotes = false;
                        break;

                    case 0xC4:
                        channel->largeNotes = true;
                        break;

                    case 0xDF:
                        cmd = (u8)cmdArgs[0];
                        AudioSeq_SequenceChannelSetVolume(channel, cmd);
                        channel->changes.s.volume = true;
                        break;

                    case 0xE0:
                        cmd = (u8)cmdArgs[0];
                        channel->volumeScale = (f32)(s32)cmd / 128.0f;
                        channel->changes.s.volume = true;
                        break;

                    case 0xDE:
                        offset = (u16)cmdArgs[0];
                        channel->freqScale = (f32)(s32)offset / 32768.0f;
                        channel->changes.s.freqScale = true;
                        break;

                    case 0xD3:
                        cmd = (u8)cmdArgs[0];
                        cmd += 0x80;
                        channel->freqScale = gBendPitchOneOctaveFrequencies[cmd];
                        channel->changes.s.freqScale = true;
                        break;

                    case 0xEE:
                        cmd = (u8)cmdArgs[0];
                        cmd += 0x80;
                        channel->freqScale = gBendPitchTwoSemitonesFrequencies[cmd];
                        channel->changes.s.freqScale = true;
                        break;

                    case 0xDD:
                        cmd = (u8)cmdArgs[0];
                        channel->newPan = cmd;
                        channel->changes.s.pan = true;
                        break;

                    case 0xDC:
                        cmd = (u8)cmdArgs[0];
                        channel->panChannelWeight = cmd;
                        channel->changes.s.pan = true;
                        break;

                    case 0xDB:
                        signedParam = (s8)cmdArgs[0];
                        channel->transposition = signedParam;
                        break;

                    case 0xDA:
                        offset = (u16)cmdArgs[0];
                        channel->adsr.envelope = (EnvelopePoint*)&seqPlayer->seqData[offset];
                        break;

                    case 0xD9:
                        cmd = (u8)cmdArgs[0];
                        channel->adsr.decayIndex = cmd;
                        break;

                    case 0xD8:
                        cmd = (u8)cmdArgs[0];
                        channel->vibratoExtentTarget = cmd * 8;
                        channel->vibratoExtentStart = 0;
                        channel->vibratoExtentChangeDelay = 0;
                        break;

                    case 0xD7:
                        cmd = (u8)cmdArgs[0];
                        channel->vibratoRateChangeDelay = 0;
                        channel->vibratoRateTarget = cmd * 32;
                        channel->vibratoRateStart = cmd * 32;
                        break;

                    case 0xE2:
                        cmd = (u8)cmdArgs[0];
                        channel->vibratoExtentStart = cmd * 8;
                        cmd = (u8)cmdArgs[1];
                        channel->vibratoExtentTarget = cmd * 8;
                        cmd = (u8)cmdArgs[2];
                        channel->vibratoExtentChangeDelay = cmd * 16;
                        break;

                    case 0xE1:
                        cmd = (u8)cmdArgs[0];
                        channel->vibratoRateStart = cmd * 32;
                        cmd = (u8)cmdArgs[1];
                        channel->vibratoRateTarget = cmd * 32;
                        cmd = (u8)cmdArgs[2];
                        channel->vibratoRateChangeDelay = cmd * 16;
                        break;

                    case 0xE3:
                        cmd = (u8)cmdArgs[0];
                        channel->vibratoDelay = cmd * 16;
                        break;

                    case 0xD4:
                        cmd = (u8)cmdArgs[0];
                        channel->reverb = cmd;
                        break;

                    case 0xC6:
                        result = (u8)cmdArgs[0];
                        cmd = (u8)cmdArgs[0];

                        if (seqPlayer->defaultFont != 0xFF) {
                            offset = ((u16*)gAudioContext.sequenceFontTable)[seqPlayer->seqId];
                            lowBits = gAudioContext.sequenceFontTable[offset];
                            cmd = gAudioContext.sequenceFontTable[offset + lowBits - result];
                        }

                        if (AudioHeap_SearchCaches(FONT_TABLE, CACHE_EITHER, cmd)) {
                            channel->fontId = cmd;
                        }

                        break;

                    case 0xC7:
                        cmd = (u8)cmdArgs[0];
                        offset = (u16)cmdArgs[1];
                        test = &seqPlayer->seqData[offset];
                        test[0] = (u8)scriptState->value + cmd;
                        break;

                    case 0xC8:
                    case 0xCC:
                    case 0xC9:
                        signedParam = (s8)cmdArgs[0];

                        if (cmd == 0xC8) {
                            scriptState->value -= signedParam;
                        } else if (cmd == 0xCC) {
                            scriptState->value = signedParam;
                        } else {
                            scriptState->value &= signedParam;
                        }
                        break;

                    case 0xCD:
                        cmd = (u8)cmdArgs[0];
                        AudioSeq_SequenceChannelDisable(seqPlayer->channels[cmd]);
                        break;

                    case 0xCA:
                        cmd = (u8)cmdArgs[0];
                        channel->muteBehavior = cmd;
                        channel->changes.s.volume = true;
                        break;

                    case 0xCB:
                        offset = (u16)cmdArgs[0];
                        scriptState->value = *(seqPlayer->seqData + (u32)(offset + scriptState->value));
                        break;

                    case 0xCE:
                        offset = (u16)cmdArgs[0];
                        channel->unk_22 = offset;
                        break;

                    case 0xCF:
                        offset = (u16)cmdArgs[0];
                        test = &seqPlayer->seqData[offset];
                        test[0] = (channel->unk_22 >> 8) & 0xFF;
                        test[1] = channel->unk_22 & 0xFF;
                        break;

                    case 0xD0:
                        cmd = (u8)cmdArgs[0];
                        if (cmd & 0x80) {
                            channel->stereoHeadsetEffects = true;
                        } else {
                            channel->stereoHeadsetEffects = false;
                        }
                        channel->stereo.asByte = cmd & 0x7F;
                        break;

                    case 0xD1:
                        cmd = (u8)cmdArgs[0];
                        channel->noteAllocPolicy = cmd;
                        break;

                    case 0xD2:
                        cmd = (u8)cmdArgs[0];
                        channel->adsr.sustain = cmd;
                        break;

                    case 0xE5:
                        cmd = (u8)cmdArgs[0];
                        channel->reverbIndex = cmd;
                        break;

                    case 0xE4:
                        if (scriptState->value != -1) {
                            data = (*channel->dynTable)[scriptState->value];
                            //! @bug: Missing a stack depth check here
                            scriptState->stack[scriptState->depth++] = scriptState->pc;
                            offset = (u16)((data[0] << 8) + data[1]);
                            scriptState->pc = seqPlayer->seqData + offset;
                        }
                        break;

                    case 0xE6:
                        cmd = (u8)cmdArgs[0];
                        channel->bookOffset = cmd;
                        break;

                    case 0xE7:
                        offset = (u16)cmdArgs[0];
                        data = &seqPlayer->seqData[offset];
                        channel->muteBehavior = data[0];
                        data += 3;
                        channel->noteAllocPolicy = data[-2];
                        AudioSeq_SetChannelPriorities(channel, data[-1]);
                        channel->transposition = (s8)data[0];
                        data += 4;
                        channel->newPan = data[-3];
                        channel->panChannelWeight = data[-2];
                        channel->reverb = data[-1];
                        channel->reverbIndex = data[0];
                        //! @bug: Not marking reverb state as changed
                        channel->changes.s.pan = true;
                        break;

                    case 0xE8:
                        channel->muteBehavior = cmdArgs[0];
                        channel->noteAllocPolicy = cmdArgs[1];
                        cmd = (u8)cmdArgs[2];
                        AudioSeq_SetChannelPriorities(channel, cmd);
                        channel->transposition = (s8)AudioSeq_ScriptReadU8(scriptState);
                        channel->newPan = AudioSeq_ScriptReadU8(scriptState);
                        channel->panChannelWeight = AudioSeq_ScriptReadU8(scriptState);
                        channel->reverb = AudioSeq_ScriptReadU8(scriptState);
                        channel->reverbIndex = AudioSeq_ScriptReadU8(scriptState);
                        //! @bug: Not marking reverb state as changed
                        channel->changes.s.pan = true;
                        break;

                    case 0xEC:
                        channel->vibratoExtentTarget = 0;
                        channel->vibratoExtentStart = 0;
                        channel->vibratoExtentChangeDelay = 0;
                        channel->vibratoRateTarget = 0;
                        channel->vibratoRateStart = 0;
                        channel->vibratoRateChangeDelay = 0;
                        channel->filter = NULL;
                        channel->gain = 0;
                        channel->adsr.sustain = 0;
                        channel->velocityRandomVariance = 0;
                        channel->gateTimeRandomVariance = 0;
                        channel->unk_0F = 0;
                        channel->unk_20 = 0;
                        channel->bookOffset = 0;
                        channel->freqScale = 1.0f;
                        break;

                    case 0xE9:
                        AudioSeq_SetChannelPriorities(channel, (u8)cmdArgs[0]);
                        break;

                    case 0xED:
                        cmd = (u8)cmdArgs[0];
                        channel->gain = cmd;
                        break;

                    case 0xB0:
                        offset = (u16)cmdArgs[0];
                        data = seqPlayer->seqData + offset;
                        channel->filter = (s16*)data;
                        break;

                    case 0xB1:
                        channel->filter = NULL;
                        break;

                    case 0xB3:
                        cmd = cmdArgs[0];

                        if (channel->filter != NULL) {
                            lowBits = (cmd >> 4) & 0xF; // LowPassCutoff
                            cmd &= 0xF;                 // HighPassCutoff
                            AudioHeap_LoadFilter(channel->filter, lowBits, cmd);
                        }
                        break;

                    case 0xB2:
                        offset = (u16)cmdArgs[0];
                        channel->unk_22 = *(u16*)(seqPlayer->seqData + (u32)(offset + scriptState->value * 2));
                        break;

                    case 0xB4:
                        channel->dynTable = (void*)&seqPlayer->seqData[channel->unk_22];
                        break;

                    case 0xB5:
                        channel->unk_22 = ((u16*)(channel->dynTable))[scriptState->value];
                        break;

                    case 0xB6:
                        scriptState->value = (*channel->dynTable)[0][scriptState->value];
                        break;

                    case 0xB7:
                        channel->unk_22 = (cmdArgs[0] == 0) ? gAudioContext.audioRandom & 0xFFFF
                                                            : gAudioContext.audioRandom % cmdArgs[0];
                        break;

                    case 0xB8:
                        scriptState->value = (cmdArgs[0] == 0) ? gAudioContext.audioRandom & 0xFFFF
                                                               : gAudioContext.audioRandom % cmdArgs[0];
                        break;

                    case 0xBD:
                        result = Audio_NextRandom();
                        channel->unk_22 = (cmdArgs[0] == 0) ? (u32)result & 0xFFFF : (u32)result % cmdArgs[0];
                        channel->unk_22 += cmdArgs[1];
                        pad2 = (channel->unk_22 / 0x100) + 0x80; // i is wrong here
                        param = channel->unk_22 % 0x100;
                        channel->unk_22 = (pad2 << 8) | param;
                        break;

                    case 0xB9:
                        channel->velocityRandomVariance = cmdArgs[0];
                        break;

                    case 0xBA:
                        channel->gateTimeRandomVariance = cmdArgs[0];
                        break;

                    case 0xBB:
                        channel->unk_0F = cmdArgs[0];
                        channel->unk_20 = cmdArgs[1];
                        break;

                    case 0xBC:
                        channel->unk_22 += cmdArgs[0];
                        break;
                }
            }
        } else if (cmd >= 0x70) {
            lowBits = cmd & 0x7;

            if ((cmd & 0xF8) != 0x70 && lowBits >= 4) {
                lowBits = 0;
            }

            switch (cmd & 0xF8) {
                case 0x80:
                    if (channel->layers[lowBits] != NULL) {
                        scriptState->value = channel->layers[lowBits]->finished;
                    } else {
                        scriptState->value = -1;
                    }
                    break;

                case 0x88:
                    offset = AudioSeq_ScriptReadS16(scriptState);
                    if (!AudioSeq_SeqChannelSetLayer(channel, lowBits)) {
                        channel->layers[lowBits]->scriptState.pc = &seqPlayer->seqData[offset];
                    }
                    break;

                case 0x90:
                    AudioSeq_SeqLayerFree(channel, lowBits);
                    break;

                case 0x98:
                    if (scriptState->value != -1 && AudioSeq_SeqChannelSetLayer(channel, lowBits) != -1) {
                        data = (*channel->dynTable)[scriptState->value];
                        offset = (data[0] << 8) + data[1];
                        channel->layers[lowBits]->scriptState.pc = &seqPlayer->seqData[offset];
                    }
                    break;

                case 0x70:
                    channel->soundScriptIO[lowBits] = scriptState->value;
                    break;

                case 0x78:
                    pad1 = AudioSeq_ScriptReadS16(scriptState);
                    if (!AudioSeq_SeqChannelSetLayer(channel, lowBits)) {
                        channel->layers[lowBits]->scriptState.pc = &scriptState->pc[pad1];
                    }
                    break;
            }
        } else {
            lowBits = cmd & 0xF;

            switch (cmd & 0xF0) {
                case 0x00:
                    channel->delay = lowBits;
                    goto exit_loop;

                case 0x10:
                    if (lowBits < 8) {
                        channel->soundScriptIO[lowBits] = -1;
                        if (AudioLoad_SlowLoadSample(channel->fontId, scriptState->value,
                                                     &channel->soundScriptIO[lowBits]) == -1) {
                            break;
                        }
                    } else {
                        lowBits -= 8;
                        channel->soundScriptIO[lowBits] = -1;
                        if (AudioLoad_SlowLoadSample(channel->fontId, channel->unk_22 + 0x100,
                                                     &channel->soundScriptIO[lowBits]) == -1) {
                            break;
                        }
                    }
                    break;

                case 0x60:
                    scriptState->value = channel->soundScriptIO[lowBits];
                    if (lowBits < 2) {
                        channel->soundScriptIO[lowBits] = -1;
                    }
                    break;

                case 0x50:
                    scriptState->value -= channel->soundScriptIO[lowBits];
                    break;

                case 0x20:
                    offset = AudioSeq_ScriptReadS16(scriptState);
                    AudioSeq_SequenceChannelEnable(seqPlayer, lowBits, &seqPlayer->seqData[offset]);
                    break;

                case 0x30:
                    cmd = AudioSeq_ScriptReadU8(scriptState);
                    seqPlayer->channels[lowBits]->soundScriptIO[cmd] = scriptState->value;
                    break;

                case 0x40:
                    cmd = AudioSeq_ScriptReadU8(scriptState);
                    scriptState->value = seqPlayer->channels[lowBits]->soundScriptIO[cmd];
                    break;
            }
        }
    }
exit_loop:

    for (i = 0; i < ARRAY_COUNT(channel->layers); i++) {
        if (channel->layers[i] != NULL) {
            AudioSeq_SeqLayerProcessScript(channel->layers[i]);
        }
    }
}

void AudioSeq_SequencePlayerProcessSequence(SequencePlayer* seqPlayer) {
    u8 command;
    u8 commandLow;
    SeqScriptState* seqScript = &seqPlayer->scriptState;
    s16 tempS;
    u16 temp;
    s32 i;
    s32 value;
    u8* data;
    u8* data2;
    u8* data3;
    s32 pad3;
    s32 dummy;

    if (!seqPlayer->enabled) {
        return;
    }

    if (!AudioLoad_IsSeqLoadComplete(seqPlayer->seqId) || !AudioLoad_IsFontLoadComplete(seqPlayer->defaultFont)) {
        AudioSeq_SequencePlayerDisable(seqPlayer);
        return;
    }

    AudioLoad_SetSeqLoadStatus(seqPlayer->seqId, LOAD_STATUS_COMPLETE);
    AudioLoad_SetFontLoadStatus(seqPlayer->defaultFont, LOAD_STATUS_COMPLETE);

    if (seqPlayer->muted && (seqPlayer->muteBehavior & 0x80)) {
        return;
    }

    seqPlayer->scriptCounter++;
    seqPlayer->tempoAcc += seqPlayer->tempo;
    seqPlayer->tempoAcc += (s16)seqPlayer->unk_0C;

    if (seqPlayer->tempoAcc < gAudioContext.tempoInternalToExternal) {
        return;
    }

    seqPlayer->tempoAcc -= (u16)gAudioContext.tempoInternalToExternal;

    if (seqPlayer->stopScript == true) {
        return;
    }

    if (seqPlayer->delay > 1) {
        seqPlayer->delay--;
    } else {
        seqPlayer->recalculateVolume = true;

        while (true) {
            command = AudioSeq_ScriptReadU8(seqScript);

            // 0xF2 and above are "flow control" commands, including termination.
            if (command >= 0xF2) {
                s32 scriptHandled = AudioSeq_HandleScriptFlowControl(
                    seqPlayer, seqScript, command,
                    AudioSeq_GetScriptControlFlowArgument(&seqPlayer->scriptState, command));

                if (scriptHandled != 0) {
                    if (scriptHandled == -1) {
                        AudioSeq_SequencePlayerDisable(seqPlayer);
                    } else {
                        seqPlayer->delay = (u16)scriptHandled;
                    }
                    break;
                }
            } else if (command >= 0xC0) {
                switch (command) {
                    case 0xF1:
                        Audio_NotePoolClear(&seqPlayer->notePool);
                        command = AudioSeq_ScriptReadU8(seqScript);
                        Audio_NotePoolFill(&seqPlayer->notePool, command);
                        // Fake-match: the asm has two breaks in a row here,
                        // which the compiler normally optimizes out.
                        dummy = -1;
                        if (dummy < 0) {
                            dummy = 0;
                        }
                        if (dummy > 1) {
                            dummy = 1;
                        }
                        if (dummy) {}
                        break;

                    case 0xF0:
                        Audio_NotePoolClear(&seqPlayer->notePool);
                        break;

                    case 0xDF:
                        seqPlayer->transposition = 0;
                        FALLTHROUGH;
                    case 0xDE:
                        seqPlayer->transposition += (s8)AudioSeq_ScriptReadU8(seqScript);
                        break;

                    case 0xDD:
                        seqPlayer->tempo = AudioSeq_ScriptReadU8(seqScript) * 48;
                        if (seqPlayer->tempo > gAudioContext.tempoInternalToExternal) {
                            seqPlayer->tempo = (u16)gAudioContext.tempoInternalToExternal;
                        }
                        if ((s16)seqPlayer->tempo <= 0) {
                            seqPlayer->tempo = 1;
                        }
                        break;

                    case 0xDC:
                        seqPlayer->unk_0C = (s8)AudioSeq_ScriptReadU8(seqScript) * 48;
                        break;

                    case 0xDA:
                        command = AudioSeq_ScriptReadU8(seqScript);
                        temp = AudioSeq_ScriptReadS16(seqScript);
                        switch (command) {
                            case 0:
                            case 1:
                                if (seqPlayer->state != 2) {
                                    seqPlayer->fadeTimerUnkEu = temp;
                                    seqPlayer->state = command;
                                }
                                break;

                            case 2:
                                seqPlayer->fadeTimer = temp;
                                seqPlayer->state = command;
                                seqPlayer->fadeVelocity = (0 - seqPlayer->fadeVolume) / (s32)seqPlayer->fadeTimer;
                                break;
                        }
                        break;

                    case 0xDB:
                        value = AudioSeq_ScriptReadU8(seqScript);
                        switch (seqPlayer->state) {
                            case 1:
                                seqPlayer->state = 0;
                                seqPlayer->fadeVolume = 0.0f;
                                FALLTHROUGH;
                            case 0:
                                seqPlayer->fadeTimer = seqPlayer->fadeTimerUnkEu;
                                if (seqPlayer->fadeTimerUnkEu != 0) {
                                    seqPlayer->fadeVelocity =
                                        ((value / 127.0f) - seqPlayer->fadeVolume) / (s32)(seqPlayer->fadeTimer);
                                } else {
                                    seqPlayer->fadeVolume = (s32)value / 127.0f;
                                }
                                break;

                            case 2:
                                break;
                        }
                        break;

                    case 0xD9:
                        seqPlayer->fadeVolumeScale = (s8)AudioSeq_ScriptReadU8(seqScript) / 127.0f;
                        break;

                    case 0xD7:
                        temp = AudioSeq_ScriptReadS16(seqScript);
                        AudioSeq_SequencePlayerSetupChannels(seqPlayer, temp);
                        break;

                    case 0xD6:
                        AudioSeq_ScriptReadS16(seqScript);
                        break;

                    case 0xD5:
                        seqPlayer->muteVolumeScale = (s8)AudioSeq_ScriptReadU8(seqScript) / 127.0f;
                        break;

                    case 0xD4:
                        seqPlayer->muted = true;
                        break;

                    case 0xD3:
                        seqPlayer->muteBehavior = AudioSeq_ScriptReadU8(seqScript);
                        break;

                    case 0xD1:
                    case 0xD2:
                        temp = AudioSeq_ScriptReadS16(seqScript);
                        data3 = &seqPlayer->seqData[temp];
                        if (command == 0xD2) {
                            seqPlayer->shortNoteVelocityTable = data3;
                        } else {
                            seqPlayer->shortNoteGateTimeTable = data3;
                        }
                        break;

                    case 0xD0:
                        seqPlayer->noteAllocPolicy = AudioSeq_ScriptReadU8(seqScript);
                        break;

                    case 0xCE:
                        command = AudioSeq_ScriptReadU8(seqScript);
                        if (command == 0) {
                            seqScript->value = (gAudioContext.audioRandom >> 2) & 0xFF;
                        } else {
                            seqScript->value = (gAudioContext.audioRandom >> 2) % command;
                        }
                        break;

                    case 0xCD:
                        temp = AudioSeq_ScriptReadS16(seqScript);

                        if ((seqScript->value != -1) && (seqScript->depth != 3)) {
                            data = seqPlayer->seqData + (u32)(temp + (seqScript->value << 1));
                            seqScript->stack[seqScript->depth] = seqScript->pc;
                            seqScript->depth++;

                            temp = (data[0] << 8) + data[1];
                            seqScript->pc = &seqPlayer->seqData[temp];
                        }
                        break;

                    case 0xCC:
                        seqScript->value = AudioSeq_ScriptReadU8(seqScript);
                        break;

                    case 0xC9:
                        seqScript->value &= AudioSeq_ScriptReadU8(seqScript);
                        break;

                    case 0xC8:
                        seqScript->value -= AudioSeq_ScriptReadU8(seqScript);
                        break;

                    case 0xC7:
                        command = AudioSeq_ScriptReadU8(seqScript);
                        temp = AudioSeq_ScriptReadS16(seqScript);
                        data2 = &seqPlayer->seqData[temp];
                        *data2 = (u8)seqScript->value + command;
                        break;

                    case 0xC6:
                        seqPlayer->stopScript = true;
                        return;

                    case 0xC5:
                        seqPlayer->scriptCounter = (u16)AudioSeq_ScriptReadS16(seqScript);
                        break;

                    case 0xEF:
                        AudioSeq_ScriptReadS16(seqScript);
                        AudioSeq_ScriptReadU8(seqScript);
                        break;

                    case 0xC4:
                        command = AudioSeq_ScriptReadU8(seqScript);
                        if (command == 0xFF) {
                            command = seqPlayer->playerIdx;
                        }
                        commandLow = AudioSeq_ScriptReadU8(seqScript);
                        AudioLoad_SyncInitSeqPlayer(command, commandLow, 0);
                        if (command == (u8)seqPlayer->playerIdx) {
                            return;
                        }
                        break;
                }
            } else {
                commandLow = command & 0x0F;

                switch (command & 0xF0) {
                    case 0x00:
                        seqScript->value = seqPlayer->channels[commandLow]->enabled ^ 1;
                        break;

                    case 0x50:
                        seqScript->value -= seqPlayer->soundScriptIO[commandLow];
                        break;

                    case 0x70:
                        seqPlayer->soundScriptIO[commandLow] = seqScript->value;
                        break;

                    case 0x80:
                        seqScript->value = seqPlayer->soundScriptIO[commandLow];
                        if (commandLow < 2) {
                            seqPlayer->soundScriptIO[commandLow] = -1;
                        }
                        break;
                    case 0x40:
                        AudioSeq_SequenceChannelDisable(seqPlayer->channels[commandLow]);
                        break;

                    case 0x90:
                        temp = AudioSeq_ScriptReadS16(seqScript);
                        AudioSeq_SequenceChannelEnable(seqPlayer, commandLow, (void*)&seqPlayer->seqData[temp]);
                        break;

                    case 0xA0:
                        tempS = AudioSeq_ScriptReadS16(seqScript);
                        AudioSeq_SequenceChannelEnable(seqPlayer, commandLow, (void*)&seqScript->pc[tempS]);
                        break;

                    case 0xB0:
                        command = AudioSeq_ScriptReadU8(seqScript);
                        temp = AudioSeq_ScriptReadS16(seqScript);
                        data2 = &seqPlayer->seqData[temp];
                        AudioLoad_SlowLoadSeq(command, data2, &seqPlayer->soundScriptIO[commandLow]);
                        break;

                    case 0x60: {
                        command = AudioSeq_ScriptReadU8(seqScript);
                        value = command;
                        temp = AudioSeq_ScriptReadU8(seqScript);

                        AudioLoad_ScriptLoad(value, temp, &seqPlayer->soundScriptIO[commandLow]);
                        break;
                    }
                }
            }
        }
    }

    for (i = 0; i < ARRAY_COUNT(seqPlayer->channels); i++) {
        if (seqPlayer->channels[i]->enabled) {
            AudioSeq_SequenceChannelProcessScript(seqPlayer->channels[i]);
        }
    }
}

void AudioSeq_ProcessSequences(s32 arg0) {
    SequencePlayer* seqPlayer;
    u32 i;

    gAudioContext.noteSubEuOffset =
        (gAudioContext.audioBufferParameters.updatesPerFrame - arg0 - 1) * gAudioContext.numNotes;
    for (i = 0; i < (u32)gAudioContext.audioBufferParameters.numSequencePlayers; i++) {
        seqPlayer = &gAudioContext.seqPlayers[i];
        if (seqPlayer->enabled == 1) {
            AudioSeq_SequencePlayerProcessSequence(seqPlayer);
            Audio_SequencePlayerProcessSound(seqPlayer);
        }
    }
    Audio_ProcessNotes();
}

void AudioSeq_SkipForwardSequence(SequencePlayer* seqPlayer) {
    while (seqPlayer->skipTicks > 0) {
        AudioSeq_SequencePlayerProcessSequence(seqPlayer);
        Audio_SequencePlayerProcessSound(seqPlayer);
        seqPlayer->skipTicks--;
    }
}

void AudioSeq_ResetSequencePlayer(SequencePlayer* seqPlayer) {
    s32 i;

    AudioSeq_SequencePlayerDisable(seqPlayer);
    seqPlayer->stopScript = false;
    seqPlayer->delay = 0;
    seqPlayer->state = 1;
    seqPlayer->fadeTimer = 0;
    seqPlayer->fadeTimerUnkEu = 0;
    seqPlayer->tempoAcc = 0;
    seqPlayer->tempo = 120 * TATUMS_PER_BEAT; // 120 BPM
    seqPlayer->unk_0C = 0;
    seqPlayer->transposition = 0;
    seqPlayer->noteAllocPolicy = 0;
    seqPlayer->shortNoteVelocityTable = gDefaultShortNoteVelocityTable;
    seqPlayer->shortNoteGateTimeTable = gDefaultShortNoteGateTimeTable;
    seqPlayer->scriptCounter = 0;
    seqPlayer->fadeVolume = 1.0f;
    seqPlayer->fadeVelocity = 0.0f;
    seqPlayer->volume = 0.0f;
    seqPlayer->muteVolumeScale = 0.5f;

    for (i = 0; i < 0x10; i++) {
        AudioSeq_InitSequenceChannel(seqPlayer->channels[i]);
    }
}

void AudioSeq_InitSequencePlayerChannels(s32 playerIdx) {
    SequenceChannel* channel;
    SequencePlayer* seqPlayer = &gAudioContext.seqPlayers[playerIdx];
    s32 i, j;

    for (i = 0; i < 0x10; i++) {
        seqPlayer->channels[i] = AudioHeap_AllocZeroed(&gAudioContext.miscPool, sizeof(SequenceChannel));
        if (seqPlayer->channels[i] == NULL) {
            seqPlayer->channels[i] = &gAudioContext.sequenceChannelNone;
        } else {
            channel = seqPlayer->channels[i];
            channel->seqPlayer = seqPlayer;
            channel->enabled = false;
            for (j = 0; j < 4; j++) {
                channel->layers[j] = NULL;
            }
        }
        AudioSeq_InitSequenceChannel(seqPlayer->channels[i]);
    }
}

void AudioSeq_InitSequencePlayer(SequencePlayer* seqPlayer) {
    s32 i, j;

    for (i = 0; i < 0x10; i++) {
        seqPlayer->channels[i] = &gAudioContext.sequenceChannelNone;
    }

    seqPlayer->enabled = false;
    seqPlayer->muted = false;
    seqPlayer->fontDmaInProgress = false;
    seqPlayer->seqDmaInProgress = false;
    seqPlayer->applyBend = false;

    for (j = 0; j < 8; j++) {
        seqPlayer->soundScriptIO[j] = -1;
    }
    seqPlayer->muteBehavior = 0x40 | 0x20;
    seqPlayer->fadeVolumeScale = 1.0f;
    seqPlayer->bend = 1.0f;
    Audio_InitNoteLists(&seqPlayer->notePool);
    AudioSeq_ResetSequencePlayer(seqPlayer);
}

void AudioSeq_InitSequencePlayers(void) {
    s32 i;

    AudioSeq_InitLayerFreelist();
    for (i = 0; i < 64; i++) {
        gAudioContext.sequenceLayers[i].channel = NULL;
        gAudioContext.sequenceLayers[i].enabled = false;
    }

    for (i = 0; i < 4; i++) {
        AudioSeq_InitSequencePlayer(&gAudioContext.seqPlayers[i]);
    }
}
