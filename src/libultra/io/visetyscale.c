#include "global.h"
#include "ultra64/viint.h"

void osViSetYScale(f32 scale) {
    register u32 prevInt = __osDisableInt();

    __osViNext->y.factor = scale;
    __osViNext->state |= VI_STATE_YSCALE_FACTOR_SET;

    __osRestoreInt(prevInt);
}
