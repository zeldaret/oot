#ifndef ISVIEWER_H
#define ISVIEWER_H

#include "ultra64.h"
#include "attributes.h"

void isPrintfInit(void);

void isPrintf(const char* fmt, ...);
NORETURN void isAssertFail(const char* exp, const char* file, int line);

#endif
