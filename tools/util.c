#include <errno.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include "util.h"

// displays an error message and exits
void util_fatal_error(const char *msgfmt, ...)
{
    va_list args;

    fputs(ERRMSG_START, stderr);

    va_start(args, msgfmt);
    vfprintf(stderr, msgfmt, args);
    va_end(args);

    fputs(ERRMSG_END "\n", stderr);

    exit(1);
}

// reads a whole file into memory, and returns a malloc'd pointer to the data.
void *util_read_whole_file(const char *filename, size_t *pSize)
{
    FILE *file = fopen(filename, "rb");
    uint8_t *buffer;
    size_t size;

    if (file == NULL)
        util_fatal_error("failed to open file '%s' for reading: %s", filename, strerror(errno));

    // get size
    fseek(file, 0, SEEK_END);
    size = ftell(file);

    // allocate buffer
    buffer = malloc(size + 1);

    // read file
    fseek(file, 0, SEEK_SET);
    if (fread(buffer, size, 1, file) != 1)
        util_fatal_error("error reading from file '%s': %s", filename, strerror(errno));

    // null-terminate the buffer (in case of text files)
    buffer[size] = 0;

    fclose(file);

    if (pSize != NULL)
        *pSize = size;
    return buffer;
}

// writes data to file
void util_write_whole_file(const char *filename, const void *data, size_t size)
{
    FILE *file = fopen(filename, "wb");

    if (file == NULL)
        util_fatal_error("failed to open file '%s' for writing: %s", filename, strerror(errno));

    if (fwrite(data, size, 1, file) != 1)
        util_fatal_error("error writing to file '%s': %s", filename, strerror(errno));

    fclose(file);
}

uint32_t util_read_uint32_be(const uint8_t *data)
{
    return data[0] << 24
         | data[1] << 16
         | data[2] << 8
         | data[3] << 0;
}

// writes a big-endian 32-bit integer
void util_write_uint32_be(uint8_t *data, uint32_t val)
{
    data[0] = val >> 24;
    data[1] = val >> 16;
    data[2] = val >> 8;
    data[3] = val >> 0;
}
