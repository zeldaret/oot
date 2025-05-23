#ifndef Z64HORSE_H
#define Z64HORSE_H

#include "ultra64.h"
#include "z64math.h"

struct PlayState;
struct Actor;
struct Player;

void Horse_ResetHorseData(struct PlayState* play);
void Horse_FixLakeHyliaPosition(struct PlayState* play);
void Horse_InitPlayerHorse(struct PlayState* play, struct Player* player);
void Horse_RotateToPoint(struct Actor* actor, Vec3f* pos, s16 turnAmount);

#endif
