#ifndef VERSIONS_H
#define VERSIONS_H

// OOT versions in build order
#define NTSC_1_0       1
#define NTSC_1_1       2
#define PAL_1_0        3
#define NTSC_1_2       4
#define PAL_1_1        5
#define GC_JP          6
#define GC_JP_MQ       7
#define GC_US          8
#define GC_US_MQ       9
#define GC_EU_MQ_DBG  10
#define GC_EU         11
#define GC_EU_MQ      12
#define GC_JP_CE      13

#define FAULT_N64 1 // in OoT N64
#define FAULT_GC 2  // in OoT GC
#if PLATFORM_N64
#define FAULT_VERSION FAULT_N64
#else
#define FAULT_VERSION FAULT_GC
#endif

#endif
