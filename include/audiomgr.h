#ifndef AUDIOMGR_H
#define AUDIOMGR_H

#include "sched.h"

typedef enum {
    AUDIOMGR_DEBUG_LEVEL_NONE = 0,
    AUDIOMGR_DEBUG_LEVEL_NO_RSP = 1,
    AUDIOMGR_DEBUG_LEVEL_NO_UPDATE = 2
} AudioMgrDebugLevel;

typedef struct {
    /* 0x00 */ OSTask task;
    /* 0x40 */ OSMesgQueue* msgQueue;
    /* 0x44 */ void* unk_44; // probably a message that gets unused.
    /* 0x48 */ char unk_48[0x8];
} AudioTask; // size = 0x50

typedef struct {
    /* 0x0000 */ IrqMgr*     irqMgr;
    /* 0x0004 */ Scheduler*  sched;
    /* 0x0008 */ OSScTask    audioTask;
    /* 0x0070 */ AudioTask*  rspTask;
    /* 0x0074 */ OSMesgQueue interruptQueue;
    /* 0x008C */ OSMesg      interruptMsgBuf[8];
    /* 0x00AC */ OSMesgQueue taskDoneQueue;
    /* 0x00C4 */ OSMesg      taskDoneMsg;
    /* 0x00C8 */ OSMesgQueue initQueue;
    /* 0x00E0 */ OSMesg      initMsg;
    /* 0x00E8 */ OSThread    thread;
} AudioMgr; // size = 0x298

void AudioMgr_Init(AudioMgr* audioMgr, void* stack, OSPri pri, OSId id, Scheduler* sched, IrqMgr* irqMgr);

void AudioMgr_WaitForInit(AudioMgr* audioMgr);

void AudioMgr_StopAllSfx(void);

#endif
