#include <ultra64.h>
#include <global.h>

u32* func_80106760() {
    register u32 sMask = __osDisableInt();
    u32* var1;

    var1 = __osViCurr->buffer;

    __osRestoreInt(sMask);

    return var1;
}
