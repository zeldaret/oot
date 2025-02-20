#ifndef VI_MODE_H
#define VI_MODE_H

#include "ultra64.h"
#include "libu64/pad.h"
#include "versions.h"

typedef enum ViModeEditState {
#if OOT_VERSION < PAL_1_0
    /* -2 */ VI_MODE_EDIT_STATE_NEGATIVE_2 = -2,
    /* -1 */ VI_MODE_EDIT_STATE_NEGATIVE_1,
    /*  0 */ VI_MODE_EDIT_STATE_INACTIVE,
    /*  1 */ VI_MODE_EDIT_STATE_2, // active, more adjustments
    /*  2 */ VI_MODE_EDIT_STATE_3  // active, more adjustments, print comparison with NTSC LAN1 mode
#else
    /*  0 */ VI_MODE_EDIT_STATE_INACTIVE,
    /*  1 */ VI_MODE_EDIT_STATE_ACTIVE,
    /*  2 */ VI_MODE_EDIT_STATE_2, // active, more adjustments
    /*  3 */ VI_MODE_EDIT_STATE_3  // active, more adjustments, print comparison with NTSC LAN1 mode
#endif
} ViModeEditState;

typedef struct ViMode {
    /* 0x00 */ OSViMode customViMode;
    /* 0x50 */ s32 viHeight;
    /* 0x54 */ s32 viWidth;
    /* 0x58 */ s32 rightAdjust;
    /* 0x5C */ s32 leftAdjust;
    /* 0x60 */ s32 lowerAdjust;
    /* 0x64 */ s32 upperAdjust;
    /* 0x68 */ s32 editState;
    /* 0x6C */ s32 tvType;
    /* 0x70 */ u32 loRes;
    /* 0x74 */ u32 antialiasOff;
    /* 0x78 */ u32 modeN; // Controls interlacing, the meaning of this mode is different based on choice of resolution
    /* 0x7C */ u32 fb16Bit;
    /* 0x80 */ u32 viFeatures;
    /* 0x84 */ u32 unk_84;
} ViMode; // size = 0x88

void ViMode_Init(ViMode* viMode);
void ViMode_Destroy(ViMode* viMode);
void ViMode_Update(ViMode* viMode, Input* input);

#endif
