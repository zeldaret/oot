#ifndef SPEEDMETER_H
#define SPEEDMETER_H

#include "ultra64/ultratypes.h"

struct GraphicsContext;
struct GameState;

typedef struct {
    /* 0x00 */ char unk_00[0x18];
    /* 0x18 */ s32 unk_18;
    /* 0x1C */ s32 y;
} SpeedMeter; // size = 0x20

typedef struct {
    /* 0x00 */ s32 maxval;
    /* 0x04 */ s32 val;
    /* 0x08 */ u16 backColor;
    /* 0x0A */ u16 foreColor;
    /* 0x0C */ s32 ulx;
    /* 0x10 */ s32 lrx;
    /* 0x14 */ s32 uly;
    /* 0x18 */ s32 lry;
} SpeedMeterAllocEntry; // size = 0x1C

void SpeedMeter_InitImpl(SpeedMeter* this, u32 arg1, u32 y);
void SpeedMeter_Init(SpeedMeter* this);
void SpeedMeter_Destroy(SpeedMeter* this);
void SpeedMeter_DrawTimeEntries(SpeedMeter* this, struct GraphicsContext* gfxCtx);
void SpeedMeter_InitAllocEntry(SpeedMeterAllocEntry* this, u32 maxval, u32 val, u16 backColor, u16 foreColor, u32 ulx,
                               u32 lrx, u32 uly, u32 lry);
void SpeedMeter_DrawAllocEntry(SpeedMeterAllocEntry* this, struct GraphicsContext* gfxCtx);
void SpeedMeter_DrawAllocEntries(SpeedMeter* meter, struct GraphicsContext* gfxCtx, struct GameState* state);

#endif
