#ifdef BBPLAYER
#include "ultra64.h"

u32 __osBbLastRCount;
u32 __osBbRCountWraps;
u32 __osBbLastVCount;
u32 __osBbVCountWraps;

u32 osGetCount(void) {
    u32 count;
    u32 mask = __osDisableInt();

    __asm__("mfc0 %0, $%1" : "=r"(count) : "i"(C0_COUNT));

    if (count < __osBbLastRCount) {
        __osBbRCountWraps++;
    }
    __osBbLastRCount = count;

    count = (((u64)__osBbRCountWraps << 32) | count) * 125ull / 192ull;

    if (count < __osBbLastVCount) {
        __osBbVCountWraps++;
    }
    __osBbLastVCount = count;

    __osRestoreInt(mask);

    return count;
}

#endif
