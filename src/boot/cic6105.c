/**
 * @file cic6105.c
 *
 * This file implements routines relating to the CIC X105 anti-piracy measures present in N64 releases.
 *
 * The "authentication" chain begins in IPL3, which deposits specific expected values into RAM and runs an RSP task in
 * parallel with loading the boot segment into RAM. This RSP task leaves data in the RSP's registers which rspboot and
 * the CIC6105 RSP task later read according to routines in this file. Their security model relied on CICs being
 * uncloneable with scarcely many donor CIC options from other games available at the time, in which case IPL3 would be
 * unmodifiable. The rest of the chain is designed with a "security through obscurity" mindset, storing later antipiracy
 * checks intermixed with other game code or RSP code that was expected to be non-trivial to analyze in a timely
 * fashion. Notably this effort did little to curb emulation, almost wholly due to early emulators being insufficiently
 * accurate to run RSP code or even IPL3 at a low level, sidestepping much of the early setup in favor of providing a
 * known-good post-boot state to begin emulation from.
 */
#pragma increment_block_number "ntsc-1.0:132 ntsc-1.1:132 ntsc-1.2:132 pal-1.0:132 pal-1.1:132"
#include "audiomgr.h"
#include "build.h"
#include "cic6105.h"
#include "fault.h"
#include "regs.h"
#include "sched.h"

s32 CIC6105_Stub(void);

OSTask sCIC6105Task = {
    // clang-format off
    4,
    0,
    rspbootTextStart, 0x3E8,
    cic6105TextStart, 0x20,
    (u64*)gBuildCreator, 8,
    NULL, 0,
    NULL, NULL,
    NULL, 0,
    NULL, 0,
    // clang-format on
};

u32 gCICBootMagic0;
u32 gCICBootMagic1;
FaultClient sCIC6105FaultClient;
u32 sCICTaskResult0;
u32 sCICTaskResult1;

void CIC6105_DisableAudio(void) {
    R_AUDIOMGR_ACTIVITY_LEVEL = AUDIOMGR_ACTIVITY_LEVEL_NO_RSP;
}

void CIC6105_EnableAudio(void) {
    R_AUDIOMGR_ACTIVITY_LEVEL = AUDIOMGR_ACTIVITY_LEVEL_ALL;
}

void CIC6105_FaultClient(void) {
    u32 spStatus = IO_READ(SP_STATUS_REG);

    Fault_SetCursor(48, 200);
    // Signal 7 is set by rspboot when it is first executed, corresponding to
    // whether rspboot's antipiracy checks passed. Signal 7 is expected to
    // stay set for the entire duration of the game running.
    if (spStatus & SP_STATUS_SIG7) {
        Fault_Printf("OCARINA %08x %08x", sCICTaskResult0, sCICTaskResult1);
    } else {
        Fault_Printf("LEGEND %08x %08x", sCICTaskResult0, sCICTaskResult1);
    }
    Fault_SetCursor(40, 184);
    Fault_Printf("ROM_F");
    Fault_Printf(" [Creator:%s]", gBuildCreator);
    Fault_SetCursor(56, 192);
    Fault_Printf("[Date:%s]", gBuildDate);
#if OOT_VERSION < PAL_1_0
    Fault_SetCursor(128, 24);
#else
    Fault_SetCursor(96, 32);
#endif
    Fault_Printf("I LOVE YOU %08x", CIC6105_Stub());
}

void CIC6105_AddFaultClient(void) {
    Fault_AddClient(&sCIC6105FaultClient, CIC6105_FaultClient, NULL, NULL);
}

void CIC6105_RemoveFaultClient(void) {
    Fault_RemoveClient(&sCIC6105FaultClient);
}

void CIC6105_RunBootTask(void) {
    OSScTask scTask;
    OSMesgQueue queue;
    OSMesg msg;

    // Prepare the CIC6105 task
    osCreateMesgQueue(&queue, &msg, 1);
    scTask.next = NULL;
    scTask.flags = OS_SC_NEEDS_RSP;
    scTask.msgQueue = &queue;
    scTask.msg = (OSMesg)0;
    scTask.framebuffer = NULL;
    scTask.list = sCIC6105Task;
    // Send it to the scheduler for execution
    osSendMesg(&gScheduler.cmdQueue, &scTask, OS_MESG_BLOCK);
    Sched_Notify(&gScheduler);
    // Blocking wait until completion
    osRecvMesg(&queue, NULL, OS_MESG_BLOCK);
    // Retrieve results from RSP DMEM, it is assumed no other RSP task is running
    sCICTaskResult0 = IO_READ(SP_DMEM_START + 0xFF4);
    sCICTaskResult1 = IO_READ(SP_DMEM_START + 0xFFC);
    CIC6105_Stub();
}

s32 CIC6105_Stub(void) {
    return 0;
}

void CIC6105_SaveBootMagicValues(void) {
    // IPL3 writes two magic values into RDRAM during the boot process into fixed locations.
    // These must be retrieved early before memory is claimed by game memory management systems.
    gCICBootMagic0 = IO_READ(0x002FB1F4);
    gCICBootMagic1 = IO_READ(0x002FE1C0);
}
