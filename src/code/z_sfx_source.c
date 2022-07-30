#include "global.h"

void SfxSource_InitAll(PlayState* play) {
    SfxSource* sources = &play->sfxSources[0];
    s32 i;

    // clang-format off
    for (i = 0; i < ARRAY_COUNT(play->sfxSources); i++) { sources[i].countdown = 0; }
    // clang-format on
}

void SfxSource_UpdateAll(PlayState* play) {
    SfxSource* source = &play->sfxSources[0];
    s32 i;

    for (i = 0; i < ARRAY_COUNT(play->sfxSources); i++) {
        if (source->countdown != 0) {
            if (DECR(source->countdown) == 0) {
                Audio_StopSfxByPos(&source->projectedPos);
            } else {
                SkinMatrix_Vec3fMtxFMultXYZ(&play->viewProjectionMtxF, &source->worldPos, &source->projectedPos);
            }
        }

        source++;
    }
}

void SfxSource_PlaySfxAtFixedWorldPos(PlayState* play, Vec3f* worldPos, s32 duration, u16 sfxId) {
    s32 countdown;
    SfxSource* source;
    s32 smallestCountdown = 0xFFFF;
    SfxSource* backupSource;
    s32 i;

    source = &play->sfxSources[0];
    for (i = 0; i < ARRAY_COUNT(play->sfxSources); i++) {
        if (source->countdown == 0) {
            break;
        }

        // Store the sfx source with the smallest remaining countdown
        countdown = source->countdown;
        if (countdown < smallestCountdown) {
            smallestCountdown = countdown;
            backupSource = source;
        }
        source++;
    }

    // If no sfx source is available, replace the sfx source with the smallest remaining countdown
    if (i >= ARRAY_COUNT(play->sfxSources)) {
        source = backupSource;
        Audio_StopSfxByPos(&source->projectedPos);
    }

    source->worldPos = *worldPos;
    source->countdown = duration;

    SkinMatrix_Vec3fMtxFMultXYZ(&play->viewProjectionMtxF, &source->worldPos, &source->projectedPos);
    Audio_PlaySfxGeneral(sfxId, &source->projectedPos, 4, &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale,
                         &gSfxDefaultReverb);
}
