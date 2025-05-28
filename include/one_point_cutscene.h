#ifndef ONE_POINT_CUTSCENE_H
#define ONE_POINT_CUTSCENE_H

#include "ultra64.h"

struct Actor;
struct PlayState;

s16 OnePointCutscene_Init(struct PlayState* play, s16 csId, s16 timer, struct Actor* actor, s16 parentCamId);
s16 OnePointCutscene_EndCutscene(struct PlayState* play, s16 subCamId);
s32 OnePointCutscene_Attention(struct PlayState* play, struct Actor* actor);
s32 OnePointCutscene_AttentionSetSfx(struct PlayState* play, struct Actor* actor, s32 sfxId);
void OnePointCutscene_EnableAttention(void);
void OnePointCutscene_DisableAttention(void);
s32 OnePointCutscene_CheckForCategory(struct PlayState* play, s32 actorCategory);
void OnePointCutscene_Noop(struct PlayState* play, s32 arg1);

#endif
