#include "macros.h"

#if OOT_N64
const char gBuildTeam[] = "zelda@srd44";
#else
const char gBuildTeam[] = "zelda@srd022j";
#endif

#if OOT_VERSION == OOT_NTSC_1_2
const char gBuildDate[] = "98-11-12 18:17:03";
#elif OOT_VERSION == OOT_GC_US
const char gBuildDate[] = "02-12-19 13:28:09";
#elif OOT_VERSION == OOT_GC_EU_MQ_DBG
const char gBuildDate[] = "03-02-21 00:16:31";
#elif OOT_VERSION == OOT_GC_EU
const char gBuildDate[] = "03-02-21 20:12:23";
#elif OOT_VERSION == OOT_GC_EU_MQ
const char gBuildDate[] = "03-02-21 20:37:19";
#else
#error "Unsupported OOT_VERSION"
#endif

const char gBuildMakeOption[] = "";
