#include "global.h"
#include "fault.h"
#include "n64dd.h"

// TODO functions of unknown prototype
extern char func_801C8510_unknown[];
extern char osGetIntMask[];
extern char osSetTime[];

n64ddStruct_800FF4B0_pointers D_800FF4B0 = {
    func_801C8510_unknown,
    NULL,
    NULL,
    Fault_RemoveClient,
    Fault_AddClient,
    FaultDrawer_DrawText,
    Fault_WaitForInput,
    Fault_AddHungupAndCrashImpl,
    Fault_AddHungupAndCrash,
    func_800ADC08,
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

n64ddStruct_80121AF0* B_80121AF0;

n64ddStruct_80121AF0* func_800ADB30(n64ddStruct_80121AF0* arg0) {
    n64ddStruct_800FF4B0_pointers* temp_a0 = func_800ADBD0();

    if (arg0 != NULL && arg0->unk_00 != NULL) {
        arg0->unk_00(temp_a0, arg0);
    }
    B_80121AF0 = arg0;
    return B_80121AF0;
}

void func_800ADB8C(void) {
    if ((B_80121AF0 != NULL) && (B_80121AF0->unk_04 != NULL)) {
        B_80121AF0->unk_04();
    }
    B_80121AF0 = NULL;
}

n64ddStruct_800FF4B0_pointers* func_800ADBD0(void) {
    D_800FF4B0.unk_04 = 0;
    D_800FF4B0.unk_08 = gRegEditor;
    D_800FF4B0.unk_88 = &gSaveContext;
    return &D_800FF4B0;
}

void func_800ADC00(void) {
}

void func_800ADC08(s32 arg0, s32 arg1, s32 arg2) {
}
