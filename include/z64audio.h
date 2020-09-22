#ifndef _Z64_AUDIO_H_
#define _Z64_AUDIO_H_

#include <z64.h>

/* MACROS */

#define NO_LAYER ((SequenceChannelLayer*)(-1))
#define NO_CHANNEL ((SequenceChannel*)(-1))

#define TATUMS_PER_BEAT 48

#define IS_SEQUENCE_CHANNEL_VALID(ptr) ((u32)(ptr) != (u32)&gAudioContext.gSequenceChannelNone)

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
#define ADSR_HANG (-1)
#define ADSR_GOTO (-2)
#define ADSR_RESTART (-3)


/* STRUCTS */

// Structs in this repository have primarily been imported from the SM64 Decompilation.
// Many struct members are wrong; the symbol '?' next to an offset means the member is a guess.

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
    /*?0x00 */ u32 start;
    /* 0x04 */ u32 end;
    /*?0x08 */ u32 count;
    /*?0x0C */ char unk_0C[0x4];
    /*?0x10 */ s16 state[16]; // only exists if count != 0. 8-byte aligned
} AdpcmLoop; // size = 0x30 (or 0x10)

typedef struct {
    /*?0x00 */ s32 order;
    /*?0x04 */ s32 npredictors;
    /*?0x08 */ s16 book[1]; // size 8 * order * npredictors. 8-byte aligned
} AdpcmBook;

typedef struct {
    /* 0x00 */ u8 bits4 : 4;
    /* 0x00 */ u8 bits2 : 2;
    /* 0x00 */ u8 unk_bits2 : 2;
    /* 0x01 */ u32 bits24 : 24;
    /* 0x04 */ u8* sampleAddr;
    /* 0x08 */ AdpcmLoop* loop;
    /*?0x0C */ AdpcmBook* book;
} AudioBankSample; // size = 0x10

typedef struct {
    /* 0x00 */ AudioBankSample* sample;
    /* 0x04 */ f32 tuning; // frequency scale factor
} AudioBankSound; // size = 0x8

typedef struct {
    /*?0x00 */ s16 numSamplesAfterDownsampling;
    /*?0x02 */ s16 chunkLen; // never read
    /* 0x04 */ s16* toDownsampleLeft;
    /* 0x08 */ s16* toDownsampleRight; // data pointed to by left and right are adjacent in memory
    /*?0x0C */ s32 startPos; // start pos in ring buffer
    /*?0x10 */ s16 lengthA; // first length in ring buffer (from startPos, at most until end)
    /*?0x12 */ s16 lengthB; // second length in ring buffer (from pos 0)
    /* 0x14 */ u8 pad[8];
} ReverbRingBufferItem; // size = 0x1C

typedef struct {
    /* 0x000 */ u8 unk_00;
    /* 0x001 */ u8 useReverb;
    /* 0x002 */ u8 unk_02;
    /* 0x003 */ u8 unk_03;
    /* 0x004 */ u8 downsampleRate;
    /* 0x005 */ u8 unk_05;
    /* 0x006 */ u16 windowSize;
    /* 0x008 */ u16 unk_08;
    /* 0x00A */ u16 unk_0A;
    /* 0x00C */ u16 unk_0C;
    /* 0x00E */ u16 unk_0E;
    /* 0x010 */ u16 unk_10;
    /* 0x012 */ u16 unk_12;
    /* 0x014 */ u16 unk_14;
    /* 0x016 */ u16 unk_16;
    /* 0x018 */ u8 unk_18;
    /* 0x01C */ s32 unk_1C;
    /* 0x020 */ s32 unk_20;
    /* 0x024 */ s32 unk_24;
    /* 0x028 */ s16* unk_28;
    /* 0x02C */ s16* unk_2C;
    /* 0x030 */ void* unk_30;
    /* 0x034 */ void* unk_34;
    /* 0x038 */ void* unk_38;
    /* 0x03C */ void* unk_3C;
    /* 0x040 */ ReverbRingBufferItem items[2][5];
    /*?0x158 */ ReverbRingBufferItem items2[2][5];
    /* 0x270 */ s16* unk_270;
    /* 0x274 */ s16* unk_274;
    /* 0x278 */ void* unk_278;
    /* 0x27C */ void* unk_27C;
    /* 0x280 */ AudioBankSound sound;
    /* 0x288 */ AudioBankSample sample;
    /* 0x298 */ AdpcmLoop loop;
} SynthesisReverb; // size = 0x2C8

typedef struct {
    /*?0x00 */ u8 loaded;
    /* 0x01 */ u8 normalRangeLo;
    /* 0x02 */ u8 normalRangeHi;
    /* 0x03 */ u8 releaseRate;
    /* 0x04 */ AdsrEnvelope* envelope;
    /* 0x08 */ AudioBankSound lowNotesSound;
    /* 0x10 */ AudioBankSound normalNotesSound;
    /* 0x18 */ AudioBankSound highNotesSound;
} Instrument; // size >= 0x20

typedef struct {
    /* 0x00 */ u8 releaseRate;
    /* 0x01 */ u8 pan;
    /*?0x02 */ u8 loaded;
    /* 0x04 */ AudioBankSound sound;
    /* 0x14 */ AdsrEnvelope *envelope;
} Drum; // size >= 0x14

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

// Also known as a Group, according to sm64 debug strings.
typedef struct {
    /* 0x000 */ u8 enabled : 1;
    /*?0x000 */ u8 finished : 1;
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
    /*?0x006 */ u8 loadingBankId;
    /*?0x007 */ s8 seqVariationEu[1];
    /* 0x008 */ u16 tempo; // tatums per minute
    /* 0x00A */ u16 tempoAcc;
    /* 0x00C */ u16 unk_0C;
    /* 0x00E */ s16 transposition;
    /* 0x010 */ u16 delay;
    /* 0x012 */ u16 fadeTimer;
    /* 0x014 */ u16 fadeTimerUnkEu;
    /* 0x016 */ char pad_16[0x2];
    /* 0x018 */ u8* seqData;
    /* 0x01C */ f32 fadeVolume;
    /* 0x020 */ f32 fadeVelocity;
    /* 0x024 */ f32 volume;
    /* 0x028 */ f32 muteVolumeScale;
    /* 0x02C */ f32 fadeVolumeScale;
    /* 0x030 */ f32 appliedFadeVolume;
    /* 0x034 */ f32 unk_34;
    /* 0x038 */ struct SequenceChannel* channels[16];
    /*?0x078 */ M64ScriptState scriptState;
    /* 0x094 */ u8* shortNoteVelocityTable;
    /* 0x098 */ u8* shortNoteDurationTable;
    /* 0x09C */ NotePool notePool;
    /* 0x0DC */ s32 unk_DC;
    /* 0x0D0 */ u32 unk_E0;
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
    /* 0x158 */ s8 unk_158[8]; // seqVariationEu? soundScriptIO?
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
    /*      */ char pad_18[4];
    /* 0x1C */ AdsrEnvelope *envelope;
} AdsrState;

typedef struct {
    /* 0x00 */ u8 bit0 : 1;
    /* 0x00 */ u8 bit1 : 1;
    /* 0x00 */ u8 bit2 : 2;
    /* 0x00 */ u8 strongRight : 1;
    /* 0x00 */ u8 strongLeft : 1;
    /* 0x00 */ u8 stereoHeadsetEffects : 1;
    /* 0x00 */ u8 usesHeadsetPanEffects : 1;
} ReverbBitsData;

typedef union {
    /* 0x00 */ ReverbBitsData s;
    /* 0x00 */ u8 asByte;
} ReverbBits;

typedef struct {
    /* 0x00 */ u8 reverb;
    /* 0x01 */ u8 unk_1;
    /* 0x02 */ u8 pan;
    /* 0x03 */ ReverbBits reverbBits;
    /* 0x04 */ u8 unk_4;
    /* 0x06 */ u16 unk_6;
    /* 0x08 */ f32 freqScale;
    /* 0x0C */ f32 velocity;
    /* 0x10 */ s16* unk_10;
    /* 0x14 */ s16 unk_14[8];
} NoteAttributes; // size = 0x24

// Also known as a SubTrack, according to sm64 debug strings.
// Confusingly, a SubTrack is a container of Tracks.
typedef struct SequenceChannel {
    /* 0x00 */ u8 enabled : 1;
    /* 0x00 */ u8 finished : 1;
    /* 0x00 */ u8 stopScript : 1;
    /* 0x00 */ u8 stopSomething2 : 1; // sets SequenceChannelLayer.stopSomething
    /* 0x00 */ u8 hasInstrument : 1;
    /* 0x00 */ u8 stereoHeadsetEffects : 1;
    /* 0x00 */ u8 largeNotes : 1; // notes specify duration and velocity
    /* 0x00 */ u8 unused : 1; // still unused?
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
    /* 0x22 */ u16 pad_22;
    /* 0x24 */ s16 instOrWave; // either 0 (none), instrument index + 1, or
                             // 0x80..0x83 for sawtooth/triangle/sine/square waves.
    /* 0x26 */ s16 transposition;
    /* 0x28 */ f32 volumeScale;
    /* 0x2C */ f32 volume;
    /* 0x30 */ s32 pan;
    /* 0x34 */ f32 appliedVolume;
    /* 0x38 */ f32 freqScale;
    /*?0x3C */ u8 (*dynTable)[][2];
    /* 0x40 */ struct Note* noteUnused; // still unused?
    /*?0x44 */ struct SequenceChannelLayer* layerUnused; // still unused?
    /* 0x48 */ Instrument* instrument;
    /* 0x4C */ SequencePlayer* seqPlayer;
    /* 0x50 */ struct SequenceChannelLayer* layers[4];
    /* 0x60 */ M64ScriptState scriptState;
    /* 0x7C */ AdsrSettings adsr;
    /* 0x84 */ NotePool notePool;
    /* 0xC4 */ s8 soundScriptIO[8]; // bridge between sound script and audio lib
    /* 0xCC */ s16* unk_CC;
    /* 0xD0 */ ReverbBits reverbBits;
} SequenceChannel; // size = 0xD4

// Also known as a Track, according to sm64 debug strings.
typedef struct SequenceChannelLayer {
    /* 0x00 */ u8 enabled : 1;
    /* 0x00 */ u8 finished : 1;
    /* 0x00 */ u8 stopSomething : 1;
    /* 0x00 */ u8 continuousNotes : 1; // keep the same note for consecutive notes with the same sound
    /* 0x00 */ u8 bit3 : 1; // "loaded"?
    /* 0x00 */ u8 ignoreDrumPan : 1;
    /* 0x00 */ u8 bit1 : 1; // "has initialized continuous notes"?
    /* 0x00 */ u8 notePropertiesNeedInit : 1;
    /* 0x01 */ ReverbBits reverbBits;
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
                                  // 0..0x3f; this makes 0x40..0x7f accessible as well)
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
    /*?00 */ s16 adpcmdecState[0x10];
    /*?00 */ s16 finalResampleState[0x10];
    /*?00 */ s16 mixEnvelopeState[0x28];
    /*?00 */ s16 panResampleState[0x10];
    /*?00 */ s16 panSamplesBuffer[0x20];
    /*?00 */ s16 dummyResampleState[0x10];
} NoteSynthesisBuffers;

typedef struct {
    /*?0x00 */ u8 restart;
    /*?0x01 */ u8 sampleDmaIndex;
    /*?0x02 */ u8 prevHeadsetPanRight;
    /*?0x03 */ u8 prevHeadsetPanLeft;
    /*?0x04 */ u16 samplePosFrac;
    /*?0x08 */ s32 samplePosInt;
    /* 0x0C */ NoteSynthesisBuffers* synthesisBuffers;
    /*?0x10 */ s16 curVolLeft;
    /*?0x12 */ s16 curVolRight;
} NoteSynthesisState;

typedef struct {
    /* 0x00 */ struct SequenceChannel* seqChannel;
    /* 0x04 */ u32 time;
    /* 0x08 */ s16* curve;
    /* 0x0C */ f32 extent;
    /* 0x10 */ f32 rate;
    /* 0x14 */ u8 active;
    /*!0x16 */ u16 rateChangeTimer;
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
    /*?0x10 */ SequenceChannelLayer* prevParentLayer;
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
            /*?0x00 */ volatile u8 enabled : 1;
            /* 0x00 */ u8 needsInit : 1;
            /*?0x00 */ u8 finished : 1;
            /*?0x00 */ u8 envMixerNeedsInit : 1;
            /* 0x00 */ u8 stereoStrongRight : 1;
            /* 0x00 */ u8 stereoStrongLeft : 1;
            /* 0x00 */ u8 stereoHeadsetEffects : 1;
            /* 0x00 */ u8 usesHeadsetPanEffects : 1;
        } s;
        /*?0x00 */ u8 asByte;
    } bitField0;
    union {
        struct {
            /*?0x01 */ u8 reverbIndex : 3;
            /* 0x01 */ u8 bookOffset : 2;
            /*?0x01 */ u8 bit2 : 1;
            /*?0x01 */ u8 isSyntheticWave : 1;
            /*?0x01 */ u8 hasTwoAdpcmParts : 1;
        } s;
        /*?0x01 */ u8 asByte;
    } bitField1;
    /* 0x02 */ u8 unk_2;
    /*?0x03 */ u8 headsetPanRight;
    /*?0x04 */ u8 headsetPanLeft;
    /*?0x05 */ u8 reverbVol;
    /* 0x06 */ u8 unk_06;
    /* 0x07 */ u8 unk_07;
    /* 0x08 */ u16 targetVolLeft;
    /* 0x0A */ u16 targetVolRight;
    /*?0x0C */ u16 resamplingRateFixedPoint; // stored as signed but loaded as u16
    /* 0x0E */ s16 unk_10;
    /* 0x10 */ union {
                 s16* samples;
                 AudioBankSound* audioBankSound;
             } sound; // not sure if actually a union
    /* 0x14 */ s16* unk_14;
    /* 0x18 */ char pad_18[0x8];
} NoteSubEu; // size = 0x20

typedef struct Note {
    /* 0x00 */ AudioListItem listItem;
    /*?0x10 */ NoteSynthesisState synthesisState;
    /* 0x24 */ char pad_24[0xC];
    /* 0x30 */ NotePlaybackState playbackState;
    /* 0x90 */ Portamento portamento;
    /* 0x9C */ VibratoState vibratoState;
    /* 0xB8 */ char pad_B8[0x4];
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
    /* 0x0C */ u16 unk_C;
    /* 0x0E */ u16 unk_E;
    /* 0x10 */ s8 unk_10;
    /* 0x12 */ u16 unk_12;
    /* 0x14 */ s16 unk_14;
    /* 0x16 */ s16 unk_16;
} ReverbSettings; // size = 0x18

typedef struct {
    /*?0x00 */ u32 frequency;
    /*?0x04 */ u8 unk_04;
    /* 0x05 */ u8 maxSimultaneousNotes;
    /* 0x06 */ u8 numSequencePlayers;
    /* 0x07 */ u8 pad_07[2];
    /* 0x09 */ u8 numReverbs;
    /* 0x0A */ u8 pad_0A[2];
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
} AudioSessionSettings; // size = 0x38

typedef struct {
    /* 0x00 */ s16 presetUnk4;
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
    /* 0x0 */ u8 *ptr;
    /* 0x4 */ u32 size;
    /* 0x8 */ s16 poolIndex;
    /* 0xA */ s16 id; // seqId or bankId
} SeqOrBankEntry; // size = 0xC

typedef struct {
    /* 0x00 */ s8 unk_00;
    /* 0x01 */ s8 unk_01;
    /* 0x02 */ s8 unk_02;
    /* 0x03 */ char pad[0x5];
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
    /* 0x100*/ u8 pad[0x10];
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
} Struct_800E0E0C_2;

typedef struct {
    char pad[0xC];
    Struct_800E0E0C_2 unk_C[1]; // unknown size
} ManyStruct_800E0E0C_2;

typedef struct {
    /* 0x00 */ s32 unk_00;
    /* 0x04 */ AudioBankSample* sample;
    /* 0x08 */ u8* unk_08;
    /* 0x0C */ s32 pad;
    /* 0x10 */ s32 unk_10;
} AudioStruct0D68; // size = 0x14

typedef struct {
    /* 0x0000 */ char unk_0000;
    /* 0x0001 */ s8 gNumSynthesisReverbs;
    /* 0x0002 */ u16 unk_2;
    /* 0x0004 */ u16 unk_4;
    /* 0x0006 */ char unk_0006[0x0e];
    /* 0x0014 */ NoteSubEu* gNoteSubsEu;
    /* 0x0018 */ SynthesisReverb gSynthesisReverbs[4];
    /* 0x0B38 */ char unk_0B38[0x230];
    /* 0x0D68 */ AudioStruct0D68 unk_0D68[128]; // guessing at size
    /* 0x1768 */ char unk_1768[4];
    /* 0x176C */ s32 unk_176C;
    /* 0x1770 */ char unk_1770[0xEB0];
    /* 0x2620 */ s32 gSampleDmaNumListItems;
    /* 0x2624 */ char unk_2624[0x210];
    /* 0x2834 */ s16* unk_2834;
    /* 0x2838 */ ManyStruct_800E0E0C_2* unk_2838;
    /* 0x283C */ char unk_283C[0x8];
    /* 0x2844 */ CtlEntry* gCtlEntries;
    /* 0x2848 */ AudioBufferParameters gAudioBufferParameters;
    /* 0x2870 */ f32 unk_2870;
    /* 0x2874 */ s32 unk_2874;
    /* 0x2874 */ s32 unk_2878;
    /* 0x287C */ char unk_287C[0x14];
    /* 0x2890 */ s32 gMaxAudioCmds;
    /* 0x2894 */ s32 gMaxSimultaneousNotes; // (bad name)
    /* 0x2898 */ s16 gTempoInternalToExternal;
    /* 0x289A */ s8 gSoundMode;
    /* 0x289B */ char unk_289B[0xD];
    /* 0x28A8 */ s32 unk_28A8;
    /* 0x28AC */ u64* gAudioCmdBuffers[2];
    /* 0x28B4 */ char unk_28B4[0xAC];
    /* 0x2960 */ f32 unk_2960;
    /* 0x2964 */ s32 gRefreshRate;
    /* 0x2968 */ s16* unk_2968[3];
    /* 0x2974 */ s16 unk_2974[3];
    /* 0x297C */ u32 gAudioRandom;
    /* 0x2980 */ s32 gAudioErrorFlags;
    /* 0x2984 */ char unk_2984[0xC];
    /* 0x2990 */ SoundAllocPool gAudioSessionPool;
    /* 0x29A0 */ SoundAllocPool gUnkPool;
    /* 0x29B0 */ SoundAllocPool gAudioInitPool;
    /* 0x29C0 */ SoundAllocPool gNotesAndBuffersPool;
    /* 0x29D0 */ char unk_29D0[0x20]; // probably two unused pools
    /* 0x29F0 */ SoundAllocPool gSeqAndBankPool;
    /* 0x2A00 */ SoundAllocPool gPersistentCommonPool;
    /* 0x2A10 */ SoundAllocPool gTemporaryCommonPool;
    /* 0x2A20 */ SoundMultiPool gSeqLoadedPool;
    /* 0x2B30 */ SoundMultiPool gBankLoadedPool;
    /* 0x2C40 */ SoundMultiPool gUnusedLoadedPool; // rename after we figure out what this is
    /* 0x2D50 */ SoundAllocPool unk_2D50;
    /* 0x2D60 */ SeqOrBankEntry unk_2D60[32];
    /* 0x2EE0 */ UnkPool unk_2EE0;
    /* 0x3174 */ UnkPool unk_3174;
    /* 0x3408 */ AudioPoolSplit4 sSessionPoolSplit;
    /* 0x3418 */ AudioPoolSplit2 sSeqAndBankPoolSplit;
    /* 0x3420 */ AudioPoolSplit3 sPersistentCommonPoolSplit;
    /* 0x342C */ AudioPoolSplit3 sTemporaryCommonPoolSplit;
    /* 0x3438 */ u8 gUnusedLoadStatus[0x30];
    /* 0x3468 */ u8 gBankLoadStatus[0x30];
    /* 0x3498 */ u8 gSeqLoadStatus[0x80];
    /* 0x3518 */ volatile u8 gAudioResetStatus;
    /* 0x3519 */ u8 gAudioResetPresetIdToLoad;
    /* 0x351C */ s32 gAudioResetFadeOutFramesLeft;
    /* 0x3520 */ f32* unk_3520;
    /* 0x3524 */ u8* gAudioHeap;
    /* 0x3528 */ u32 gAudioHeapSize;
    /* 0x352C */ Note* gNotes;
    /* 0x3530 */ SequencePlayer gSequencePlayers[4];
    /* 0x3AB0 */ SequenceChannelLayer gSequenceLayers[64];
    /* 0x5AB0 */ SequenceChannel gSequenceChannelNone;
    /* 0x5B84 */ s32 gNoteSubEuOffset;
    /* 0x5B88 */ AudioListItem gLayerFreeList;
} AudioContext; // size >= 0x5c50

typedef struct {
    /* 0x00 */ u8 reverb; // i.e. volume
    /* 0x01 */ u8 unk_1;
    /* 0x02 */ u8 pan;
    /* 0x03 */ ReverbBits reverbBits;
    /* 0x04 */ f32 frequency;
    /* 0x08 */ f32 velocity;
    /* 0x0C */ char unk_0C[0x4];
    /* 0x10 */ s16* unk_10;
    /* 0x14 */ u8 unk_14;
    /* 0x16 */ u16 unk_16;
} Reverb; // size >= 0x18


/* FUNCTIONS */

f32 func_800DDE20(f32 arg0);
void func_800DDE3C(void);
void Audio_ResetLoadStatus(void);
void Audio_DiscardBank(s32 bankId);
void Audio_DiscardSequence(s32 seqId);
void func_800DE238(void* mem, u32 size);
void* func_800DE258(SoundAllocPool* pool, u32 size);
void* func_800DE2B0(SoundAllocPool* pool, u32 size);
void* Audio_AllocDmaMemory(SoundAllocPool* pool, u32 size);
void* Audio_AllocDmaMemoryZeroed(SoundAllocPool *pool, u32 size);
void* Audio_AllocZeroed(SoundAllocPool* pool, u32 size);
void* Audio_Alloc(SoundAllocPool* pool, u32 size);
void Audio_SoundAllocPoolInit(SoundAllocPool* pool, void* memAddr, u32 size);
void Audio_PersistentPoolClear(PersistentPool* persistent);
void Audio_TemporaryPoolClear(TemporaryPool* temporary);
void func_800DE4B0(s32 poolIdx);
void Audio_InitMainPools(s32 sizeForAudioInitPool);
void Audio_SessionPoolsInit(AudioPoolSplit4* split);
void Audio_SeqAndBankPoolInit(AudioPoolSplit2* split);
void Audio_PersistentPoolsInit(AudioPoolSplit3* split);
void Audio_TemporaryPoolsInit(AudioPoolSplit3* split);
void* Audio_AllocBankOrSeq(s32 poolIdx, s32 size, s32 arg2, s32 id);
void* func_800DF074(s32 poolIdx, s32 arg1, s32 id);
void* func_800DF0CC(s32 poolIdx, s32 arg1, s32 id);
void func_800DF5DC(s16* arg0, s32 arg1);
void func_800DF630(s16* arg0, s32 arg1);
void func_800DF688(s16* arg0, s32 arg1, s32 arg2);
void func_800DF7C4(void);
void func_800DF888(void);
s32 Audio_ResetStep(void);
void func_800DFBF8(void);
void* func_800E04E8(s32 poolIdx, s32 id);
// ? func_800E0540(?);
void* func_800E05C4(u32 size, s32 arg1, void* arg2, s8 arg3, s32 arg4);
void func_800E0634(u32 arg0, u32 arg1);
UnkHeapEntry* func_800E06CC(u32 size);
void func_800E0964(UnkHeapEntry* entry, s32 bankId);
void func_800E0AD8(UnkHeapEntry* entry);
void func_800E0BB4(UnkHeapEntry* entry, AudioBankSample* sample);
UnkHeapEntry* func_800E0BF8(u32 size);
// ? func_800E0C80(?);
void func_800E0CBC(void);
void func_800E0E6C(s32 id);
void func_800E0E90(s32 id);
void func_800E0EB4(s32 arg0, s32 id);
void func_800E1148(void);
// ? func_800E11F0(?);
// ? func_800E12DC(?);
void func_800E1618(s32 arg0);
s32 Audio_IsBankLoadComplete(s32 bankId);
s32 Audio_IsSeqLoadComplete(s32 seqId);
void Audio_SetBankLoadStatus(s32 bankId, u8 status);
void Audio_SetSeqLoadStatus(s32 seqId, u8 status);
// ? func_800E1A78(?);
// ? func_800E1AD8(?);
// ? func_800E1B08(?);
// ? func_800E1B68(?);
// ? func_800E1C18(?);
// ? func_800E1C78(?);
// ? func_800E1D64(?);
// ? func_800E1E34(?);
// ? func_800E1E6C(?);
// ? func_800E1EB0(?);
// ? func_800E1EF4(?);
// ? func_800E1F38(?);
// ? func_800E1F7C(?);
// ? func_800E202C(?);
// ? func_800E20D4(?);
// ? func_800E2124(?);
// ? func_800E217C(?);
// ? func_800E22C4(?);
// ? func_800E2318(?);
// ? func_800E2338(?);
// ? func_800E2454(?);
// ? func_800E2558(?);
// ? func_800E2768(?);
// ? func_800E27A4(?);
// ? func_800E27F8(?);
// ? func_800E283C(?);
// ? func_800E2AA8(?);
// ? func_800E2BCC(?);
// ? func_800E2BE0(?);
// ? func_800E2CE0(?);
// ? func_800E2FEC(?);
void func_800E301C(void* callback);
// ? func_800E3034(?);
// ? func_800E3094(?);
void func_800E3400(void);
// ? func_800E3414(?);
// ? func_800E35E0(?);
// ? func_800E3678(?);
// ? func_800E36EC(?);
// ? func_800E3874(?);
// ? func_800E38F8(?);
// ? func_800E390C(?);
void func_800E3A14(void);
// ? func_800E3A44(?);
// ? func_800E3AC8(?);
// ? func_800E3BEC(?);
// ? func_800E3D10(?);
// ? func_800E3D1C(?);
// ? func_800E3E58(?);
// ? func_800E3FB4(?);
// ? func_800E4044(?);
// ? func_800E4058(?);
// ? func_800E4198(?);
// ? func_800E4590(?);
// ? func_800E4744(?);
// ? func_800E48C0(?);
// ? func_800E4918(?);
void func_800E4D94(void);
// ? func_800E4EEC(?);
// ? func_800E4F58(?);
void func_800E4FB0(void);
Sub_AudioMgr_18* func_800E4FE0(void);
// ? func_800E5000(?);
// ? func_800E5584(?);
// ? func_800E5958(?);
// ? func_800E59AC(?);
// ? func_800E59F4(?);
// ? func_800E5A8C(?);
// ? func_800E5AD8(?);
// ? func_800E5AFC(?);
// ? func_800E5B20(?);
// ? func_800E5B50(?);
// ? func_800E5B80(?);
// ? func_800E5C10(?);
// ? func_800E5C28(?);
// ? func_800E5D6C(?);
// ? func_800E5E20(?);
// ? func_800E5E84(?);
// ? func_800E5EDC(?);
// ? func_800E5F34(?);
// ? func_800E5F88(?);
// ? func_800E6024(?);
// ? func_800E6128(?);
// ? func_800E6300(?);
// ? func_800E6680(?);
// ? func_800E66C0(?);
// ? func_800E67C0(?);
// ? func_800E6818(?);
void Audio_NoteSetVelPanReverb(Note* note, NoteSubEu* sub, Reverb* reverb);
void Audio_NoteSetResamplingRate(NoteSubEu* noteSubEu, f32 resamplingRateInput);
void Audio_NoteInit(Note* note);
void Audio_NoteDisable(Note* note);
void Audio_ProcessNotes(void);
AudioBankSound* Audio_InstrumentGetAudioBankSound(Instrument* instrument, s32 semitone);
Instrument* Audio_GetInstrumentInner(s32 bankId, s32 instId);
Drum* Audio_GetDrum(s32 bankId, s32 drumId);
AudioBankSound* Audio_GetSfx(s32 bankId, s32 sfxId);
s32 func_800E7744(s32 instrument, s32 bankId, s32 instId, void* arg3);
void Audio_SeqChanLayerDecayRelease(SequenceChannelLayer* seqLayer, s32 target);
void Audio_SeqChanLayerNoteDecay(SequenceChannelLayer* seqLayer);
void Audio_SeqChanLayerNoteRelease(SequenceChannelLayer* seqLayer);
s32 Audio_BuildSyntheticWave(Note* note, SequenceChannelLayer* seqLayer, s32 waveId);
void Audio_InitSyntheticWave(Note* note, SequenceChannelLayer* seqLayer);
void Audio_InitNoteList(AudioListItem* list);
void Audio_InitNoteLists(NotePool* pool);
void Audio_InitNoteFreeList(void);
void Audio_NotePoolClear(NotePool* pool);
void Audio_NotePoolFill(NotePool* pool, s32 count);
void Audio_AudioListPushFront(AudioListItem* list, AudioListItem* item);
void Audio_AudioListRemove(AudioListItem* item);
Note* Audio_PopNodeWithValueLessEqual(AudioListItem* list, s32 limit);
void Audio_NoteInitForLayer(Note* note, SequenceChannelLayer* seqLayer);
void func_800E82C0(Note* note, SequenceChannelLayer* seqLayer);
void Audio_NoteReleaseAndTakeOwnership(Note* note, SequenceChannelLayer* seqLayer);
Note* Audio_AllocNoteFromDisabled(NotePool* pool, SequenceChannelLayer* seqLayer);
Note* Audio_AllocNoteFromDecaying(NotePool* pool, SequenceChannelLayer* seqLayer);
Note* Audio_AllocNoteFromActive(NotePool* pool, SequenceChannelLayer* seqLayer);
Note* Audio_AllocNote(SequenceChannelLayer* seqLayer);
void Audio_NoteInitAll(void);
void Audio_SequenceChannelProcessSound(SequenceChannel* seqChannel, s32 recalculateVolume, s32 b);
void Audio_SequencePlayerProcessSound(SequencePlayer* seqPlayer);
f32 Audio_GetPortamentoFreqScale(Portamento* p);
s16 Audio_GetVibratoPitchChange(VibratoState* vib);
f32 Audio_GetVibratoFreqScale(VibratoState* vib);
void Audio_NoteVibratoUpdate(Note* note);
void Audio_NoteVibratoInit(Note* note);
void Audio_NotePortamentoInit(Note* note);
void Audio_AdsrInit(AdsrState* adsr, AdsrEnvelope* envelope, s16* volOut);
f32 Audio_AdsrUpdate(AdsrState* adsr);
void Audio_SequenceChannelDisable(SequenceChannel* seqChannel);
void Audio_SequencePlayerDisableAsFinished(SequencePlayer* seqPlayer);
void Audio_SequencePlayerDisable(SequencePlayer* seqPlayer);
void Audio_AudioListPushBack(AudioListItem* list, AudioListItem* item);
void* Audio_AudioListPopBack(AudioListItem* list);
void Audio_ProcessSequences(s32 arg0);
void Audio_ProcessSequence(SequencePlayer* seqPlayer);
void Audio_ResetSequencePlayer(SequencePlayer* seqPlayer);
void func_800EC734(s32 seqPlayerIdx);
void Audio_InitSequencePlayers(void);


/* VARIABLES */

extern s16* gWaveSamples[6];
extern f32 gPitchBendFrequencyScale[256];
//extern ? D_8012F098;
//extern ? D_8012F0B0;
extern f32 D_8012F4B4[256];
extern f32 gNoteFrequencies[];
extern u8 gDefaultShortNoteVelocityTable[16];
extern u8 gDefaultShortNoteDurationTable[16];
extern AdsrEnvelope gDefaultEnvelope[3];
extern NoteSubEu gZeroNoteSub;
extern NoteSubEu gDefaultNoteSub;
extern u16 gHeadsetPanQuantization[0x10];
extern f32 gHeadsetPanVolume[128];
extern f32 gStereoPanVolume[128];
//extern ? D_8012FBAA;
//extern ? D_8012FFFF;
//extern ? D_80130001;
//extern ? D_80130002;
//extern ? D_80130004;
//extern ? D_80130006;
extern f32 gDefaultPanVolume[128];
extern s16 D_80130228[128];
extern s16 D_80130328[];
//extern ? D_801304A0;
//extern ? D_801304AC;
//extern ? D_801304C0;
//extern ? D_801304D0;
//extern ? D_801304D8;
//extern ? D_801304DC;
//extern ? D_801304E0;
//extern ? D_801304E4;
//extern ? D_801304E8;
//extern ? D_801304EC;
//extern ? D_801304F0;
//extern ? D_80130500;
extern f32 D_80130510;
extern s32 D_80130514;
//extern ? D_80130570;
//extern ? D_80130578;
//extern ? D_801305B0;
//extern ? D_801305B4;
//extern ? D_801305B8;
//extern ? D_801305BC;
//extern ? D_801305C0;
//extern ? D_801305CC;
//extern ? D_801305E0;
//extern ? D_801305F4;
//extern ? D_801305FF;
//extern ? D_80130600;
//extern ? D_80130604;
//extern ? D_80130608;
//extern ? D_8013060C;
//extern ? D_80130610;
//extern ? D_80130614;
//extern ? D_80130618;
//extern ? D_8013061C;
//extern ? D_80130624;
//extern ? D_80130628;
//extern ? D_8013062C;
//extern ? D_80130630;
//extern ? D_80130634;
//extern ? D_80130638;
//extern ? D_8013063C;
//extern ? D_80130640;
//extern ? D_80130644;
//extern ? D_80130648;
//extern ? D_8013064C;
//extern ? D_80130650;
//extern ? D_80130654;
//extern ? D_80130658;
//extern ? D_801306DC;
//extern ? D_80130EFC;
//extern ? D_80130F00;
//extern ? D_80130F04;
//extern ? D_80130F08;
//extern ? D_80130F0C;
//extern ? D_80130F10;
//extern ? D_80130F14;
//extern ? D_80130F18;
//extern ? D_80130F1C;
//extern ? D_80130F20;
//extern ? D_80130F24;
//extern ? D_80130F28;
//extern ? D_80130F2C;
//extern ? D_80130F30;
//extern ? D_80130F34;
//extern ? D_80130F38;
//extern ? D_80130F3C;
//extern ? D_80130F3E;
//extern ? D_80130F40;
//extern ? D_80130F44;
//extern ? D_80130F48;
//extern ? D_80130F4C;
//extern ? D_80130F50;
//extern ? D_80130F54;
//extern ? D_80130F58;
//extern ? D_80130F5C;
//extern ? D_80130F60;
//extern ? D_80130F64;
//extern ? D_80130F68;
//extern ? D_80130F6C;
//extern ? D_80130F74;
//extern ? D_80130F78;
//extern ? D_80130F80;
//extern ? D_80131100;
//extern ? D_8013170C;
//extern ? D_80131840;
//extern ? D_80131858;
//extern ? D_8013185C;
//extern ? D_80131860;
//extern ? D_80131864;
//extern ? D_80131868;
//extern ? D_8013186C;
//extern ? D_80131870;
//extern ? D_80131874;
//extern ? D_80131878;
//extern ? D_8013187C;
//extern ? D_80131880;
//extern ? D_80131884;
//extern ? D_8013188C;
//extern ? D_80131BE4;
//extern ? D_80131BE8;
//extern ? D_80131BEC;
//extern ? D_80131BF0;
//extern ? D_80131C00;
//extern ? D_80131C80;
//extern ? D_80131C84;
//extern ? D_80131C88;
//extern ? D_80131C90;
//extern ? D_80131C94;
//extern ? D_80131C98;
//extern ? D_80131C9C;
//extern ? D_80131CA0;
//extern ? D_80131CA4;
//extern ? D_80131CA8;
//extern ? D_80131CAC;
//extern ? D_80131E08;
//extern ? D_80131E14;
//extern ? D_80131E20;
//extern ? D_80131E24;
//extern ? D_80131E38;
//extern ? D_80131E43;
//extern ? D_80131E59;
//extern ? D_80131E64;
//extern ? D_80131E6F;
//extern ? D_80131E7A;
//extern ? D_80131E88;
//extern ? D_80131EBC;
//extern ? D_80131EC0;
//extern ? D_80131EC4;
//extern ? D_80131EC8;
//extern ? D_80131ED0;
//extern ? D_80131ED4;
//extern ? D_80131ED8;
//extern ? D_80131EDC;
//extern ? D_80131EE0;
//extern ? D_80131EE4;
//extern ? D_80131EEE;
//extern ? D_80131EFC;
//extern ? D_80131F00;
//extern ? D_80131F04;
//extern ? D_80131F08;
//extern ? D_80131F0C;
//extern ? D_80131F18;
//extern ? D_80131F1C;
//extern ? D_80131F20;
//extern ? D_80131F28;
//extern ? D_80131F2C;
//extern ? D_80131F30;
//extern ? D_80131F44;
//extern ? D_80131F4C;
//extern ? D_80131F50;
//extern ? D_80131F54;
//extern ? D_80131F64;
//extern ? D_80131F68;
//extern ? D_80131F6C;
//extern ? D_8013331C;
//extern ? D_80133340;
//extern ? D_80133344;
//extern ? D_80133390;
//extern ? D_80133398;
//extern ? D_801333A0;
//extern ? D_801333A4;
//extern ? D_801333A8;
//extern ? D_801333C4;
//extern ? D_801333CC;
//extern ? D_801333D0;
//extern ? D_801333F0;
//extern ? D_801333F4;
//extern ? D_801333F8;
//extern ? D_80133400;
//extern ? D_80133404;
//extern ? D_80133408;
//extern ? D_8013340C;
//extern ? D_80133414;
//extern ? D_80133418;
extern AudioSessionSettings gAudioSessionPresets[];

extern AudioContext gAudioContext; // at 0x8016f180
extern NotePool gNoteFreeLists; // (AudioContext should include this and further variables, too)
//extern ? D_80174D28;
//extern ? D_80174D38;
//extern ? D_80174D48;
//extern ? D_80174D64;
//extern ? D_80174D68;
//extern ? D_80174D88;
//extern ? D_80174DA0;
//extern ? D_80174DB8;
//extern ? D_80174DBC;
//extern ? D_80174DC0;


#endif
