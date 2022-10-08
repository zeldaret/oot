#ifndef MYCUSTOMACTOR_H
#define MYCUSTOMACTOR_H

#include "ultra64.h"
#include "global.h"

struct CustomActor;

typedef void (*CustomActorActionFunc)(struct CustomActor*, PlayState*);

typedef struct CustomActor {
    Actor actor;
    SkelAnime skelAnime;
    Vec3s jointTable[18];
    Vec3s morphTable[18];

    SkelAnime skelAnime2;
    Vec3s jointTable2[12];
    Vec3s morphTable2[12];

    SkelAnime* curSkelAnime;

    s16 endWaypoint;
    s16 currentWaypoint;
    s16 nextWaypoint;
    s16 pathDirection;
    f32 distToPoint;
    f32 SpeedToPoint;
    f32 FrameCount;

    Vec3f nextPosF;

    s32 timer;

    CustomActorActionFunc actionFunc;

} CustomActor;

#endif
