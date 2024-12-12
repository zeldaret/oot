#include "versions.h"

#ifndef STRINGIFY
# define STRINGIFY(s) #s
#endif
#ifndef EXPAND_AND_STRINGIFY
# define EXPAND_AND_STRINGIFY(s) STRINGIFY(s)
#endif

const char gBuildCreator[] = EXPAND_AND_STRINGIFY(BUILD_CREATOR);
const char gBuildDate[] = EXPAND_AND_STRINGIFY(BUILD_DATE) " " EXPAND_AND_STRINGIFY(BUILD_TIME);
const char gBuildMakeOption[] = "";
