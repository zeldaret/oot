#include "global.h"

u32 __osSpGetStatus() {
    return HW_REG(SP_STATUS_REG, u32);
}
