#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "elf32.h"
#include "n64chksum.h"
#include "util.h"

#define ROM_SEG_START_SUFFIX ".rom_start"
#define ROM_SEG_END_SUFFIX ".rom_end"

struct RomSegment
{
    const char *name;
    const void *data;
    int size;
    int romStart;
    int romEnd;
};

static struct RomSegment *g_romSegments = NULL;
static int g_romSegmentsCount = 0;
static int g_romSize;

static bool parse_number(const char *str, int *num)
{
    char *endptr;
    long int n = strtol(str, &endptr, 0);
    *num = n;
    return endptr > str;
}

static unsigned int round_up(unsigned int num, unsigned int multiple)
{
    num += multiple - 1;
    return num / multiple * multiple;
}

static char *sprintf_alloc(const char *fmt, ...)
{
    va_list args;
    int size;
    char *buffer;

    va_start(args, fmt);
    size = vsnprintf(NULL, 0, fmt, args) + 1;
    va_end(args);

    buffer = malloc(size);

    va_start(args, fmt);
    vsprintf(buffer, fmt, args);
    va_end(args);

    return buffer;
}

static struct RomSegment *add_rom_segment(const char *name)
{
    int index = g_romSegmentsCount;

    g_romSegmentsCount++;
    g_romSegments = realloc(g_romSegments, g_romSegmentsCount * sizeof(*g_romSegments));
    g_romSegments[index].name = name;
    return &g_romSegments[index];
}

static int find_symbol_value(struct Elf32_Symbol *syms, int numsymbols, const char *name)
{
    struct Elf32_Symbol *sym;
    int lo, hi, mid, cmp;

    // Binary search for the symbol. We maintain the invariant that [lo, hi) is
    // the interval that remains to search.
    lo = 0;
    hi = numsymbols;
    while (lo < hi)
    {
        mid = lo + (hi - lo) / 2;
        sym = &syms[mid];
        cmp = strcmp(sym->name, name);

        if (cmp == 0)
            return (int) sym->value;
        else if (cmp < 0)
            lo = mid + 1;
        else
            hi = mid;
    }

    util_fatal_error("Symbol %s is not defined\n", name);
}

static int find_rom_address(struct Elf32_Symbol *syms, int numsymbols, const char *name, const char *suffix)
{
    char *symName = sprintf_alloc("_%sSegmentRom%s", name, suffix);
    int ret = find_symbol_value(syms, numsymbols, symName);
    free(symName);
    return ret;
}

static int cmp_symbol_by_name(const void *a, const void *b)
{
    return strcmp(
        ((struct Elf32_Symbol *)a)->name,
        ((struct Elf32_Symbol *)b)->name);
}

static void parse_input_file(const char *filename)
{
    struct Elf32 elf;
    struct Elf32_Symbol *syms;
    const void *data;
    size_t size;
    int numRomSymbols;
    int i;

    data = util_read_whole_file(filename, &size);

    if (!elf32_init(&elf, data, size) || elf.machine != ELF_MACHINE_MIPS)
        util_fatal_error("%s is not a valid 32-bit MIPS ELF file", filename);

    // sort all symbols that contain the substring "Rom" for fast access
    // (sorting all symbols costs 0.1s, might as well avoid that)
    syms = malloc(elf.numsymbols * sizeof(struct Elf32_Symbol));
    numRomSymbols = 0;
    for (i = 0; i < elf.numsymbols; i++)
    {
        if (!elf32_get_symbol(&elf, &syms[numRomSymbols], i))
            util_fatal_error("invalid or corrupt ELF file");
        if (strstr(syms[numRomSymbols].name, "Rom"))
            numRomSymbols++;
    }
    qsort(syms, numRomSymbols, sizeof(struct Elf32_Symbol), cmp_symbol_by_name);

    // get ROM segments
    // sections of type SHT_PROGBITS and  whose name is ..secname are considered ROM segments
    for (i = 0; i < elf.shnum; i++)
    {
        struct Elf32_Section sec;
        struct RomSegment *segment;

        if (!elf32_get_section(&elf, &sec, i))
            util_fatal_error("invalid or corrupt ELF file");
        if (sec.type == SHT_PROGBITS && sec.name[0] == '.' && sec.name[1] == '.'
        // HACK! ld sometimes marks NOLOAD sections as SHT_PROGBITS for no apparent reason,
        // so we must ignore the ..secname.bss sections explicitly
         && strchr(sec.name + 2, '.') == NULL)
        {
            segment = add_rom_segment(sec.name + 2);
            segment->data = elf.data + sec.offset;
            segment->romStart = find_rom_address(syms, numRomSymbols, segment->name, "Start");
            segment->romEnd = find_rom_address(syms, numRomSymbols, segment->name, "End");
        }

    }

    g_romSize = find_symbol_value(syms, numRomSymbols, "_RomSize");

    free(syms);
}

// Writes the N64 ROM, padding the file size to a multiple of 1 MiB
static void write_rom_file(const char *filename, int cicType)
{
    size_t fileSize = round_up(g_romSize, 0x100000);
    uint8_t *buffer = calloc(fileSize, 1);
    int i;
    uint32_t chksum[2];

    // write segments
    for (i = 0; i < g_romSegmentsCount; i++)
    {
        int size = g_romSegments[i].romEnd - g_romSegments[i].romStart;

        memcpy(buffer + g_romSegments[i].romStart, g_romSegments[i].data, size);
    }

    // pad the remaining space with 0xFF
    memset(buffer + g_romSize, 0xFF, fileSize - g_romSize);

    // write checksum
    if (!n64chksum_calculate(buffer, cicType, chksum))
        util_fatal_error("invalid cic type %i", cicType);
    util_write_uint32_be(buffer + 0x10, chksum[0]);
    util_write_uint32_be(buffer + 0x14, chksum[1]);

    util_write_whole_file(filename, buffer, fileSize);
    free(buffer);
}

static void usage(const char *execname)
{
    printf("usage: %s -cic <number> input.elf output.z64\n", execname);
}

int main(int argc, char **argv)
{
    int i;
    const char *inputFileName = NULL;
    const char *outputFileName = NULL;
    int cicType = -1;

    for (i = 1; i < argc; i++)
    {
        if (argv[i][0] == '-')
        {
            if (strcmp(argv[i], "-cic") == 0)
            {
                i++;
                if (i >= argc || !parse_number(argv[i], &cicType))
                {
                    fputs("error: expected number after -cic\n", stderr);
                    goto bad_args;
                }
            }
            else if (strcmp(argv[i], "-help") == 0)
            {
                usage(argv[0]);
                return 0;
            }
            else
            {
                fprintf(stderr, "unknown option %s\n", argv[i]);
                goto bad_args;
            }
        }
        else
        {
            if (inputFileName == NULL)
                inputFileName = argv[i];
            else if (outputFileName == NULL)
                outputFileName = argv[i];
            else
            {
                fputs("error: too many parameters specified\n", stderr);
                goto bad_args;
            }
        }
    }
    if (inputFileName == NULL)
    {
        fputs("error: no input file specified\n", stderr);
        goto bad_args;
    }
    if (outputFileName == NULL)
    {
        fputs("error: no output file specified\n", stderr);
        goto bad_args;
    }
    if (cicType == -1)
    {
        fputs("error: no CIC type specified\n", stderr);
        goto bad_args;
    }

    parse_input_file(inputFileName);
    write_rom_file(outputFileName, cicType);
    return 0;

bad_args:
    usage(argv[0]);
    return 1;
}
