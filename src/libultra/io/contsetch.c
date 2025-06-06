#include "ultra64.h"

/*
 * s32 osContSetCh(u8 ch)
 * This function specifies the number of devices for the functions to access when those functions access to multiple
 * direct SI devices.
 */
s32 osContSetCh(u8 ch) {
    s32 ret = 0;

    __osSiGetAccess();

    if (ch > MAXCONTROLLERS) {
        __osMaxControllers = MAXCONTROLLERS;
    } else {
        __osMaxControllers = ch;
    }

    __osContLastCmd = CONT_CMD_END;
    __osSiRelAccess();
    return ret;
}
