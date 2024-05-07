#ifndef SPEC_H
#define SPEC_H

#include <stdint.h>
#include <stdbool.h>

typedef enum {
    STMT_address,
    STMT_after,
    STMT_align,
    STMT_beginseg,
    STMT_compress,
    STMT_endseg,
    STMT_entry,
    STMT_flags,
    STMT_include,
    STMT_include_data_only_within_rodata,
    STMT_include_no_data,
    STMT_name,
    STMT_number,
    STMT_romalign,
    STMT_stack,
    STMT_increment,
    STMT_pad_text,
} STMTId;

enum {
    FLAG_BOOT = (1 << 0),
    FLAG_OBJECT = (1 << 1),
    FLAG_RAW = (1 << 2),
    FLAG_NOLOAD = (1 << 3),
    FLAG_SYMS = (1 << 4)
};

struct Include {
    char* fpath;
    int linkerPadding;
    bool dataOnlyWithinRodata;
    bool noData;
};

typedef struct Segment {
    uint32_t fields;
    char* name;
    char* after;
    uint32_t flags;
    uint32_t address;
    uint32_t stack;
    uint32_t align;
    uint32_t romalign;
    uint32_t increment;
    uint32_t entry;
    uint32_t number;
    struct Include* includes;
    int includesCount;
    bool compress;
} Segment;

void parse_rom_spec(char* spec, struct Segment** segments, int* segment_count);

bool get_single_segment_by_name(struct Segment* dstSegment, char *spec, const char *segmentName);

void free_single_segment_elements(struct Segment *segment);

void free_rom_spec(struct Segment* segments, int segment_count);

#endif
