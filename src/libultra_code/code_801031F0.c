#include "libultra_internal.h"
#include <global.h>

#pragma GLOBAL_ASM("asm/non_matchings/code/code_801031F0/func_801031F0.s")

/**
 * osContStartQuery:
 * Starts to read the values for SI device status and type which are connected to the controller port and joyport connector.
**/

s32 osContStartQuery(OSMesgQueue* mq) {
    s32 ret;
    ret = 0;

    __osSiGetAccess();
    if (_osCont_lastPollType != CONT_CMD_REQUEST_STATUS) {
        __osPackRequestData(CONT_CMD_REQUEST_STATUS);
        ret = __osSiRawStartDma(OS_WRITE, &_osPifInternalBuff);
        osRecvMesg(mq, NULL, OS_MESG_BLOCK);
    }
    ret = __osSiRawStartDma(OS_READ, &_osPifInternalBuff);
    _osCont_lastPollType = CONT_CMD_REQUEST_STATUS;
    __osSiRelAccess();
    return ret;
}

/**
 * osContGetQuery:
 * Returns the values from osContStartQuery to status. Both functions must be paired for use.
**/

void osContGetQuery(OSContStatus* data)
{
    u8 pattern;
    __osContGetInitData(&pattern, data);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/code_801031F0/func_801032B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/code_801031F0/func_80103A70.s")
