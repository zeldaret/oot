#ifndef FACE_CHANGE_H
#define FACE_CHANGE_H

typedef struct {
    /* 0x00 */ s16 face;
    /* 0x02 */ s16 timer;
} FaceChange; // size = 0x4

s16 FaceChange_UpdateBlinking(FaceChange* faceChange, s16 blinkIntervalBase, s16 blinkIntervalRandRange, s16 blinkDuration);
s16 FaceChange_UpdateRandomSet(FaceChange* faceChange, s16 changeTimerBase, s16 changeTimerRandRange, s16 faceSetRange);

#endif
