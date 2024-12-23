#include "global.h"
#include "assets/audio/sequence_sizes.h"
#include "assets/audio/soundfont_sizes.h"

#define SFX_SEQ_SIZE Sequence_0_SIZE
#define SFX_SOUNDFONTS_SIZE (Soundfont_0_SIZE + Soundfont_1_SIZE)

TempoData gTempoData = {
    0x1C00,            // unk_00
    SEQTICKS_PER_BEAT, // seqTicksPerBeat
};

// Sizes of everything on the init pool
#define AI_BUFFERS_SIZE (AIBUF_SIZE * ARRAY_COUNT(gAudioCtx.aiBuffers))
#define SOUNDFONT_LIST_SIZE (NUM_SOUNDFONTS * sizeof(SoundFont))
#if OOT_VERSION < PAL_1_0 || !PLATFORM_N64
#define PERMANENT_POOL_SIZE (SFX_SEQ_SIZE + SFX_SOUNDFONTS_SIZE)
#else
#define PERMANENT_POOL_SIZE (SFX_SEQ_SIZE + SFX_SOUNDFONTS_SIZE + 0x10)
#endif

AudioHeapInitSizes gAudioHeapInitSizes = {
    ALIGN16(sizeof(gAudioHeap) - 0x100),                                  // audio heap size
    ALIGN16(PERMANENT_POOL_SIZE + AI_BUFFERS_SIZE + SOUNDFONT_LIST_SIZE), // init pool size
    ALIGN16(PERMANENT_POOL_SIZE),                                         // permanent pool size
};
