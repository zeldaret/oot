#include "synthInternals.h"

#ifndef MIN
#define MIN(a, b) (((a) < (b)) ? (a) : (b))
#endif

static s32 __nextSampleTime(ALSynth* drvr, ALPlayer** client);
static s32 _timeToSamplesNoRound(ALSynth* synth, s32 micros);

void alSynNew(ALSynth* drvr, ALSynConfig* c) {
    s32 i;
    ALVoice* vv;
    PVoice* pv;
    ALVoice* vvoices;
    PVoice* pvoices;
    ALHeap* hp = c->heap;
    ALSave* save;
    ALFilter* sources;
    ALParam* params;
    ALParam* paramPtr;

    drvr->head = NULL;
    drvr->numPVoices = c->maxPVoices;
    drvr->curSamples = 0;
    drvr->paramSamples = 0;
    drvr->outputRate = c->outputRate;
    drvr->maxOutSamples = AL_MAX_RSP_SAMPLES;
    drvr->dma = (ALDMANew)c->dmaproc;

    save = alHeapAlloc(hp, 1, sizeof(ALSave));
    alSaveNew(save);
    drvr->outputFilter = &save->filter;

    // allocate and initialize the auxilliary effects bus. at present we only support 1 effects bus.
    drvr->auxBus = alHeapAlloc(hp, 1, sizeof(ALAuxBus));
    drvr->maxAuxBusses = 1;
    sources = alHeapAlloc(hp, c->maxPVoices, sizeof(ALFilter*));
    alAuxBusNew(drvr->auxBus, sources, c->maxPVoices);

    // allocate and initialize the main bus.
    drvr->mainBus = alHeapAlloc(hp, 1, sizeof(ALMainBus));
    sources = alHeapAlloc(hp, c->maxPVoices, sizeof(ALFilter*));
    alMainBusNew(drvr->mainBus, sources, c->maxPVoices);

    if (c->fxType != AL_FX_NONE) {
        // Allocate an effect and set parameters
        alSynAllocFX(drvr, 0, c, hp);
    } else {
        // Connect the aux bus to the main bus
        alMainBusParam(drvr->mainBus, AL_FILTER_ADD_SOURCE, &drvr->auxBus[0]);
    }

    // Build the physical voice lists
    drvr->pFreeList.next = NULL;
    drvr->pFreeList.prev = NULL;
    drvr->pLameList.next = NULL;
    drvr->pLameList.prev = NULL;
    drvr->pAllocList.next = NULL;
    drvr->pAllocList.prev = NULL;

    pvoices = alHeapAlloc(hp, c->maxPVoices, sizeof(PVoice));
    for (i = 0; i < c->maxPVoices; i++) {
        pv = &pvoices[i];
        alLink(&pv->node, &drvr->pFreeList);
        pv->vvoice = NULL;

        alLoadNew(&pv->decoder, drvr->dma, hp);
        alLoadParam(&pv->decoder, AL_FILTER_SET_SOURCE, NULL);

        alResampleNew(&pv->resampler, hp);
        alResampleParam(&pv->resampler, AL_FILTER_SET_SOURCE, &pv->decoder);

        alEnvmixerNew(&pv->envmixer, hp);
        alEnvmixerParam(&pv->envmixer, AL_FILTER_SET_SOURCE, &pv->resampler);

        alAuxBusParam(drvr->auxBus, AL_FILTER_ADD_SOURCE, &pv->envmixer);

        pv->channelKnob = &pv->envmixer.filter;
    }

    alSaveParam(save, AL_FILTER_SET_SOURCE, drvr->mainBus);

    // build the parameter update list
    params = alHeapAlloc(hp, c->maxUpdates, sizeof(ALParam));
    drvr->paramList = NULL;
    for (i = 0; i < c->maxUpdates; i++) {
        paramPtr = &params[i];
        paramPtr->next = drvr->paramList;
        drvr->paramList = paramPtr;
    }
    drvr->heap = hp;
}

/**
 * slAudioFrame() is called every video frame, and is based on the video
 * frame interrupt. It is assumed to be an accurate time source for the
 * clients.
 */
Acmd* alAudioFrame(Acmd* cmdList, s32* cmdLen, s16* outBuf, s32 outLen) {
    ALPlayer* client;
    ALFilter* output;
    ALSynth* drvr = &alGlobals->drvr;
    s16 tmp = 0; // Starting buffer in DMEM
    Acmd* cmdlEnd = cmdList;
    Acmd* cmdPtr;
    s32 nOut;
    s16* lOutBuf = outBuf;

    if (drvr->head == NULL) {
        // nothing to do
        *cmdLen = 0;
        return cmdList;
    }

    // run down list of clients and execute callback if needed this
    // subframe. Here we do all the work for the frame at the
    // start. Time offsets that occur before the next frame are
    // executed "early".
    //
    // paramSamples = time of next parameter change.
    // curSamples = current sample time.
    // so paramSamples - curSamples is the time until the next parameter change.
    // if the next parameter change occurs within this frame time (outLen),
    // then call back the client that contains the parameter change.
    // Note, paramSamples must be rounded down to 16 sample boundary for use
    // during the client handler.

    for (drvr->paramSamples = __nextSampleTime(drvr, &client); drvr->paramSamples - drvr->curSamples < outLen;
         drvr->paramSamples = __nextSampleTime(drvr, &client)) {
        drvr->paramSamples &= ~0xF;
        client->samplesLeft += _timeToSamplesNoRound(drvr, (*client->handler)(client));
    }

    // for safety's sake, always store paramSamples aligned to 16 sample boundary.
    // this way, if an voice handler routine gets called outside the ALVoiceHandler
    // routine (alSynAllocVoice) it will get timestamped with an aligned value and
    // will be processed immediately next audio frame.
    drvr->paramSamples &= ~0xF;

    // Now build the command list in small chunks
    while (outLen > 0) {
        nOut = MIN(drvr->maxOutSamples, outLen);

        // construct the command list for each physical voice by calling the head of the filter chain.
        cmdPtr = cmdlEnd;
        aSegment(cmdPtr++, 0, 0);
        output = drvr->outputFilter;
        (*output->setParam)(output, AL_FILTER_SET_DRAM, lOutBuf);
        cmdlEnd = (*output->handler)(output, &tmp, nOut, drvr->curSamples, cmdPtr);

        outLen -= nOut;
        lOutBuf += nOut << 1; // For Stereo
        drvr->curSamples += nOut;
    }
    *cmdLen = (s32)(cmdlEnd - cmdList);

    _collectPVoices(drvr); // collect free physical voices
    return cmdlEnd;
}

ALParam* __allocParam(void) {
    ALParam* update = NULL;
    ALSynth* drvr = &alGlobals->drvr;

    if (drvr->paramList != NULL) {
        update = drvr->paramList;
        drvr->paramList = drvr->paramList->next;
        update->next = NULL;
    }
    return update;
}

void __freeParam(ALParam* param) {
    ALSynth* drvr = &alGlobals->drvr;
    param->next = drvr->paramList;
    drvr->paramList = param;
}

void _collectPVoices(ALSynth* drvr) {
    ALLink* dl;
    PVoice* pv;

    while ((dl = drvr->pLameList.next) != NULL) {
        pv = (PVoice*)dl;
        alUnlink(&pv->node);
        alLink(&pv->node, &drvr->pFreeList);
    }
}

void _freePVoice(ALSynth* drvr, PVoice* pvoice) {
    // move the voice from the allocated list to the lame list
    alUnlink(&pvoice->node);
    alLink(&pvoice->node, &drvr->pLameList);
}

static s32 _timeToSamplesNoRound(ALSynth* synth, s32 micros) {
    // Add 0.5 to adjust the average affect of the truncation error produced by casting a float to an int.
    f32 tmp = ((f32)micros) * synth->outputRate / 1000000.0 + 0.5;
    return (s32)tmp;
}

s32 _timeToSamples(ALSynth* synth, s32 micros) {
    return _timeToSamplesNoRound(synth, micros) & ~0xF;
}

static s32 __nextSampleTime(ALSynth* drvr, ALPlayer** client) {
    ALMicroTime delta = 0x7FFFFFFF; // max delta for s32
    ALPlayer* cl;

    *client = NULL;

    for (cl = drvr->head; cl != NULL; cl = cl->next) {
        if (cl->samplesLeft - drvr->curSamples < delta) {
            *client = cl;
            delta = cl->samplesLeft - drvr->curSamples;
        }
    }
    return (*client)->samplesLeft;
}
