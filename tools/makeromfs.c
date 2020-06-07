#include <assert.h>
#include <ctype.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "n64chksum.h"
#include "util.h"

#define ROM_SIZE 0x02000000

enum InputObjType
{
    OBJ_NULL,
    OBJ_FILE,
    OBJ_TABLE,
};

struct InputFile
{
    enum InputObjType type;
    const char *name;
    uint8_t *data;
    size_t size;
    unsigned int valign;

    uint32_t virtStart;
    uint32_t virtEnd;
    uint32_t physStart;
    uint32_t physEnd;
};

static struct InputFile *g_inputFiles = NULL;
static int g_inputFilesCount = 0;

static unsigned int round_up(unsigned int num, unsigned int multiple)
{
    num += multiple - 1;
    return num / multiple * multiple;
}

static bool is_yaz0_header(const uint8_t *data)
{
    return data[0] == 'Y'
        && data[1] == 'a'
        && data[2] == 'z'
        && data[3] == '0';
}

static void compute_offsets(void)
{
    size_t physOffset = 0;
    size_t virtOffset = 0;
    int i;

    for (i = 0; i < g_inputFilesCount; i++)
    {
        bool compressed = false;

        if (g_inputFiles[i].type == OBJ_FILE)
        {
            if (is_yaz0_header(g_inputFiles[i].data))
                compressed = true;
        }
        else if (g_inputFiles[i].type == OBJ_TABLE)
        {
            g_inputFiles[i].size = g_inputFilesCount * 16;
        }

        virtOffset = round_up(virtOffset, g_inputFiles[i].valign);

        if (g_inputFiles[i].type == OBJ_NULL)
        {
            g_inputFiles[i].virtStart = 0;
            g_inputFiles[i].virtEnd   = 0;
            g_inputFiles[i].physStart = 0;
            g_inputFiles[i].physEnd   = 0;
        }
        else if (compressed)
        {
            size_t compSize = round_up(g_inputFiles[i].size, 16);
            size_t uncompSize = util_read_uint32_be(g_inputFiles[i].data + 4);

            g_inputFiles[i].virtStart = virtOffset;
            g_inputFiles[i].virtEnd   = virtOffset + uncompSize;
            g_inputFiles[i].physStart = physOffset;
            g_inputFiles[i].physEnd   = physOffset + compSize;

            physOffset += compSize;
            virtOffset += uncompSize;
        }
        else
        {
            size_t size = g_inputFiles[i].size;

            g_inputFiles[i].virtStart = virtOffset;
            g_inputFiles[i].virtEnd   = virtOffset + size;
            g_inputFiles[i].physStart = physOffset;
            g_inputFiles[i].physEnd   = 0;

            physOffset += size;
            virtOffset += size;
        }
    }
}

static void build_rom(const char *filename)
{
    uint8_t *romData = calloc(ROM_SIZE, 1);
    size_t pos = 0;
    int i;
    int j;
    uint32_t chksum[2];
    FILE *outFile;

    for (i = 0; i < g_inputFilesCount; i++)
    {
        size_t size = g_inputFiles[i].size;

        if (pos + round_up(size, 16) > ROM_SIZE)
            util_fatal_error("size exceeds max ROM size of 32 KiB");

        assert(pos % 16 == 0);

        switch (g_inputFiles[i].type)
        {
        case OBJ_FILE:
            // write file data
            memcpy(romData + pos, g_inputFiles[i].data, size);
            pos += round_up(size, 16);

            free(g_inputFiles[i].data);
            break;
        case OBJ_TABLE:
            for (j = 0; j < g_inputFilesCount; j++)
            {
                util_write_uint32_be(romData + pos +  0, g_inputFiles[j].virtStart);
                util_write_uint32_be(romData + pos +  4, g_inputFiles[j].virtEnd);
                util_write_uint32_be(romData + pos +  8, g_inputFiles[j].physStart);
                util_write_uint32_be(romData + pos + 12, g_inputFiles[j].physEnd);

                pos += 16;
            }
            break;
        case OBJ_NULL:
            break;
        }
    }

    // Pad the rest of the ROM
    while (pos < ROM_SIZE)
    {
        // This is such a weird thing to pad with. Whatever, Nintendo.
        romData[pos] = pos & 0xFF;
        pos++;
    }

    // calculate checksum
    n64chksum_calculate(romData, 6105, chksum);
    util_write_uint32_be(romData + 0x10, chksum[0]);
    util_write_uint32_be(romData + 0x14, chksum[1]);

    // write file
    outFile = fopen(filename, "wb");
    if (outFile == NULL)
        util_fatal_error("failed to open file '%s' for writing", filename);
    fwrite(romData, ROM_SIZE, 1, outFile);
    fclose(outFile);

    free(romData);
}

static struct InputFile *new_file(void)
{
    int index = g_inputFilesCount;

    g_inputFilesCount++;
    g_inputFiles = realloc(g_inputFiles, g_inputFilesCount * sizeof(*g_inputFiles));

    g_inputFiles[index].valign = 1;

    return &g_inputFiles[index];
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

    // skip remaining whitespace
    while (isspace(*str))
        str++;
    return str;
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

static void parse_line(char *line, int lineNum)
{
    char *token = line;
    int i = 0;

    char *filename = NULL;
    enum InputObjType type = -1;
    int valign = 1;
    struct InputFile *file;

    // iterate through each token
    while (token[0] != 0)
    {
        char *nextToken = token_split(token);

        if (token[0] == '#')  // comment - ignore rest of line
            return;

        switch (i)
        {
        case 0:
            if (strcmp(token, "file") == 0)
                type = OBJ_FILE;
            else if (strcmp(token, "filetable") == 0)
                type = OBJ_TABLE;
            else if (strcmp(token, "null") == 0)
                type = OBJ_NULL;
            else
                util_fatal_error("unknown object type '%s' on line %i", token, lineNum);
            break;
        case 1:
            filename = token;
            break;
        case 2:
            {
                int n;

                if (sscanf(token, "align(%i)", &n) == 1)
                    valign = n;
                else
                    goto junk;
            }
            break;
        default:
        junk:
            util_fatal_error("junk '%s' on line %i", token, lineNum);
            break;
        }

        token = nextToken;
        i++;
    }

    if (i == 0)  // empty line
        return;

    file = new_file();
    file->valign = valign;

    switch (type)
    {
    case OBJ_FILE:
        if (filename == NULL)
            util_fatal_error("no filename specified on line %i", lineNum);
        file->type = OBJ_FILE;
        file->data = util_read_whole_file(filename, &file->size);
        break;
    case OBJ_TABLE:
        file->type = OBJ_TABLE;
        break;
    case OBJ_NULL:
        file->type = OBJ_NULL;
        file->size = 0;
        break;
    }
}

static void parse_list(char *list)
{
    char *line = list;
    int lineNum = 1;

    // iterate through each line
    while (line[0] != 0)
    {
        char *nextLine = line_split(line);

        parse_line(line, lineNum);

        line = nextLine;
        lineNum++;
    }
}

static void usage(const char *execName)
{
    printf("usage: %s FILE_LIST OUTPUT_FILE\n"
           "where FILE_LIST is a list of files to include\n"
           "and OUTPUT_FILE is the name of the output ROM\n"
           "note that 'dmadata' refers to the file list itself and not an external file\n",
           execName);
}

int main(int argc, char **argv)
{
    char *list;

    if (argc != 3)
    {
        puts("invalid args");
        usage(argv[0]);
        return 1;
    }

    list = util_read_whole_file(argv[1], NULL);

    parse_list(list);
    compute_offsets();
    build_rom(argv[2]);

    free(list);

    return 0;
}
