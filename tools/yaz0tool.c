#ifdef __linux__
#define _POSIX_C_SOURCE 199309L
#endif

#include <stdarg.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "yaz0.h"
#include "util.h"

// TODO: Windows support
static unsigned long int get_time_milliseconds(void)
{
#ifdef __linux__
    struct timespec tspec;

    clock_gettime(CLOCK_MONOTONIC, &tspec);
    return (tspec.tv_sec * 1000) + tspec.tv_nsec / 1000000;
#else
    // dummy
    return 0;
#endif
}

static void print_report(unsigned long int time, size_t compSize, size_t uncompSize)
{
    unsigned int minutes = time / (1000 * 60);
    float seconds = (float)(time % (1000 * 60)) / 1000;

    printf("compression ratio: %.2fKiB / %.2fKiB (%.2f%%)\n"
           "time: %um %.3fs\n",
           (float)compSize / 1024, (float)uncompSize / 1024,
           (float)compSize * 100 / (float)uncompSize,
           minutes, seconds);
}

static void compress_file(const char *inputFileName, const char *outputFileName, bool verbose)
{
    size_t uncompSize;
    uint8_t *input = util_read_whole_file(inputFileName, &uncompSize);
    uint8_t *output = malloc(uncompSize * 2);  // TODO: figure out how much space we need
    unsigned long int time;

    if (verbose)
    {
        printf("decompressing %s\n", inputFileName);
        time = get_time_milliseconds();
    }

    // compress data
    size_t compSize = yaz0_encode(input, output, uncompSize);

    if (verbose)
        time = get_time_milliseconds() - time;

    // make Yaz0 header
    uint8_t header[16] = {0};
    header[0] = 'Y';
    header[1] = 'a';
    header[2] = 'z';
    header[3] = '0';
    util_write_uint32_be(header + 4, uncompSize);

    // write output file
    FILE *outFile = fopen(outputFileName, "wb");
    if (outFile == NULL)
        util_fatal_error("failed to open file '%s' for writing", outputFileName);
    fwrite(header, sizeof(header), 1, outFile);
    fwrite(output, compSize, 1, outFile);
    fclose(outFile);

    free(input);
    free(output);

    if (verbose)
        print_report(time, compSize, uncompSize);
}

static void decompress_file(const char *inputFileName, const char *outputFileName, bool verbose)
{
    size_t compSize;
    uint8_t *input = util_read_whole_file(inputFileName, &compSize);
    size_t uncompSize;
    uint8_t *output;
    unsigned long int time = 0;

    // read header
    if (input[0] != 'Y' || input[1] != 'a' || input[2] != 'z' || input[3] != '0')
        util_fatal_error("file '%s' does not have a valid Yaz0 header", inputFileName);
    uncompSize = util_read_uint32_be(input + 4);

    // decompress data
    output = malloc(uncompSize);

    if (verbose)
    {
        printf("decompressing %s\n", inputFileName);
        time = get_time_milliseconds();
    }

    yaz0_decode(input + 16, output, uncompSize);

    if (verbose)
        time = get_time_milliseconds() - time;

    // write output file
    FILE *outFile = fopen(outputFileName, "wb");
    fwrite(output, uncompSize, 1, outFile);
    fclose(outFile);

    free(input);
    free(output);

    if (verbose)
        print_report(time, compSize, uncompSize);
}

static void usage(const char *execName)
{
    printf("Yaz0 compressor/decompressor\n"
           "usage: %s [-d] [-h] [-v] INPUT_FILE OUTPUT_FILE\n"
           "compresses INPUT_FILE using Yaz0 encoding and writes output to OUTPUT_FILE\n"
           "Available options:\n"
           "-d: decompresses INPUT_FILE, a Yaz0 compressed file, and writes decompressed\n"
           "    output to OUTPUT_FILE\n"
           "-v: prints verbose output (compression ratio and time)\n"
           "-h: shows this help message\n",
           execName);
}

int main(int argc, char **argv)
{
    int i;
    const char *inputFileName = NULL;
    const char *outputFileName = NULL;
    bool decompress = false;
    bool verbose = false;

    // parse arguments
    for (i = 1; i < argc; i++)
    {
        char *arg = argv[i];

        if (arg[0] == '-')
        {
            if (strcmp(arg, "-d") == 0)
                decompress = true;
            else if (strcmp(arg, "-v") == 0)
                verbose = true;
            else if (strcmp(arg, "-h") == 0)
            {
                usage(argv[0]);
                return 0;
            }
            else
            {
                printf("unknown option %s\n", arg);
                usage(argv[0]);
                return 1;
            }
        }
        else
        {
            if (inputFileName == NULL)
                inputFileName = arg;
            else if (outputFileName == NULL)
                outputFileName = arg;
            else
            {
                puts("too many files specified");
                usage(argv[0]);
                return 1;
            }
        }
    }

    if (inputFileName == NULL)
    {
        puts("no input file specified");
        usage(argv[0]);
        return 1;
    }
    if (outputFileName == NULL)
    {
        puts("no output file specified");
        usage(argv[0]);
        return 1;
    }

    if (decompress)
        decompress_file(inputFileName, outputFileName, verbose);
    else
        compress_file(inputFileName, outputFileName, verbose);

    return 0;
}
