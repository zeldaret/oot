/**
 * @file vimodepallpf2.c
 *
 * PAL LPF2 Video Mode
 *
 * L = Low Resolution
 * P = Point-Sampled
 * F = Interlaced
 * 2 = 32-bit Framebuffer
 */
#include "ultra64.h"
#include "ultra64/viint.h"

OSViMode osViModePalLpf2 = {
    OS_VI_PAL_LPF2, // type
    {
        // comRegs
        VI_CTRL_TYPE_32 | VI_CTRL_GAMMA_DITHER_ON | VI_CTRL_GAMMA_ON | VI_CTRL_SERRATE_ON | VI_CTRL_ANTIALIAS_MODE_2 |
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
            ORIGIN(1280),        // origin
            SCALE(1, 0.25),      // yScale
            VSTART(93, 567),     // vStart
            BURST(107, 2, 9, 0), // vBurst
            VINTR(2),            // vIntr
        },
        {
            // [1]
            ORIGIN(1280),         // origin
            SCALE(1, 0.75),       // yScale
            VSTART(95, 569),      // vStart
            BURST(105, 2, 13, 0), // vBurst
            VINTR(2),             // vIntr
        },
    },
};
