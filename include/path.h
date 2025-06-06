#ifndef PATH_H
#define PATH_H

#include "ultra64.h"
#include "z_math.h"

struct PlayState;
struct Actor;

typedef struct Path {
    /* 0x00 */ u8 count; // number of points in the path
    /* 0x04 */ Vec3s* points; // Segment Address to the array of points
} Path; // size = 0x8

Path* Path_GetByIndex(struct PlayState* play, s16 index, s16 max);
f32 Path_OrientAndGetDistSq(struct Actor* actor, Path* path, s16 waypoint, s16* yaw);
void Path_CopyLastPoint(Path* path, Vec3f* dest);

#endif
