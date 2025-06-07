/* SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET */
/* SPDX-License-Identifier: CC0-1.0 */
#ifndef UTIL_H_
#define UTIL_H_

#include <stdbool.h>
#include <stddef.h>
#include <string.h>

// Endian

#if defined(__linux__) || defined(__CYGWIN__)
#include <endian.h>
#elif defined(__APPLE__)
#include <libkern/OSByteOrder.h>

#define htobe16(x) OSSwapHostToBigInt16(x)
#define htole16(x) OSSwapHostToLittleInt16(x)
#define be16toh(x) OSSwapBigToHostInt16(x)
#define le16toh(x) OSSwapLittleToHostInt16(x)

#define htobe32(x) OSSwapHostToBigInt32(x)
#define htole32(x) OSSwapHostToLittleInt32(x)
#define be32toh(x) OSSwapBigToHostInt32(x)
#define le32toh(x) OSSwapLittleToHostInt32(x)

#define htobe64(x) OSSwapHostToBigInt64(x)
#define htole64(x) OSSwapHostToLittleInt64(x)
#define be64toh(x) OSSwapBigToHostInt64(x)
#define le64toh(x) OSSwapLittleToHostInt64(x)
#else
#error "Endian conversion unsupported, add it"
#endif

// Attribute macros

#define ALWAYS_INLINE inline __attribute__((always_inline))

#define NORETURN __attribute__((noreturn))
#define UNUSED   __attribute__((unused))

// Helper macros

#define strequ(s1, s2) ((__builtin_constant_p(s2) ? strncmp(s1, s2, sizeof(s2) - 1) : strcmp(s1, s2)) == 0)

#define str_endswith(str, len, endswith) \
    ((len) > (sizeof(endswith) - 1) && strequ(&(str)[(len) - sizeof(endswith) + 1], (endswith)))

#define LL_FOREACH(type, x, base) for (type(x) = (base); (x) != NULL; (x) = (x)->next)

#define ARRAY_COUNT(arr) (sizeof(arr) / sizeof((arr)[0]))

#define ALIGN16(x) (((x) + 0xF) & ~0xF)

#define BOOL_STR(b) ((b) ? "true" : "false")

// util.c functions

__attribute__((format(printf, 1, 2))) NORETURN void
error(const char *fmt, ...);
__attribute__((format(printf, 1, 2))) void
warning(const char *fmt, ...);

void *
util_read_whole_file(const char *filename, size_t *size_out);
void
util_write_whole_file(const char *filename, const void *data, size_t size);

bool
str_is_c_identifier(const char *str);

#endif
