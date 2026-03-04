#include "ultra64.h"
#include "dma.h"
#include "segment_symbols.h"
#include "n64dd.h"

u8 D_80121210;
u8 n64dd_isDiskDrivePresent;
u8 D_80121212;
vu8 n64dd_unk1;
vu8 n64dd_hasMusicBeenStopped; // unused here

void func_800AD410(void) {
    if (!D_80121210) {
        DMA_REQUEST_SYNC(_n64ddSegmentStart, (uintptr_t)_n64ddSegmentRomStart,
                         _n64ddSegmentRomEnd - _n64ddSegmentRomStart, UNK_FILE, UNK_LINE);
        bzero(_n64ddSegmentBssStart, _n64ddSegmentBssEnd - _n64ddSegmentBssStart);
        D_80121210 = true;
        n64dd_isDiskDrivePresent = n64dd_CheckIfDriveExists();
        if (n64dd_isDiskDrivePresent) {}
    }
}

void func_800AD488(void) {
    if (D_80121210 && (D_80121212 == 0)) {
        D_80121210 = false;
    }
}
