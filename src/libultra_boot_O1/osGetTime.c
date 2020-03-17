#include <global.h>

OSTime osGetTime(void)
{
    u32 sp34;
    u32 sp30;
    u64 t1;
    register u32 s0;

    s0 = __osDisableInt();
    sp34 = osGetCount();
    sp30 = sp34 - __osBaseCounter;
    t1 = __osCurrentTime;
    __osRestoreInt(s0);

    return sp30 + t1;
}
