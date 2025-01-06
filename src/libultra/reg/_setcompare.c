#ifdef BBPLAYER
#include "ultra64.h"

extern u32 __osBbLastRCount;
extern u32 __osBbRCountWraps;
extern u32 __osBbLastVCount;
extern u32 __osBbVCountWraps;

void __osSetCompare(u32 v) {
    if (v != 0) {
        u32 mask = __osDisableInt();
        u32 wraps = (v < __osBbLastVCount) ? (__osBbVCountWraps + 1) : __osBbVCountWraps;

        v = (((u64)wraps << 32) | v) * 192ull / 125ull;

        __osRestoreInt(mask);
    }
    __asm__("mtc0 %0, $%1" ::"r"(v), "i"(C0_COMPARE));
}
#endif
