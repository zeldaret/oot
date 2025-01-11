#ifndef ATTRIBUTES_H
#define ATTRIBUTES_H

#include "versions.h"

#if !defined(__GNUC__) && !defined(__attribute__)
#define __attribute__(x)
#endif

#define UNUSED       __attribute__((unused))
#define NO_REORDER   __attribute__((no_reorder))
#define SECTION_DATA __attribute__((section(".data")))

#if __GNUC__ >= 7
#define FALLTHROUGH  __attribute__((fallthrough))
#else
#define FALLTHROUGH
#endif

#if defined(__GNUC__) && defined(NON_MATCHING)
#define NORETURN     __attribute__((noreturn))
#else
#define NORETURN
#endif

#if defined(__GNUC__) && defined(NON_MATCHING)
#define UNREACHABLE() __builtin_unreachable()
#else
#define UNREACHABLE()
#endif

// Variables may be unused in retail versions but used in debug versions
#if DEBUG_FEATURES
#define UNUSED_NDEBUG
#else
#define UNUSED_NDEBUG UNUSED
#endif

#endif
