#include "global.h"
#include "vt.h"

u32 gIsCtrlr2Valid = false;

void func_800D31A0(void) {
    osSyncPrintf(T_FGCOL(RED) "\n**** Freeze!! ****\n" T_RST);
    while (true) {
        Sleep_Msec(1000);
    }
}

void func_800D31F0(void) {
    gIsCtrlr2Valid = (gPadMgr.validCtrlrsMask & 2) != 0;
}

void func_800D3210(void) {
    gIsCtrlr2Valid = false;
}
