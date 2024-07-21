#ifndef ATTRIBUTES_H
#define ATTRIBUTES_H

#if !defined(__GNUC__) && !defined(__attribute__)
#define __attribute__(x)
#endif

#define FALLTHROUGH __attribute__((fallthrough))
#define NORETURN    __attribute__((noreturn))

#define UNUSED      __attribute__((unused))
// Unused in non-debug versions only
#if OOT_DEBUG
#define UNUSED_NDEBUG
#else
#define UNUSED_NDEBUG __attribute__((unused))
#endif

#endif
