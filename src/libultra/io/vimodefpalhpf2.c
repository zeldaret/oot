/**
 * @file vimodefpalhpf2.c
 *
 * FPAL HPF2 Video Mode
 *
 * H = High Resolution
 * P = Point-Sampled
 * F = Deflickered Interlaced
 * 2 = 32-bit Framebuffer
 */
#include "ultra64.h"
#include "ultra64/viint.h"

OSViMode osViModeFpalHpf2 = {
    OS_VI_FPAL_HPF2, // type
    {
        // comRegs
        VI_CTRL_TYPE_32 | VI_CTRL_GAMMA_DITHER_ON | VI_CTRL_GAMMA_ON | VI_CTRL_SERRATE_ON | VI_CTRL_ANTIALIAS_MODE_2 |
            VI_CTRL_PIXEL_ADV_DEFAULT, // ctrl
        WIDTH(640),                    // width
        BURST(58, 30, 4, 69),          // burst
        VSYNC(624),                    // vSync
        HSYNC(3177, 23),               // hSync
        LEAP(3183, 3181),              // leap
        HSTART(128, 768),              // hStart
        SCALE(1, 0),                   // xScale
        VCURRENT(0),                   // vCurrent
    },
    {
        // fldRegs
        {
            // [0]
            ORIGIN(2560),        // origin
            SCALE(0.5, 0.5),     // yScale
            VSTART(45, 615),     // vStart
            BURST(107, 2, 9, 0), // vBurst
            VINTR(2),            // vIntr
        },
        {
            // [1]
            ORIGIN(5120),         // origin
            SCALE(0.5, 0.5),      // yScale
            VSTART(47, 617),      // vStart
            BURST(105, 2, 13, 0), // vBurst
            VINTR(2),             // vIntr
        },
    },
};
