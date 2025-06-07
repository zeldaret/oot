#include "libaudio.h"
#include "synthInternals.h"

Acmd* alAuxBusPull(void* filter, s16* outp, s32 outCount, s32 sampleOffset, Acmd* p) {
    Acmd* ptr = p;
    ALAuxBus* m = (ALAuxBus*)filter;
    ALFilter** sources = m->sources;
    s32 i;

    // clear the output buffers here
    aClearBuffer(ptr++, AL_AUX_L_OUT, outCount << 1);
    aClearBuffer(ptr++, AL_AUX_R_OUT, outCount << 1);

    for (i = 0; i < m->sourceCount; i++) {
        ptr = sources[i]->handler(sources[i], outp, outCount, sampleOffset, ptr);
    }
    return ptr;
}

s32 alAuxBusParam(void* filter, s32 paramID, void* param) {
    ALAuxBus* m = (ALAuxBus*)filter;
    ALFilter** sources = m->sources;

    switch (paramID) {
        case AL_FILTER_ADD_SOURCE:
            sources[m->sourceCount++] = (ALFilter*)param;
            break;

        default:
            break;
    }
    return 0;
}
