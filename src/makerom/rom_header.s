#include "rom_header.h"
#include "ultra64/version.h"
#include "region.h"
#include "versions.h"

/* 0x00 */ ENDIAN_IDENTIFIER
/* 0x01 */ PI_DOMAIN_1_CFG(64, 18, 7, 3)
/* 0x04 */ SYSTEM_CLOCK_RATE_SETTING(0xF)
/* 0x08 */ ENTRYPOINT(entrypoint)
/* 0x0C */ OS_VERSION(2, 0, LIBULTRA_VERSION)
/* 0x10 */ CHECKSUM()

#if !PLATFORM_IQUE

/* 0x18 */ PADDING(8)
/* 0x20 */ ROM_NAME("THE LEGEND OF ZELDA")
/* 0x34 */ PADDING(7)
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
#else
#error "Unknown OOT_REGION"
#endif
/* 0x3F */ GAME_REVISION(OOT_REVISION)

#else

    .fill 0x40 - 0x18

#endif
