#include "global.h"
#include "terminal.h"
#include "alloca.h"

typedef struct FaultMgr {
    OSThread thread;
    char unk_1B0[0x400];
    OSMesgQueue queue;
    OSMesg msg;
    s32 framebuffer;
    u16 fbWidth;
    u16 fbDepth;
    FaultClient* clients;
} FaultMgr; // size = 0x5D8

struct FaultCursorCoords {
    s32 x;
    s32 y;
}; // size = 0x8

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

const char* sFpExceptionNames[] = {
    "Unimplemented operation", "Invalid operation", "Division by zero", "Overflow", "Underflow", "Inexact operation",
};

u16 sFaultFontColor = GPACK_RGBA5551(255, 255, 255, 1);

Input sFaultInputs[MAXCONTROLLERS];

FaultMgr gFaultMgr;

STACK(sFaultStack, 0x400);
StackEntry sFaultStackInfo;
struct FaultCursorCoords sFaultCursorPos;

vs32 sFaultExit;
vs32 gFaultMsgId;
vs32 sFaultDisplayEnable;
OSThread* sFaultFaultedThread;
s32 B_80122570[0x10];

void Fault_SleepImpl(u32 ms) {
    Sleep_Msec(ms);
}

void Fault_WaitInputImpl(void);
#ifdef NON_MATCHING
// https://decomp.me/scratch/u7bNE

void Fault_WaitInputImpl(void) {
    do {
        Fault_SleepImpl(0x10);
        PadMgr_RequestPadData(&gPadMgr, sFaultInputs, 0);
    } while (!CHECK_BTN_ANY(sFaultInputs[0].press.button,
                            (BTN_A | BTN_B | BTN_START | BTN_CRIGHT | BTN_CLEFT | BTN_CDOWN | BTN_CUP)));
}

#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_ootn64/Fault_WaitInputImpl.s")
#endif

void Fault_WaitInput(void) {
    Fault_WaitInputImpl();
}

void Fault_DrawRec(s32 x, s32 y, s32 w, s32 h, u16 color) {
    s32 temp_a3;
    s32 i;
    s32 j;
    u16* fbPtr;

    fbPtr = (void*)((gFaultMgr.fbWidth * y * 2) + gFaultMgr.framebuffer + (x * 2));

    for (i = 0; i < h; i++) {
        j = 0;
        for (j = 0; j < w; j++) {
            *fbPtr = color;
            fbPtr++;
        }
        fbPtr += (gFaultMgr.fbWidth - w);
    }
    osWritebackDCacheAll();
}

void Fault_DrawRecBlack(s32 x, s32 y, s32 w, s32 h) {
    Fault_DrawRec(x, y, w, h, GPACK_RGBA5551(0, 0, 0, 1));
}

void Fault_DrawCharImpl(s32 x, s32 y, char c) {
    u32* dataPtr;
    s32 shift = c % 4;
    s32 i;
    s32 j;
    u16* fbPtr;
    u32 data;

    dataPtr = (u32*)sFaultDrawerFont + ((c / 8 * 0x10) + ((c & 4) >> 2));
    fbPtr = (void*)((gFaultMgr.fbWidth * y * 2) + gFaultMgr.framebuffer + (x * 2));

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
        fbPtr += gFaultMgr.fbWidth - 8;
    }
    osWritebackDCacheAll();
}

void Fault_DrawChar(s32 x, s32 y, u8 c) {
    Fault_DrawCharImpl(x, y, c);
}

void Fault_DrawCornerRec(u16 color) {
    Fault_DrawRec(22, 16, 8, 1, color);
}

void Fault_DrawCornerRecRed(void) {
    Fault_DrawCornerRec(GPACK_RGBA5551(255, 0, 0, 1));
}

void Fault_DrawCornerRecYellow(void) {
    Fault_DrawCornerRec(GPACK_RGBA5551(255, 255, 0, 1));
}

void func_800AE05C(void) {
}

void* Fault_PrintCallbackDraw(void* arg, const char* str, size_t len) {
    struct FaultCursorCoords* coords = arg;

    for (; len != 0; len--, str++) {
        if (*str == 0xA) {
            coords->x = 320;
        } else {
            Fault_DrawChar(coords->x, coords->y, *str);
            coords->x += 6;
        }
        if (coords->x >= 277) {
            coords->x = 22;
            coords->y += 8;
            if (coords->y >= 209) {
                Fault_WaitInputImpl();
                Fault_DrawRecBlack(22, 16, 276, 208);
                coords->y = 16;
            }
        }
    }
    return coords;
}

void Fault_DrawText(s32 x, s32 y, const char* fmt, ...) {
    va_list args;
    struct FaultCursorCoords coords;

    va_start(args, fmt);

    coords.x = x - 8;
    coords.y = y;
    _Printf(Fault_PrintCallbackDraw, &coords, fmt, args);

    va_end(args);
}

void Fault_SetCursor(s32 x, s32 y) {
    sFaultCursorPos.x = x;
    sFaultCursorPos.y = y;
}

void func_800AE1F8(void) {
    Fault_DrawRecBlack(22, 16, 276, 208);
    sFaultCursorPos.x = 22;
    sFaultCursorPos.y = 16;
}

void Fault_Printf(const char* fmt, ...) {
    va_list args;

    va_start(args, fmt);
    _Printf(Fault_PrintCallbackDraw, &sFaultCursorPos, fmt, args);
    va_end(args);
}

void Fault_PrintFReg(s32 x, s32 y, s32 idx, f32* value) {
    u32 raw = *(u32*)value;
    s32 exp = ((raw & 0x7F800000) >> 0x17) - 0x7F;

    if (((exp >= -0x7E) && (exp < 0x80)) || (raw == 0)) {
        Fault_DrawText(x, y, "F%02d:%.7e", idx, *value);
    } else {
        Fault_DrawText(x, y, "F%02d:-------------", idx);
    }
}

void Fault_LogFReg(s32 idx, f32* value) {
    u32 raw = *(u32*)value;
    s32 exp = ((raw & 0x7F800000) >> 0x17) - 0x7F;

    if (((exp >= -0x7E) && (exp < 0x80)) || (raw == 0)) {
        osSyncPrintf("F%02d:%.7e     ", idx, *value);
    } else {
        osSyncPrintf("F%02d:-------------     ", idx);
    }
}

void Fault_PrintFPCSR(s32 x, s32 y, s32 value) {
    s32 i;
    u32 mask = 0x20000;

    Fault_DrawText(x, y, "FPCSR:%08xH", value);

    for (i = 0; i < 6; i++) {
        if (value & mask) {
            Fault_DrawText(x + 100, y, "(%s)", sFpExceptionNames[i]);
            break;
        }

        mask >>= 1;
    }
}

void Fault_LogFPCSR(s32 value) {
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

void Fault_PrintThreadContext(OSThread* thread) {
    __OSThreadContext* ctx = &thread->context;
    s32 y;
    s16 causeStrIdx = _SHIFTR((u32)thread->context.cause, 2, 5);

    if (causeStrIdx == 23) {
        causeStrIdx = 16;
    }
    if (causeStrIdx == 31) {
        causeStrIdx = 17;
    }

    Fault_DrawRecBlack(22, 16, 276, 24);

    y = 20;
    Fault_DrawText(30, y, "THREAD:%d (%d:%s)", thread->id, causeStrIdx, sExceptionNames[causeStrIdx]);

    y += 9;
    Fault_DrawText(30, y, "PC:%08xH   SR:%08xH   VA:%08xH", ctx->pc, ctx->sr, ctx->badvaddr);

    y += 13;
    Fault_DrawRecBlack(22, 40, 276, 184);
    Fault_DrawText(30, y, "AT:%08xH   V0:%08xH   V1:%08xH", (u32)ctx->at, (u32)ctx->v0, (u32)ctx->v1);
    y += 9;
    Fault_DrawText(30, y, "A0:%08xH   A1:%08xH   A2:%08xH", (u32)ctx->a0, (u32)ctx->a1, (u32)ctx->a2);
    y += 9;
    Fault_DrawText(30, y, "A3:%08xH   T0:%08xH   T1:%08xH", (u32)ctx->a3, (u32)ctx->t0, (u32)ctx->t1);
    y += 9;
    Fault_DrawText(30, y, "T2:%08xH   T3:%08xH   T4:%08xH", (u32)ctx->t2, (u32)ctx->t3, (u32)ctx->t4);
    y += 9;
    Fault_DrawText(30, y, "T5:%08xH   T6:%08xH   T7:%08xH", (u32)ctx->t5, (u32)ctx->t6, (u32)ctx->t7);
    y += 9;
    Fault_DrawText(30, y, "S0:%08xH   S1:%08xH   S2:%08xH", (u32)ctx->s0, (u32)ctx->s1, (u32)ctx->s2);
    y += 9;
    Fault_DrawText(30, y, "S3:%08xH   S4:%08xH   S5:%08xH", (u32)ctx->s3, (u32)ctx->s4, (u32)ctx->s5);
    y += 9;
    Fault_DrawText(30, y, "S6:%08xH   S7:%08xH   T8:%08xH", (u32)ctx->s6, (u32)ctx->s7, (u32)ctx->t8);
    y += 9;
    Fault_DrawText(30, y, "T9:%08xH   GP:%08xH   SP:%08xH", (u32)ctx->t9, (u32)ctx->gp, (u32)ctx->sp);
    y += 9;
    Fault_DrawText(30, y, "S8:%08xH   RA:%08xH   LO:%08xH", (u32)ctx->s8, (u32)ctx->ra, (u32)ctx->lo);

    y += 13;
    Fault_PrintFPCSR(30, y, ctx->fpcsr);

    y += 13;
    Fault_PrintFReg(30, y, 0, &ctx->fp0.f.f_even);
    Fault_PrintFReg(160, y, 2, &ctx->fp2.f.f_even);
    y += 9;
    Fault_PrintFReg(30, y, 4, &ctx->fp4.f.f_even);
    Fault_PrintFReg(160, y, 6, &ctx->fp6.f.f_even);
    y += 9;
    Fault_PrintFReg(30, y, 8, &ctx->fp8.f.f_even);
    Fault_PrintFReg(160, y, 10, &ctx->fp10.f.f_even);
    y += 9;
    Fault_PrintFReg(30, y, 12, &ctx->fp12.f.f_even);
    Fault_PrintFReg(160, y, 14, &ctx->fp14.f.f_even);
    y += 9;
    Fault_PrintFReg(30, y, 16, &ctx->fp16.f.f_even);
    Fault_PrintFReg(160, y, 18, &ctx->fp18.f.f_even);
    y += 9;
    Fault_PrintFReg(30, y, 20, &ctx->fp20.f.f_even);
    Fault_PrintFReg(160, y, 22, &ctx->fp22.f.f_even);
    y += 9;
    Fault_PrintFReg(30, y, 24, &ctx->fp24.f.f_even);
    Fault_PrintFReg(160, y, 26, &ctx->fp26.f.f_even);
    y += 9;
    Fault_PrintFReg(30, y, 28, &ctx->fp28.f.f_even);
    Fault_PrintFReg(160, y, 30, &ctx->fp30.f.f_even);

    osWritebackDCacheAll();
}

void Fault_LogThreadContext(OSThread* thread) {
    __OSThreadContext* ctx = &thread->context;
    s16 causeStrIdx = _SHIFTR((u32)thread->context.cause, 2, 5);

    if (causeStrIdx == 23) {
        causeStrIdx = 16;
    }
    if (causeStrIdx == 31) {
        causeStrIdx = 17;
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

    Fault_LogFPCSR((s32)ctx->fpcsr);
    osSyncPrintf("\n");
    Fault_LogFReg(0, &ctx->fp0.f.f_even);
    Fault_LogFReg(2, &ctx->fp2.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(4, &ctx->fp4.f.f_even);
    Fault_LogFReg(6, &ctx->fp6.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(8, &ctx->fp8.f.f_even);
    Fault_LogFReg(10, &ctx->fp10.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(12, &ctx->fp12.f.f_even);
    Fault_LogFReg(14, &ctx->fp14.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(16, &ctx->fp16.f.f_even);
    Fault_LogFReg(18, &ctx->fp18.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(20, &ctx->fp20.f.f_even);
    Fault_LogFReg(22, &ctx->fp22.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(24, &ctx->fp24.f.f_even);
    Fault_LogFReg(26, &ctx->fp26.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(28, &ctx->fp28.f.f_even);
    Fault_LogFReg(30, &ctx->fp30.f.f_even);
    osSyncPrintf("\n");
}

OSThread* Fault_FindFaultedThread(void) {
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

void Fault_WaitForButtonCombo(void);
#ifdef NON_MATCHING
// https://decomp.me/scratch/Yc86d

void Fault_WaitForButtonCombo(void) {
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
            Fault_DrawCornerRecYellow();
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
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_ootn64/Fault_WaitForButtonCombo.s")
#endif

extern s32 D_80105A90_unknown; // Arena_failcnt

void func_800AF0E0(void) {
    s32 i;

    Fault_DrawRecBlack(22, 16, 276, 208);
    Fault_DrawText(40, 30, "SegmentBaseAddress");

    for (i = 0; i < ARRAY_COUNT(gSegments); i++) {
        Fault_DrawText(40, 40 + 8 * i, "%2d:%08x", i, gSegments[i]);
    }
    Fault_DrawText(40, 180, "Arena_failcnt = %d", D_80105A90_unknown);
}

void Fault_DrawMemDumpContents(const char* title, void* memory, u32 arg2) {
    s32 x;
    s32 y;
    u32* ptr = (u32*)((u32)memory & ~3);

    Fault_DrawRecBlack(22, 16, 276, 208);
    Fault_DrawText(36, 18, "%s %08x", title != NULL ? title : "PrintDump", ptr);

    if ((ptr >= (u32*)0x80000000) && (ptr <= (u32*)0x80400000)) {
        for (y = 28; y != 226; y += 9) {
            Fault_DrawText(28, y, "%06x", ptr);
            for (x = 82; x < 290; x += 52) {
                Fault_DrawText(x, y, "%08x", *(ptr++));
            }
        }
    }
}

void Fault_DrawMemDumpPC(OSThread* arg0) {
    u32* pc = (u32*)arg0->context.pc;

    if ((pc >= (u32*)0x80000020) && (pc <= (u32*)0x80400000)) {
        Fault_DrawMemDumpContents("PC Trace", pc - 0x20, 0);
    }
}

void Fault_DrawMemDumpSP(OSThread* arg0) {
    u32* sp = (u32*)(u32)arg0->context.sp;

    if ((sp >= (u32*)0x80000020) && (sp <= (u32*)0x80400000)) {
        Fault_DrawMemDumpContents("Stack Trace", sp, 0);
    }
}

void func_800AF3DC(void) {
    s32 i;

    Fault_DrawRecBlack(22, 16, 276, 208);
    Fault_DrawText(36, 18, "ROM DEBUG");

    for (i = 0; i < ARRAY_COUNT(B_80122570); i++) {
        Fault_DrawText(((i % 4) * 52) + 82, ((i / 4) * 9) + 28, "%08x", B_80122570[i]);
    }
}

void Fault_ResumeThread(OSThread* thread) {
    thread->context.cause = 0;
    thread->context.fpcsr = 0;
    thread->context.pc += 4;
    *(u32*)thread->context.pc = 0x0000000D;
    osWritebackDCache((void*)thread->context.pc, 4);
    osInvalICache((void*)thread->context.pc, 4);
    osStartThread(thread);
}

void func_800AF558(void) {
    osViBlack(false);
    if (osViGetCurrentFramebuffer() >= (void*)0x80100000) {
        gFaultMgr.framebuffer = (s32)osViGetCurrentFramebuffer();
    } else {
        gFaultMgr.framebuffer = (s32)(void*)(PHYS_TO_K0(osMemSize) - sizeof(u16[SCREEN_HEIGHT][SCREEN_WIDTH]));
        osViSwapBuffer((void*)gFaultMgr.framebuffer);
    }
}

#ifdef NON_MATCHING
// https://decomp.me/scratch/vvVUM

void Fault_AddClient(FaultClient* client, void* callback, void* arg0, void* arg1) {
    OSIntMask savedIntMask;

    savedIntMask = osSetIntMask(1);

    client->callback = callback;
    client->arg0 = arg0;
    client->arg1 = arg1;
    client->next = gFaultMgr.clients;
    gFaultMgr.clients = client;

    osSetIntMask(savedIntMask);
}

#else
#pragma GLOBAL_ASM("expected/build/ntsc-1.2/functions/src/code/fault_ootn64/Fault_AddClient.s")
#endif

void Fault_RemoveClient(FaultClient* client) {
    u32 mask;
    FaultClient* iterClient = gFaultMgr.clients;
    FaultClient* lastClient = NULL;

    mask = osSetIntMask(1);
    while (iterClient != NULL) {
        if (iterClient == client) {
            if (lastClient != NULL) {
                lastClient->next = client->next;
            } else {
                gFaultMgr.clients = client->next;
            }
            break;
        } else {
            lastClient = iterClient;
            iterClient = iterClient->next;
        }
    }
    osSetIntMask(mask);
}

void Fault_ProcessClients(void) {
    s32 temp_a3;
    s32 i;
    FaultClient* client;

    client = gFaultMgr.clients;
    i = 0;
    while (client != NULL) {
        if (client->callback != NULL) {
            Fault_DrawRecBlack(22, 16, 276, 208);
            Fault_DrawText(30, 20, "CallBack (%d) %08x %08x %08x", i++, client, client->arg0, client->arg1);
            ((void (*)(void*, void*))client->callback)(client->arg0, client->arg1);
            Fault_WaitInput();
        }
        client = client->next;
    }
}

#define FAULT_MSG_CPU_BREAK ((OSMesg)1)
#define FAULT_MSG_FAULT ((OSMesg)2)
#define FAULT_MSG_UNK ((OSMesg)3)

void Fault_ThreadEntry(void* arg0) {
    OSMesg msg;
    OSThread* faultedThread;

    osSetEventMesg(OS_EVENT_CPU_BREAK, &gFaultMgr.queue, FAULT_MSG_CPU_BREAK);
    osSetEventMesg(OS_EVENT_FAULT, &gFaultMgr.queue, FAULT_MSG_FAULT);
    while (true) {
        do {
            osRecvMesg(&gFaultMgr.queue, &msg, OS_MESG_BLOCK);
            if (msg == FAULT_MSG_CPU_BREAK) {
                gFaultMsgId = (s32)FAULT_MSG_CPU_BREAK;
                osSyncPrintf("フォルトマネージャ:OS_EVENT_CPU_BREAKを受信しました\n");
            } else if (msg == FAULT_MSG_FAULT) {
                gFaultMsgId = (s32)FAULT_MSG_FAULT;
                osSyncPrintf("フォルトマネージャ:OS_EVENT_FAULTを受信しました\n");
            } else {
                gFaultMsgId = (s32)FAULT_MSG_UNK;
                osSyncPrintf("フォルトマネージャ:不明なメッセージを受信しました\n");
            }
            faultedThread = __osGetCurrFaultedThread();
            osSyncPrintf("__osGetCurrFaultedThread()=%08x\n", faultedThread);
            if (faultedThread == NULL) {
                faultedThread = Fault_FindFaultedThread();
                osSyncPrintf("FindFaultedThread()=%08x\n", faultedThread);
            }
        } while (faultedThread == NULL);
        sFaultFaultedThread = faultedThread;
        Fault_LogThreadContext(faultedThread);
        osSyncPrintf("%d %s %d:%s = %d\n", osGetThreadId(NULL), "fault.c", 1454, "fault_display_enable",
                     sFaultDisplayEnable);
        while (!sFaultDisplayEnable) {
            Fault_SleepImpl(1000);
        }
        Fault_SleepImpl(500);
        Fault_DrawCornerRecRed();
        Fault_WaitForButtonCombo();
        do {
            func_800AF558();
            Fault_PrintThreadContext(faultedThread);
            Fault_WaitInput();
            func_800AF0E0();
            Fault_WaitInput();
            func_800AF3DC();
            Fault_WaitInput();
            Fault_DrawMemDumpSP(faultedThread);
            Fault_WaitInput();
            Fault_DrawMemDumpPC(faultedThread);
            Fault_WaitInput();
            Fault_ProcessClients();
        } while (!sFaultExit);
        while (!sFaultExit) {}
        Fault_ResumeThread(faultedThread);
    }
}

void Fault_SetFrameBuffer(void* fb, u16 w, u16 h) {
    gFaultMgr.framebuffer = (s32)fb;
    gFaultMgr.fbWidth = w;
    gFaultMgr.fbDepth = h;
}

void Fault_Init(void) {
    sFaultDisplayEnable = 1;
    gFaultMgr.framebuffer = PHYS_TO_K0(osMemSize) - sizeof(u16[SCREEN_HEIGHT][SCREEN_WIDTH]);
    gFaultMgr.fbWidth = SCREEN_WIDTH;
    gFaultMgr.fbDepth = 16;
    gFaultMgr.clients = 0;
    osCreateMesgQueue(&gFaultMgr.queue, &gFaultMgr.msg, 1);
    StackCheck_Init(&sFaultStackInfo, sFaultStack, STACK_TOP(sFaultStack), 0, 0x100, "fault");
    osCreateThread(&gFaultMgr.thread, THREAD_ID_FAULT, Fault_ThreadEntry, NULL, STACK_TOP(sFaultStack),
                   THREAD_PRI_FAULT);
    osStartThread(&gFaultMgr.thread);
}

void Fault_AddHungupAndCrashImpl(const char* exp1, const char* exp2) {
    gFaultMsgId = 4;
    osSyncPrintf("HungUp on Thread %d", osGetThreadId(NULL));
    osSyncPrintf("%s\n", exp1 != NULL ? exp1 : "(NULL)");
    osSyncPrintf("%s\n", exp2 != NULL ? exp2 : "(NULL)");
    while (sFaultDisplayEnable == 0) {
        Fault_SleepImpl(1000);
    }
    Fault_SleepImpl(500);
    Fault_WaitForButtonCombo();
    do {
        func_800AF558();
        Fault_DrawRecBlack(22, 16, 276, 34);
        Fault_DrawText(24, 18, "HungUp on Thread %d", osGetThreadId(NULL));
        Fault_DrawText(24, 28, "%s", exp1 != NULL ? exp1 : "(NULL)");
        Fault_DrawText(24, 38, "%s", exp2 != NULL ? exp2 : "(NULL)");
        Fault_WaitInput();
        Fault_ProcessClients();
    } while (true);
}

void Fault_AddHungupAndCrash(const char* file, int line) {
    char sp18[256];

    sprintf(sp18, "HungUp %s:%d", file, line);
    Fault_AddHungupAndCrashImpl(sp18, NULL);
}
