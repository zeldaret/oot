#ifndef _AUDIOBANK_H_
#define _AUDIOBANK_H_

#include "stddef.h"
#include "ultra64/types.h"

typedef struct {
    /* 0x00 */ u32 start;
    /* 0x04 */ u32 end;
    /* 0x08 */ u32 count;
    /* 0x0C */ u32 origSpls;
    /* 0x10 */ s16 state[]; // elements: count != 0 ? 16 : 0.
} AdpcmLoop __attribute__((aligned(16))); // size = 0x10 or 0x30

typedef struct {
    /* 0x00 */ s32 order;
    /* 0x04 */ s32 npredictors;
    /* 0x08 */ s16 book[]; // elements: 8 * order * npredictors
} AdpcmBook __attribute__((aligned(16)));

typedef struct {
    /* 0x00 */ u32 codec : 4;
    /* 0x00 */ u32 medium : 2;
    /* 0x00 */ u32 unk_bit26 : 1;
    /* 0x00 */ u32 unk_bit25 : 1;
    /* 0x01 */ u32 size : 24;
    /* 0x04 */ u8* sampleAddr;
    /* 0x08 */ AdpcmLoop* loop;
    /* 0x0C */ AdpcmBook* book;
} AudioBankSample __attribute__((aligned(16))); // size = 0x10

typedef struct {
    /* 0x00 */ AudioBankSample* sample;
    /* 0x04 */ f32 tuning; // frequency scale factor
} AudioBankSound; // size = 0x8

typedef struct {
    /* 0x0 */ s16 rate;
    /* 0x2 */ s16 level;
} AdsrEnvelopePoint; // size = 0x4

typedef struct {
    /*?0x00 */ u8 loaded;
    /* 0x01 */ u8 normalRangeLo;
    /* 0x02 */ u8 normalRangeHi;
    /* 0x03 */ u8 releaseRate;
    /* 0x04 */ AdsrEnvelopePoint* envelope;
    /* 0x08 */ AudioBankSound lowNotesSound;
    /* 0x10 */ AudioBankSound normalNotesSound;
    /* 0x18 */ AudioBankSound highNotesSound;
} Instrument; // size >= 0x20

typedef struct {
    /* 0x00 */ u8 releaseRate;
    /* 0x01 */ u8 pan;
    /* 0x02 */ u8 loaded;
    /* 0x04 */ AudioBankSound sound;
    /* 0x14 */ AdsrEnvelopePoint* envelope;
} Drum; // size >= 0x14

typedef struct {
    Drum** drums; //size of array-of-pointers is numDrum
    AudioBankSound* sfx; //size of array is numSfx;
    Instrument* instruments[]; //size of array is numInst
} AudioBank;

typedef struct {
    AudioBank* addr; //Pointer to bank, relative to start of Audiobank
    u32 len; //Bank Length
    s8 loadLocation; //00 == RAM, 02 == ROM, maybe 01 or 03 are disk
    s8 seqPlayerIdx; //00 == SFX, 01 == fanfares, 02 == BGM, 03 == cutscene SFX
    u8 audiotableIdx; //Which Audiotable is used for this bank
    u8 unk_0D; //0xFF
    u8 numInst;
    u8 numDrum;
    u16 numSfx;
} AudiobankIndexEntry;

#endif
