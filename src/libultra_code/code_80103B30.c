#include <ultra64.h>
#include <global.h>
#include <ultra64/hardware.h>

u32 func_80103B30()
{
    register u32 status;

    status = HW_REG(SP_STATUS_REG, u32);

    if (status & 0x1C)
        return 1;

    return 0;
}
