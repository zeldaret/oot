#include <ultra64.h>
#include <global.h>
#include <sched.h>

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C82A0.s")

void func_800C84E4(SchedContext* sc, UNK_TYPE arg1)
{
    if (sc->unk_24C != 0)
    {
        sc->unk_24C = 0;

        if (gIrqMgrResetStatus == 0)
            ViConfig_UpdateVi(0);
    }

    func_800C82A0(arg1);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C8534.s")

void func_800C87CC(SchedContext* sc)
{
    ViConfig_UpdateVi(1);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C87F0.s")

void func_800C8910(SchedContext* sc)
{
    if (!(sc->curRSPTask->state & 0x10))
    {
        if (sc->curRSPTask->list.t.type == M_AUDTASK)
            __assert("sc->curRSPTask->list.t.type != M_AUDTASK", "../sched.c", 496);

        sc->curRSPTask->state |= 0x10;

        osSpTaskYield();

        if (D_8012D290 != 0)
            osSyncPrintf("%08d:osSpTaskYield\n", (u32)((osGetTime() * 64) / 3000));
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C89D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C8A94.s")

typedef struct
{
    /* 0x00 */ char     unk_00[0x04];
    /* 0x00 */ u32      unk_04;
    /* 0x00 */ u32      unk_08;
    /* 0x0C */ UNK_TYPE unk_0C;
    /* 0x10 */ char     unk_10[0x40];
    /* 0x50 */ OSMesgQueue* msgQ;
    /* 0x54 */ OSMesg   msg;
} struct_800C8C40;

void func_800C8BC4(SchedContext* sc, struct_800C8C40* arg1)
{
    if (sc->pendingSwapBuf1 == 0)
    {
        sc->pendingSwapBuf1 = arg1->unk_0C;

        LogUtils_CheckValidPointer("sc->pending_swapbuffer1", sc->pendingSwapBuf1, "../sched.c", 618);

        if ((sc->unk_240 == NULL) || (sc->unk_240->unk_12 < 1))
            func_800C84E4(sc, arg1->unk_0C);
    }
}

u32 func_800C8C40(SchedContext* sc, struct_800C8C40* arg1)
{
    if (!(arg1->unk_04 & 3))
    {
        if (arg1->msgQ != NULL)
            osSendMesg(arg1->msgQ, arg1->msg, OS_MESG_BLOCK);

        if (arg1->unk_08 & 0x40)
            func_800C8BC4(sc, arg1);

        return 1;
    }

    return 0;
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C8CB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C8EDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C9018.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C91BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C94B4.s")

void func_800C95F8(OSMesgQueue* mq)
{
    if (D_8012D290 != 0)
        osSyncPrintf("osScKickEntryMsg\n");

    osSendMesg(mq, 670, OS_MESG_BLOCK);
}

#pragma GLOBAL_ASM("asm/non_matchings/code/sched/func_800C9644.s")

void func_800C9874(SchedContext* sc, void* stack, OSPri priority, UNK_TYPE arg3, UNK_TYPE arg4, UNK_TYPE arg5)
{
    bzero(sc, sizeof(SchedContext));
    sc->unk_24C = 1;
    osCreateMesgQueue(&sc->interruptQ, sc->intBuf, 8);
    osCreateMesgQueue(&sc->cmdQ, sc->cmdMsgBuf, 8);
    osSetEventMesg(4, &sc->interruptQ, 667);
    osSetEventMesg(9, &sc->interruptQ, 668);
    IrqMgr_AddClient(arg5, &sc->unk_250, sc);
    osCreateThread(&sc->thread, 5, func_800C9644, sc, stack, priority);
    osStartThread(&sc->thread);
}
