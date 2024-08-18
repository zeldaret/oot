/* SPDX-FileCopyrightText: Copyright (C) 2024 ZeldaRET */
/* SPDX-License-Identifier: CC0-1.0 */
#ifndef ELF32_H_
#define ELF32_H_

#include <stdint.h>

#include "util.h"

#define elf32_read16(x)  be16toh(x)
#define elf32_write16(x) htobe16(x)
#define elf32_read32(x)  be32toh(x)
#define elf32_write32(x) htobe32(x)

#ifndef ELF32_QUALIFIERS
#define ELF32_QUALIFIERS static UNUSED ALWAYS_INLINE
#endif

#define GET_PTR(data, offset) ((void *)&((uint8_t *)(data))[(offset)])

#define EI_NIDENT     16
#define EI_MAG0       0x00
#define EI_MAG1       0x01
#define EI_MAG2       0x02
#define EI_MAG3       0x03
#define EI_CLASS      0x04
#define EI_DATA       0x05
#define EI_VERSION    0x06
#define EI_OSABI      0x07
#define EI_ABIVERSION 0x08
#define EI_PAD        0x09

typedef struct {
    uint8_t e_ident[EI_NIDENT];
    uint16_t e_type;
    uint16_t e_machine;
    uint32_t e_version;
    uint32_t e_entry;
    uint32_t e_phoff;
    uint32_t e_shoff;
    uint32_t e_flags;
    uint16_t e_ehsize;
    uint16_t e_phentsize;
    uint16_t e_phnum;
    uint16_t e_shentsize;
    uint16_t e_shnum;
    uint16_t e_shstrndx;
} Elf32_Ehdr;

#define ELF32_HAS_MAGIC(ehdr)                                                                                    \
    ((ehdr)->e_ident[EI_MAG0] == '\x7F' && (ehdr)->e_ident[EI_MAG1] == 'E' && (ehdr)->e_ident[EI_MAG2] == 'L' && \
     (ehdr)->e_ident[EI_MAG3] == 'F')

#define ELF32_IS_32(ehdr) ((ehdr)->e_ident[EI_CLASS] == 1 /*EI_CLASS_32*/)

#define ELF32_IS_BE(ehdr) ((ehdr)->e_ident[EI_DATA] == 2 /*EI_DATA_BE*/)

typedef struct {
    uint32_t sh_name;
    uint32_t sh_type;
    uint32_t sh_flags;
    uint32_t sh_addr;
    uint32_t sh_offset;
    uint32_t sh_size;
    uint32_t sh_link;
    uint32_t sh_info;
    uint32_t sh_addralign;
    uint32_t sh_entsize;
} Elf32_Shdr;

typedef struct {
    uint32_t st_name;
    uint32_t st_value;
    uint32_t st_size;
    uint8_t st_info;
    uint8_t st_other;
    uint16_t st_shndx;
} Elf32_Sym;

// sh_type

#define SHT_NULL          0x00000000
#define SHT_PROGBITS      0x00000001
#define SHT_SYMTAB        0x00000002
#define SHT_STRTAB        0x00000003
#define SHT_RELA          0x00000004
#define SHT_HASH          0x00000005
#define SHT_DYNAMIC       0x00000006
#define SHT_NOTE          0x00000007
#define SHT_NOBITS        0x00000008
#define SHT_REL           0x00000009
#define SHT_SHLIB         0x0000000A
#define SHT_DYNSYM        0x0000000B
#define SHT_INIT_ARRAY    0x0000000E
#define SHT_FINI_ARRAY    0x0000000F
#define SHT_PREINIT_ARRAY 0x00000010
#define SHT_GROUP         0x00000011
#define SHT_SYMTAB_SHNDX  0x00000012
#define SHT_NUM           0x00000013
#define SHT_LOOS          0x60000000
// MIPS specific
#define SHT_MIPS_DEBUG   0x70000005
#define SHT_MIPS_REGINFO 0x70000006
#define SHT_MIPS_OPTIONS 0x7000000D

// st_shndx

#define SHN_UND       0x0000
#define SHN_ABS       0xFFF1
#define SHN_COMMON    0xFFF2
#define SHN_LORESERVE 0xFF00
#define SHN_XINDEX    0xFFFF

// st_info [3:0]

#define ST_NOTYPE  0
#define ST_OBJECT  1
#define ST_FUNC    2
#define ST_SECTION 3
#define ST_FILE    4

// st_info [7:4]

#define SB_LOCAL  0
#define SB_GLOBAL 1
#define SB_WEAK   2

#define ELF32_ERR_PREFIX "[ELF32] "

ELF32_QUALIFIERS void
validate_read(size_t offset, size_t size, size_t data_size)
{
    if (offset + size > data_size)
        error(ELF32_ERR_PREFIX "Could not read %ld bytes at %08lX", size, offset);
}

ELF32_QUALIFIERS void *
elf32_read(const char *path, size_t *data_size_out)
{
    size_t data_size;
    void *data = util_read_whole_file(path, &data_size);
    if (data == NULL)
        error(ELF32_ERR_PREFIX "File is empty?");

    validate_read(0, sizeof(Elf32_Ehdr), data_size);

    Elf32_Ehdr *ehdr = GET_PTR(data, 0);

    if (!ELF32_HAS_MAGIC(ehdr))
        error(ELF32_ERR_PREFIX "Not an ELF file?");
    if (!ELF32_IS_32(ehdr))
        error(ELF32_ERR_PREFIX "Not ELF32?");
    if (!ELF32_IS_BE(ehdr))
        error(ELF32_ERR_PREFIX "Not big-endian?");

    *data_size_out = data_size;
    return data;
}

ELF32_QUALIFIERS Elf32_Shdr *
elf32_get_symtab(void *data, size_t data_size)
{
    Elf32_Ehdr *ehdr = GET_PTR(data, 0);
    uint32_t e_shoff = elf32_read32(ehdr->e_shoff);
    uint16_t e_shnum = elf32_read16(ehdr->e_shnum);

    Elf32_Shdr *shdr = GET_PTR(data, e_shoff);
    for (size_t i = 0; i < e_shnum; i++, shdr++) {
        validate_read(e_shoff + i * sizeof(Elf32_Shdr), sizeof(Elf32_Shdr), data_size);

        if (elf32_read32(shdr->sh_type) == SHT_SYMTAB) {
            // there should be only one section of this type
            return shdr;
        }
    }
    return NULL;
}

ELF32_QUALIFIERS Elf32_Shdr *
ef32_section_foridx(size_t idx, void *data, size_t data_size)
{
    Elf32_Ehdr *ehdr = GET_PTR(data, 0);
    uint32_t e_shoff = elf32_read32(ehdr->e_shoff);
    uint16_t e_shnum = elf32_read16(ehdr->e_shnum);
    Elf32_Shdr *shdr = GET_PTR(data, e_shoff);

    if (idx >= e_shnum)
        return NULL;

    validate_read(e_shoff + idx * sizeof(Elf32_Shdr), sizeof(Elf32_Shdr), data_size);
    return &shdr[idx];
}

ELF32_QUALIFIERS Elf32_Shdr *
elf32_get_shstrtab(void *data, size_t data_size)
{
    Elf32_Ehdr *ehdr = GET_PTR(data, 0);
    return ef32_section_foridx(elf32_read16(ehdr->e_shstrndx), data, data_size);
}

ELF32_QUALIFIERS const char *
elf32_get_string(size_t offset, Elf32_Shdr *strtab, void *data, size_t data_size)
{
    uint32_t sh_offset = elf32_read32(strtab->sh_offset);

    validate_read(sh_offset + offset, 1, data_size);
    return (const char *)GET_PTR(data, sh_offset + offset);
}

ELF32_QUALIFIERS Elf32_Shdr *
elf32_section_forname(const char *name, Elf32_Shdr *shstrtab, void *data, size_t data_size)
{
    Elf32_Ehdr *ehdr = GET_PTR(data, 0);
    uint32_t e_shoff = elf32_read32(ehdr->e_shoff);
    uint16_t e_shnum = elf32_read16(ehdr->e_shnum);

    Elf32_Shdr *shdr = GET_PTR(data, e_shoff);
    for (size_t i = 0; i < e_shnum; i++, shdr++) {
        validate_read(e_shoff + i * sizeof(Elf32_Shdr), sizeof(Elf32_Shdr), data_size);

        const char *s_name = elf32_get_string(elf32_read32(shdr->sh_name), shstrtab, data, data_size);
        if (strequ(s_name, name)) {
            return shdr;
        }
    }
    return NULL;
}

ELF32_QUALIFIERS Elf32_Shdr *
elf32_get_strtab(void *data, size_t data_size)
{
    return elf32_section_forname(".strtab", elf32_get_shstrtab(data, data_size), data, data_size);
}

#endif
