/**
 * @file audio_seqplayer.c
 *
 * Manages audio sequence players, interprets and executes sequence instructions used to write .seq files
 *
 * Sequence Instructions:
 *   - A customized assembly language based on MIDI
 *   - All sequences are written using these instructions
 *   - There are 3 different sets of instructions
 *        1) Sequence Instructions
 *        2) Channel Instructions
 *        3) Layer Instruction
 *   - All three sets share a common pool of control flow instructions (>= 0xF2).
 *     Otherwise, each set of instructions has its own command interpreter
 */
#include "ultra64.h"
#include "global.h"

#define PORTAMENTO_IS_SPECIAL(x) ((x).mode & 0x80)
#define PORTAMENTO_MODE(x) ((x).mode & ~0x80)

#define PROCESS_SCRIPT_END -1

typedef enum {
    /* 0 */ PORTAMENTO_MODE_OFF,
    /* 1 */ PORTAMENTO_MODE_1,
    /* 2 */ PORTAMENTO_MODE_2,
    /* 3 */ PORTAMENTO_MODE_3,
    /* 4 */ PORTAMENTO_MODE_4,
    /* 5 */ PORTAMENTO_MODE_5
} PortamentoMode;

u8 AudioSeq_ScriptReadU8(SeqScriptState* state);
s16 AudioSeq_ScriptReadS16(SeqScriptState* state);
u16 AudioSeq_ScriptReadCompressedU16(SeqScriptState* state);

void AudioSeq_SeqLayerProcessScriptStep1(SequenceLayer* layer);
s32 AudioSeq_SeqLayerProcessScriptStep2(SequenceLayer* layer);
s32 AudioSeq_SeqLayerProcessScriptStep3(SequenceLayer* layer, s32 cmd);
s32 AudioSeq_SeqLayerProcessScriptStep4(SequenceLayer* layer, s32 cmd);
s32 AudioSeq_SeqLayerProcessScriptStep5(SequenceLayer* layer, s32 sameTunedSample);

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
    CMD_ARGS_1(s16),        // 0xB0 (`ldfilter(addr)`, channel: set filter)
    CMD_ARGS_0(),           // 0xB1 (`freefilter()`, channel: clear filter)
    CMD_ARGS_1(s16),        // 0xB2 (`ldseqtoptr(addr)`, channel: dynread sequence large)
    CMD_ARGS_1(u8),         // 0xB3 (`filter(u8)`, channel: load filter)
    CMD_ARGS_0(),           // 0xB4 (`ptrtodyntbl()`, channel: set dyntable large)
    CMD_ARGS_0(),           // 0xB5 (`dyntbltoptr()`, channel: read dyntable large)
    CMD_ARGS_0(),           // 0xB6 (`dyntblv()`, channel: read dyntable)
    CMD_ARGS_1(s16),        // 0xB7 (`randtoptr(u16)`, channel: random large)
    CMD_ARGS_1(u8),         // 0xB8 (`rand(u8)`, channel: random value)
    CMD_ARGS_1(u8),         // 0xB9 (`randvel(u8)`, channel: set velocity random variance)
    CMD_ARGS_1(u8),         // 0xBA (`randgate(u8)`, channel: set gatetime random variance)
    CMD_ARGS_2(u8, s16),    // 0xBB (`unkbb(u8, u16)`, channel:)
    CMD_ARGS_1(s16),        // 0xBC (`ptradd(u16)`, channel: add large)
    CMD_ARGS_2(s16, s16),   // 0xBD (`randptr(u16, u16)`, channel: random range large)
    CMD_ARGS_0(),           // 0xBE ()
    CMD_ARGS_0(),           // 0xBF ()
    CMD_ARGS_0(),           // 0xC0 ()
    CMD_ARGS_1(u8),         // 0xC1 (`instr(u8)`, channel: set instrument)
    CMD_ARGS_1(s16),        // 0xC2 (`dyntbl(addr)`, channel: set dyntable)
    CMD_ARGS_0(),           // 0xC3 (`short()`, channel: large notes off)
    CMD_ARGS_0(),           // 0xC4 (`noshort()`, channel: large notes on)
    CMD_ARGS_0(),           // 0xC5 (`dyntbllookup()`, channel: dyn set dyntable)
    CMD_ARGS_1(u8),         // 0xC6 (`font(u8)`, channel: set soundFont)
    CMD_ARGS_2(u8, s16),    // 0xC7 (`stseq(u8, addr)`, channel: write into sequence script)
    CMD_ARGS_1(u8),         // 0xC8 (`sub(u8)`, channel: subtract -> set value)
    CMD_ARGS_1(u8),         // 0xC9 (`and(u8)`, channel: `bit and` -> set value)
    CMD_ARGS_1(u8),         // 0xCA (`mutebhv(hex8)`, channel: set mute behavior)
    CMD_ARGS_1(s16),        // 0xCB (`ldseq(addr)`, channel: read sequence -> set value)
    CMD_ARGS_1(u8),         // 0xCC (`ldi(u8)`, channel: set value)
    CMD_ARGS_1(u8),         // 0xCD (`stopchan(u8)`, channel: disable channel)
    CMD_ARGS_1(s16),        // 0xCE (`ldptr(hex16)`, channel: ?? (load pointer?))
    CMD_ARGS_1(s16),        // 0xCF (`stptrtoseq(addr)` channel: write large into sequence script)
    CMD_ARGS_1(u8),         // 0xD0 (`effects(u8)`, channel: stereo headset effects)
    CMD_ARGS_1(u8),         // 0xD1 (`notealloc(u8)`, channel: set note allocation policy)
    CMD_ARGS_1(u8),         // 0xD2 (`sustain(u8)`, channel: set sustain)
    CMD_ARGS_1(u8),         // 0xD3 (`bend(s8)`, channel: large bend pitch)
    CMD_ARGS_1(u8),         // 0xD4 (`reverb(u8)`, channel: set reverb)
    CMD_ARGS_1(u8),         // 0xD5 ()
    CMD_ARGS_1(u8),         // 0xD6 ()
    CMD_ARGS_1(u8),         // 0xD7 (`vibfreq(u8)`, channel: set vibrato rate)
    CMD_ARGS_1(u8),         // 0xD8 (`vibdepth(u8)`, channel: set vibrato extent)
    CMD_ARGS_1(u8),         // 0xD9 (`releaserate(u8)`, channel: set decay index)
    CMD_ARGS_1(s16),        // 0xDA (`env(addr)`, channel: set envelope)
    CMD_ARGS_1(u8),         // 0xDB (`transpose(s8)`, channel: transpose)
    CMD_ARGS_1(u8),         // 0xDC (`panweight(u8)`, channel: set pan mix)
    CMD_ARGS_1(u8),         // 0xDD (`pan(u8)`, channel: set pan)
    CMD_ARGS_1(s16),        // 0xDE (`freqscale(u16)`, channel: set freqscale)
    CMD_ARGS_1(u8),         // 0xDF (`vol(u8)`, channel: set volume)
    CMD_ARGS_1(u8),         // 0xE0 (`volexp(u8)`, channel: set volume scale)
    CMD_ARGS_3(u8, u8, u8), // 0xE1 (`vibfreqgrad(u8, u8, u8)`, channel: set vibratorate linear)
    CMD_ARGS_3(u8, u8, u8), // 0xE2 (`vibdepthgrad(u8, u8, u8)`, channel: set vibrato extent linear)
    CMD_ARGS_1(u8),         // 0xE3 (`vibdelay(u8)`, channel: set vibrato delay)
    CMD_ARGS_0(),           // 0xE4 (`dyncall()`, channel: dyncall)
    CMD_ARGS_1(u8),         // 0xE5 (`rvrbidx(u8)`, channel: set reverb index)
    CMD_ARGS_1(u8),         // 0xE6 (`samplbook(addr)`, channel: set book offset)
    CMD_ARGS_1(s16),        // 0xE7 (`ldparams(addr)`, channel: load parameters)
    CMD_ARGS_3(u8, u8, u8), // 0xE8 (`params(u8, u8, u8, s8, s8, u8, u8, u8)`, channel set parameters)
    CMD_ARGS_1(u8),         // 0xE9 (`notepri(u8)`, channel: set note priority)
    CMD_ARGS_0(),           // 0xEA (`stop()`, channel: stop script)
    CMD_ARGS_2(u8, u8),     // 0xEB (`fontinstr()`, channel: set soundFont and instrument)
    CMD_ARGS_0(),           // 0xEC (``, channel: reset vibrato)
    CMD_ARGS_1(u8),         // 0xED (`gain(u8)`, channel: set hilo gain)
    CMD_ARGS_1(u8),         // 0xEE (`bendfine(s8)`, channel: small bend pitch)
    CMD_ARGS_2(s16, u8),    // 0xEF ()
    CMD_ARGS_0(),           // 0xF0 (`freenotelist()`, channel: unreserve notes)
    CMD_ARGS_1(u8),         // 0xF1 (`allocnotelist(u8)`, channel: reserve notes)
    // Control flow instructions (>= 0xF2) can only have 0 or 1 args
    CMD_ARGS_1(u8),  // 0xF2 (`rbltz(reladdr8)`, branch relative if less than zero)
    CMD_ARGS_1(u8),  // 0xF3 (`rbeqz(reladdr8)`, branch relative if equal to zero)
    CMD_ARGS_1(u8),  // 0xF4 (`rjump(reladdr8)`, jump relative)
    CMD_ARGS_1(s16), // 0xF5 (`bgez(addr)`, branch if greater than or equal to zero)
    CMD_ARGS_0(),    // 0xF6 (`break()`, break)
    CMD_ARGS_0(),    // 0xF7 (`loopend()`, loop end)
    CMD_ARGS_1(u8),  // 0xF8 (`loop(u8)`, loop)
    CMD_ARGS_1(s16), // 0xF9 (`bltz(addr)`, branch if less than zero)
    CMD_ARGS_1(s16), // 0xFA (`beqz(addr)`, branch if equal to zero)
    CMD_ARGS_1(s16), // 0xFB (`jump(addr)`, jump)
    CMD_ARGS_1(s16), // 0xFC (`call(addr)`, call and jump to a function)
    CMD_ARGS_0(),    // 0xFD (`delay(var)`, delay n frames)
    CMD_ARGS_0(),    // 0xFE (`delay1()`, delay 1 frame)
    CMD_ARGS_0(),    // 0xFF (`end()`, end script)
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

/**
 * Read and execute the control flow sequence instructions
 * @return number of frames until next instruction. -1 signals termination
 */
s32 AudioSeq_HandleScriptFlowControl(SequencePlayer* seqPlayer, SeqScriptState* state, s32 cmd, s32 cmdArg) {
    switch (cmd) {
        case 0xFF: // `end()`, end script
            if (state->depth == 0) {
                return PROCESS_SCRIPT_END;
            }
            state->pc = state->stack[--state->depth];
            break;

        case 0xFD: // `delay(var)`, delay n frames
            return AudioSeq_ScriptReadCompressedU16(state);

        case 0xFE: // `delay1()`, delay 1 frame
            return 1;

        case 0xFC: // `call(addr)`, call and jump to a function
            state->stack[state->depth++] = state->pc;
            state->pc = seqPlayer->seqData + (u16)cmdArg;
            break;

        case 0xF8: // `loop(u8)`, loop
            state->remLoopIters[state->depth] = cmdArg;
            state->stack[state->depth++] = state->pc;
            break;

        case 0xF7: // `loopend()`, loop end
            state->remLoopIters[state->depth - 1]--;
            if (state->remLoopIters[state->depth - 1] != 0) {
                state->pc = state->stack[state->depth - 1];
            } else {
                state->depth--;
            }
            break;

        case 0xF6: // `break()`, break
            state->depth--;
            break;

        case 0xF5: // `bgez(addr)`, branch if greater than or equal to zero
        case 0xF9: // `bltz(addr)`, branch if less than zero
        case 0xFA: // `beqz(addr)`, branch if equal to zero
        case 0xFB: // `jump(addr)`, jump
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

        case 0xF2: // `rbltz(reladdr8)`, branch relative if less than zero
        case 0xF3: // `rbeqz(reladdr8)`, branch relative if equal to zero
        case 0xF4: // `rjump(reladdr8)`, jump relative
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

    for (i = 0; i < ARRAY_COUNT(channel->soundScriptIO); i++) {
        channel->soundScriptIO[i] = -1;
    }

    channel->unused = false;
    Audio_InitNoteLists(&channel->notePool);
}

s32 AudioSeq_SeqChannelSetLayer(SequenceChannel* channel, s32 layerIndex) {
    SequenceLayer* layer;
    s32 pad;

    if (channel->layers[layerIndex] == NULL) {
        layer = AudioSeq_AudioListPopBack(&gAudioContext.layerFreeList);
        channel->layers[layerIndex] = layer;
        if (layer == NULL) {
            channel->layers[layerIndex] = NULL;
            return -1;
        }
    } else {
        Audio_SeqLayerNoteDecay(channel->layers[layerIndex]);
    }

    layer = channel->layers[layerIndex];

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
    layer->portamento.mode = PORTAMENTO_MODE_OFF;
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

void AudioSeq_SeqLayerFree(SequenceChannel* channel, s32 layerIndex) {
    SequenceLayer* layer = channel->layers[layerIndex];

    if (layer != NULL) {
        AudioSeq_AudioListPushBack(&gAudioContext.layerFreeList, &layer->listItem);
        AudioSeq_SeqLayerDisable(layer);
        channel->layers[layerIndex] = NULL;
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

    for (i = 0; i < SEQ_NUM_CHANNELS; i++) {
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

    for (i = 0; i < SEQ_NUM_CHANNELS; i++) {
        channel = seqPlayer->channels[i];
        if (IS_SEQUENCE_CHANNEL_VALID(channel) == 1) {
            AudioSeq_SequenceChannelDisable(channel);
        }
    }
}

void AudioSeq_SequenceChannelEnable(SequencePlayer* seqPlayer, u8 channelIndex, void* script) {
    SequenceChannel* channel = seqPlayer->channels[channelIndex];
    s32 i;

    channel->enabled = true;
    channel->finished = false;
    channel->scriptState.depth = 0;
    channel->scriptState.pc = script;
    channel->delay = 0;

    for (i = 0; i < ARRAY_COUNT(channel->layers); i++) {
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

void AudioSeq_SeqLayerProcessScript(SequenceLayer* layer) {
    s32 cmd;

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

    cmd = AudioSeq_SeqLayerProcessScriptStep2(layer);
    if (cmd == PROCESS_SCRIPT_END) {
        return;
    }

    cmd = AudioSeq_SeqLayerProcessScriptStep3(layer, cmd);

    if (cmd != PROCESS_SCRIPT_END) {
        // returns `sameSound` instead of a command
        cmd = AudioSeq_SeqLayerProcessScriptStep4(layer, cmd);
    }

    if (cmd != PROCESS_SCRIPT_END) {
        AudioSeq_SeqLayerProcessScriptStep5(layer, cmd);
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
        layer->portamento.mode = PORTAMENTO_MODE_OFF;
    }
    layer->notePropertiesNeedInit = true;
}

s32 AudioSeq_SeqLayerProcessScriptStep5(SequenceLayer* layer, s32 sameTunedSample) {
    Note* note;

    if (!layer->stopSomething && layer->tunedSample != NULL &&
        layer->tunedSample->sample->codec == CODEC_S16_INMEMORY && layer->tunedSample->sample->medium != MEDIUM_RAM) {
        layer->stopSomething = true;
        return PROCESS_SCRIPT_END;
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
        note = layer->note;

        Audio_NotePortamentoInit(note);
    }

    return 0;
}

s32 AudioSeq_SeqLayerProcessScriptStep2(SequenceLayer* layer) {
    SequenceChannel* channel = layer->channel;
    SeqScriptState* state = &layer->scriptState;
    SequencePlayer* seqPlayer = channel->seqPlayer;
    u8 cmd;
    u8 cmdArg8;
    u16 cmdArg16;
    u16 velocity;

    while (true) {
        cmd = AudioSeq_ScriptReadU8(state);

        // To be processed in AudioSeq_SeqLayerProcessScriptStep3
        if (cmd <= 0xC0) {
            return cmd;
        }

        // Control Flow Commands
        if (cmd >= 0xF2) {
            cmdArg16 = AudioSeq_GetScriptControlFlowArgument(state, cmd);

            if (AudioSeq_HandleScriptFlowControl(seqPlayer, state, cmd, cmdArg16) == 0) {
                continue;
            }
            AudioSeq_SeqLayerDisable(layer);
            return PROCESS_SCRIPT_END;
        }

        switch (cmd) {
            case 0xC1: // `shortvel(u8)`, layer: set short note velocity
            case 0xCA: // `notepan(u8)`, layer: set pan
                cmdArg8 = *(state->pc++);
                if (cmd == 0xC1) {
                    layer->velocitySquare = SQ(cmdArg8) / SQ(127.0f);
                } else {
                    layer->pan = cmdArg8;
                }
                break;

            case 0xC9: // `shortgate(u8)`, layer: set short note gatetime
            case 0xC2: // `transpose(s8)`, layer: set transposition in semitones
                cmdArg8 = *(state->pc++);
                if (cmd == 0xC9) {
                    layer->gateTime = cmdArg8;
                } else {
                    layer->transposition = cmdArg8;
                }
                break;

            case 0xC4: // `legato()`, layer: continuous notes on
            case 0xC5: // `nolegato()`, layer: continuous notes off
                if (cmd == 0xC4) {
                    layer->continuousNotes = true;
                } else {
                    layer->continuousNotes = false;
                }
                layer->bit1 = false;
                Audio_SeqLayerNoteDecay(layer);
                break;

            case 0xC3: // `shortdelay(var)`, layer: set short note default delay
                cmdArg16 = AudioSeq_ScriptReadCompressedU16(state);
                layer->shortNoteDefaultDelay = cmdArg16;
                break;

            case 0xC6: // `instr(u8)`, layer: set instrument
                cmd = AudioSeq_ScriptReadU8(state);
                if (cmd >= 0x7E) {
                    if (cmd == 0x7E) {
                        // Sfxs
                        layer->instOrWave = 1;
                    } else if (cmd == 0x7F) {
                        // Drums
                        layer->instOrWave = 0;
                    } else {
                        // Synthetic Wave
                        layer->instOrWave = cmd;
                        layer->instrument = NULL;
                    }

                    if (cmd == 0xFF) {
                        layer->adsr.decayIndex = 0;
                    }
                } else {
                    // Instrument
                    if ((layer->instOrWave = AudioSeq_GetInstrument(channel, cmd, &layer->instrument, &layer->adsr)) ==
                        0) {
                        layer->instOrWave = 0xFF;
                    }
                }
                break;

            case 0xC7: // `portamento(hex8, u8, u8)`, layer: enable portamento
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

                cmdArg16 = AudioSeq_ScriptReadCompressedU16(state);
                layer->portamentoTime = cmdArg16;
                break;

            case 0xC8: // `noportamento()`, layer: disable portamento
                layer->portamento.mode = PORTAMENTO_MODE_OFF;
                break;

            case 0xCB: // `env(addr, u8)`, layer: set envelope and decay index
                cmdArg16 = AudioSeq_ScriptReadS16(state);
                layer->adsr.envelope = (EnvelopePoint*)(seqPlayer->seqData + cmdArg16);
                FALLTHROUGH;
            case 0xCF: // `releaserate(u8)`, layer: set decay index
                layer->adsr.decayIndex = AudioSeq_ScriptReadU8(state);
                break;

            case 0xCC: // `nodrumpan()`, layer: ignore drum pan
                layer->ignoreDrumPan = true;
                break;

            case 0xCD: // `stereo(u8)`, layer: stereo effects
                layer->stereo.asByte = AudioSeq_ScriptReadU8(state);
                break;

            case 0xCE: // `bendfine(s8)`, layer: bend pitch
                cmdArg8 = AudioSeq_ScriptReadU8(state);
                layer->bend = gBendPitchTwoSemitonesFrequencies[(u8)(cmdArg8 + 0x80)];
                break;

            default:
                switch (cmd & 0xF0) {
                    case 0xD0: // `ldshortvel(bits:4)`, layer: set short note velocity from table
                        velocity = seqPlayer->shortNoteVelocityTable[cmd & 0xF];
                        layer->velocitySquare = SQ(velocity) / SQ(127.0f);
                        break;

                    case 0xE0: // `ldshortgate(bits:4)`, layer: set short note gatetime from table
                        layer->gateTime = seqPlayer->shortNoteGateTimeTable[cmd & 0xF];
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
    s32 speed2;

    instOrWave = layer->instOrWave;
    channel = layer->channel;
    seqPlayer = channel->seqPlayer;

    if (instOrWave == 0xFF) {
        if (!channel->hasInstrument) {
            return PROCESS_SCRIPT_END;
        }
        instOrWave = channel->instOrWave;
    }

    switch (instOrWave) {
        case 0:
            // Drums
            semitone += channel->transposition + layer->transposition;
            layer->semitone = semitone;

            drum = Audio_GetDrum(channel->fontId, semitone);
            if (drum == NULL) {
                layer->stopSomething = true;
                layer->delay2 = layer->delay;
                return PROCESS_SCRIPT_END;
            }

            tunedSample = &drum->tunedSample;
            layer->adsr.envelope = drum->envelope;
            layer->adsr.decayIndex = drum->adsrDecayIndex;
            if (!layer->ignoreDrumPan) {
                layer->pan = drum->pan;
            }
            layer->tunedSample = tunedSample;
            layer->freqScale = tunedSample->tuning;
            break;

        case 1:
            // Sfxs
            layer->semitone = semitone;
            sfxId = (layer->transposition << 6) + semitone;

            soundEffect = Audio_GetSoundEffect(channel->fontId, sfxId);
            if (soundEffect == NULL) {
                layer->stopSomething = true;
                layer->delay2 = layer->delay + 1;
                return PROCESS_SCRIPT_END;
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
                return PROCESS_SCRIPT_END;
            }

            if (layer->instOrWave == 0xFF) {
                instrument = channel->instrument;
            } else {
                instrument = layer->instrument;
            }

            if (layer->portamento.mode != PORTAMENTO_MODE_OFF) {
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
            time = layer->tunedSample->sample->loop->end;
        } else {
            time = 0.0f;
        }
        time *= seqPlayer->tempo;
        time *= gAudioContext.unk_2870;
        time /= layer->freqScale;
        if (time > 0x7FFE) {
            time = 0x7FFE;
        }

        layer->gateDelay = 0;
        layer->delay = (u16)(s32)time + 1;

        if (layer->portamento.mode != PORTAMENTO_MODE_OFF) {
            // (It's a bit unclear if 'portamento' has actually always been
            // set when this is reached...)
            if (PORTAMENTO_IS_SPECIAL(*portamento)) {
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

    if (cmd == 0xC0) { // `ldelay(var)`, layer: delay
        layer->delay = AudioSeq_ScriptReadCompressedU16(state);
        layer->stopSomething = true;
        layer->bit1 = false;
        return PROCESS_SCRIPT_END;
    }

    layer->stopSomething = false;

    if (channel->largeNotes == true) {
        switch (cmd & 0xC0) {
            case 0x00: // `notedvg(bits:6, var, u8, u8)`, layer: large note 0
                delay = AudioSeq_ScriptReadCompressedU16(state);
                velocity = *(state->pc++);
                layer->gateTime = *(state->pc++);
                layer->lastDelay = delay;
                break;

            case 0x40: // `notedv(bits:6, var, u8)`, layer: large note 1
                delay = AudioSeq_ScriptReadCompressedU16(state);
                velocity = *(state->pc++);
                layer->gateTime = 0;
                layer->lastDelay = delay;
                break;

            case 0x80: // `notevg(bits:6, u8, u8)`, layer: large note 2
                delay = layer->lastDelay;
                velocity = *(state->pc++);
                layer->gateTime = *(state->pc++);
                break;
        }

        if (velocity > 0x7F || velocity < 0) {
            velocity = 0x7F;
        }
        layer->velocitySquare = SQ((f32)velocity) / SQ(127.0f);
        cmd -= (cmd & 0xC0);
    } else {
        switch (cmd & 0xC0) {
            case 0x00: // `shortdvg(bits:6, var)`, layer: small note 0
                delay = AudioSeq_ScriptReadCompressedU16(state);
                layer->lastDelay = delay;
                break;

            case 0x40: // `shortdv(bits:6)`, layer: small note 1
                delay = layer->shortNoteDefaultDelay;
                break;

            case 0x80: // `shortvg(bits:6)`, layer: small note 2
                delay = layer->lastDelay;
                break;
        }
        cmd -= (cmd & 0xC0);
    }

    if (channel->velocityRandomVariance != 0) {
        floatDelta = layer->velocitySquare * (gAudioContext.audioRandom % channel->velocityRandomVariance) / 100.0f;
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
        return PROCESS_SCRIPT_END;
    }

    if (seqPlayer->skipTicks != 0) {
        layer->stopSomething = true;
        return PROCESS_SCRIPT_END;
    }

    return cmd;
}

void AudioSeq_SetChannelPriorities(SequenceChannel* channel, u8 priority) {
    if ((priority & 0xF) != 0) {
        channel->notePriority = priority & 0xF;
    }

    priority = priority >> 4;
    if (priority != 0) {
        channel->someOtherPriority = priority;
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

    // temporarily offset instrument id by 2 so that instId 0, 1
    // can be reserved by drums and sfxs respectively.
    instId += 2;

    return instId;
}

void AudioSeq_SetInstrument(SequenceChannel* channel, u8 instId) {
    if (instId >= 0x80) {
        // Synthetic Waves
        channel->instOrWave = instId;
        channel->instrument = NULL;
    } else if (instId == 0x7F) {
        // Drums
        channel->instOrWave = 0;
        channel->instrument = (Instrument*)1; // invalid pointer, never dereferenced
    } else if (instId == 0x7E) {
        // Sfxs
        channel->instOrWave = 1;
        channel->instrument = (Instrument*)2; // invalid pointer, never dereferenced
    } else {
        // Instruments
        if ((channel->instOrWave = AudioSeq_GetInstrument(channel, instId, &channel->instrument, &channel->adsr)) ==
            0) {
            channel->hasInstrument = false;
            return;
        }
    }

    channel->hasInstrument = true;
}

void AudioSeq_SequenceChannelSetVolume(SequenceChannel* channel, u8 volume) {
    channel->volume = (s32)volume / 127.0f;
}

void AudioSeq_SequenceChannelProcessScript(SequenceChannel* channel) {
    s32 i;
    u8* data;
    u8* seqData;
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
        s16 temp1;
        u16 cmdArgU16;
        u32 cmdArgs[3];
        s8 cmdArgS8;
        u8 cmd = AudioSeq_ScriptReadU8(scriptState);
        u8 lowBits;
        u8 highBits;
        s32 delay;
        s32 temp2;

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

            // Control Flow Commands
            if (cmd >= 0xF2) {
                delay = AudioSeq_HandleScriptFlowControl(seqPlayer, scriptState, cmd, cmdArgs[0]);

                if (delay != 0) {
                    if (delay == PROCESS_SCRIPT_END) {
                        AudioSeq_SequenceChannelDisable(channel);
                    } else {
                        channel->delay = delay;
                    }
                    break;
                }
                continue;
            }

            switch (cmd) {
                case 0xEA: // `stop()`, channel: stop script
                    channel->stopScript = true;
                    goto exit_loop;

                case 0xF1: // `allocnotelist(u8)`, channel: reserve notes
                    Audio_NotePoolClear(&channel->notePool);
                    cmd = (u8)cmdArgs[0];
                    Audio_NotePoolFill(&channel->notePool, cmd);
                    break;

                case 0xF0: // `freenotelist()`, channel: unreserve notes
                    Audio_NotePoolClear(&channel->notePool);
                    break;

                case 0xC2: // `dyntbl(addr)`, channel: set dyntable
                    cmdArgU16 = (u16)cmdArgs[0];
                    channel->dynTable = (void*)&seqPlayer->seqData[cmdArgU16];
                    break;

                case 0xC5: // `dyntbllookup()`, channel: dyn set dyntable
                    if (scriptState->value != -1) {
                        data = (*channel->dynTable)[scriptState->value];
                        cmdArgU16 = (u16)((data[0] << 8) + data[1]);

                        channel->dynTable = (void*)&seqPlayer->seqData[cmdArgU16];
                    }
                    break;

                case 0xEB: // `fontinstr()`, channel: set soundFont and instrument
                    cmd = (u8)cmdArgs[0];

                    if (seqPlayer->defaultFont != 0xFF) {
                        cmdArgU16 = ((u16*)gAudioContext.sequenceFontTable)[seqPlayer->seqId];
                        lowBits = gAudioContext.sequenceFontTable[cmdArgU16];
                        cmd = gAudioContext.sequenceFontTable[cmdArgU16 + lowBits - cmd];
                    }

                    if (AudioHeap_SearchCaches(FONT_TABLE, CACHE_EITHER, cmd)) {
                        channel->fontId = cmd;
                    }

                    cmdArgs[0] = cmdArgs[1];
                    FALLTHROUGH;
                case 0xC1: // `instr(u8)`, channel: set instrument
                    cmd = (u8)cmdArgs[0];
                    AudioSeq_SetInstrument(channel, cmd);
                    break;

                case 0xC3: // `short()`, channel: large notes off
                    channel->largeNotes = false;
                    break;

                case 0xC4: // `noshort()`, channel: large notes on
                    channel->largeNotes = true;
                    break;

                case 0xDF: // `vol(u8)`, channel: set volume
                    cmd = (u8)cmdArgs[0];
                    AudioSeq_SequenceChannelSetVolume(channel, cmd);
                    channel->changes.s.volume = true;
                    break;

                case 0xE0: // `volexp(u8)`, channel: set volume scale
                    cmd = (u8)cmdArgs[0];
                    channel->volumeScale = (s32)cmd / 128.0f;
                    channel->changes.s.volume = true;
                    break;

                case 0xDE: // `freqscale(u16)`, channel: set freqscale
                    cmdArgU16 = (u16)cmdArgs[0];
                    channel->freqScale = (s32)cmdArgU16 / 32768.0f;
                    channel->changes.s.freqScale = true;
                    break;

                case 0xD3: // `bend(s8)`, channel: large bend pitch
                    cmd = (u8)cmdArgs[0];
                    cmd += 0x80;
                    channel->freqScale = gBendPitchOneOctaveFrequencies[cmd];
                    channel->changes.s.freqScale = true;
                    break;

                case 0xEE: // `bendfine(s8)`, channel: small bend pitch
                    cmd = (u8)cmdArgs[0];
                    cmd += 0x80;
                    channel->freqScale = gBendPitchTwoSemitonesFrequencies[cmd];
                    channel->changes.s.freqScale = true;
                    break;

                case 0xDD: // `pan(u8)`, channel: set pan
                    cmd = (u8)cmdArgs[0];
                    channel->newPan = cmd;
                    channel->changes.s.pan = true;
                    break;

                case 0xDC: // `panweight(u8)`, channel: set pan mix
                    cmd = (u8)cmdArgs[0];
                    channel->panChannelWeight = cmd;
                    channel->changes.s.pan = true;
                    break;

                case 0xDB: // `transpose(s8)`, channel: transpose
                    cmdArgS8 = (s8)cmdArgs[0];
                    channel->transposition = cmdArgS8;
                    break;

                case 0xDA: // `env(addr)`, channel: set envelope
                    cmdArgU16 = (u16)cmdArgs[0];
                    channel->adsr.envelope = (EnvelopePoint*)&seqPlayer->seqData[cmdArgU16];
                    break;

                case 0xD9: // `releaserate(u8)`, channel: set decay index
                    cmd = (u8)cmdArgs[0];
                    channel->adsr.decayIndex = cmd;
                    break;

                case 0xD8: // `vibdepth(u8)`, channel: set vibrato extent
                    cmd = (u8)cmdArgs[0];
                    channel->vibratoExtentTarget = cmd * 8;
                    channel->vibratoExtentStart = 0;
                    channel->vibratoExtentChangeDelay = 0;
                    break;

                case 0xD7: // `vibfreq(u8)`, channel: set vibrato rate
                    cmd = (u8)cmdArgs[0];
                    channel->vibratoRateChangeDelay = 0;
                    channel->vibratoRateTarget = cmd * 32;
                    channel->vibratoRateStart = cmd * 32;
                    break;

                case 0xE2: // `vibdepthgrad(u8, u8, u8)`, channel: set vibrato extent linear
                    cmd = (u8)cmdArgs[0];
                    channel->vibratoExtentStart = cmd * 8;
                    cmd = (u8)cmdArgs[1];
                    channel->vibratoExtentTarget = cmd * 8;
                    cmd = (u8)cmdArgs[2];
                    channel->vibratoExtentChangeDelay = cmd * 16;
                    break;

                case 0xE1: // `vibfreqgrad(u8, u8, u8)`, channel: set vibratorate linear
                    cmd = (u8)cmdArgs[0];
                    channel->vibratoRateStart = cmd * 32;
                    cmd = (u8)cmdArgs[1];
                    channel->vibratoRateTarget = cmd * 32;
                    cmd = (u8)cmdArgs[2];
                    channel->vibratoRateChangeDelay = cmd * 16;
                    break;

                case 0xE3: // `vibdelay(u8)`, channel: set vibrato delay
                    cmd = (u8)cmdArgs[0];
                    channel->vibratoDelay = cmd * 16;
                    break;

                case 0xD4: // `reverb(u8)`, channel: set reverb
                    cmd = (u8)cmdArgs[0];
                    channel->reverb = cmd;
                    break;

                case 0xC6: // `font(u8)`, channel: set soundFont
                    cmd = (u8)cmdArgs[0];

                    if (seqPlayer->defaultFont != 0xFF) {
                        cmdArgU16 = ((u16*)gAudioContext.sequenceFontTable)[seqPlayer->seqId];
                        lowBits = gAudioContext.sequenceFontTable[cmdArgU16];
                        cmd = gAudioContext.sequenceFontTable[cmdArgU16 + lowBits - cmd];
                    }

                    if (AudioHeap_SearchCaches(FONT_TABLE, CACHE_EITHER, cmd)) {
                        channel->fontId = cmd;
                    }
                    break;

                case 0xC7: // `stseq(u8, addr)`, channel: write into sequence script
                    cmd = (u8)cmdArgs[0];
                    cmdArgU16 = (u16)cmdArgs[1];
                    seqData = &seqPlayer->seqData[cmdArgU16];
                    seqData[0] = (u8)scriptState->value + cmd;
                    break;

                case 0xC8: // `sub(u8)`, channel: subtract -> set value
                case 0xCC: // `ldi(u8)`, channel: set value
                case 0xC9: // `and(u8)`, channel: `bit and` -> set value
                    cmdArgS8 = (s8)cmdArgs[0];

                    if (cmd == 0xC8) {
                        scriptState->value -= cmdArgS8;
                    } else if (cmd == 0xCC) {
                        scriptState->value = cmdArgS8;
                    } else {
                        scriptState->value &= cmdArgS8;
                    }
                    break;

                case 0xCD: // `stopchan(u8)`, channel: disable channel
                    cmd = (u8)cmdArgs[0];
                    AudioSeq_SequenceChannelDisable(seqPlayer->channels[cmd]);
                    break;

                case 0xCA: // `mutebhv(hex8)`, channel: set mute behavior
                    cmd = (u8)cmdArgs[0];
                    channel->muteBehavior = cmd;
                    channel->changes.s.volume = true;
                    break;

                case 0xCB: // `ldseq(addr)`, channel: read sequence -> set value
                    cmdArgU16 = (u16)cmdArgs[0];
                    scriptState->value = *(seqPlayer->seqData + (u32)(cmdArgU16 + scriptState->value));
                    break;

                case 0xCE: // `ldptr(hex16)`, channel: ?? (load pointer?)
                    cmdArgU16 = (u16)cmdArgs[0];
                    channel->unk_22 = cmdArgU16;
                    break;

                case 0xCF: // `stptrtoseq(addr)` channel: write large into sequence script
                    cmdArgU16 = (u16)cmdArgs[0];
                    seqData = &seqPlayer->seqData[cmdArgU16];
                    seqData[0] = (channel->unk_22 >> 8) & 0xFF;
                    seqData[1] = channel->unk_22 & 0xFF;
                    break;

                case 0xD0: // `effects(u8)`, channel: stereo headset effects
                    cmd = (u8)cmdArgs[0];
                    if (cmd & 0x80) {
                        channel->stereoHeadsetEffects = true;
                    } else {
                        channel->stereoHeadsetEffects = false;
                    }
                    channel->stereo.asByte = cmd & 0x7F;
                    break;

                case 0xD1: // `notealloc(u8)`, channel: set note allocation policy
                    cmd = (u8)cmdArgs[0];
                    channel->noteAllocPolicy = cmd;
                    break;

                case 0xD2: // `sustain(u8)`, channel: set sustain
                    cmd = (u8)cmdArgs[0];
                    channel->adsr.sustain = cmd;
                    break;

                case 0xE5: // `rvrbidx(u8)`, channel: set reverb index
                    cmd = (u8)cmdArgs[0];
                    channel->reverbIndex = cmd;
                    break;

                case 0xE4: // `dyncall()`, channel: dyncall
                    if (scriptState->value != -1) {
                        data = (*channel->dynTable)[scriptState->value];
                        //! @bug: Missing a stack depth check here
                        scriptState->stack[scriptState->depth++] = scriptState->pc;
                        cmdArgU16 = (u16)((data[0] << 8) + data[1]);
                        scriptState->pc = seqPlayer->seqData + cmdArgU16;
                    }
                    break;

                case 0xE6: // `samplbook(addr)`, channel: set book offset
                    cmd = (u8)cmdArgs[0];
                    channel->bookOffset = cmd;
                    break;

                case 0xE7: // `ldparams(addr)`, channel: load parameters
                    cmdArgU16 = (u16)cmdArgs[0];
                    data = &seqPlayer->seqData[cmdArgU16];
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

                case 0xE8: // `params(u8, u8, u8, s8, s8, u8, u8, u8)`, channel set parameters
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

                case 0xEC: // ``, channel: reset vibrato
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

                case 0xE9: // `notepri(u8)`, channel: set note priority
                    AudioSeq_SetChannelPriorities(channel, (u8)cmdArgs[0]);
                    break;

                case 0xED: // `gain(u8)`, channel: set hilo gain
                    cmd = (u8)cmdArgs[0];
                    channel->gain = cmd;
                    break;

                case 0xB0: // `ldfilter(addr)`, channel: set filter
                    cmdArgU16 = (u16)cmdArgs[0];
                    data = seqPlayer->seqData + cmdArgU16;
                    channel->filter = (s16*)data;
                    break;

                case 0xB1: // `freefilter()`, channel: clear filter
                    channel->filter = NULL;
                    break;

                case 0xB3: // `filter(u8)`, channel: load filter
                    cmd = cmdArgs[0];

                    if (channel->filter != NULL) {
                        lowBits = (cmd >> 4) & 0xF; // LowPassCutoff
                        cmd &= 0xF;                 // HighPassCutoff
                        AudioHeap_LoadFilter(channel->filter, lowBits, cmd);
                    }
                    break;

                case 0xB2: // `ldseqtoptr(addr)`, channel: dynread sequence large
                    cmdArgU16 = (u16)cmdArgs[0];
                    channel->unk_22 = *(u16*)(seqPlayer->seqData + (u32)(cmdArgU16 + scriptState->value * 2));
                    break;

                case 0xB4: // `ptrtodyntbl()`, channel: set dyntable large
                    channel->dynTable = (void*)&seqPlayer->seqData[channel->unk_22];
                    break;

                case 0xB5: // `dyntbltoptr()`, channel: read dyntable large
                    channel->unk_22 = ((u16*)(channel->dynTable))[scriptState->value];
                    break;

                case 0xB6: // `dyntblv()`, channel: read dyntable
                    scriptState->value = (*channel->dynTable)[0][scriptState->value];
                    break;

                case 0xB7: // `randtoptr(u16)`, channel: random large
                    channel->unk_22 =
                        (cmdArgs[0] == 0) ? gAudioContext.audioRandom & 0xFFFF : gAudioContext.audioRandom % cmdArgs[0];
                    break;

                case 0xB8: // `rand(u8)`, channel: random value
                    scriptState->value =
                        (cmdArgs[0] == 0) ? gAudioContext.audioRandom & 0xFFFF : gAudioContext.audioRandom % cmdArgs[0];
                    break;

                case 0xBD: // `randptr(u16, u16)`, channel: random range large
                    temp2 = Audio_NextRandom();
                    channel->unk_22 = (cmdArgs[0] == 0) ? (temp2 & 0xFFFF) : (temp2 % cmdArgs[0]);
                    channel->unk_22 += cmdArgs[1];
                    temp2 = (channel->unk_22 / 0x100) + 0x80;
                    param = channel->unk_22 % 0x100;
                    channel->unk_22 = (temp2 << 8) | param;
                    break;

                case 0xB9: // `randvel(u8)`, channel: set velocity random variance
                    channel->velocityRandomVariance = cmdArgs[0];
                    break;

                case 0xBA: // `randgate(u8)`, channel: set gatetime random variance
                    channel->gateTimeRandomVariance = cmdArgs[0];
                    break;

                case 0xBB: // `unkbb(u8, u16)`, channel:
                    channel->unk_0F = cmdArgs[0];
                    channel->unk_20 = cmdArgs[1];
                    break;

                case 0xBC: // `ptradd(u16)`, channel: add large
                    channel->unk_22 += cmdArgs[0];
                    break;
            }
            continue;
        }

        if (cmd >= 0x70) {
            lowBits = cmd & 0x7;

            if ((cmd & 0xF8) != 0x70 && lowBits >= 4) {
                lowBits = 0;
            }

            switch (cmd & 0xF8) {
                case 0x80: // `testlayer(bits:3)`, channel: test layer is finished
                    if (channel->layers[lowBits] != NULL) {
                        scriptState->value = channel->layers[lowBits]->finished;
                    } else {
                        scriptState->value = -1;
                    }
                    break;

                case 0x88: // `ldlayer(bits:3, addr)`, channel: set layer
                    cmdArgU16 = AudioSeq_ScriptReadS16(scriptState);
                    if (!AudioSeq_SeqChannelSetLayer(channel, lowBits)) {
                        channel->layers[lowBits]->scriptState.pc = &seqPlayer->seqData[cmdArgU16];
                    }
                    break;

                case 0x90: // `dellayer(bits:3)`, channel: free layer
                    AudioSeq_SeqLayerFree(channel, lowBits);
                    break;

                case 0x98: // `dynldlayer(bits:3)`, channel: dynset layer
                    if (scriptState->value != -1 && AudioSeq_SeqChannelSetLayer(channel, lowBits) != -1) {
                        data = (*channel->dynTable)[scriptState->value];
                        cmdArgU16 = (data[0] << 8) + data[1];
                        channel->layers[lowBits]->scriptState.pc = &seqPlayer->seqData[cmdArgU16];
                    }
                    break;

                case 0x70: // `stio(bits:3)`, channel: io write value
                    channel->soundScriptIO[lowBits] = scriptState->value;
                    break;

                case 0x78: // `rldlayer(bits:3, reladdr16)`, channel: set layer relative
                    temp1 = AudioSeq_ScriptReadS16(scriptState);
                    if (!AudioSeq_SeqChannelSetLayer(channel, lowBits)) {
                        channel->layers[lowBits]->scriptState.pc = &scriptState->pc[temp1];
                    }
                    break;
            }
            continue;
        }

        lowBits = cmd & 0xF;

        switch (cmd & 0xF0) {
            case 0x00: // `cdelay(bits:4)`, channel: delay short
                channel->delay = lowBits;
                goto exit_loop;

            case 0x10: // `sample(bits:3, addr)`, channel: load sample
                if (lowBits < 8) {
                    channel->soundScriptIO[lowBits] = -1;
                    if (AudioLoad_SlowLoadSample(channel->fontId, scriptState->value,
                                                 &channel->soundScriptIO[lowBits]) == -1) {}
                } else {
                    lowBits -= 8;
                    channel->soundScriptIO[lowBits] = -1;
                    if (AudioLoad_SlowLoadSample(channel->fontId, channel->unk_22 + 0x100,
                                                 &channel->soundScriptIO[lowBits]) == -1) {}
                }
                break;

            case 0x60: // `ldio(bits:4)`, channel: io read value
                scriptState->value = channel->soundScriptIO[lowBits];
                if (lowBits < 2) {
                    channel->soundScriptIO[lowBits] = -1;
                }
                break;

            case 0x50: // `subio(bits:4)`, channel: io read value subtract
                scriptState->value -= channel->soundScriptIO[lowBits];
                break;

            case 0x20: // `ldchan(bits:4, addr)`, channel: start channel
                cmdArgU16 = AudioSeq_ScriptReadS16(scriptState);
                AudioSeq_SequenceChannelEnable(seqPlayer, lowBits, &seqPlayer->seqData[cmdArgU16]);
                break;

            case 0x30: // `stcio(bits:4, u8)`, channel: io write value 2
                cmd = AudioSeq_ScriptReadU8(scriptState);
                seqPlayer->channels[lowBits]->soundScriptIO[cmd] = scriptState->value;
                break;

            case 0x40: // `ldcio(bits:4, u8)`, channel: io read value 2
                cmd = AudioSeq_ScriptReadU8(scriptState);
                scriptState->value = seqPlayer->channels[lowBits]->soundScriptIO[cmd];
                break;
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
    u8 cmd;
    u8 cmdLowBits;
    SeqScriptState* seqScript = &seqPlayer->scriptState;
    s16 tempS;
    u16 temp;
    s32 i;
    s32 value;
    u8* data;
    u8* data2;
    u8* data3;
    s32 pad;
    s32 dummy;
    s32 delay;

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
            cmd = AudioSeq_ScriptReadU8(seqScript);

            // 0xF2 and above are "flow control" commands, including termination.
            if (cmd >= 0xF2) {
                delay = AudioSeq_HandleScriptFlowControl(
                    seqPlayer, seqScript, cmd, AudioSeq_GetScriptControlFlowArgument(&seqPlayer->scriptState, cmd));

                if (delay != 0) {
                    if (delay == -1) {
                        AudioSeq_SequencePlayerDisable(seqPlayer);
                    } else {
                        seqPlayer->delay = delay;
                    }
                    break;
                }
                continue;
            }

            if (cmd >= 0xC0) {
                switch (cmd) {
                    case 0xF1: // `allocnotelist(u8)`, seqPlayer: reserve notes
                        Audio_NotePoolClear(&seqPlayer->notePool);
                        cmd = AudioSeq_ScriptReadU8(seqScript);
                        Audio_NotePoolFill(&seqPlayer->notePool, cmd);
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

                    case 0xF0: // `freenotelist()`, seqPlayer: unreserve notes
                        Audio_NotePoolClear(&seqPlayer->notePool);
                        break;

                    case 0xDF: // `transpose(s8)`, seqPlayer: transpose
                        seqPlayer->transposition = 0;
                        FALLTHROUGH;
                    case 0xDE: // `rtranspose(s8)`, seqPlayer: transpose relative
                        seqPlayer->transposition += (s8)AudioSeq_ScriptReadU8(seqScript);
                        break;

                    case 0xDD: // `tempo(u8)`, seqPlayer: set tempo
                        seqPlayer->tempo = AudioSeq_ScriptReadU8(seqScript) * TATUMS_PER_BEAT;
                        if (seqPlayer->tempo > gAudioContext.tempoInternalToExternal) {
                            seqPlayer->tempo = (u16)gAudioContext.tempoInternalToExternal;
                        }

                        if ((s16)seqPlayer->tempo <= 0) {
                            seqPlayer->tempo = 1;
                        }
                        break;

                    case 0xDC: // `tempochg(s8)`, seqPlayer: add tempo
                        seqPlayer->unk_0C = (s8)AudioSeq_ScriptReadU8(seqScript) * TATUMS_PER_BEAT;
                        break;

                    case 0xDA: // `volmode(s8)`, seqPlayer: change volume
                        cmd = AudioSeq_ScriptReadU8(seqScript);
                        temp = AudioSeq_ScriptReadS16(seqScript);
                        switch (cmd) {
                            case 0:
                            case 1:
                                if (seqPlayer->state != 2) {
                                    seqPlayer->fadeTimerUnkEu = temp;
                                    seqPlayer->state = cmd;
                                }
                                break;

                            case 2:
                                seqPlayer->fadeTimer = temp;
                                seqPlayer->state = cmd;
                                seqPlayer->fadeVelocity = (0.0f - seqPlayer->fadeVolume) / (s32)seqPlayer->fadeTimer;
                                break;
                        }
                        break;

                    case 0xDB: // `vol(u8)`, seqPlayer: set volume
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
                                        ((value / 127.0f) - seqPlayer->fadeVolume) / (s32)seqPlayer->fadeTimer;
                                } else {
                                    seqPlayer->fadeVolume = value / 127.0f;
                                }
                                break;

                            case 2:
                                break;
                        }
                        break;

                    case 0xD9: // ``, seqPlayer: set volume scale
                        seqPlayer->fadeVolumeScale = (s8)AudioSeq_ScriptReadU8(seqScript) / 127.0f;
                        break;

                    case 0xD7: // `initchan(hex16)`, seqPlayer: initialize channels
                        temp = AudioSeq_ScriptReadS16(seqScript);
                        AudioSeq_SequencePlayerSetupChannels(seqPlayer, temp);
                        break;

                    case 0xD6: // `freechan(hex16)`, seqPlayer: disable channels
                        AudioSeq_ScriptReadS16(seqScript);
                        break;

                    case 0xD5: // `mutescale(s8)`, seqPlayer: set mute scale
                        seqPlayer->muteVolumeScale = (s8)AudioSeq_ScriptReadU8(seqScript) / 127.0f;
                        break;

                    case 0xD4: // `mute()`, seqPlayer: mute
                        seqPlayer->muted = true;
                        break;

                    case 0xD3: // `mutebhv(hex8)`, seqPlayer: set mute behavior
                        seqPlayer->muteBehavior = AudioSeq_ScriptReadU8(seqScript);
                        break;

                    case 0xD1: // `ldshortgatearr(addr)`, seqPlayer: set short note gatetime table
                    case 0xD2: // `ldshortvelarr(addr)`, seqPlayer: set short note velocity table
                        temp = AudioSeq_ScriptReadS16(seqScript);
                        data3 = &seqPlayer->seqData[temp];
                        if (cmd == 0xD2) {
                            seqPlayer->shortNoteVelocityTable = data3;
                        } else {
                            seqPlayer->shortNoteGateTimeTable = data3;
                        }
                        break;

                    case 0xD0: // `notealloc(u8)`, seqPlayer: set note allocation policy
                        seqPlayer->noteAllocPolicy = AudioSeq_ScriptReadU8(seqScript);
                        break;

                    case 0xCE: // `rand(u8)`, seqPlayer: random value
                        cmd = AudioSeq_ScriptReadU8(seqScript);
                        if (cmd == 0) {
                            seqScript->value = (gAudioContext.audioRandom >> 2) & 0xFF;
                        } else {
                            seqScript->value = (gAudioContext.audioRandom >> 2) % cmd;
                        }
                        break;

                    case 0xCD: // `dyncall(addr)`, seqPlayer: dyncall
                        temp = AudioSeq_ScriptReadS16(seqScript);
                        if ((seqScript->value != -1) && (seqScript->depth != 3)) {
                            data = seqPlayer->seqData + (u32)(temp + (seqScript->value << 1));
                            seqScript->stack[seqScript->depth] = seqScript->pc;
                            seqScript->depth++;

                            temp = (data[0] << 8) + data[1];
                            seqScript->pc = &seqPlayer->seqData[temp];
                        }
                        break;

                    case 0xCC: // `ldi(u8)`, seqPlayer: set value
                        seqScript->value = AudioSeq_ScriptReadU8(seqScript);
                        break;

                    case 0xC9: // `and(u8)`, seqPlayer: `bit and` -> set value
                        seqScript->value &= AudioSeq_ScriptReadU8(seqScript);
                        break;

                    case 0xC8: // `sub(u8)`, seqPlayer: subtract -> set value
                        seqScript->value -= AudioSeq_ScriptReadU8(seqScript);
                        break;

                    case 0xC7: // `stseq(u8, addr)`, seqPlayer: write into sequence script
                        cmd = AudioSeq_ScriptReadU8(seqScript);
                        temp = AudioSeq_ScriptReadS16(seqScript);
                        data2 = &seqPlayer->seqData[temp];
                        *data2 = (u8)seqScript->value + cmd;
                        break;

                    case 0xC6: // `stop()`, seqPlayer: stop script
                        seqPlayer->stopScript = true;
                        return;

                    case 0xC5: // `scriptctr(u16)`, seqPlayer: set script counter
                        seqPlayer->scriptCounter = (u16)AudioSeq_ScriptReadS16(seqScript);
                        break;

                    case 0xEF: // ``, seqPlayer:
                        AudioSeq_ScriptReadS16(seqScript);
                        AudioSeq_ScriptReadU8(seqScript);
                        break;

                    case 0xC4: // `runseq(u8, u8)`, seqPlayer: start sequence
                        cmd = AudioSeq_ScriptReadU8(seqScript);
                        if (cmd == 0xFF) {
                            cmd = seqPlayer->playerIdx;
                        }
                        cmdLowBits = AudioSeq_ScriptReadU8(seqScript);
                        AudioLoad_SyncInitSeqPlayer(cmd, cmdLowBits, 0);
                        if (cmd == (u8)seqPlayer->playerIdx) {
                            return;
                        }
                        break;
                }
                continue;
            }

            cmdLowBits = cmd & 0x0F;

            switch (cmd & 0xF0) {
                case 0x00: // `testchan(bits:4)`, seqPlayer: test channel disabled
                    seqScript->value = seqPlayer->channels[cmdLowBits]->enabled ^ 1;
                    break;

                case 0x50: // `subio(bits:4)`, seqPlayer: io read value subtract
                    seqScript->value -= seqPlayer->soundScriptIO[cmdLowBits];
                    break;

                case 0x70: // `stio(bits:4)`, seqPlayer: io write value
                    seqPlayer->soundScriptIO[cmdLowBits] = seqScript->value;
                    break;

                case 0x80: // `ldio(bits:4)`, seqPlayer: io read val
                    seqScript->value = seqPlayer->soundScriptIO[cmdLowBits];
                    if (cmdLowBits < 2) {
                        seqPlayer->soundScriptIO[cmdLowBits] = -1;
                    }
                    break;

                case 0x40: // `stopchan(bits:4)`, seqPlayer: disable channel
                    AudioSeq_SequenceChannelDisable(seqPlayer->channels[cmdLowBits]);
                    break;

                case 0x90: // `ldchan(bits:4, addr)`, seqPlayer: start channel
                    temp = AudioSeq_ScriptReadS16(seqScript);
                    AudioSeq_SequenceChannelEnable(seqPlayer, cmdLowBits, (void*)&seqPlayer->seqData[temp]);
                    break;

                case 0xA0: // `rldchan(bits:4, reladdr16)`, seqPlayer: start channel relative
                    tempS = AudioSeq_ScriptReadS16(seqScript);
                    AudioSeq_SequenceChannelEnable(seqPlayer, cmdLowBits, (void*)&seqScript->pc[tempS]);
                    break;

                case 0xB0: // `ldseq(bits:4, u8, addr)`, seqPlayer: load sequence
                    cmd = AudioSeq_ScriptReadU8(seqScript);
                    temp = AudioSeq_ScriptReadS16(seqScript);
                    data2 = &seqPlayer->seqData[temp];
                    AudioLoad_SlowLoadSeq(cmd, data2, &seqPlayer->soundScriptIO[cmdLowBits]);
                    break;

                case 0x60: // `ldres(bits:4, u8, u8)`, seqPlayer: async load
                    cmd = AudioSeq_ScriptReadU8(seqScript);
                    value = cmd;
                    temp = AudioSeq_ScriptReadU8(seqScript);
                    AudioLoad_ScriptLoad(value, temp, &seqPlayer->soundScriptIO[cmdLowBits]);
                    break;
            }
        }
    }

    for (i = 0; i < SEQ_NUM_CHANNELS; i++) {
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
        if (seqPlayer->enabled == true) {
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

    for (i = 0; i < SEQ_NUM_CHANNELS; i++) {
        AudioSeq_InitSequenceChannel(seqPlayer->channels[i]);
    }
}

void AudioSeq_InitSequencePlayerChannels(s32 playerIdx) {
    SequenceChannel* channel;
    SequencePlayer* seqPlayer = &gAudioContext.seqPlayers[playerIdx];
    s32 i;
    s32 j;

    for (i = 0; i < SEQ_NUM_CHANNELS; i++) {
        seqPlayer->channels[i] = AudioHeap_AllocZeroed(&gAudioContext.miscPool, sizeof(SequenceChannel));
        if (seqPlayer->channels[i] == NULL) {
            seqPlayer->channels[i] = &gAudioContext.sequenceChannelNone;
        } else {
            channel = seqPlayer->channels[i];
            channel->seqPlayer = seqPlayer;
            channel->enabled = false;
            for (j = 0; j < ARRAY_COUNT(channel->layers); j++) {
                channel->layers[j] = NULL;
            }
        }
        AudioSeq_InitSequenceChannel(seqPlayer->channels[i]);
    }
}

void AudioSeq_InitSequencePlayer(SequencePlayer* seqPlayer) {
    s32 i;
    s32 j;

    for (i = 0; i < SEQ_NUM_CHANNELS; i++) {
        seqPlayer->channels[i] = &gAudioContext.sequenceChannelNone;
    }

    seqPlayer->enabled = false;
    seqPlayer->muted = false;
    seqPlayer->fontDmaInProgress = false;
    seqPlayer->seqDmaInProgress = false;
    seqPlayer->applyBend = false;

    for (j = 0; j < ARRAY_COUNT(seqPlayer->soundScriptIO); j++) {
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

    for (i = 0; i < ARRAY_COUNT(gAudioContext.sequenceLayers); i++) {
        gAudioContext.sequenceLayers[i].channel = NULL;
        gAudioContext.sequenceLayers[i].enabled = false;
    }

    for (i = 0; i < ARRAY_COUNT(gAudioContext.seqPlayers); i++) {
        AudioSeq_InitSequencePlayer(&gAudioContext.seqPlayers[i]);
    }
}
