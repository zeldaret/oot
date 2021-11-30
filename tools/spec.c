#include <ctype.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "util.h"
#include "spec.h"

#define ARRAY_COUNT(arr) (sizeof(arr) / sizeof(arr[0]))

static struct Segment *add_segment(struct Segment **segments, int *segments_count)
{
    struct Segment *seg;

    (*segments_count)++;
    *segments = realloc(*segments, *segments_count * sizeof(**segments));

    seg = &(*segments)[*segments_count - 1];
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
    [STMT_include_data_with_rodata] = "include_data_with_rodata",
    [STMT_name]      = "name",
    [STMT_number]    = "number",
    [STMT_romalign]  = "romalign",
    [STMT_stack]     = "stack",
    [STMT_increment] = "increment",
    [STMT_pad_text]  = "pad_text",
};

void parse_rom_spec(char *spec, struct Segment **segments, int *segment_count)
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
                // ensure no duplicates (except for 'include' or 'pad_text')
                if (stmt != STMT_include && stmt != STMT_include_data_with_rodata && stmt != STMT_pad_text && 
                    (currSeg->fields & (1 << stmt)))
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
                case STMT_include_data_with_rodata:
                    currSeg->includesCount++;
                    currSeg->includes = realloc(currSeg->includes, currSeg->includesCount * sizeof(*currSeg->includes));

                    if (!parse_quoted_string(args, &currSeg->includes[currSeg->includesCount - 1].fpath))
                        util_fatal_error("line %i: invalid filename", lineNum);

                    currSeg->includes[currSeg->includesCount - 1].linkerPadding = 0;
                    currSeg->includes[currSeg->includesCount - 1].dataWithRodata = (stmt == STMT_include_data_with_rodata);
                    break;
                 case STMT_increment:
                    if (!parse_number(args, &currSeg->increment))
                        util_fatal_error("line %i: expected number after 'increment'", lineNum);
                    break;
                case STMT_pad_text:
                    currSeg->includes[currSeg->includesCount - 1].linkerPadding += 0x10;
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
                    currSeg = add_segment(segments, segment_count);
                    currSeg->includes = NULL;
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

void free_rom_spec(struct Segment *segments, int segment_count)
{
    int i;

    for (i = 0; i < segment_count; i++)
    {
        if (segments[i].includes != NULL)
            free(segments[i].includes);
    }
    free(segments);
}
