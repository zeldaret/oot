#include "global.h"

void __osSpSetStatus(u32 a0) {
    HW_REG(SP_STATUS_REG, u32) = a0;
}
