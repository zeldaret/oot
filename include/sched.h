#ifndef _SCHED_H_
#define _SCHED_H_

#include <global.h>

#define OS_SC_NEEDS_RDP         0x0001
#define OS_SC_NEEDS_RSP         0x0002
#define OS_SC_DRAM_DLIST        0x0004
#define OS_SC_PARALLEL_TASK     0x0010
#define OS_SC_LAST_TASK         0x0020
#define OS_SC_SWAPBUFFER        0x0040

#define OS_SC_RCP_MASK          0x0003
#define OS_SC_TYPE_MASK         0x0007

typedef struct OSScTask
{
    /* 0x00 */ struct OSScTask* next;
    /* 0x04 */ u32            state;
    /* 0x08 */ u32            flags;
    /* 0x0C */ void*          framebuffer;
    /* 0x10 */ OSTask         list;
    /* 0x50 */ OSMesgQueue*   msgQ;
    /* 0x54 */ OSMesg         msg;
} OSScTask;

typedef struct
{
    /* 0x00 */ char     unk_00[0x12];
    /* 0x12 */ s8       unk_12;
} struct_800C8BC4;

typedef struct
{
    /* 0x0000 */ OSMesgQueue  interruptQ;
    /* 0x0018 */ OSMesg       intBuf[8];
    /* 0x0038 */ OSMesgQueue  cmdQ;
    /* 0x0050 */ OSMesg       cmdMsgBuf[8];
    /* 0x0070 */ OSThread     thread;
    /* 0x0220 */ char         unk_220[0x10];
    /* 0x0230 */ OSScTask*    curRSPTask;
    /* 0x0234 */ OSScTask*    curRDPTask;
    /* 0x0238 */ char         unk_238[0x08];
    /* 0x0240 */ struct_800C8BC4* unk_240;
    /* 0x0244 */ UNK_TYPE     pendingSwapBuf1;
    /* 0x0220 */ char         unk_248[0x04];
    /* 0x0220 */ UNK_TYPE     unk_24C;
    /* 0x0220 */ UNK_TYPE     unk_250;
    /* 0x0220 */ char         unk_254[0x04];
} SchedContext; // size = 0x258

extern SchedContext gSchedContext;

#endif
