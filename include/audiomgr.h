#ifndef AUDIOMGR_H
#define AUDIOMGR_H

#include "ultra64.h"
#include "irqmgr.h"
#include "sched.h"
#include "z64audio.h"

typedef struct {
    /* 0x0000 */ IrqMgr* irqMgr;
    /* 0x0004 */ Scheduler* sched;
    /* 0x0008 */ OSScTask audioTask;
    /* 0x0070 */ AudioTask* rspTask;
    /* 0x0074 */ OSMesgQueue interruptQueue;
    /* 0x008C */ OSMesg interruptMsgBuf[8];
    /* 0x00AC */ OSMesgQueue taskQueue;
    /* 0x00C4 */ OSMesg taskMsgBuf[1];
    /* 0x00C8 */ OSMesgQueue lockQueue;
    /* 0x00E0 */ OSMesg lockMsgBuf[1];
    /* 0x00E8 */ OSThread thread;
} AudioMgr; // size = 0x298

void AudioMgr_StopAllSfx(void);
void AudioMgr_Unlock(AudioMgr* audioMgr);
void AudioMgr_Init(AudioMgr* audioMgr, void* stack, OSPri pri, OSId id, Scheduler* sched, IrqMgr* irqMgr);

#endif
