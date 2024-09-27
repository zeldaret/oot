#include "versions.h"

#if PLATFORM_N64
const char gBuildCreator[] = "zelda@srd44";
#else
const char gBuildCreator[] = "zelda@srd022j";
#endif

#if OOT_VERSION == NTSC_1_0
const char gBuildDate[] = "98-10-21 04:56:31";
#elif OOT_VERSION == NTSC_1_1
const char gBuildDate[] = "98-10-26 10:58:45";
#elif OOT_VERSION == PAL_1_0
const char gBuildDate[] = "98-11-10 14:34:22";
#elif OOT_VERSION == NTSC_1_2
const char gBuildDate[] = "98-11-12 18:17:03";
#elif OOT_VERSION == PAL_1_1
const char gBuildDate[] = "98-11-18 17:36:49";
#elif OOT_VERSION == GC_JP
const char gBuildDate[] = "02-10-29 23:49:53";
#elif OOT_VERSION == GC_JP_MQ
const char gBuildDate[] = "02-10-30 00:15:15";
#elif OOT_VERSION == GC_US
const char gBuildDate[] = "02-12-19 13:28:09";
#elif OOT_VERSION == GC_US_MQ
const char gBuildDate[] = "02-12-19 14:05:42";
#elif OOT_VERSION == GC_EU_MQ_DBG
const char gBuildDate[] = "03-02-21 00:16:31";
#elif OOT_VERSION == GC_EU
const char gBuildDate[] = "03-02-21 20:12:23";
#elif OOT_VERSION == GC_EU_MQ
const char gBuildDate[] = "03-02-21 20:37:19";
#elif OOT_VERSION == GC_JP_CE
const char gBuildDate[] = "03-10-08 21:53:00";
#else
#error "Unsupported OOT_VERSION"
#endif

const char gBuildMakeOption[] = "";
