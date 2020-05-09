#include <ultra64.h>
#include <global.h>
#include <audiomgr.h>

void func_800C3C80(AudioMgr* audioMgr);
// ? func_800C3CB8(?);
void func_800C3E40(AudioMgr* audioMgr);
void func_800C3E70(AudioMgr* audioMgr);
void func_800C3FC4(AudioMgr* audioMgr);
void func_800C3FEC(AudioMgr* audioMgr, void* stack, OSPri pri, OSId id, SchedContext* sched, IrqMgr* irqMgr);

#pragma GLOBAL_ASM("asm/non_matchings/code/audioMgr/pad_800C3C70.s")

//#pragma GLOBAL_ASM("asm/non_matchings/code/audioMgr/func_800C3C80.s")
void func_800C3C80(AudioMgr* audioMgr) {
    Sub_AudioMgr_18* sub;

    sub = audioMgr->unk_70;
    if (audioMgr->unk_70->unk_40 != NULL) {
        osSendMesg(sub->unk_40, NULL, OS_MESG_BLOCK);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/audioMgr/func_800C3CB8.s")
void func_800C3CB8(AudioMgr* audioMgr) {
    void *sp24;
    OSTime temp_t7;
    OSTime temp_ret;
    OSTime temp_ret_2;

    if (SREG(20) > 0) {
        audioMgr->unk_70 = NULL;
    }
    if (audioMgr->unk_70 != NULL) {
        audioMgr->unk_8 = NULL;
        audioMgr->unk_10 = 2;
        audioMgr->unk_14 = 0;

        audioMgr->unk_18.unk_0 = audioMgr->unk_70->unk_0;
        audioMgr->unk_18.unk_40 = &audioMgr->unk_AC;

        audioMgr->unk_5C = NULL;
        osSendMesg(&audioMgr->sched->cmdQ, &audioMgr->unk_8, OS_MESG_BLOCK);
        func_800C95F8(audioMgr->sched);
    }
    D_8016A550 = osGetTime();
    if (SREG(20) >= 2) {
        sp24 = NULL;
    } else {
        sp24 = func_800E4FE0();
    }
    D_8016A558 += osGetTime() - D_8016A550;
    D_8016A550 = 0;
    if (audioMgr->unk_70 != NULL) {
        osRecvMesg(&audioMgr->unk_AC, NULL, OS_MESG_BLOCK);
        func_800C3C80(audioMgr);
    }
    audioMgr->unk_70 = sp24;
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/audioMgr/func_800C3E40.s")
void func_800C3E40(AudioMgr* audioMgr) {
    // Audio manager received OS_SC_PRE_NMI_MSG
    osSyncPrintf("オーディオマネージャが OS_SC_PRE_NMI_MSG を受け取りました\n");
    func_800F6C14();
}

#ifdef NON_MATCHING
// branches involving *msg swapped, s5 goes unused but should be
void func_800C3E70(AudioMgr* audioMgr) {
    OSMesgQueue* queue1;
    IrqMgrClient irqClient;
    s16* msg;

    msg = NULL;
    // Start running audio manager thread
    osSyncPrintf("オーディオマネージャスレッド実行開始\n");
    func_800F70F8();
    func_800E301C(DmaMgr_DmaCallback0);
    func_800F711C();
    osSendMesg(&audioMgr->unk_C8, NULL, OS_MESG_BLOCK);
    queue1 = &audioMgr->unk_74;
    IrqMgr_AddClient(audioMgr->irqMgr, &irqClient, queue1);

    while (true) {
        osRecvMesg(queue1, (OSMesg*)&msg, OS_MESG_BLOCK);
        if (*msg != 1) {
            if (*msg != OS_SC_PRE_NMI_MSG) {
                continue;
            }
        } else {
            func_800C3CB8(audioMgr);
            if (audioMgr->unk_74.validCount == 0) {
                continue;
            } else {
                do {
                    osRecvMesg(queue1, (OSMesg*)&msg, OS_MESG_BLOCK);
                    if (*msg != 1 && *msg == OS_SC_PRE_NMI_MSG) {
                        func_800C3E40(audioMgr);
                    }
                } while (audioMgr->unk_74.validCount != 0);
            }
            continue;
        }
        func_800C3E40(audioMgr);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/code/audioMgr/func_800C3E70.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/code/audioMgr/func_800C3FC4.s")
void func_800C3FC4(AudioMgr* audioMgr) {
    osRecvMesg(&audioMgr->unk_C8, NULL, OS_MESG_BLOCK);
}

//#pragma GLOBAL_ASM("asm/non_matchings/code/audioMgr/func_800C3FEC.s")
void func_800C3FEC(AudioMgr* audioMgr, void* stack, OSPri pri, OSId id, SchedContext* sched, IrqMgr* irqMgr) {
    bzero(audioMgr, sizeof(AudioMgr));

    audioMgr->sched = sched;
    audioMgr->irqMgr = irqMgr;
    audioMgr->unk_70 = NULL;

    osCreateMesgQueue(&audioMgr->unk_AC, &audioMgr->unk_C4, 1);
    osCreateMesgQueue(&audioMgr->unk_74, &audioMgr->unk_8C, 8);
    osCreateMesgQueue(&audioMgr->unk_C8, &audioMgr->unk_E0, 1);

    osSendMesg(&audioMgr->unk_AC, NULL, OS_MESG_BLOCK);

    osCreateThread(&audioMgr->unk_E8, id, func_800C3E70, audioMgr, stack, pri);
    osStartThread(&audioMgr->unk_E8);
}
