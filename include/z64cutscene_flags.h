#ifndef Z64CUTSCENE_FLAGS_H
#define Z64CUTSCENE_FLAGS_H

#include "ultra64.h"

struct PlayState;

void CutsceneFlags_UnsetAll(struct PlayState* play);
void CutsceneFlags_Set(struct PlayState* play, s16 flag);
void CutsceneFlags_Unset(struct PlayState* play, s16 flag);
s32 CutsceneFlags_Get(struct PlayState* play, s16 flag);

#endif
