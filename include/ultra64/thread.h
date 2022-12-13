#ifndef ULTRA64_THREAD_H
#define ULTRA64_THREAD_H

#define OS_PRIORITY_MAX      255
#define OS_PRIORITY_VIMGR    254
#define OS_PRIORITY_RMON     250
#define OS_PRIORITY_RMONSPIN 200
#define OS_PRIORITY_PIMGR    150
#define OS_PRIORITY_SIMGR    140
#define OS_PRIORITY_APPMAX   127
#define OS_PRIORITY_IDLE       0

#define OS_PRIORITY_THREADTAIL -1

#define OS_STATE_STOPPED    1
#define OS_STATE_RUNNABLE   2
#define OS_STATE_RUNNING    4
#define OS_STATE_WAITING    8

#define OS_FLAG_CPU_BREAK   1
#define OS_FLAG_FAULT       2

#ifdef _LANGUAGE_C

#include "ultratypes.h"

typedef s32 OSPri;
typedef s32 OSId;

typedef union {
    struct {
        /* 0x00 */ f32 f_odd;
        /* 0x04 */ f32 f_even;
    } f;
    f64 d;
} __OSfp; // size = 0x08

typedef struct {
    /* 0x000 */ u64 at, v0, v1, a0, a1, a2, a3;
    /* 0x038 */ u64 t0, t1, t2, t3, t4, t5, t6, t7;
    /* 0x078 */ u64 s0, s1, s2, s3, s4, s5, s6, s7;
    /* 0x0B8 */ u64 t8, t9, gp, sp, s8, ra;
    /* 0x0E8 */ u64 lo, hi;
    /* 0x0F8 */ u32 sr, pc, cause, badvaddr, rcp;
    /* 0x10C */ u32 fpcsr;
    /* 0x110 */ __OSfp  fp0,  fp2,  fp4,  fp6,  fp8, fp10, fp12, fp14;
    /* 0x150 */ __OSfp fp16, fp18, fp20, fp22, fp24, fp26, fp28, fp30;
} __OSThreadContext; // size = 0x190

typedef struct {
    /* 0x00 */ u32 flag;
    /* 0x04 */ u32 count;
    /* 0x08 */ u64 time;
} __OSThreadprofile; // size = 0x10

typedef struct OSThread {
    /* 0x00 */ struct OSThread* next;
    /* 0x04 */ OSPri priority;
    /* 0x08 */ struct OSThread** queue;
    /* 0x0C */ struct OSThread* tlnext;
    /* 0x10 */ u16 state;
    /* 0x12 */ u16 flags;
    /* 0x14 */ OSId id;
    /* 0x18 */ s32 fp;
    /* 0x1C */ __OSThreadprofile* thprof;
    /* 0x20 */ __OSThreadContext context;
} OSThread; // size = 0x1B0

typedef struct {
    OSThread* next;
    OSPri priority;
} __OSThreadTail; // size = 0x8

#else

// OSThread struct member offsets

#define THREAD_NEXT     0x00
#define THREAD_PRI      0x04
#define THREAD_QUEUE    0x08
#define THREAD_TLNEXT   0x0C
#define THREAD_STATE    0x10
#define THREAD_FLAGS    0x12
#define THREAD_ID       0x14
#define THREAD_FP       0x18
#define THREAD_PROFILE  0x1C
#define THREAD_CONTEXT  0x20
#define THREAD_AT       (THREAD_CONTEXT + 0x000)
#define THREAD_V0       (THREAD_CONTEXT + 0x008)
#define THREAD_V1       (THREAD_CONTEXT + 0x010)
#define THREAD_A0       (THREAD_CONTEXT + 0x018)
#define THREAD_A1       (THREAD_CONTEXT + 0x020)
#define THREAD_A2       (THREAD_CONTEXT + 0x028)
#define THREAD_A3       (THREAD_CONTEXT + 0x030)
#define THREAD_T0       (THREAD_CONTEXT + 0x038)
#define THREAD_T1       (THREAD_CONTEXT + 0x040)
#define THREAD_T2       (THREAD_CONTEXT + 0x048)
#define THREAD_T3       (THREAD_CONTEXT + 0x050)
#define THREAD_T4       (THREAD_CONTEXT + 0x058)
#define THREAD_T5       (THREAD_CONTEXT + 0x060)
#define THREAD_T6       (THREAD_CONTEXT + 0x068)
#define THREAD_T7       (THREAD_CONTEXT + 0x070)
#define THREAD_S0       (THREAD_CONTEXT + 0x078)
#define THREAD_S1       (THREAD_CONTEXT + 0x080)
#define THREAD_S2       (THREAD_CONTEXT + 0x088)
#define THREAD_S3       (THREAD_CONTEXT + 0x090)
#define THREAD_S4       (THREAD_CONTEXT + 0x098)
#define THREAD_S5       (THREAD_CONTEXT + 0x0A0)
#define THREAD_S6       (THREAD_CONTEXT + 0x0A8)
#define THREAD_S7       (THREAD_CONTEXT + 0x0B0)
#define THREAD_T8       (THREAD_CONTEXT + 0x0B8)
#define THREAD_T9       (THREAD_CONTEXT + 0x0C0)
#define THREAD_GP       (THREAD_CONTEXT + 0x0C8)
#define THREAD_SP       (THREAD_CONTEXT + 0x0D0)
#define THREAD_S8       (THREAD_CONTEXT + 0x0D8)
#define THREAD_RA       (THREAD_CONTEXT + 0x0E0)
#define THREAD_LO       (THREAD_CONTEXT + 0x0E8)
#define THREAD_HI       (THREAD_CONTEXT + 0x0F0)
#define THREAD_SR       (THREAD_CONTEXT + 0x0F8)
#define THREAD_PC       (THREAD_CONTEXT + 0x0FC)
#define THREAD_CAUSE    (THREAD_CONTEXT + 0x100)
#define THREAD_BADVADDR (THREAD_CONTEXT + 0x104)
#define THREAD_RCP      (THREAD_CONTEXT + 0x108)
#define THREAD_FPCSR    (THREAD_CONTEXT + 0x10C)
#define THREAD_FP0      (THREAD_CONTEXT + 0x110)
#define THREAD_FP2      (THREAD_CONTEXT + 0x118)
#define THREAD_FP4      (THREAD_CONTEXT + 0x120)
#define THREAD_FP6      (THREAD_CONTEXT + 0x128)
#define THREAD_FP8      (THREAD_CONTEXT + 0x130)
#define THREAD_FP10     (THREAD_CONTEXT + 0x138)
#define THREAD_FP12     (THREAD_CONTEXT + 0x140)
#define THREAD_FP14     (THREAD_CONTEXT + 0x148)
#define THREAD_FP16     (THREAD_CONTEXT + 0x150)
#define THREAD_FP18     (THREAD_CONTEXT + 0x158)
#define THREAD_FP20     (THREAD_CONTEXT + 0x160)
#define THREAD_FP22     (THREAD_CONTEXT + 0x168)
#define THREAD_FP24     (THREAD_CONTEXT + 0x170)
#define THREAD_FP26     (THREAD_CONTEXT + 0x178)
#define THREAD_FP28     (THREAD_CONTEXT + 0x180)
#define THREAD_FP30     (THREAD_CONTEXT + 0x188)

#endif

#endif
