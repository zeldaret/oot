#include <ctype.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "util.h"

#define ARRAY_COUNT(arr) (sizeof(arr) / sizeof(arr[0]))

static FILE *fout;

enum
{
    STMT_address,
    STMT_after,
    STMT_align,
    STMT_beginseg,
    STMT_endseg,
    STMT_entry,
    STMT_flags,
    STMT_include,
    STMT_name,
    STMT_number,
    STMT_romalign,
    STMT_stack,
    STMT_increment,
};

enum
{
    FLAG_BOOT = (1 << 0),
    FLAG_OBJECT = (1 << 1),
    FLAG_RAW = (1 << 2),
};

struct Segment
{
    uint32_t fields;
    char *name;
    char *after;
    uint32_t flags;
    uint32_t address;
    uint32_t stack;
    uint32_t align;
    uint32_t romalign;
    uint32_t increment;
    uint32_t entry;
    uint32_t number;
    char **includes;
    int includesCount;
};

static struct Segment *g_segments = NULL;
static int g_segmentsCount = 0;

static struct Segment *add_segment(void)
{
    struct Segment *seg;

    g_segmentsCount++;
    g_segments = realloc(g_segments, g_segmentsCount * sizeof(*g_segments));

    seg = &g_segments[g_segmentsCount - 1];
    memset(seg, 0, sizeof(*seg));

    seg->align = 16;

    return seg;
}

static char *skip_whitespace(char *str)
{
    while (isspace(*str))
        str++;
    return str;
}

// null terminates the current token and returns a pointer to the next token
static char *token_split(char *str)
{
    while (!isspace(*str))
    {
        if (*str == 0)
            return str;  // end of string
        str++;
    }
    *str = 0;  // terminate token
    str++;

    return skip_whitespace(str);
}

// null terminates the current line and returns a pointer to the next line
static char *line_split(char *str)
{
    while (*str != '\n')
    {
        if (*str == 0)
            return str;  // end of string
        str++;
    }
    *str = 0;  // terminate line
    return str + 1;
}

static bool parse_number(const char *str, unsigned int *num)
{
    char *endptr;
    long int n = strtol(str, &endptr, 0);
    *num = n;
    return endptr > str;
}

static bool parse_flags(char *str, unsigned int *flags)
{
    unsigned int f = 0;

    while (str[0] != 0)
    {
        char *next = token_split(str);

        if (strcmp(str, "BOOT") == 0)
            f |= FLAG_BOOT;
        else if (strcmp(str, "OBJECT") == 0)
            f |= FLAG_OBJECT;
        else if (strcmp(str, "RAW") == 0)
            f |= FLAG_RAW;
        else
            return false;

        str = next;
    }
    *flags = f;
    return true;
}

static bool parse_quoted_string(char *str, char **out)
{
    if (*str != '"')
        return false;

    str++;
    *out = str;

    while (*str != '"')
    {
        if (*str == 0)
            return false;  // unterminated quote
        str++;
    }
    *str = 0;
    str++;

    str = skip_whitespace(str);
    if (*str != 0)
        return false;  // garbage after filename

    return true;
}

static bool is_pow_of_2(unsigned int n)
{
    return (n & (n - 1)) == 0;
}

static const char *const stmtNames[] =
{
    [STMT_address]   = "address",
    [STMT_after]     = "after",
    [STMT_align]     = "align",
    [STMT_beginseg]  = "beginseg",
    [STMT_endseg]    = "endseg",
    [STMT_entry]     = "entry",
    [STMT_flags]     = "flags",
    [STMT_include]   = "include",
    [STMT_name]      = "name",
    [STMT_number]    = "number",
    [STMT_romalign]  = "romalign",
    [STMT_stack]     = "stack",
    [STMT_increment] = "increment",
};

static void parse_rom_spec(char *spec)
{
    int lineNum = 1;
    char *line = spec;

    struct Segment *currSeg = NULL;

    // iterate over lines
    while (line[0] != 0)
    {
        char *nextLine = line_split(line);
        char* stmtName;

        if (line[0] != 0)
        {
            stmtName = skip_whitespace(line);
        }

        if (line[0] != 0 && stmtName[0] != 0)
        {
            char *args = token_split(stmtName);
            unsigned int stmt;

            for (stmt = 0; stmt < ARRAY_COUNT(stmtNames); stmt++)
                if (strcmp(stmtName, stmtNames[stmt]) == 0)
                    goto got_stmt;
            util_fatal_error("line %i: unknown statement '%s'", lineNum, stmtName);
          got_stmt:

            if (currSeg != NULL)
            {
                // ensure no duplicates (except for 'include')
                if (stmt != STMT_include && (currSeg->fields & (1 << stmt)))
                    util_fatal_error("line %i: duplicate '%s' statement", lineNum, stmtName);

                currSeg->fields |= 1 << stmt;

                // statements valid within a segment definition
                switch (stmt)
                {
                case STMT_beginseg:
                    util_fatal_error("line %i: '%s' inside of a segment definition", lineNum, stmtName);
                    break;
                case STMT_endseg:
                    // verify segment data
                    if (currSeg->name == NULL)
                        util_fatal_error("line %i: no name specified for segment", lineNum);
                    if (currSeg->includesCount == 0)
                        util_fatal_error("line %i: no includes specified for segment", lineNum);
                    currSeg = NULL;
                    break;
                case STMT_name:
                    if (!parse_quoted_string(args, &currSeg->name))
                        util_fatal_error("line %i: invalid name", lineNum);
                    break;
                case STMT_after:
                    if (!parse_quoted_string(args, &currSeg->after))
                        util_fatal_error("line %i: invalid name for 'after'", lineNum);
                    break;
                case STMT_address:
                    if (!parse_number(args, &currSeg->address))
                        util_fatal_error("line %i: expected number after 'address'", lineNum);
                    break;
                case STMT_number:
                    if (!parse_number(args, &currSeg->number))
                        util_fatal_error("line %i: expected number after 'number'", lineNum);
                    break;
                case STMT_flags:
                    if (!parse_flags(args, &currSeg->flags))
                        util_fatal_error("line %i: invalid flags", lineNum);
                    break;
                case STMT_align:
                    if (!parse_number(args, &currSeg->align))
                        util_fatal_error("line %i: expected number after 'align'", lineNum);
                    if (!is_pow_of_2(currSeg->align))
                        util_fatal_error("line %i: alignment is not a power of two", lineNum);
                    break;
                case STMT_romalign:
                    if (!parse_number(args, &currSeg->romalign))
                        util_fatal_error("line %i: expected number after 'romalign'", lineNum);
                    if (!is_pow_of_2(currSeg->romalign))
                        util_fatal_error("line %i: alignment is not a power of two", lineNum);
                    break;
                case STMT_include:
                    currSeg->includesCount++;
                    currSeg->includes = realloc(currSeg->includes, currSeg->includesCount * sizeof(*currSeg->includes));
                    if (!parse_quoted_string(args, &currSeg->includes[currSeg->includesCount - 1]))
                        util_fatal_error("line %i: invalid filename", lineNum);
                    break;
                 case STMT_increment:
                    if (!parse_number(args, &currSeg->increment))
                        util_fatal_error("line %i: expected number after 'increment'", lineNum);
                    break;
                default:
                    fprintf(stderr, "warning: '%s' is not implemented\n", stmtName);
                    break;
                }
            }
            else
            {
                // commands valid outside a segment definition
                switch (stmt)
                {
                case STMT_beginseg:
                    currSeg = add_segment();
                    break;
                case STMT_endseg:
                    util_fatal_error("line %i: '%s' outside of a segment definition", lineNum, stmtName);
                    break;
                default:
                    fprintf(stderr, "warning: '%s' is not implemented\n", stmtName);
                    break;
                }
            }
        }

        line = nextLine;
        lineNum++;
    }
}

static void write_ld_script(void)
{
    int i;
    int j;

    fputs("SECTIONS {\n"
          "    _RomSize = 0;\n"
          "    _RomStart = _RomSize;\n\n",
          fout);

    for (i = 0; i < g_segmentsCount; i++)
    {
        const struct Segment *seg = &g_segments[i];

        // align start of ROM segment
        if (seg->fields & (1 << STMT_romalign))
            fprintf(fout, "    _RomSize = (_RomSize + %i) & ~ %i;\n", seg->romalign - 1, seg->romalign - 1);

        // initialized data (.text, .data, .rodata, .sdata)

        // Increment the start of the section
        //if (seg->fields & (1 << STMT_increment))
            //fprintf(fout, "    . += 0x%08X;\n", seg->increment);

        fprintf(fout, "    _%sSegmentRomStart = _RomSize;\n"
                  "    ..%s ", seg->name, seg->name);

        if (seg->fields & (1 << STMT_after))
            fprintf(fout, "_%sSegmentEnd ", seg->after);
        else if (seg->fields & (1 << STMT_number))
            fprintf(fout, "0x%02X000000 ", seg->number);
        else if (seg->fields & (1 << STMT_address))
            fprintf(fout, "0x%08X ", seg->address);

        // (AT(_RomSize) isn't necessary, but adds useful "load address" lines to the map file)
        fprintf(fout, ": AT(_RomSize)\n    {\n"
                  "        _%sSegmentStart = .;\n"
                  "        . = ALIGN(0x10);\n"
                  "        _%sSegmentTextStart = .;\n",
                  seg->name, seg->name);

        if (seg->fields & (1 << STMT_align))
            fprintf(fout, "        . = ALIGN(0x%X);\n", seg->align);

        for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (.text)\n", seg->includes[j]);

        fprintf(fout, "        _%sSegmentTextEnd = .;\n", seg->name);

        fprintf(fout, "    _%sSegmentTextSize = ABSOLUTE( _%sSegmentTextEnd - _%sSegmentTextStart );\n", seg->name, seg->name, seg->name);

        fprintf(fout, "        _%sSegmentDataStart = .;\n", seg->name);

        for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (.data)\n", seg->includes[j]);

        /*
         for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (.rodata)\n", seg->includes[j]);

          for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (.sdata)\n", seg->includes[j]);
        */

        //fprintf(fout, "        . = ALIGN(0x10);\n");
        fprintf(fout, "        _%sSegmentDataEnd = .;\n", seg->name);

        fprintf(fout, "    _%sSegmentDataSize = ABSOLUTE( _%sSegmentDataEnd - _%sSegmentDataStart );\n", seg->name, seg->name, seg->name);
        
        fprintf(fout, "        _%sSegmentRoDataStart = .;\n", seg->name);

        for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (.rodata)\n", seg->includes[j]);

         //fprintf(fout, "        . = ALIGN(0x10);\n");

        fprintf(fout, "        _%sSegmentRoDataEnd = .;\n", seg->name);

        fprintf(fout, "    _%sSegmentRoDataSize = ABSOLUTE( _%sSegmentRoDataEnd - _%sSegmentRoDataStart );\n", seg->name, seg->name, seg->name);

        fprintf(fout, "        _%sSegmentSDataStart = .;\n", seg->name);

        for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (.sdata)\n", seg->includes[j]);

         fprintf(fout, "        . = ALIGN(0x10);\n");

        fprintf(fout, "        _%sSegmentSDataEnd = .;\n", seg->name);

		fprintf(fout, "        _%sSegmentOvlStart = .;\n", seg->name);

		for (j = 0; j < seg->includesCount; j++)
			fprintf(fout, "            %s (.ovl)\n", seg->includes[j]);

		fprintf(fout, "        . = ALIGN(0x10);\n");

		fprintf(fout, "        _%sSegmentOvlEnd = .;\n", seg->name);

        if (seg->fields & (1 << STMT_increment))
            fprintf(fout, "    . += 0x%08X;\n", seg->increment);
        

        fputs("    }\n", fout);
        //fprintf(fout, "    _RomSize += ( _%sSegmentDataEnd - _%sSegmentTextStart );\n", seg->name, seg->name);
        fprintf(fout, "    _RomSize += ( _%sSegmentOvlEnd - _%sSegmentTextStart );\n", seg->name, seg->name);

        fprintf(fout, "    _%sSegmentRomEnd = _RomSize;\n\n", seg->name);

        // algn end of ROM segment
        if (seg->fields & (1 << STMT_romalign))
            fprintf(fout, "    _RomSize = (_RomSize + %i) & ~ %i;\n", seg->romalign - 1, seg->romalign - 1);

        // uninitialized data (.sbss, .scommon, .bss, COMMON)
        fprintf(fout, "    ..%s.bss ADDR(..%s) + SIZEOF(..%s) (NOLOAD) :\n"
                      /*"    ..%s.bss :\n"*/
                      "    {\n"
                      "        . = ALIGN(0x10);\n"
                      "        _%sSegmentBssStart = .;\n",
                      seg->name, seg->name, seg->name, seg->name);
        if (seg->fields & (1 << STMT_align))
            fprintf(fout, "        . = ALIGN(0x%X);\n", seg->align);
        for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (.sbss)\n", seg->includes[j]);
        for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (.scommon)\n", seg->includes[j]);
        for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (.bss)\n", seg->includes[j]);
        for (j = 0; j < seg->includesCount; j++)
            fprintf(fout, "            %s (COMMON)\n", seg->includes[j]);
        fprintf(fout, "        . = ALIGN(0x10);\n"
                      "        _%sSegmentBssEnd = .;\n"
                      "        _%sSegmentEnd = .;\n"
                      "    }\n"
                      "    _%sSegmentBssSize = ABSOLUTE( _%sSegmentBssEnd - _%sSegmentBssStart );\n\n",
                      seg->name, seg->name, seg->name, seg->name, seg->name);

        // Increment the end of the segment
        //if (seg->fields & (1 << STMT_increment))
            //fprintf(fout, "    . += 0x%08X;\n", seg->increment);

		//fprintf(fout, "    ..%s.ovl ADDR(..%s) + SIZEOF(..%s) :\n"
		//	/*"    ..%s.bss :\n"*/
		//	"    {\n",
		//	seg->name, seg->name, seg->name);
		//fprintf(fout, "        _%sSegmentOvlStart = .;\n", seg->name);

		//for (j = 0; j < seg->includesCount; j++)
		//	fprintf(fout, "            %s (.ovl)\n", seg->includes[j]);

		////fprintf(fout, "        . = ALIGN(0x10);\n");

		//fprintf(fout, "        _%sSegmentOvlEnd = .;\n", seg->name);

		//fprintf(fout, "\n    }\n");
    }


    fputs("    _RomEnd = _RomSize;\n}\n", fout);
}

static void usage(const char *execname)
{
    fprintf(stderr, "Nintendo 64 linker script generation tool v0.01\n"
                    "usage: %s SPEC_FILE LD_SCRIPT\n"
                    "SPEC_FILE    file describing the organization of object files into segments\n"
                    "LD_SCRIPT    filename of output linker script\n",
                    execname);
}

int main(int argc, char **argv)
{
	void *spec;
	size_t size;

	if (argc != 3)
	{
		usage(argv[0]);
		return 1;
	}

	spec = util_read_whole_file(argv[1], &size);
	parse_rom_spec(spec);
	fout = fopen(argv[2], "w");
	if (fout == NULL)
		util_fatal_error("failed to open file '%s' for writing", argv[2]);
	write_ld_script();
	free(spec);
	fclose(fout);

	return 0;
}
