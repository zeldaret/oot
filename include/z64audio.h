#ifndef _Z64_AUDIO_H_
#define _Z64_AUDIO_H_

#define MK_CMD(b0,b1,b2,b3) ((((b0) & 0xFF) << 0x18) | (((b1) & 0xFF) << 0x10) | (((b2) & 0xFF) << 0x8) | (((b3) & 0xFF) << 0))

/**
 * Structs in this repository have primarily been imported from the SM64 Decompilation.
 * Some struct members may be wrong; the symbol '?' next to an offset means the member is a guess.
 */

#define NO_LAYER ((SequenceChannelLayer*)(-1))
#define NO_CHANNEL ((SequenceChannel*)(-1))

#define TATUMS_PER_BEAT 48

#define IS_SEQUENCE_CHANNEL_VALID(ptr) ((u32)(ptr) != (u32)&gAudioContext.sequenceChannelNone)

#define ADSR_STATE_DISABLED 0
#define ADSR_STATE_INITIAL 1
#define ADSR_STATE_START_LOOP 2
#define ADSR_STATE_LOOP 3
#define ADSR_STATE_FADE 4
#define ADSR_STATE_HANG 5
#define ADSR_STATE_DECAY 6
#define ADSR_STATE_RELEASE 7
#define ADSR_STATE_SUSTAIN 8

#define ADSR_DISABLE 0
#define ADSR_HANG -1
#define ADSR_GOTO -2
#define ADSR_RESTART -3

#define AIBUF_LEN 0xB00

#define CODEC_ADPCM 0
#define CODEC_S8 1

struct Note;
struct NotePool;
struct SequenceChannel;
struct SequenceChannelLayer;

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
                   void* value; // either Note* or SequenceChannelLayer*
                   s32 count;
               } u;
    /* 0x0C */ struct NotePool* pool;
} AudioListItem; // size = 0x10

typedef struct NotePool {
    /* 0x00 */ AudioListItem disabled;
    /* 0x10 */ AudioListItem decaying;
    /* 0x20 */ AudioListItem releasing;
    /* 0x30 */ AudioListItem active;
} NotePool;

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
} AdsrEnvelope; // size = 0x4

typedef struct {
    /* 0x00 */ u32 start;
    /* 0x04 */ u32 end;
    /* 0x08 */ u32 count;
    /* 0x0C */ char unk_0C[0x4];
    /* 0x10 */ s16 state[16]; // only exists if count != 0. 8-byte aligned
} AdpcmLoop; // size = 0x30 (or 0x10)

typedef struct {
    /* 0x00 */ s32 order;
    /* 0x04 */ s32 npredictors;
    /* 0x08 */ s16 book[1]; // size 8 * order * npredictors. 8-byte aligned
} AdpcmBook; // size >= 0x8

typedef struct {
    /* 0x00 */ u32 codec : 4;
    /* 0x00 */ u32 medium : 2;
    /* 0x00 */ u32 unk_bits26 : 1;
    /* 0x00 */ u32 unk_bits25 : 1;
    /* 0x01 */ u32 size : 24;
    /* 0x04 */ u8* sampleAddr;
    /* 0x08 */ AdpcmLoop* loop;
    /* 0x0C */ AdpcmBook* book;
} AudioBankSample; // size = 0x10

typedef struct {
    /* 0x00 */ AudioBankSample* sample;
    /* 0x04 */ f32 tuning; // frequency scale factor
} AudioBankSound; // size = 0x8

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
    /* 0x00A */ s16 unk_0A;
    /* 0x00C */ u16 unk_0C;
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
    /* 0x280 */ AudioBankSound sound;
    /* 0x288 */ AudioBankSample sample;
    /* 0x298 */ AdpcmLoop loop;
} SynthesisReverb; // size = 0x2C8

typedef struct {
    /* 0x00 */ u8 loaded;
    /* 0x01 */ u8 normalRangeLo;
    /* 0x02 */ u8 normalRangeHi;
    /* 0x03 */ u8 releaseRate;
    /* 0x04 */ AdsrEnvelope* envelope;
    /* 0x08 */ AudioBankSound lowNotesSound;
    /* 0x10 */ AudioBankSound normalNotesSound;
    /* 0x18 */ AudioBankSound highNotesSound;
} Instrument; // size = 0x20

typedef struct {
    /* 0x00 */ u8 releaseRate;
    /* 0x01 */ u8 pan;
    /* 0x02 */ u8 loaded;
    /* 0x04 */ AudioBankSound sound;
    /* 0x14 */ AdsrEnvelope* envelope;
} Drum; // size = 0x14

typedef struct {
    /* 0x00 */ u8 numInstruments;
    /* 0x01 */ u8 numDrums;
    /* 0x02 */ u8 unk_02;
    /* 0x03 */ u8 unk_03;
    /* 0x04 */ u16 numSfx;
    /* 0x08 */ Instrument** instruments;
    /* 0x0C */ Drum** drums;
    /* 0x10 */ AudioBankSound* soundEffects;
} CtlEntry; // size = 0x14

typedef struct {
    /* 0x00 */ u8* pc;
    /* 0x04 */ u8* stack[4];
    /* 0x14 */ u8 remLoopIters[4];
    /* 0x18 */ u8 depth;
    /* 0x19 */ s8 value;
} M64ScriptState; // size = 0x1C

// Also known as a Group, according to debug strings.
typedef struct {
    /* 0x000 */ u8 enabled : 1;
    /* 0x000 */ u8 finished : 1;
    /* 0x000 */ u8 muted : 1;
    /* 0x000 */ u8 seqDmaInProgress : 1;
    /* 0x000 */ u8 bankDmaInProgress : 1;
    /*?0x000 */ u8 recalculateVolume : 1;
    /* 0x000 */ u8 unk_0b2 : 1;
    /* 0x000 */ u8 unk_0b1 : 1;
    /* 0x001 */ u8 state;
    /* 0x002 */ u8 noteAllocPolicy;
    /* 0x003 */ u8 muteBehavior;
    /* 0x004 */ u8 seqId;
    /* 0x005 */ u8 defaultBank;
    /* 0x006 */ u8 unk_06[1];
    /* 0x007 */ s8 playerIndex;
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
    /* 0x034 */ f32 unk_34;
    /* 0x038 */ struct SequenceChannel* channels[16];
    /* 0x078 */ M64ScriptState scriptState;
    /* 0x094 */ u8* shortNoteVelocityTable;
    /* 0x098 */ u8* shortNoteDurationTable;
    /* 0x09C */ NotePool notePool;
    /* 0x0DC */ s32 unk_DC;
    /* 0x0E0 */ u32 unk_E0;
    /* 0x0E4 */ u8 pad_E4[0x10]; // OSMesgQueue seqDmaMesgQueue;
    /*?0x0F4 */ OSMesg seqDmaMesg;
    /*?0x0F8 */ OSIoMesg seqDmaIoMesg;
    /*?0x110 */ OSMesgQueue bankDmaMesgQueue;
    /*?0x128 */ OSMesg bankDmaMesg;
    /*?0x12C */ OSIoMesg bankDmaIoMesg;
    /*?0x144 */ u8* bankDmaCurrMemAddr;
    /*?0x148 */ u32 bankDmaCurrDevAddr;
    /*?0x14C */ s32 bankDmaRemaining;
    /*       */ u8 pad_150[8];
    /* 0x158 */ s8 unk_158[8]; // "port" according to debug strings. seqVariationEu? soundScriptIO?
} SequencePlayer; // size = 0x160

typedef struct {
    /* 0x0 */ u8 releaseRate;
    /* 0x1 */ u8 sustain;
    /* 0x4 */ AdsrEnvelope* envelope;
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
    /* 0x1C */ AdsrEnvelope* envelope;
} AdsrState;

typedef struct {
    /* 0x00 */ u8 bit0 : 1; // unused?
    /* 0x00 */ u8 bit1 : 1; // unused?
    /* 0x00 */ u8 bit2 : 2;
    /* 0x00 */ u8 strongRight : 1;
    /* 0x00 */ u8 strongLeft : 1;
    /* 0x00 */ u8 stereoHeadsetEffects : 1;
    /* 0x00 */ u8 usesHeadsetPanEffects : 1;
} StereoData;

typedef union {
    /* 0x00 */ StereoData s;
    /* 0x00 */ u8 asByte;
} Stereo;

typedef struct {
    /* 0x00 */ u8 reverb;
    /* 0x01 */ u8 unk_1;
    /* 0x02 */ u8 pan;
    /* 0x03 */ Stereo stereo;
    /* 0x04 */ u8 unk_4;
    /* 0x06 */ u16 unk_6;
    /* 0x08 */ f32 freqScale;
    /* 0x0C */ f32 velocity;
    /* 0x10 */ s16* filter;
    /* 0x14 */ s16 filterBuf[8];
} NoteAttributes; // size = 0x24

// Also known as a SubTrack, according to debug strings.
// Confusingly, a SubTrack is a container of Tracks.
typedef struct SequenceChannel {
    /* 0x00 */ u8 enabled : 1;
    /* 0x00 */ u8 finished : 1;
    /* 0x00 */ u8 stopScript : 1;
    /* 0x00 */ u8 stopSomething2 : 1; // sets SequenceChannelLayer.stopSomething
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
    /* 0x07 */ u8 bankId;
    /* 0x08 */ u8 reverbIndex;
    /* 0x09 */ u8 bookOffset;
    /* 0x0A */ u8 newPan;
    /* 0x0B */ u8 panChannelWeight;  // proportion of pan that comes from the channel (0..128)
    /* 0x0C */ u8 unk_0C;
    /* 0x0D */ u8 velocityRandomVariance;
    /* 0x0E */ u8 durationRandomVariance;
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
    /* 0x44 */ struct SequenceChannelLayer* layerUnused;
    /* 0x48 */ Instrument* instrument;
    /* 0x4C */ SequencePlayer* seqPlayer;
    /* 0x50 */ struct SequenceChannelLayer* layers[4];
    /* 0x60 */ M64ScriptState scriptState;
    /* 0x7C */ AdsrSettings adsr;
    /* 0x84 */ NotePool notePool;
    /* 0xC4 */ s8 soundScriptIO[8]; // bridge between sound script and audio lib
    /* 0xCC */ s16* filter;
    /* 0xD0 */ Stereo stereo;
} SequenceChannel; // size = 0xD4

// Also known as a Track, according to debug strings.
typedef struct SequenceChannelLayer {
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
    /* 0x03 */ u8 noteDuration;
    /* 0x04 */ u8 semitone;
    /* 0x05 */ u8 portamentoTargetNote;
    /* 0x06 */ u8 pan; // 0..128
    /* 0x07 */ u8 notePan;
    /* 0x08 */ s16 delay;
    /* 0x0A */ s16 duration;
    /* 0x0C */ s16 delay2;
    /* 0x0E */ u16 portamentoTime;
    /* 0x10 */ s16 transposition; // #semitones added to play commands
                                  // (m64 instruction encoding only allows referring to the limited range
                                  // 0..0x3F; this makes 0x40..0x7F accessible as well)
    /* 0x12 */ s16 shortNoteDefaultPlayPercentage;
    /* 0x14 */ s16 playPercentage;
    /* 0x18 */ AdsrSettings adsr;
    /* 0x20 */ Portamento portamento;
    /* 0x2C */ struct Note* note;
    /* 0x30 */ f32 freqScale;
    /* 0x34 */ f32 unk_34;
    /* 0x38 */ f32 velocitySquare2;
    /* 0x3C */ f32 velocitySquare; // not sure which one of those corresponds to the sm64 original
    /* 0x40 */ f32 noteVelocity;
    /* 0x44 */ f32 noteFreqScale;
    /* 0x48 */ Instrument* instrument;
    /* 0x4C */ AudioBankSound* sound;
    /* 0x50 */ SequenceChannel* seqChannel;
    /* 0x54 */ M64ScriptState scriptState;
    /* 0x70 */ AudioListItem listItem;
} SequenceChannelLayer; // size = 0x80

typedef struct {
    /* 0x0000 */ s16 adpcmdecState[0x10];
    /* 0x0020 */ s16 finalResampleState[0x10];
    /* 0x0040 */ s16 mixEnvelopeState[0x28];
    /* 0x0090 */ s16 panResampleState[0x10];
    /* 0x00B0 */ s16 panSamplesBuffer[0x20];
    /* 0x00F0 */ s16 dummyResampleState[0x10];
} NoteSynthesisBuffers; // size = 0x110

typedef struct {
    /* 0x00 */ u8 restart;
    /* 0x01 */ u8 sampleDmaIndex;
    /* 0x02 */ u8 prevHeadsetPanRight;
    /* 0x03 */ u8 prevHeadsetPanLeft;
    /* 0x04 */ u8 reverbVol;
    /* 0x05 */ u8 numAdpcmParts;
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
    /* 0x00 */ struct SequenceChannel* seqChannel;
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
    /* 0x02 */ u8 sampleCountIndex;
    /* 0x03 */ u8 bankId;
    /* 0x04 */ u8 unk_04;
    /* 0x05 */ u8 stereoHeadsetEffects;
    /* 0x06 */ s16 adsrVolScale; // unused?
    /* 0x08 */ f32 portamentoFreqScale;
    /* 0x0C */ f32 vibratoFreqScale;
    /* 0x10 */ SequenceChannelLayer* prevParentLayer;
    /* 0x14 */ SequenceChannelLayer* parentLayer;
    /* 0x18 */ SequenceChannelLayer* wantedParentLayer;
    /* 0x1C */ NoteAttributes attributes;
    /* 0x40 */ AdsrState adsr;
    // may contain portamento, vibratoState, if those are not part of Note itself
} NotePlaybackState;

typedef struct {
    // these bitfields should perhaps be merged into a single struct
    union {
        struct {
            /* 0x00 */ vu8 enabled : 1;
            /* 0x00 */ u8 needsInit : 1;
            /*?0x00 */ u8 finished : 1;
            /* 0x00 */ u8 unused : 1;
            /* 0x00 */ u8 stereoStrongRight : 1;
            /* 0x00 */ u8 stereoStrongLeft : 1;
            /* 0x00 */ u8 stereoHeadsetEffects : 1;
            /*?0x00 */ u8 usesHeadsetPanEffects : 1;
        } s;
        /* 0x00 */ u8 asByte; // likely does not exist
    } bitField0;
    union {
        struct {
            /* 0x01 */ u8 reverbIndex : 3;
            /* 0x01 */ u8 bookOffset : 2;
            /* 0x01 */ u8 isSyntheticWave : 1;
            /* 0x01 */ u8 hasTwoAdpcmParts : 1;
            /* 0x01 */ u8 usesHeadsetPanEffects2 : 1;
        } s;
        /* 0x01 */ u8 asByte; // likely does not exist
    } bitField1;
    /* 0x02 */ u8 unk_2;
    /* 0x03 */ u8 headsetPanRight;
    /* 0x04 */ u8 headsetPanLeft;
    /* 0x05 */ u8 reverbVol;
    /* 0x06 */ u8 unk_06;
    /* 0x07 */ u8 unk_07;
    /* 0x08 */ u16 targetVolLeft;
    /* 0x0A */ u16 targetVolRight;
    /* 0x0C */ u16 resamplingRateFixedPoint;
    /* 0x0E */ u16 unk_0E;
    /* 0x10 */ union {
                 AudioBankSound* audioBankSound;
                 s16* samples; // used for synthetic waves
             } sound;
    /* 0x14 */ s16* filter;
    /* 0x18 */ char pad_18[0x8];
} NoteSubEu; // size = 0x20

typedef struct Note {
    /* 0x00 */ AudioListItem listItem;
    /* 0x10 */ NoteSynthesisState synthesisState;
    /* 0x30 */ NotePlaybackState playbackState;
    /* 0x90 */ Portamento portamento;
    /* 0x9C */ VibratoState vibratoState;
    /* 0xB8 */ char unk_B8[0x4];
    /* 0xBC */ u32 unk_BC;
    /* 0xC0 */ NoteSubEu noteSubEu;
} Note; // size = 0xE0

typedef struct {
    /* 0x00 */ u8 downsampleRate;
    /* 0x02 */ u16 windowSize;
    /* 0x04 */ u16 unk_4;
    /* 0x06 */ u16 unk_6;
    /* 0x08 */ u16 unk_8;
    /* 0x0A */ u16 unk_A;
    /* 0x0C */ u16 leakRtl;
    /* 0x0E */ u16 leakLtr;
    /* 0x10 */ s8 unk_10;
    /* 0x12 */ u16 unk_12;
    /* 0x14 */ s16 unk_14;
    /* 0x16 */ s16 unk_16;
} ReverbSettings; // size = 0x18

typedef struct {
    /* 0x00 */ u32 frequency;
    /* 0x04 */ u8 unk_04;
    /* 0x05 */ u8 maxSimultaneousNotes;
    /* 0x06 */ u8 numSequencePlayers;
    /* 0x07 */ u8 unk_07[0x2];
    /* 0x09 */ u8 numReverbs;
    /* 0x0A */ u8 unk_0A[0x2];
    /* 0x0C */ ReverbSettings* reverbSettings;
    /* 0x10 */ u16 unk_10;
    /* 0x12 */ u16 unk_12;
    /* 0x14 */ u16 unk_14;
    /* 0x18 */ u32 persistentSeqMem;
    /* 0x1C */ u32 persistentBankMem;
    /* 0x20 */ u32 persistentUnusedMem;
    /* 0x24 */ u32 temporarySeqMem;
    /* 0x28 */ u32 temporaryBankMem;
    /* 0x2C */ u32 temporaryUnusedMem;
    /* 0x30 */ s32 unk_30;
    /* 0x34 */ s32 unk_34;
} AudioSpec; // size = 0x38

typedef struct {
    /* 0x00 */ s16 specUnk4;
    /* 0x02 */ u16 frequency;
    /* 0x04 */ u16 aiFrequency;
    /* 0x06 */ s16 samplesPerFrameTarget;
    /* 0x08 */ s16 maxAiBufferLength;
    /* 0x0A */ s16 minAiBufferLength;
    /* 0x0C */ s16 updatesPerFrame;
    /* 0x0E */ s16 samplesPerUpdate;
    /* 0x10 */ s16 samplesPerUpdateMax;
    /* 0x12 */ s16 samplesPerUpdateMin;
    /* 0x14 */ s16 numSequencePlayers;
    /* 0x18 */ f32 resampleRate;
    /* 0x1C */ f32 updatesPerFrameInv;
    /* 0x20 */ f32 unkUpdatesPerFrameScaled;
    /* 0x24 */ f32 unk_24;
} AudioBufferParameters;

typedef struct {
    /* 0x0 */ u8* start;
    /* 0x4 */ u8* cur;
    /* 0x8 */ s32 size;
    /* 0xC */ s32 unused; // set to 0, never read
} SoundAllocPool; // size = 0x10

typedef struct {
    /* 0x0 */ u8* ptr;
    /* 0x4 */ u32 size;
    /* 0x8 */ s16 poolIndex;
    /* 0xA */ s16 id; // seqId or bankId
} SeqOrBankEntry; // size = 0xC

typedef struct {
    /* 0x00 */ s8 unk_00;
    /* 0x01 */ s8 unk_01;
    /* 0x02 */ s8 unk_02;
    /* 0x03 */ char unk_03[0x5];
    /* 0x08 */ u8* unk_08;
    /* 0x0C */ void* unk_0C;
    /* 0x10 */ u32 size;
} UnkHeapEntry; // size = 0x14

typedef struct {
    /* 0x000 */ SoundAllocPool pool;
    /* 0x010 */ UnkHeapEntry entries[32];
    /* 0x290 */ s32 size;
} UnkPool; // size = 0x294

typedef struct
{
    /* 0x00*/ u32 numEntries;
    /* 0x04*/ SoundAllocPool pool;
    /* 0x14*/ SeqOrBankEntry entries[16];
} PersistentPool; // size = 0xD4

typedef struct
{
    /* 0x00*/ u32 nextSide;
    /* 0x04*/ SoundAllocPool pool;
    /* 0x14*/ SeqOrBankEntry entries[2];
} TemporaryPool; // size = 0x3C

typedef struct
{
    /* 0x000*/ PersistentPool persistent;
    /* 0x0D4*/ TemporaryPool temporary;
    /* 0x100*/ u8 unk_100[0x10];
} SoundMultiPool; // size = 0x110

typedef struct {
    u32 wantPersistent;
    u32 wantTemporary;
} AudioPoolSplit2; // size = 0x8

typedef struct {
    u32 wantSeq;
    u32 wantBank;
    u32 wantUnused;
} AudioPoolSplit3; // size = 0xC

typedef struct {
    u32 wantSeq;
    u32 wantBank;
    u32 wantUnused;
    u32 wantCustom;
} AudioPoolSplit4; // size = 0x10

typedef struct {
    u8* unk_0;
    u8* unk_4;
    u32 unk_8;
    s8 unk_C;
    s8 unk_D;
    s16 unk_E;
} Struct_800E0E0C_2;

typedef struct {
    char unk_00[0x2];
    s16 unk_02;
    char unk_04[0x8];
    Struct_800E0E0C_2 unk_C[1]; // unknown size
} ManyStruct_800E0E0C_2;

typedef struct {
    /* 0x00 */ u32 endAndMediumKey;
    /* 0x04 */ AudioBankSample* sample;
    /* 0x08 */ u8* ramAddr;
    /* 0x0C */ u32 encodedInfo;
    /* 0x10 */ s32 isFree;
} AudioStruct0D68; // size = 0x14

typedef struct {
    union{
        u32 opArgs;
        struct {
            u8 op;
            u8 arg0;
            u8 arg1;
            u8 arg2;
        };
    };
    union {
        void* data;
        f32 asFloat;
        s32 asInt;
        u16 asUShort;
        s8 asSbyte;
        u8 asUbyte;
        u32 asUInt;
    };
} AudioCmd;

typedef struct {
    union{
        struct {
            s16 unk_00;
            u16 unk_02;
        };
        u32 unk_00w;
    };
    u32 unk_04;
    s8 unk_08;
    char unk_09[0x7];
} unk_dma_s;

#define MK_ASYNC_MSG(b0,b1,b2,b3)(((b0) << 0x18) | ((b1) << 0x10) | ((b2) << 0x08) | ((b3) << 0x00))
#define ASYNC_TBLTYPE(v)((u8)(v >> 0x10))
#define ASYNC_B2(v)((u8)(v >> 0x08))
#define ASYNC_B3(v)((u8)(v >> 0x00))
#define AYSNC_B0(v)(((u8)(v >> 0x18))

typedef struct {
    /* 0x00 */ s8 status;
    /* 0x01 */ s8 unk_01;
    /* 0x02 */ s8 unk_02; // type?
    /* 0x03 */ char unk_03[0x1];
    /* 0x04 */ u32 unk_04;
    /* 0x08 */ u32 devAddr;
    /* 0x0C */ u8* ramAddr;
    /* 0x10 */ u32 bytesRemaining;
    /* 0x14 */ u32 chunkSize;
    /* 0x18 */ s32 unk_18;
    /* 0x1C */ u32 retMsg;
    /* 0x20 */ OSMesgQueue* retQueue;
    /* 0x24 */ OSMesgQueue msgQueue;
    /* 0x3C */ OSMesg msg[1];
    /* 0x40 */ OSIoMesg ioMesg;
} AsyncLoadReq; // size = 0x58

typedef struct {
    /* 0x0000 */ u8 unk_00;
    /* 0x0001 */ u8 unk_01;
    /* 0x0002 */ u16 unk_02;
    /* 0x0004 */ s32 unk_04;
    /* 0x0008 */ s32 devAddr;
    /* 0x000C */ u8* ramAddr;
    /* 0x0010 */ u8* unk_10;
    /* 0x0014 */ s32 status;
    /* 0x0018 */ s32 size;
    /* 0x001C */ s8* isDone;
    /* 0x0020 */ AudioBankSample sample;
    /* 0x0030 */ OSMesgQueue msgqueue;
    /* 0x0048 */ OSMesg msg[1];
    /* 0x004C */ OSIoMesg ioMesg;
} AudioSyncLoad; // size = 0x64

typedef struct {
    u16 offsets[18];
    char data[1];
} unk_283C;

typedef struct {
    /* 0x0000 */ s16 entryCnt;
    /* 0x0002 */ s16 unk_02;
    /* 0x0004 */ u32 romAddr;
    /* 0x0008 */ char pad[0x8];
} AudioTableHeader; // size = 0x10

typedef struct {
    /* 0x0000 */ u32 romAddr;
    /* 0x0004 */ u32 size;
    /* 0x0008 */ s8 unk_08;
    /* 0x0009 */ s8 type;
    /* 0x000A */ char pad[6];
} SequenceTableEntry; // size = 0x10

typedef struct {
    /* 0x0000 */ u32 romAddr;
    /* 0x0004 */ u32 size;
    /* 0x0008 */ u8 unk_08;
    /* 0x0009 */ u8 unk_09;
    /* 0x000A */ s16 unk_0A;
    /* 0x000C */ s16 unk_0C;
    /* 0x000E */ s16 unk_0E;
} AudioBankTableEntry; // size = 0x10

typedef struct {
    /* 0x0000 */ u32 romAddr;
    /* 0x0004 */ u32 size;
    /* 0x0008 */ s8 unk_08;
    /* 0x0009 */ s8 unk_09;
    /* 0x000A */ char pad[6];
} AudioTableEntry; // size = 0x10

typedef struct {
    /* 0x0000 */ AudioTableHeader header;
    /* 0x0010 */ SequenceTableEntry entries[1];
} SequenceTable; // size >= 0x20

typedef struct {
    /* 0x0000 */ AudioTableHeader header;
    /* 0x0010 */ AudioBankTableEntry entries[1];
} AudioBankTable; // size >= 0x20

typedef struct {
    /* 0x0000 */ AudioTableHeader header;
    /* 0x0010 */ AudioTableEntry entries[1];
} AudioTable; // size >= 0x20

typedef struct {
    /* 0x0000 */ OSTask task;
    /* 0x0040 */ OSMesgQueue* taskQueue;
    /* 0x0044 */ void* unk_44; // probably a message that gets unused.
    /* 0x0048 */ char unk_48[0x8];
} AudioTask; // size = 0x50

typedef struct {
    /* 0x0000 */ u8* ramAddr;
    /* 0x0004 */ u32 devAddr;
    /* 0x0008 */ u16 unk_08;
    /* 0x000A */ u16 size;
    /* 0x000C */ u8 unk_0C;
    /* 0x000D */ u8 unk_0D;
    /* 0x000E */ u8 unk_0E;
    /* 0x000F */ u8 unk_0F;
} SampleDmaReq; // size = 0x10

typedef struct {
    s32 unk_00;
    s32 unk_04;
    s32 unk_08;
    s32 unk_0C;
    s32 unk_10;
    s32 unk_14;
} RelocInfo;

typedef enum {
    /* 0 */ SEQUENCE_TABLE,
    /* 1 */ BANK_TABLE,
    /* 2 */ AUDIO_TABLE
} AudioTableType;

typedef struct {
    Drum** drums;
    AudioBankSound* sfx;
    Instrument* instruments[1];
} unk_ldr;

typedef struct {
    /* 0x0000 */ char unk_0000;
    /* 0x0001 */ s8 numSynthesisReverbs;
    /* 0x0002 */ u16 unk_2;
    /* 0x0004 */ u16 unk_4;
    /* 0x0006 */ char unk_0006[0x0A];
    /* 0x0010 */ s16* curLoadedBook;
    /* 0x0014 */ NoteSubEu* noteSubsEu;
    /* 0x0018 */ SynthesisReverb synthesisReverbs[4];
    /* 0x0B38 */ char unk_0B38[0x30];
    /* 0x0B68 */ AudioBankSample* unk_B68[128];
    /* 0x0D68 */ AudioStruct0D68 unk_0D68[128];
    /* 0x1768 */ s32 unk_1768;
    /* 0x176C */ s32 unk_176C;
    /* 0x1770 */ AsyncLoadReq asyncReqs[0x10];
    /* 0x1CF0 */ OSMesgQueue asyncLoadQueue;
    /* 0x1D08 */ char unk_1D08[0x40];
    /* 0x1D48 */ AsyncLoadReq* curAsyncReq;
    /* 0x1D4C */ u32 syncLoadPos;
    /* 0x1D50 */ AudioSyncLoad syncLoads[2];
    /* 0x1E18 */ OSPiHandle* cartHandle;
    /* probably an unused PI handle for n64 disk drive */
    /* 0x1E1C */ OSPiHandle* unk_1E1C;
    /* 0x1E20 */ OSMesgQueue unk_1E20;
    /* 0x1E38 */ OSMesg unk_1E38[0x10];
    /* 0x1E78 */ OSMesgQueue unk_1E78;
    /* 0x1E90 */ OSMesg unk_1E90[0x10];
    /* 0x1ED0 */ OSMesgQueue unk_1ED0;
    /* 0x1EE8 */ OSMesg unk_1EE8[0x40];
    /* 0x1FE8 */ OSIoMesg sampIoReq[1]; // unknown size
    /* 0x2000 */ char unk_2000[0x5E8];
    /* 0x25E8 */ OSMesgQueue unk_25E8;
    /* 0x2600 */ OSMesg unk_2600;
    /* 0x2604 */ OSIoMesg unk_2604;
    /* 0x261C */ SampleDmaReq* sampleDmaReqs;
    /* 0x2620 */ u32 sampleDmaReqCnt;
    /* 0x2624 */ u32 unk_2624; // sample start idx?
    /* 0x2628 */ s32 unk_2628;
    /* 0x262C */ u8 unk_262C[0x100];
    /* 0x272C */ u8 unk_272C[0x100];
    /* 0x282C */ u8 unk_282C;
    /* 0x282D */ u8 unk_282D;
    /* 0x282E */ u8 unk_282E;
    /* 0x282F */ u8 unk_282F;
    /* 0x2830 */ SequenceTable* sequenceTable;
    /* 0x2834 */ AudioBankTable* audioBankTable;
    /* 0x2838 */ AudioTable* audioTable;
    union {
    /* 0x283C */ u16* unk_283C;
    /* 0x283C */ char* unk_283Cb;
    };
    /* 0x2840 */ u16 seqTabEntCnt; // channels used?
    /* 0x2844 */ CtlEntry* ctlEntries;
    /* 0x2848 */ AudioBufferParameters audioBufferParameters;
    /* 0x2870 */ f32 unk_2870;
    /* 0x2874 */ s32 unk_2874;
    /* 0x2874 */ s32 unk_2878;
    /* 0x287C */ char unk_287C[0x10];
    /* 0x288C */ s32 unk_288C;
    /* 0x2890 */ s32 maxAudioCmds;
    /* 0x2894 */ s32 maxSimultaneousNotes; // (bad name)
    /* 0x2898 */ s16 tempoInternalToExternal;
    /* 0x289A */ s8 soundMode;
    /* 0x289C */ s32 totalTaskCnt;
    /* 0x28A0 */ s32 sampleIoReqIdx;
    /* 0x28A4 */ s32 rspTaskIdx;
    /* 0x28A8 */ s32 curAIBufIdx;
    /* 0x28AC */ Acmd* abiCmdBufs[2];
    /* 0x28B4 */ Acmd* curAbiCmdBuf;
    /* 0x28B8 */ AudioTask* currTask;
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
    /* 0x2990 */ SoundAllocPool audioSessionPool;
    /* 0x29A0 */ SoundAllocPool unkPool;
    /* 0x29B0 */ SoundAllocPool audioInitPool;
    /* 0x29C0 */ SoundAllocPool notesAndBuffersPool;
    /* 0x29D0 */ char unk_29D0[0x20]; // probably two unused pools
    /* 0x29F0 */ SoundAllocPool seqAndBankPool;
    /* 0x2A00 */ SoundAllocPool persistentCommonPool;
    /* 0x2A10 */ SoundAllocPool temporaryCommonPool;
    /* 0x2A20 */ SoundMultiPool seqLoadedPool;
    /* 0x2B30 */ SoundMultiPool bankLoadedPool;
    /* 0x2C40 */ SoundMultiPool unusedLoadedPool; // rename after we figure out what this is
    /* 0x2D50 */ SoundAllocPool unk_2D50;
    /* 0x2D60 */ SeqOrBankEntry unk_2D60[32];
    /* 0x2EE0 */ UnkPool unk_2EE0;
    /* 0x3174 */ UnkPool unk_3174;
    /* 0x3408 */ AudioPoolSplit4 sessionPoolSplit;
    /* 0x3418 */ AudioPoolSplit2 seqAndBankPoolSplit;
    /* 0x3420 */ AudioPoolSplit3 persistentCommonPoolSplit;
    /* 0x342C */ AudioPoolSplit3 temporaryCommonPoolSplit;
    /* 0x3438 */ u8 audioTableLoadStatus[0x30];
    /* 0x3468 */ u8 bankLoadStatus[0x30];
    /* 0x3498 */ u8 seqLoadStatus[0x80];
    /* 0x3518 */ volatile u8 resetStatus;
    /* 0x3519 */ u8 audioResetSpecIdToLoad;
    /* 0x351C */ s32 audioResetFadeOutFramesLeft;
    /* 0x3520 */ f32* unk_3520;
    /* 0x3524 */ u8* audioHeap;
    /* 0x3528 */ u32 audioHeapSize;
    /* 0x352C */ Note* notes;
    /* 0x3530 */ SequencePlayer seqPlayers[4];
    /* 0x3AB0 */ SequenceChannelLayer sequenceLayers[64];
    /* 0x5AB0 */ SequenceChannel sequenceChannelNone;
    /* 0x5B84 */ s32 noteSubEuOffset;
    /* 0x5B88 */ AudioListItem layerFreeList;
    /* 0x5B98 */ NotePool noteFreeLists;
    /* 0x5BD8 */ u8 cmdWrPos;
    /* 0x5BD9 */ u8 cmdRdPos;
    /* 0x5BDA */ u8 cmdQueueFinished;
    /* 0x5BDB */ char unk_5BDB[0x1];
    /* 0x5BDC */ u16 unk_5BDC[4];
    /* 0x5BE4 */ OSMesgQueue* audioResetQueueP;
    /* 0x5BE8 */ OSMesgQueue* taskStartQueueP;
    /* 0x5BEC */ OSMesgQueue* cmdProcQueueP;
    /* 0x5BF0 */ OSMesgQueue taskStartQueue;
    /* 0x5C08 */ OSMesgQueue cmdProcQueue;
    /* 0x5C20 */ OSMesgQueue audioResetQueue;
    /* 0x5C38 */ OSMesg taskStartMsgs[1];
    /* 0x5C3C */ OSMesg audioResetMesgs[1];
    /* 0x5C40 */ OSMesg cmdProcMsgs[4];
    /* 0x5C50 */ AudioCmd cmdBuf[0x100];
} AudioContext; // size = 0x6450

typedef struct {
    /* 0x00 */ u8 reverbVol;
    /* 0x01 */ u8 unk_1;
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
    /* 0x0000 */ u32 heap;
    /* 0x0004 */ u32 mainPool;
    /* 0x0008 */ u32 initPool;
} AudioContextInitSizes; // size = 0xC

typedef struct {
    /* 0x0000 */ f32 unk_00;
    /* 0x0004 */ f32 unk_04;
    /* 0x0008 */ f32 unk_08;
    /* 0x000C */ u16 unk_0C;
    /* 0x0010 */ f32 unk_10;
    /* 0x0014 */ f32 unk_14;
    /* 0x0018 */ f32 unk_18;
    /* 0x001C */ u16 unk_1C;
} unk_50_s; // size = 0x20

typedef struct {
    /* 0x0000 */ f32 volCur;
    /* 0x0004 */ f32 volTarget;
    /* 0x0008 */ f32 unk_08;
    /* 0x000C */ u16 unk_0C;
    /* 0x000E */ u8 volScales[0x4];
    /* 0x0012 */ u8 volFadeTimer;
    /* 0x0013 */ u8 fadeVolUpdate;
    /* 0x0014 */ u32 unk_14;
    /* 0x0018 */ u16 unk_18;
    /* 0x001C */ f32 unk_1C;
    /* 0x0020 */ f32 unk_20;
    /* 0x0024 */ f32 unk_24;
    /* 0x0028 */ u16 unk_28;
    /* 0x002A */ char unk_2A[0x2];
    /* 0x002C */ u32 unk_2C[8];
    /* 0x004C */ u8 unk_4C;
    /* 0x004D */ u8 unk_4D;
    /* 0x004E */ u8 unk_4E;
    /* 0x004F */ char unk_4F;
    /* 0x0050 */ unk_50_s unk_50[0x10];
    /* 0x0250 */ u16 unk_250;
    /* 0x0252 */ u16 unk_252;
    /* 0x0254 */ u16 unk_254;
    /* 0x0256 */ u16 unk_256;
    /* 0x0258 */ u16 unk_258;
    /* 0x025A */ char unk_25A[0x2];
    /* 0x025C */ u32 unk_25C;
    /* 0x0260 */ u8 unk_260;
    /* 0x0261 */ char unk_261[0x3];
} unk_D_8016E750; // size = 0x264

typedef enum {
    /* 0 */ BANK_PLAYER,
    /* 1 */ BANK_ITEM,
    /* 2 */ BANK_ENV,
    /* 3 */ BANK_ENEMY,
    /* 4 */ BANK_SYSTEM,
    /* 5 */ BANK_OCARINA,
    /* 6 */ BANK_VOICE
} SoundBankTypes;

typedef struct {
    /* 0x00 */ f32*     posX;
    /* 0x04 */ f32*     posY;
    /* 0x08 */ f32*     posZ;
    /* 0x0C */ u8       unk_C;
    /* 0x10 */ f32*     freqScale;
    /* 0x14 */ f32*     unk_14;
    /* 0x18 */ s8*      reverbAdd;
    /* 0x1C */ f32      dist;
    /* 0x20 */ u32      priority; // lower is more prioritized
    /* 0x24 */ u8       sfxImportance;
    /* 0x26 */ u16      sfxParams;
    /* 0x28 */ u16      sfxId;
    /* 0x2A */ u8       unk_2A;
    /* 0x2B */ u8       unk_2B;
    /* 0x2C */ u8       prev;
    /* 0x2D */ u8       next;
    /* 0x2E */ u8       unk_2E;
    /* 0x2F */ u8       unk_2F;
} SoundBankEntry; // size = 0x30

/*
 * SFX IDs
 *
 * index    0000000111111111    observed in audio code
 * & 200    0000001000000000    single bit
 * & 400    0000010000000000    single bit
 * & 800    0000100000000000    single bit, what we currently call SFX_FLAG
 * & 600    0000011000000000    2 bits
 * & A00    0000101000000000    2 bits
 * & C00    0000110000000000    2 bits, observed in audio code
 * & E00    0000111000000000    all 3 bits
 * bank     1111000000000000    observed in audio code
 */

#define SFX_BANK_SHIFT(sfxId)   (((sfxId) >> 12) & 0xFF)

#define SFX_BANK_MASK(sfxId)    ((sfxId) & 0xF000)

#define SFX_INDEX(sfxId)    ((sfxId) & 0x01FF)
#define SFX_BANK(sfxId)     SFX_BANK_SHIFT(SFX_BANK_MASK(sfxId))

typedef struct {
    u32 priority; // lower is more prioritized
    u8 unk_4;
} Struct_800F7CEC;

typedef struct {
    u8 importance;
    u16 params;
} SoundParams;

typedef struct {
    /* 0x0000 */ u8 noteIdx;
    /* 0x0001 */ u8 unk_01;
    /* 0x0002 */ u16 unk_02;
    /* 0x0004 */ u8 volume;
    /* 0x0005 */ u8 vibrato;
    /* 0x0006 */ s8 tone;
    /* 0x0007 */ u8 semitone;
} OcarinaNote;  // size = 0x8

typedef struct {
    u8 len;
    u8 notesIdx[8];
} OcarinaSongInfo;

typedef struct {
    u8 noteIdx;
    u8 state;
    u8 pos;
} OcarinaStaff;

#endif
