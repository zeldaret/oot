#include "versions.h"

#ifndef BUILD_CREATOR
#define BUILD_CREATOR ""
#endif

#ifndef BUILD_DATE
#define BUILD_DATE __DATE__
#endif

#ifndef BUILD_TIME
#define BUILD_TIME __DATE__
#endif

const char gBuildCreator[] = BUILD_CREATOR;
const char gBuildDate[] = BUILD_DATE " " BUILD_TIME;
const char gBuildMakeOption[] = "";
