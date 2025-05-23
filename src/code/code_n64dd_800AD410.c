#include "ultra64.h"
#include "z64dma.h"
#include "segment_symbols.h"
#include "n64dd.h"

u8 D_80121210;
u8 D_80121211;
u8 D_80121212;
vu8 D_80121213;
vu8 D_80121214;

void func_800AD410(void) {
    if (!D_80121210) {
        DMA_REQUEST_SYNC(_n64ddSegmentStart, (uintptr_t)_n64ddSegmentRomStart,
                         _n64ddSegmentRomEnd - _n64ddSegmentRomStart, UNK_FILE, UNK_LINE);
        bzero(_n64ddSegmentBssStart, _n64ddSegmentBssEnd - _n64ddSegmentBssStart);
        D_80121210 = true;
        D_80121211 = func_801C6E80();
        if (D_80121211) {}
    }
}

void func_800AD488(void) {
    if (D_80121210 && (D_80121212 == 0)) {
        D_80121210 = false;
    }
}
