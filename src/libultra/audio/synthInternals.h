#ifndef __audioInternals__
#define __audioInternals__

#include "libaudio.h"

/**
 * filter message ids
 */
enum {
    AL_FILTER_FREE_VOICE,
    AL_FILTER_SET_SOURCE,
    AL_FILTER_ADD_SOURCE,
    AL_FILTER_ADD_UPDATE,
    AL_FILTER_RESET,
    AL_FILTER_SET_WAVETABLE,
    AL_FILTER_SET_DRAM,
    AL_FILTER_SET_PITCH,
    AL_FILTER_SET_UNITY_PITCH,
    AL_FILTER_START,
    AL_FILTER_SET_STATE,
    AL_FILTER_SET_VOLUME,
    AL_FILTER_SET_PAN,
    AL_FILTER_START_VOICE_ALT,
    AL_FILTER_START_VOICE,
    AL_FILTER_STOP_VOICE,
    AL_FILTER_SET_FXAMT
};

#define AL_MAX_RSP_SAMPLES  160

/**
 * buffer locations based on AL_MAX_RSP_SAMPLES
 */
#define AL_DECODER_IN       0x000
#define AL_RESAMPLER_OUT    0x000
#define AL_TEMP_0           0x000
#define AL_DECODER_OUT      0x140
#define AL_TEMP_1           0x140
#define AL_TEMP_2           0x280
#define AL_MAIN_L_OUT       0x440
#define AL_MAIN_R_OUT       0x580
#define AL_AUX_L_OUT        0x6C0
#define AL_AUX_R_OUT        0x800

/**
 * filter types
 */
enum {
    AL_ADPCM,
    AL_RESAMPLE,
    AL_BUFFER,
    AL_SAVE,
    AL_ENVMIX,
    AL_FX,
    AL_AUXBUS,
    AL_MAINBUS
};

typedef struct ALParam_s {
    struct ALParam_s* next;
    s32 delta;
    s16 type;
    union {
        f32 f;
        s32 i;
    } data;
    union {
        f32 f;
        s32 i;
    } moredata;
    union {
        f32 f;
        s32 i;
    } stillmoredata;
    union {
        f32 f;
        s32 i;
    } yetstillmoredata;
} ALParam;

typedef struct {
    struct ALParam_s* next;
    s32 delta;
    s16 type;
    s16 unity; // disable resampler
    f32 pitch;
    s16 volume;
    ALPan pan;
    u8 fxMix;
    s32 samples;
    struct ALWaveTable_s* wave;
} ALStartParamAlt;

typedef struct {
    struct ALParam_s* next;
    s32 delta;
    s16 type;
    s16 unity; // disable resampler
    struct ALWaveTable_s* wave;
} ALStartParam;

typedef struct {
    struct ALParam_s* next;
    s32 delta;
    s16 type;
    struct PVoice_s* pvoice;
} ALFreeParam;

typedef Acmd* (*ALCmdHandler)(void*, s16*, s32, s32, Acmd*);
typedef s32 (*ALSetParam)(void*, s32, void*);

typedef struct ALFilter_s {
    struct ALFilter_s* source;
    ALCmdHandler handler;
    ALSetParam setParam;
    s16 inp;
    s16 outp;
    s32 type;
} ALFilter;

void alFilterNew(ALFilter* f, ALCmdHandler h, ALSetParam s, s32 type);

// Depends on number of subframes per frame and loop length
#define AL_MAX_ADPCM_STATES 3

typedef struct {
    ALFilter filter;
    ADPCM_STATE* state;
    ADPCM_STATE* lstate;
    ALRawLoop loop;
    struct ALWaveTable_s* table;
    s32 bookSize;
    ALDMAproc dma;
    void* dmaState;
    s32 sample;
    s32 lastsam;
    s32 first;
    s32 memin;
} ALLoadFilter;

void alLoadNew(ALLoadFilter* f, ALDMANew dmaNew, ALHeap* hp);
Acmd* alAdpcmPull(void* filter, s16* outp, s32 outCount, s32 sampleOffset, Acmd* p);
Acmd* alRaw16Pull(void* filter, s16* outp, s32 outCount, s32 sampleOffset, Acmd* p);
s32 alLoadParam(void* filter, s32 paramID, void* param);

typedef struct ALResampler_s {
    ALFilter filter;
    RESAMPLE_STATE* state;
    f32 ratio;
    s32 upitch;
    f32 delta;
    s32 first;
    ALParam* ctrlList;
    ALParam* ctrlTail;
    s32 motion;
} ALResampler;

typedef struct {
    s16 fc;
    s16 fgain;
    union {
        s16 fccoef[16];
        s64 force_aligned;
    } fcvec;
    POLEF_STATE* fstate;
    s32 first;
} ALLowPass;

typedef struct {
    u32 input;
    u32 output;
    s16 ffcoef;
    s16 fbcoef;
    s16 gain;
    f32 rsinc;
    f32 rsval;
    s32 rsdelta;
    f32 rsgain;
    ALLowPass* lp;
    ALResampler* rs;
} ALDelay;

typedef s32 (*ALSetFXParam)(void*, s32, void*);
typedef struct {
    struct ALFilter_s filter;
    s16* base;
    s16* input;
    u32 length;
    ALDelay* delay;
    u8 section_count;
    ALSetFXParam paramHdl;
} ALFx;

void alFxNew(ALFx* r, ALSynConfig* c, ALHeap* hp);
Acmd* alFxPull(void* filter, s16* outp, s32 outCount, s32 sampleOffset, Acmd* p);
s32 alFxParam(void* filter, s32 paramID, void* param);
s32 alFxParamHdl(void* filter, s32 paramID, void* param);

#define AL_MAX_MAIN_BUS_SOURCES 1
typedef struct ALMainBus_s {
    ALFilter filter;
    s32 sourceCount;
    s32 maxSources;
    ALFilter** sources;
} ALMainBus;

void alMainBusNew(ALMainBus* m, void* sources, s32 maxSources);
Acmd* alMainBusPull(void* filter, s16* outp, s32 outCount, s32 sampleOffset, Acmd* p);
s32 alMainBusParam(void* filter, s32 paramID, void* param);

#define AL_MAX_AUX_BUS_SOURCES 8
#define AL_MAX_AUX_BUS_FX 1
typedef struct ALAuxBus_s {
    ALFilter filter;
    s32 sourceCount;
    s32 maxSources;
    ALFilter** sources;
    ALFx fx[AL_MAX_AUX_BUS_FX];
} ALAuxBus;

void alAuxBusNew(ALAuxBus* m, void* sources, s32 maxSources);
Acmd* alAuxBusPull(void* filter, s16* outp, s32 outCount, s32 sampleOffset, Acmd* p);
s32 alAuxBusParam(void* filter, s32 paramID, void* param);

void alResampleNew(ALResampler* r, ALHeap* hp);
Acmd* alResamplePull(void* filter, s16* outp, s32 outCnt, s32 sampleOffset, Acmd* p);
s32 alResampleParam(void* filter, s32 paramID, void* param);

typedef struct ALSave_s {
    ALFilter filter;
    s32 dramout;
    s32 first;
} ALSave;

void alSaveNew(ALSave* f);
Acmd* alSavePull(void* filter, s16* outp, s32 outCount, s32 sampleOffset, Acmd* p);
s32 alSaveParam(void* filter, s32 paramID, void* param);

typedef struct ALEnvMixer_s {
    ALFilter filter;
    ENVMIX_STATE* state;
    s16 pan;
    s16 volume;
    s16 cvolL;
    s16 cvolR;
    s16 dryamt;
    s16 wetamt;
    u16 lratl;
    s16 lratm;
    s16 ltgt;
    u16 rratl;
    s16 rratm;
    s16 rtgt;
    s32 delta;
    s32 segEnd;
    s32 first;
    ALParam* ctrlList;
    ALParam* ctrlTail;
    ALFilter** sources;
    s32 motion;
} ALEnvMixer;

void alEnvmixerNew(ALEnvMixer* e, ALHeap* hp);
Acmd* alEnvmixerPull(void* filter, s16* outp, s32 outCount, s32 sampleOffset, Acmd* p);
s32 alEnvmixerParam(void* filter, s32 paramID, void* param);


/**
 * heap stuff
 */

typedef struct {
    s32 magic;  // check structure integrety
    s32 size;   // size of this allocated block
    u8* file;   // file that this alloc was called from
    s32 line;   // line that it was called from
    s32 count;  // heap call number
    s32 pad0;
    s32 pad1;
    s32 pad2;   // Make it 32 bytes
} HeapInfo;

// DCache line size (-1)
#define AL_CACHE_ALIGN  15

/**
 * synth stuff
 */

typedef struct PVoice_s {
    ALLink node;
    struct ALVoice_s* vvoice;
    ALFilter* channelKnob;
    ALLoadFilter decoder;
    ALResampler resampler;
    ALEnvMixer envmixer;
    s32 offset;
} PVoice;

// prototypes for private driver functions

ALParam* __allocParam(void);
void __freeParam(ALParam* param);
void _freePVoice(ALSynth* drvr, PVoice* pvoice);
void _collectPVoices(ALSynth* drvr);

s32 _timeToSamples(ALSynth* synth, s32 micros);
ALMicroTime _samplesToTime(ALSynth* synth, s32 samples);

void _init_lpfilter(ALLowPass* lp);

#endif
