#include "global.h"

void func_800C3C80(AudioMgr* audioMgr) {
    AudioTask* task = audioMgr->rspTask;

    if (audioMgr->rspTask->msgQueue != NULL) {
        osSendMesg(task->msgQueue, NULL, OS_MESG_BLOCK);
    }
}

void AudioMgr_HandleRetrace(AudioMgr* audioMgr) {
    AudioTask* rspTask;

    if (SREG(20) > 0) {
        audioMgr->rspTask = NULL;
    }
    if (audioMgr->rspTask != NULL) {
        audioMgr->audioTask.next = NULL;
        audioMgr->audioTask.flags = OS_SC_NEEDS_RSP;
        audioMgr->audioTask.framebuffer = NULL;

        audioMgr->audioTask.list = audioMgr->rspTask->task;
        audioMgr->audioTask.msgQueue = &audioMgr->taskQueue;

        audioMgr->audioTask.msg = NULL;
        osSendMesg(&audioMgr->sched->cmdQueue, (OSMesg)&audioMgr->audioTask, OS_MESG_BLOCK);
        Sched_Notify(audioMgr->sched);
    }

    gAudioThreadUpdateTimeStart = osGetTime();
    if (SREG(20) >= 2) {
        rspTask = NULL;
    } else {
        rspTask = func_800E4FE0();
    }
    gAudioThreadUpdateTimeAcc += osGetTime() - gAudioThreadUpdateTimeStart;
    gAudioThreadUpdateTimeStart = 0;

    if (audioMgr->rspTask != NULL) {
        osRecvMesg(&audioMgr->taskQueue, NULL, OS_MESG_BLOCK);
        func_800C3C80(audioMgr);
    }
    audioMgr->rspTask = rspTask;
}

void AudioMgr_HandlePreNMI(AudioMgr* audioMgr) {
    // "Audio manager received OS_SC_PRE_NMI_MSG"
    osSyncPrintf("オーディオマネージャが OS_SC_PRE_NMI_MSG を受け取りました\n");
    Audio_PreNMI();
}

void AudioMgr_ThreadEntry(void* arg0) {
    AudioMgr* audioMgr = (AudioMgr*)arg0;
    IrqMgrClient irqClient;
    s16* msg = NULL;

    osSyncPrintf("オーディオマネージャスレッド実行開始\n"); // "Start running audio manager thread"
    Audio_Init();
    AudioLoad_SetDmaHandler(DmaMgr_AudioDmaHandler);
    Audio_InitSound();
    osSendMesg(&audioMgr->lockQueue, NULL, OS_MESG_BLOCK);
    IrqMgr_AddClient(audioMgr->irqMgr, &irqClient, &audioMgr->interruptQueue);

    while (true) {
        osRecvMesg(&audioMgr->interruptQueue, (OSMesg*)&msg, OS_MESG_BLOCK);
        switch (*msg) {
            case OS_SC_RETRACE_MSG:
                AudioMgr_HandleRetrace(audioMgr);
                while (!MQ_IS_EMPTY(&audioMgr->interruptQueue)) {
                    osRecvMesg(&audioMgr->interruptQueue, (OSMesg*)&msg, OS_MESG_BLOCK);
                    switch (*msg) {
                        case OS_SC_RETRACE_MSG:
                            break;
                        case OS_SC_PRE_NMI_MSG:
                            AudioMgr_HandlePreNMI(audioMgr);
                            break;
                    }
                }
                break;
            case OS_SC_PRE_NMI_MSG:
                AudioMgr_HandlePreNMI(audioMgr);
                break;
        }
    }
}

void AudioMgr_Unlock(AudioMgr* audioMgr) {
    osRecvMesg(&audioMgr->lockQueue, NULL, OS_MESG_BLOCK);
}

void AudioMgr_Init(AudioMgr* audioMgr, void* stack, OSPri pri, OSId id, Scheduler* sched, IrqMgr* irqMgr) {
    bzero(audioMgr, sizeof(AudioMgr));

    audioMgr->sched = sched;
    audioMgr->irqMgr = irqMgr;
    audioMgr->rspTask = NULL;

    osCreateMesgQueue(&audioMgr->taskQueue, audioMgr->taskMsgBuf, ARRAY_COUNT(audioMgr->taskMsgBuf));
    osCreateMesgQueue(&audioMgr->interruptQueue, audioMgr->interruptMsgBuf, ARRAY_COUNT(audioMgr->interruptMsgBuf));
    osCreateMesgQueue(&audioMgr->lockQueue, audioMgr->lockMsgBuf, ARRAY_COUNT(audioMgr->lockMsgBuf));

    osSendMesg(&audioMgr->taskQueue, NULL, OS_MESG_BLOCK);

    osCreateThread(&audioMgr->thread, id, AudioMgr_ThreadEntry, audioMgr, stack, pri);
    osStartThread(&audioMgr->thread);
}
