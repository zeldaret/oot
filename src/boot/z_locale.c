#include "global.h"
#include "region.h"
#include "terminal.h"
#include "versions.h"
#include "line_numbers.h"

s32 gCurrentRegion = 0;

void Locale_Init(void) {
#if !PLATFORM_GC
    ALIGNED(4) u8 regionInfo[4];
    u8 countryCode;

    osEPiReadIo(gCartHandle, 0x3C, (u32*)regionInfo);

    countryCode = regionInfo[2];
#else
    static LocaleCartInfo sCartInfo;
    u8 countryCode;

    osEPiReadIo(gCartHandle, 0x38, &sCartInfo.mediaFormat);
    osEPiReadIo(gCartHandle, 0x3C, &sCartInfo.regionInfo);

    countryCode = sCartInfo.countryCode;
#endif

#if !PLATFORM_IQUE
    switch (countryCode) {
        case 'J': // "NTSC-J (Japan)"
            gCurrentRegion = REGION_JP;
            break;
        case 'E': // "NTSC-U (North America)"
            gCurrentRegion = REGION_US;
            break;
#if OOT_VERSION >= PAL_1_0
        case 'P': // "PAL (Europe)"
            gCurrentRegion = REGION_EU;
            break;
#endif
        default:
            PRINTF_COLOR_ERROR();
            PRINTF(T("z_locale_init: 日本用かアメリカ用か判別できません\n",
                     "z_locale_init: Can't tell if it's for Japan or America\n"));
            LogUtils_HungupThread("../z_locale.c", LN4(86, 92, 101, UNK_LINE, 118));
            PRINTF(VT_RST);
            break;
    }

    PRINTF(T("z_locale_init:日本用かアメリカ用か３コンで判断させる\n",
             "z_locale_init: Determine whether it is for Japan or America using 3 controls\n"));
#else
    gCurrentRegion = REGION_US;
#endif
}

void Locale_ResetRegion(void) {
    gCurrentRegion = REGION_NULL;
}

#if DEBUG_FEATURES
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
