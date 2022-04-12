#include "global.h"

f32 fmodf(f32 x, f32 y) {
    s32 quot;

    if (y == 0.0f) {
        return 0.0f;
    }
    quot = x / y;

    return x - (quot * y);
}
