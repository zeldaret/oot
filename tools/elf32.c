#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include "elf32.h"

static uint16_t read16_le(const uint8_t *data)
{
    return data[0] << 0
         | data[1] << 8;
}

static uint32_t read32_le(const uint8_t *data)
{
    return data[0] << 0
         | data[1] << 8
         | data[2] << 16
         | data[3] << 24;
}

static uint16_t read16_be(const uint8_t *data)
{
    return data[0] << 8
         | data[1] << 0;
}

static uint32_t read32_be(const uint8_t *data)
{
    return data[0] << 24
         | data[1] << 16
         | data[2] << 8
         | data[3] << 0;
}

static const void *get_section_header(struct Elf32 *e, int secnum)
{
    size_t secoffset = e->shoff + secnum * 0x28;

    if (secnum >= e->shnum || secoffset >= e->dataSize)
        return NULL;
    return e->data + secoffset;
}

static const void *get_section_contents(struct Elf32 *e, int secnum)
{
    size_t secoffset = e->shoff + secnum * 0x28;
    size_t dataoffset;

    if (secnum >= e->shnum || secoffset >= e->dataSize)
        return NULL;
    dataoffset = e->read32(e->data + secoffset + 0x10);
    return e->data + dataoffset;
}

static bool verify_magic(const uint8_t *data)
{
    return (data[0] == 0x7F && data[1] == 'E' && data[2] == 'L' && data[3] == 'F');
}

bool elf32_init(struct Elf32 *e, const void *data, size_t size)
{
    unsigned int i;

    e->data = data;
    e->dataSize = size;

    if (size < 0x34)
        return false;  // not big enough for header

    if (!verify_magic(e->data))
        return false;

    if (e->data[4] != 1)
        return false;  // must be 32-bit

    e->endian = e->data[5];

    switch (e->endian)
    {
    case 1:
        e->read16 = read16_le;
        e->read32 = read32_le;
        break;
    case 2:
        e->read16 = read16_be;
        e->read32 = read32_be;
        break;
    default:
        return false;
    }

    e->type      = e->read16(e->data + 0x10);
    e->machine   = e->read16(e->data + 0x12);
    e->version   = e->data[6];
    e->entry     = e->read32(e->data + 0x18);
    e->phoff     = e->read32(e->data + 0x1C);
    e->shoff     = e->read32(e->data + 0x20);
    e->ehsize    = e->read16(e->data + 0x28);
    e->phentsize = e->read16(e->data + 0x2A);
    e->phnum     = e->read16(e->data + 0x2C);
    e->shentsize = e->read16(e->data + 0x2E);
    e->shnum     = e->read16(e->data + 0x30);
    e->shstrndx  = e->read16(e->data + 0x32);

    // find symbol table section
    e->symtabndx = -1;
    for (i = 0; i < e->shnum; i++)
    {
        const uint8_t *sechdr = get_section_header(e, i);
        uint32_t type = e->read32(sechdr + 0x04);

        if (type == SHT_SYMTAB)
        {
            e->symtabndx = i;
            break;
        }
    }

    // find .strtab section
    e->strtabndx = -1;
    for (i = 0; i < e->shnum; i++)
    {
        const uint8_t *sechdr = get_section_header(e, i);
        uint32_t type = e->read32(sechdr + 0x04);

        if (type == SHT_STRTAB)
        {
            const char *strings = get_section_contents(e, e->shstrndx);
            const char *secname = strings + e->read32(sechdr + 0);

            if (strcmp(secname, ".strtab") == 0)
            {
                e->strtabndx = i;
                break;
            }
        }
    }

    e->numsymbols = 0;
    if (e->symtabndx != -1)
    {
        const uint8_t *sechdr = get_section_header(e, e->symtabndx);
        //const uint8_t *symtab = get_section_contents(e, e->symtabndx);

        e->numsymbols = e->read32(sechdr + 0x14) / e->read32(sechdr + 0x24);
    }

    if (e->shoff + e->shstrndx * 0x28 >= e->dataSize)
        return false;

    return true;
}

bool elf32_get_section(struct Elf32 *e, struct Elf32_Section *sec, int secnum)
{
    const uint8_t *sechdr = get_section_header(e, secnum);
    const char *strings = get_section_contents(e, e->shstrndx);

    sec->name      = strings + e->read32(sechdr + 0);
    sec->type      = e->read32(sechdr + 0x04);
    sec->flags     = e->read32(sechdr + 0x08);
    sec->addr      = e->read32(sechdr + 0x0C);
    sec->offset    = e->read32(sechdr + 0x10);
    sec->addralign = e->read32(sechdr + 0x20);
    sec->entsize   = e->read32(sechdr + 0x24);
    return true;
}

bool elf32_get_symbol(struct Elf32 *e, struct Elf32_Symbol *sym, int symnum)
{
    const uint8_t *sechdr;
    const uint8_t *symtab;
    const char *strings;
    int symcount;

    if (e->symtabndx == -1)
        return false;

    sechdr = get_section_header(e, e->symtabndx);
    symtab = get_section_contents(e, e->symtabndx);
    strings = get_section_contents(e, e->strtabndx);

    symcount = e->read32(sechdr + 0x14) / e->read32(sechdr + 0x24);
    if (symnum >= symcount)
        return false;

    sym->name = strings + e->read32(symtab + symnum * 0x10);
    sym->value = e->read32(symtab + symnum * 0x10 + 4);
    return true;
}
