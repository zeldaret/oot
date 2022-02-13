#ifndef UTIL_H
#define UTIL_H

#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

#define ERRMSG_START "\x1b[91merror\x1b[97m: "
#define ERRMSG_END "\x1b[0m"

#ifdef __GNUC__
__attribute__((format(printf, 1, 2), noreturn))
#endif
void util_fatal_error(const char *msgfmt, ...);

void *util_read_whole_file(const char *filename, size_t *pSize);

void util_write_whole_file(const char *filename, const void *data, size_t size);

uint32_t util_read_uint32_be(const uint8_t *data);

void util_write_uint32_be(uint8_t *data, uint32_t val);

#endif
