#include "libaudio.h"
#include "synthInternals.h"
#include "ultra64/convert.h"

Acmd* alResamplePull(void* filter, s16* outp, s32 outCnt, s32 sampleOffset, Acmd* p) {
    ALResampler* f = (ALResampler*)filter;
    Acmd* ptr = p;
    s16 inp;
    s32 inCount;
    ALFilter* source = f->filter.source;
    s32 incr;
    f32 finCount;

    inp = AL_DECODER_OUT;

    if (outCnt == 0) {
        return ptr;
    }

    // check if resampler is required
    if (f->upitch != 0) {
        ptr = (*source->handler)(source, &inp, outCnt, sampleOffset, p);
        aDMEMMove(ptr++, inp, *outp, outCnt << 1);
    } else {
        // clip to maximum allowable pitch
        // FIXME: should we check for some minimum as well?
        if (f->ratio > MAX_RATIO) {
            f->ratio = MAX_RATIO;
        }

        // quantize the pitch
        f->ratio = (s32)(f->ratio * UNITY_PITCH);
        f->ratio = f->ratio / UNITY_PITCH;

        // determine how many samples to generate
        finCount = f->delta + f->ratio * (f32)outCnt;
        inCount = (s32)finCount;
        f->delta = finCount - (f32)inCount;

        // ask all filters upstream from us to build their command lists.
        ptr = (*source->handler)(source, &inp, inCount, sampleOffset, p);

        // construct our portion of the command list
        incr = (s32)(f->ratio * UNITY_PITCH);
        aSetBuffer(ptr++, 0, inp, *outp, outCnt << 1);
        aResample(ptr++, f->first, incr, osVirtualToPhysical(f->state));
        f->first = false;
    }
    return ptr;
}

s32 alResampleParam(void* filter, s32 paramID, void* param) {
    ALFilter* f = (ALFilter*)filter;
    ALResampler* r = (ALResampler*)filter;
    union {
        f32 f;
        s32 i;
    } data;

    switch (paramID) {
        case AL_FILTER_SET_SOURCE:
            f->source = (ALFilter*)param;
            break;

        case AL_FILTER_RESET:
            r->delta = 0.0f;
            r->first = true;
            r->motion = AL_STOPPED;
            r->upitch = 0;
            if (f->source != NULL) {
                (*f->source->setParam)(f->source, AL_FILTER_RESET, 0);
            }
            break;

        case AL_FILTER_START:
            r->motion = AL_PLAYING;
            if (f->source != NULL) {
                (*f->source->setParam)(f->source, AL_FILTER_START, 0);
            }
            break;

        case AL_FILTER_SET_PITCH:
            data.i = (s32)param;
            r->ratio = data.f;
            break;

        case AL_FILTER_SET_UNITY_PITCH:
            r->upitch = 1;
            break;

        default:
            if (f->source != NULL) {
                (*f->source->setParam)(f->source, paramID, param);
            }
            break;
    }
    return 0;
}
