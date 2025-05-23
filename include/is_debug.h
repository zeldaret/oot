#ifndef IS_DEBUG_H
#define IS_DEBUG_H

#include "libc/stddef.h"
#include "attributes.h"

#if DEBUG_FEATURES
void isPrintfInit(void);
#endif

void rmonPrintf(const char* fmt, ...);

#if DEBUG_FEATURES
void* is_proutSyncPrintf(void* arg, const char* str, size_t count);
NORETURN void func_80002384(const char* exp, const char* file, int line);
#endif

#endif
