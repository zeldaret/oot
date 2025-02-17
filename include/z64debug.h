#ifndef Z64DEBUG_H
#define Z64DEBUG_H

#include "ultra64.h"

struct GraphicsContext;
struct Input;

void Regs_Init(void);
void DebugCamera_ScreenText(u8 x, u8 y, const char* text);
void DebugCamera_ScreenTextColored(u8 x, u8 y, u8 colorIndex, const char* text);
#if DEBUG_FEATURES
void Regs_UpdateEditor(struct Input* input);
#endif
void Debug_DrawText(struct GraphicsContext* gfxCtx);

#endif
