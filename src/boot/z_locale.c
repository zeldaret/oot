#include "global.h"
#include "region.h"
#include "terminal.h"
#include "versions.h"

s32 gCurrentRegion = 0;

void Locale_Init(void) {
#if PLATFORM_N64
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
            PRINTF(VT_COL(RED, WHITE));
            PRINTF(T("z_locale_init: 日本用かアメリカ用か判別できません\n",
                     "z_locale_init: Can't tell if it's for Japan or America\n"));
#if OOT_VERSION < NTSC_1_1
            LogUtils_HungupThread("../z_locale.c", 86);
#elif OOT_VERSION < PAL_1_0
            LogUtils_HungupThread("../z_locale.c", 92);
#elif OOT_VERSION < GC_JP
            LogUtils_HungupThread("../z_locale.c", 101);
#else
            LogUtils_HungupThread("../z_locale.c", 118);
#endif
            PRINTF(VT_RST);
            break;
    }

    PRINTF(T("z_locale_init:日本用かアメリカ用か３コンで判断させる\n",
             "z_locale_init: Determine whether it is for Japan or America using 3 controls\n"));
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
