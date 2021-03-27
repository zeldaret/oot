#include "global.h"
#include "vt.h"

u32 D_8012DBC0 = false;

void func_800D31A0(void) {
    osSyncPrintf(VT_FGCOL(RED) "\n**** Freeze!! ****\n" VT_RST);
    while (true) {
        Sleep_Msec(1000);
    }
}

void func_800D31F0(void) {
    D_8012DBC0 = (gPadMgr.validCtrlrsMask & 2) != 0;
}

void func_800D3210(void) {
    D_8012DBC0 = false;
}
