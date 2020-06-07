#ifndef _Z64_AUDIO_H_
#define _Z64_AUDIO_H_

/**
 * Structs in this repository have primarily been imported from the SM64 Decompilation.
 * Many things likely still need shifted around and structs need adjusted.
 * Take sizes and locations of structs as very volatile.
 */

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
    /* 0x0C */struct NotePool* pool;
} AudioListItem; // size = 0x10

// UNCHANGED
typedef struct NotePool {
    AudioListItem disabled;
    AudioListItem decaying;
    AudioListItem releasing;
    AudioListItem active;
} NotePool;

// Pitch sliding by up to one octave in the positive direction. Negative
// direction is "supported" by setting extent to be negative. The code
// exterpolates exponentially in the wrong direction in that case, but that
// doesn't prevent seqplayer from doing it, AFAICT.
typedef struct {
    u8 mode; // bit 0x80 denotes something; the rest are an index 0-5
    f32 cur;
    f32 speed;
    // f32 extent;
    // struct Note *note; // Changed from extent to note? Shortened Struct maybe?
} Portamento; // size = 0x0C

typedef struct {
    s16 delay;
    s16 arg;
} AdsrEnvelope; // size = 0x4

typedef struct {
    u32 start;
    u32 end;
    u32 count;
    char unk_0C[0x4];
    s16 state[16]; // only exists if count != 0. 8-byte aligned
} AdpcmLoop;

typedef struct {
    s32 order;
    s32 npredictors;
    s16 book[1]; // size 8 * order * npredictors. 8-byte aligned
} AdpcmBook;

typedef struct {
    u8 unused;
    u8 loaded;
    u8* sampleAddr;
    AdpcmLoop* loop;
    AdpcmBook* book;
    u32 sampleSize; // never read. either 0 or 1 mod 9, depending on padding
} AudioBankSample;

typedef struct {
    AudioBankSample* sample;
    f32 tuning; // frequency scale factor
} AudioBankSound;              // size = 0x8

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
    u32 drum0;
    u32 drum4;
    // u8 releaseRate;
    // u8 pan;
    // u8 loaded;
    // AudioBankSound sound;
    // AdsrEnvelope *envelope;
} Drum; // OOT size = 0x8, TODO figure out what is still used.

typedef struct {
    u32 unk_0;
    u32 unk_4;
} UnkInstrument; // size = 0x8, new struct to OOT

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
    u8* pc;
    u8* stack[4];
    u8 remLoopIters[4];
    u8 depth;
} M64ScriptState; // size = 0x1C

typedef struct {
    /* 0x000 */ u8 enabled : 1;
    /* 0x000 */ u8 finished : 1; // never read
    /* 0x000 */ u8 muted : 1;
    /* 0x000 */ u8 seqDmaInProgress : 1;
    /* 0x000 */ u8 bankDmaInProgress : 1;
    /* 0x000 */ u8 recalculateVolume : 1;
    /* 0x001 */ u8 state;
    /* 0x002 */ u8 noteAllocPolicy;
    /* 0x003 */ u8 muteBehavior;
    /* 0x004 */ u8 seqId;
    /* 0x005 */ u8 defaultBank[1]; // must be an array to get a comparison
                                 // to match; other u8's might also be part of that array
    /* 0x006 */ u8 loadingBankId;
    /* 0x007 */ s8 seqVariationEu[1];
    /* 0x008 */ u16 tempo; // beats per minute in JP, tatums per minute in US/EU
    /* 0x00A */ u16 tempoAcc;
    /* 0x00C */ s16 transposition;
    /* 0x00E */ u16 delay;
    /* 0x010 */ u16 fadeTimer;
    /* 0x012 */ u16 fadeTimerUnkEu;
    /* 0x014 */ u8* seqData;         // buffer of some sort
    /* 0x018 */ f32 fadeVolume;      // set to 1.0f
    /* 0x01C */ f32 fadeVelocity;    // set to 0.0f
    /* 0x020 */ f32 volume;          // set to 0.0f
    /* 0x024 */ f32 muteVolumeScale; // set to 0.5f
    /* 0x028 */ f32 fadeVolumeScale;
    /* 0x02C */ f32 appliedFadeVolume;
    /* 0x030 */ struct SequenceChannel* channels[16];
    /* 0x070 */ M64ScriptState scriptState;
    /* 0x08C */ u8* shortNoteVelocityTable;
    /* 0x090 */ u8* shortNoteDurationTable;
    /* 0x094 */ char unk_094[0x8]; // NotePool shifted down 0x8
    /* 0x09C */ NotePool notePool;
    /* 0x0DC */ OSMesgQueue seqDmaMesgQueue;
    /* 0x0F4 */ OSMesg seqDmaMesg;
    /* 0x0F8 */ OSIoMesg seqDmaIoMesg;
    /* 0x110 */ OSMesgQueue bankDmaMesgQueue;
    /* 0x128 */ OSMesg bankDmaMesg;
    /* 0x12C */ OSIoMesg bankDmaIoMesg;
    /* 0x144 */ u8* bankDmaCurrMemAddr;
    /* 0x148 */ u32 bankDmaCurrDevAddr;
    /* 0x14C */ s32 bankDmaRemaining;
} SequencePlayer;

typedef struct {
    u8 releaseRate;
    u8 sustain;
    AdsrEnvelope* envelope;
} AdsrSettings; // size = 0x8

typedef struct {
    union {
        struct {
            /* 0x00 */ u8 bits7 : 1; // pad
            /* 0x00 */ u8 bits6 : 1; // pad
            /* 0x00 */ u8 bits5 : 1; // pad
            /* 0x00 */ u8 bits4 : 1;
            /* 0x00 */ u8 bits0 : 4;
        } adsrBits;
        /* 0x00 */ u8 action; // Must be unionized to zero all bitfields at once.
    } adsrAction;
    u8 state;     // Could be in the upper union in a struct with action.
    s16 envIndex; // Could be in the upper union in a struct with action.
    s16 delay;
    f32 sustain;
    f32 velocity;
    f32 fadeOutVel;
    f32 current;
    f32 target;
    AdsrEnvelope *envelope;
} AdsrState;

typedef struct {
    /* 0x00 */ s8 reverb;
    /* 0x01 */ u8 pan;
    /* 0x02 */ char unk_02[0x6];
    /* 0x08 */ f32 freqScale;
    /* 0x0C */ f32 velocity;
    /* 0x10 */ char unk_10[0x8];
} NoteAttributes; // size = 0x1C

typedef struct SequenceChannel {
    /* 0x00 */ u8 enabled : 1;
    /* 0x00 */ u8 finished : 1;
    /* 0x00 */ u8 stopScript : 1;
    /* 0x00 */ u8 stopSomething2 : 1; // sets SequenceChannelLayer.stopSomething
    /* 0x00 */ u8 hasInstrument : 1;
    /* 0x00 */ u8 stereoHeadsetEffects : 1;
    /* 0x00 */ u8 largeNotes : 1; // notes specify duration and velocity
    /* 0x00 */ u8 unused : 1;     // never read, set to 0
    /* 0x01 */ union {
                 struct {
                     u8 freqScale : 1;
                     u8 volume : 1;
                     u8 pan : 1;
                 } asBitfields;
                 u8 asByte;
             } changes;
    /* 0x02 */ u8 noteAllocPolicy;
    /* 0x03 */ u8 muteBehavior;
    /* 0x04 */ u8 reverb;       // or dry/wet mix
    /* 0x05 */ u8 notePriority; // 0-3
    /* 0x06 */ char unk_06[0x1];
    /* 0x07 */ u8 bankId;
    /* 0x08 */ u8 reverbIndex;
    /* 0x09 */ u8 bookOffset;
    /* 0x0A */ u8 newPan;
    /* 0x0B */ u8 panChannelWeight;  // proportion of pan that comes from the channel (0..128)
    /* 0x0C */ u16 vibratoRateStart; // initially 0x800
    /* 0x0E */ u16 vibratoExtentStart;
    /* 0x10 */ u16 vibratoRateTarget; // initially 0x800
    /* 0x12 */ u16 vibratoExtentTarget;
    /* 0x14 */ u16 vibratoRateChangeDelay;
    /* 0x16 */ u16 vibratoExtentChangeDelay;
    /* 0x18 */ u16 vibratoDelay;
    /* 0x1A */ u16 delay;
    /* 0x1C */ f32 volumeScale;
    /* 0x20 */ f32 volume;
    /* 0x24 */ s16 instOrWave; // either 0 (none), instrument index + 1, or
                             // 0x80..0x83 for sawtooth/triangle/sine/square waves.
    /* 0x26 */ s16 transposition;
    /* 0x28 */ s32 pan;
    /* 0x2C */ f32 appliedVolume;
    /* 0x30 */ f32 freqScale;
    /* 0x34 */ u8 (*dynTable)[][2];
    /* 0x3C */ char unk_3C[0x8];
    /* 0x44 */ struct Note* noteUnused;                  // never read
    /* 0x48 */ struct SequenceChannelLayer* layerUnused; // never read
    /* 0x4C */ Instrument* instrument;
    /* 0x50 */ SequencePlayer* seqPlayer;
     //! Changed this to shift the struct, likely incorrect. (Notice the above pad[2])
    /* 0x54 */ struct SequenceChannelLayer* layers[2];
    /* 0x5C */ s8 soundScriptIO[8]; // bridge between sound script and audio lib. For player 2,
                                        // [0] contains enabled, [4] contains sound ID, [5] contains reverb adjustment
    /* 0x64 */ M64ScriptState scriptState;
    /*      */ AdsrSettings adsr;
    /*      */ NotePool notePool;
    /* 0xCC */ struct Note* test;
    /* 0xD0 */ char unk_D0[0x4];
} SequenceChannel;

// Maybe SequenceTrack?
typedef struct SequenceChannelLayer {
    /* 0x00 */ u8 enabled : 1;
    /* 0x00 */ u8 finished : 1;
    /* 0x00 */ u8 stopSomething : 1;   // ?
    /* 0x00 */ u8 continuousNotes : 1; // keep the same note for consecutive notes with the same sound
    /* 0x00 */ u8 unusedEu0b8 : 1;
    /* 0x00 */ u8 notePropertiesNeedInit : 1;
    /* 0x00 */ u8 ignoreDrumPan : 1;
    /* 0x00 */ u8 bit0 : 1;
    /* 0x01 */ char unk_01[0x1];
    /* 0x02 */ u8 instOrWave;
    /* 0x03 */ u8 status;
    /* 0x04 */ u8 noteDuration; // set to 0x80
    /* 0x05 */ u8 portamentoTargetNote;
    /* 0x06 */ u8 pan; // 0..128
    /* 0x07 */ u8 notePan;
    /* 0x08 */ u16 portamentoTime;
    /* 0x0A */ s16 transposition; // #semitones added to play commands
                                      // (m64 instruction encoding only allows referring to the limited range
                                      // 0..0x3f; this makes 0x40..0x7f accessible as well)
    /* 0x0C */ f32 freqScale;
    /* 0x10 */ f32 velocitySquare;
    /* 0x14 */ f32 noteVelocity;
    /* 0x18 */ AdsrSettings adsr;
    /* 0x20 */ Portamento portamento;
    /* 0x2C */ struct Note* note;
    /* 0x30 */ f32 noteFreqScale;
    /* 0x34 */ s16 shortNoteDefaultPlayPercentage;
    /* 0x36 */ s16 playPercentage; // it's not really a percentage...
    /* 0x38 */ s16 delay;
    /* 0x3A */ s16 duration;
    /* 0x3C */ s16 delayUnused; // set to 'delay', never read
    /* 0x40 */ f32 unk_40;
    /* 0x44 */ char unk_44[0x4];
    /* 0x48 */ Instrument* instrument;
    /* 0x4C */ AudioBankSound* sound;
    /* 0x50 */ SequenceChannel* seqChannel;
    /* 0x54 */ M64ScriptState scriptState;
    /* 0x70 */ AudioListItem listItem;
    /* 0x80 */ char unk_80[0x10];
} SequenceChannelLayer;

typedef struct {
    s16 adpcmdecState[0x10];
    s16 finalResampleState[0x10];
    s16 mixEnvelopeState[0x28];
    s16 panResampleState[0x10];
    s16 panSamplesBuffer[0x20];
    s16 dummyResampleState[0x10];
} NoteSynthesisBuffers;

typedef struct {
    /* 0x00 */ u8 restart;
    /* 0x01 */ u8 sampleDmaIndex;
    /* 0x02 */ u8 prevHeadsetPanRight;
    /* 0x03 */ u8 prevHeadsetPanLeft;
    /* 0x04 */ u16 samplePosFrac;
    /* 0x08 */ s32 samplePosInt;
    /* 0x0C */ NoteSynthesisBuffers* synthesisBuffers;
    /* 0x10 */ s16 curVolLeft;
    /* 0x12 */ s16 curVolRight;
} NoteSynthesisState;

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
    /* 0x06 */ s16 adsrVolScale;
    /* 0x08 */ f32 portamentoFreqScale;
    /* 0x0C */ f32 vibratoFreqScale;
    /* 0x10 */ SequenceChannelLayer* prevParentLayer;
    /* 0x14 */ SequenceChannelLayer* parentLayer;
    /* 0x18 */ SequenceChannelLayer* wantedParentLayer;
    /* 0x1C */ NoteAttributes attributes;
    /* 0x38 */ char unk_38[0xC];
    /* 0x44 */ AdsrState adsr;
    // /* 0x4C */ Portamento portamento;
    // /* 0x5C */ VibratoState vibratoState;
} NotePlaybackState;

typedef struct {
    union {
        struct {
            /* 0x00 */ volatile u8 enabled : 1;
            /* 0x00 */ u8 needsInit : 1;
            /* 0x00 */ u8 finished : 1;
            /* 0x00 */ u8 envMixerNeedsInit : 1;
            /* 0x00 */ u8 stereoStrongRight : 1;
            /* 0x00 */ u8 stereoStrongLeft : 1;
            /* 0x00 */ u8 stereoHeadsetEffects : 1;
            /* 0x00 */ u8 usesHeadsetPanEffects : 1;
        } asBitfields;
        u8 asByte;
    } bitField0;
    union {
        struct {
            /* 0x01 */ u8 reverbIndex : 3;
            /* 0x01 */ u8 bookOffset : 2;
            /* 0x01 */ u8 bit2 : 1;
            /* 0x01 */ u8 isSyntheticWave : 1;
            /* 0x01 */ u8 hasTwoAdpcmParts : 1;
        } asBitfields;
        u8 asByte;
    } bitField1;
    /* 0x02 */ u8 bankId;
    /* 0x03 */ u8 headsetPanRight;
    /* 0x04 */ u8 headsetPanLeft;
    /* 0x05 */ u8 reverbVol;
    /* 0x06 */ u8 unk_06; // sound shifted by 4.
    /* 0x07 */ u8 unk_07; // sound shifted by 4.
    /* 0x08 */ u16 targetVolLeft;
    /* 0x0A */ u16 targetVolRight;
    /* 0x0C */ u16 resamplingRateFixedPoint; // stored as signed but loaded as u16
    /* 0x0E */ s16 unk_10;
    /* 0x10 */ union {
                 s16* samples;
                 AudioBankSound* audioBankSound;
             } sound;
    /* 0x14 */ u32 unk_14;
    /* 0x18 */ char unk_18[0x8];
} NoteSubEu;

typedef struct Note {
    /* 0x00 */ AudioListItem listItem;
    /* 0x10 */ NoteSynthesisState synthesisState;
    /* 0x24 */ char unk_24[0xC];
    /* 0x30 */ NotePlaybackState playbackState;
    /* 0x90 */ char unk_90[0x2];
    /* 0x92 */ u16 unk_92;
    /* 0x94 */ u16 unk_94;
    /* 0x96 */ char unk_96[0x1A];
    /* 0xB0 */ u8 unk_B0;
    /* 0xB4 */ char unk_B4[0xB];
    /* 0xBC */ u32 unk_BC;
    /* 0xC0 */ NoteSubEu noteSubEu;

    // Possibly removed? Changed? Likely needs fit within this all here.
    // /* 0x74, 0x7C */ Portamento portamento;
    // /* 0x84, 0x8C */ VibratoState vibratoState;
} Note;

typedef struct {
    /* 0x00 */ s16 presetUnk4; // audio frames per vsync?
    /* 0x02 */ u16 frequency;
    /* 0x04 */ u16 aiFrequency; // ?16
    /* 0x06 */ s16 samplesPerFrameTarget;
    /* 0x08 */ s16 maxAiBufferLength;
    /* 0x0A */ s16 minAiBufferLength;
    /* 0x0C */ s16 updatesPerFrame;
    /* 0x0E */ s16 samplesPerUpdate;
    /* 0x10 */ s16 samplesPerUpdateMax;
    /* 0x12 */ s16 samplesPerUpdateMin;
    /* 0x14 */ f32 resampleRate;             // contains 32000.0f / frequency
    /* 0x18 */ f32 updatesPerFrameInv;       // 1.0f / updatesPerFrame
    /* 0x1C */ f32 unkUpdatesPerFrameScaled; // 3.0f / (1280.0f * updatesPerFrame)
} AudioBufferParametersEU;

typedef struct {
    u8* start;
    u8* cur;
    u32 size;
    s32 unused; // set to 0, never read
} SoundAllocPool;

typedef struct {
    /* 0x0000 */ char unk_0000[0x2844];
    /* 0x2844 */ CtlEntry* gCtlEntries;
    /* 0x2848 */ char unk_2848[0x4];
    /* 0x284C */ AudioBufferParametersEU gAudioBufferParameters;
    /* 0x286C */ char unk_286C[0x28];
    /* 0x2894 */ s32 gMaxSimultaneousNotes;
    /* 0x2898 */ char unk_2898[0xE8];
    /* 0x2980 */ s32 gAudioErrorFlags;
    /* 0x2984 */ char unk_2984[0x3C];
    /* 0x29C0 */ SoundAllocPool gNotesAndBuffersPool;
    /* 0x29D0 */ char unk_29D0[0x0B5C];
    /* 0x352C */ Note* gNotes;
} AudioContext;


// These two are similar to NoteSubEu. ReverbBits may be shared in both.
typedef struct {
    u8 bit0 : 1;
    u8 bit1 : 1;
    u8 bit2 : 2;
    u8 strongRight : 1;
    u8 strongLeft : 1;
    u8 stereoHeadsetEffects : 1;
    u8 usesHeadsetPanEffects : 1;
} ReverbBits;

typedef struct {
    /* 0x00 */ u8 reverb;
    /* 0x01 */ u8 bankId;
    /* 0x02 */ u8 pan;
    /* 0x03 */ ReverbBits reverbBits;
    /* 0x04 */ f32 velocity;
    /* 0x08 */ f32 unk_8;
    /* 0x0C */ char unk_0C[0x4];
    /* 0x10 */ u32 unk_10;
    /* 0x14 */ u8 unk_14;
    /* 0x16 */ u16 unk_16;
} Reverb; // size = 0x1C (May be longer)

#define NO_LAYER ((SequenceChannelLayer*)(-1))

#endif
