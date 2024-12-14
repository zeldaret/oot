#include "global.h"
#include "ultra64/viint.h"
#include "versions.h"

void ViMode_LogPrint(OSViMode* osViMode) {
    LOG_ADDRESS("osvimodep", osViMode, "../z_vimode.c", 87);
    LOG_HEX32("osvimodep->comRegs.ctrl", osViMode->comRegs.ctrl, "../z_vimode.c", 88);
    LOG_HEX32("osvimodep->comRegs.width", osViMode->comRegs.width, "../z_vimode.c", 89);
    LOG_HEX32("osvimodep->comRegs.burst", osViMode->comRegs.burst, "../z_vimode.c", 90);
    LOG_HEX32("osvimodep->comRegs.vSync", osViMode->comRegs.vSync, "../z_vimode.c", 91);
    LOG_HEX32("osvimodep->comRegs.hSync", osViMode->comRegs.hSync, "../z_vimode.c", 92);
    LOG_HEX32("osvimodep->comRegs.leap", osViMode->comRegs.leap, "../z_vimode.c", 93);
    LOG_HEX32("osvimodep->comRegs.hStart", osViMode->comRegs.hStart, "../z_vimode.c", 94);
    LOG_HEX32("osvimodep->comRegs.xScale", osViMode->comRegs.xScale, "../z_vimode.c", 95);
    LOG_HEX32("osvimodep->fldRegs[0].vStart", osViMode->fldRegs[0].vStart, "../z_vimode.c", 96);
    LOG_HEX32("osvimodep->fldRegs[0].vBurst", osViMode->fldRegs[0].vBurst, "../z_vimode.c", 97);
    LOG_HEX32("osvimodep->fldRegs[0].origin", osViMode->fldRegs[0].origin, "../z_vimode.c", 98);
    LOG_HEX32("osvimodep->fldRegs[0].yScale", osViMode->fldRegs[0].yScale, "../z_vimode.c", 99);
    LOG_HEX32("osvimodep->fldRegs[0].vIntr", osViMode->fldRegs[0].vIntr, "../z_vimode.c", 100);
    LOG_HEX32("osvimodep->fldRegs[1].vStart", osViMode->fldRegs[1].vStart, "../z_vimode.c", 101);
    LOG_HEX32("osvimodep->fldRegs[1].vBurst", osViMode->fldRegs[1].vBurst, "../z_vimode.c", 102);
    LOG_HEX32("osvimodep->fldRegs[1].origin", osViMode->fldRegs[1].origin, "../z_vimode.c", 103);
    LOG_HEX32("osvimodep->fldRegs[1].yScale", osViMode->fldRegs[1].yScale, "../z_vimode.c", 104);
    LOG_HEX32("osvimodep->fldRegs[1].vIntr", osViMode->fldRegs[1].vIntr, "../z_vimode.c", 105);
}

/**
 * Configures the custom OSViMode for this ViMode
 *
 * @param viMode        ViMode to configure the custom OSViMode for
 * @param type          Identifying type for the OSViMode
 * @param tvType        TV Type: NTSC, PAL, MPAL or FPAL
 * @param loRes         Boolean: true = low resolution, false = high resolution.
 *                      Corresponds to "L" or "H" in libultra VI mode names
 * @param antialiasOff  Boolean: true = point-sampling, false = anti-aliasing.
 *                      Corresponds to "P" or "A" in libultra VI mode names
 * @param modeN         Boolean: controls interlacing mode, different based on resolution.
 *                      Corresponds to "N" or "F" in libultra VI mode names
 * @param fb16Bit       Bolean: true = 16-bit framebuffer, false = 32-bit framebuffer.
 *                      Corresponds to "1" or "2" in libultra VI mode names
 * @param width         Screen width
 * @param height        Screen height
 * @param leftAdjust    Left edge adjustment
 * @param rightAdjust   Right edge adjustment
 * @param upperAdjust   Upper edge adjustment
 * @param lowerAdjust   Lower edge adjustment
 */
void ViMode_Configure(ViMode* viMode, s32 type, s32 tvType, s32 loRes, s32 antialiasOff, s32 modeN, s32 fb16Bit,
                      s32 width, s32 height, s32 leftAdjust, s32 rightAdjust, s32 upperAdjust, s32 lowerAdjust) {
    s32 hiRes;
    s32 antialiasOn;
    s32 modeF;
    s32 fb32Bit;
    s32 hiResDeflicker; // deflickered interlacing
    s32 hiResInterlaced;
    s32 loResDeinterlaced;
    s32 loResInterlaced;
    s32 modeLAN1; // L=(lo res) A=(antialias)     N=(deinterlace)        1=(16-bit)
    s32 modeLPN2; // L=(lo res) P=(point-sampled) N=(deinterlace)        2=(32-bit)
    s32 modeHPN2; // H=(hi res) P=(point-sampled) N=(normal interlacing) 2=(32-bit)
    s32 yScaleLo;
    s32 yScaleHiEvenField;
    s32 yScaleHiOddField;

    hiRes = !loRes;
    antialiasOn = !antialiasOff;
    modeF = !modeN;
    fb32Bit = !fb16Bit;

    hiResDeflicker = hiRes && modeF;
    hiResInterlaced = hiRes && modeN;
    loResDeinterlaced = loRes && modeN;
    loResInterlaced = loRes && modeF;

    modeLAN1 = loRes && antialiasOn && modeN && fb16Bit;
    modeLPN2 = loRes && antialiasOff && modeN && fb32Bit;
    modeHPN2 = hiRes && antialiasOff && modeN && fb32Bit;

    upperAdjust &= ~1;
    lowerAdjust &= ~1;

    yScaleLo =
        (hiResDeflicker ? 2 : 1) * ((height << 11) / (SCREEN_HEIGHT * 2 + lowerAdjust - upperAdjust) / (loRes ? 1 : 2));

    yScaleHiEvenField = modeF ? (loResInterlaced ? (F210(0.25) << 16) : (F210(0.5) << 16)) : 0;
    yScaleHiOddField = modeF ? (loResInterlaced ? (F210(0.75) << 16) : (F210(0.5) << 16)) : 0;

    viMode->customViMode.type = type;
    viMode->customViMode.comRegs.ctrl = VI_CTRL_PIXEL_ADV_3 | VI_CTRL_GAMMA_ON | VI_CTRL_GAMMA_DITHER_ON |
                                        (!loResDeinterlaced ? VI_CTRL_SERRATE_ON : 0) |
                                        (antialiasOn ? VI_CTRL_DIVOT_ON : 0) |
                                        (fb32Bit ? VI_CTRL_TYPE_32 : VI_CTRL_TYPE_16);

    if (modeLAN1) {
        // Anti-aliased, fetch extra lines as-needed
        viMode->customViMode.comRegs.ctrl |= VI_CTRL_ANTIALIAS_MODE_1;
    } else if (modeLPN2 | modeHPN2) {
        // Point-sampled, resampling disabled
        viMode->customViMode.comRegs.ctrl |= VI_CTRL_ANTIALIAS_MODE_3;
    } else {
        if (antialiasOff) {
            // Point-sampled, resampling enabled
            viMode->customViMode.comRegs.ctrl |= VI_CTRL_ANTIALIAS_MODE_2;
        } else {
            // Anti-aliased, always fetch extra lines
            viMode->customViMode.comRegs.ctrl |= VI_CTRL_ANTIALIAS_MODE_0;
        }
    }

    viMode->customViMode.comRegs.width = width * (hiResInterlaced ? 2 : 1);

    if (tvType == OS_TV_NTSC) {
        viMode->customViMode.comRegs.burst = BURST(57, 34, 5, 62);
        viMode->customViMode.comRegs.vSync = VSYNC(524);
        viMode->customViMode.comRegs.hSync = HSYNC(3093, 0);
        viMode->customViMode.comRegs.leap = LEAP(3093, 3093);
        viMode->customViMode.comRegs.hStart = HSTART(108, 748);
        viMode->customViMode.fldRegs[0].vStart = START(37, 511);
        viMode->customViMode.fldRegs[0].vBurst = BURST(4, 2, 14, 0);
    } else if (tvType == OS_TV_PAL) {
        viMode->customViMode.comRegs.burst = BURST(58, 35, 4, 64);
        viMode->customViMode.comRegs.vSync = VSYNC(624);
        viMode->customViMode.comRegs.hSync = HSYNC(3177, 21);
        viMode->customViMode.comRegs.leap = LEAP(3183, 3182);
        viMode->customViMode.comRegs.hStart = HSTART(128, 768);
        viMode->customViMode.fldRegs[0].vStart = START(95, 569);
        viMode->customViMode.fldRegs[0].vBurst = BURST(107, 2, 9, 0);
    } else if (tvType == OS_TV_MPAL) {
        viMode->customViMode.comRegs.burst = BURST(57, 30, 5, 70);
        viMode->customViMode.comRegs.vSync = VSYNC(524);
        viMode->customViMode.comRegs.hSync = HSYNC(3088, 0);
        viMode->customViMode.comRegs.leap = LEAP(3100, 3100);
        viMode->customViMode.comRegs.hStart = HSTART(108, 748);
        viMode->customViMode.fldRegs[0].vStart = START(37, 511);
        viMode->customViMode.fldRegs[0].vBurst = BURST(4, 2, 14, 0);
    }

    viMode->customViMode.fldRegs[1].vStart = viMode->customViMode.fldRegs[0].vStart;

    viMode->customViMode.comRegs.hStart += (leftAdjust << 16) + (s16)rightAdjust;
    viMode->customViMode.fldRegs[0].vStart += (upperAdjust << 16) + (s16)lowerAdjust;
    viMode->customViMode.fldRegs[1].vStart += (upperAdjust << 16) + (s16)lowerAdjust;

    viMode->customViMode.fldRegs[1].vBurst = viMode->customViMode.fldRegs[0].vBurst;

    if (loResDeinterlaced) {
        viMode->customViMode.comRegs.vSync++;
        if (tvType == OS_TV_MPAL) {
            viMode->customViMode.comRegs.hSync += HSYNC(1, 4);
        }
        if (tvType == OS_TV_MPAL) {
            viMode->customViMode.comRegs.leap += LEAP(-4, -2);
        }
    } else {
        viMode->customViMode.fldRegs[0].vStart += START(-3, -2);
        if (tvType == OS_TV_MPAL) {
            viMode->customViMode.fldRegs[0].vBurst += BURST(-2, -1, 12, -1);
        }
        if (tvType == OS_TV_PAL) {
            viMode->customViMode.fldRegs[1].vBurst += BURST(-2, -1, 2, 0);
        }
    }

    viMode->customViMode.comRegs.xScale = (width << 10) / (SCREEN_WIDTH * 2 + rightAdjust - leftAdjust);
    viMode->customViMode.comRegs.vCurrent = VCURRENT(0);

    viMode->customViMode.fldRegs[0].origin = ORIGIN(width * 2 * (fb16Bit ? 1 : 2));
    viMode->customViMode.fldRegs[1].origin = ORIGIN(width * 2 * (fb16Bit ? 1 : 2) * (loRes ? 1 : 2));

    viMode->customViMode.fldRegs[0].yScale = yScaleLo | yScaleHiEvenField;
    viMode->customViMode.fldRegs[1].yScale = yScaleLo | yScaleHiOddField;

    viMode->customViMode.fldRegs[0].vIntr = VINTR(2);
    viMode->customViMode.fldRegs[1].vIntr = VINTR(2);
}

void ViMode_Save(ViMode* viMode) {
    R_VI_MODE_EDIT_STATE = viMode->editState;
    R_VI_MODE_EDIT_WIDTH = viMode->viWidth;
    R_VI_MODE_EDIT_HEIGHT = viMode->viHeight;
    R_VI_MODE_EDIT_ULY_ADJ = viMode->upperAdjust;
    R_VI_MODE_EDIT_LRY_ADJ = viMode->lowerAdjust;
    R_VI_MODE_EDIT_ULX_ADJ = viMode->leftAdjust;
    R_VI_MODE_EDIT_LRX_ADJ = viMode->rightAdjust;

#if OOT_VERSION >= PAL_1_0
    if (SREG(58) == 1) {
        SREG(58) = 0;

        switch (SREG(59)) {
            case 1:
                PRINTF("osViModePalLan1\n");
                ViMode_LogPrint(&osViModePalLan1);
                break;
            case 2:
                PRINTF("osViModeFpalLan1\n");
                ViMode_LogPrint(&osViModeFpalLan1);
                break;
            default:
                PRINTF("Custom\n");
                ViMode_LogPrint(&viMode->customViMode);
                break;
        }
    }
#endif
}

void ViMode_Load(ViMode* viMode) {
    //! @bug This condition never passes as the lowest bit is always masked out to 0
    if ((R_VI_MODE_EDIT_WIDTH & ~3) == 1) {
        R_VI_MODE_EDIT_WIDTH += 4;
    }

    viMode->editState = R_VI_MODE_EDIT_STATE;
    viMode->viWidth = R_VI_MODE_EDIT_WIDTH & ~3;
    viMode->viHeight = R_VI_MODE_EDIT_HEIGHT;
    viMode->upperAdjust = R_VI_MODE_EDIT_ULY_ADJ;
    viMode->lowerAdjust = R_VI_MODE_EDIT_LRY_ADJ;
    viMode->leftAdjust = R_VI_MODE_EDIT_ULX_ADJ;
    viMode->rightAdjust = R_VI_MODE_EDIT_LRX_ADJ;
}

void ViMode_Init(ViMode* viMode) {
    viMode->editState = VI_MODE_EDIT_STATE_INACTIVE;
    viMode->viWidth = SCREEN_WIDTH;
    viMode->viHeight = SCREEN_HEIGHT;
    viMode->leftAdjust = 0;
    viMode->rightAdjust = 0;
    viMode->upperAdjust = 0;
    viMode->lowerAdjust = 0;
    viMode->viFeatures = OS_VI_DITHER_FILTER_ON | OS_VI_GAMMA_OFF;
    viMode->tvType = osTvType;
    viMode->fb16Bit = true;
    viMode->modeN = true;
    viMode->antialiasOff = false;
    viMode->loRes = true;

    ViMode_Save(viMode);
}

void ViMode_Destroy(ViMode* viMode) {
}

void ViMode_ConfigureFeatures(ViMode* viMode, s32 viFeatures) {
    u32 ctrl = viMode->customViMode.comRegs.ctrl;

    if (viFeatures & OS_VI_GAMMA_ON) {
        ctrl |= VI_CTRL_GAMMA_ON;
    }
    if (viFeatures & OS_VI_GAMMA_OFF) {
        ctrl &= ~VI_CTRL_GAMMA_ON;
    }
    if (viFeatures & OS_VI_GAMMA_DITHER_ON) {
        ctrl |= VI_CTRL_GAMMA_DITHER_ON;
    }
    if (viFeatures & OS_VI_GAMMA_DITHER_OFF) {
        ctrl &= ~VI_CTRL_GAMMA_DITHER_ON;
    }
    if (viFeatures & OS_VI_DIVOT_ON) {
        ctrl |= VI_CTRL_DIVOT_ON;
    }
    if (viFeatures & OS_VI_DIVOT_OFF) {
        ctrl &= ~VI_CTRL_DIVOT_ON;
    }
    viMode->customViMode.comRegs.ctrl = ctrl;
}

/**
 * Updates the custom VI mode with controller input and any edits made with the REG editor
 * (through R_VI_MODE_EDIT_* entries)
 */
void ViMode_Update(ViMode* viMode, Input* input) {
    // Load state from REGs
    ViMode_Load(viMode);

#if OOT_VERSION < PAL_1_0
    if (viMode->editState == VI_MODE_EDIT_STATE_NEGATIVE_2) {
        // Log comparison between the NTSC LAN1 mode and the custom mode
        ViMode_LogPrint(&osViModeNtscLan1);
        ViMode_LogPrint(&viMode->customViMode);
        viMode->editState = VI_MODE_EDIT_STATE_NEGATIVE_1;
    } else if ((viMode->editState == VI_MODE_EDIT_STATE_2) || (viMode->editState == VI_MODE_EDIT_STATE_3))
#else
    if ((viMode->editState == VI_MODE_EDIT_STATE_ACTIVE) || (viMode->editState == VI_MODE_EDIT_STATE_2) ||
        (viMode->editState == VI_MODE_EDIT_STATE_3))
#endif
    {
        gScreenWidth = viMode->viWidth;
        gScreenHeight = viMode->viHeight;

        // Controls to reset the ViMode to defaults
        if (CHECK_BTN_ALL(input->cur.button, BTN_START | BTN_CUP | BTN_CRIGHT)) {
            ViMode_Init(viMode);
        }

        // Controls to adjust the screen dimensions (upper-left)
        if (CHECK_BTN_ALL(input->cur.button, BTN_CUP)) {
            // upper
            if (CHECK_BTN_ALL(input->cur.button, BTN_DUP)) {
                viMode->upperAdjust--;
            }
            if (CHECK_BTN_ALL(input->cur.button, BTN_DDOWN)) {
                viMode->upperAdjust++;
            }
            // left
            if (CHECK_BTN_ALL(input->cur.button, BTN_DLEFT)) {
                viMode->leftAdjust--;
            }
            if (CHECK_BTN_ALL(input->cur.button, BTN_DRIGHT)) {
                viMode->leftAdjust++;
            }
        }

        // Controls to adjust the screen dimensions (lower-right)
        if (CHECK_BTN_ALL(input->cur.button, BTN_CRIGHT)) {
            // lower
            if (CHECK_BTN_ALL(input->cur.button, BTN_DUP)) {
                viMode->lowerAdjust--;
            }
            if (CHECK_BTN_ALL(input->cur.button, BTN_DDOWN)) {
                viMode->lowerAdjust++;
            }
            // right
            if (CHECK_BTN_ALL(input->cur.button, BTN_DLEFT)) {
                viMode->rightAdjust--;
            }
            if (CHECK_BTN_ALL(input->cur.button, BTN_DRIGHT)) {
                viMode->rightAdjust++;
            }
        }

        // Controls to adjust key features
        if (CHECK_BTN_ALL(input->cur.button, BTN_CDOWN)) {
            if (CHECK_BTN_ALL(input->press.button, BTN_DUP)) {
                viMode->loRes = !viMode->loRes;
            }
            if (CHECK_BTN_ALL(input->press.button, BTN_DDOWN)) {
                viMode->antialiasOff = !viMode->antialiasOff;
            }
            if (CHECK_BTN_ALL(input->press.button, BTN_DLEFT)) {
                viMode->modeN = !viMode->modeN;
            }
            if (CHECK_BTN_ALL(input->press.button, BTN_DRIGHT)) {
                viMode->fb16Bit = !viMode->fb16Bit;
            }
        }

        // Clamp adjustments
#if OOT_VERSION < PAL_1_0
        // Do not allow parts of the framebuffer to end up offscreen
        if (viMode->leftAdjust < 0) {
            viMode->leftAdjust = 0;
        }
        if (viMode->upperAdjust < 0) {
            viMode->upperAdjust = 0;
        }
        if (viMode->rightAdjust > 0) {
            viMode->rightAdjust = 0;
        }
        if (viMode->lowerAdjust > 0) {
            viMode->lowerAdjust = 0;
        }
#else
        if (viMode->editState >= VI_MODE_EDIT_STATE_2) {
            // Allow parts of the framebuffer to possibly be offscreen by a small margin
            if (viMode->leftAdjust < -16) {
                viMode->leftAdjust = -16;
            }
            if (viMode->upperAdjust < -50) {
                viMode->upperAdjust = -50;
            }
            if (viMode->rightAdjust > 16) {
                viMode->rightAdjust = 16;
            }
            if (viMode->lowerAdjust > 50) {
                viMode->lowerAdjust = 50;
            }
        } else {
            // Do not allow parts of the framebuffer to end up offscreen
            if (viMode->leftAdjust < 0) {
                viMode->leftAdjust = 0;
            }
            if (viMode->upperAdjust < 0) {
                viMode->upperAdjust = 0;
            }
            if (viMode->rightAdjust > 0) {
                viMode->rightAdjust = 0;
            }
            if (viMode->lowerAdjust > 0) {
                viMode->lowerAdjust = 0;
            }
        }
#endif

        // Configure the custom VI mode with the selected settings
        ViMode_Configure(viMode, OS_VI_MPAL_LPN1, osTvType, viMode->loRes, viMode->antialiasOff, viMode->modeN,
                         viMode->fb16Bit, viMode->viWidth, viMode->viHeight, viMode->leftAdjust, viMode->rightAdjust,
                         viMode->upperAdjust, viMode->lowerAdjust);

#if OOT_VERSION < PAL_1_0
        if (viMode->editState == VI_MODE_EDIT_STATE_3) {
            // Log comparison between the NTSC LAN1 mode and the custom mode
            ViMode_LogPrint(&osViModeNtscLan1);
            ViMode_LogPrint(&viMode->customViMode);
        }
#endif

        ViMode_ConfigureFeatures(viMode, viMode->viFeatures);

        if (viMode->editState == VI_MODE_EDIT_STATE_3) {
            // Log comparison between the NTSC LAN1 mode and the custom mode
            ViMode_LogPrint(&osViModeNtscLan1);
            ViMode_LogPrint(&viMode->customViMode);
            viMode->editState = VI_MODE_EDIT_STATE_2;
        }
    }
    // Save new state to REGs for interactive runtime editing
    ViMode_Save(viMode);
}
