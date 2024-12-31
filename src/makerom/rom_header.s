#include "rom_header.h"
#include "ultra64/version.h"
#include "region.h"
#include "versions.h"

/* 0x00 */ ENDIAN_IDENTIFIER
/* 0x01 */ PI_DOMAIN_1_CFG(64, 18, 7, 3)
/* 0x04 */ SYSTEM_CLOCK_RATE_SETTING(0xF)
/* 0x08 */ ENTRYPOINT(0x80000400)
/* 0x0C */ OS_VERSION(2, 0, LIBULTRA_VERSION)
/* 0x10 */ CHECKSUM()
/* 0x18 */ PADDING(8)
#if !PLATFORM_IQUE
/* 0x20 */ ROM_NAME("THE LEGEND OF ZELDA")
#else
/* 0x20 */ ROM_NAME("\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0")
#endif
/* 0x34 */ PADDING(7)
#if !PLATFORM_IQUE
#if OOT_NTSC
/* 0x3B */ MEDIUM(CARTRIDGE_EXPANDABLE)
#else
/* 0x3B */ MEDIUM(CARTRIDGE)
#endif
/* 0x3C */ GAME_ID("ZL")
#if OOT_REGION == REGION_US
/* 0x3E */ REGION(US)
#elif OOT_REGION == REGION_JP
/* 0x3E */ REGION(JP)
#elif OOT_REGION == REGION_EU
/* 0x3E */ REGION(PAL)
#endif
#else
/* 0x3B */ .byte 0,0,0,0
#endif
/* 0x3F */ GAME_REVISION(OOT_REVISION)
