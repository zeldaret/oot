#ifndef FACE_CHANGE_H
#define FACE_CHANGE_H

typedef struct {
    s16 face;
    s16 timer;
} FaceChange;

s16 FaceChange_UpdateBlinking(FaceChange* faceChange, s16 blinkIntervalBase, s16 blinkIntervalRandRange, s16 blinkDuration);
s16 FaceChange_UpdateRandomlyChosenSet(FaceChange* faceChange, s16 changeTimerBase, s16 changeTimerRandRange, s16 faceSetRange);

#endif
