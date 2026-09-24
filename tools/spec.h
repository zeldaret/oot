#ifndef _SPEC_H_
#define _SPEC_H_

#include <stdbool.h>
#include <stdint.h>

enum
{
    STMT_address,
    STMT_after,
    STMT_align,
    STMT_beginseg,
    STMT_compress,
    STMT_endseg,
    STMT_entry,
    STMT_flags,
    STMT_include,
    STMT_name,
    STMT_number,
    STMT_romalign,
    STMT_stack,
    STMT_increment,
    STMT_pad_text,
};

enum
{
    FLAG_BOOT = (1 << 0),
    FLAG_OBJECT = (1 << 1),
    FLAG_RAW = (1 << 2),
    FLAG_NOLOAD = (1 << 3),
    FLAG_SYMS = (1 << 4),
    FLAG_OVL = (1 << 5)
};

struct Include
{
    char *fpath;
    int linkerPadding;
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
    struct Include *includes;
    int includesCount;
    bool compress;
};

void parse_rom_spec(char *spec, struct Segment **segments, int *segment_count);

void free_rom_spec(struct Segment *segments, int segment_count);

#endif
