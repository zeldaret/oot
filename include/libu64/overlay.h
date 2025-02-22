#ifndef LIBU64_OVERLAY_H
#define LIBU64_OVERLAY_H

#include "ultra64.h"

/* Relocation entry field getters */
#define RELOC_SECTION(reloc)   ((reloc) >> 30)
#define RELOC_OFFSET(reloc)    ((reloc) & 0xFFFFFF)
#define RELOC_TYPE_MASK(reloc) ((reloc) & 0x3F000000)
#define RELOC_TYPE_SHIFT 24

/* MIPS Relocation Types, matches the MIPS ELF spec */
#define R_MIPS_32   2
#define R_MIPS_26   4
#define R_MIPS_HI16 5
#define R_MIPS_LO16 6

/* Reloc section id, must fit in 2 bits otherwise the relocation format must be modified */
typedef enum RelocSectionId {
    /* 0 */ RELOC_SECTION_NULL,
    /* 1 */ RELOC_SECTION_TEXT,
    /* 2 */ RELOC_SECTION_DATA,
    /* 3 */ RELOC_SECTION_RODATA,
    /* 4 */ RELOC_SECTION_MAX
} RelocSectionId;

typedef struct OverlayRelocationSection {
    /* 0x00 */ u32 textSize;
    /* 0x04 */ u32 dataSize;
    /* 0x08 */ u32 rodataSize;
    /* 0x0C */ u32 bssSize;
    /* 0x10 */ u32 nRelocations;
    /* 0x14 */ u32 relocations[1]; // size is nRelocations
} OverlayRelocationSection; // size >= 0x18

void* Overlay_AllocateAndLoad(uintptr_t vromStart, uintptr_t vromEnd, void* vramStart, void* vramEnd);
void Overlay_Relocate(void* allocatedRamAddr, OverlayRelocationSection* ovlRelocs, void* vramStart);
size_t Overlay_Load(uintptr_t vromStart, uintptr_t vromEnd, void* vramStart, void* vramEnd, void* allocatedRamAddr);

#endif
