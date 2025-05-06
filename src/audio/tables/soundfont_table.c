#include "attributes.h"
#include "z64audio.h"

// Symbol definition

#pragma weak gSoundFontTable = sSoundFontTableHeader

// Externs for table

#define DEFINE_SOUNDFONT(name, medium, cachePolicy, sampleBankNormal, sampleBankDD, nInstruments, nDrums, nSfx) \
    extern u8 name##_Start[];                                                                                   \
    extern u8 name##_Size[];

#include "assets/audio/soundfont_table.h"

#undef DEFINE_SOUNDFONT

// Table header

NO_REORDER AudioTableHeader sSoundFontTableHeader = {
// The table contains the number of soundfonts, count them with the preprocessor
#define DEFINE_SOUNDFONT(name, medium, cachePolicy, sampleBankNormal, sampleBankDD, nInstruments, nDrums, nSfx) 1 +

#include "assets/audio/soundfont_table.h"
    0,

#undef DEFINE_SOUNDFONT

    0,
    0x00000000,
    { 0, 0, 0, 0, 0, 0, 0, 0 },
};

// Table body

NO_REORDER AudioTableEntry sSoundFontTableEntries[] = {
#define DEFINE_SOUNDFONT(name, medium, cachePolicy, sampleBankNormal, sampleBankDD, nInstruments, nDrums, nSfx) \
    { (u32)name##_Start,                                                                                        \
      (u32)name##_Size,                                                                                         \
      (medium),                                                                                                 \
      (cachePolicy),                                                                                            \
      ((sampleBankNormal) << 8) | (sampleBankDD),                                                               \
      ((nInstruments) << 8) | (nDrums),                                                                         \
      (nSfx) },

#include "assets/audio/soundfont_table.h"

#undef DEFINE_SOUNDFONT
};
