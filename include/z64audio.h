#ifndef Z64_AUDIO_H
#define Z64_AUDIO_H

#define MK_CMD(b0,b1,b2,b3) ((((b0) & 0xFF) << 0x18) | (((b1) & 0xFF) << 0x10) | (((b2) & 0xFF) << 0x8) | (((b3) & 0xFF) << 0))

#define NO_LAYER ((SequenceLayer*)(-1))

#define TATUMS_PER_BEAT 48

#define IS_SEQUENCE_CHANNEL_VALID(ptr) ((u32)(ptr) != (u32)&gAudioCtx.sequenceChannelNone)
#define SEQ_NUM_CHANNELS 16
#define SEQ_IO_VAL_NONE -1

#define MAX_CHANNELS_PER_BANK 3

#define MUTE_BEHAVIOR_3 (1 << 3)           // prevent further noteSubEus from playing
#define MUTE_BEHAVIOR_4 (1 << 4)           // stop something in seqLayer scripts
#define MUTE_BEHAVIOR_SOFTEN (1 << 5)      // lower volume, by default to half
#define MUTE_BEHAVIOR_STOP_NOTES (1 << 6)  // prevent further notes from playing
#define MUTE_BEHAVIOR_STOP_SCRIPT (1 << 7) // stop processing sequence/channel scripts

#define ADSR_DISABLE 0
#define ADSR_HANG -1
#define ADSR_GOTO -2
#define ADSR_RESTART -3

// size of a single sample point
#define SAMPLE_SIZE sizeof(s16)

// Samples are processed in groups of 16 called a "frame"
#define SAMPLES_PER_FRAME ADPCMFSIZE

// The length of one left/right channel is 13 frames
#define DMEM_1CH_SIZE (13 * SAMPLES_PER_FRAME * SAMPLE_SIZE)
// Both left and right channels
#define DMEM_2CH_SIZE (2 * DMEM_1CH_SIZE)

#define AIBUF_LEN (88 * SAMPLES_PER_FRAME) // number of samples
#define AIBUF_SIZE (AIBUF_LEN * SAMPLE_SIZE) // number of bytes

// Filter sizes
#define FILTER_SIZE (8 * SAMPLE_SIZE)
#define FILTER_BUF_PART1 (8 * SAMPLE_SIZE)
#define FILTER_BUF_PART2 (8 * SAMPLE_SIZE)

// Must be the same amount of samples as copied by aDuplicate() (audio microcode)
#define WAVE_SAMPLE_COUNT 64

#define AUDIO_RELOCATED_ADDRESS_START K0BASE

typedef enum {
    /* 0 */ SOUNDMODE_STEREO,
    /* 1 */ SOUNDMODE_HEADSET,
    /* 2 */ SOUNDMODE_SURROUND,
    /* 3 */ SOUNDMODE_MONO
} SoundMode;

typedef enum {
    /* 0 */ ADSR_STATE_DISABLED,
    /* 1 */ ADSR_STATE_INITIAL,
    /* 2 */ ADSR_STATE_START_LOOP,
    /* 3 */ ADSR_STATE_LOOP,
    /* 4 */ ADSR_STATE_FADE,
    /* 5 */ ADSR_STATE_HANG,
    /* 6 */ ADSR_STATE_DECAY,
    /* 7 */ ADSR_STATE_RELEASE,
    /* 8 */ ADSR_STATE_SUSTAIN
} AdsrStatus;

typedef enum {
    /* 0 */ MEDIUM_RAM,
    /* 1 */ MEDIUM_UNK,
    /* 2 */ MEDIUM_CART,
    /* 3 */ MEDIUM_DISK_DRIVE
} SampleMedium;

typedef enum {
    /* 0 */ CODEC_ADPCM,  // 16 2-byte samples (32 bytes) compressed into 4-bit samples (8 bytes) + 1 header byte
    /* 1 */ CODEC_S8, // 16 2-byte samples (32 bytes) compressed into 8-bit samples (16 bytes)
    /* 2 */ CODEC_S16_INMEMORY,
    /* 3 */ CODEC_SMALL_ADPCM,  // 16 2-byte samples (32 bytes) compressed into 2-bit samples (4 bytes) + 1 header byte
    /* 4 */ CODEC_REVERB,
    /* 5 */ CODEC_S16
} SampleCodec;

typedef enum {
    /* 0 */ SEQUENCE_TABLE,
    /* 1 */ FONT_TABLE,
    /* 2 */ SAMPLE_TABLE
} SampleBankTableType;

typedef enum {
    /* 0 */ CACHE_TEMPORARY,
    /* 1 */ CACHE_PERSISTENT,
    /* 2 */ CACHE_EITHER,
    /* 3 */ CACHE_PERMANENT
} AudioCacheType;

typedef enum {
    /* 0 */ LOAD_STATUS_NOT_LOADED, // the entry data is not loaded
    /* 1 */ LOAD_STATUS_IN_PROGRESS, // the entry data is being loaded asynchronously
    /* 2 */ LOAD_STATUS_COMPLETE, // the entry data is loaded, it may be discarded if not stored persistently, and either no longer in use, or the memory is needed for something else
    /* 3 */ LOAD_STATUS_DISCARDABLE, // the entry data is loaded, and can be discarded
    /* 4 */ LOAD_STATUS_MAYBE_DISCARDABLE, // only for font table entries, like COMPLETE but prefer discarding it over a COMPLETE entry
    /* 5 */ LOAD_STATUS_PERMANENTLY_LOADED // the entry data is loaded in the permanent pool, it won't be discarded
} AudioLoadStatus;

typedef s32 (*DmaHandler)(OSPiHandle* handle, OSIoMesg* mb, s32 direction);

struct Note;
struct NotePool;
struct SequenceChannel;
struct SequenceLayer;

typedef struct AudioListItem {
    // A node in a circularly linked list. Each node is either a head or an item:
    // - Items can be either detached (prev = NULL), or attached to a list.
    //   'value' points to something of interest.
    // - List heads are always attached; if a list is empty, its head points
    //   to itself. 'count' contains the size of the list.
    // If the list holds notes, 'pool' points back to the pool where it lives.
    // Otherwise, that member is NULL.
    /* 0x00 */ struct AudioListItem* prev;
    /* 0x04 */ struct AudioListItem* next;
    /* 0x08 */ union {
                   void* value; // either Note* or SequenceLayer*
                   s32 count;
               } u;
    /* 0x0C */ struct NotePool* pool;
} AudioListItem; // size = 0x10

typedef struct NotePool {
    /* 0x00 */ AudioListItem disabled;
    /* 0x10 */ AudioListItem decaying;
    /* 0x20 */ AudioListItem releasing;
    /* 0x30 */ AudioListItem active;
} NotePool; // size = 0x40

// Pitch sliding by up to one octave in the positive direction. Negative
// direction is "supported" by setting extent to be negative. The code
// exterpolates exponentially in the wrong direction in that case, but that
// doesn't prevent seqplayer from doing it, AFAICT.
typedef struct {
    /* 0x00 */ u8 mode; // bit 0x80 denotes something; the rest are an index 0-5
    /* 0x02 */ u16 cur;
    /* 0x04 */ u16 speed;
    /* 0x08 */ f32 extent;
} Portamento; // size = 0xC

typedef struct {
    /* 0x0 */ s16 delay;
    /* 0x2 */ s16 arg;
} EnvelopePoint; // size = 0x4

typedef struct {
    /* 0x00 */ u32 start;
    /* 0x04 */ u32 end;
    /* 0x08 */ u32 count;
    /* 0x0C */ char unk_0C[0x4];
    /* 0x10 */ s16 predictorState[16]; // only exists if count != 0. 8-byte aligned
} AdpcmLoop; // size = 0x30 (or 0x10)

typedef struct {
    /* 0x00 */ s32 order;
    /* 0x04 */ s32 numPredictors;
    /* 0x08 */ s16 book[1]; // size 8 * order * numPredictors. 8-byte aligned
} AdpcmBook; // size >= 0x8

typedef struct {
    /* 0x00 */ u32 codec : 4; // The state of compression or decompression
    /* 0x00 */ u32 medium : 2; // Medium where sample is currently stored
    /* 0x00 */ u32 unk_bit26 : 1;
    /* 0x00 */ u32 isRelocated : 1; // Has the sample header been relocated (offsets to pointers)
    /* 0x01 */ u32 size : 24; // Size of the sample
    /* 0x04 */ u8* sampleAddr; // Raw sample data. Offset from the start of the sample bank or absolute address to either rom or ram
    /* 0x08 */ AdpcmLoop* loop; // Adpcm loop parameters used by the sample. Offset from the start of the sound font / pointer to ram
    /* 0x0C */ AdpcmBook* book; // Adpcm book parameters used by the sample. Offset from the start of the sound font / pointer to ram
} Sample; // size = 0x10

typedef struct {
    /* 0x00 */ Sample* sample;
    /* 0x04 */ f32 tuning; // frequency scale factor
} TunedSample; // size = 0x8

typedef struct {
    /* 0x00 */ u8 isRelocated; // have the envelope and all samples been relocated (offsets to pointers)
    /* 0x01 */ u8 normalRangeLo;
    /* 0x02 */ u8 normalRangeHi;
    /* 0x03 */ u8 adsrDecayIndex; // index used to obtain adsr decay rate from adsrDecayTable
    /* 0x04 */ EnvelopePoint* envelope;
    /* 0x08 */ TunedSample lowPitchTunedSample;
    /* 0x10 */ TunedSample normalPitchTunedSample;
    /* 0x18 */ TunedSample highPitchTunedSample;
} Instrument; // size = 0x20

typedef struct {
    /* 0x00 */ u8 adsrDecayIndex; // index used to obtain adsr decay rate from adsrDecayTable
    /* 0x01 */ u8 pan;
    /* 0x02 */ u8 isRelocated; // have tunedSample.sample and envelope been relocated (offsets to pointers)
    /* 0x04 */ TunedSample tunedSample;
    /* 0x0C */ EnvelopePoint* envelope;
} Drum; // size = 0x10

typedef struct {
    /* 0x00 */ TunedSample tunedSample;
} SoundEffect; // size = 0x08

/**
 * Stores parsed information from soundfont data
 */
typedef struct {
    /* 0x00 */ u8 numInstruments;
    /* 0x01 */ u8 numDrums;
    /* 0x02 */ u8 sampleBankId1;
    /* 0x03 */ u8 sampleBankId2;
    /* 0x04 */ u16 numSfx;
    /* 0x08 */ Instrument** instruments;
    /* 0x0C */ Drum** drums;
    /* 0x10 */ SoundEffect* soundEffects;
} SoundFont; // size = 0x14

typedef struct {
    /* 0x00 */ s16 numSamplesAfterDownsampling; // never read
    /* 0x02 */ s16 chunkLen; // never read
    /* 0x04 */ s16* toDownsampleLeft;
    /* 0x08 */ s16* toDownsampleRight; // data pointed to by left and right are adjacent in memory
    /* 0x0C */ s32 startPos; // start pos in ring buffer
    /* 0x10 */ s16 lengthA; // first length in ring buffer (from startPos, at most until end)
    /* 0x12 */ s16 lengthB; // second length in ring buffer (from pos 0)
    /* 0x14 */ u16 unk_14;
    /* 0x16 */ u16 unk_16;
    /* 0x18 */ u16 unk_18;
} ReverbRingBufferItem; // size = 0x1C

typedef struct {
    /* 0x000 */ u8 resampleFlags;
    /* 0x001 */ u8 useReverb;
    /* 0x002 */ u8 framesToIgnore;
    /* 0x003 */ u8 curFrame;
    /* 0x004 */ u8 downsampleRate;
    /* 0x005 */ s8 unk_05;
    /* 0x006 */ u16 windowSize;
    /* 0x008 */ s16 unk_08;
    /* 0x00A */ s16 volume;
    /* 0x00C */ u16 decayRatio; // determines how much reverb persists
    /* 0x00E */ u16 unk_0E;
    /* 0x010 */ s16 leakRtl;
    /* 0x012 */ s16 leakLtr;
    /* 0x014 */ u16 unk_14;
    /* 0x016 */ s16 unk_16;
    /* 0x018 */ u8 unk_18;
    /* 0x019 */ u8 unk_19;
    /* 0x01A */ u8 unk_1A;
    /* 0x01B */ u8 unk_1B;
    /* 0x01C */ s32 nextRingBufPos;
    /* 0x020 */ s32 unk_20;
    /* 0x024 */ s32 bufSizePerChan;
    /* 0x028 */ s16* leftRingBuf;
    /* 0x02C */ s16* rightRingBuf;
    /* 0x030 */ void* unk_30;
    /* 0x034 */ void* unk_34;
    /* 0x038 */ void* unk_38;
    /* 0x03C */ void* unk_3C;
    /* 0x040 */ ReverbRingBufferItem items[2][5];
    /* 0x158 */ ReverbRingBufferItem items2[2][5];
    /* 0x270 */ s16* filterLeft;
    /* 0x274 */ s16* filterRight;
    /* 0x278 */ s16* filterLeftState;
    /* 0x27C */ s16* filterRightState;
    /* 0x280 */ TunedSample tunedSample;
    /* 0x288 */ Sample sample;
    /* 0x298 */ AdpcmLoop loop;
} SynthesisReverb; // size = 0x2C8

typedef struct {
    /* 0x00 */ u8* pc; // program counter
    /* 0x04 */ u8* stack[4];
    /* 0x14 */ u8 remLoopIters[4]; // remaining loop iterations
    /* 0x18 */ u8 depth;
    /* 0x19 */ s8 value;
} SeqScriptState; // size = 0x1C

// Also known as a Group, according to debug strings.
typedef struct {
    /* 0x000 */ u8 enabled : 1;
    /* 0x000 */ u8 finished : 1;
    /* 0x000 */ u8 muted : 1;
    /* 0x000 */ u8 seqDmaInProgress : 1;
    /* 0x000 */ u8 fontDmaInProgress : 1;
    /* 0x000 */ u8 recalculateVolume : 1;
    /* 0x000 */ u8 stopScript : 1;
    /* 0x000 */ u8 applyBend : 1;
    /* 0x001 */ u8 state;
    /* 0x002 */ u8 noteAllocPolicy;
    /* 0x003 */ u8 muteBehavior;
    /* 0x004 */ u8 seqId;
    /* 0x005 */ u8 defaultFont;
    /* 0x006 */ u8 unk_06[1];
    /* 0x007 */ s8 playerIdx;
    /* 0x008 */ u16 tempo; // tatums per minute
    /* 0x00A */ u16 tempoAcc;
    /* 0x00C */ u16 unk_0C;
    /* 0x00E */ s16 transposition;
    /* 0x010 */ u16 delay;
    /* 0x012 */ u16 fadeTimer;
    /* 0x014 */ u16 fadeTimerUnkEu;
    /* 0x018 */ u8* seqData;
    /* 0x01C */ f32 fadeVolume;
    /* 0x020 */ f32 fadeVelocity;
    /* 0x024 */ f32 volume;
    /* 0x028 */ f32 muteVolumeScale;
    /* 0x02C */ f32 fadeVolumeScale;
    /* 0x030 */ f32 appliedFadeVolume;
    /* 0x034 */ f32 bend;
    /* 0x038 */ struct SequenceChannel* channels[16];
    /* 0x078 */ SeqScriptState scriptState;
    /* 0x094 */ u8* shortNoteVelocityTable;
    /* 0x098 */ u8* shortNoteGateTimeTable;
    /* 0x09C */ NotePool notePool;
    /* 0x0DC */ s32 skipTicks;
    /* 0x0E0 */ u32 scriptCounter;
    /* 0x0E4 */ char unk_E4[0x74]; // unused struct members for sequence/sound font dma management, according to sm64 decomp
    /* 0x158 */ s8 soundScriptIO[8];
} SequencePlayer; // size = 0x160

typedef struct {
    /* 0x0 */ u8 decayIndex; // index used to obtain adsr decay rate from adsrDecayTable
    /* 0x1 */ u8 sustain;
    /* 0x4 */ EnvelopePoint* envelope;
} AdsrSettings; // size = 0x8

typedef struct {
    /* 0x00 */ union {
        struct A {
            /* 0x00 */ u8 unk_0b80 : 1;
            /* 0x00 */ u8 hang : 1;
            /* 0x00 */ u8 decay : 1;
            /* 0x00 */ u8 release : 1;
            /* 0x00 */ u8 state : 4;
        } s;
        /* 0x00 */ u8 asByte;
    } action;
    /* 0x01 */ u8 envIndex;
    /* 0x02 */ s16 delay;
    /* 0x04 */ f32 sustain;
    /* 0x08 */ f32 velocity;
    /* 0x0C */ f32 fadeOutVel;
    /* 0x10 */ f32 current;
    /* 0x14 */ f32 target;
    /* 0x18 */ char unk_18[4];
    /* 0x1C */ EnvelopePoint* envelope;
} AdsrState; // size = 0x20

typedef struct {
    /* 0x00 */ u8 unused : 2;
    /* 0x00 */ u8 bit2 : 2;
    /* 0x00 */ u8 strongRight : 1;
    /* 0x00 */ u8 strongLeft : 1;
    /* 0x00 */ u8 stereoHeadsetEffects : 1;
    /* 0x00 */ u8 usesHeadsetPanEffects : 1;
} StereoData; // size = 0x1

typedef union {
    /* 0x00 */ StereoData s;
    /* 0x00 */ u8 asByte;
} Stereo; // size = 0x1

typedef struct {
    /* 0x00 */ u8 reverb;
    /* 0x01 */ u8 gain; // Increases volume by a multiplicative scaling factor. Represented as a UQ4.4 number
    /* 0x02 */ u8 pan;
    /* 0x03 */ Stereo stereo;
    /* 0x04 */ u8 unk_4;
    /* 0x06 */ u16 unk_6;
    /* 0x08 */ f32 freqScale;
    /* 0x0C */ f32 velocity;
    /* 0x10 */ s16* filter;
    /* 0x14 */ s16 filterBuf[8];
} NoteAttributes; // size = 0x24

// Also known as a SubTrack, according to sm64 debug strings.
typedef struct SequenceChannel {
    /* 0x00 */ u8 enabled : 1;
    /* 0x00 */ u8 finished : 1;
    /* 0x00 */ u8 stopScript : 1;
    /* 0x00 */ u8 stopSomething2 : 1; // sets SequenceLayer.stopSomething
    /* 0x00 */ u8 hasInstrument : 1;
    /* 0x00 */ u8 stereoHeadsetEffects : 1;
    /* 0x00 */ u8 largeNotes : 1; // notes specify duration and velocity
    /* 0x00 */ u8 unused : 1;
    union {
        struct {
            /* 0x01 */ u8 freqScale : 1;
            /* 0x01 */ u8 volume : 1;
            /* 0x01 */ u8 pan : 1;
        } s;
        /* 0x01 */ u8 asByte;
    } changes;
    /* 0x02 */ u8 noteAllocPolicy;
    /* 0x03 */ u8 muteBehavior;
    /* 0x04 */ u8 reverb;       // or dry/wet mix
    /* 0x05 */ u8 notePriority; // 0-3
    /* 0x06 */ u8 someOtherPriority;
    /* 0x07 */ u8 fontId;
    /* 0x08 */ u8 reverbIndex;
    /* 0x09 */ u8 bookOffset;
    /* 0x0A */ u8 newPan;
    /* 0x0B */ u8 panChannelWeight;  // proportion of pan that comes from the channel (0..128)
    /* 0x0C */ u8 gain; // Increases volume by a multiplicative scaling factor. Represented as a UQ4.4 number
    /* 0x0D */ u8 velocityRandomVariance;
    /* 0x0E */ u8 gateTimeRandomVariance;
    /* 0x0F */ u8 unk_0F;
    /* 0x10 */ u16 vibratoRateStart;
    /* 0x12 */ u16 vibratoExtentStart;
    /* 0x14 */ u16 vibratoRateTarget;
    /* 0x16 */ u16 vibratoExtentTarget;
    /* 0x18 */ u16 vibratoRateChangeDelay;
    /* 0x1A */ u16 vibratoExtentChangeDelay;
    /* 0x1C */ u16 vibratoDelay;
    /* 0x1E */ u16 delay;
    /* 0x20 */ u16 unk_20;
    /* 0x22 */ u16 unk_22;
    /* 0x24 */ s16 instOrWave; // either 0 (none), instrument index + 1, or
                             // 0x80..0x83 for sawtooth/triangle/sine/square waves.
    /* 0x26 */ s16 transposition;
    /* 0x28 */ f32 volumeScale;
    /* 0x2C */ f32 volume;
    /* 0x30 */ s32 pan;
    /* 0x34 */ f32 appliedVolume;
    /* 0x38 */ f32 freqScale;
    /* 0x3C */ u8 (*dynTable)[][2];
    /* 0x40 */ struct Note* noteUnused;
    /* 0x44 */ struct SequenceLayer* layerUnused;
    /* 0x48 */ Instrument* instrument;
    /* 0x4C */ SequencePlayer* seqPlayer;
    /* 0x50 */ struct SequenceLayer* layers[4];
    /* 0x60 */ SeqScriptState scriptState;
    /* 0x7C */ AdsrSettings adsr;
    /* 0x84 */ NotePool notePool;
    /* 0xC4 */ s8 soundScriptIO[8]; // bridge between sound script and audio lib, "io ports"
    /* 0xCC */ s16* filter;
    /* 0xD0 */ Stereo stereo;
} SequenceChannel; // size = 0xD4

// Might also be known as a Track, according to sm64 debug strings (?).
typedef struct SequenceLayer {
    /* 0x00 */ u8 enabled : 1;
    /* 0x00 */ u8 finished : 1;
    /* 0x00 */ u8 stopSomething : 1;
    /* 0x00 */ u8 continuousNotes : 1; // keep the same note for consecutive notes with the same sound
    /* 0x00 */ u8 bit3 : 1; // "loaded"?
    /* 0x00 */ u8 ignoreDrumPan : 1;
    /* 0x00 */ u8 bit1 : 1; // "has initialized continuous notes"?
    /* 0x00 */ u8 notePropertiesNeedInit : 1;
    /* 0x01 */ Stereo stereo;
    /* 0x02 */ u8 instOrWave;
    /* 0x03 */ u8 gateTime;
    /* 0x04 */ u8 semitone;
    /* 0x05 */ u8 portamentoTargetNote;
    /* 0x06 */ u8 pan; // 0..128
    /* 0x07 */ u8 notePan;
    /* 0x08 */ s16 delay;
    /* 0x0A */ s16 gateDelay;
    /* 0x0C */ s16 delay2;
    /* 0x0E */ u16 portamentoTime;
    /* 0x10 */ s16 transposition; // #semitones added to play commands
                                  // (seq instruction encoding only allows referring to the limited range
                                  // 0..0x3F; this makes 0x40..0x7F accessible as well)
    /* 0x12 */ s16 shortNoteDefaultDelay;
    /* 0x14 */ s16 lastDelay;
    /* 0x18 */ AdsrSettings adsr;
    /* 0x20 */ Portamento portamento;
    /* 0x2C */ struct Note* note;
    /* 0x30 */ f32 freqScale;
    /* 0x34 */ f32 bend;
    /* 0x38 */ f32 velocitySquare2;
    /* 0x3C */ f32 velocitySquare; // not sure which one of those corresponds to the sm64 original
    /* 0x40 */ f32 noteVelocity;
    /* 0x44 */ f32 noteFreqScale;
    /* 0x48 */ Instrument* instrument;
    /* 0x4C */ TunedSample* tunedSample;
    /* 0x50 */ SequenceChannel* channel;
    /* 0x54 */ SeqScriptState scriptState;
    /* 0x70 */ AudioListItem listItem;
} SequenceLayer; // size = 0x80

typedef struct {
    /* 0x000 */ s16 adpcmdecState[16];
    /* 0x020 */ s16 finalResampleState[16];
    /* 0x040 */ s16 mixEnvelopeState[32];
    /* 0x080 */ s16 unusedState[16];
    /* 0x0A0 */ s16 haasEffectDelayState[32];
    /* 0x0E0 */ s16 unkState[128];
} NoteSynthesisBuffers; // size = 0x1E0

typedef struct {
    /* 0x00 */ u8 restart;
    /* 0x01 */ u8 sampleDmaIndex;
    /* 0x02 */ u8 prevHaasEffectLeftDelaySize;
    /* 0x03 */ u8 prevHaasEffectRightDelaySize;
    /* 0x04 */ u8 reverbVol;
    /* 0x05 */ u8 numParts;
    /* 0x06 */ u16 samplePosFrac;
    /* 0x08 */ s32 samplePosInt;
    /* 0x0C */ NoteSynthesisBuffers* synthesisBuffers;
    /* 0x10 */ s16 curVolLeft;
    /* 0x12 */ s16 curVolRight;
    /* 0x14 */ u16 unk_14;
    /* 0x16 */ u16 unk_16;
    /* 0x18 */ u16 unk_18;
    /* 0x1A */ u8 unk_1A;
    /* 0x1C */ u16 unk_1C;
    /* 0x1E */ u16 unk_1E;
} NoteSynthesisState; // size = 0x20

typedef struct {
    /* 0x00 */ struct SequenceChannel* channel;
    /* 0x04 */ u32 time;
    /* 0x08 */ s16* curve;
    /* 0x0C */ f32 extent;
    /* 0x10 */ f32 rate;
    /* 0x14 */ u8 active;
    /* 0x16 */ u16 rateChangeTimer;
    /* 0x18 */ u16 extentChangeTimer;
    /* 0x1A */ u16 delay;
} VibratoState; // size = 0x1C

typedef struct {
    /* 0x00 */ u8 priority;
    /* 0x01 */ u8 waveId;
    /* 0x02 */ u8 harmonicIndex; // the harmonic index for the synthetic wave contained in gWaveSamples (also matches the base 2 logarithm of the harmonic order)
    /* 0x03 */ u8 fontId;
    /* 0x04 */ u8 unk_04;
    /* 0x05 */ u8 stereoHeadsetEffects;
    /* 0x06 */ s16 adsrVolScaleUnused;
    /* 0x08 */ f32 portamentoFreqScale;
    /* 0x0C */ f32 vibratoFreqScale;
    /* 0x10 */ SequenceLayer* prevParentLayer;
    /* 0x14 */ SequenceLayer* parentLayer;
    /* 0x18 */ SequenceLayer* wantedParentLayer;
    /* 0x1C */ NoteAttributes attributes;
    /* 0x40 */ AdsrState adsr;
    /* 0x60 */ Portamento portamento;
    /* 0x6C */ VibratoState vibratoState;
} NotePlaybackState; // size = 0x88

typedef struct {
    struct {
        /* 0x00 */ volatile u8 enabled : 1;
        /* 0x00 */ u8 needsInit : 1;
        /* 0x00 */ u8 finished : 1; // ?
        /* 0x00 */ u8 unused : 1;
        /* 0x00 */ u8 stereoStrongRight : 1;
        /* 0x00 */ u8 stereoStrongLeft : 1;
        /* 0x00 */ u8 stereoHeadsetEffects : 1;
        /* 0x00 */ u8 usesHeadsetPanEffects : 1; // ?
    } bitField0;
    struct {
        /* 0x01 */ u8 reverbIndex : 3;
        /* 0x01 */ u8 bookOffset : 2;
        /* 0x01 */ u8 isSyntheticWave : 1;
        /* 0x01 */ u8 hasTwoParts : 1;
        /* 0x01 */ u8 useHaasEffect : 1;
    } bitField1;
    /* 0x02 */ u8 gain; // Increases volume by a multiplicative scaling factor. Represented as a UQ4.4 number
    /* 0x03 */ u8 haasEffectLeftDelaySize;
    /* 0x04 */ u8 haasEffectRightDelaySize;
    /* 0x05 */ u8 reverbVol;
    /* 0x06 */ u8 harmonicIndexCurAndPrev; // bits 3..2 store curHarmonicIndex, bits 1..0 store prevHarmonicIndex
    /* 0x07 */ u8 unk_07;
    /* 0x08 */ u16 targetVolLeft;
    /* 0x0A */ u16 targetVolRight;
    /* 0x0C */ u16 resamplingRateFixedPoint;
    /* 0x0E */ u16 unk_0E;
    /* 0x10 */ union {
                 TunedSample* tunedSample;
                 s16* waveSampleAddr; // used for synthetic waves
             };
    /* 0x14 */ s16* filter;
    /* 0x18 */ char pad_18[0x8];
} NoteSubEu; // size = 0x20

typedef struct Note {
    /* 0x00 */ AudioListItem listItem;
    /* 0x10 */ NoteSynthesisState synthesisState;
    /* 0x30 */ NotePlaybackState playbackState;
    /* 0xB8 */ char unk_B8[0x4];
    /* 0xBC */ u32 startSamplePos; // initial position/index to start processing s16 samples
    /* 0xC0 */ NoteSubEu noteSubEu;
} Note; // size = 0xE0

typedef struct {
    /* 0x00 */ u8 downsampleRate;
    /* 0x02 */ u16 windowSize;
    /* 0x04 */ u16 decayRatio; // determines how much reverb persists
    /* 0x06 */ u16 unk_6;
    /* 0x08 */ u16 unk_8;
    /* 0x0A */ u16 volume;
    /* 0x0C */ u16 leakRtl;
    /* 0x0E */ u16 leakLtr;
    /* 0x10 */ s8 unk_10;
    /* 0x12 */ u16 unk_12;
    /* 0x14 */ s16 lowPassFilterCutoffLeft;
    /* 0x16 */ s16 lowPassFilterCutoffRight;
} ReverbSettings; // size = 0x18

/**
 * The high-level audio specifications requested when initializing or resetting the audio heap.
 * The audio heap can be reset on various occasions, including on most scene transitions.
 */
typedef struct {
    /* 0x00 */ u32 samplingFrequency; // Target sampling rate in Hz
    /* 0x04 */ u8 unk_04;
    /* 0x05 */ u8 numNotes;
    /* 0x06 */ u8 numSequencePlayers;
    /* 0x07 */ u8 unk_07; // unused, set to zero
    /* 0x08 */ u8 unk_08; // unused, set to zero
    /* 0x09 */ u8 numReverbs;
    /* 0x0C */ ReverbSettings* reverbSettings;
    /* 0x10 */ u16 sampleDmaBufSize1; // size of buffers in the audio misc pool to store small snippets of individual samples. Stored short-lived.
    /* 0x12 */ u16 sampleDmaBufSize2; // size of buffers in the audio misc pool to store small snippets of individual samples. Stored long-lived.
    /* 0x14 */ u16 unk_14;
    /* 0x18 */ u32 persistentSeqCacheSize;  // size of cache on audio pool to store sequences persistently
    /* 0x1C */ u32 persistentFontCacheSize; // size of cache on audio pool to store soundFonts persistently
    /* 0x20 */ u32 persistentSampleBankCacheSize; // size of cache on audio pool to store entire sample banks persistently
    /* 0x24 */ u32 temporarySeqCacheSize;  // size of cache on audio pool to store sequences temporarily
    /* 0x28 */ u32 temporaryFontCacheSize; // size of cache on audio pool to store soundFonts temporarily
    /* 0x2C */ u32 temporarySampleBankCacheSize; // size of cache on audio pool to store entire sample banks temporarily
    /* 0x30 */ s32 persistentSampleCacheSize; // size of cache in the audio misc pool to store individual samples persistently
    /* 0x34 */ s32 temporarySampleCacheSize; // size of cache in the audio misc pool to store individual samples temporarily
} AudioSpec; // size = 0x38

/**
 * The audio buffer stores the fully processed digital audio before it is sent to the audio interface (AI), then to the
 * digital-analog converter (DAC), then to play on the speakers. The audio buffer is written to by the rsp after
 * processing audio commands. This struct parameterizes that buffer.
 */
typedef struct {
    /* 0x00 */ s16 specUnk4;
    /* 0x02 */ u16 samplingFrequency; // Target sampling rate in Hz
    /* 0x04 */ u16 aiSamplingFrequency; // True sampling rate of the audio interface (AI), see `osAiSetFrequency`
    /* 0x06 */ s16 samplesPerFrameTarget;
    /* 0x08 */ s16 maxAiBufferLength;
    /* 0x0A */ s16 minAiBufferLength;
    /* 0x0C */ s16 updatesPerFrame; // for each frame of the audio thread (default 60 fps), number of updates to process audio
    /* 0x0E */ s16 samplesPerUpdate;
    /* 0x10 */ s16 samplesPerUpdateMax;
    /* 0x12 */ s16 samplesPerUpdateMin;
    /* 0x14 */ s16 numSequencePlayers;
    /* 0x18 */ f32 resampleRate;
    /* 0x1C */ f32 updatesPerFrameInv; // inverse (reciprocal) of updatesPerFrame
    /* 0x20 */ f32 updatesPerFrameInvScaled; // updatesPerFrameInv scaled down by a factor of 256
    /* 0x24 */ f32 updatesPerFrameScaled; // updatesPerFrame scaled down by a factor of 4
} AudioBufferParameters; // size = 0x28

/**
 * Meta-data associated with a pool (contained within the Audio Heap)
 */
typedef struct {
    /* 0x0 */ u8* startRamAddr; // start addr of the pool
    /* 0x4 */ u8* curRamAddr; // address of the next available memory for allocation
    /* 0x8 */ s32 size; // size of the pool
    /* 0xC */ s32 numEntries; // number of entries allocated to the pool
} AudioAllocPool; // size = 0x10

/**
 * Audio cache entry data to store a single entry containing either a sequence, soundfont, or entire sample banks
 */
typedef struct {
    /* 0x0 */ u8* ramAddr;
    /* 0x4 */ u32 size;
    /* 0x8 */ s16 tableType;
    /* 0xA */ s16 id;
} AudioCacheEntry; // size = 0xC

/**
 * Audio cache entry data to store a single entry containing an individual sample
 */
typedef struct {
    /* 0x00 */ s8 inUse;
    /* 0x01 */ s8 origMedium;
    /* 0x02 */ s8 sampleBankId;
    /* 0x03 */ char unk_03[0x5];
    /* 0x08 */ u8* allocatedAddr;
    /* 0x0C */ void* sampleAddr;
    /* 0x10 */ u32 size;
} SampleCacheEntry; // size = 0x14

/**
 * Audio cache entry data to store individual samples
 */
typedef struct {
    /* 0x000 */ AudioAllocPool pool;
    /* 0x010 */ SampleCacheEntry entries[32];
    /* 0x290 */ s32 numEntries;
} AudioSampleCache; // size = 0x294

typedef struct {
    /* 0x00*/ u32 numEntries;
    /* 0x04*/ AudioAllocPool pool;
    /* 0x14*/ AudioCacheEntry entries[16];
} AudioPersistentCache; // size = 0xD4

typedef struct {
    /* 0x00*/ u32 nextSide;
    /* 0x04*/ AudioAllocPool pool;
    /* 0x14*/ AudioCacheEntry entries[2];
} AudioTemporaryCache; // size = 0x3C

typedef struct {
    /* 0x000*/ AudioPersistentCache persistent;
    /* 0x0D4*/ AudioTemporaryCache temporary;
    /* 0x100*/ u8 unk_100[0x10];
} AudioCache; // size = 0x110

typedef struct {
    /* 0x0 */ u32 persistentCommonPoolSize;
    /* 0x4 */ u32 temporaryCommonPoolSize;
} AudioCachePoolSplit; // size = 0x8

typedef struct {
    /* 0x0 */ u32 seqCacheSize;
    /* 0x4 */ u32 fontCacheSize;
    /* 0x8 */ u32 sampleBankCacheSize;
} AudioCommonPoolSplit; // size = 0xC

typedef struct {
    /* 0x0 */ u32 miscPoolSize;
    /* 0x4 */ u32 unkSizes[2];
    /* 0xC */ u32 cachePoolSize;
} AudioSessionPoolSplit; // size = 0x10

typedef struct {
    /* 0x00 */ u32 endAndMediumKey;
    /* 0x04 */ Sample* sample;
    /* 0x08 */ u8* ramAddr;
    /* 0x0C */ u32 encodedInfo;
    /* 0x10 */ s32 isFree;
} AudioPreloadReq; // size = 0x14

/**
 * Audio commands used to transfer audio requests from the graph thread to the audio thread
 */
typedef struct {
    /* 0x0 */ union{
        u32 opArgs;
        struct {
            u8 op;
            u8 arg0;
            u8 arg1;
            u8 arg2;
        };
    };
    /* 0x4 */ union {
        void* data;
        f32 asFloat;
        s32 asInt;
        u16 asUShort;
        s8 asSbyte;
        u8 asUbyte;
        u32 asUInt;
    };
} AudioCmd; // size = 0x8

typedef struct {
    /* 0x00 */ s8 status;
    /* 0x01 */ s8 delay;
    /* 0x02 */ s8 medium;
    /* 0x04 */ u8* ramAddr;
    /* 0x08 */ u32 curDevAddr;
    /* 0x0C */ u8* curRamAddr;
    /* 0x10 */ u32 bytesRemaining;
    /* 0x14 */ u32 chunkSize;
    /* 0x18 */ s32 unkMediumParam;
    /* 0x1C */ u32 retMsg;
    /* 0x20 */ OSMesgQueue* retQueue;
    /* 0x24 */ OSMesgQueue msgQueue;
    /* 0x3C */ OSMesg msg;
    /* 0x40 */ OSIoMesg ioMesg;
} AudioAsyncLoad; // size = 0x58

typedef struct {
    /* 0x00 */ u8 medium;
    /* 0x01 */ u8 seqOrFontId;
    /* 0x02 */ u16 instId;
    /* 0x04 */ s32 unkMediumParam;
    /* 0x08 */ u32 curDevAddr;
    /* 0x0C */ u8* curRamAddr;
    /* 0x10 */ u8* ramAddr;
    /* 0x14 */ s32 state;
    /* 0x18 */ s32 bytesRemaining;
    /* 0x1C */ s8* status; // write-only
    /* 0x20 */ Sample sample;
    /* 0x30 */ OSMesgQueue msgQueue;
    /* 0x48 */ OSMesg msg;
    /* 0x4C */ OSIoMesg ioMesg;
} AudioSlowLoad; // size = 0x64

typedef struct {
    /* 0x00 */ u32 romAddr;
    /* 0x04 */ u32 size;
    /* 0x08 */ s8 medium;
    /* 0x09 */ s8 cachePolicy;
    /* 0x0A */ s16 shortData1;
    /* 0x0C */ s16 shortData2;
    /* 0x0E */ s16 shortData3;
} AudioTableEntry; // size = 0x10

typedef struct {
    /* 0x00 */ s16 numEntries;
    /* 0x02 */ s16 unkMediumParam;
    /* 0x04 */ u32 romAddr;
    /* 0x08 */ char pad[0x8];
    /* 0x10 */ AudioTableEntry entries[1]; // (dynamic size)
} AudioTable; // size >= 0x20

typedef struct {
    /* 0x00 */ OSTask task;
    /* 0x40 */ OSMesgQueue* msgQueue;
    /* 0x44 */ void* unk_44; // probably a message that gets unused.
    /* 0x48 */ char unk_48[0x8];
} AudioTask; // size = 0x50

typedef struct {
    /* 0x00 */ u8* ramAddr;
    /* 0x04 */ u32 devAddr;
    /* 0x08 */ u16 sizeUnused;
    /* 0x0A */ u16 size;
    /* 0x0C */ u8 unused;
    /* 0x0D */ u8 reuseIndex; // position in sSampleDmaReuseQueue1/2, if ttl == 0
    /* 0x0E */ u8 ttl;        // duration after which the DMA can be discarded
} SampleDma; // size = 0x10

typedef struct {
    /* 0x0000 */ char unk_0000;
    /* 0x0001 */ s8 numSynthesisReverbs;
    /* 0x0002 */ u16 unk_2; // reads from audio spec unk_14, never used, always set to 0x7FFF
    /* 0x0004 */ u16 unk_4;
    /* 0x0006 */ char unk_0006[0x0A];
    /* 0x0010 */ s16* curLoadedBook;
    /* 0x0014 */ NoteSubEu* noteSubsEu;
    /* 0x0018 */ SynthesisReverb synthesisReverbs[4];
    /* 0x0B38 */ char unk_0B38[0x30];
    /* 0x0B68 */ Sample* usedSamples[128];
    /* 0x0D68 */ AudioPreloadReq preloadSampleStack[128];
    /* 0x1768 */ s32 numUsedSamples;
    /* 0x176C */ s32 preloadSampleStackTop;
    /* 0x1770 */ AudioAsyncLoad asyncLoads[0x10];
    /* 0x1CF0 */ OSMesgQueue asyncLoadUnkMediumQueue;
    /* 0x1D08 */ char unk_1D08[0x40];
    /* 0x1D48 */ AudioAsyncLoad* curUnkMediumLoad;
    /* 0x1D4C */ u32 slowLoadPos;
    /* 0x1D50 */ AudioSlowLoad slowLoads[2];
    /* 0x1E18 */ OSPiHandle* cartHandle;
    /* 0x1E1C */ OSPiHandle* driveHandle;
    /* 0x1E20 */ OSMesgQueue externalLoadQueue;
    /* 0x1E38 */ OSMesg externalLoadMsgBuf[16];
    /* 0x1E78 */ OSMesgQueue preloadSampleQueue;
    /* 0x1E90 */ OSMesg preloadSampleMsgBuf[16];
    /* 0x1ED0 */ OSMesgQueue curAudioFrameDmaQueue;
    /* 0x1EE8 */ OSMesg curAudioFrameDmaMsgBuf[64];
    /* 0x1FE8 */ OSIoMesg curAudioFrameDmaIoMsgBuf[64];
    /* 0x25E8 */ OSMesgQueue syncDmaQueue;
    /* 0x2600 */ OSMesg syncDmaMesg;
    /* 0x2604 */ OSIoMesg syncDmaIoMesg;
    /* 0x261C */ SampleDma* sampleDmas;
    /* 0x2620 */ u32 sampleDmaCount;
    /* 0x2624 */ u32 sampleDmaListSize1;
    /* 0x2628 */ s32 unused2628;
    /* 0x262C */ u8 sampleDmaReuseQueue1[0x100]; // read pos <= write pos, wrapping mod 256
    /* 0x272C */ u8 sampleDmaReuseQueue2[0x100];
    /* 0x282C */ u8 sampleDmaReuseQueue1RdPos; // Read position for short-lived sampleDma
    /* 0x282D */ u8 sampleDmaReuseQueue2RdPos; // Read position for long-lived sampleDma
    /* 0x282E */ u8 sampleDmaReuseQueue1WrPos; // Write position for short-lived sampleDma
    /* 0x282F */ u8 sampleDmaReuseQueue2WrPos; // Write position for long-lived sampleDma
    /* 0x2830 */ AudioTable* sequenceTable;
    /* 0x2834 */ AudioTable* soundFontTable;
    /* 0x2838 */ AudioTable* sampleBankTable;
    /* 0x283C */ u8* sequenceFontTable;
    /* 0x2840 */ u16 numSequences;
    /* 0x2844 */ SoundFont* soundFontList;
    /* 0x2848 */ AudioBufferParameters audioBufferParameters;
    /* 0x2870 */ f32 unk_2870;
    /* 0x2874 */ s32 sampleDmaBufSize1;
    /* 0x2874 */ s32 sampleDmaBufSize2;
    /* 0x287C */ char unk_287C[0x10];
    /* 0x288C */ s32 sampleDmaBufSize;
    /* 0x2890 */ s32 maxAudioCmds;
    /* 0x2894 */ s32 numNotes;
    /* 0x2898 */ s16 tempoInternalToExternal;
    /* 0x289A */ s8 soundMode;
    /* 0x289C */ s32 totalTaskCount; // The total number of times the top-level function on the audio thread has run since audio was initialized
    /* 0x28A0 */ s32 curAudioFrameDmaCount;
    /* 0x28A4 */ s32 rspTaskIndex;
    /* 0x28A8 */ s32 curAiBufIndex;
    /* 0x28AC */ Acmd* abiCmdBufs[2]; // Pointer to audio heap where the audio binary interface command lists (for the rsp) are stored. Two lists that alternate every frame
    /* 0x28B4 */ Acmd* curAbiCmdBuf; // Pointer to the currently active abiCmdBufs
    /* 0x28B8 */ AudioTask* curTask;
    /* 0x28BC */ char unk_28BC[0x4];
    /* 0x28C0 */ AudioTask rspTask[2];
    /* 0x2960 */ f32 unk_2960;
    /* 0x2964 */ s32 refreshRate;
    /* 0x2968 */ s16* aiBuffers[3];
    /* 0x2974 */ s16 aiBufLengths[3];
    /* 0x297C */ u32 audioRandom;
    /* 0x2980 */ s32 audioErrorFlags;
    /* 0x2984 */ volatile u32 resetTimer;
    /* 0x2988 */ char unk_2988[0x8];
    /* 0x2990 */ AudioAllocPool sessionPool; // A sub-pool to main pool, contains all sub-pools and data that changes every audio reset
    /* 0x29A0 */ AudioAllocPool externalPool; // pool allocated externally to the audio heap. Never used in game
    /* 0x29B0 */ AudioAllocPool initPool;// A sub-pool to the main pool, contains all sub-pools and data that persists every audio reset
    /* 0x29C0 */ AudioAllocPool miscPool; // A sub-pool to the session pool.
    /* 0x29D0 */ char unk_29D0[0x20]; // probably two unused pools
    /* 0x29F0 */ AudioAllocPool cachePool; // The common pool for cache entries
    /* 0x2A00 */ AudioAllocPool persistentCommonPool; // A sub-pool to the cache pool, contains caches for data stored persistently
    /* 0x2A10 */ AudioAllocPool temporaryCommonPool; // A sub-pool to the cache pool, contains caches for data stored temporarily
    /* 0x2A20 */ AudioCache seqCache; // Cache to store sequences
    /* 0x2B30 */ AudioCache fontCache; // Cache to store soundFonts
    /* 0x2C40 */ AudioCache sampleBankCache; // Cache for loading entire sample banks
    /* 0x2D50 */ AudioAllocPool permanentPool; // Pool to store audio data that is always loaded. Used for sfxs
    /* 0x2D60 */ AudioCacheEntry permanentCache[32]; // individual entries to the permanent pool
    /* 0x2EE0 */ AudioSampleCache persistentSampleCache; // Stores individual samples persistently
    /* 0x3174 */ AudioSampleCache temporarySampleCache; // Stores individual samples temporarily
    /* 0x3408 */ AudioSessionPoolSplit sessionPoolSplit; // splits session pool into the cache pool and misc pool
    /* 0x3418 */ AudioCachePoolSplit cachePoolSplit; // splits cache pool into the persistent & temporary common pools
    /* 0x3420 */ AudioCommonPoolSplit persistentCommonPoolSplit;// splits persistent common pool into caches for sequences, soundFonts, sample banks
    /* 0x342C */ AudioCommonPoolSplit temporaryCommonPoolSplit; // splits temporary common pool into caches for sequences, soundFonts, sample banks
    /* 0x3438 */ u8 sampleFontLoadStatus[0x30];
    /* 0x3468 */ u8 fontLoadStatus[0x30];
    /* 0x3498 */ u8 seqLoadStatus[0x80];
    /* 0x3518 */ volatile u8 resetStatus;
    /* 0x3519 */ u8 audioResetSpecIdToLoad;
    /* 0x351C */ s32 audioResetFadeOutFramesLeft;
    /* 0x3520 */ f32* adsrDecayTable; // A table on the audio heap that stores decay rates used for adsr
    /* 0x3524 */ u8* audioHeap;
    /* 0x3528 */ u32 audioHeapSize;
    /* 0x352C */ Note* notes;
    /* 0x3530 */ SequencePlayer seqPlayers[4];
    /* 0x3AB0 */ SequenceLayer sequenceLayers[64];
    /* 0x5AB0 */ SequenceChannel sequenceChannelNone;
    /* 0x5B84 */ s32 noteSubEuOffset;
    /* 0x5B88 */ AudioListItem layerFreeList;
    /* 0x5B98 */ NotePool noteFreeLists;
    /* 0x5BD8 */ u8 cmdWrPos;
    /* 0x5BD9 */ u8 cmdRdPos;
    /* 0x5BDA */ u8 cmdQueueFinished;
    /* 0x5BDC */ u16 unk_5BDC[4];
    /* 0x5BE4 */ OSMesgQueue* audioResetQueueP;
    /* 0x5BE8 */ OSMesgQueue* taskStartQueueP;
    /* 0x5BEC */ OSMesgQueue* cmdProcQueueP;
    /* 0x5BF0 */ OSMesgQueue taskStartQueue;
    /* 0x5C08 */ OSMesgQueue cmdProcQueue;
    /* 0x5C20 */ OSMesgQueue audioResetQueue;
    /* 0x5C38 */ OSMesg taskStartMsgBuf[1];
    /* 0x5C3C */ OSMesg audioResetMsgBuf[1];
    /* 0x5C40 */ OSMesg cmdProcMsgBuf[4];
    /* 0x5C50 */ AudioCmd cmdBuf[0x100]; // Audio commands used to transfer audio requests from the graph thread to the audio thread
} AudioContext; // size = 0x6450

typedef struct {
    /* 0x00 */ u8 reverbVol;
    /* 0x01 */ u8 gain; // Increases volume by a multiplicative scaling factor. Represented as a UQ4.4 number
    /* 0x02 */ u8 pan;
    /* 0x03 */ Stereo stereo;
    /* 0x04 */ f32 frequency;
    /* 0x08 */ f32 velocity;
    /* 0x0C */ char unk_0C[0x4];
    /* 0x10 */ s16* filter;
    /* 0x14 */ u8 unk_14;
    /* 0x16 */ u16 unk_16;
} NoteSubAttributes; // size = 0x18

typedef struct {
    /* 0x00 */ u32 heapSize; // total number of bytes allocated to the audio heap. Must be <= the size of `gAudioHeap` (ideally about the same size)
    /* 0x04 */ u32 initPoolSize; // The entire audio heap is split into two pools.
    /* 0x08 */ u32 permanentPoolSize;
} AudioHeapInitSizes; // size = 0xC

#endif
