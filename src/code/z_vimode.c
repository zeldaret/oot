#include "global.h"

void ViMode_LogPrint(OSViMode* viMode) {
    OSViMode** viMode_ptr = &viMode;
#define _LOG(line, fmt_str, val)                 \
    LogUtils_LogThreadId("../z_vimode.c", line); \
    osSyncPrintf(fmt_str, val)
    _LOG(87, "osvimodep = %08x\n", (*viMode_ptr));
    _LOG(88, "osvimodep->comRegs.ctrl = %08x\n", (*viMode_ptr)->comRegs.ctrl);
    _LOG(89, "osvimodep->comRegs.width = %08x\n", (*viMode_ptr)->comRegs.width);
    _LOG(90, "osvimodep->comRegs.burst = %08x\n", (*viMode_ptr)->comRegs.burst);
    _LOG(91, "osvimodep->comRegs.vSync = %08x\n", (*viMode_ptr)->comRegs.vSync);
    _LOG(92, "osvimodep->comRegs.hSync = %08x\n", (*viMode_ptr)->comRegs.hSync);
    _LOG(93, "osvimodep->comRegs.leap = %08x\n", (*viMode_ptr)->comRegs.leap);
    _LOG(94, "osvimodep->comRegs.hStart = %08x\n", (*viMode_ptr)->comRegs.hStart);
    _LOG(95, "osvimodep->comRegs.xScale = %08x\n", (*viMode_ptr)->comRegs.xScale);
    _LOG(96, "osvimodep->fldRegs[0].vStart = %08x\n", (*viMode_ptr)->fldRegs[0].vStart);
    _LOG(97, "osvimodep->fldRegs[0].vBurst = %08x\n", (*viMode_ptr)->fldRegs[0].vBurst);
    _LOG(98, "osvimodep->fldRegs[0].origin = %08x\n", (*viMode_ptr)->fldRegs[0].origin);
    _LOG(99, "osvimodep->fldRegs[0].yScale = %08x\n", (*viMode_ptr)->fldRegs[0].yScale);
    _LOG(100, "osvimodep->fldRegs[0].vIntr = %08x\n", (*viMode_ptr)->fldRegs[0].vIntr);
    _LOG(101, "osvimodep->fldRegs[1].vStart = %08x\n", (*viMode_ptr)->fldRegs[1].vStart);
    _LOG(102, "osvimodep->fldRegs[1].vBurst = %08x\n", (*viMode_ptr)->fldRegs[1].vBurst);
    _LOG(103, "osvimodep->fldRegs[1].origin = %08x\n", (*viMode_ptr)->fldRegs[1].origin);
    _LOG(104, "osvimodep->fldRegs[1].yScale = %08x\n", (*viMode_ptr)->fldRegs[1].yScale);
    _LOG(105, "osvimodep->fldRegs[1].vIntr = %08x\n", (*viMode_ptr)->fldRegs[1].vIntr);
#undef _LOG
}

// This function configures the custom VI mode (`viMode.customViMode`) based
// on the other flags in `viMode`.
#pragma GLOBAL_ASM("asm/non_matchings/code/z_vimode/ViMode_Configure.s")

void ViMode_Save(ViMode* viMode) {
    SREG(48) = viMode->viModeBase;
    SREG(49) = viMode->viWidth;
    SREG(50) = viMode->viHeight;
    SREG(51) = viMode->unk64;
    SREG(52) = viMode->unk60;
    SREG(53) = viMode->unk5C;
    SREG(54) = viMode->unk58;
    if (SREG(58) == 1) {
        SREG(58) = 0;
        switch (SREG(59)) {
            case 1:
                osSyncPrintf("osViModePalLan1\n");
                ViMode_LogPrint(&osViModePalLan1);
                break;
            case 2:
                osSyncPrintf("osViModeFpalLan1\n");
                ViMode_LogPrint(&osViModeFpalLan1);
                break;
            default:
                osSyncPrintf("Custom\n");
                ViMode_LogPrint(&viMode->customViMode);
                break;
        }
    }
}

void ViMode_Load(ViMode* viMode) {
    GameInfo* _gameInfo = gGameInfo;

    // NB: This condition is always false
    s16 width = SREG(49);
    if ((width & ((s16)0xfffc)) == 1) {
        SREG(49) = width + 4;
    }

    viMode->viModeBase = SREG(48);
    viMode->viWidth = SREG(49) & (~3);
    viMode->viHeight = SREG(50);
    viMode->unk64 = SREG(51);
    viMode->unk60 = SREG(52);
    viMode->unk5C = SREG(53);
    viMode->unk58 = SREG(54);
}

void ViMode_Init(ViMode* viMode) {
    viMode->viModeBase = 0;
    viMode->viWidth = SCREEN_WIDTH;
    viMode->viHeight = SCREEN_HEIGHT;
    viMode->unk5C = 0;
    viMode->unk58 = 0;
    viMode->unk64 = 0;
    viMode->unk60 = 0;
    viMode->viFeatures = OS_VI_DITHER_FILTER_ON | OS_VI_GAMMA_OFF;
    viMode->viTvType = osTvType;
    viMode->unkFlagRight = true;
    viMode->unkFlagLeft = true;
    viMode->unkFlagBottom = false;
    viMode->unkFlagTop = true;

    ViMode_Save(viMode);
}

void ViMode_Destroy(ViMode* viMode) {
    (void)viMode;
}

void ViMode_ConfigureFeatures(ViMode* viMode, s32 viFeatures) {
    u32 ctrl = viMode->customViMode.comRegs.ctrl;
    if (viFeatures & OS_VI_GAMMA_ON) {
        ctrl = ctrl | OS_VI_GAMMA;
    }
    if (viFeatures & OS_VI_GAMMA_OFF) {
        ctrl = ctrl & ~OS_VI_GAMMA;
    }
    if (viFeatures & OS_VI_GAMMA_DITHER_ON) {
        ctrl = ctrl | OS_VI_GAMMA_DITHER;
        ;
    }
    if (viFeatures & OS_VI_GAMMA_DITHER_OFF) {
        ctrl = ctrl & ~OS_VI_GAMMA_DITHER;
        ;
    }
    if (viFeatures & OS_VI_DIVOT_ON) {
        ctrl = ctrl | OS_VI_DIVOT;
    }
    if (viFeatures & OS_VI_DIVOT_OFF) {
        ctrl = ctrl & ~OS_VI_DIVOT;
    }
    viMode->customViMode.comRegs.ctrl = ctrl;
}

// This function uses controller input (C buttons + D pad) to reconfigure the custom VI mode
void ViMode_Update(ViMode* viMode, Input* input) {
    ViMode_Load(viMode);
    if ((viMode->viModeBase == 1) || (viMode->viModeBase == 2) || (viMode->viModeBase == 3)) {
        gScreenWidth = viMode->viWidth;
        gScreenHeight = viMode->viHeight;
        if (CHECK_BTN_ALL(input->cur.button, BTN_START | BTN_CUP | BTN_CRIGHT)) {
            ViMode_Init(viMode);
        }
        if (CHECK_BTN_ALL(input->cur.button, BTN_CUP)) {
            if (CHECK_BTN_ALL(input->cur.button, BTN_DUP)) {
                viMode->unk64--;
            }
            if (CHECK_BTN_ALL(input->cur.button, BTN_DDOWN)) {
                viMode->unk64++;
            }
            if (CHECK_BTN_ALL(input->cur.button, BTN_DLEFT)) {
                viMode->unk5C--;
            }
            if (CHECK_BTN_ALL(input->cur.button, BTN_DRIGHT)) {
                viMode->unk5C++;
            }
        }
        if (CHECK_BTN_ALL(input->cur.button, BTN_CRIGHT)) {
            if (CHECK_BTN_ALL(input->cur.button, BTN_DUP)) {
                viMode->unk60--;
            }
            if (CHECK_BTN_ALL(input->cur.button, BTN_DDOWN)) {
                viMode->unk60++;
            }
            if (CHECK_BTN_ALL(input->cur.button, BTN_DLEFT)) {
                viMode->unk58--;
            }
            if (CHECK_BTN_ALL(input->cur.button, BTN_DRIGHT)) {
                viMode->unk58++;
            }
        }
        if (CHECK_BTN_ALL(input->cur.button, BTN_CDOWN)) {
            if (CHECK_BTN_ALL(input->press.button, BTN_DUP)) {
                viMode->unkFlagTop = !viMode->unkFlagTop;
            }
            if (CHECK_BTN_ALL(input->press.button, BTN_DDOWN)) {
                viMode->unkFlagBottom = !viMode->unkFlagBottom;
            }
            if (CHECK_BTN_ALL(input->press.button, BTN_DLEFT)) {
                viMode->unkFlagLeft = !viMode->unkFlagLeft;
            }
            if (CHECK_BTN_ALL(input->press.button, BTN_DRIGHT)) {
                viMode->unkFlagRight = !viMode->unkFlagRight;
            }
        }
        if (viMode->viModeBase >= 2) {
            if (viMode->unk5C < -16) {
                viMode->unk5C = -16;
            }
            if (viMode->unk64 < -50) {
                viMode->unk64 = -50;
            }
            if (viMode->unk58 >= 17) {
                viMode->unk58 = 16;
            }
            if (viMode->unk60 >= 51) {
                viMode->unk60 = 50;
            }
        } else {
            if (viMode->unk5C < 0) {
                viMode->unk5C = 0;
            }
            if (viMode->unk64 < 0) {
                viMode->unk64 = 0;
            }
            if (viMode->unk58 > 0) {
                viMode->unk58 = 0;
            }
            if (viMode->unk60 > 0) {
                viMode->unk60 = 0;
            }
        }
        ViMode_Configure(viMode,
                         28, // This is exactly 1 greater than any OS_VI_* enum value?
                         osTvType, viMode->unkFlagTop, viMode->unkFlagBottom, viMode->unkFlagLeft, viMode->unkFlagRight,
                         viMode->viWidth, viMode->viHeight, viMode->unk5C, viMode->unk58, viMode->unk64, viMode->unk60);
        ViMode_ConfigureFeatures(viMode, viMode->viFeatures);
        if (viMode->viModeBase == 3) {
            ViMode_LogPrint(&osViModeNtscLan1);
            ViMode_LogPrint(&viMode->customViMode);
            viMode->viModeBase = 2;
        }
    }
    ViMode_Save(viMode);
}
