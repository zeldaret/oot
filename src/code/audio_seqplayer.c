#include <ultra64.h>
#include <global.h>

#define PORTAMENTO_IS_SPECIAL(x) ((x).mode & 0x80)
#define PORTAMENTO_MODE(x) ((x).mode & ~0x80)
#define PORTAMENTO_MODE_1 1
#define PORTAMENTO_MODE_2 2
#define PORTAMENTO_MODE_3 3
#define PORTAMENTO_MODE_4 4
#define PORTAMENTO_MODE_5 5

extern u8 D_80130470[];

u8 Audio_M64ReadU8(M64ScriptState* state);

s16 Audio_M64ReadS16(M64ScriptState* state);

u16 Audio_M64ReadCompressedU16(M64ScriptState* state);

u8 Audio_GetInstrument(SequenceChannel* seqChannel, u8 instId, Instrument** instOut, AdsrSettings* adsr);

u16 Audio_GetScriptControlFlowArgument(M64ScriptState* state, u8 arg1) {
    u8 temp_v0 = D_80130470[arg1];
    u8 loBits = temp_v0 & 3;
    u16 ret = 0;
    if (loBits == 1) {
        if ((temp_v0 & 0x80) == 0) {
            ret = Audio_M64ReadU8(state);
        } else {
            ret = Audio_M64ReadS16(state);
        }
    }
    return ret;
}

s32 Audio_HandleScriptFlowControl(SequencePlayer* seqPlayer, M64ScriptState* state, s32 cmd, s32 arg) {
    switch (cmd) {
        case 0xFF:
            if (state->depth == 0) {
                return -1;
            }
            state->pc = state->stack[--state->depth];
            break;

        case 0xFD:
            return Audio_M64ReadCompressedU16(state);

        case 0xFE:
            return 1;

        case 0xFC:
            state->stack[state->depth++] = state->pc;
            state->pc = seqPlayer->seqData + (u16)arg;
            break;

        case 0xF8:
            state->remLoopIters[state->depth] = arg;
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
            state->pc = seqPlayer->seqData + (u16)arg;
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
            state->pc += (s8)(arg & 0xFF);
            break;
    }

    return 0;
}

void Audio_SequenceChannelInit(SequenceChannel* seqChannel) {
    s32 i;

    if (seqChannel == &gAudioContext.gSequenceChannelNone) {
        return;
    }

    seqChannel->enabled = false;
    seqChannel->finished = false;
    seqChannel->stopScript = false;
    seqChannel->stopSomething2 = false;
    seqChannel->hasInstrument = false;
    seqChannel->stereoHeadsetEffects = false;
    seqChannel->transposition = 0;
    seqChannel->largeNotes = false;
    seqChannel->bookOffset = 0;
    seqChannel->reverbBits.asByte = 0;
    seqChannel->changes.asByte = 0xff;
    seqChannel->scriptState.depth = 0;
    seqChannel->newPan = 0x40;
    seqChannel->panChannelWeight = 0x80;
    seqChannel->velocityRandomVariance = 0;
    seqChannel->durationRandomVariance = 0;
    seqChannel->noteUnused = NULL;
    seqChannel->reverbIndex = 0;
    seqChannel->reverb = 0;
    seqChannel->unk_0C = 0;
    seqChannel->notePriority = 3;
    seqChannel->someOtherPriority = 1;
    seqChannel->delay = 0;
    seqChannel->adsr.envelope = gDefaultEnvelope;
    seqChannel->adsr.releaseRate = 0xf0;
    seqChannel->adsr.sustain = 0;
    seqChannel->vibratoRateTarget = 0x800;
    seqChannel->vibratoRateStart = 0x800;
    seqChannel->vibratoExtentTarget = 0;
    seqChannel->vibratoExtentStart = 0;
    seqChannel->vibratoRateChangeDelay = 0;
    seqChannel->vibratoExtentChangeDelay = 0;
    seqChannel->vibratoDelay = 0;
    seqChannel->unk_CC = NULL;
    seqChannel->unk_20 = 0;
    seqChannel->unk_0F = 0;
    seqChannel->volume = 1.0f;
    seqChannel->volumeScale = 1.0f;
    seqChannel->freqScale = 1.0f;

    for (i = 0; i < 8; i++) {
        seqChannel->soundScriptIO[i] = -1;
    }

    seqChannel->unused = false;
    Audio_InitNoteLists(&seqChannel->notePool);
}

s32 Audio_SeqChannelSetLayer(SequenceChannel* seqChannel, s32 layerIdx) {
    SequenceChannelLayer* layer;

    if (seqChannel->layers[layerIdx] == NULL) {
        SequenceChannelLayer* layer;
        layer = Audio_AudioListPopBack(&gAudioContext.gLayerFreeList);
        seqChannel->layers[layerIdx] = layer;
        if (layer == NULL) {
            seqChannel->layers[layerIdx] = NULL;
            return -1;
        }
    } else {
        Audio_SeqChanLayerNoteDecay(seqChannel->layers[layerIdx]);
    }

    layer = seqChannel->layers[layerIdx];
    layer->seqChannel = seqChannel;
    layer->adsr = seqChannel->adsr;
    layer->adsr.releaseRate = 0;
    layer->enabled = true;
    layer->finished = false;
    layer->stopSomething = false;
    layer->continuousNotes = false;
    layer->bit3 = false;
    layer->ignoreDrumPan = false;
    layer->bit1 = false;
    layer->notePropertiesNeedInit = false;
    layer->reverbBits.asByte = 0;
    layer->portamento.mode = 0;
    layer->scriptState.depth = 0;
    layer->noteDuration = 0x80;
    layer->pan = 0x40;
    layer->transposition = 0;
    layer->delay = 0;
    layer->duration = 0;
    layer->delay2 = 0;
    layer->note = NULL;
    layer->instrument = NULL;
    layer->freqScale = 1.0f;
    layer->unk_34 = 1.0f;
    layer->velocitySquare2 = 0.0f;
    layer->instOrWave = 0xff;
    return 0;
}

void Audio_SeqChannelLayerDisable(SequenceChannelLayer* layer) {
    if (layer != NULL) {
        if (layer->seqChannel != &gAudioContext.gSequenceChannelNone && layer->seqChannel->seqPlayer->finished == 1) {
            Audio_SeqChanLayerNoteRelease(layer);
        } else {
            Audio_SeqChanLayerNoteDecay(layer);
        }
        layer->enabled = false;
        layer->finished = true;
    }
}

void Audio_SeqChannelLayerFree(SequenceChannel* seqChannel, s32 layerIdx) {
    SequenceChannelLayer* layer = seqChannel->layers[layerIdx];

    if (layer != NULL) {
        Audio_AudioListPushBack(&gAudioContext.gLayerFreeList, &layer->listItem);
        Audio_SeqChannelLayerDisable(layer);
        seqChannel->layers[layerIdx] = NULL;
    }
}

void Audio_SequenceChannelDisable(SequenceChannel* seqChannel) {
    s32 i;
    for (i = 0; i < 4; i++) {
        Audio_SeqChannelLayerFree(seqChannel, i);
    }

    Audio_NotePoolClear(&seqChannel->notePool);
    seqChannel->enabled = false;
    seqChannel->finished = true;
}

void Audio_SequencePlayerInitChannels(SequencePlayer* seqPlayer, u16 channelBits) {
    SequenceChannel* seqChannel;
    s32 i;

    for (i = 0; i < 0x10; i++) {
        if (channelBits & 1) {
            seqChannel = seqPlayer->channels[i];
            seqChannel->bankId = seqPlayer->defaultBank;
            seqChannel->muteBehavior = seqPlayer->muteBehavior;
            seqChannel->noteAllocPolicy = seqPlayer->noteAllocPolicy;
        }
        channelBits = channelBits >> 1;
    }
}

void Audio_SequencePlayerDisableChannels(SequencePlayer* seqPlayer, u16 channelBitsUnused) {
    SequenceChannel* seqChannel;
    s32 i;

    for (i = 0; i < 0x10; i++) {
        seqChannel = seqPlayer->channels[i];
        if (IS_SEQUENCE_CHANNEL_VALID(seqChannel) == 1) {
            Audio_SequenceChannelDisable(seqChannel);
        }
    }
}

void Audio_SequenceChannelEnable(SequencePlayer* seqPlayer, u8 channelIdx, void* script) {
    SequenceChannel* seqChannel = seqPlayer->channels[channelIdx];
    s32 i;

    seqChannel->enabled = true;
    seqChannel->finished = false;
    seqChannel->scriptState.depth = 0;
    seqChannel->scriptState.pc = script;
    seqChannel->delay = 0;
    for (i = 0; i < 4; i++) {
        if (seqChannel->layers[i] != NULL) {
            Audio_SeqChannelLayerFree(seqChannel, i);
        }
    }
}

void Audio_SequencePlayerDisableAsFinished(SequencePlayer* seqPlayer) {
    seqPlayer->finished = true;
    Audio_SequencePlayerDisable(seqPlayer);
}

void Audio_SequencePlayerDisable(SequencePlayer* seqPlayer) {
    Audio_SequencePlayerDisableChannels(seqPlayer, 0xffff);
    Audio_NotePoolClear(&seqPlayer->notePool);
    if (!seqPlayer->enabled) {
        return;
    }
    seqPlayer->enabled = false;
    seqPlayer->finished = true;

    if (Audio_IsSeqLoadComplete(seqPlayer->seqId)) {
        Audio_SetSeqLoadStatus(seqPlayer->seqId, 3);
    }
    if (Audio_IsBankLoadComplete(seqPlayer->defaultBank)) {
        Audio_SetBankLoadStatus(seqPlayer->defaultBank, 4);
    }

    if (seqPlayer->defaultBank == gAudioContext.gBankLoadedPool.temporary.entries[0].id) {
        gAudioContext.gBankLoadedPool.temporary.nextSide = 0;
    } else if (seqPlayer->defaultBank == gAudioContext.gBankLoadedPool.temporary.entries[1].id) {
        gAudioContext.gBankLoadedPool.temporary.nextSide = 1;
    }
}

void Audio_AudioListPushBack(AudioListItem* list, AudioListItem* item) {
    if (item->prev == NULL) {
        list->prev->next = item;
        item->prev = list->prev;
        item->next = list;
        list->prev = item;
        list->u.count++;
        item->pool = list->pool;
    }
}

void* Audio_AudioListPopBack(AudioListItem* list) {
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

void Audio_InitLayerFreelist(void) {
    s32 i;

    gAudioContext.gLayerFreeList.prev = &gAudioContext.gLayerFreeList;
    gAudioContext.gLayerFreeList.next = &gAudioContext.gLayerFreeList;
    gAudioContext.gLayerFreeList.u.count = 0;
    gAudioContext.gLayerFreeList.pool = NULL;

    for (i = 0; i < ARRAY_COUNT(gAudioContext.gSequenceLayers); i++) {
        gAudioContext.gSequenceLayers[i].listItem.u.value = &gAudioContext.gSequenceLayers[i];
        gAudioContext.gSequenceLayers[i].listItem.prev = NULL;
        Audio_AudioListPushBack(&gAudioContext.gLayerFreeList, &gAudioContext.gSequenceLayers[i].listItem);
    }
}

u8 Audio_M64ReadU8(M64ScriptState* state) {
    return *(state->pc++);
}

s16 Audio_M64ReadS16(M64ScriptState* state) {
    s16 ret = *(state->pc++) << 8;
    ret = *(state->pc++) | ret;
    return ret;
}

u16 Audio_M64ReadCompressedU16(M64ScriptState* state) {
    u16 ret = *(state->pc++);
    if (ret & 0x80) {
        ret = (ret << 8) & 0x7f00;
        ret = *(state->pc++) | ret;
    }
    return ret;
}

void func_800E9ED8(SequenceChannelLayer* layer);
s32 func_800E9F64(SequenceChannelLayer* layer, s32 arg1);
s32 func_800EA0C0(SequenceChannelLayer* layer);
s32 func_800EA440(SequenceChannelLayer* layer, s32 arg1);
s32 func_800EAAE0(SequenceChannelLayer* layer, s32 arg1);

void Audio_SeqChannelLayerProcessScript(SequenceChannelLayer* layer) {
    s32 val;

    if (layer->enabled == 0) {
        return;
    }

    if (layer->delay > 1) {
        layer->delay--;
        if (!layer->stopSomething && layer->delay <= layer->duration) {
            Audio_SeqChanLayerNoteDecay(layer);
            layer->stopSomething = true;
        }
        return;
    }

    func_800E9ED8(layer);
    val = func_800EA0C0(layer);
    if (val == -1) {
        return;
    }

    val = func_800EAAE0(layer, val);
    if (val != -1) {
        val = func_800EA440(layer, val);
    }
    if (val != -1) {
        func_800E9F64(layer, val);
    }

    if (layer->stopSomething == 1) {
        if ((layer->note != NULL) || layer->continuousNotes) {
            Audio_SeqChanLayerNoteDecay(layer);
        }
    }
}

void func_800E9ED8(SequenceChannelLayer* layer) {
    if (!layer->continuousNotes) {
        Audio_SeqChanLayerNoteDecay(layer);
    } else if (layer->note != NULL && layer->note->playbackState.wantedParentLayer == layer) {
        Audio_SeqChanLayerNoteDecay(layer);
    }

    if (PORTAMENTO_MODE(layer->portamento) == PORTAMENTO_MODE_1 ||
        PORTAMENTO_MODE(layer->portamento) == PORTAMENTO_MODE_2) {
        layer->portamento.mode = 0;
    }
    layer->notePropertiesNeedInit = true;
}

s32 func_800E9F64(SequenceChannelLayer* layer, s32 arg1) {
    if (!layer->stopSomething && layer->sound != NULL && layer->sound->sample->bits4 == 2 &&
        layer->sound->sample->bits2 != 0) {
        layer->stopSomething = true;
        return -1;
    }

    if (layer->continuousNotes == 1 && layer->bit1 == 1) {
        return 0;
    }

    if (layer->continuousNotes == 1 && layer->note != NULL && layer->bit3 && arg1 == 1 &&
        layer->note->playbackState.parentLayer == layer) {
        if (layer->sound == NULL) {
            Audio_InitSyntheticWave(layer->note, layer);
        }
    } else {
        if (arg1 == 0) {
            Audio_SeqChanLayerNoteDecay(layer);
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

s32 func_800EA0C0(SequenceChannelLayer* layer) {
    SequenceChannel* seqChannel = layer->seqChannel;
    M64ScriptState* state = &layer->scriptState;
    SequencePlayer* seqPlayer = seqChannel->seqPlayer;
    u16 sp3A;
    u8 cmd;

    for (;;) {
        cmd = Audio_M64ReadU8(state);
        if (cmd < 0xC1) {
            return cmd;
        }
        if (cmd >= 0xF2) {
            u16 arg = Audio_GetScriptControlFlowArgument(state, cmd);
            if (Audio_HandleScriptFlowControl(seqPlayer, state, cmd, arg) == 0) {
                continue;
            }
            Audio_SeqChannelLayerDisable(layer);
            return -1;
        }

        switch (cmd) {
            case 0xC1: // layer_setshortnotevelocity
            case 0xCA: // layer_setpan
            {
                u8 tempByte = *(state->pc++);
                if (cmd == 0xC1) {
                    layer->velocitySquare = (f32)(tempByte * tempByte) / 16129.0f;
                } else {
                    layer->pan = tempByte;
                }
                break;
            }

            case 0xC9: // layer_setshortnoteduration
            case 0xC2: // layer_transpose; set transposition in semitones
            {
                u8 tempByte = *(state->pc++);
                if (cmd == 0xC9) {
                    layer->noteDuration = tempByte;
                } else {
                    layer->transposition = tempByte;
                }
                break;
            }

            case 0xC4: // layer_continuousnoteson
            case 0xC5: // layer_continuousnotesoff
                if (cmd == 0xC4) {
                    layer->continuousNotes = true;
                } else {
                    layer->continuousNotes = false;
                }
                layer->bit1 = false;
                Audio_SeqChanLayerNoteDecay(layer);
                break;

            case 0xC3: // layer_setshortnotedefaultplaypercentage
                sp3A = Audio_M64ReadCompressedU16(state);
                layer->shortNoteDefaultPlayPercentage = sp3A;
                break;

            case 0xC6: // layer_setinstr
                cmd = Audio_M64ReadU8(state);
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
                        layer->adsr.releaseRate = 0;
                    }

                    break;
                }

                if ((layer->instOrWave = Audio_GetInstrument(seqChannel, cmd, &layer->instrument, &layer->adsr)) == 0) {
                    layer->instOrWave = 0xFF;
                }
                break;

            case 0xC7: // layer_portamento
                layer->portamento.mode = Audio_M64ReadU8(state);

                cmd = Audio_M64ReadU8(state);
                cmd += seqChannel->transposition;
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

                sp3A = Audio_M64ReadCompressedU16(state);
                layer->portamentoTime = sp3A;
                break;

            case 0xC8: // layer_disableportamento
                layer->portamento.mode = 0;
                break;

            case 0xCB:
                sp3A = Audio_M64ReadS16(state);
                layer->adsr.envelope = (AdsrEnvelope*)(seqPlayer->seqData + sp3A);
                // fallthrough

            case 0xCF:
                layer->adsr.releaseRate = Audio_M64ReadU8(state);
                break;

            case 0xCC:
                layer->ignoreDrumPan = true;
                break;

            case 0xCD:
                layer->reverbBits.asByte = Audio_M64ReadU8(state);
                break;

            case 0xCE: {
                u8 tempByte = Audio_M64ReadU8(state);
                layer->unk_34 = D_8012F4B4[(tempByte + 0x80) & 0xFF];
                break;
            }

            default:
                switch (cmd & 0xF0) {
                    case 0xD0: // layer_setshortnotevelocityfromtable
                        sp3A = seqPlayer->shortNoteVelocityTable[cmd & 0xF];
                        layer->velocitySquare = (f32)(sp3A * sp3A) / 16129.0f;
                        break;
                    case 0xE0: // layer_setshortnotedurationfromtable
                        layer->noteDuration = (u8)seqPlayer->shortNoteDurationTable[cmd & 0xF];
                        break;
                }
        }
    }
}

s32 func_800EA440(SequenceChannelLayer* layer, s32 arg1) {
    s32 sameSound;
    s32 instOrWave;
    s32 speed;
    f32 temp_f14;
    f32 temp_f2;
    Portamento* portamento;
    f32 freqScale;
    f32 freqScale2;
    AudioBankSound* sound;
    Instrument* instrument;
    Drum* drum;
    s32 pad;
    SequenceChannel* seqChannel;
    SequencePlayer* seqPlayer;
    u8 cmd;
    u16 sfxId;
    s32 cmd2;
    s32 vel;
    f32 time;
    f32 tuning;

    sameSound = 1;
    cmd = arg1;

    instOrWave = layer->instOrWave;
    seqChannel = layer->seqChannel;
    seqPlayer = seqChannel->seqPlayer;

    if (instOrWave == 0xFF) {
        if (!seqChannel->hasInstrument) {
            return -1;
        }
        instOrWave = seqChannel->instOrWave;
    }

    switch (instOrWave) {
        case 0:
            cmd += seqChannel->transposition + layer->transposition;
            layer->semitone = cmd;
            drum = Audio_GetDrum(seqChannel->bankId, cmd);
            if (drum == NULL) {
                layer->stopSomething = true;
                layer->delay2 = layer->delay;
                return -1;
            }
            sound = &drum->sound;
            layer->adsr.envelope = (AdsrEnvelope*)drum->envelope;
            layer->adsr.releaseRate = (u8)drum->releaseRate;
            if (!layer->ignoreDrumPan) {
                layer->pan = drum->pan;
            }
            layer->sound = sound;
            layer->freqScale = sound->tuning;
            break;

        case 1:
            layer->semitone = cmd;
            sfxId = (layer->transposition << 6) + cmd;
            sound = Audio_GetSfx(seqChannel->bankId, sfxId);
            if (sound == NULL) {
                layer->stopSomething = true;
                layer->delay2 = layer->delay + 1;
                return -1;
            }
            layer->sound = sound;
            layer->freqScale = sound->tuning;
            break;

        default:
            cmd += seqPlayer->transposition + seqChannel->transposition + layer->transposition;
            cmd2 = cmd;
            layer->semitone = cmd;
            if (cmd >= 0x80) {
                layer->stopSomething = true;
                return -1;
            }
            if (layer->instOrWave == 0xFF) {
                instrument = seqChannel->instrument;
            } else {
                instrument = layer->instrument;
            }

            if (layer->portamento.mode != 0) {
                portamento = &layer->portamento;
                vel = (cmd > layer->portamentoTargetNote) ? cmd : layer->portamentoTargetNote;

                if (instrument != NULL) {
                    sound = Audio_InstrumentGetAudioBankSound(instrument, vel);
                    sameSound = (layer->sound == sound);
                    layer->sound = sound;
                    tuning = sound->tuning;
                } else {
                    layer->sound = NULL;
                    tuning = 1.0f;
                    if (instOrWave >= 0xC0) {
                        layer->sound = &gAudioContext.gSynthesisReverbs[instOrWave - 0xC0].sound;
                    }
                }

                temp_f2 = gNoteFrequencies[cmd2] * tuning;
                temp_f14 = gNoteFrequencies[layer->portamentoTargetNote] * tuning;

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
                    speed = seqPlayer->tempo * 0x8000 / gAudioContext.gTempoInternalToExternal;
                    if (layer->delay != 0) {
                        speed = speed * 0x100 / (layer->delay * layer->portamentoTime);
                    }
                } else {
                    speed = 0x20000 / (layer->portamentoTime * gAudioContext.gAudioBufferParameters.updatesPerFrame);
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
                    layer->portamentoTargetNote = cmd;
                }
                break;
            }

            if (instrument != NULL) {
                sound = Audio_InstrumentGetAudioBankSound(instrument, cmd);
                sameSound = (sound == layer->sound);
                layer->sound = sound;
                layer->freqScale = gNoteFrequencies[cmd2] * sound->tuning;
            } else {
                layer->sound = NULL;
                layer->freqScale = gNoteFrequencies[cmd2];
                if (instOrWave >= 0xC0) {
                    layer->sound = &gAudioContext.gSynthesisReverbs[instOrWave - 0xC0].sound;
                }
            }
            break;
    }

    layer->delay2 = layer->delay;
    layer->freqScale *= layer->unk_34;
    if (layer->delay == 0) {
        if (layer->sound != NULL) {
            time = (f32)layer->sound->sample->loop->end;
        } else {
            time = 0.0f;
        }
        time *= seqPlayer->tempo;
        time *= gAudioContext.unk_2870;
        time /= layer->freqScale;
        if (time > 32766.0f) {
            time = 32766.0f;
        }
        layer->duration = 0;
        layer->delay = (u16)(s32)time + 1;
        if (layer->portamento.mode != 0) {
            // (It's a bit unclear if 'portamento' has actually always been
            // set when this is reached...)
            if (PORTAMENTO_IS_SPECIAL(*portamento)) {
                s32 speed2;
                speed2 = seqPlayer->tempo * 0x8000 / gAudioContext.gTempoInternalToExternal;
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
    return sameSound;
}

s32 func_800EAAE0(SequenceChannelLayer* layer, s32 arg1) {
    M64ScriptState* state;
    u16 playPercentage;
    s32 velocity;
    SequenceChannel* seqChannel;
    SequencePlayer* seqPlayer;
    s32 intDelta;
    f32 floatDelta;

    state = &layer->scriptState;
    seqChannel = layer->seqChannel;
    seqPlayer = seqChannel->seqPlayer;

    if (arg1 == 0xC0) {
        layer->delay = Audio_M64ReadCompressedU16(state);
        layer->stopSomething = true;
        layer->bit1 = false;
        return -1;
    }

    layer->stopSomething = false;
    if (seqChannel->largeNotes == 1) {
        switch (arg1 & 0xC0) {
            case 0:
                playPercentage = Audio_M64ReadCompressedU16(state);
                velocity = *(state->pc++);
                layer->noteDuration = *(state->pc++);
                layer->playPercentage = playPercentage;
                break;

            case 0x40:
                playPercentage = Audio_M64ReadCompressedU16(state);
                velocity = *(state->pc++);
                layer->noteDuration = 0;
                layer->playPercentage = playPercentage;
                break;

            case 0x80:
                playPercentage = layer->playPercentage;
                velocity = *(state->pc++);
                layer->noteDuration = *(state->pc++);
                break;
        }

        if (velocity > 0x7F || velocity < 0) {
            velocity = 0x7F;
        }
        layer->velocitySquare = (f32)velocity * (f32)velocity / 16129.0f;
        arg1 -= (arg1 & 0xC0);
    } else {
        switch (arg1 & 0xC0) {
            case 0:
                playPercentage = Audio_M64ReadCompressedU16(state);
                layer->playPercentage = playPercentage;
                break;

            case 0x40:
                playPercentage = layer->shortNoteDefaultPlayPercentage;
                break;

            case 0x80:
                playPercentage = layer->playPercentage;
                break;
        }
        arg1 -= (arg1 & 0xC0);
    }

    if (seqChannel->velocityRandomVariance != 0) {
        floatDelta =
            layer->velocitySquare * (f32)(gAudioContext.gAudioRandom % seqChannel->velocityRandomVariance) / 100.0f;
        if ((gAudioContext.gAudioRandom & 0x8000) != 0) {
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

    layer->delay = playPercentage;
    layer->duration = (layer->noteDuration * playPercentage) >> 8;
    if (seqChannel->durationRandomVariance != 0) {
        // @bug should probably be durationRandomVariance
        intDelta = (layer->duration * (gAudioContext.gAudioRandom % seqChannel->velocityRandomVariance)) / 100;
        if ((gAudioContext.gAudioRandom & 0x4000) != 0) {
            intDelta = -intDelta;
        }
        layer->duration += intDelta;
        if (layer->duration < 0) {
            layer->duration = 0;
        } else if (layer->duration > layer->delay) {
            layer->duration = layer->delay;
        }
    }

    if ((seqPlayer->muted && (seqChannel->muteBehavior & (0x40 | 0x10)) != 0) || seqChannel->stopSomething2) {
        layer->stopSomething = true;
        return -1;
    }
    if (seqPlayer->unk_DC != 0) {
        layer->stopSomething = true;
        return -1;
    }
    return arg1;
}

void func_800EAEF4(SequenceChannel* seqChannel, u8 arg1) {
    if ((arg1 & 0xF) != 0) {
        seqChannel->notePriority = arg1 & 0xF;
    }
    arg1 = arg1 >> 4;
    if (arg1 != 0) {
        seqChannel->someOtherPriority = arg1;
    }
}

u8 Audio_GetInstrument(SequenceChannel* seqChannel, u8 instId, Instrument** instOut, AdsrSettings* adsr) {
    Instrument* inst = Audio_GetInstrumentInner(seqChannel->bankId, instId);
    if (inst == NULL) {
        *instOut = NULL;
        return 0;
    }
    adsr->envelope = inst->envelope;
    adsr->releaseRate = inst->releaseRate;
    *instOut = inst;
    instId += 2;
    return instId;
}

void Audio_SetInstrument(SequenceChannel* seqChannel, u8 instId) {
    if (instId >= 0x80) {
        seqChannel->instOrWave = instId;
        seqChannel->instrument = NULL;
    } else if (instId == 0x7F) {
        seqChannel->instOrWave = 0;
        seqChannel->instrument = (Instrument*)1;
    } else if (instId == 0x7E) {
        seqChannel->instOrWave = 1;
        seqChannel->instrument = (Instrument*)2;
    } else if ((seqChannel->instOrWave =
                    Audio_GetInstrument(seqChannel, instId, &seqChannel->instrument, &seqChannel->adsr)) == 0) {
        seqChannel->hasInstrument = false;
        return;
    }
    seqChannel->hasInstrument = true;
}

void Audio_SequenceChannelSetVolume(SequenceChannel* seqChannel, u8 volume) {
    seqChannel->volume = (f32)(s32)volume / 127.0f;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_SequenceChannelProcessScript.s")

void Audio_SequenceChannelProcessScript(SequenceChannel* seqChannel);

#pragma GLOBAL_ASM("asm/non_matchings/code/audio_seqplayer/Audio_SequencePlayerProcessSequence.s")

void Audio_SequencePlayerProcessSequence(SequencePlayer* seqPlayer);

void Audio_ProcessSequences(s32 arg0) {
    SequencePlayer* seqPlayer;
    u32 i;

    gAudioContext.gNoteSubEuOffset =
        (gAudioContext.gAudioBufferParameters.updatesPerFrame - arg0 - 1) * gAudioContext.gMaxSimultaneousNotes;
    for (i = 0; i < (u32)gAudioContext.gAudioBufferParameters.numSequencePlayers; i++) {
        seqPlayer = &gAudioContext.gSequencePlayers[i];
        if (seqPlayer->enabled == 1) {
            Audio_SequencePlayerProcessSequence(seqPlayer);
            Audio_SequencePlayerProcessSound(seqPlayer);
        }
    }
    Audio_ProcessNotes();
}

void Audio_ProcessSequence(SequencePlayer* seqPlayer) {
    while (seqPlayer->unk_DC > 0) {
        Audio_SequencePlayerProcessSequence(seqPlayer);
        Audio_SequencePlayerProcessSound(seqPlayer);
        seqPlayer->unk_DC--;
    }
}

void Audio_ResetSequencePlayer(SequencePlayer* seqPlayer) {
    s32 i;

    Audio_SequencePlayerDisable(seqPlayer);
    seqPlayer->unk_0b2 = false;
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
    seqPlayer->shortNoteDurationTable = gDefaultShortNoteDurationTable;
    seqPlayer->unk_E0 = 0;
    seqPlayer->fadeVolume = 1.0f;
    seqPlayer->fadeVelocity = 0.0f;
    seqPlayer->volume = 0.0f;
    seqPlayer->muteVolumeScale = 0.5f;

    for (i = 0; i < 0x10; i++) {
        Audio_SequenceChannelInit(seqPlayer->channels[i]);
    }
}

void func_800EC734(s32 seqPlayerIdx) {
    SequenceChannel* seqChannel;
    SequencePlayer* seqPlayer;
    s32 i, j;

    seqPlayer = &gAudioContext.gSequencePlayers[seqPlayerIdx];
    for (i = 0; i < 0x10; i++) {
        seqPlayer->channels[i] = Audio_AllocZeroed(&gAudioContext.gNotesAndBuffersPool, sizeof(SequenceChannel));
        if (seqPlayer->channels[i] == NULL) {
            seqPlayer->channels[i] = &gAudioContext.gSequenceChannelNone;
        } else {
            seqChannel = seqPlayer->channels[i];
            seqChannel->seqPlayer = seqPlayer;
            seqChannel->enabled = false;
            for (j = 0; j < 4; j++) {
                seqChannel->layers[j] = NULL;
            }
        }
        Audio_SequenceChannelInit(seqPlayer->channels[i]);
    }
}

void Audio_InitSequencePlayer(SequencePlayer* seqPlayer) {
    s32 i, j;

    for (i = 0; i < 0x10; i++) {
        seqPlayer->channels[i] = &gAudioContext.gSequenceChannelNone;
    }

    seqPlayer->enabled = false;
    seqPlayer->muted = false;
    seqPlayer->bankDmaInProgress = false;
    seqPlayer->seqDmaInProgress = false;
    seqPlayer->unk_0b1 = false;

    for (j = 0; j < 8; j++) {
        seqPlayer->unk_158[j] = -1;
    }
    seqPlayer->muteBehavior = 0x40 | 0x20;
    seqPlayer->fadeVolumeScale = 1.0f;
    seqPlayer->unk_34 = 1.0f;
    Audio_InitNoteLists(&seqPlayer->notePool);
    Audio_ResetSequencePlayer(seqPlayer);
}

void Audio_InitSequencePlayers(void) {
    s32 i;

    Audio_InitLayerFreelist();
    for (i = 0; i < 64; i++) {
        gAudioContext.gSequenceLayers[i].seqChannel = NULL;
        gAudioContext.gSequenceLayers[i].enabled = false;
    }

    for (i = 0; i < 4; i++) {
        Audio_InitSequencePlayer(&gAudioContext.gSequencePlayers[i]);
    }
}
