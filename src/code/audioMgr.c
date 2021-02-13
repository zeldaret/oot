#include "global.h"

void func_800C3C80(AudioMgr* audioMgr) {
    Sub_AudioMgr_18* sub = audioMgr->unk_70;

    if (audioMgr->unk_70->unk_40 != NULL) {
        osSendMesg(sub->unk_40, NULL, OS_MESG_BLOCK);
    }
}

void AudioMgr_HandleRetrace(AudioMgr* audioMgr) {
    Sub_AudioMgr_18* sub;

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
        Sched_SendEntryMsg(audioMgr->sched);
    }

    D_8016A550 = osGetTime();
    if (SREG(20) >= 2) {
        sub = NULL;
    } else {
        sub = func_800E4FE0();
    }
    D_8016A558 += osGetTime() - D_8016A550;
    D_8016A550 = 0;

    if (audioMgr->unk_70 != NULL) {
        osRecvMesg(&audioMgr->unk_AC, NULL, OS_MESG_BLOCK);
        func_800C3C80(audioMgr);
    }
    audioMgr->unk_70 = sub;
}

void AudioMgr_HandlePRENMI(AudioMgr* audioMgr) {
    // Audio manager received OS_SC_PRE_NMI_MSG
    osSyncPrintf("オーディオマネージャが OS_SC_PRE_NMI_MSG を受け取りました\n");
    func_800F6C14();
}

void AudioMgr_ThreadEntry(void* arg0) {
    AudioMgr* audioMgr = (AudioMgr*)arg0;
    IrqMgrClient irqClient;
    s16* msg = NULL;

    // Start running audio manager thread
    osSyncPrintf("オーディオマネージャスレッド実行開始\n");
    func_800F70F8();
    func_800E301C(DmaMgr_DmaCallback0);
    func_800F711C();
    osSendMesg(&audioMgr->unk_C8, NULL, OS_MESG_BLOCK);
    IrqMgr_AddClient(audioMgr->irqMgr, &irqClient, &audioMgr->unk_74);

    while (true) {
        osRecvMesg(&audioMgr->unk_74, (OSMesg*)&msg, OS_MESG_BLOCK);
        switch (*msg) {
            case OS_SC_RETRACE_MSG:
                AudioMgr_HandleRetrace(audioMgr);
                while (audioMgr->unk_74.validCount != 0) {
                    osRecvMesg(&audioMgr->unk_74, (OSMesg*)&msg, OS_MESG_BLOCK);
                    switch (*msg) {
                        case OS_SC_RETRACE_MSG:
                            break;
                        case OS_SC_PRE_NMI_MSG:
                            AudioMgr_HandlePRENMI(audioMgr);
                            break;
                    }
                }
                break;
            case OS_SC_PRE_NMI_MSG:
                AudioMgr_HandlePRENMI(audioMgr);
                break;
        }
    }
}

void AudioMgr_Unlock(AudioMgr* audioMgr) {
    osRecvMesg(&audioMgr->unk_C8, NULL, OS_MESG_BLOCK);
}

void AudioMgr_Init(AudioMgr* audioMgr, void* stack, OSPri pri, OSId id, SchedContext* sched, IrqMgr* irqMgr) {
    bzero(audioMgr, sizeof(AudioMgr));

    audioMgr->sched = sched;
    audioMgr->irqMgr = irqMgr;
    audioMgr->unk_70 = NULL;

    osCreateMesgQueue(&audioMgr->unk_AC, &audioMgr->unk_C4, 1);
    osCreateMesgQueue(&audioMgr->unk_74, &audioMgr->unk_8C, 8);
    osCreateMesgQueue(&audioMgr->unk_C8, &audioMgr->unk_E0, 1);

    osSendMesg(&audioMgr->unk_AC, NULL, OS_MESG_BLOCK);

    osCreateThread(&audioMgr->unk_E8, id, AudioMgr_ThreadEntry, audioMgr, stack, pri);
    osStartThread(&audioMgr->unk_E8);
}
