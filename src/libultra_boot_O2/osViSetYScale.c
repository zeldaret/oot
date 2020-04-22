#include <global.h>

void osViSetYScale(float scale) {
    register s32 prevInt;

    prevInt = __osDisableInt();
    __osViNext->y.factor = scale;
    __osViNext->state |= 4;
    __osRestoreInt(prevInt);
}
