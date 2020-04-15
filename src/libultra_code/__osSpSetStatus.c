#include <ultra64.h>
#include <global.h>
#include <ultra64/hardware.h>

void __osSpSetStatus(u32 a0) {
    HW_REG(SP_STATUS_REG, u32) = a0;
}
