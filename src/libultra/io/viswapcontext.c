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
    field = HW_REG(VI_CURRENT_REG, u32) & 1; // even or odd field
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

    HW_REG(VI_ORIGIN_REG, u32) = origin;
    HW_REG(VI_WIDTH_REG, u32) = viMode->comRegs.width;
    HW_REG(VI_BURST_REG, u32) = viMode->comRegs.burst;
    HW_REG(VI_V_SYNC_REG, u32) = viMode->comRegs.vSync;
    HW_REG(VI_H_SYNC_REG, u32) = viMode->comRegs.hSync;
    HW_REG(VI_LEAP_REG, u32) = viMode->comRegs.leap;
    HW_REG(VI_H_START_REG, u32) = hStart;
    HW_REG(VI_V_START_REG, u32) = vstart;
    HW_REG(VI_V_BURST_REG, u32) = viMode->fldRegs[field].vBurst;
    HW_REG(VI_INTR_REG, u32) = viMode->fldRegs[field].vIntr;
    HW_REG(VI_X_SCALE_REG, u32) = viNext->x.scale;
    HW_REG(VI_Y_SCALE_REG, u32) = viNext->y.scale;
    HW_REG(VI_CONTROL_REG, u32) = viNext->features;

    __osViNext = __osViCurr;
    __osViCurr = viNext;
    *__osViNext = *__osViCurr;
}
