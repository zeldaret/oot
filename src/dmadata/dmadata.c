#include "dma.h"

// Linker symbol declarations (used in the table below)
#define DEFINE_DMA_ENTRY(name, _1)        \
    extern u8 _##name##SegmentRomStart[]; \
    extern u8 _##name##SegmentRomEnd[];

#include "tables/dmadata_table.h"

#undef DEFINE_DMA_ENTRY

// dmadata Table definition
#define DEFINE_DMA_ENTRY(name, _1)           \
    {                                        \
        ROM_FILE(name),                      \
        (uintptr_t)_##name##SegmentRomStart, \
        0,                                   \
    },

DmaEntry gDmaDataTable[] = {
#include "tables/dmadata_table.h"
    { 0 },
};

#undef DEFINE_DMA_ENTRY

// Additional padding?
u8 sDmaDataPadding[0xF0] = { 0 };
