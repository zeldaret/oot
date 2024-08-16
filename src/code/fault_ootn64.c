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
struct FaultCursorCoords B_80122558;

vs32 sFaultExit;
vs32 gFaultMsgId;
vs32 sFaultDisplayEnable;
OSThread* sFaultFaultedThread;
s32 B_80122570_unknown[0x10];

void Fault_SleepImpl(u32 ms) {
    Sleep_Msec(ms);
}

void Fault_WaitInputImpl(void);
#ifdef NON_MATCHING
void Fault_WaitInputImpl(void) {
    do {
        Fault_SleepImpl(0x10);
        PadMgr_RequestPadData(&gPadMgr, &sFaultInputs, 0);
    } while (!CHECK_BTN_ANY(sFaultInputs.press.button,
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
    B_80122558.x = x;
    B_80122558.y = y;
}

void func_800AE1F8(void) {
    Fault_DrawRecBlack(0x16, 0x10, 0x114, 0xD0);
    B_80122558.x = 0x16;
    B_80122558.y = 0x10;
}

void Fault_Printf(const char* fmt, ...) {
    va_list args;

    va_start(args, fmt);
    _Printf(Fault_PrintCallbackDraw, &B_80122558, fmt, args);
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

    if (causeStrIdx == 0x17) {
        causeStrIdx = 0x10;
    }
    if (causeStrIdx == 0x1F) {
        causeStrIdx = 0x11;
    }

    Fault_DrawRecBlack(0x16, 0x10, 0x114, 0x18);

    y = 20;
    Fault_DrawText(0x1E, y, "THREAD:%d (%d:%s)", thread->id, causeStrIdx, sExceptionNames[causeStrIdx]);

    y += 9;
    Fault_DrawText(0x1E, y, "PC:%08xH   SR:%08xH   VA:%08xH", ctx->pc, ctx->sr, ctx->badvaddr);

    y += 13;
    Fault_DrawRecBlack(0x16, 0x28, 0x114, 0xB8);
    Fault_DrawText(0x1E, y, "AT:%08xH   V0:%08xH   V1:%08xH", (u32)ctx->at, (u32)ctx->v0, (u32)ctx->v1);
    y += 9;
    Fault_DrawText(0x1E, y, "A0:%08xH   A1:%08xH   A2:%08xH", (u32)ctx->a0, (u32)ctx->a1, (u32)ctx->a2);
    y += 9;
    Fault_DrawText(0x1E, y, "A3:%08xH   T0:%08xH   T1:%08xH", (u32)ctx->a3, (u32)ctx->t0, (u32)ctx->t1);
    y += 9;
    Fault_DrawText(0x1E, y, "T2:%08xH   T3:%08xH   T4:%08xH", (u32)ctx->t2, (u32)ctx->t3, (u32)ctx->t4);
    y += 9;
    Fault_DrawText(0x1E, y, "T5:%08xH   T6:%08xH   T7:%08xH", (u32)ctx->t5, (u32)ctx->t6, (u32)ctx->t7);
    y += 9;
    Fault_DrawText(0x1E, y, "S0:%08xH   S1:%08xH   S2:%08xH", (u32)ctx->s0, (u32)ctx->s1, (u32)ctx->s2);
    y += 9;
    Fault_DrawText(0x1E, y, "S3:%08xH   S4:%08xH   S5:%08xH", (u32)ctx->s3, (u32)ctx->s4, (u32)ctx->s5);
    y += 9;
    Fault_DrawText(0x1E, y, "S6:%08xH   S7:%08xH   T8:%08xH", (u32)ctx->s6, (u32)ctx->s7, (u32)ctx->t8);
    y += 9;
    Fault_DrawText(0x1E, y, "T9:%08xH   GP:%08xH   SP:%08xH", (u32)ctx->t9, (u32)ctx->gp, (u32)ctx->sp);
    y += 9;
    Fault_DrawText(0x1E, y, "S8:%08xH   RA:%08xH   LO:%08xH", (u32)ctx->s8, (u32)ctx->ra, (u32)ctx->lo);

    y += 13;
    Fault_PrintFPCSR(0x1E, y, ctx->fpcsr);

    y += 13;
    Fault_PrintFReg(0x1E, y, 0, &ctx->fp0.f.f_even);
    Fault_PrintFReg(0xA0, y, 2, &ctx->fp2.f.f_even);
    y += 9;
    Fault_PrintFReg(0x1E, y, 4, &ctx->fp4.f.f_even);
    Fault_PrintFReg(0xA0, y, 6, &ctx->fp6.f.f_even);
    y += 9;
    Fault_PrintFReg(0x1E, y, 8, &ctx->fp8.f.f_even);
    Fault_PrintFReg(0xA0, y, 0xA, &ctx->fp10.f.f_even);
    y += 9;
    Fault_PrintFReg(0x1E, y, 0xC, &ctx->fp12.f.f_even);
    Fault_PrintFReg(0xA0, y, 0xE, &ctx->fp14.f.f_even);
    y += 9;
    Fault_PrintFReg(0x1E, y, 0x10, &ctx->fp16.f.f_even);
    Fault_PrintFReg(0xA0, y, 0x12, &ctx->fp18.f.f_even);
    y += 9;
    Fault_PrintFReg(0x1E, y, 0x14, &ctx->fp20.f.f_even);
    Fault_PrintFReg(0xA0, y, 0x16, &ctx->fp22.f.f_even);
    y += 9;
    Fault_PrintFReg(0x1E, y, 0x18, &ctx->fp24.f.f_even);
    Fault_PrintFReg(0xA0, y, 0x1A, &ctx->fp26.f.f_even);
    y += 9;
    Fault_PrintFReg(0x1E, y, 0x1C, &ctx->fp28.f.f_even);
    Fault_PrintFReg(0xA0, y, 0x1E, &ctx->fp30.f.f_even);

    osWritebackDCacheAll();
}

void Fault_LogThreadContext(OSThread* thread) {
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

    Fault_LogFPCSR((s32)ctx->fpcsr);
    osSyncPrintf("\n");
    Fault_LogFReg(0, &ctx->fp0.f.f_even);
    Fault_LogFReg(2, &ctx->fp2.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(4, &ctx->fp4.f.f_even);
    Fault_LogFReg(6, &ctx->fp6.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(8, &ctx->fp8.f.f_even);
    Fault_LogFReg(0xA, &ctx->fp10.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(0xC, &ctx->fp12.f.f_even);
    Fault_LogFReg(0xE, &ctx->fp14.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(0x10, &ctx->fp16.f.f_even);
    Fault_LogFReg(0x12, &ctx->fp18.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(0x14, &ctx->fp20.f.f_even);
    Fault_LogFReg(0x16, &ctx->fp22.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(0x18, &ctx->fp24.f.f_even);
    Fault_LogFReg(0x1A, &ctx->fp26.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(0x1C, &ctx->fp28.f.f_even);
    Fault_LogFReg(0x1E, &ctx->fp30.f.f_even);
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
    s32 var_s0;

    Fault_DrawRecBlack(0x16, 0x10, 0x114, 0xD0);
    Fault_DrawText(0x28, 0x1E, "SegmentBaseAddress");

    for (var_s0 = 0; var_s0 < 0x10; var_s0++) {
        Fault_DrawText(0x28, 0x28 + 8 * var_s0, "%2d:%08x", var_s0, gSegments[var_s0]);
    }
    Fault_DrawText(0x28, 0xB4, "Arena_failcnt = %d", D_80105A90_unknown);
}

void Fault_DrawMemDumpContents(const char* title, void* memory, u32 arg2) {
    const char* effectiveTitle;
    s32 x;
    s32 y;
    u32* ptr;

    ptr = (u32*)((u32)memory & ~3);
    Fault_DrawRecBlack(0x16, 0x10, 0x114, 0xD0);
    if (title != NULL) {
        effectiveTitle = title;
    } else {
        effectiveTitle = "PrintDump";
    }
    Fault_DrawText(0x24, 0x12, "%s %08x", effectiveTitle, ptr);
    if ((u32)ptr >= 0x80000000) {
        if ((u32)ptr <= 0x80400000) {
            for (y = 28; y != 226; y += 9) {
                Fault_DrawText(28, y, "%06x", ptr);
                for (x = 82; x < 290; x += 52) {
                    Fault_DrawText(x, y, "%08x", *(ptr++));
                }
            }
        }
    }
}

void Fault_DrawMemDumpPC(OSThread* arg0) {
    u32* temp_v0 = (u32*)arg0->context.pc;

    if ((temp_v0 >= (u32*)0x80000020) && (temp_v0 <= (u32*)0x80400000)) {
        Fault_DrawMemDumpContents("PC Trace", temp_v0 - 0x20, 0);
    }
}

void Fault_DrawMemDumpSP(OSThread* arg0) {
    u32* temp_t7 = (u32*)(u32)arg0->context.sp;

    if ((temp_t7 >= (u32*)0x80000020) && (temp_t7 <= (u32*)0x80400000)) {
        Fault_DrawMemDumpContents("Stack Trace", temp_t7, 0);
    }
}

void func_800AF3DC(void) {
    s32 i;

    Fault_DrawRecBlack(0x16, 0x10, 0x114, 0xD0);
    Fault_DrawText(0x24, 0x12, "ROM DEBUG");

    for (i = 0; i < 0x10; i++) {
        Fault_DrawText(((i % 4) * 0x34) + 0x52, ((i / 4) * 9) + 0x1C, "%08x", B_80122570_unknown[i]);
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
    u32 temp_a0;
    FaultClient* var_v1;
    FaultClient* var_a1;

    var_v1 = gFaultMgr.clients;
    var_a1 = NULL;
    temp_a0 = osSetIntMask(1);
    while (var_v1 != NULL) {
        if (var_v1 == client) {
            if (var_a1 != NULL) {
                var_a1->next = client->next;
            } else {
                gFaultMgr.clients = client->next;
            }
            break;
        } else {
            var_a1 = var_v1;
            var_v1 = var_v1->next;
        }
    }
    osSetIntMask(temp_a0);
}

void Fault_ProcessClients(void) {
    s32 temp_a3;
    s32 i;
    FaultClient* client;

    client = gFaultMgr.clients;
    i = 0;
    while (client != NULL) {
        if (client->callback != NULL) {
            Fault_DrawRecBlack(0x16, 0x10, 0x114, 0xD0);
            Fault_DrawText(0x1E, 0x14, "CallBack (%d) %08x %08x %08x", i++, client, client->arg0, client->arg1);
            ((void (*)(void*, void*))client->callback)(client->arg0, client->arg1);
            Fault_WaitInput();
        }
        client = client->next;
    }
}

void Fault_ThreadEntry(void* arg0) {
    OSMesg sp54;
    OSThread* var_s0;

    osSetEventMesg(0xAU, &gFaultMgr.queue, (OSMesg)1);
    osSetEventMesg(0xCU, &gFaultMgr.queue, (OSMesg)2);
    while (true) {
        do {
            osRecvMesg(&gFaultMgr.queue, &sp54, 1);
            if (sp54 == (OSMesg)1) {
                gFaultMsgId = 1;
                osSyncPrintf("フォルトマネージャ:OS_EVENT_CPU_BREAKを受信しました\n");
            } else if (sp54 == (OSMesg)2) {
                gFaultMsgId = 2;
                osSyncPrintf("フォルトマネージャ:OS_EVENT_FAULTを受信しました\n");
            } else {
                gFaultMsgId = 3;
                osSyncPrintf("フォルトマネージャ:不明なメッセージを受信しました\n");
            }
            var_s0 = __osGetCurrFaultedThread();
            osSyncPrintf("__osGetCurrFaultedThread()=%08x\n", var_s0);
            if (var_s0 == NULL) {
                var_s0 = Fault_FindFaultedThread();
                osSyncPrintf("FindFaultedThread()=%08x\n", var_s0);
            }
        } while (var_s0 == NULL);
        sFaultFaultedThread = var_s0;
        Fault_LogThreadContext(var_s0);
        osSyncPrintf("%d %s %d:%s = %d\n", osGetThreadId(NULL), "fault.c", 0x5AE, "fault_display_enable",
                     sFaultDisplayEnable);
        while (!sFaultDisplayEnable) {
            Fault_SleepImpl(0x3E8U);
        }
        Fault_SleepImpl(0x1F4U);
        Fault_DrawCornerRecRed();
        Fault_WaitForButtonCombo();
        do {
            func_800AF558();
            Fault_PrintThreadContext(var_s0);
            Fault_WaitInput();
            func_800AF0E0();
            Fault_WaitInput();
            func_800AF3DC();
            Fault_WaitInput();
            Fault_DrawMemDumpSP(var_s0);
            Fault_WaitInput();
            Fault_DrawMemDumpPC(var_s0);
            Fault_WaitInput();
            Fault_ProcessClients();
        } while (!sFaultExit);
        while (!sFaultExit) {}
        Fault_ResumeThread(var_s0);
    }
}

void Fault_SetFrameBuffer(void* fb, u16 w, u16 h) {
    gFaultMgr.framebuffer = (s32)fb;
    gFaultMgr.fbWidth = w;
    gFaultMgr.fbDepth = h;
}

void Fault_Init(void) {
    sFaultDisplayEnable = 1;
    gFaultMgr.framebuffer = (osMemSize | 0x80000000) + 0xFFFDA800;
    gFaultMgr.fbWidth = 0x140;
    gFaultMgr.fbDepth = 0x10;
    gFaultMgr.clients = 0;
    osCreateMesgQueue(&gFaultMgr.queue, &gFaultMgr.msg, 1);
    StackCheck_Init(&sFaultStackInfo, sFaultStack, STACK_TOP(sFaultStack), 0U, 0x100, "fault");
    osCreateThread(&gFaultMgr.thread, 2, Fault_ThreadEntry, NULL, STACK_TOP(sFaultStack), 0x7F);
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
        Fault_DrawRecBlack(0x16, 0x10, 0x114, 0x22);
        Fault_DrawText(0x18, 0x12, "HungUp on Thread %d", osGetThreadId(NULL));
        Fault_DrawText(0x18, 0x1C, "%s", exp1 != NULL ? exp1 : "(NULL)");
        Fault_DrawText(0x18, 0x26, "%s", exp2 != NULL ? exp2 : "(NULL)");
        Fault_WaitInput();
        Fault_ProcessClients();
    } while (true);
}

void Fault_AddHungupAndCrash(const char* file, int line) {
    char sp18[256];

    sprintf(sp18, "HungUp %s:%d", file, line);
    Fault_AddHungupAndCrashImpl(sp18, NULL);
}
