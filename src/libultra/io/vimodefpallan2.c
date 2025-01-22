/**
 * @file vimodefpallan2.c
 *
 * FPAL LAN2 Video Mode
 *
 * L = Low Resolution
 * A = Anti-Aliased
 * N = Deinterlaced
 * 2 = 32-bit Framebuffer
 */
#include "ultra64.h"
#include "ultra64/viint.h"

OSViMode osViModeFpalLan2 = {
    OS_VI_FPAL_LAN2, // type
    {
        // comRegs
        VI_CTRL_TYPE_32 | VI_CTRL_GAMMA_DITHER_ON | VI_CTRL_GAMMA_ON | VI_CTRL_DIVOT_ON |
            VI_CTRL_PIXEL_ADV_DEFAULT, // ctrl
        WIDTH(320),                    // width
        BURST(58, 30, 4, 69),          // burst
        VSYNC(625),                    // vSync
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
            SCALE(1, 0),         // yScale
            VSTART(47, 617),     // vStart
            BURST(107, 2, 9, 0), // vBurst
            VINTR(2),            // vIntr
        },
        {
            // [1]
            ORIGIN(1280),        // origin
            SCALE(1, 0),         // yScale
            VSTART(47, 617),     // vStart
            BURST(107, 2, 9, 0), // vBurst
            VINTR(2),            // vIntr
        },
    },
};
