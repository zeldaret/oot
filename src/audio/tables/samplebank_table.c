#include "attributes.h"
#include "z64audio.h"

// Symbol definition

extern AudioTable gSampleBankTable;
#pragma weak gSampleBankTable = sSampleBankTableHeader

// Externs for table

#define DEFINE_SAMPLE_BANK(name, medium, cachePolicy) \
    extern u8 name##_Start[];                         \
    extern u8 name##_Size[];
#define DEFINE_SAMPLE_BANK_PTR(index, medium, cachePolicy) /*empty*/

#include "assets/audio/samplebank_table.h"

#undef DEFINE_SAMPLE_BANK
#undef DEFINE_SAMPLE_BANK_PTR

// Table header

NO_REORDER AudioTableHeader sSampleBankTableHeader = {
// The table contains the number of samplebanks, count them with the preprocessor
#define DEFINE_SAMPLE_BANK(name, medium, cachePolicy) 1 +
#define DEFINE_SAMPLE_BANK_PTR(index, medium, cachePolicy) 1 +

#include "assets/audio/samplebank_table.h"
    0,

#undef DEFINE_SAMPLE_BANK
#undef DEFINE_SAMPLE_BANK_PTR

    0,
    0x00000000,
    { 0, 0, 0, 0, 0, 0, 0, 0 },
};

// Table body

NO_REORDER AudioTableEntry sSampleBankTableEntries[] = {
#define DEFINE_SAMPLE_BANK(name, medium, cachePolicy) \
    { (u32)name##_Start, (u32)name##_Size, (medium), (cachePolicy), 0, 0, 0 },
#define DEFINE_SAMPLE_BANK_PTR(index, medium, cachePolicy) { (index), 0, (medium), (cachePolicy), 0, 0, 0 },

#include "assets/audio/samplebank_table.h"

#undef DEFINE_SAMPLE_BANK
#undef DEFINE_SAMPLE_BANK_PTR
};
