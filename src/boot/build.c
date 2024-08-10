#include "macros.h"

const char gBuildTeam[] = "zelda@srd022j";

#if OOT_VERSION == OOT_GC_JP
const char gBuildDate[] = "02-10-29 23:49:53";
#elif OOT_VERSION == OOT_GC_JP_MQ
const char gBuildDate[] = "02-10-30 00:15:15";
#elif OOT_VERSION == OOT_GC_US
const char gBuildDate[] = "02-12-19 13:28:09";
#elif OOT_VERSION == OOT_GC_US_MQ
const char gBuildDate[] = "02-12-19 14:05:42";
#elif OOT_VERSION == OOT_GC_EU_MQ_DBG
const char gBuildDate[] = "03-02-21 00:16:31";
#elif OOT_VERSION == OOT_GC_EU
const char gBuildDate[] = "03-02-21 20:12:23";
#elif OOT_VERSION == OOT_GC_EU_MQ
const char gBuildDate[] = "03-02-21 20:37:19";
#elif OOT_VERSION == OOT_GC_JP_CE
const char gBuildDate[] = "03-10-08 21:53:00";
#else
#error "Unsupported OOT_VERSION"
#endif

const char gBuildMakeOption[] = "";
