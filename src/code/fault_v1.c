#include "global.h"
#include "terminal.h"
#include "alloca.h"

void Fault_SleepImpl(u32 ms) {
    Sleep_Msec(ms);
}

#ifdef NON_MATCHING
// regalloc
void func_800ADC5C_unknown(void) {
    static Input B_80121B00_unknown;
    do {
        Fault_SleepImpl(0x10);
        PadMgr_RequestPadData(&gPadMgr, &B_80121B00_unknown, 0);
    } while (!CHECK_BTN_ANY(B_80121B00_unknown.press.button,
                            (BTN_A | BTN_B | BTN_START | BTN_CRIGHT | BTN_CLEFT | BTN_CDOWN | BTN_CUP)));
}

#else
void func_800ADC5C_unknown(void);
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800ADC5C_unknown.s")
#endif

void func_800ADCD8_unknown(void) {
    func_800ADC5C_unknown();
}

extern struct {
    char unk0[0x5CC];
    s32 unk5CC_fbPtr;
    u16 unk5D0_fbWidth; // "B_80122130_unknown"
} B_80121B60_unknown;

// Fault_DrawRec
void func_800ADD14_unknown(s32 x, s32 y, s32 w, s32 h, u16 color) {
    s32 temp_a3;
    s32 i;
    s32 j;
    u16* fbPtr;

    fbPtr = (B_80121B60_unknown.unk5D0_fbWidth * y * 2) + B_80121B60_unknown.unk5CC_fbPtr + (x * 2);

    for (i = 0; i < h; i++) {
        j = 0;
        for (j = 0; j < w; j++) {
            *fbPtr = color;
            fbPtr++;
        }
        fbPtr += (B_80121B60_unknown.unk5D0_fbWidth - w);
    }
    osWritebackDCacheAll();
}

void func_800ADDF0_unknown(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    func_800ADD14_unknown(arg0, arg1, arg2, arg3, 1);
}

extern s32 D_800FF560_unknown[];
extern u16 D_800FF9C0_unknown;

// Fault_DrawChar
void func_800ADE30_unknown(s32 x, s32 y, char c) {
    s32* dataPtr;
    s32 shift = c % 4;
    s32 i;
    s32 j;
    u16* fbPtr;
    u32 data;

    dataPtr = D_800FF560_unknown + ((c / 8 * 0x10) + ((c & 4) >> 2));
    fbPtr = (B_80121B60_unknown.unk5D0_fbWidth * y * 2) + B_80121B60_unknown.unk5CC_fbPtr + (x * 2);

    for (i = 0; i < 8; i++) {
        u32 mask;

        mask = (1 << 28) << shift;
        data = *dataPtr;
        for (j = 0; j < 8; j++) {
            if (mask & data) {
                *fbPtr = D_800FF9C0_unknown;
            }
            fbPtr++;
            mask >>= 4;
        }
        dataPtr += 2;
        fbPtr += B_80121B60_unknown.unk5D0_fbWidth - 8;
    }
    osWritebackDCacheAll();
}

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800ADF4C_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800ADF90_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800ADFE4_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AE020_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AE05C_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AE064_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AE170_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AE1E0_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AE1F8_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AE258_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AE2B8_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AE35C_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AE408_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AE4C0_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AE558_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AE998_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AEC94_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AED1C_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AF0E0_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AF1C4_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AF304_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AF370_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AF3DC_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AF4DC_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AF558_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/Fault_AddClient.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/Fault_RemoveClient.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AF720_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AF7F0_unknown.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/Fault_SetFrameBuffer.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/Fault_Init.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/Fault_AddHungupAndCrashImpl.s")
#endif

#ifdef NON_MATCHING
//
#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/Fault_AddHungupAndCrash.s")
#endif
