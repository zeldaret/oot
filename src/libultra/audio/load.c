#include "libaudio.h"
#include "synthInternals.h"
#include "ultra64/R4300.h"

#ifndef MIN
#define MIN(a, b) (((a) < (b)) ? (a) : (b))
#endif

#define ADPCMFBYTES 9
#define LFSAMPLES 4

static Acmd* _decodeChunk(Acmd* ptr, ALLoadFilter* f, s32 tsam, s32 nbytes, s16 outp, s16 inp, u32 flags);

Acmd* alAdpcmPull(void* filter, s16* outp, s32 outCount, s32 sampleOffset, Acmd* p) {
    Acmd* ptr = p;
    s16 inp;
    s32 tsam;
    s32 nframes;
    s32 nbytes;
    s32 overFlow;
    s32 startZero;
    s32 nOver;
    s32 nSam;
    s32 op;
    s32 nLeft;
    s32 bEnd;
    s32 decoded = false;
    s32 looped = false;

    ALLoadFilter* f = (ALLoadFilter*)filter;

    if (outCount == 0) {
        return ptr;
    }

    inp = AL_DECODER_IN;
    aLoadADPCM(ptr++, f->bookSize, K0_TO_PHYS(f->table->waveInfo.adpcmWave.book->book));

    looped = ((u32)(outCount + f->sample) > f->loop.end) && (f->loop.count != 0);
    if (looped) {
        nSam = f->loop.end - f->sample;
    } else {
        nSam = outCount;
    }

    if (f->lastsam != 0) {
        nLeft = ADPCMFSIZE - f->lastsam;
    } else {
        nLeft = 0;
    }
    tsam = nSam - nLeft;
    if (tsam < 0) {
        tsam = 0;
    }

    nframes = (tsam + ADPCMFSIZE - 1) >> LFSAMPLES;
    nbytes = nframes * ADPCMFBYTES;

    if (looped) {
        ptr = _decodeChunk(ptr, f, tsam, nbytes, *outp, inp, f->first);

        // Fix up output pointer, which will be used as the input pointer by the following module.
        if (f->lastsam != 0) {
            *outp += f->lastsam << 1;
        } else {
            *outp += ADPCMFSIZE << 1;
        }

        // Now fix up state info to reflect the loop start point
        f->lastsam = f->loop.start & 0xF;
        f->memin = (uintptr_t)f->table->base + ADPCMFBYTES * ((s32)(f->loop.start >> LFSAMPLES) + 1);
        f->sample = f->loop.start;

        bEnd = *outp;
        while (outCount > nSam) {
            outCount -= nSam;

            // Put next one after the end of the last lot - on the frame boundary (32 byte) after the end.
            op = (bEnd + ((nframes + 1) << (LFSAMPLES + 1))) & ~0x1F;

            // The actual end of data
            bEnd += nSam << 1;

            // -1 is loop forever - the loop count is not exact now for small loops!
            if (f->loop.count != -1u && f->loop.count != 0) {
                f->loop.count--;
            }

            // What's left to compute.
            nSam = MIN((u32)outCount, f->loop.end - f->loop.start);
            tsam = nSam - ADPCMFSIZE + f->lastsam;
            if (tsam < 0) {
                tsam = 0;
            }
            nframes = (tsam + ADPCMFSIZE - 1) >> LFSAMPLES;
            nbytes = nframes * ADPCMFBYTES;
            ptr = _decodeChunk(ptr, f, tsam, nbytes, op, inp, f->first | A_LOOP);
            // Merge the two sections in DMEM.
            aDMEMMove(ptr++, op + (f->lastsam << 1), bEnd, nSam << 1);
        }

        f->lastsam = (outCount + f->lastsam) & 0xF;
        f->sample += outCount;
        f->memin += ADPCMFBYTES * nframes;
        return ptr;
    }

    // The unlooped case, which is executed most of the time

    nSam = nframes << LFSAMPLES;

    // overFlow is the number of bytes past the end of the bitstream I try to generate
    overFlow = f->memin + nbytes - ((uintptr_t)f->table->base + f->table->len);
    if (overFlow < 0) {
        overFlow = 0;
    }
    nOver = (overFlow / ADPCMFBYTES) << LFSAMPLES;
    if (nOver > nSam + nLeft) {
        nOver = nSam + nLeft;
    }

    nbytes -= overFlow;

    if (nOver - (nOver & 0xF) < outCount) {
        decoded = true;
        ptr = _decodeChunk(ptr, f, nSam - nOver, nbytes, *outp, inp, f->first);

        if (f->lastsam != 0) {
            *outp += f->lastsam << 1;
        } else {
            *outp += ADPCMFSIZE << 1;
        }

        f->lastsam = (outCount + f->lastsam) & 0xF;
        f->sample += outCount;
        f->memin += ADPCMFBYTES * nframes;
    } else {
        f->lastsam = 0;
        f->memin += ADPCMFBYTES * nframes;
    }

    // Put zeros in if necessary
    if (nOver != 0) {
        f->lastsam = 0;
        if (decoded) {
            startZero = (nLeft + nSam - nOver) << 1;
        } else {
            startZero = 0;
        }
        aClearBuffer(ptr++, startZero + *outp, nOver << 1);
    }
    return ptr;
}

Acmd* alRaw16Pull(void* filter, s16* outp, s32 outCount, s32 sampleOffset, Acmd* p) {
    Acmd* ptr = p;
    s32 nbytes;
    s32 dramLoc;
    s32 dramAlign;
    s32 dmemAlign;
    s32 overFlow;
    s32 startZero;
    s32 nSam;
    s32 op;
    ALLoadFilter* f = (ALLoadFilter*)filter;
    ALFilter* a = (ALFilter*)filter;

    if (outCount == 0) {
        return ptr;
    }

    if ((u32)(outCount + f->sample) > f->loop.end && f->loop.count != 0) {
        nSam = f->loop.end - f->sample;
        nbytes = nSam << 1;

        if (nSam > 0) {
            dramLoc = (f->dma)(f->memin, nbytes, f->dmaState);

            // Make sure enough is loaded into DMEM to take care of 8 byte alignment
            dramAlign = dramLoc & 7;
            nbytes += dramAlign;
            aSetBuffer(ptr++, 0, *outp, 0, nbytes + 8 - (nbytes & 7));
            aLoadBuffer(ptr++, dramLoc - dramAlign);
        } else {
            dramAlign = 0;
        }

        // Fix up output pointer to allow for dram alignment
        *outp += dramAlign;

        f->memin = (uintptr_t)f->table->base + (f->loop.start << 1);
        f->sample = f->loop.start;
        op = *outp;

        while (outCount > nSam) {
            op += (nSam << 1);
            outCount -= nSam;

            // -1 is loop forever
            if (f->loop.count != -1u && f->loop.count != 0) {
                f->loop.count--;
            }

            // What to compute.
            nSam = MIN((u32)outCount, f->loop.end - f->loop.start);
            nbytes = nSam << 1;

            // Do the next section, same as last.
            dramLoc = (f->dma)(f->memin, nbytes, f->dmaState);

            // Make sure enough is loaded into DMEM to take care of 8 byte alignment
            dramAlign = dramLoc & 7;
            nbytes += dramAlign;
            if (op & 7) {
                dmemAlign = 8 - (op & 7);
            } else {
                dmemAlign = 0;
            }

            aSetBuffer(ptr++, 0, op + dmemAlign, 0, nbytes + 8 - (nbytes & 7));
            aLoadBuffer(ptr++, dramLoc - dramAlign);

            // Merge the two sections in DMEM.
            if (dramAlign || dmemAlign)
                aDMEMMove(ptr++, op + dramAlign + dmemAlign, op, nSam << 1);
        }

        f->sample += outCount;
        f->memin += outCount << 1;

        return ptr;
    }

    // The unlooped case, which is executed most of the time
    //
    // overFlow is the number of bytes past the end
    // of the bitstream I try to generate

    nbytes = outCount << 1;
    overFlow = f->memin + nbytes - ((uintptr_t)f->table->base + f->table->len);
    if (overFlow < 0) {
        overFlow = 0;
    }
    if (overFlow > nbytes) {
        overFlow = nbytes;
    }

    if (overFlow < nbytes) {
        if (outCount > 0) {
            nbytes -= overFlow;
            dramLoc = f->dma(f->memin, nbytes, f->dmaState);

            // Make sure enough is loaded into DMEM to take care of 8 byte alignment
            dramAlign = dramLoc & 7;
            nbytes += dramAlign;
            aSetBuffer(ptr++, 0, *outp, 0x000, nbytes + 8 - (nbytes & 7));
            aLoadBuffer(ptr++, dramLoc - dramAlign);
        } else {
            dramAlign = 0;
        }
        *outp += dramAlign;

        f->sample += outCount;
        f->memin += outCount << 1;
    } else {
        f->memin += outCount << 1;
    }

    // Put zeros in if necessary
    if (overFlow != 0) {
        startZero = (outCount << 1) - overFlow;
        if (startZero < 0) {
            startZero = 0;
        }
        aClearBuffer(ptr++, startZero + *outp, overFlow);
    }
    return ptr;
}

s32 alLoadParam(void* filter, s32 paramID, void* param) {
    ALLoadFilter* a = (ALLoadFilter*)filter;
    ALFilter* f = (ALFilter*)filter;

    switch (paramID) {
        case AL_FILTER_SET_WAVETABLE:
            a->table = (ALWaveTable*)param;
            a->memin = (uintptr_t)a->table->base;
            a->sample = 0;

            switch (a->table->type) {
                case AL_ADPCM_WAVE:
                    // Set up the correct handler
                    f->handler = alAdpcmPull;

                    // Make sure the table length is an integer number of frames
                    a->table->len = ADPCMFBYTES * (s32)(a->table->len / ADPCMFBYTES);

                    a->bookSize = 2 * a->table->waveInfo.adpcmWave.book->order *
                                  a->table->waveInfo.adpcmWave.book->npredictors * ADPCMVSIZE;
                    if (a->table->waveInfo.adpcmWave.loop != NULL) {
                        a->loop.start = a->table->waveInfo.adpcmWave.loop->start;
                        a->loop.end = a->table->waveInfo.adpcmWave.loop->end;
                        a->loop.count = a->table->waveInfo.adpcmWave.loop->count;
                        alCopy(a->table->waveInfo.adpcmWave.loop->state, a->lstate, sizeof(ADPCM_STATE));
                    } else {
                        a->loop.start = a->loop.end = a->loop.count = 0;
                    }
                    break;

                case AL_RAW16_WAVE:
                    f->handler = alRaw16Pull;
                    if (a->table->waveInfo.rawWave.loop != NULL) {
                        a->loop.start = a->table->waveInfo.rawWave.loop->start;
                        a->loop.end = a->table->waveInfo.rawWave.loop->end;
                        a->loop.count = a->table->waveInfo.rawWave.loop->count;
                    } else {
                        a->loop.start = a->loop.end = a->loop.count = 0;
                    }
                    break;

                default:
                    break;
            }
            break;

        case AL_FILTER_RESET:
            a->lastsam = 0;
            a->first = true;
            a->sample = 0;

            // sct 2/14/96 - Check table since it is initialized to null and get loop info according to table type.
            if (a->table != NULL) {
                a->memin = (uintptr_t)a->table->base;
                if (a->table->type == AL_ADPCM_WAVE) {
                    if (a->table->waveInfo.adpcmWave.loop != NULL) {
                        a->loop.count = a->table->waveInfo.adpcmWave.loop->count;
                    }
                } else if (a->table->type == AL_RAW16_WAVE) {
                    if (a->table->waveInfo.rawWave.loop != NULL) {
                        a->loop.count = a->table->waveInfo.rawWave.loop->count;
                    }
                }
            }
            break;

        default:
            break;
    }
}

static Acmd* _decodeChunk(Acmd* ptr, ALLoadFilter* f, s32 tsam, s32 nbytes, s16 outp, s16 inp, u32 flags) {
    s32 dramAlign;
    s32 dramLoc;

    if (nbytes > 0) {
        dramLoc = f->dma(f->memin, nbytes, f->dmaState);
        // Make sure enough is loaded into DMEM to take care of 8 byte alignment
        dramAlign = dramLoc & 7;
        nbytes += dramAlign;
        aSetBuffer(ptr++, 0, inp, 0, nbytes + 8 - (nbytes & 7));
        aLoadBuffer(ptr++, dramLoc - dramAlign);
    } else {
        dramAlign = 0;
    }

    if (flags & A_LOOP) {
        aSetLoop(ptr++, K0_TO_PHYS(f->lstate));
    }

    aSetBuffer(ptr++, 0, inp + dramAlign, outp, tsam << 1);
    aADPCMdec(ptr++, flags, K0_TO_PHYS(f->state));
    f->first = false;

    return ptr;
}
