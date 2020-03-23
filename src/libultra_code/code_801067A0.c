#include <ultra64.h>
#include <global.h>
#include <ultra64/hardware.h>

s32 func_801067A0(u32 a0) {
    register u32 spStatus;

    spStatus = HW_REG(SP_STATUS_REG, u32);

    if (!(spStatus & SP_STATUS_HALT)) {
        return -1;
    }

    HW_REG(SP_PC_REG, u32) = a0;

    return 0;
}
