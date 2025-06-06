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
#define IQUE_CN       14

// NTSC/PAL
#if OOT_VERSION == PAL_1_0 || OOT_VERSION == PAL_1_1 || OOT_VERSION == GC_EU || OOT_VERSION == GC_EU_MQ || OOT_VERSION == GC_EU_MQ_DBG
#define OOT_NTSC 0
#define OOT_PAL 1
#else
#define OOT_NTSC 1
#define OOT_PAL 0
#endif

// PAL N64 (50 Hz)
#if OOT_VERSION == PAL_1_0 || OOT_VERSION == PAL_1_1
#define OOT_PAL_N64 1
#else
#define OOT_PAL_N64 0
#endif

// Master Quest
#if OOT_VERSION == GC_JP_MQ || OOT_VERSION == GC_US_MQ || OOT_VERSION == GC_EU_MQ || OOT_VERSION == GC_EU_MQ_DBG
#define OOT_MQ 1
#else
#define OOT_MQ 0
#endif

// Macro for constants that change in 50 Hz N64 PAL versions.
#if !OOT_PAL_N64
#define FRAMERATE_CONST(value60Hz, value50Hz) (value60Hz)
#else
#define FRAMERATE_CONST(value60Hz, value50Hz) (value50Hz)
#endif

// Debug Assets
// Due to asset extraction limitations, all versions will not have access to some assets present in debug ROMs
// To allow the inclusion of debug features in any version there is a separation between DEBUG_FEATURES and DEBUG_ASSETS
#if OOT_VERSION == GC_EU_MQ_DBG && DEBUG_FEATURES
#define DEBUG_ASSETS 1
#else
#define DEBUG_ASSETS 0
#endif

#endif
