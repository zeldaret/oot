#ifndef FACE_CHANGE_H
#define FACE_CHANGE_H

typedef enum {
    ACTOR_FACEDATA_FACE,
    ACTOR_FACEDATA_CHANGE_TIMER,
    ACTOR_FACEDATA_MAX,
} FaceDataParams;

typedef struct {
    s16 face;
    s16 timer;
} FaceChange;

s16 FaceChange_UpdateBlinking(s16* faceData, s16 changeTimerBase, s16 changeTimerRandRange, s16 arg3);
s16 FaceChange_UpdateRandomSet(s16* faceData, s16 changeTimerBase, s16 changeTimerRandRange, s16 arg3);

#endif
