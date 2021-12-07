#include "global.h"

void func_8006BA00(GlobalContext* globalCtx) {
    SoundSource* sources = &globalCtx->soundSources[0];
    s32 i;

    // clang-format off
    for (i = 0; i < ARRAY_COUNT(globalCtx->soundSources); i++) { sources[i].countdown = 0; }
    // clang-format on
}

void func_8006BA30(GlobalContext* globalCtx) {
    SoundSource* source = &globalCtx->soundSources[0];
    s32 i;

    for (i = 0; i < ARRAY_COUNT(globalCtx->soundSources); i++) {
        if (source->countdown != 0) {
            if (DECR(source->countdown) == 0) {
                Audio_StopSfxByPos(&source->relativePos);
            } else {
                SkinMatrix_Vec3fMtxFMultXYZ(&globalCtx->viewProjectionMtxF, &source->originPos, &source->relativePos);
            }
        }

        source++;
    }
}

void Audio_PlaySoundAtPosition(GlobalContext* globalCtx, Vec3f* pos, s32 duration, u16 sfxId) {
    s32 countdown;
    SoundSource* source;
    s32 smallestCountdown = 0xFFFF;
    SoundSource* backupSource;
    s32 i;

    source = &globalCtx->soundSources[0];
    for (i = 0; i < ARRAY_COUNT(globalCtx->soundSources); i++) {
        if (source->countdown == 0) {
            break;
        }

        countdown = source->countdown;
        if (countdown < smallestCountdown) {
            smallestCountdown = countdown;
            backupSource = source;
        }
        source++;
    }

    if (i >= ARRAY_COUNT(globalCtx->soundSources)) {
        source = backupSource;
        Audio_StopSfxByPos(&source->relativePos);
    }

    source->originPos = *pos;
    source->countdown = duration;

    SkinMatrix_Vec3fMtxFMultXYZ(&globalCtx->viewProjectionMtxF, &source->originPos, &source->relativePos);
    Audio_PlaySoundGeneral(sfxId, &source->relativePos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
}
