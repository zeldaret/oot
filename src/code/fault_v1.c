#include "global.h"
#include "terminal.h"
#include "alloca.h"

typedef struct FaultMgr_v1 {
    OSThread thread;
    char unk1B0[0x400];
    OSMesgQueue B_80122110_unknown;
    OSMesg msgBuf;
    s32 unk5CC_fbPtr;
    u16 unk5D0_fbWidth; // "B_80122130_unknown"
    u16 unk5D2_fbHeight;
    FaultClient* B_80122134_unknown;
} FaultMgr_v1; // size = 0x5D8

struct FaultCursorCoords {
    s32 unk0; // x
    s32 unk4; // y
};

// D_800FF560_unknown TODO incbin
u32 sFaultDrawerFont[] = {
    0x00DFFD00, 0x0AEEFFA0, 0x0DF22DD0, 0x06611DC0, 0x01122DD0, 0x06719900, 0x011EED10, 0x077EF700, 0x01562990,
    0x05589760, 0x0DD22990, 0x05599770, 0x04DFFD40, 0x026EF700, 0x00000000, 0x00000000, 0x08BFFB00, 0x0EFFFFC0,
    0x0BF00FB0, 0x0FF00330, 0x0FF00FF0, 0x0FF00220, 0x0CFBBF60, 0x0FFCCE20, 0x0DD44FF0, 0x0FF00220, 0x0FF00FF0,
    0x0FF00330, 0x0CFBBF40, 0x0EF77740, 0x00000000, 0x00000000, 0x00DFFD00, 0x0AEEFFA0, 0x0DF22DD0, 0x06611DC0,
    0x01122DD0, 0x06719900, 0x011EED10, 0x077EF700, 0x01562990, 0x05589760, 0x0DD22990, 0x05599770, 0x04DFFD40,
    0x026EF700, 0x00000000, 0x00000000, 0x08BFFB00, 0x000DE000, 0x0BF00FB0, 0x005DE600, 0x0FF00FF0, 0x055CC660,
    0x0CFBBF60, 0x773FF377, 0x0DD44FF0, 0xBB3FF3BB, 0x0FF00FF0, 0x099CCAA0, 0x0CFBBF40, 0x009DEA00, 0x00000000,
    0x000DE000, 0x04C22C40, 0x028D5020, 0x0CCAACC0, 0x21F91710, 0x04C22C40, 0x12493400, 0x00820800, 0x01975110,
    0x088A8880, 0x04615241, 0x00800800, 0x43117530, 0x00A20800, 0x60055600, 0x00000000, 0x04400040, 0x00221100,
    0x00000080, 0x000FB000, 0x00000880, 0x040DA400, 0x00008800, 0x08CDE880, 0x022AA220, 0x08CDE880, 0x02AA2220,
    0x040DA400, 0x0CD10000, 0x000FB000, 0x8C510000, 0x00221100, 0x81100000, 0x00DFFD00, 0x0AEEFFA0, 0x0DF22DD0,
    0x06611DC0, 0x01122DD0, 0x06719900, 0x011EED10, 0x077EF700, 0x01562990, 0x05589760, 0x0DD22990, 0x05599770,
    0x04DFFD40, 0x026EF700, 0x00000000, 0x00000000, 0x00333300, 0x04489980, 0x033CC330, 0x00CD1088, 0x033CC330,
    0x02BF62A8, 0x00333320, 0x01104C80, 0x01100330, 0x0015C800, 0x033CC330, 0x02673220, 0x003FF300, 0x04409900,
    0x00880000, 0x00000000, 0x05DFFD10, 0x07FFFF60, 0x1CE00EC1, 0x0FF00990, 0x1EE11661, 0x0FF00110, 0x1EF45621,
    0x0FF66710, 0x1EF23661, 0x0FF08990, 0x1EF10FE1, 0x0FF00990, 0x16ECCE21, 0x07FBBB20, 0x01111110, 0x00000000,
    0x09B66FD0, 0x27D88E60, 0x0992ED10, 0x2FF02EE0, 0x099AE510, 0x2FF62EE0, 0x099B7510, 0x2FD64EE0, 0x0DDAE510,
    0x2FD04EE0, 0x0DD2ED10, 0x2FD00EE0, 0x09F66F90, 0x27D99F70, 0x00000000, 0x00000000, 0x07FFFF00, 0x8F711FF0,
    0x2FD00FF0, 0x8F711FF0, 0x2FD00770, 0x8E611EE0, 0x27DDDF60, 0x8E691EE0, 0x27764AA0, 0x8EE99EE0, 0x2FD06E80,
    0x8AE7FEA0, 0x07FA8E60, 0x88277A80, 0x00000000, 0x00000000, 0x077CCFF0, 0x13266011, 0x077CCFF0, 0x03766510,
    0x0239D720, 0x04533540, 0x002FF200, 0x01133110, 0x005FB100, 0x00033000, 0x055EE550, 0x01133110, 0x055EEDD0,
    0x02233000, 0x00088880, 0x8AABB888, 0x00001100, 0x00044510, 0x04623320, 0x00440110, 0x04C89AA0, 0x00EEAB10,
    0x0CE66720, 0x0EF55FB0, 0x0EE00660, 0x0BF62B90, 0x0EE00660, 0x03FC8990, 0x04EEEEA0, 0x00773BB0, 0x00000000,
    0x08888800, 0x09900000, 0x00111000, 0x09922440, 0x00011000, 0x09908800, 0x26EFDE20, 0x099BB540, 0x2EC33CE2,
    0x0D9A2550, 0x2EC33CE2, 0x0DDAA550, 0x2EC33CE2, 0x09D6ED10, 0x26CBBC62, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x00011000, 0x05FBFFE0, 0x8E6116E8, 0x0FF40330, 0x8F7117F8, 0x07FC8B30, 0x8E6996E8,
    0x05733BA0, 0x8A6DD6A8, 0x0DD88A20, 0x08A779B2, 0x01100220, 0x00000000, 0x00000080, 0x8A011000, 0x00000800,
    0x80A11000, 0x07744F70, 0x80A99000, 0x0231DF20, 0x84E60004, 0x0027DA20, 0xC8AA4C40, 0x00573B20, 0x00A11800,
    0x05546F50, 0x00A99800, 0x02222080, 0x02001888,
};

// D_800FF960_unknown
const char* sExceptionNames[] = {
    "Interrupt",
    "TLB modification",
    "TLB exception on load",
    "TLB exception on store",
    "Address error on load",
    "Address error on store",
    "Bus error on inst.",
    "Bus error on data",
    "System call exception",
    "Breakpoint exception",
    "Reserved instruction",
    "Coprocessor unusable",
    "Arithmetic overflow",
    "Trap exception",
    "Virtual coherency on inst.",
    "Floating point exception",
    "Watchpoint exception",
    "Virtual coherency on data",
};

// D_800FF9A8_unknown
const char* sFpExceptionNames[] = {
    "Unimplemented operation", "Invalid operation", "Division by zero", "Overflow", "Underflow", "Inexact operation",
};

u16 sFaultFontColor = GPACK_RGBA5551(255, 255, 255, 1);

Input sFaultInputs[MAXCONTROLLERS];

FaultMgr_v1 gFaultMgr;

STACK(sFaultStack, 0x400);  // B_80122138_unknown
StackEntry sFaultStackInfo; // B_80122538_unknown
struct FaultCursorCoords B_80122558_unknown;

volatile s32 sFaultExit; // fault_exit
volatile s32 sFaultMsgId; // fault_msg_id
volatile s32 sFaultDisplayEnable; // fault_display_enable
OSThread* sFaultFaultedThread;    // cur faulted thread
s32 B_80122570_unknown[0x10];

void Fault_SleepImpl(u32 ms) {
    Sleep_Msec(ms);
}

void func_800ADC5C_unknown(void);
#ifdef NON_MATCHING
void func_800ADC5C_unknown(void) {
    do {
        Fault_SleepImpl(0x10);
        PadMgr_RequestPadData(&gPadMgr, &sFaultInputs, 0);
    } while (!CHECK_BTN_ANY(sFaultInputs.press.button,
                            (BTN_A | BTN_B | BTN_START | BTN_CRIGHT | BTN_CLEFT | BTN_CDOWN | BTN_CUP)));
}

#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/func_800ADC5C_unknown.s")
#endif

void func_800ADCD8_unknown(void) {
    func_800ADC5C_unknown();
}

// Fault_DrawRec
void func_800ADD14_unknown(s32 x, s32 y, s32 w, s32 h, u16 color) {
    s32 temp_a3;
    s32 i;
    s32 j;
    u16* fbPtr;

    fbPtr = (void*)((gFaultMgr.unk5D0_fbWidth * y * 2) + gFaultMgr.unk5CC_fbPtr + (x * 2));

    for (i = 0; i < h; i++) {
        j = 0;
        for (j = 0; j < w; j++) {
            *fbPtr = color;
            fbPtr++;
        }
        fbPtr += (gFaultMgr.unk5D0_fbWidth - w);
    }
    osWritebackDCacheAll();
}

void func_800ADDF0_unknown(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    func_800ADD14_unknown(arg0, arg1, arg2, arg3, 1);
}

// Fault_DrawChar
void func_800ADE30_unknown(s32 x, s32 y, char c) {
    u32* dataPtr;
    s32 shift = c % 4;
    s32 i;
    s32 j;
    u16* fbPtr;
    u32 data;

    dataPtr = (u32*)sFaultDrawerFont + ((c / 8 * 0x10) + ((c & 4) >> 2));
    fbPtr = (void*)((gFaultMgr.unk5D0_fbWidth * y * 2) + gFaultMgr.unk5CC_fbPtr + (x * 2));

    for (i = 0; i < 8; i++) {
        u32 mask;

        mask = (1 << 28) << shift;
        data = *dataPtr;
        for (j = 0; j < 8; j++) {
            if (mask & data) {
                *fbPtr = sFaultFontColor;
            }
            fbPtr++;
            mask >>= 4;
        }
        dataPtr += 2;
        fbPtr += gFaultMgr.unk5D0_fbWidth - 8;
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

// Fault_PrintFPCSR
void func_800AE408_unknown(s32 x, s32 y, s32 value) {
    s32 i;
    u32 mask = 0x20000;

    func_800AE170_unknown(x, y, "FPCSR:%08xH", value);

    for (i = 0; i < 6; i++) {
        if (value & mask) {
            func_800AE170_unknown(x + 100, y, "(%s)", sFpExceptionNames[i]);
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
            osSyncPrintf("(%s)\n", sFpExceptionNames[i]);
            break;
        }

        mask >>= 1;
    }
}

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
    func_800AE170_unknown(0x1E, y, "THREAD:%d (%d:%s)", thread->id, causeStrIdx, sExceptionNames[causeStrIdx]);

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
    osSyncPrintf("THREAD ID:%d (%d:%s)\n", thread->id, causeStrIdx, sExceptionNames[causeStrIdx]);
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

void func_800AED1C_unknown(void);
#ifdef NON_MATCHING

void func_800AED1C_unknown(void) {
    Input* inputs = sFaultInputs;
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
        PadMgr_RequestPadData(&gPadMgr, inputs, 0);
        btnCur = inputs[0].cur.button;
        btnPress = inputs[0].press.button;
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
                    if (btnPress == BTN_CDOWN) {
                        x = 3;
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
                    if (btnPress == BTN_DDOWN) {
                        x = 5;
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
                    if (btnPress == BTN_CLEFT) {
                        x = 7;
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
                    if (btnPress == BTN_DRIGHT) {
                        x = 9;
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

extern s32 D_80105A90_unknown; // Arena_failcnt

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
    osWritebackDCache((void*)thread->context.pc, 4);
    osInvalICache((void*)thread->context.pc, 4);
    osStartThread(thread);
}

void func_800AF558_unknown(void) {
    osViBlack(false);
    if (osViGetCurrentFramebuffer() >= (void*)0x80100000) {
        gFaultMgr.unk5CC_fbPtr = (s32)osViGetCurrentFramebuffer();
    } else {
        gFaultMgr.unk5CC_fbPtr = (s32)(void*)(PHYS_TO_K0(osMemSize) - sizeof(u16[SCREEN_HEIGHT][SCREEN_WIDTH]));
        osViSwapBuffer((void*)gFaultMgr.unk5CC_fbPtr);
    }
}

#ifdef NON_MATCHING

void Fault_AddClient(FaultClient* client, void* callback, void* arg0, void* arg1) {
    OSIntMask savedIntMask;

    savedIntMask = osSetIntMask(1);

    client->callback = callback;
    client->arg0 = arg0;
    client->arg1 = arg1;
    client->next = gFaultMgr.B_80122134_unknown;
    gFaultMgr.B_80122134_unknown = client;

    osSetIntMask(savedIntMask);
}

#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_v1/Fault_AddClient.s")
#endif

void Fault_RemoveClient(FaultClient* client) {
    u32 temp_a0;
    FaultClient* var_v1;
    FaultClient* var_a1;

    var_v1 = gFaultMgr.B_80122134_unknown;
    var_a1 = NULL;
    temp_a0 = osSetIntMask(1);
    while (var_v1 != NULL) {
        if (var_v1 == client) {
            if (var_a1 != NULL) {
                var_a1->next = client->next;
            } else {
                gFaultMgr.B_80122134_unknown = client->next;
            }
            break;
        } else {
            var_a1 = var_v1;
            var_v1 = var_v1->next;
        }
    }
    osSetIntMask(temp_a0);
}

void func_800AF720_unknown(void) {
    s32 temp_a3;
    s32 i;
    FaultClient* client;

    client = gFaultMgr.B_80122134_unknown;
    i = 0;
    while (client != NULL) {
        if (client->callback != NULL) {
            func_800ADDF0_unknown(0x16, 0x10, 0x114, 0xD0);
            func_800AE170_unknown(0x1E, 0x14, "CallBack (%d) %08x %08x %08x", i++, client, client->arg0, client->arg1);
            ((void (*)(void*, void*))client->callback)(client->arg0, client->arg1);
            func_800ADCD8_unknown();
        }
        client = client->next;
    }
}

void func_800AF7F0_unknown(void* arg0) {
    OSMesg sp54;
    OSThread* var_s0;

    osSetEventMesg(0xAU, &gFaultMgr.B_80122110_unknown, (OSMesg)1);
    osSetEventMesg(0xCU, &gFaultMgr.B_80122110_unknown, (OSMesg)2);
    while (true) {
        do {
            osRecvMesg(&gFaultMgr.B_80122110_unknown, &sp54, 1);
            if (sp54 == (OSMesg)1) {
                sFaultMsgId = 1;
                osSyncPrintf("フォルトマネージャ:OS_EVENT_CPU_BREAKを受信しました\n");
            } else if (sp54 == (OSMesg)2) {
                sFaultMsgId = 2;
                osSyncPrintf("フォルトマネージャ:OS_EVENT_FAULTを受信しました\n");
            } else {
                sFaultMsgId = 3;
                osSyncPrintf("フォルトマネージャ:不明なメッセージを受信しました\n");
            }
            var_s0 = __osGetCurrFaultedThread();
            osSyncPrintf("__osGetCurrFaultedThread()=%08x\n", var_s0);
            if (var_s0 == NULL) {
                var_s0 = func_800AEC94_unknown();
                osSyncPrintf("FindFaultedThread()=%08x\n", var_s0);
            }
        } while (var_s0 == NULL);
        sFaultFaultedThread = var_s0;
        func_800AE998_unknown(var_s0);
        osSyncPrintf("%d %s %d:%s = %d\n", osGetThreadId(NULL), "fault.c", 0x5AE, "fault_display_enable",
                     sFaultDisplayEnable);
        while (!sFaultDisplayEnable) {
            Fault_SleepImpl(0x3E8U);
        }
        Fault_SleepImpl(0x1F4U);
        func_800ADFE4_unknown();
        func_800AED1C_unknown();
        do {
            func_800AF558_unknown();
            func_800AE558_unknown(var_s0);
            func_800ADCD8_unknown();
            func_800AF0E0_unknown();
            func_800ADCD8_unknown();
            func_800AF3DC_unknown();
            func_800ADCD8_unknown();
            func_800AF370_unknown(var_s0);
            func_800ADCD8_unknown();
            func_800AF304_unknown(var_s0);
            func_800ADCD8_unknown();
            func_800AF720_unknown();
        } while (!sFaultExit);
        while (!sFaultExit) {}
        func_800AF4DC_unknown(var_s0);
    }
}

void Fault_SetFrameBuffer(void* fb, u16 w, u16 h) {
    gFaultMgr.unk5CC_fbPtr = (s32)fb;
    gFaultMgr.unk5D0_fbWidth = w;
    gFaultMgr.unk5D2_fbHeight = h;
}

void Fault_Init(void) {
    sFaultDisplayEnable = 1;
    gFaultMgr.unk5CC_fbPtr = (osMemSize | 0x80000000) + 0xFFFDA800;
    gFaultMgr.unk5D0_fbWidth = 0x140;
    gFaultMgr.unk5D2_fbHeight = 0x10;
    gFaultMgr.B_80122134_unknown = 0;
    osCreateMesgQueue(&gFaultMgr.B_80122110_unknown, &gFaultMgr.msgBuf, 1);
    StackCheck_Init(&sFaultStackInfo, sFaultStack, STACK_TOP(sFaultStack), 0U, 0x100, "fault");
    osCreateThread(&gFaultMgr.thread, 2, func_800AF7F0_unknown, NULL, STACK_TOP(sFaultStack), 0x7F);
    osStartThread(&gFaultMgr.thread);
}

void Fault_AddHungupAndCrashImpl(const char* exp1, const char* exp2) {
    sFaultMsgId = 4;
    osSyncPrintf("HungUp on Thread %d", osGetThreadId(NULL));
    osSyncPrintf("%s\n", exp1 != NULL ? exp1 : "(NULL)");
    osSyncPrintf("%s\n", exp2 != NULL ? exp2 : "(NULL)");
    while (sFaultDisplayEnable == 0) {
        Fault_SleepImpl(1000);
    }
    Fault_SleepImpl(500);
    func_800AED1C_unknown();
    do {
        func_800AF558_unknown();
        func_800ADDF0_unknown(0x16, 0x10, 0x114, 0x22);
        func_800AE170_unknown(0x18, 0x12, "HungUp on Thread %d", osGetThreadId(NULL));
        func_800AE170_unknown(0x18, 0x1C, "%s", exp1 != NULL ? exp1 : "(NULL)");
        func_800AE170_unknown(0x18, 0x26, "%s", exp2 != NULL ? exp2 : "(NULL)");
        func_800ADCD8_unknown();
        func_800AF720_unknown();
    } while (true);
}

void Fault_AddHungupAndCrash(const char* file, int line) {
    char sp18[256];

    sprintf(sp18, "HungUp %s:%d", file, line);
    Fault_AddHungupAndCrashImpl(sp18, NULL);
}
