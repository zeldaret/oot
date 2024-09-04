#include "ultra64.h"
#include "z64dma.h"
#include "segment_symbols.h"
#include "n64dd.h"

DECLARE_SEGMENT(n64dd)
DECLARE_ROM_SEGMENT(n64dd)
DECLARE_BSS_SEGMENT(n64dd)

s8 func_801C7740_unknown(void);

u8 B_80121AE0;
s8 B_80121AE1;
u8 B_80121AE2;
vu8 B_80121AE3;
vu8 B_80121AE4;

void func_800ADA80(void) {
    if (!B_80121AE0) {
        DmaMgr_RequestSync(_n64ddSegmentStart, (uintptr_t)_n64ddSegmentRomStart,
                           _n64ddSegmentRomEnd - _n64ddSegmentRomStart);
        // TODO use _n64ddSegmentBssStart, _n64ddSegmentBssEnd
        bzero(&D_801DA410, &D_801E8090 - &D_801DA410);
        B_80121AE0 = true;
        B_80121AE1 = func_801C7740_unknown();
        if (B_80121AE1) {}
    }
}

void func_800ADAF8(void) {
    if (B_80121AE0 && (B_80121AE2 == 0)) {
        B_80121AE0 = false;
    }
}
