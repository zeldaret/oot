#include "attributes.h"
#include "z64audio.h"

// Symbol definition

extern AudioTable gSequenceTable;
#pragma weak gSequenceTable = sSequenceTableHeader

// Externs for table

#define DEFINE_SEQUENCE(name, seqId, storageMedium, cachePolicy, seqFlags) \
    extern u8 name##_Start[];                                              \
    extern u8 name##_Size[];
#define DEFINE_SEQUENCE_PTR(seqIdReal, seqId, storageMediumReal, cachePolicyReal, seqFlags) /*empty*/

#include "tables/sequence_table.h"

#undef DEFINE_SEQUENCE
#undef DEFINE_SEQUENCE_PTR

// Table header

NO_REORDER AudioTableHeader sSequenceTableHeader = {
// The table contains the number of sequences, count them with the preprocessor
#define DEFINE_SEQUENCE(name, seqId, storageMedium, cachePolicy, seqFlags) 1 +
#define DEFINE_SEQUENCE_PTR(seqIdReal, seqId, storageMediumReal, cachePolicyReal, seqFlags) 1 +

#include "tables/sequence_table.h"

#undef DEFINE_SEQUENCE
#undef DEFINE_SEQUENCE_PTR
    0,

    0,
    0x00000000,
    { 0, 0, 0, 0, 0, 0, 0, 0 },
};

// Table body

NO_REORDER AudioTableEntry sSequenceTableEntries[] = {
#define DEFINE_SEQUENCE(name, seqId, storageMedium, cachePolicy, seqFlags) \
    { (u32)name##_Start, (u32)name##_Size, (storageMedium), (cachePolicy), 0, 0, 0 },
#define DEFINE_SEQUENCE_PTR(seqIdReal, seqId, storageMediumReal, cachePolicyReal, seqFlags) \
    { (seqIdReal), 0, (storageMediumReal), (cachePolicyReal), 0, 0, 0 },

#include "tables/sequence_table.h"

#undef DEFINE_SEQUENCE
#undef DEFINE_SEQUENCE_PTR
};
