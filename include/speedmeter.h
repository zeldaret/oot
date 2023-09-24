#ifndef SPEEDMETER_H
#define SPEEDMETER_H

#include "ultra64/ultratypes.h"

struct GraphicsContext;
struct GameState;

typedef struct {
    /* 0x00 */ char unk_00[0x18];
    /* 0x18 */ s32 x; // Unused
    /* 0x1C */ s32 y;
} SpeedMeter; // size = 0x20

void SpeedMeter_Init(SpeedMeter* this);
void SpeedMeter_Destroy(SpeedMeter* this);
void SpeedMeter_DrawTimeEntries(SpeedMeter* this, struct GraphicsContext* gfxCtx);
void SpeedMeter_DrawAllocEntries(SpeedMeter* meter, struct GraphicsContext* gfxCtx, struct GameState* state);

#endif
