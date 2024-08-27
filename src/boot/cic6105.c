#include "global.h"
#include "cic6105.h"
#include "fault.h"

// TODO N64 fault.c functions
void func_800AE1E0_unknown(s32, s32);
void func_800AE258_unknown(const char*, ...);

s32 func_80001714(void);

extern u64 cic6105ucodeTextStart[];

OSTask D_800067C0_unknown = {
    4, 0, rspbootTextStart, 0x3E8, cic6105ucodeTextStart, 0x20, (u64*)gBuildTeam, 8, NULL, 0, NULL, 0, NULL, 0, NULL, 0,
};

s32 B_80008EE0;
s32 B_80008EE4;
FaultClient sCIC6105FaultClient;
s32 B_80008EF8;
s32 B_80008EFC;

void func_800014D0(void) {
    R_AUDIOMGR_DEBUG_LEVEL = AUDIOMGR_DEBUG_LEVEL_NO_RSP;
}

void func_800014E8(void) {
    R_AUDIOMGR_DEBUG_LEVEL = AUDIOMGR_DEBUG_LEVEL_NONE;
}

void CIC6105_FaultClient(void) {
    s32 spStatus;

    spStatus = IO_READ(SP_STATUS_REG);
    func_800AE1E0_unknown(48, 200);
    if (spStatus & SP_STATUS_SIG7) {
        func_800AE258_unknown("OCARINA %08x %08x", B_80008EF8, B_80008EFC);
    } else {
        func_800AE258_unknown("LEGEND %08x %08x", B_80008EF8, B_80008EFC);
    }
    func_800AE1E0_unknown(40, 184);
    func_800AE258_unknown("ROM_F");
    func_800AE258_unknown(" [Creator:%s]", gBuildTeam);
    func_800AE1E0_unknown(56, 192);
    func_800AE258_unknown("[Date:%s]", gBuildDate);
    func_800AE1E0_unknown(96, 32);
    func_800AE258_unknown("I LOVE YOU %08x", func_80001714());
}

void CIC6105_AddFaultClient(void) {
    Fault_AddClient(&sCIC6105FaultClient, CIC6105_FaultClient, NULL, NULL);
}

void CIC6105_RemoveFaultClient(void) {
    Fault_RemoveClient(&sCIC6105FaultClient);
}

void func_80001640(void) {
    OSScTask sp38;
    OSMesgQueue queue;
    OSMesg msg;

    osCreateMesgQueue(&queue, &msg, 1);
    sp38.next = NULL;
    sp38.flags = OS_SC_NEEDS_RSP;
    sp38.msgQueue = &queue;
    sp38.msg = (OSMesg)0;
    sp38.framebuffer = 0;
    sp38.list = D_800067C0_unknown;
    osSendMesg(&gScheduler.cmdQueue, &sp38, OS_MESG_BLOCK);
    Sched_Notify(&gScheduler);
    osRecvMesg(&queue, NULL, 1);
    B_80008EF8 = IO_READ(SP_DMEM_START + 0xFF4);
    B_80008EFC = IO_READ(SP_DMEM_START + 0xFFC);
    func_80001714();
}

s32 func_80001714(void) {
    return 0;
}

void func_80001720(void) {
    B_80008EE0 = IO_READ(0x002FB1F4);
    B_80008EE4 = IO_READ(0x002FE1C0);
}
