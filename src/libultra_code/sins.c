#include "guint.h"
#include "sintable.h"

s16 sins(u16 x) {
    /* 0 <= x < 0x10000  ==>  0 <= x < 2PI */

    s16 val;

    x >>= 4; /* Now range 0 <= x < 0x1000 */

    if (x & 0x400) {
        val = sintable[0x3ff - (x & 0x3ff)];
    } else {
        val = sintable[x & 0x3ff];
    }

    if (x & 0x800) {
        return -val;
    } else {
        return val;
    }
}
