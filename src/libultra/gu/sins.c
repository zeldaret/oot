#include "ultra64.h"

#include "sintable.inc.c"

/**
 * @param angle binang
 * @return sin(angle)*0x7FFF
 */
s16 sins(u16 angle) {
    s16 value;

    angle >>= 4;

    if (angle & 0x400) {
        value = sintable[0x3FF - (angle & 0x3FF)];
    } else {
        value = sintable[angle & 0x3FF];
    }

    if (angle & 0x800) {
        return -value;
    } else {
        return value;
    }
}
