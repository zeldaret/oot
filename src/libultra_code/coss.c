#include "libultra_internal.h"

s16 coss(u16 x) {
    /* 0 <= x < 0x10000  ==>  0 <= x < 2PI */
    return sins((u16)(x + 0x4000));
}
