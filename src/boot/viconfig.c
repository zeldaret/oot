#include "printf.h"
#include "terminal.h"
#include "idle.h"

s8 D_80009430 = 1;
vu8 gViConfigBlack = true;
u8 gViConfigAdditionalScanLines = 0;
u32 gViConfigFeatures = OS_VI_DITHER_FILTER_ON | OS_VI_GAMMA_OFF;
f32 gViConfigXScale = 1.0;
f32 gViConfigYScale = 1.0;

void ViConfig_UpdateVi(u32 black) {
    if (black) {
        // Black the screen on next call to ViConfig_UpdateBlack, skip most VI configuration

        PRINTF(VT_COL(YELLOW, BLACK) "osViSetYScale1(%f);\n" VT_RST, 1.0f);

        if (osTvType == OS_TV_PAL) {
            osViSetMode(&osViModePalLan1);
        }

        // Reset the VI y scale. The VI y scale is different between NTSC (1.0) and PAL (0.833)
        // and should be reset to 1.0 during PreNMI to ensure there are no issues when restarting.
        // (see section 30.4.3 VI Processing with PreNMI Events in the N64 Programming Manual)
        osViSetYScale(1.0f);
    } else {
        osViSetMode(&gViConfigMode);

        if (gViConfigAdditionalScanLines != 0) {
            osViExtendVStart(gViConfigAdditionalScanLines);
        }

        if (gViConfigFeatures != 0) {
            osViSetSpecialFeatures(gViConfigFeatures);
        }

        if (gViConfigXScale != 1.0f) {
            osViSetXScale(gViConfigXScale);
        }

        if (gViConfigYScale != 1.0f) {
            PRINTF(VT_COL(YELLOW, BLACK) "osViSetYScale3(%f);\n" VT_RST, gViConfigYScale);
            osViSetYScale(gViConfigYScale);
        }
    }

    gViConfigBlack = black;
}

void ViConfig_UpdateBlack(void) {
    if (gViConfigBlack) {
        osViBlack(true);
    } else {
        osViBlack(false);
    }
}
