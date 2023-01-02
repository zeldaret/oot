#ifndef SCHED_H
#define SCHED_H

#include "ultra64.h"
#include "irqmgr.h"

#define OS_SC_NEEDS_RDP     0x0001  // Task uses the RDP
#define OS_SC_NEEDS_RSP     0x0002  // Task uses the RSP
#define OS_SC_DRAM_DLIST    0x0004  // Unimplemented
#define OS_SC_PARALLEL_TASK 0x0010  // Unimplemented
#define OS_SC_LAST_TASK     0x0020  // Unimplemented
#define OS_SC_SWAPBUFFER    0x0040  // Swap framebuffer when done

#define OS_SC_DP        OS_SC_NEEDS_RDP // Task is using the RDP
#define OS_SC_SP        OS_SC_NEEDS_RSP // Task is using the RSP
#define OS_SC_YIELD     0x0010          // Task has been asked to yield
#define OS_SC_YIELDED   0x0020          // Task has yielded

#define OS_SC_RCP_MASK  (OS_SC_NEEDS_RDP | OS_SC_NEEDS_RSP)
#define OS_SC_TYPE_MASK (OS_SC_NEEDS_RDP | OS_SC_NEEDS_RSP | OS_SC_DRAM_DLIST)

typedef struct {
    /* 0x00 */ u16* framebuffer;    // current framebuffer
    /* 0x04 */ u16* swapBuffer;     // framebuffer to swap to
    /* 0x08 */ OSViMode* viMode;
    /* 0x0C */ u32 viFeatures;
    /* 0x10 */ u8 unk_10;           // set to 0, never read
    /* 0x11 */ s8 updateRate;       // how many VIs should elapse before next swap
    /* 0x12 */ s8 updateTimer;      // counts down (in VIs) from updateRate to 0, swaps the framebuffer at 0
    /* 0x14 */ f32 xScale;
    /* 0x18 */ f32 yScale;
} CfbInfo; // size = 0x1C

typedef struct OSScTask {
    /* 0x00 */ struct OSScTask* next;
    /* 0x04 */ u32 state;
    /* 0x08 */ u32 flags;
    /* 0x0C */ CfbInfo* framebuffer;    // The original libultra OSScTask had void* here, it would point directly to a framebuffer
    /* 0x10 */ OSTask list;
    /* 0x50 */ OSMesgQueue* msgQueue;   // Notification queue, will receive a message when the task completes
    /* 0x54 */ OSMesg msg;
    /* 0x58 */ OSTime startTime;        // These last two fields are a guess based on the original libultra OSScTask and padding in other structures, they are unused.
    /* 0x60 */ OSTime totalTime;
} OSScTask; // size = 0x68

typedef struct {
    /* 0x0000 */ OSMesgQueue  interruptQueue;
    /* 0x0018 */ OSMesg       interruptMsgBuf[8];
    /* 0x0038 */ OSMesgQueue  cmdQueue;         // queue for receiving OSScTask pointers
    /* 0x0050 */ OSMesg       cmdMsgBuf[8];
    /* 0x0070 */ OSThread     thread;
    /* 0x0220 */ OSScTask*    audioListHead;
    /* 0x0224 */ OSScTask*    gfxListHead;
    /* 0x0228 */ OSScTask*    audioListTail;
    /* 0x022C */ OSScTask*    gfxListTail;
    /* 0x0230 */ OSScTask*    curRSPTask;       // task currently using the RSP
    /* 0x0234 */ OSScTask*    curRDPTask;       // task currently using the RDP
    /* 0x0238 */ s32          retraceCount;
    /* 0x023C */ s32          doAudio;
    /* 0x0240 */ CfbInfo*     curBuf;           // current framebuffer (taken from buffer 1)
    /* 0x0244 */ CfbInfo*     pendingSwapBuf1;  // buffer 1 (next buffer)
    /* 0x0220 */ CfbInfo*     pendingSwapBuf2;  // buffer 2 (always NULL)
    /* 0x0220 */ s32          isFirstSwap;
    /* 0x0250 */ IrqMgrClient irqClient;
} Scheduler; // size = 0x258

void Sched_Notify(Scheduler* sc);
void Sched_Init(Scheduler* sc, void* stack, OSPri priority, u8 viModeType, UNK_TYPE arg4, IrqMgr* irqMgr);

#endif
