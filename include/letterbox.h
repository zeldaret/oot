#ifndef LETTERBOX_H
#define LETTERBOX_H

#include "ultra64.h"

void Letterbox_SetSizeTarget(s32 target);
u32 Letterbox_GetSizeTarget(void);
void Letterbox_SetSize(s32 size);
u32 Letterbox_GetSize(void);
void Letterbox_Init(void);
void Letterbox_Destroy(void);
void Letterbox_Update(s32 updateRate);

#endif
