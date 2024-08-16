#ifndef VERSIONS_H
#define VERSIONS_H

// OOT versions in build order
#define OOT_NTSC_1_2 1
#define OOT_GC_JP 2
#define OOT_GC_JP_MQ 3
#define OOT_GC_US 4
#define OOT_GC_US_MQ 5
#define OOT_GC_EU_MQ_DBG 6
#define OOT_GC_EU 7
#define OOT_GC_EU_MQ 8
#define OOT_GC_JP_CE 9

#define FAULT_YS 1 // in Yoshi's Story
#define FAULT_OOTN64 2 // in OoT N64
#define FAULT_OOTGC 3 // in OoT GC
#if PLATFORM_N64
#define FAULT_VERSION FAULT_OOTN64
#else
#define FAULT_VERSION FAULT_OOTGC
#endif

#endif
