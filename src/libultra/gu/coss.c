#include "global.h"

/**
 * @param angle binang
 * @return cos(angle)*0x7FFF
 */
s16 coss(u16 angle) {
    return sins(angle + 0x4000);
}
