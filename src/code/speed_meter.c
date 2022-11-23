#include "global.h"
#include "terminal.h"

/**
 * How much time the audio update on the audio thread (`func_800E4FE0`) took in total, between scheduling the last two
 * graphics tasks.
 */
volatile OSTime gAudioThreadUpdateTimeTotalPerGfxTask;

/**
 * How much time elapsed between scheduling the previous graphics task and the current one being ready (the previous
 * task not necessarily being finished yet), without the amount of time spent on the audio update in the audio thread.
 */
volatile OSTime gGfxTaskSentToNextReadyMinusAudioThreadUpdateTime;

/**
 * How much time the RSP ran audio tasks for over the course of `gGraphUpdatePeriod`.
 */
volatile OSTime gRSPAudioTimeTotal;

/**
 * How much time the RSP ran graphics tasks for over the course of `gGraphUpdatePeriod`.
 * Typically the RSP runs 1 graphics task per `Graph_Update` cycle, but may run 0 (see `Graph_Update`).
 */
volatile OSTime gRSPGfxTimeTotal;

/**
 * How much time the RDP ran for over the course of `gGraphUpdatePeriod`.
 */
volatile OSTime gRDPTimeTotal;

/**
 * How much time elapsed between the last two `Graph_Update` ending.
 * This is expected to be at least the duration of a single frame, since it includes the time spent waiting on the
 * graphics task to be done.
 */
volatile OSTime gGraphUpdatePeriod;

/**
 * The time at which the audio thread audio update started.
 */
volatile OSTime gAudioThreadUpdateTimeStart;

// Accumulator for `gAudioThreadUpdateTimeStart`
volatile OSTime gAudioThreadUpdateTimeAcc;

// Accumulator for `gRSPAudioTimeTotal`
volatile OSTime gRSPAudioTimeAcc;

// Accumulator for `gRSPGfxTimeTotal`.
volatile OSTime gRSPGfxTimeAcc;

volatile OSTime gRSPOtherTimeAcc;
volatile OSTime D_8016A578;

// Accumulator for `gRDPTimeTotal`
volatile OSTime gRDPTimeAcc;

SpeedMeterTimeEntry* sSpeedMeterTimeEntryPtr;

SpeedMeterTimeEntry sSpeedMeterTimeEntryArray[] = {
    { &gAudioThreadUpdateTimeTotalPerGfxTask, 0, 0, GPACK_RGBA5551(255, 0, 0, 1) },
    { &gGfxTaskSentToNextReadyMinusAudioThreadUpdateTime, 0, 2, GPACK_RGBA5551(255, 255, 0, 1) },
    { &gRSPAudioTimeTotal, 0, 4, GPACK_RGBA5551(0, 0, 255, 1) },
    { &gRSPGfxTimeTotal, 0, 6, GPACK_RGBA5551(255, 128, 128, 1) },
    { &gRDPTimeTotal, 0, 8, GPACK_RGBA5551(0, 255, 0, 1) },
    { &gGraphUpdatePeriod, 0, 10, GPACK_RGBA5551(255, 0, 255, 1) },
};

#define gDrawRect(gfx, color, ulx, uly, lrx, lry)      \
    gDPPipeSync(gfx);                                  \
    gDPSetFillColor(gfx, ((color) << 16) | (color));   \
    gDPFillRectangle(gfx, (ulx), (uly), (lrx), (lry)); \
    gDPPipeSync(gfx)

void SpeedMeter_InitImpl(SpeedMeter* this, u32 arg1, u32 y) {
    LogUtils_CheckNullPointer("this", this, "../speed_meter.c", 181);
    this->unk_18 = arg1;
    this->y = y;
}

void SpeedMeter_Init(SpeedMeter* this) {
    SpeedMeter_InitImpl(this, 32, 22);
}

void SpeedMeter_Destroy(SpeedMeter* this) {
}

void SpeedMeter_DrawTimeEntries(SpeedMeter* this, GraphicsContext* gfxCtx) {
    s32 pad[2];
    u32 baseX = 32;
    s32 width;
    s32 i;
    s32 uly;
    s32 lry;
    View view;
    u32 pad2[3];
    Gfx* gfx;

    uly = this->y;
    lry = this->y + 2;

    OPEN_DISPS(gfxCtx, "../speed_meter.c", 225);

    /*! @bug if gIrqMgrRetraceTime is 0, CLOSE_DISPS will never be reached */
    if (gIrqMgrRetraceTime == 0) {
        return;
    }

    sSpeedMeterTimeEntryPtr = &sSpeedMeterTimeEntryArray[0];
    for (i = 0; i < ARRAY_COUNT(sSpeedMeterTimeEntryArray); i++) {
        width = ((f64)*sSpeedMeterTimeEntryPtr->time / gIrqMgrRetraceTime) * 64.0;
        sSpeedMeterTimeEntryPtr->x = baseX + width;
        sSpeedMeterTimeEntryPtr++;
    }

    View_Init(&view, gfxCtx);
    view.flags = VIEW_VIEWPORT | VIEW_PROJECTION_ORTHO;

    SET_FULLSCREEN_VIEWPORT(&view);

    gfx = OVERLAY_DISP;
    View_ApplyTo(&view, VIEW_ALL, &gfx);

    gDPPipeSync(gfx++);
    gDPSetOtherMode(gfx++,
                    G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_NONE | G_CYC_FILL | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PIXEL | G_RM_NOOP | G_RM_NOOP2);

    gDrawRect(gfx++, GPACK_RGBA5551(0, 0, 255, 1), baseX + 64 * 0, uly, baseX + 64 * 1, lry);
    gDrawRect(gfx++, GPACK_RGBA5551(0, 255, 0, 1), baseX + 64 * 1, uly, baseX + 64 * 2, lry);
    gDrawRect(gfx++, GPACK_RGBA5551(255, 0, 0, 1), baseX + 64 * 2, uly, baseX + 64 * 3, lry);
    gDrawRect(gfx++, GPACK_RGBA5551(255, 0, 255, 1), baseX + 64 * 3, uly, baseX + 64 * 4, lry);

    sSpeedMeterTimeEntryPtr = &sSpeedMeterTimeEntryArray[0];
    for (i = 0; i < ARRAY_COUNT(sSpeedMeterTimeEntryArray); i++) {
        gDrawRect(gfx++, sSpeedMeterTimeEntryPtr->color, baseX, lry + sSpeedMeterTimeEntryPtr->y,
                  sSpeedMeterTimeEntryPtr->x, lry + sSpeedMeterTimeEntryPtr->y + 1);
        sSpeedMeterTimeEntryPtr++;
    }
    gDPPipeSync(gfx++);

    OVERLAY_DISP = gfx;

    CLOSE_DISPS(gfxCtx, "../speed_meter.c", 276);
}

void SpeedMeter_InitAllocEntry(SpeedMeterAllocEntry* this, u32 maxval, u32 val, u16 backColor, u16 foreColor, u32 ulx,
                               u32 lrx, u32 uly, u32 lry) {
    this->maxval = maxval;
    this->val = val;
    this->backColor = backColor;
    this->foreColor = foreColor;
    this->ulx = ulx;
    this->lrx = lrx;
    this->uly = uly;
    this->lry = lry;
}

void SpeedMeter_DrawAllocEntry(SpeedMeterAllocEntry* this, GraphicsContext* gfxCtx) {
    s32 usedOff;
    View view;
    Gfx* gfx;

    if (this->maxval == 0) {
        osSyncPrintf(VT_FGCOL(RED));
        LOG_NUM("this->maxval", this->maxval, "../speed_meter.c", 313);
        osSyncPrintf(VT_RST);
    } else {
        OPEN_DISPS(gfxCtx, "../speed_meter.c", 318);

        View_Init(&view, gfxCtx);
        view.flags = VIEW_VIEWPORT | VIEW_PROJECTION_ORTHO;

        SET_FULLSCREEN_VIEWPORT(&view);

        gfx = OVERLAY_DISP;
        View_ApplyTo(&view, VIEW_ALL, &gfx);

        gDPPipeSync(gfx++);
        gDPSetOtherMode(gfx++,
                        G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                            G_TD_CLAMP | G_TP_NONE | G_CYC_FILL | G_PM_NPRIMITIVE,
                        G_AC_NONE | G_ZS_PIXEL | G_RM_NOOP | G_RM_NOOP2);

        usedOff = ((this->lrx - this->ulx) * this->val) / this->maxval + this->ulx;
        gDrawRect(gfx++, this->backColor, usedOff, this->uly, this->lrx, this->lry);
        gDrawRect(gfx++, this->foreColor, this->ulx, this->uly, usedOff, this->lry);

        gDPPipeSync(gfx++);

        OVERLAY_DISP = gfx;
        CLOSE_DISPS(gfxCtx, "../speed_meter.c", 339);
    }
}

void SpeedMeter_DrawAllocEntries(SpeedMeter* meter, GraphicsContext* gfxCtx, GameState* state) {
    s32 pad1[2];
    u32 ulx = 30;
    u32 lrx = 290;
    SpeedMeterAllocEntry entry;
    u32 pad2;
    s32 y;
    TwoHeadGfxArena* thga;
    u32 zeldaFreeMax;
    u32 zeldaFree;
    u32 zeldaAlloc;
    s32 sysFreeMax;
    s32 sysFree;
    s32 sysAlloc;

    y = 212;
    if (R_ENABLE_ARENA_DBG > 2) {
        if (ZeldaArena_IsInitialized()) {
            ZeldaArena_GetSizes(&zeldaFreeMax, &zeldaFree, &zeldaAlloc);
            SpeedMeter_InitAllocEntry(&entry, zeldaFree + zeldaAlloc, zeldaAlloc, GPACK_RGBA5551(0, 0, 255, 1),
                                      GPACK_RGBA5551(255, 255, 255, 1), ulx, lrx, y, y + 1);
            SpeedMeter_DrawAllocEntry(&entry, gfxCtx);
            y++;
            y++;
        }
    }

    if (R_ENABLE_ARENA_DBG > 1) {
        SystemArena_GetSizes((u32*)&sysFreeMax, (u32*)&sysFree, (u32*)&sysAlloc);
        SpeedMeter_InitAllocEntry(&entry, sysFree + sysAlloc - state->tha.size, sysAlloc - state->tha.size,
                                  GPACK_RGBA5551(0, 0, 255, 1), GPACK_RGBA5551(255, 128, 128, 1), ulx, lrx, y, y);
        SpeedMeter_DrawAllocEntry(&entry, gfxCtx);
        y++;
    }

    thga = (TwoHeadGfxArena*)&state->tha;
    //! @bug THA_GetRemaining call should be THGA_GetRemaining like the others below, harmless as-is
    SpeedMeter_InitAllocEntry(&entry, thga->size, thga->size - THA_GetRemaining(&thga->tha),
                              GPACK_RGBA5551(0, 0, 255, 1), GPACK_RGBA5551(0, 255, 0, 1), ulx, lrx, y, y);
    SpeedMeter_DrawAllocEntry(&entry, gfxCtx);
    y++;

    thga = &gfxCtx->polyOpa;
    SpeedMeter_InitAllocEntry(&entry, thga->size, thga->size - THGA_GetRemaining(thga), GPACK_RGBA5551(0, 0, 255, 1),
                              GPACK_RGBA5551(255, 0, 255, 1), ulx, lrx, y, y);
    SpeedMeter_DrawAllocEntry(&entry, gfxCtx);
    y++;

    thga = &gfxCtx->polyXlu;
    SpeedMeter_InitAllocEntry(&entry, thga->size, thga->size - THGA_GetRemaining(thga), GPACK_RGBA5551(0, 0, 255, 1),
                              GPACK_RGBA5551(255, 255, 0, 1), ulx, lrx, y, y);
    SpeedMeter_DrawAllocEntry(&entry, gfxCtx);
    y++;

    thga = &gfxCtx->overlay;
    SpeedMeter_InitAllocEntry(&entry, thga->size, thga->size - THGA_GetRemaining(thga), GPACK_RGBA5551(0, 0, 255, 1),
                              GPACK_RGBA5551(255, 0, 0, 1), ulx, lrx, y, y);
    SpeedMeter_DrawAllocEntry(&entry, gfxCtx);
    y++;
}
