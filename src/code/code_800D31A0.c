#include "global.h"
#include "terminal.h"

u32 gIsCtrlr2Valid = false;

void func_800D31A0(void) {
    osSyncPrintf(TE_FGCOL(RED) "\n**** Freeze!! ****\n" TE_RST);
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
