#include "global.h"
#include "cic6105.h"
#include "fault.h"
#include "regs.h"

// TODO N64 fault.c functions
void func_800AE1E0_unknown(s32, s32);
void func_800AE258_unknown(const char*, ...);

s32 func_80001714_unknown(void);

struct struct_800067C0 D_800067C0_unknown = {
    0x00000004,
    0x00000000,
    rspbootTextStart,
    0x000003E8,
    // this rspbootTextEnd may be func_80006720_unknown ?
    rspbootTextEnd,
    0x00000020,
    gBuildTeam,
    0x00000008,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
    0x00000000,
};

u32 B_80008EE0;
s32 B_80008EE4_unknown;
FaultClient B_80008EE8_unknown;
s32 B_80008EF8_unknown;
s32 B_80008EFC_unknown;

void func_800014D0_unknown(void) {
    R_AUDIOMGR_DEBUG_LEVEL = AUDIOMGR_DEBUG_LEVEL_NO_RSP;
}

void func_800014E8_unknown(void) {
    R_AUDIOMGR_DEBUG_LEVEL = AUDIOMGR_DEBUG_LEVEL_NONE;
}

void func_800014FC_unknown_ciccfltclient(void) {
    s32 spStatus;

    spStatus = IO_READ(SP_STATUS_REG);
    func_800AE1E0_unknown(48, 200);
    if (spStatus & SP_STATUS_SIG7) {
        func_800AE258_unknown("OCARINA %08x %08x", B_80008EF8_unknown, B_80008EFC_unknown);
    } else {
        func_800AE258_unknown("LEGEND %08x %08x", B_80008EF8_unknown, B_80008EFC_unknown);
    }
    func_800AE1E0_unknown(40, 184);
    func_800AE258_unknown("ROM_F");
    func_800AE258_unknown(" [Creator:%s]", gBuildTeam);
    func_800AE1E0_unknown(56, 192);
    func_800AE258_unknown("[Date:%s]", gBuildDate);
    func_800AE1E0_unknown(96, 32);
    func_800AE258_unknown("I LOVE YOU %08x", func_80001714_unknown());
}

void func_800015E8_unknown_ciccinit(void) {
    Fault_AddClient(&B_80008EE8_unknown, func_800014FC_unknown_ciccfltclient, NULL, NULL);
}

void func_8000161C_unknown_ciccdeinit(void) {
    Fault_RemoveClient(&B_80008EE8_unknown);
}

void func_80001640_unknown(void) {
    struct_80001640_sp38 sp38;
    OSMesgQueue queue;
    OSMesg msg;

    osCreateMesgQueue(&queue, &msg, 1);
    sp38.unk_00 = 0;
    sp38.unk_08 = 2;
    sp38.unk_50 = &queue;
    sp38.unk_54 = 0;
    sp38.unk_0C = 0;
    sp38.unk_10 = D_800067C0_unknown;
    osSendMesg(&B_8011D9B0_unknown.unk_000, &sp38.unk_00, 1);
    Sched_Notify(&gScheduler);
    osRecvMesg(&queue, NULL, 1);
    B_80008EF8_unknown = IO_READ(SP_DMEM_START + 0xFF4);
    B_80008EFC_unknown = IO_READ(SP_DMEM_START + 0xFFC);
    func_80001714_unknown();
}

s32 func_80001714_unknown(void) {
    return 0;
}

void func_80001720(void) {
    B_80008EE0 = IO_READ(0x002FB1F4);
    B_80008EE4_unknown = IO_READ(0x002FE1C0);
}
