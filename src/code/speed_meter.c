#include <ultra64.h>
#include <global.h>
#include <vt.h>

SpeedMeterTimeEntry sSpeedMeterTimeEntryArray[] = {
    { &D_8016A520, 0, 0, GPACK_RGBA5551(0xFF, 0x00, 0x00, 1) },
    { &D_8016A528, 0, 2, GPACK_RGBA5551(0xFF, 0xFF, 0x00, 1) },
    { &D_8016A530, 0, 4, GPACK_RGBA5551(0x00, 0x00, 0xFF, 1) },
    { &D_8016A538, 0, 6, GPACK_RGBA5551(0xFF, 0x80, 0x80, 1) },
    { &D_8016A540, 0, 8, GPACK_RGBA5551(0x00, 0xFF, 0x00, 1) },
    { &D_8016A548, 0, 10, GPACK_RGBA5551(0xFF, 0x00, 0xFF, 1) },
};

#define DrawRec(gfx, color, ulx, uly, lrx, lry)        \
    gDPPipeSync(gfx);                                  \
    gDPSetFillColor(gfx, ((color) << 16) | (color));   \
    gDPFillRectangle(gfx, (ulx), (uly), (lrx), (lry)); \
    gDPPipeSync(gfx);

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
    u32 pad[2];
    u32 baseX = 32;
    s32 temp;
    s32 i;
    s32 uly;
    s32 lry;
    View view;
    u32 pad2[3];
    Gfx* gfx;
    Gfx* dispRefs[5];
    Viewport viewport;

    uly = this->y;
    lry = this->y + 2;

    Graph_OpenDisps(dispRefs, gfxCtx, "../speed_meter.c", 225);

    /*! @bug if gIrqMgrRetraceTime is 0, the function won't call Graph_CloseDisps */
    if (gIrqMgrRetraceTime == 0) {
        return;
    }

    gSpeedMeterTimeEntryPtr = &sSpeedMeterTimeEntryArray;
    for (i = 0; i < ARRAY_COUNT(sSpeedMeterTimeEntryArray); i++) {
        temp = ((f64)*gSpeedMeterTimeEntryPtr->time / gIrqMgrRetraceTime) * 64.0;
        gSpeedMeterTimeEntryPtr->x = temp + baseX;
        gSpeedMeterTimeEntryPtr++;
    }

    View_Init(&view, gfxCtx);
    view.flags = 0xA;

    VIEWPORT_INIT(viewport, SCREEN_HEIGHT, SCREEN_WIDTH, 0, 0);
    View_SetViewport(&view, &viewport);
    gfx = gfxCtx->overlay.p;
    func_800AB9EC(&view, 0xF, &gfx);

    gDPPipeSync(gfx++);
    gDPSetOtherMode(gfx++,
                    G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                        G_TD_CLAMP | G_TP_NONE | G_CYC_FILL | G_PM_NPRIMITIVE,
                    G_AC_NONE | G_ZS_PIXEL | G_RM_NOOP | G_RM_NOOP2);

    DrawRec(gfx++, GPACK_RGBA5551(0x00, 0x00, 0xFF, 1), baseX + 64 * 0, uly, baseX + 64 * 1, lry);
    DrawRec(gfx++, GPACK_RGBA5551(0x00, 0xFF, 0x00, 1), baseX + 64 * 1, uly, baseX + 64 * 2, lry);
    DrawRec(gfx++, GPACK_RGBA5551(0xFF, 0x00, 0x00, 1), baseX + 64 * 2, uly, baseX + 64 * 3, lry);
    DrawRec(gfx++, GPACK_RGBA5551(0xFF, 0x00, 0xFF, 1), baseX + 64 * 3, uly, baseX + 64 * 4, lry);

    gSpeedMeterTimeEntryPtr = sSpeedMeterTimeEntryArray;
    for (i = 0; i < ARRAY_COUNT(sSpeedMeterTimeEntryArray); i++) {
        DrawRec(gfx++, gSpeedMeterTimeEntryPtr->color, baseX, lry + gSpeedMeterTimeEntryPtr->y,
                gSpeedMeterTimeEntryPtr->x, lry + gSpeedMeterTimeEntryPtr->y + 1);
        gSpeedMeterTimeEntryPtr++;
    }
    gDPPipeSync(gfx++);

    gfxCtx->overlay.p = gfx;
    Graph_CloseDisps(dispRefs, gfxCtx, "../speed_meter.c", 276);
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
    Gfx* dispRefs[5];
    Viewport viewport;
    u32 pad2;

    if (this->maxval == 0) {
        osSyncPrintf(VT_FGCOL(RED));
        LOG_NUM("this->maxval", this->maxval, "../speed_meter.c", 313);
        osSyncPrintf(VT_RST);
    } else {
        Graph_OpenDisps(dispRefs, gfxCtx, "../speed_meter.c", 318);

        View_Init(&view, gfxCtx);
        view.flags = 0xA;

        VIEWPORT_INIT(viewport, SCREEN_HEIGHT, SCREEN_WIDTH, 0, 0);

        View_SetViewport(&view, &viewport);
        gfx = gfxCtx->overlay.p;
        func_800AB9EC(&view, 0xF, &gfx);

        gDPPipeSync(gfx++);
        gDPSetOtherMode(gfx++,
                        G_AD_PATTERN | G_CD_MAGICSQ | G_CK_NONE | G_TC_CONV | G_TF_POINT | G_TT_NONE | G_TL_TILE |
                            G_TD_CLAMP | G_TP_NONE | G_CYC_FILL | G_PM_NPRIMITIVE,
                        G_AC_NONE | G_ZS_PIXEL | G_RM_NOOP | G_RM_NOOP2);

        usedOff = ((this->lrx - this->ulx) * this->val) / this->maxval + this->ulx;
        DrawRec(gfx++, this->backColor, usedOff, this->uly, this->lrx, this->lry);
        DrawRec(gfx++, this->foreColor, this->ulx, this->uly, usedOff, this->lry);

        gDPPipeSync(gfx++);

        gfxCtx->overlay.p = gfx;
        Graph_CloseDisps(dispRefs, gfxCtx, "../speed_meter.c", 339);
    }
}

void SpeedMeter_DrawAllocEntries(SpeedMeter* meter, GraphicsContext* gfxCtx, GameState* state) {
    u32 pad[2];
    u32 ulx = 30;
    u32 lrx = 290;
    SpeedMeterAllocEntry entry;
    u32 temp;
    s32 y;
    TwoHeadGfxArena* thga;
    u32 zeldaFreeMax;
    u32 zeldaFree;
    u32 zeldaAlloc;
    s32 sysFreeMax;
    s32 sysFree;
    s32 sysAlloc;

    y = 212;
    if (SREG(0) > 2) {
        if (ZeldaArena_IsInitalized()) {
            ZeldaArena_GetSizes(&zeldaFreeMax, &zeldaFree, &zeldaAlloc);
            SpeedMeter_InitAllocEntry(&entry, zeldaFree + zeldaAlloc, zeldaAlloc, GPACK_RGBA5551(0x00, 0x00, 0xFF, 1),
                                      GPACK_RGBA5551(0xFF, 0xFF, 0xFF, 1), ulx, lrx, y, y + 1);
            SpeedMeter_DrawAllocEntry(&entry, gfxCtx);
            y++;
            y++;
        }
    }

    if (SREG(0) > 1) {
        SystemArena_GetSizes(&sysFreeMax, &sysFree, &sysAlloc);
        SpeedMeter_InitAllocEntry(&entry, sysFree + sysAlloc - state->tha.size, sysAlloc - state->tha.size,
                                  GPACK_RGBA5551(0x00, 0x00, 0xFF, 1), GPACK_RGBA5551(0xFF, 0x80, 0x80, 1), ulx, lrx, y,
                                  y);
        SpeedMeter_DrawAllocEntry(&entry, gfxCtx);
        y++;
    }

    thga = (TwoHeadGfxArena*)&state->tha;
    SpeedMeter_InitAllocEntry(&entry, thga->size, thga->size - THA_GetSize((TwoHeadArena*)thga),
                              GPACK_RGBA5551(0x00, 0x00, 0xFF, 1), GPACK_RGBA5551(0x00, 0xFF, 0x00, 1), ulx, lrx, y, y);
    SpeedMeter_DrawAllocEntry(&entry, gfxCtx);
    y++;

    thga = &gfxCtx->polyOpa;
    SpeedMeter_InitAllocEntry(&entry, thga->size, thga->size - THGA_GetSize(thga), GPACK_RGBA5551(0x00, 0x00, 0xFF, 1),
                              GPACK_RGBA5551(0xFF, 0x00, 0xFF, 1), ulx, lrx, y, y);
    SpeedMeter_DrawAllocEntry(&entry, gfxCtx);
    y++;

    thga = &gfxCtx->polyXlu;
    SpeedMeter_InitAllocEntry(&entry, thga->size, thga->size - THGA_GetSize(thga), GPACK_RGBA5551(0x00, 0x00, 0xFF, 1),
                              GPACK_RGBA5551(0xFF, 0xFF, 0x00, 1), ulx, lrx, y, y);
    SpeedMeter_DrawAllocEntry(&entry, gfxCtx);
    y++;

    thga = &gfxCtx->overlay;
    SpeedMeter_InitAllocEntry(&entry, thga->size, thga->size - THGA_GetSize(thga), GPACK_RGBA5551(0x00, 0x00, 0xFF, 1),
                              GPACK_RGBA5551(0xFF, 0x00, 0x00, 1), ulx, lrx, y, y);
    SpeedMeter_DrawAllocEntry(&entry, gfxCtx);
    y++;
}
