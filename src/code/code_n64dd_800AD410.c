#include "ultra64.h"
#include "dma.h"
#include "segment_symbols.h"
#include "n64dd.h"

u8 D_80121210;
u8 D_80121211;
u8 n64dd_isDiskContentRunning;
vu8 D_80121213;
vu8 isSoundStopped;

void func_800AD410(void) {
    if (!D_80121210) {
        DMA_REQUEST_SYNC(_n64ddSegmentStart, (uintptr_t)_n64ddSegmentRomStart,
                         _n64ddSegmentRomEnd - _n64ddSegmentRomStart, UNK_FILE, UNK_LINE);
        bzero(_n64ddSegmentBssStart, _n64ddSegmentBssEnd - _n64ddSegmentBssStart);
        D_80121210 = true;
        D_80121211 = n64dd_isDrivePresent();
        if (D_80121211) {}
    }
}

void func_800AD488(void) {
    if (D_80121210 && (n64dd_isDiskContentRunning == 0)) {
        D_80121210 = false;
    }
}
