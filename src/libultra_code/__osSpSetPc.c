#include <ultra64.h>
#include <global.h>
#include <ultra64/hardware.h>

s32 __osSpSetPc(u32 data) {

    register u32 spStatus = HW_REG(SP_STATUS_REG, u32);

    if (!(spStatus & SP_STATUS_HALT)) {
        return -1;
    }

    else {
        HW_REG(SP_PC_REG, u32) = data;
    }

    return 0;
}
