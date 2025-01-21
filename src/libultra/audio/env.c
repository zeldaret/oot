#include "libaudio.h"
#include "synthInternals.h"
#include "libc/math.h"
#include "ultra64/convert.h"

#define EQPOWER_LENGTH 128
static s16 eqpower[EQPOWER_LENGTH] = {
    32767, 32764, 32757, 32744, 32727, 32704, 32677, 32644, 32607, 32564, 32517, 32464, 32407, 32344, 32277, 32205,
    32127, 32045, 31958, 31866, 31770, 31668, 31561, 31450, 31334, 31213, 31087, 30957, 30822, 30682, 30537, 30388,
    30234, 30075, 29912, 29744, 29572, 29395, 29214, 29028, 28838, 28643, 28444, 28241, 28033, 27821, 27605, 27385,
    27160, 26931, 26698, 26461, 26220, 25975, 25726, 25473, 25216, 24956, 24691, 24423, 24151, 23875, 23596, 23313,
    23026, 22736, 22442, 22145, 21845, 21541, 21234, 20924, 20610, 20294, 19974, 19651, 19325, 18997, 18665, 18331,
    17993, 17653, 17310, 16965, 16617, 16266, 15913, 15558, 15200, 14840, 14477, 14113, 13746, 13377, 13006, 12633,
    12258, 11881, 11503, 11122, 10740, 10357, 9971,  9584,  9196,  8806,  8415,  8023,  7630,  7235,  6839,  6442,
    6044,  5646,  5246,  4845,  4444,  4042,  3640,  3237,  2833,  2429,  2025,  1620,  1216,  810,   405,   0
};

static Acmd* _pullSubFrame(void* filter, s16* inp, s16* outp, s32 outCount, s32 sampleOffset, Acmd* p);
static s16 _getRate(f64 vol, f64 tgt, s32 count, u16* ratel);
static f32 _getVol(f32 ivol, s32 samples, s16 ratem, u16 ratel);

Acmd* alEnvmixerPull(void* filter, s16* outp, s32 outCount, s32 sampleOffset, Acmd* p) {
    Acmd* ptr = p;
    ALEnvMixer* e = (ALEnvMixer*)filter;
    s16 inp;
    s32 lastOffset;
    s32 thisOffset = sampleOffset;
    s32 samples;
    s16 loutp = 0;
    s32 fVol;
    ALParam* thisParam;

    // Force the input to be the resampler output
    inp = AL_RESAMPLER_OUT;

    while (e->ctrlList != NULL) {
        lastOffset = thisOffset;
        thisOffset = e->ctrlList->delta;
        samples = thisOffset - lastOffset;
        if (samples > outCount) {
            break;
        }

        switch (e->ctrlList->type) {
            case AL_FILTER_START_VOICE_ALT: {
                ALStartParamAlt* param = (ALStartParamAlt*)e->ctrlList;
                ALFilter* f = &e->filter;
                s32 tmp;

                if (param->unity != 0) {
                    (*e->filter.setParam)(&e->filter, AL_FILTER_SET_UNITY_PITCH, 0);
                }

                (*e->filter.setParam)(&e->filter, AL_FILTER_SET_WAVETABLE, param->wave);
                (*e->filter.setParam)(&e->filter, AL_FILTER_START, 0);

                e->first = true;

                e->delta = 0;
                e->segEnd = param->samples;

                tmp = ((s32)param->volume * (s32)param->volume) >> 15;
                e->volume = (s16)tmp;
                e->pan = param->pan;
                e->dryamt = eqpower[param->fxMix];
                e->wetamt = eqpower[EQPOWER_LENGTH - param->fxMix - 1];

                if (param->samples != 0) {
                    e->cvolL = 1;
                    e->cvolR = 1;
                } else {
                    // Attack time is zero. Simply set the volume. We don't want an attack segment.
                    e->cvolL = (e->volume * eqpower[e->pan]) >> 15;
                    e->cvolR = (e->volume * eqpower[EQPOWER_LENGTH - e->pan - 1]) >> 15;
                }

                if (f->source != NULL) {
                    union {
                        f32 f;
                        s32 i;
                    } data;
                    data.f = param->pitch;
                    (*f->source->setParam)(f->source, AL_FILTER_SET_PITCH, (void*)data.i);
                }
            } break;

            case AL_FILTER_SET_FXAMT:
            case AL_FILTER_SET_PAN:
            case AL_FILTER_SET_VOLUME:
                ptr = _pullSubFrame(e, &inp, &loutp, samples, sampleOffset, ptr);

                if (e->delta >= e->segEnd) {
                    // We should have reached our target, calculate target in case e->segEnd was 0
                    e->ltgt = (e->volume * eqpower[e->pan]) >> 15;
                    e->rtgt = (e->volume * eqpower[EQPOWER_LENGTH - e->pan - 1]) >> 15;
                    e->delta = e->segEnd; // To prevent overflow
                    e->cvolL = e->ltgt;
                    e->cvolR = e->rtgt;
                } else {
                    // Estimate the current volume
                    e->cvolL = _getVol(e->cvolL, e->delta, e->lratm, e->lratl);
                    e->cvolR = _getVol(e->cvolR, e->delta, e->rratm, e->rratl);
                }

                // We can't have volume of zero, because the envelope would never go anywhere from there
                if (e->cvolL == 0) {
                    e->cvolL = 1;
                }
                if (e->cvolR == 0) {
                    e->cvolR = 1;
                }

                if (e->ctrlList->type == AL_FILTER_SET_PAN) {
                    // This should result in a change to the current segment rate and target
                    e->pan = (s16)e->ctrlList->data.i;
                }

                if (e->ctrlList->type == AL_FILTER_SET_VOLUME) {
                    // Switching to a new segment
                    e->delta = 0;

                    // Map volume non-linearly to give something close to loudness
                    fVol = (e->ctrlList->data.i);
                    fVol = (fVol * fVol) >> 15;
                    e->volume = (s16)fVol;
                    e->segEnd = e->ctrlList->moredata.i;
                }

                if (e->ctrlList->type == AL_FILTER_SET_FXAMT) {
                    e->dryamt = eqpower[e->ctrlList->data.i];
                    e->wetamt = eqpower[EQPOWER_LENGTH - e->ctrlList->data.i - 1];
                }

                // Force a volume update
                e->first = true;
                break;

            case AL_FILTER_START_VOICE: {
                ALStartParam* p = (ALStartParam*)e->ctrlList;

                // Changing to PLAYING (since the previous state was persumable STOPPED, we'll just bump the output
                // pointer rather than pull a subframe of zeros).
                if (p->unity != 0) {
                    (*e->filter.setParam)(&e->filter, AL_FILTER_SET_UNITY_PITCH, 0);
                }

                (*e->filter.setParam)(&e->filter, AL_FILTER_SET_WAVETABLE, p->wave);
                (*e->filter.setParam)(&e->filter, AL_FILTER_START, 0);
            } break;

            case AL_FILTER_STOP_VOICE: {
                // Changing to STOPPED and reset the filter
                ptr = _pullSubFrame(e, &inp, &loutp, samples, sampleOffset, ptr);
                (*e->filter.setParam)(&e->filter, AL_FILTER_RESET, 0);
            } break;

            case AL_FILTER_FREE_VOICE: {
                ALSynth* drvr = &alGlobals->drvr;
                ALFreeParam* param = (ALFreeParam*)e->ctrlList;
                param->pvoice->offset = 0;
                _freePVoice(drvr, param->pvoice);
            } break;

            default:
                // Pull the reuired number of samples and then pass the message on down the chain
                ptr = _pullSubFrame(e, &inp, &loutp, samples, sampleOffset, ptr);
                (*e->filter.setParam)(&e->filter, e->ctrlList->type, (void*)e->ctrlList->data.i);
                break;
        }
        loutp += samples << 1;
        outCount -= samples;

        // put the param record back on the free list
        thisParam = e->ctrlList;
        e->ctrlList = e->ctrlList->next;
        if (e->ctrlList == NULL) {
            e->ctrlTail = NULL;
        }

        __freeParam(thisParam);
    }

    ptr = _pullSubFrame(e, &inp, &loutp, outCount, sampleOffset, ptr);

    // Prevent overflow in e->delta
    if (e->delta > e->segEnd) {
        e->delta = e->segEnd;
    }

    return ptr;
}

s32 alEnvmixerParam(void* filter, s32 paramID, void* param) {
    ALFilter* f = (ALFilter*)filter;
    ALEnvMixer* e = (ALEnvMixer*)filter;

    switch (paramID) {
        case AL_FILTER_ADD_UPDATE:
            if (e->ctrlTail != NULL) {
                e->ctrlTail->next = (ALParam*)param;
            } else {
                e->ctrlList = (ALParam*)param;
            }
            e->ctrlTail = (ALParam*)param;
            break;

        case AL_FILTER_RESET:
            e->first = true;
            e->motion = AL_STOPPED;
            e->volume = 1;
            if (f->source != NULL) {
                (*f->source->setParam)(f->source, AL_FILTER_RESET, param);
            }
            break;

        case AL_FILTER_START:
            e->motion = AL_PLAYING;
            if (f->source != NULL) {
                (*f->source->setParam)(f->source, AL_FILTER_START, param);
            }
            break;

        case AL_FILTER_SET_SOURCE:
            f->source = (ALFilter*)param;
            break;

        default:
            if (f->source != NULL) {
                (*f->source->setParam)(f->source, paramID, param);
            }
            break;
    }
    return 0;
}

static Acmd* _pullSubFrame(void* filter, s16* inp, s16* outp, s32 outCount, s32 sampleOffset, Acmd* p) {
    Acmd* ptr = p;
    ALEnvMixer* e = (ALEnvMixer*)filter;
    ALFilter* source = e->filter.source;

    // filter must be playing and request non-zero output samples to pull.
    if (e->motion != AL_PLAYING || !outCount) {
        return ptr;
    }

    // ask all filters upstream from us to build their command lists.
    ptr = (*source->handler)(source, inp, outCount, sampleOffset, p);

    // construct our portion of the command list
    aSetBuffer(ptr++, A_MAIN, *inp, AL_MAIN_L_OUT + *outp, outCount << 1);
    aSetBuffer(ptr++, A_AUX, AL_MAIN_R_OUT + *outp, AL_AUX_L_OUT + *outp, AL_AUX_R_OUT + *outp);

    if (e->first) {
        e->first = false;

        // Calculate derived parameters
        e->ltgt = (e->volume * eqpower[e->pan]) >> 15;
        e->lratm = _getRate((f64)e->cvolL, (f64)e->ltgt, e->segEnd, &e->lratl);
        e->rtgt = (e->volume * eqpower[EQPOWER_LENGTH - e->pan - 1]) >> 15;
        e->rratm = _getRate((f64)e->cvolR, (f64)e->rtgt, e->segEnd, &e->rratl);

        aSetVolume(ptr++, A_LEFT | A_VOL, e->cvolL, 0, 0);
        aSetVolume(ptr++, A_RIGHT | A_VOL, e->cvolR, 0, 0);
        aSetVolume(ptr++, A_LEFT | A_RATE, e->ltgt, e->lratm, e->lratl);
        aSetVolume(ptr++, A_RIGHT | A_RATE, e->rtgt, e->rratm, e->rratl);
        aSetVolume(ptr++, A_AUX, e->dryamt, 0, e->wetamt);
        aEnvMixer(ptr++, A_INIT | A_AUX, osVirtualToPhysical(e->state));
    } else
        aEnvMixer(ptr++, A_CONTINUE | A_AUX, osVirtualToPhysical(e->state));

    // bump the input buffer pointer
    *inp += outCount << 1;
    e->delta += outCount;

    return ptr;
}

f64 _frexpf(f64 value, s32* eptr) {
    f64 absvalue;

    *eptr = 0;
    if (value == 0.0) {
        // nothing to do for zero
        return value;
    }
    absvalue = (value > 0.0) ? value : -value;
    for (; absvalue >= 1.0; absvalue *= 0.5) {
        (*eptr)++;
    }
    for (; absvalue < 0.5; absvalue += absvalue) {
        (*eptr)--;
    }
    return (value > 0.0 ? absvalue : -absvalue);
}

f64 _ldexpf(f64 in, s32 ex) {
    s32 exp;

    if (ex != 0) {
        exp = 1 << ex;
        in *= (f64)exp;
    }
    return in;
}

/**
 * This function determines how to go from the current volume level (vol) to the target volume level (tgt) in some
 * number of steps (count).  Two values are returned that are used as multipliers to incrementally scale the volume.
 * Some tricky math is used and is explained below.
 * RWW 28jun95
 */
static s16 _getRate(f64 vol, f64 tgt, s32 count, u16* ratel) {
    s16 s;
    f64 invn = 1.0 / count;
    f64 eps;
    f64 a;
    f64 fs;
    f64 mant;
    s32 i_invn;
    s32 ex;
    s32 indx;

    if (count == 0) {
        if (tgt >= vol) {
            *ratel = 0xFFFF;
            return 0x7FFF;
        } else {
            *ratel = 0;
            return 0;
        }
    }

    if (tgt < 1.0) {
        tgt = 1.0;
    }
    if (vol <= 0.0) {
        vol = 1.0; // zero and neg values not allowed
    }

#define NBITS 3
#define NPOS (1 << NBITS)
#define NFRACBITS 30
#define M_LN2 0.69314718055994530942
    // rww's parametric pow()
    // Goal: compute a = (tgt/vol)^(1/count)
    //
    // Approach:
    // (tgt/vol)^(1/count) = ((tgt/vol)^(1/2^30))^(2^30*1/count)
    //
    // (tgt/vol)^(1/2^30) ~= 1 + eps
    //
    // where
    //
    // eps ~= ln(tgt/vol)/2^30
    //
    // ln(tgt/vol) = ln2(tgt/vol) * ln(2)
    //
    // ln2(tgt/vol) = fp_exponent( tgt/vol ) + ln2( fp_mantissa( tgt/vol ) )
    //
    // fp_mantissa() and fp_exponent() are calculated via tricky bit manipulations of
    // the floating point number. ln2() is approximated by a look up table.
    //
    // Note that this final (1+eps) value needs to be raised to the 2^30/count power. This
    // is done by operating on the binary representaion of this number in the final while loop.
    //
    // Enjoy!
    {
        f64 logtab[] = { -0.912537, -0.752072, -0.607683, -0.476438, -0.356144, -0.245112, -0.142019, -0.045804 };

        i_invn = (s32)_ldexpf(invn, NFRACBITS);
        mant = _frexpf(tgt / vol, &ex);
        indx = (s32)_ldexpf(mant, NBITS + 1); // NPOS <= indx < 2*NPOS
        eps = (logtab[indx - NPOS] + ex) * M_LN2;
        eps /= _ldexpf(1, NFRACBITS); // eps / 2^NFRACBITS
        fs = 1.0 + eps;
        a = 1.0;
        while (i_invn != 0) {
            if (i_invn & 1) {
                a = a * fs;
            }
            fs *= fs;
            i_invn >>= 1;
        }
    }

    a *= a;
    a *= a;
    a *= a;
    s = (s16)a;
    *ratel = (s16)(0xFFFF * (a - (f32)s));

    return (s16)a;
}

static f32 _getVol(f32 ivol, s32 samples, s16 ratem, u16 ratel) {
    f32 r;
    f32 a;
    s32 i;

    // Rate values are actually rate^8
    samples >>= 3;
    if (samples == 0) {
        return ivol;
    }
    r = ((f32)(ratem << 16) + (f32)ratel) / 65536;

    a = 1.0f;
    for (i = 0; i < 32; i++) {
        if (samples & 1) {
            a *= r;
        }
        samples >>= 1;
        if (samples == 0) {
            break;
        }
        r *= r;
    }
    ivol *= a;
    return ivol;
}
