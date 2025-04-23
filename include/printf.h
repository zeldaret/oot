#ifndef PRINTF_H
#define PRINTF_H

#include "terminal.h"
#include "ultra64.h"

// IDO doesn't support variadic macros, but it merely throws a warning for the
// number of arguments not matching the definition (warning 609) instead of
// throwing an error. We suppress this warning and rely on GCC to catch macro
// argument errors instead.
// Note some tools define __sgi but preprocess with a modern cpp implementation,
// ensure that these do not use the IDO workaround to avoid errors.
#define IDO_PRINTF_WORKAROUND (__sgi && !__GNUC__ && !M2CTX)

#if DEBUG_FEATURES
#define PRINTF osSyncPrintf
#elif defined(EGCS)
#define PRINTF(format, args...) while (0) osSyncPrintf(format, ##args)
#elif IDO_PRINTF_WORKAROUND
#define PRINTF(args) (void)0
#else
#define PRINTF(format, ...) (void)0
#endif

#if DEBUG_FEATURES
#define PRINTF_COLOR_BLACK()    PRINTF(VT_FGCOL(BLACK))
#define PRINTF_COLOR_RED()      PRINTF(VT_FGCOL(RED))
#define PRINTF_COLOR_GREEN()    PRINTF(VT_FGCOL(GREEN))
#define PRINTF_COLOR_YELLOW()   PRINTF(VT_FGCOL(YELLOW))
#define PRINTF_COLOR_BLUE()     PRINTF(VT_FGCOL(BLUE))
#define PRINTF_COLOR_MAGENTA()  PRINTF(VT_FGCOL(MAGENTA))
#define PRINTF_COLOR_CYAN()     PRINTF(VT_FGCOL(CYAN))
#define PRINTF_COLOR_WHITE()    PRINTF(VT_FGCOL(WHITE))
#define PRINTF_COLOR_WARNING()  PRINTF(VT_COL(YELLOW, BLACK))
#define PRINTF_COLOR_ERROR()    PRINTF(VT_COL(RED, WHITE))
#define PRINTF_RST()            PRINTF(VT_RST)
#else
#define PRINTF_COLOR_BLACK()    (void)0
#define PRINTF_COLOR_RED()      (void)0
#define PRINTF_COLOR_GREEN()    (void)0
#define PRINTF_COLOR_YELLOW()   (void)0
#define PRINTF_COLOR_BLUE()     (void)0
#define PRINTF_COLOR_MAGENTA()  (void)0
#define PRINTF_COLOR_CYAN()     (void)0
#define PRINTF_COLOR_WHITE()    (void)0
#define PRINTF_COLOR_WARNING()  (void)0
#define PRINTF_COLOR_ERROR()    (void)0
#define PRINTF_RST()            (void)0
#endif

#endif
