#ifndef Z64LIFEMETER_H
#define Z64LIFEMETER_H

#include "ultra64/ultratypes.h"

struct PlayState;

void Health_InitMeter(struct PlayState* play);
void Health_UpdateMeter(struct PlayState* play);
void Health_DrawMeter(struct PlayState* play);
void Health_UpdateBeatingHeart(struct PlayState* play);
u32 Health_IsCritical(void);

#endif
