/**
 * @file vimodefpallaf1.c
 *
 * FPAL LAF1 Video Mode
 *
 * L = Low Resolution
 * A = Anti-Aliased
 * F = Interlaced
 * 1 = 16-bit Framebuffer
 */
#include "ultra64.h"
#include "ultra64/viint.h"

OSViMode osViModeFpalLaf1 = {
    OS_VI_FPAL_LAF1, // type
    {
        // comRegs
        VI_CTRL_TYPE_16 | VI_CTRL_GAMMA_DITHER_ON | VI_CTRL_GAMMA_ON | VI_CTRL_DIVOT_ON | VI_CTRL_SERRATE_ON |
            VI_CTRL_PIXEL_ADV_DEFAULT, // ctrl
        WIDTH(320),                    // width
        BURST(58, 30, 4, 69),          // burst
        VSYNC(624),                    // vSync
        HSYNC(3177, 23),               // hSync
        LEAP(3183, 3181),              // leap
        HSTART(128, 768),              // hStart
        SCALE(2, 0),                   // xScale
        VCURRENT(0),                   // vCurrent
    },
    {
        // fldRegs
        {
            // [0]
            ORIGIN(640),         // origin
            SCALE(1, 0.25),      // yScale
            VSTART(45, 615),     // vStart
            BURST(107, 2, 9, 0), // vBurst
            VINTR(2),            // vIntr
        },
        {
            // [1]
            ORIGIN(640),          // origin
            SCALE(1, 0.75),       // yScale
            VSTART(47, 617),      // vStart
            BURST(105, 2, 13, 0), // vBurst
            VINTR(2),             // vIntr
        },
    },
};
