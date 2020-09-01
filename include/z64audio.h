#ifndef _Z64_AUDIO_H_
#define _Z64_AUDIO_H_

/**
 * Structs in this repository have primarily been imported from the SM64 Decompilation.
 * Many struct members are wrong; the symbol '?' next to an offset means the member is a guess.
 */

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
#define ADSR_HANG -1
#define ADSR_GOTO -2
#define ADSR_RESTART -3

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
    /*?0x0 */ s16 delay;
    /*?0x2 */ s16 arg;
} AdsrEnvelope; // size = 0x4?

typedef struct {
    /*?0x00 */ u32 start;
    /* 0x04 */ u32 end;
    /*?0x08 */ u32 count;
    /*?0x0C */ char unk_0C[0x4];
    /*?0x10 */ s16 state[16]; // only exists if count != 0. 8-byte aligned
} AdpcmLoop;

typedef struct {
    /*?0x00 */ s32 order;
    /*?0x04 */ s32 npredictors;
    /*?0x08 */ s16 book[1]; // size 8 * order * npredictors. 8-byte aligned
} AdpcmBook;

typedef struct {
    /* 0x00 */ u8 bits4 : 4;
    /* 0x00 */ u8 bits2 : 2;
    /*?0x01 */ u8 loaded;
    /*?0x04 */ u8* sampleAddr;
    /* 0x08 */ AdpcmLoop* loop;
    /*?0x0C */ AdpcmBook* book;
    /*?0x10 */ u32 sampleSize; // never read. either 0 or 1 mod 9, depending on padding
} AudioBankSample;

typedef struct {
    /* 0x00 */ AudioBankSample* sample;
    /* 0x04 */ f32 tuning; // frequency scale factor
} AudioBankSound; // size = 0x8

typedef struct {
    // contained within a larger struct, struct might not start at offset zero
    /* 0x00 */ AudioBankSound sound; // offset might be wrong
    /* 0x10 */ u8 pad[0x2c0];
} LargeSound; // size = 0x2C8

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
    u32 unk_0;
    u32 unk_4;
} UnkInstrument; // TODO: probably the same as AudioBankSound

typedef struct {
    /* 0x00 */ u8 numInstruments;
    /* 0x01 */ u8 numDrums;
    /* 0x02 */ char unk_02[0x02];
    /* 0x04 */ u16 numUnkInstruments;
    /* 0x08 */ Instrument** instruments;
    /* 0x0C */ Drum** drums;
    /* 0x10 */ UnkInstrument* unkInstruments;
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
    // everything here is wildly wrong, and the struct might not start at
    // zero (it's embedded into another struct)
    /*?0x00 */ s16 presetUnk4; // audio frames per vsync?
    /*?0x02 */ u16 frequency;
    /*?0x04 */ u16 aiFrequency; // ?16
    /*?0x06 */ s16 samplesPerFrameTarget;
    /* 0x08 */ s16 unk_08; // maxAiBufferLength;
    /*?0x0A */ s16 minAiBufferLength;
    /*?0x0C */ s16 updatesPerFrame;
    /*?0x0E */ s16 samplesPerUpdate;
    /* 0x10 */ s16 unk_10; // samplesPerUpdateMax;
    /*?0x12 */ s16 samplesPerUpdateMin;
    /* 0x14 */ f32 resampleRate;             // contains 32000.0f / frequency
    /* 0x18 */ f32 updatesPerFrameInv;       // 1.0f / updatesPerFrame
    /*?0x1C */ f32 unkUpdatesPerFrameScaled; // 3.0f / (1280.0f * updatesPerFrame)
} AudioBufferParametersEU;

typedef struct {
    /* 0x0 */ u8* start;
    /* 0x4 */ u8* cur;
    /* 0x8 */ u32 size;
    /* 0xC */ s32 unused; // set to 0, never read
} SoundAllocPool; // size = 0x10

typedef struct {
    /* 0x0 */ u8 *ptr;
    /*?0x4 */ u32 size;
    /*     */ u16 pad;
    /* 0xA */ s16 id; // seqId or bankId
} SeqOrBankEntry; // size = 0xC

typedef struct
{
    /* 0x00*/ u32 numEntries;
    /* 0x04*/ SoundAllocPool pool;
    /*?0x14*/ SeqOrBankEntry entries[16];
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
    /* 0x0000 */ char unk_0000[0x14];
    /* 0x0014 */ NoteSubEu* gNoteSubsEu;
    /* 0x0018 */ char unk_0018[0x280];
    /*?0x0298 */ LargeSound largeSounds[1]; // size <= 14, offset might be wrong
    /* 0x0560 */ char unk_0560[0x22E4];
    /* 0x2844 */ CtlEntry* gCtlEntries;
    /* 0x2848 */ char unk_2848[0x4];
    /*?0x284C */ AudioBufferParametersEU gAudioBufferParameters; // offset might be wrong
    /* 0x286C */ f32 unk_286C;
    /* 0x2870 */ f32 unk_2870;
    /* 0x2874 */ char unk_2874[0x20];
    /* 0x2894 */ s32 gMaxSimultaneousNotes; // (bad name)
    /* 0x2898 */ s16 unk_2898;
    /* 0x289A */ s8 gSoundMode;
    /* 0x289B */ char unk_289B[0xE1];
    /* 0x297C */ u32 gAudioRandom;
    /* 0x2980 */ s32 gAudioErrorFlags;
    /* 0x2984 */ char unk_2984[0x3C];
    /* 0x29C0 */ SoundAllocPool gNotesAndBuffersPool;
    /* 0x29D0 */ char unk_29D0[0x20]; // probably two unused pools
    /* 0x29F0 */ SoundAllocPool gSeqAndBankPool;
    /* 0x2A00 */ SoundAllocPool gTemporaryCommonPool;
    /* 0x2A10 */ SoundAllocPool gPersistentCommonPool;
    /* 0x2A20 */ SoundMultiPool gSeqLoadedPool;
    /* 0x2B30 */ SoundMultiPool gBankLoadedPool;
    /* 0x2C40 */ SoundMultiPool gUnusedLoadedPool;
    /* 0x2D50 */ char unk_2D50[0x7D0];
    /* 0x3520 */ f32* unk_3520;
    /* 0x3524 */ char unk_3524[8];
    /* 0x352C */ Note* gNotes;
    /* 0x3530 */ SequencePlayer gSequencePlayers[4];
    /* 0x3AB0 */ SequenceChannelLayer gSequenceLayers[64];
    /* 0x5AB0 */ SequenceChannel gSequenceChannelNone;
    /* 0x5B84 */ s32 gNoteSubEuOffset;
    /* 0x5B88 */ AudioListItem gLayerFreeList;
} AudioContext; // might be bigger

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

#endif
