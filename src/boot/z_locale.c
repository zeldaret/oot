#include "global.h"
#include "terminal.h"

u32 gCurrentRegion = 0;
LocaleCartInfo sCartInfo;

void Locale_Init(void) {
    osEPiReadIo(gCartHandle, 0x38, &sCartInfo.mediaFormat);
    osEPiReadIo(gCartHandle, 0x3C, &sCartInfo.regionInfo);

    switch (sCartInfo.countryCode) {
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
            LogUtils_HungupThread("../z_locale.c", 118);
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
    if (gCurrentRegion == REGION_NATIVE) {
        return 0;
    }

    if (gPadMgr.validCtrlrsMask & 4) {
        return 0;
    }

    return 1;
}

u32 func_80001F8C(void) {
    if (gCurrentRegion == REGION_NATIVE) {
        return 0;
    }

    if (gPadMgr.validCtrlrsMask & 4) {
        return 1;
    }

    return 0;
}

// This function appears to be unused?
u32 Locale_IsRegionNative(void) {
    return gCurrentRegion == REGION_NATIVE;
}
#endif
