#include "global.h"

u32 gIsCtrlr2Valid = false;

void func_800D31F0(void) {
    gIsCtrlr2Valid = (gPadMgr.validCtrlrsMask & 2) != 0;
}

void func_800D3210(void) {
    gIsCtrlr2Valid = false;
}
