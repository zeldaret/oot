#include "global.h"
#include "ultra64/viint.h"

void __osViSwapContext(void) {
    register OSViMode* viMode;
    register OSViContext* viNext;
    u32 origin;
    u32 hStart;
    u32 vstart;
    u32 nomValue;
    u32 field;

    field = 0;
    viNext = __osViNext;
    viMode = viNext->modep;
    field = IO_READ(VI_V_CURRENT_LINE_REG) & 1; // even or odd field
    origin = osVirtualToPhysical(viNext->framep) + viMode->fldRegs[field].origin;

    if (viNext->state & VI_STATE_XSCALE_SET) {
        viNext->x.scale |= viMode->comRegs.xScale & ~VI_SCALE_MASK;
    } else {
        viNext->x.scale = viMode->comRegs.xScale;
    }
    if (viNext->state & VI_STATE_YSCALE_FACTOR_SET) {
        nomValue = (u32)(viMode->fldRegs[field].yScale & VI_SCALE_MASK);
        viNext->y.scale = viNext->y.factor * nomValue;
        viNext->y.scale |= viMode->fldRegs[field].yScale & ~VI_SCALE_MASK;
    } else {
        viNext->y.scale = viMode->fldRegs[field].yScale;
    }

    vstart = (viMode->fldRegs[field].vStart - (__additional_scanline << VI_SUBPIXEL_SH)) + __additional_scanline;
    hStart = viMode->comRegs.hStart;

    if (viNext->state & VI_STATE_BLACK) {
        hStart = 0;
    }
    if (viNext->state & VI_STATE_REPEATLINE) {
        viNext->y.scale = 0;
        origin = osVirtualToPhysical(viNext->framep);
    }
    if (viNext->state & VI_STATE_FADE) {
        viNext->y.scale = (viNext->y.offset << VI_SUBPIXEL_SH) & (VI_2_10_FPART_MASK << VI_SUBPIXEL_SH);
        origin = osVirtualToPhysical(viNext->framep);
    }

    IO_WRITE(VI_ORIGIN_REG, origin);
    IO_WRITE(VI_WIDTH_REG, viMode->comRegs.width);
    IO_WRITE(VI_BURST_REG, viMode->comRegs.burst);
    IO_WRITE(VI_V_SYNC_REG, viMode->comRegs.vSync);
    IO_WRITE(VI_H_SYNC_REG, viMode->comRegs.hSync);
    IO_WRITE(VI_LEAP_REG, viMode->comRegs.leap);
    IO_WRITE(VI_H_START_REG, hStart);
    IO_WRITE(VI_V_START_REG, vstart);
    IO_WRITE(VI_V_BURST_REG, viMode->fldRegs[field].vBurst);
    IO_WRITE(VI_INTR_REG, viMode->fldRegs[field].vIntr);
    IO_WRITE(VI_X_SCALE_REG, viNext->x.scale);
    IO_WRITE(VI_Y_SCALE_REG, viNext->y.scale);
    IO_WRITE(VI_CONTROL_REG, viNext->features);

    __osViNext = __osViCurr;
    __osViCurr = viNext;
    *__osViNext = *__osViCurr;
}
