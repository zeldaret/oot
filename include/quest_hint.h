#ifndef QUEST_HINT_H
#define QUEST_HINT_H

#include "ultra64.h"

struct PlayState;

u16 QuestHint_GetSariaTextId(struct PlayState* play);
u16 QuestHint_GetNaviTextId(struct PlayState* play);

#endif
