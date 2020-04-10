#include <ultra64.h>
#include <global.h>
#include <alloca.h>
#include <vt.h>
#include <PR/os_cont.h>

// data
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
    "Unimplemented operation",
    "Invalid operation",
    "Division by zero",
    "Overflow",
    "Underflow",
    "Inexact operation",
};

// bss
FaultThreadStruct* sFaultStructPtr;
u8 sFaultIsWaitingForInput;
char sFaultStack[0x600];
char sFaultThreadInfo[0x20];
FaultThreadStruct gFaultStruct;

#pragma GLOBAL_ASM("asm/non_matchings/code/fault/pad_800D3F10.s")

void Fault_SleepImpl(u32 duration) {
    u64 value = (duration * OS_CPU_COUNTER) / 1000ull;
    Sleep_Cycles(value);
}

void Fault_ClientProcessThread(FaultClientContext* ctx) {
    if (ctx->callback) {
        ctx->ret = ctx->callback(ctx->param0, ctx->param1);
    }

    if (ctx->queue) {
        osSendMesg(ctx->queue, ctx->msg, 1);
    }
}

void Fault_ProcessClientContext(FaultClientContext* ctx) {
    OSMesgQueue queue;
    OSMesg msg;
    OSMesg recMsg;
    OSThread* thread;
    OSTimer timer;
    u32 timerMsgVal;

    timerMsgVal = 666;
    thread = NULL;

    osCreateMesgQueue(&queue, &msg, 1);
    ctx->queue = &queue;
    ctx->msg = NULL;

    if (sFaultStructPtr->currClientThreadSp != 0) {
        thread = alloca(sizeof(OSThread));
        osCreateThread(thread, 2, Fault_ClientProcessThread, ctx, sFaultStructPtr->currClientThreadSp, 0x7E);
        osStartThread(thread);
    } else {
        Fault_ClientProcessThread(ctx);
    }

    while (true) {
        osSetTimer(&timer, OS_USEC_TO_CYCLES(1000000), 0, &queue, (OSMesg)timerMsgVal);
        osRecvMesg(&queue, &recMsg, 1);

        if (recMsg != (OSMesg)666) {
            break;
        }

        if (!sFaultIsWaitingForInput) {
            ctx->ret = -1;
            break;
        }
    }

    osStopTimer(&timer);

    if (thread != NULL) {
        osStopThread(thread);
        osDestroyThread(thread);
    }
}

u32 Fault_ProcessClient(u32 callback, u32 param0, u32 param1) {
    FaultClientContext a;
    a.callback = callback;
    a.param0 = param0;
    a.param1 = param1;
    a.ret = 0;
    Fault_ProcessClientContext(&a);
    return a.ret;
}

#ifdef NON_MATCHING
// minor ordering differences
void Fault_AddClient(FaultClient* client, void* callback, void* param0, void* param1) {
    OSIntMask mask;
    u32 alreadyExists;
    FaultClient* iter;

    alreadyExists = false;
    mask = osSetIntMask(1);

    iter = sFaultStructPtr->clients;
    while (iter) {
        if (iter == client) {
            alreadyExists = true;
            goto end;
        }
        iter = iter->next;
    }

    client->callback = callback;
    client->param1 = param0;
    client->param2 = param1;
    client->next = sFaultStructPtr->clients;
    sFaultStructPtr->clients = client;

end:
    osSetIntMask(mask);
    if (alreadyExists) {
        osSyncPrintf(VT_COL(RED, WHITE) "fault_AddClient: %08x は既にリスト中にある\n" VT_RST, client);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/fault/Fault_AddClient.s")
#endif

void Fault_RemoveClient(FaultClient* client) {
    FaultClient* iter;
    FaultClient* lastIter;
    OSIntMask mask;
    u32 listIsEmpty;

    iter = sFaultStructPtr->clients;
    listIsEmpty = 0;
    lastIter = NULL;

    mask = osSetIntMask(1);

    while (iter) {
        if (iter == client) {
            if (lastIter) {
                lastIter->next = client->next;
            } else {
                sFaultStructPtr->clients = client;
                if (sFaultStructPtr->clients) {
                    sFaultStructPtr->clients = client->next;
                } else {
                    listIsEmpty = 1;
                }
            }
            break;
        }

        lastIter = iter;
        iter = iter->next;
    }

    osSetIntMask(mask);

    if (listIsEmpty) {
        osSyncPrintf(VT_COL(RED, WHITE) "fault_RemoveClient: %08x リスト不整合です\n" VT_RST, client);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/fault/Fault_AddAddrConvClient.s")

void Fault_RemoveAddrConvClient(FaultAddrConvClient* client) {
    FaultAddrConvClient* iter;
    FaultAddrConvClient* lastIter;
    OSIntMask mask;
    u32 listIsEmpty;

    iter = sFaultStructPtr->addrConvClients;
    listIsEmpty = 0;
    lastIter = NULL;

    mask = osSetIntMask(1);

    while (iter) {
        if (iter == client) {
            if (lastIter) {
                lastIter->next = client->next;
            } else {
                sFaultStructPtr->addrConvClients = client;
                if (sFaultStructPtr->addrConvClients) {
                    sFaultStructPtr->addrConvClients = client->next;
                } else {
                    listIsEmpty = 1;
                }
            }
            break;
        }

        lastIter = iter;
        iter = iter->next;
    }

    osSetIntMask(mask);

    if (listIsEmpty) {
        osSyncPrintf(VT_COL(RED, WHITE) "fault_AddressConverterRemoveClient: %08x は既にリスト中にある\n" VT_RST,
                     client);
    }
}

u32 Fault_ConvertAddress(FaultAddrConvClient* client) {
    u32 ret;
    FaultAddrConvClient* iter = sFaultStructPtr->addrConvClients;

    while (iter) {
        if (iter->callback) {
            ret = Fault_ProcessClient(iter->callback, client, iter->param);
            if (ret == -1) {
                Fault_RemoveAddrConvClient(iter);
            } else if (ret) {
                return ret;
            }
        }
        iter = iter->next;
    }

    return 0;
}

void Fault_Sleep(u32 duration) {
    Fault_SleepImpl(duration);
}

void Fault_PadCallback(Input* input) {
    // BUG: this function is not called correctly and thus will crash from reading a bad pointer at 0x800C7E4C
    func_800C7E08(input, 0);
}

void Fault_UpdatePadImpl() {
    sFaultStructPtr->padCallback(&sFaultStructPtr->padInput);
}

#ifdef NON_MATCHING
// ordering differences and possibly regalloc
u32 Fault_WaitForInputImpl() {
    u16 kDown;
    u32 exitDebugger;
    s32 count = 600;
    Input* curInput = &sFaultStructPtr->padInput;

    while (true) {
        while (true) {
            Fault_Sleep(0x10);
            Fault_UpdatePadImpl();

            kDown = curInput->padPressed;

            if (kDown == 0x20) {
                sFaultStructPtr->faultActive = !sFaultStructPtr->faultActive;
            }

            if (!sFaultStructPtr->faultActive) {
                break;
            }

            if (count-- < 1) {
                return false;
            }
        }

        if (kDown == 0x8000 || kDown == 0x100) {
            return false;
        }

        if (kDown == 0x200) {
            return true;
        }

        if (kDown == 0x800) {
            FaultDrawer_SetOsSyncPrintfEnabled(true);
        }

        if (kDown == 0x400) {
            FaultDrawer_SetOsSyncPrintfEnabled(false);
        }
    }

    return false;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/fault/Fault_WaitForInputImpl.s")
#endif

void Fault_WaitForInput() {
    sFaultIsWaitingForInput = 1;
    Fault_WaitForInputImpl();
    sFaultIsWaitingForInput = 0;
}

void Fault_DrawRec(s32 x, s32 y, s32 w, s32 h, u16 color) {
    FaultDrawer_DrawRecImpl(x, y, x + w - 1, y + h - 1, color);
}

void Fault_FillScreenBlack() {
    FaultDrawer_SetForeColor(0xFFFF);
    FaultDrawer_SetBackColor(1);
    FaultDrawer_FillScreen();
    FaultDrawer_SetBackColor(0);
}

void Fault_FillScreenRed() {
    FaultDrawer_SetForeColor(0xFFFF);
    FaultDrawer_SetBackColor(0xF001);
    FaultDrawer_FillScreen();
    FaultDrawer_SetBackColor(0);
}

void Fault_DrawCornerRec(u16 color) {
    Fault_DrawRec(0x16, 0x10, 8, 1, color);
}

void Fault_PrintFReg(s32 idx, f32* value) {
    u32 raw = *(u32*)value;
    s32 v0 = ((raw & 0x7f800000) >> 0x17) - 0x7f;

    if ((v0 >= -0x7e && v0 < 0x80) || raw == 0) {
        FaultDrawer_Printf("F%02d:%14.7e ", idx, *value);
    } else {
        FaultDrawer_Printf("F%02d:  %08x(16) ", idx, raw);
    }
}

void Fault_LogFReg(s32 idx, f32* value) {
    u32 raw = *(u32*)value;
    s32 v0 = ((raw & 0x7f800000) >> 0x17) - 0x7f;

    if ((v0 >= -0x7e && v0 < 0x80) || raw == 0) {
        osSyncPrintf("F%02d:%14.7e ", idx, *value);
    } else {
        osSyncPrintf("F%02d:  %08x(16) ", idx, *(u32*)value);
    }
}

void Fault_PrintFPCR(u32 value) {
    s32 i;
    u32 flag = 0x20000;
    FaultDrawer_Printf("FPCSR:%08xH ", value);
    for (i = 0; i < 6; i++) {
        if (value & flag) {
            FaultDrawer_Printf("(%s)", sExceptionNames[i + 18]);
            break;
        }
        flag >>= 1;
    }
    FaultDrawer_Printf("\n");
}

void Fault_LogFPCR(u32 value) {
    s32 i;
    u32 flag = 0x20000;
    osSyncPrintf("FPCSR:%08xH  ", value);
    for (i = 0; i < 6; i++) {
        if (value & flag) {
            osSyncPrintf("(%s)\n", sExceptionNames[i + 18]);
            break;
        }
        flag >>= 1;
    }
}

void Fault_PrintThreadContext(OSThread* t) {
    __OSThreadContext* ctx;
    s32 causeStrIdx = (s32)((((u32)t->context.cause >> 2) & 0x1f) << 0x10) >> 0x10;
    if (causeStrIdx == 0x17) {
        causeStrIdx = 0x10;
    }
    if (causeStrIdx == 0x1f) {
        causeStrIdx = 0x11;
    }

    FaultDrawer_FillScreen();
    FaultDrawer_SetCharPad(-2, 4);
    FaultDrawer_SetCursor(0x16, 0x14);

    ctx = &t->context;
    FaultDrawer_Printf("THREAD:%d (%d:%s)\n", t->id, causeStrIdx, sExceptionNames[causeStrIdx]);
    FaultDrawer_SetCharPad(-1, 0);

    FaultDrawer_Printf("PC:%08xH SR:%08xH VA:%08xH\n", (u32)ctx->pc, (u32)ctx->sr, (u32)ctx->badvaddr);
    FaultDrawer_Printf("AT:%08xH V0:%08xH V1:%08xH\n", (u32)ctx->at, (u32)ctx->v0, (u32)ctx->v1);
    FaultDrawer_Printf("A0:%08xH A1:%08xH A2:%08xH\n", (u32)ctx->a0, (u32)ctx->a1, (u32)ctx->a2);
    FaultDrawer_Printf("A3:%08xH T0:%08xH T1:%08xH\n", (u32)ctx->a3, (u32)ctx->t0, (u32)ctx->t1);
    FaultDrawer_Printf("T2:%08xH T3:%08xH T4:%08xH\n", (u32)ctx->t2, (u32)ctx->t3, (u32)ctx->t4);
    FaultDrawer_Printf("T5:%08xH T6:%08xH T7:%08xH\n", (u32)ctx->t5, (u32)ctx->t6, (u32)ctx->t7);
    FaultDrawer_Printf("S0:%08xH S1:%08xH S2:%08xH\n", (u32)ctx->s0, (u32)ctx->s1, (u32)ctx->s2);
    FaultDrawer_Printf("S3:%08xH S4:%08xH S5:%08xH\n", (u32)ctx->s3, (u32)ctx->s4, (u32)ctx->s5);
    FaultDrawer_Printf("S6:%08xH S7:%08xH T8:%08xH\n", (u32)ctx->s6, (u32)ctx->s7, (u32)ctx->t8);
    FaultDrawer_Printf("T9:%08xH GP:%08xH SP:%08xH\n", (u32)ctx->t9, (u32)ctx->gp, (u32)ctx->sp);
    FaultDrawer_Printf("S8:%08xH RA:%08xH LO:%08xH\n\n", (u32)ctx->s8, (u32)ctx->ra, (u32)ctx->lo);

    Fault_PrintFPCR(ctx->fpcsr);
    FaultDrawer_Printf("\n");
    Fault_PrintFReg(0, &ctx->fp0.f.f_even);
    Fault_PrintFReg(2, &ctx->fp2.f.f_even);
    FaultDrawer_Printf("\n");
    Fault_PrintFReg(4, &ctx->fp4.f.f_even);
    Fault_PrintFReg(6, &ctx->fp6.f.f_even);
    FaultDrawer_Printf("\n");
    Fault_PrintFReg(8, &ctx->fp8.f.f_even);
    Fault_PrintFReg(0xa, &ctx->fp10.f.f_even);
    FaultDrawer_Printf("\n");
    Fault_PrintFReg(0xc, &ctx->fp12.f.f_even);
    Fault_PrintFReg(0xe, &ctx->fp14.f.f_even);
    FaultDrawer_Printf("\n");
    Fault_PrintFReg(0x10, &ctx->fp16.f.f_even);
    Fault_PrintFReg(0x12, &ctx->fp18.f.f_even);
    FaultDrawer_Printf("\n");
    Fault_PrintFReg(0x14, &ctx->fp20.f.f_even);
    Fault_PrintFReg(0x16, &ctx->fp22.f.f_even);
    FaultDrawer_Printf("\n");
    Fault_PrintFReg(0x18, &ctx->fp24.f.f_even);
    Fault_PrintFReg(0x1a, &ctx->fp26.f.f_even);
    FaultDrawer_Printf("\n");
    Fault_PrintFReg(0x1c, &ctx->fp28.f.f_even);
    Fault_PrintFReg(0x1e, &ctx->fp30.f.f_even);
    FaultDrawer_Printf("\n");
    FaultDrawer_SetCharPad(0, 0);
}

void Fault_LogThreadContext(OSThread* t) {
    __OSThreadContext* ctx;
    s32 causeStrIdx = (s32)((((u32)t->context.cause >> 2) & 0x1f) << 0x10) >> 0x10;
    if (causeStrIdx == 0x17) {
        causeStrIdx = 0x10;
    }
    if (causeStrIdx == 0x1f) {
        causeStrIdx = 0x11;
    }

    ctx = &t->context;
    osSyncPrintf("\n");
    osSyncPrintf("THREAD ID:%d (%d:%s)\n", t->id, causeStrIdx, sExceptionNames[causeStrIdx]);

    osSyncPrintf("PC:%08xH   SR:%08xH   VA:%08xH\n", (u32)ctx->pc, (u32)ctx->sr, (u32)ctx->badvaddr);
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
    Fault_LogFPCR(ctx->fpcsr);
    osSyncPrintf("\n");
    Fault_LogFReg(0, &ctx->fp0.f.f_even);
    Fault_LogFReg(2, &ctx->fp2.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(4, &ctx->fp4.f.f_even);
    Fault_LogFReg(6, &ctx->fp6.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(8, &ctx->fp8.f.f_even);
    Fault_LogFReg(0xa, &ctx->fp10.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(0xc, &ctx->fp12.f.f_even);
    Fault_LogFReg(0xe, &ctx->fp14.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(0x10, &ctx->fp16.f.f_even);
    Fault_LogFReg(0x12, &ctx->fp18.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(0x14, &ctx->fp20.f.f_even);
    Fault_LogFReg(0x16, &ctx->fp22.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(0x18, &ctx->fp24.f.f_even);
    Fault_LogFReg(0x1a, &ctx->fp26.f.f_even);
    osSyncPrintf("\n");
    Fault_LogFReg(0x1c, &ctx->fp28.f.f_even);
    Fault_LogFReg(0x1e, &ctx->fp30.f.f_even);
    osSyncPrintf("\n");
}

OSThread* Fault_FindFaultedThread() {
    OSThread* iter = func_80104140();
    while (iter->priority != -1) {
        if (iter->priority > 0 && iter->priority < 0x7f && (iter->flags & 3)) {
            return iter;
        }
        iter = iter->tlnext;
    }
    return NULL;
}

void Fault_Wait5Seconds(void) {
    OSTime start[2]; // to make the function allocate 0x28 bytes of stack instead of 0x20
    start[0] = osGetTime();
    do {
        Fault_Sleep(0x10);
    } while ((osGetTime() - start[0]) < OS_USEC_TO_CYCLES(5000000) + 1); // 0xdf84759

    sFaultStructPtr->faultActive = true;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/fault/Fault_WaitForButtonCombo.s")

void Fault_DrawMemDumpPage(const char* title, u32* addr, u32 param_3) {
    u32* alignedAddr;
    u32* writeAddr;
    s32 y;
    s32 x;

    alignedAddr = addr;

    if (alignedAddr < (u32*)0x80000000) {
        alignedAddr = (u32*)0x80000000;
    }
    if (alignedAddr > (u32*)0x807fff00) {
        alignedAddr = (u32*)0x807fff00;
    }

    alignedAddr = (u32*)((u32)alignedAddr & ~3);
    writeAddr = alignedAddr;
    Fault_FillScreenBlack();
    FaultDrawer_SetCharPad(-2, 0);

    FaultDrawer_DrawText(0x24, 0x12, "%s %08x", title ? title : "PrintDump", alignedAddr);
    if (alignedAddr >= (u32*)0x80000000 && alignedAddr < (u32*)0xC0000000) {
        for (y = 0x1C; y != 0xE2; y += 9) {
            FaultDrawer_DrawText(0x18, y, "%06x", writeAddr);
            for (x = 0x52; x != 0x122; x += 0x34) {
                FaultDrawer_DrawText(x, y, "%08x", *writeAddr++);
            }
        }
    }

    FaultDrawer_SetCharPad(0, 0);
}

#ifdef NON_MATCHING
// saved register and stack usage differences
// possibly some minor ordering and regalloc differences
void Fault_DrawMemDump(u32 pc, u32 sp, u32 unk0, u32 unk1) {
    Input* curInput = &sFaultStructPtr->padInput;
    u32 addr = pc;
    s32 count;
    s32 off;

    while (true) {
        if (addr < 0x80000000) {
            addr = 0x80000000;
        }
        if (addr > 0x807fff00) {
            addr = 0x807fff00;
        }

        addr &= ~0xF;
        Fault_DrawMemDumpPage("Dump", (u32*)addr, 0);
        count = 600;

        while (sFaultStructPtr->faultActive) {
            if (count == 0) {
                return;
            }

            count--;
            Fault_Sleep(0x10);
            Fault_UpdatePadImpl();
            if (!~(curInput->padPressed | ~L_TRIG)) {
                sFaultStructPtr->faultActive = false;
            }
        }

        do {
            Fault_Sleep(0x10);
            Fault_UpdatePadImpl();
        } while (curInput->padPressed == 0);

        if (!~(curInput->padPressed | ~START_BUTTON)) {
            return;
        }

        if (!~(curInput->raw.pad | ~A_BUTTON)) {
            return;
        }

        off = 0x10;
        if (!~(curInput->raw.pad | ~Z_TRIG)) {
            off = 0x100;
        }
        if (!~(curInput->raw.pad | ~B_BUTTON)) {
            off <<= 8;
        }
        if (!~(curInput->raw.pad | ~U_JPAD)) {
            addr -= off;
        }
        if (!~(curInput->raw.pad | ~D_JPAD)) {
            addr += off;
        }
        if (!~(curInput->raw.pad | ~U_CBUTTONS)) {
            addr = pc;
        }
        if (!~(curInput->raw.pad | ~D_CBUTTONS)) {
            addr = sp;
        }
        if (!~(curInput->raw.pad | ~L_CBUTTONS)) {
            addr = unk0;
        }
        if (!~(curInput->raw.pad | ~R_CBUTTONS)) {
            addr = unk1;
        }
        if (!~(curInput->raw.pad | ~L_TRIG)) {
            break;
        }
    }

    sFaultStructPtr->faultActive = true;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/fault/Fault_DrawMemDump.s")
#endif

#pragma GLOBAL_ASM("asm/non_matchings/code/fault/func_800D59F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/fault/Fault_DrawStackTrace.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/fault/Fault_LogStackTrace.s")

void Fault_ResumeThread(OSThread* t) {
    t->context.cause = 0;
    t->context.fpcsr = 0;
    t->context.pc += 4;
    *(u32*)t->context.pc = 0xd;
    osWritebackDCache(t->context.pc, 4);
    osInvalICache(t->context.pc, 4);
    osStartThread(t);
}

void Fault_CommitFB() {
    u16* fb;
    osViSetYScale(1.0f);
    osViSetMode(&osViModeNtscLan1);
    osViSetSpecialFeatures(0x42); // gama_disable|dither_fliter_enable_aa_mode3_disable
    osViBlack(false);

    if (sFaultStructPtr->fb) {
        fb = sFaultStructPtr->fb;
    } else {
        fb = (u16*)osViGetNextFramebuffer();
        if ((u32)fb == 0x80000000) {
            fb = (u16*)((osMemSize | 0x80000000) - 0x25800);
        }
    }

    osViSwapBuffer(fb);
    FaultDrawer_SetDrawerFB(fb, 0x140, 0xf0);
}

void Fault_ProcessClients(void) {
    FaultClient* iter = sFaultStructPtr->clients;
    s32 idx = 0;

    while (iter) {
        if (iter->callback) {
            Fault_FillScreenBlack();
            FaultDrawer_SetCharPad(-2, 0);
            FaultDrawer_Printf("\x1a"
                               "8CallBack (%d) %08x %08x %08x\n"
                               "\x1a"
                               "7",
                               idx++, iter, iter->param1, iter->param2);
            FaultDrawer_SetCharPad(0, 0);
            Fault_ProcessClient(iter->callback, iter->param1, iter->param2);
            Fault_WaitForInput();
            Fault_CommitFB();
        }
        iter = iter->next;
    }
}

void Fault_UpdatePad() {
    Fault_UpdatePadImpl();
}

#ifdef NON_MATCHING
// saved register and stack usage differences
void Fault_ThreadEntry(void* arg) {
    OSThread* faultedThread;
    OSMesg msg;

    osSetEventMesg(OS_EVENT_CPU_BREAK, &sFaultStructPtr->queue, 1);
    osSetEventMesg(OS_EVENT_FAULT, &sFaultStructPtr->queue, 2);

    while (true) {
        do {
            osRecvMesg(&sFaultStructPtr->queue, &msg, 1);

            if (msg == (OSMesg)1) {
                sFaultStructPtr->msgId = 1;
                osSyncPrintf("フォルトマネージャ:OS_EVENT_CPU_BREAKを受信しました\n");
            } else if (1 && msg == (OSMesg)2) {
                sFaultStructPtr->msgId = 2;
                osSyncPrintf("フォルトマネージャ:OS_EVENT_FAULTを受信しました\n");
            } else if (msg == (OSMesg)3) {
                Fault_UpdatePad();
                faultedThread = NULL;
                continue;
            } else {
                sFaultStructPtr->msgId = 3;
                osSyncPrintf("フォルトマネージャ:不明なメッセージを受信しました\n");
            }

            faultedThread = __osGetCurrFaultedThread();
            osSyncPrintf("__osGetCurrFaultedThread()=%08x\n", faultedThread);

            if (faultedThread == NULL) {
                faultedThread = Fault_FindFaultedThread();
                osSyncPrintf("FindFaultedThread()=%08x\n", faultedThread);
            }
        } while (faultedThread == NULL);

        __osSetFpcCsr(__osGetFpcCsr() & -0xf81);
        sFaultStructPtr->faultedThread = faultedThread;

        while (!sFaultStructPtr->faultHandlerEnabled) {
            Fault_Sleep(1000);
        }

        Fault_Sleep(500);
        Fault_CommitFB();

        if (sFaultStructPtr->faultActive) {
            Fault_Wait5Seconds();
        } else {
            Fault_DrawCornerRec(0xF801);
            Fault_WaitForButtonCombo();
        }

        sFaultStructPtr->faultActive = true;
        FaultDrawer_SetForeColor(0xFFFF);
        FaultDrawer_SetBackColor(0);

        do {
            Fault_PrintThreadContext(faultedThread);
            Fault_LogThreadContext(faultedThread);
            Fault_WaitForInput();
            Fault_FillScreenBlack();
            FaultDrawer_DrawText(0x78, 0x10, "STACK TRACE");
            Fault_DrawStackTrace(faultedThread, 0x24, 0x18, 0x16);
            Fault_LogStackTrace(faultedThread, 0x32);
            Fault_WaitForInput();
            Fault_ProcessClients();
            Fault_DrawMemDump(faultedThread->context.pc - 0x100, (u32*)faultedThread->context.sp, 0, 0);
            Fault_FillScreenRed();
            FaultDrawer_DrawText(0x40, 0x50, "    CONGRATURATIONS!    ");
            FaultDrawer_DrawText(0x40, 0x5A, "All Pages are displayed.");
            FaultDrawer_DrawText(0x40, 0x64, "       THANK YOU!       ");
            FaultDrawer_DrawText(0x40, 0x6E, " You are great debugger!");
            Fault_WaitForInput();
        } while (!sFaultStructPtr->exitDebugger);

        while (!sFaultStructPtr->exitDebugger) {}

        Fault_ResumeThread(faultedThread);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/fault/Fault_ThreadEntry.s")
#endif

void Fault_SetFB(void* fb, u16 w, u16 h) {
    sFaultStructPtr->fb = fb;
    FaultDrawer_SetDrawerFB(fb, w, h);
}

void Fault_Start(void) {
    sFaultStructPtr = &gFaultStruct;
    bzero(sFaultStructPtr, sizeof(FaultThreadStruct));
    FaultDrawer_SetDefault();
    FaultDrawer_SetInputCallback(&Fault_WaitForInput);
    sFaultStructPtr->exitDebugger = false;
    sFaultStructPtr->msgId = 0;
    sFaultStructPtr->faultHandlerEnabled = false;
    sFaultStructPtr->faultedThread = NULL;
    sFaultStructPtr->padCallback = &Fault_PadCallback;
    sFaultStructPtr->clients = NULL;
    sFaultStructPtr->faultActive = false;
    gFaultStruct.faultHandlerEnabled = true;
    osCreateMesgQueue(&sFaultStructPtr->queue, &sFaultStructPtr->msg, 1);
    StackCheck_Init(sFaultThreadInfo, &sFaultStack, sFaultStack + sizeof(sFaultStack), 0, 0x100, "fault");
    osCreateThread(&sFaultStructPtr->thread, 2, &Fault_ThreadEntry, 0, sFaultThreadInfo, 0x7f);
    osStartThread(&sFaultStructPtr->thread);
}

void Fault_HangupFaultClient(const char* arg0, const char* arg1) {
    osSyncPrintf("HungUp on Thread %d\n", osGetThreadId(0));
    osSyncPrintf("%s\n", arg0 ? arg0 : "(NULL)");
    osSyncPrintf("%s\n", arg1 ? arg1 : "(NULL)");
    FaultDrawer_Printf("HungUp on Thread %d\n", osGetThreadId(0));
    FaultDrawer_Printf("%s\n", arg0 ? arg0 : "(NULL)");
    FaultDrawer_Printf("%s\n", arg1 ? arg1 : "(NULL)");
}

void Fault_AddHungupAndCrashImpl(const char* arg0, const char* arg1) {
    FaultClient client;
    char padd[4];
    Fault_AddClient(&client, &Fault_HangupFaultClient, arg0, arg1);
    *(u32*)0x11111111 = 0; // trigger an exception
}

void Fault_AddHungupAndCrash(const char* filename, u32 line) {
    char msg[256];
    sprintf(msg, "HungUp %s:%d", filename, line);
    Fault_AddHungupAndCrashImpl(msg, NULL);
}
