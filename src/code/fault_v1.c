#include "global.h"
#include "terminal.h"
#include "alloca.h"

void Fault_SleepImpl(u32 ms) {
    Sleep_Msec(ms);
}

extern Input B_80121B00_unknown;

#ifdef NON_MATCHING
void func_800ADC5C_unknown(void) {
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
    FaultClient* B_80122134_unknown;
} B_80121B60_unknown;

// Fault_DrawRec
void func_800ADD14_unknown(s32 x, s32 y, s32 w, s32 h, u16 color) {
    s32 temp_a3;
    s32 i;
    s32 j;
    u16* fbPtr;

    fbPtr = (void*)((B_80121B60_unknown.unk5D0_fbWidth * y * 2) + B_80121B60_unknown.unk5CC_fbPtr + (x * 2));

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
    fbPtr = (void*)((B_80121B60_unknown.unk5D0_fbWidth * y * 2) + B_80121B60_unknown.unk5CC_fbPtr + (x * 2));

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

void func_800ADF4C_unknown(s32 arg0, s32 arg1, u8 arg2) {
    func_800ADE30_unknown(arg0, arg1, arg2);
}

void func_800ADF90_unknown(u16 arg0) {
    func_800ADD14_unknown(22, 16, 8, 1, arg0);
}

void func_800ADFE4_unknown(void) {
    func_800ADF90_unknown(0xF801);
}

void func_800AE020_unknown(void) {
    func_800ADF90_unknown(0xFFC1);
}

void func_800AE05C_unknown(void) {
}

struct FaultCursorCoords {
    s32 unk0; // x
    s32 unk4; // y
};

void* func_800AE064_unknown(void* arg, const char* str, size_t len) {
    struct FaultCursorCoords* coords = arg;

    for (; len != 0; len--, str++) {
        if (*str == 0xA) {
            coords->unk0 = 320;
        } else {
            func_800ADF4C_unknown(coords->unk0, coords->unk4, *str);
            coords->unk0 += 6;
        }
        if (coords->unk0 >= 277) {
            coords->unk0 = 22;
            coords->unk4 += 8;
            if (coords->unk4 >= 209) {
                func_800ADC5C_unknown();
                func_800ADDF0_unknown(22, 16, 276, 208);
                coords->unk4 = 16;
            }
        }
    }
    return coords;
}

void func_800AE170_unknown(s32 x, s32 y, const char* fmt, ...) {
    va_list args;
    struct FaultCursorCoords sp1C;

    va_start(args, fmt);

    sp1C.unk0 = x - 8;
    sp1C.unk4 = y;
    _Printf(func_800AE064_unknown, &sp1C, fmt, args);

    va_end(args);
}

extern struct FaultCursorCoords B_80122558_unknown; // type?

void func_800AE1E0_unknown(s32 arg0, s32 arg1) {
    B_80122558_unknown.unk0 = arg0;
    B_80122558_unknown.unk4 = arg1;
}

void func_800AE1F8_unknown(void) {
    func_800ADDF0_unknown(0x16, 0x10, 0x114, 0xD0);
    B_80122558_unknown.unk0 = 0x16;
    B_80122558_unknown.unk4 = 0x10;
}

void func_800AE258_unknown(const char* fmt, ...) {
    va_list args;

    va_start(args, fmt);
    _Printf(func_800AE064_unknown, &B_80122558_unknown, fmt, args);
    va_end(args);
}

// Fault_PrintFReg
void func_800AE2B8_unknown(s32 x, s32 y, s32 idx, f32* value) {
    u32 raw = *(u32*)value;
    s32 exp = ((raw & 0x7F800000) >> 0x17) - 0x7F;

    if (((exp >= -0x7E) && (exp < 0x80)) || (raw == 0)) {
        func_800AE170_unknown(x, y, "F%02d:%.7e", idx, *value);
    } else {
        func_800AE170_unknown(x, y, "F%02d:-------------", idx);
    }
}

// Fault_LogFReg
void func_800AE35C_unknown(s32 idx, f32* value) {
    u32 raw = *(u32*)value;
    s32 exp = ((raw & 0x7F800000) >> 0x17) - 0x7F;

    if (((exp >= -0x7E) && (exp < 0x80)) || (raw == 0)) {
        osSyncPrintf("F%02d:%.7e     ", idx, *value);
    } else {
        osSyncPrintf("F%02d:-------------     ", idx);
    }
}

extern const char* D_800FF9A8_unknown[]; // sFpExceptionNames

// Fault_PrintFPCSR
void func_800AE408_unknown(s32 x, s32 y, s32 value) {
    s32 i;
    u32 mask = 0x20000;

    func_800AE170_unknown(x, y, "FPCSR:%08xH", value);

    for (i = 0; i < 6; i++) {
        if (value & mask) {
            func_800AE170_unknown(x + 100, y, "(%s)", D_800FF9A8_unknown[i]);
            break;
        }

        mask >>= 1;
    }
}

// Fault_LogFPCSR
void func_800AE4C0_unknown(s32 value) {
    s32 i;
    u32 mask = 0x20000;

    osSyncPrintf("FPCSR:%08xH  ", value);

    for (i = 0; i < 6; i++) {
        if (value & mask) {
            osSyncPrintf("(%s)\n", D_800FF9A8_unknown[i]);
            break;
        }

        mask >>= 1;
    }
}

extern const char* D_800FF960_unknown[]; // sExceptionNames
// Fault_PrintThreadContext
void func_800AE558_unknown(OSThread* thread) {
    __OSThreadContext* ctx = &thread->context;
    s32 y;
    s16 causeStrIdx = _SHIFTR((u32)thread->context.cause, 2, 5);

    if (causeStrIdx == 0x17) {
        causeStrIdx = 0x10;
    }
    if (causeStrIdx == 0x1F) {
        causeStrIdx = 0x11;
    }

    func_800ADDF0_unknown(0x16, 0x10, 0x114, 0x18);

    y = 20;
    func_800AE170_unknown(0x1E, y, "THREAD:%d (%d:%s)", thread->id, causeStrIdx, D_800FF960_unknown[causeStrIdx]);

    y += 9;
    func_800AE170_unknown(0x1E, y, "PC:%08xH   SR:%08xH   VA:%08xH", ctx->pc, ctx->sr, ctx->badvaddr);

    y += 13;
    func_800ADDF0_unknown(0x16, 0x28, 0x114, 0xB8);
    func_800AE170_unknown(0x1E, y, "AT:%08xH   V0:%08xH   V1:%08xH", (u32)ctx->at, (u32)ctx->v0, (u32)ctx->v1);
    y += 9;
    func_800AE170_unknown(0x1E, y, "A0:%08xH   A1:%08xH   A2:%08xH", (u32)ctx->a0, (u32)ctx->a1, (u32)ctx->a2);
    y += 9;
    func_800AE170_unknown(0x1E, y, "A3:%08xH   T0:%08xH   T1:%08xH", (u32)ctx->a3, (u32)ctx->t0, (u32)ctx->t1);
    y += 9;
    func_800AE170_unknown(0x1E, y, "T2:%08xH   T3:%08xH   T4:%08xH", (u32)ctx->t2, (u32)ctx->t3, (u32)ctx->t4);
    y += 9;
    func_800AE170_unknown(0x1E, y, "T5:%08xH   T6:%08xH   T7:%08xH", (u32)ctx->t5, (u32)ctx->t6, (u32)ctx->t7);
    y += 9;
    func_800AE170_unknown(0x1E, y, "S0:%08xH   S1:%08xH   S2:%08xH", (u32)ctx->s0, (u32)ctx->s1, (u32)ctx->s2);
    y += 9;
    func_800AE170_unknown(0x1E, y, "S3:%08xH   S4:%08xH   S5:%08xH", (u32)ctx->s3, (u32)ctx->s4, (u32)ctx->s5);
    y += 9;
    func_800AE170_unknown(0x1E, y, "S6:%08xH   S7:%08xH   T8:%08xH", (u32)ctx->s6, (u32)ctx->s7, (u32)ctx->t8);
    y += 9;
    func_800AE170_unknown(0x1E, y, "T9:%08xH   GP:%08xH   SP:%08xH", (u32)ctx->t9, (u32)ctx->gp, (u32)ctx->sp);
    y += 9;
    func_800AE170_unknown(0x1E, y, "S8:%08xH   RA:%08xH   LO:%08xH", (u32)ctx->s8, (u32)ctx->ra, (u32)ctx->lo);

    y += 13;
    func_800AE408_unknown(0x1E, y, ctx->fpcsr);

    y += 13;
    func_800AE2B8_unknown(0x1E, y, 0, &ctx->fp0.f.f_even);
    func_800AE2B8_unknown(0xA0, y, 2, &ctx->fp2.f.f_even);
    y += 9;
    func_800AE2B8_unknown(0x1E, y, 4, &ctx->fp4.f.f_even);
    func_800AE2B8_unknown(0xA0, y, 6, &ctx->fp6.f.f_even);
    y += 9;
    func_800AE2B8_unknown(0x1E, y, 8, &ctx->fp8.f.f_even);
    func_800AE2B8_unknown(0xA0, y, 0xA, &ctx->fp10.f.f_even);
    y += 9;
    func_800AE2B8_unknown(0x1E, y, 0xC, &ctx->fp12.f.f_even);
    func_800AE2B8_unknown(0xA0, y, 0xE, &ctx->fp14.f.f_even);
    y += 9;
    func_800AE2B8_unknown(0x1E, y, 0x10, &ctx->fp16.f.f_even);
    func_800AE2B8_unknown(0xA0, y, 0x12, &ctx->fp18.f.f_even);
    y += 9;
    func_800AE2B8_unknown(0x1E, y, 0x14, &ctx->fp20.f.f_even);
    func_800AE2B8_unknown(0xA0, y, 0x16, &ctx->fp22.f.f_even);
    y += 9;
    func_800AE2B8_unknown(0x1E, y, 0x18, &ctx->fp24.f.f_even);
    func_800AE2B8_unknown(0xA0, y, 0x1A, &ctx->fp26.f.f_even);
    y += 9;
    func_800AE2B8_unknown(0x1E, y, 0x1C, &ctx->fp28.f.f_even);
    func_800AE2B8_unknown(0xA0, y, 0x1E, &ctx->fp30.f.f_even);

    osWritebackDCacheAll();
}

void func_800AE998_unknown(OSThread* thread) {
    __OSThreadContext* ctx = &thread->context;
    s16 causeStrIdx = ((u32)thread->context.cause >> 2) & 0x1F;

    if (causeStrIdx == 0x17) {
        causeStrIdx = 0x10;
    }
    if (causeStrIdx == 0x1F) {
        causeStrIdx = 0x11;
    }

    osSyncPrintf("\n");
    osSyncPrintf("THREAD ID:%d (%d:%s)\n", thread->id, causeStrIdx, D_800FF960_unknown[causeStrIdx]);
    osSyncPrintf("PC:%08xH   SR:%08xH   VA:%08xH\n", ctx->pc, ctx->sr, ctx->badvaddr);
    osSyncPrintf("AT:%08xH   V0:%08xH   V1:%08xH\n", (u32)ctx->at, (u32)ctx->v0, (u32)ctx->v1);
    osSyncPrintf("A0:%08xH   A1:%08xH   A2:%08xH\n", (u32)ctx->a0, (u32)ctx->a1, (u32)ctx->a2);
    osSyncPrintf("A3:%08xH   T0:%08xH   T1:%08xH\n", (u32)ctx->a3, (u32)ctx->t0, (u32)ctx->t1);
    osSyncPrintf("T2:%08xH   T3:%08xH   T4:%08xH\n", (u32)ctx->t2, (u32)ctx->t3, (u32)ctx->t4);
    osSyncPrintf("T5:%08xH   T6:%08xH   T7:%08xH\n", (u32)ctx->t5, (u32)ctx->t6, (u32)ctx->t7);
    osSyncPrintf("S0:%08xH   S1:%08xH   S2:%08xH\n", (u32)ctx->s0, (u32)ctx->s1, (u32)ctx->s2);
    osSyncPrintf("S3:%08xH   S4:%08xH   S5:%08xH\n", (u32)ctx->s3, (u32)ctx->s4, (u32)ctx->s5);
    osSyncPrintf("S6:%08xH   S7:%08xH   T8:%08xH\n", (u32)ctx->s6, (u32)ctx->s7, (u32)ctx->t8);
    osSyncPrintf("T9:%08xH   GP:%08xH   SP:%08xH\n", (u32)ctx->t9, (u32)ctx->gp, (u32)ctx->sp);
    osSyncPrintf("S8:%08xH   RA:%08xH   LO:%08xH\n", (u32)ctx->s8, (u32)ctx->ra, (u32)ctx->lo);
    osSyncPrintf("\n");

    func_800AE4C0_unknown((s32)ctx->fpcsr);
    osSyncPrintf("\n");
    func_800AE35C_unknown(0, &ctx->fp0.f.f_even);
    func_800AE35C_unknown(2, &ctx->fp2.f.f_even);
    osSyncPrintf("\n");
    func_800AE35C_unknown(4, &ctx->fp4.f.f_even);
    func_800AE35C_unknown(6, &ctx->fp6.f.f_even);
    osSyncPrintf("\n");
    func_800AE35C_unknown(8, &ctx->fp8.f.f_even);
    func_800AE35C_unknown(0xA, &ctx->fp10.f.f_even);
    osSyncPrintf("\n");
    func_800AE35C_unknown(0xC, &ctx->fp12.f.f_even);
    func_800AE35C_unknown(0xE, &ctx->fp14.f.f_even);
    osSyncPrintf("\n");
    func_800AE35C_unknown(0x10, &ctx->fp16.f.f_even);
    func_800AE35C_unknown(0x12, &ctx->fp18.f.f_even);
    osSyncPrintf("\n");
    func_800AE35C_unknown(0x14, &ctx->fp20.f.f_even);
    func_800AE35C_unknown(0x16, &ctx->fp22.f.f_even);
    osSyncPrintf("\n");
    func_800AE35C_unknown(0x18, &ctx->fp24.f.f_even);
    func_800AE35C_unknown(0x1A, &ctx->fp26.f.f_even);
    osSyncPrintf("\n");
    func_800AE35C_unknown(0x1C, &ctx->fp28.f.f_even);
    func_800AE35C_unknown(0x1E, &ctx->fp30.f.f_even);
    osSyncPrintf("\n");
}

// Fault_FindFaultedThread
OSThread* func_800AEC94_unknown(void) {
    OSThread* thread = __osGetActiveQueue();

    // OS_PRIORITY_THREADTAIL indicates the end of the thread queue
    while (thread->priority != OS_PRIORITY_THREADTAIL) {
        if (thread->priority > OS_PRIORITY_IDLE && thread->priority < OS_PRIORITY_APPMAX &&
            (thread->flags & (OS_FLAG_CPU_BREAK | OS_FLAG_FAULT))) {
            return thread;
        }
        thread = thread->tlnext;
    }
    return NULL;
}

#ifdef NON_MATCHING

void func_800AED1C_unknown(void) {
    Input* input = &B_80121B00_unknown;
    u16 btnPress;
    u16 btnCur;
    OSTime comboStartTime;
    s32 x;
    s32 y;
    s32 count;

    osSyncPrintf("\x1b[37mKeyWaitB (ＬＲＺ \x1b[37m上\x1b[33m下 \x1b[33m上\x1b[37m下 \x1b[37m左\x1b[33m左 "
                 "\x1b[33m右\x1b[37m右 \x1b[32mＢ\x1b[34mＡ\x1b[31mSTART\x1b[37m)\x1b[m\n");
    x = 0;
    y = 0;
    count = 0;
    while (x != 0xB) {
        if ((count % 30) == 0) {
            func_800AE020_unknown();
        }
        count++;

        Fault_SleepImpl(1000 / 60);
        PadMgr_RequestPadData(&gPadMgr, input, 0);
        btnCur = input->cur.button;
        btnPress = input->press.button;
        if ((btnCur == 0) && (y == 1)) {
            y = 0;
            osSyncPrintf("x=%d y=%d\n", x, y);
        } else if (btnPress != 0) {
            if (y == 1) {
                x = 0;
                osSyncPrintf("x=%d y=%d\n", x, y);
            }
            switch (x) {
                case 0x0:
                    if ((btnCur == (BTN_Z | BTN_L | BTN_R)) && (btnPress == BTN_Z)) {
                        x = 1;
                        y = 1;
                        comboStartTime = osGetTime();
                    }
                    break;

                case 1:
                    if (btnPress == BTN_DUP) {
                        x = 2;
                    } else {
                        x = 0;
                    }
                    break;

                case 0x2:
                    x = 3;
                    if (btnPress == BTN_CDOWN) {
                        y = 1;
                    } else {
                        x = 0;
                    }
                    break;

                case 0x3:
                    if (btnPress == BTN_CUP) {
                        x = 4;
                    } else {
                        x = 0;
                    }
                    break;

                case 0x4:
                    x = 5;
                    if (btnPress == BTN_DDOWN) {
                        y = 1;
                    } else {
                        x = 0;
                    }
                    break;

                case 0x5:
                    if (btnPress == BTN_DLEFT) {
                        x = 6;
                    } else {
                        x = 0;
                    }
                    break;

                case 0x6:
                    x = 7;
                    if (btnPress == BTN_CLEFT) {
                        y = 1;
                    } else {
                        x = 0;
                    }
                    break;

                case 0x7:
                    if (btnPress == BTN_CRIGHT) {
                        x = 8;
                    } else {
                        x = 0;
                    }
                    break;

                case 0x8:
                    x = 9;
                    if (btnPress == BTN_DRIGHT) {
                        y = 1;
                    } else {
                        x = 0;
                    }
                    break;

                case 0x9:
                    if (btnPress == (BTN_A | BTN_B)) {
                        x = 0xA;
                    } else if (btnPress == BTN_A) {
                        x = 0x5B;
                    } else if (btnPress == BTN_B) {
                        x = 0x5C;
                    } else {
                        x = 0;
                    }
                    break;

                case 0x5B:
                    if (btnPress == BTN_B) {
                        x = 0xA;
                    } else {
                        x = 0;
                    }
                    break;

                case 0x5C:
                    if (btnPress == BTN_A) {
                        x = 0xA;
                    } else {
                        x = 0;
                    }
                    break;

                case 0xA:
                    if ((btnCur == (BTN_A | BTN_B | BTN_START)) && (btnPress == BTN_START)) {
                        f32 comboTimeS = OS_CYCLES_TO_USEC(osGetTime() - comboStartTime) / 1000000.0f;

                        osSyncPrintf("入力時間 %f 秒\n", comboTimeS);
                        if (comboTimeS <= 50.0f) {
                            x = 0xB;
                        } else {
                            x = 0;
                        }
                    } else {
                        x = 0;
                    }
                    break;

                default:
                    break;
            }
        }
    }
}

#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800AED1C_unknown.s")
#endif

extern s32 D_80105A90_unknown;

void func_800AF0E0_unknown(void) {
    s32 var_s0;

    func_800ADDF0_unknown(0x16, 0x10, 0x114, 0xD0);
    func_800AE170_unknown(0x28, 0x1E, "SegmentBaseAddress");

    for (var_s0 = 0; var_s0 < 0x10; var_s0++) {
        func_800AE170_unknown(0x28, 0x28 + 8 * var_s0, "%2d:%08x", var_s0, gSegments[var_s0]);
    }
    func_800AE170_unknown(0x28, 0xB4, "Arena_failcnt = %d", D_80105A90_unknown);
}

void func_800AF1C4_unknown(const char* title, void* memory, void* arg2) {
    const char* effectiveTitle;
    s32 x;
    s32 y;
    u32* ptr;

    ptr = (u32*)((u32)memory & ~3);
    func_800ADDF0_unknown(0x16, 0x10, 0x114, 0xD0);
    if (title != NULL) {
        effectiveTitle = title;
    } else {
        effectiveTitle = "PrintDump";
    }
    func_800AE170_unknown(0x24, 0x12, "%s %08x", effectiveTitle, ptr);
    if ((u32)ptr >= 0x80000000) {
        if ((u32)ptr <= 0x80400000) {
            for (y = 28; y != 226; y += 9) {
                func_800AE170_unknown(28, y, "%06x", ptr);
                for (x = 82; x < 290; x += 52) {
                    func_800AE170_unknown(x, y, "%08x", *(ptr++));
                }
            }
        }
    }
}

void func_800AF304_unknown(OSThread* arg0) {
    u32* temp_v0 = (u32*)arg0->context.pc;

    if ((temp_v0 >= (u32*)0x80000020) && (temp_v0 <= (u32*)0x80400000)) {
        func_800AF1C4_unknown("PC Trace", temp_v0 - 0x20, NULL);
    }
}

void func_800AF370_unknown(OSThread* arg0) {
    u32* temp_t7 = (u32*)(u32)arg0->context.sp;

    if ((temp_t7 >= (u32*)0x80000020) && (temp_t7 <= (u32*)0x80400000)) {
        func_800AF1C4_unknown("Stack Trace", temp_t7, NULL);
    }
}

extern s32 B_80122570_unknown[];

void func_800AF3DC_unknown(void) {
    s32 i;

    func_800ADDF0_unknown(0x16, 0x10, 0x114, 0xD0);
    func_800AE170_unknown(0x24, 0x12, "ROM DEBUG");

    for (i = 0; i < 0x10; i++) {
        func_800AE170_unknown(((i % 4) * 0x34) + 0x52, ((i / 4) * 9) + 0x1C, "%08x", B_80122570_unknown[i]);
    }
}

void func_800AF4DC_unknown(OSThread* thread) {
    thread->context.cause = 0;
    thread->context.fpcsr = 0;
    thread->context.pc += 4;
    *(s32*)thread->context.pc = 0xD;
    osWritebackDCache(thread->context.pc, 4);
    osInvalICache(thread->context.pc, 4);
    osStartThread(thread);
}

void func_800AF558_unknown(void) {
    osViBlack(false);
    if (osViGetCurrentFramebuffer() >= (void*)0x80100000) {
        B_80121B60_unknown.unk5CC_fbPtr = osViGetCurrentFramebuffer();
    } else {
        B_80121B60_unknown.unk5CC_fbPtr = (void*)(PHYS_TO_K0(osMemSize) - sizeof(u16[SCREEN_HEIGHT][SCREEN_WIDTH]));
        osViSwapBuffer((void*)B_80121B60_unknown.unk5CC_fbPtr);
    }
}

#ifdef NON_MATCHING

void Fault_AddClient(FaultClient* client, void* callback, void* arg0, void* arg1) {
    OSIntMask savedIntMask;

    savedIntMask = osSetIntMask(1);

    client->callback = callback;
    client->arg0 = arg0;
    client->arg1 = arg1;
    client->next = B_80121B60_unknown.B_80122134_unknown;
    B_80121B60_unknown.B_80122134_unknown = client;

    osSetIntMask(savedIntMask);
}

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
