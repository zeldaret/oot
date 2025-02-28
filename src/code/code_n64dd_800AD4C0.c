#include "fault.h"
#include "n64dd.h"
#include "regs.h"
#include "segmented_address.h"
#include "z64actor.h"
#include "z64cutscene.h"
#include "z64save.h"

n64ddStruct_800FEE70_pointers D_800FEE70 = {
    func_801C7C1C,
    NULL,
    NULL,
    Fault_RemoveClient,
    Fault_AddClient,
    Fault_DrawText,
    Fault_WaitForInput,
    Fault_AddHungupAndCrashImpl,
    Fault_AddHungupAndCrash,
    func_800AD598,
    _Printf,
    osCreateThread,
    osDestroyThread,
    osYieldThread,
    osStartThread,
    osStopThread,
    osGetThreadId,
    osSetThreadPri,
    osGetThreadPri,
    osCreateMesgQueue,
    osSendMesg,
    osJamMesg,
    osRecvMesg,
    osSetEventMesg,
    osGetIntMask,
    osSetIntMask,
    osInvalDCache,
    osInvalICache,
    osWritebackDCache,
    osWritebackDCacheAll,
    osGetTime,
    osSetTime,
    osSetTimer,
    osStopTimer,
    &gSaveContext,
    DmaMgr_RequestAsync,
    DmaMgr_RequestSync,
    DmaMgr_DmaFromDriveRom,
    Cutscene_HandleEntranceTriggers,
    gSegments,
    Flags_GetEventChkInf,
    Flags_SetEventChkInf,
    NULL, // TODO possibly file padding
    NULL,
};

n64ddStruct_80121220* B_80121220;

n64ddStruct_80121220* func_800AD4C0(n64ddStruct_80121220* arg0) {
    n64ddStruct_800FEE70_pointers* temp_a0 = func_800AD560();

    if (arg0 != NULL && arg0->unk_00 != NULL) {
        arg0->unk_00(temp_a0, arg0);
    }
    B_80121220 = arg0;
    return B_80121220;
}

void func_800AD51C(void) {
    if ((B_80121220 != NULL) && (B_80121220->unk_04 != NULL)) {
        B_80121220->unk_04();
    }
    B_80121220 = NULL;
}

n64ddStruct_800FEE70_pointers* func_800AD560(void) {
    D_800FEE70.unk_04 = 0;
    D_800FEE70.unk_08 = gRegEditor;
    D_800FEE70.unk_88 = &gSaveContext;
    return &D_800FEE70;
}

void func_800AD590(void) {
}

void func_800AD598(s32 arg0, s32 arg1, s32 arg2) {
}
