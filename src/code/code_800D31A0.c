#include <global.h>
#include <padmgr.h>
#include <vt.h>

extern PadMgr gPadMgr;

u32 D_8012DBC0 = false;

void func_800D31A0() {
    osSyncPrintf(VT_FGCOL(RED) "\n**** Freeze!! ****\n" VT_RST);
    while (true) {
        Sleep_Msec(1000);
    }
}

void func_800D31F0() {
    PadMgr* padMgr = (PadMgr*)(u32)&gPadMgr; // cast required to match

    D_8012DBC0 = (padMgr->unk_2A8 & 2) != 0;
}

void func_800D3210() {
    D_8012DBC0 = false;
}
