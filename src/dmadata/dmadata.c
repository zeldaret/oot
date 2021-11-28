#include "z64dma.h"

// Linker symbol declarations (used in the table below)
#define DEFINE_DMA_ENTRY(name) \
    extern u8 _##name##SegmentRomStart[]; \
    extern u8 _##name##SegmentRomEnd[];

#define DEFINE_DMA_ENTRY_END()

#include "tables/dmadata_table.h"

#undef DEFINE_DMA_ENTRY
#undef DEFINE_DMA_ENTRY_END

// dmadata Table definition
#define DEFINE_DMA_ENTRY(name) \
    { (u32)_##name##SegmentRomStart, (u32)_##name##SegmentRomEnd, (u32)_##name##SegmentRomStart, 0 },

#define DEFINE_DMA_ENTRY_END() \
    { 0 },

DmaEntry gDmaDataTable[] = {
    #include "tables/dmadata_table.h"
};

#undef DEFINE_DMA_ENTRY
#undef DEFINE_DMA_ENTRY_END

// Additional padding?
u8 sDmaDataPadding[0xF0] = { 0 };
