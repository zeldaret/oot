// SPDX-License-Identifier: CC0-1.0

#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include <string.h>
#include <inttypes.h>

#define u32(v) (uint32_t)(v)

int read_rom_words(char *rom_filename, size_t n_words, uint32_t *rom_words);
uint64_t n64checksum(uint32_t *rom_words);
int write_checksum(char *rom_filename, uint64_t checksum);

int main(int argc, char **argv)
{
    // Handle command line arguments

    if (argc < 2)
    {
    usage:
        printf("Usage: %s [--fix] <rom.z64>\n", argv[0]);
        return EXIT_FAILURE;
    }

    bool fix = false;
    char *rom_filename;
    if (argc == 2)
    {
        rom_filename = argv[1];
    }
    else if (argc == 3)
    {
        if (strcmp(argv[1], "--fix") != 0)
        {
            goto usage;
        }

        fix = true;
        rom_filename = argv[2];
    }
    else
    {
        goto usage;
    }

    // Read the rom, compute the checksum

    size_t n_bytes = 0x101000;
    uint32_t *rom_words = malloc(n_bytes);
    if (rom_words == NULL)
    {
        fprintf(stderr, "Couldn't malloc\n");
        return EXIT_FAILURE;
    }

    int ret = read_rom_words(rom_filename, n_bytes / 4, rom_words);
    if (ret != 0)
    {
        fprintf(stderr, "Couldn't read rom words (%d)\n", ret);
        free(rom_words);
        return EXIT_FAILURE;
    }

    uint64_t rom_checksum = ((uint64_t)rom_words[4] << 32) | rom_words[5];
    uint64_t computed_checksum = n64checksum(rom_words);

    free(rom_words);

    // Perform action/output

    if (fix)
    {
        if (rom_checksum != computed_checksum)
        {
            int ret = write_checksum(rom_filename, computed_checksum);

            if (ret != 0)
            {
                fprintf(stderr, "Couldn't write checksum to rom (%d)\n", ret);
                return EXIT_FAILURE;
            }
        }
    }
    else
    {
        printf("In rom:   %016" PRIX64 "\n", rom_checksum);
        printf("Computed: %016" PRIX64 "\n", computed_checksum);
    }

    return EXIT_SUCCESS;
}

/**
 * Read `n_words` words (of 4 bytes each) into `rom_words` from the big-endian rom file at `rom_filename`.
 */
int read_rom_words(char *rom_filename, size_t n_words, uint32_t *rom_words)
{

    FILE *f = fopen(rom_filename, "rb");

    if (f == NULL)
    {
        fprintf(stderr, "Couldn't open file for reading\n");
        return 1;
    }

    for (size_t i = 0; i < n_words; i++)
    {
        uint8_t word_bytes[4];
        size_t n_read = fread(word_bytes, 1, 4, f);
        if (n_read != 4)
        {
            if (feof(f))
            {
                fprintf(stderr, "File ends unexpectedly\n");
            }
            else
            {
                fprintf(stderr, "An error occured reading the rom file\n");
            }
            fclose(f);
            return 2;
        }

        rom_words[i] = 0;
        for (int j = 0; j < 4; j++)
        {
            rom_words[i] |= word_bytes[3 - j] << (j * 8);
        }
    }

    fclose(f);

    return 0;
}

/**
 * Compute the 64-bits checksum from the given rom words (rom header + 1 MB)
 */
uint64_t n64checksum(uint32_t *rom_words)
{
    uint32_t seed_ipl3 = 0x91;

    uint32_t s6, a0, a1, at, lo, hi, ra, t0, t1, v0, a3, t2, t3, s0, a2, t4, t5, v1, t6, t7, t8, t9;

    s6 = seed_ipl3;

    uint32_t INI_PC = 0x80000400;

    a0 = INI_PC;

    a1 = s6;
    at = 0x5D588B65;
    lo = u32(a1 * at);

    s6 = 0xA0000200;
    ra = 0x100000;

    t0 = 0;
    t1 = a0;
    v0 = lo;
    v0 += 1;
    a3 = v0;
    t2 = v0;
    t3 = v0;
    s0 = v0;
    a2 = v0;
    t4 = v0;
    t5 = 0x20;

    do
    {
        v0 = rom_words[(t1 - INI_PC + 0x1000) / 4];
        v0 = u32(v0);
        v1 = a3 + v0;
        v1 = u32(v1);
        at = u32(v1) < u32(a3) ? 1 : 0;

        a1 = v1;
        if (!(at == 0))
        {
            t2 += 1;
            t2 = u32(t2);
        }

        v1 = v0 & 0x1f;
        t7 = t5 - v1;
        t7 = u32(t7);
        t8 = v0 >> t7;
        t6 = v0 << v1;
        t6 = u32(t6);
        a0 = t6 | t8;
        at = u32(a2) < u32(v0) ? 1 : 0;
        a3 = a1;
        t3 ^= v0;

        s0 += a0;
        s0 = u32(s0);
        if (at == 0)
        {
            a2 ^= a0;
        }
        else
        {
            t9 = a3 ^ v0;
            a2 ^= t9;
        }

        t7 = rom_words[(s6 - 0xA0000004 + 0x000514 + 0x40) / 4];
        t7 = u32(t7);
        t0 += 4;
        t0 = u32(t0);
        s6 += 4;
        s6 = u32(s6);
        t7 ^= v0;
        t4 += t7;
        t4 = u32(t4);
        t7 = 0xA00002FF;
        t1 += 4;
        t1 = u32(t1);

        s6 &= t7;
    } while (t0 != ra);

    t6 = a3 ^ t2;
    a3 = t6 ^ t3;

    t8 = s0 ^ a2;
    s0 = t8 ^ t4;

    uint64_t checksum = ((uint64_t)a3 << 32) | s0;

    return checksum;
}

/**
 * Write the checksum to the rom header of the rom at `rom_filename`.
 */
int write_checksum(char *rom_filename, uint64_t checksum)
{

    FILE *f = fopen(rom_filename, "rb+");
    if (f == NULL)
    {
        fprintf(stderr, "Couldn't open file for writing\n");
        return 1;
    }

    if (fseek(f, 4 * 4, SEEK_SET) != 0)
    {
        fprintf(stderr, "Couldn't seek 4 words into file\n");
        return 2;
    }

    uint8_t checksum_bytes[8];

    for (int i = 0; i < 8; i++)
    {
        checksum_bytes[7 - i] = (checksum >> (8 * i)) & 0xFF;
    }

    fwrite(checksum_bytes, 1, 8, f);

    fclose(f);

    return 0;
}
