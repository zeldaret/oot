#ifndef ROM_HEADER_H
#define ROM_HEADER_H

/* Storage medium IDs, used internally in MEDIUM below */

#define STORAGE_MEDIUM_CARTRIDGE            "N"
#define STORAGE_MEDIUM_CARTRIDGE_EXPANDABLE "C"
#define STORAGE_MEDIUM_DISK                 "D"
#define STORAGE_MEDIUM_DISK_EXPANSION       "E"

/* Region IDs, used internally in REGION below */

#define REGION_CODE_ALL      "A"
#define REGION_CODE_JP       "J"
#define REGION_CODE_US       "E"
#define REGION_CODE_PAL      "P"
#define REGION_CODE_GATEWAY  "G"
#define REGION_CODE_LODGENET "L"

/**
 * Magic value to determine if the ROM is byteswapped.
 *
 * This is not totally reliable since the PI Domain 1 Latency could also hold this value, however generally it can be
 * assumed that this is not the case.
 */
#define ENDIAN_IDENTIFIER \
    .byte 0x80

/**
 * Configures the timings for PI Domain 1. This determines how fast the PI hardware will read from the ROM. IPL2 reads
 * this configuration using the slowest possible configuration before switching to the provided configuration.
 */
#define PI_DOMAIN_1_CFG(lat, pwd, pgs, rls)   \
    .byte (((rls) & 3) << 4) | ((pgs) & 0xF); \
    .byte (pwd) & 0xFF;                       \
    .byte (lat) & 0xFF

/**
 * Some older libultra versions use this field to set osClockRate. It does not have any other meaningful effect, the
 * clock rate of physical units does not actually change to match this value.
 */
#define SYSTEM_CLOCK_RATE_SETTING(num) \
    .word (num)

/**
 * Indicates the entrypoint address of the program that IPL3 will load the boot segment to and execute.
 * This should be >= 0x80000400.
 */
#define ENTRYPOINT(sym) \
    .word (sym)

/**
 * Indicates the hardware revision the program is designed for (hw_major, hw_minor)
 * and what libultra version (os_ver) it uses.
 *
 * The hardware revision for a retail N64 is (2,0).
 * The libultra version may be a single letter, without quotes.
 */
#define LIBULTRA_VERSION(hw_major, hw_minor, os_ver)   \
    .half 0;                                           \
    .byte (hw_major) * 10 + (hw_minor);                \
    _os_ver_start = .;                                 \
    .ascii #os_ver ;                                   \
    .if (. - _os_ver_start) != 1;                      \
        .error "OS version should be just one letter"; \
    .endif

/**
 * Leaves space to insert the ROM Checksum value. IPL3 computes a checksum over ROM data in the range 0x1000 to 0x101000
 * and compares it to this value, if the results differ it will refuse to boot the program.
 *
 * This macro just writes 8 bytes of 0. The correct checksum value is filled in after the full ROM image is available to
 * compute the checksum with.
 */
#define CHECKSUM() \
    .word 0, 0

/**
 * For unused header space. Fills num bytes with 0.
 */
#define PADDING(num) \
    .fill (num)

/**
 * Defines the ROM name. This should be a string that is at most 20 characters long, a null terminator is not required.
 * If a name is less than 20 characters, the remaining space will be padded with spaces.
 */
#define ROM_NAME(name)                                             \
    _name_start = .;                                               \
    .ascii name;                                                   \
    .if (. - _name_start) > 20;                                    \
        .error "ROM name too long, must be at most 20 characters"; \
    .endif;                                                        \
    .if (. - _name_start) < 20;                                    \
        .fill 20 - (. - _name_start), 1, 0x20;                     \
    .endif

/**
 * Identifies the storage medium the program intends to use.
 *
 * Should be one of:
 *  - CARTRIDGE
 *  - CARTRIDGE_EXPANDABLE
 *  - DISK
 *  - DISK_EXPANSION
 */
#define MEDIUM(type) \
    .ascii STORAGE_MEDIUM_##type

/**
 * Two-letter game identifier. Should be wrapped in quotes.
 */
#define GAME_ID(id)                             \
    _game_id_start = .;                         \
    .ascii id ;                                 \
    .if (. - _game_id_start) != 2;              \
        .error "Game ID should be two letters"; \
    .endif

/**
 * Identifies the region the game is made for.
 *
 * Should be one of:
 *  - ALL
 *  - JP
 *  - US
 *  - PAL
 *  - GATEWAY
 *  - LODGENET
 *
 * Note: Often flashcarts and emulators will read this value to determine whether to act as an NTSC or PAL system and
 *       will adjust the VI timings appropriately, which may be used to determine target FPS.
 *       This can lead to glitchy video output on hardware if the program configures a video mode other than the native
 *       video mode for the hardware version.
 */
#define REGION(name) \
    .ascii REGION_CODE_##name

/**
 * Identifies the game revision number. Can be between 0 and 255.
 */
#define GAME_REVISION(num) \
    .byte (num)

#endif
