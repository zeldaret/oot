/**
 * @file vimodefpallan1.c
 *
 * FPAL LAN1 Video Mode
 *
 * L = Low Resolution
 * A = Anti-Aliased
 * N = Deinterlaced
 * 1 = 16-bit Framebuffer
 */
#include "global.h"
#include "ultra64/viint.h"

OSViMode osViModeFpalLan1 = {
    OS_VI_FPAL_LAN1, // type
    {
        // comRegs
        VI_CTRL_TYPE_16 | VI_CTRL_GAMMA_DITHER_ON | VI_CTRL_GAMMA_ON | VI_CTRL_DIVOT_ON | VI_CTRL_ANTIALIAS_MODE_1 |
            VI_CTRL_PIXEL_ADV(3), // ctrl
        WIDTH(320),               // width
        BURST(58, 30, 4, 69),     // burst
        VSYNC(625),               // vSync
        HSYNC(3177, 23),          // hSync
        LEAP(3183, 3181),         // leap
        HSTART(128, 768),         // hStart
        SCALE(2, 0),              // xScale
        VCURRENT(0),              // vCurrent
    },
    { // fldRegs
      {
          // [0]
          ORIGIN(640),         // origin
          SCALE(1, 0),         // yScale
          START(47, 617),      // vStart
          BURST(107, 2, 9, 0), // vBurst
          VINTR(2),            // vIntr
      },
      {
          // [1]
          ORIGIN(640),         // origin
          SCALE(1, 0),         // yScale
          START(47, 617),      // vStart
          BURST(107, 2, 9, 0), // vBurst
          VINTR(2),            // vIntr
      } },
};
