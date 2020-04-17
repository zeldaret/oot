#include "libultra_internal.h"

signed short coss(unsigned short x) {
    /* 0 <= x < 0x10000  ==>  0 <= x < 2PI */
    return sins((unsigned short)(x + 0x4000));
}
