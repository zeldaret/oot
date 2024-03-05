#include "global.h"
#include "terminal.h"

#if OOT_DEBUG
u32 gIsCtrlr2Valid = false;
#endif

NORETURN void func_800D31A0(void) {
    PRINTF(VT_FGCOL(RED) "\n**** Freeze!! ****\n" VT_RST);
    for (;;) {
        Sleep_Msec(1000);
    }
}

#if OOT_DEBUG
void func_800D31F0(void) {
    gIsCtrlr2Valid = (gPadMgr.validCtrlrsMask & 2) != 0;
}

void func_800D3210(void) {
    gIsCtrlr2Valid = false;
}
#endif
