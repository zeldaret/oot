#include "global.h"

void CutsceneFlags_UnsetAll(PlayState* play) {
    u8 i;

    for (i = 0; i < ARRAY_COUNT(play->envFlags); i++) {
        play->envFlags[i] = 0;
    }
}

void CutsceneFlags_Set(PlayState* play, s16 flag) {
    s16 index = flag / 16;
    s16 bit = flag % 16;
    s16 mask = 1 << bit;

    play->envFlags[index] |= mask;
}

void CutsceneFlags_Unset(PlayState* play, s16 flag) {
    s16 index = flag / 16;
    s16 bit = flag % 16;
    s16 mask = (1 << bit) ^ 0xFFFF;

    play->envFlags[index] &= mask;
}

s32 CutsceneFlags_Get(PlayState* play, s16 flag) {
    s16 index = flag / 16;
    s16 bit = flag % 16;
    s16 mask = 1 << bit;

    return play->envFlags[index] & mask;
}
