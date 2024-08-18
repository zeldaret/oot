#include "global.h"
#include "region.h"
#include "terminal.h"

s32 gCurrentRegion = 0;
LocaleCartInfo sCartInfo;

void Locale_Init(void) {
#if PLATFORM_N64
    ALIGNED(4) u8 regionInfo[4];
    u8 countryCode;

    osEPiReadIo(gCartHandle, 0x3C, (u32*)regionInfo);
#else
    u8 countryCode;

    osEPiReadIo(gCartHandle, 0x38, &sCartInfo.mediaFormat);
    osEPiReadIo(gCartHandle, 0x3C, &sCartInfo.regionInfo);
#endif

#if PLATFORM_N64
    countryCode = regionInfo[2];
#else
    countryCode = sCartInfo.countryCode;
#endif

    switch (countryCode) {
        case 'J': // "NTSC-J (Japan)"
            gCurrentRegion = REGION_JP;
            break;
        case 'E': // "NTSC-U (North America)"
            gCurrentRegion = REGION_US;
            break;
        case 'P': // "PAL (Europe)"
            gCurrentRegion = REGION_EU;
            break;
        default:
            PRINTF(VT_COL(RED, WHITE));
            PRINTF("z_locale_init: 日本用かアメリカ用か判別できません\n");
#if PLATFORM_N64
            LogUtils_HungupThread("../z_locale.c", 101);
#else
            LogUtils_HungupThread("../z_locale.c", 118);
#endif
            PRINTF(VT_RST);
            break;
    }

    PRINTF("z_locale_init:日本用かアメリカ用か３コンで判断させる\n");
}

void Locale_ResetRegion(void) {
    gCurrentRegion = REGION_NULL;
}

#if OOT_DEBUG
u32 func_80001F48(void) {
    if (gCurrentRegion == OOT_REGION) {
        return 0;
    }

    if (gPadMgr.validCtrlrsMask & 4) {
        return 0;
    }

    return 1;
}

u32 func_80001F8C(void) {
    if (gCurrentRegion == OOT_REGION) {
        return 0;
    }

    if (gPadMgr.validCtrlrsMask & 4) {
        return 1;
    }

    return 0;
}

// This function appears to be unused?
u32 Locale_IsRegionNative(void) {
    return gCurrentRegion == OOT_REGION;
}
#endif
