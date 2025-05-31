#ifndef CUTSCENE_SPLINE_H
#define CUTSCENE_SPLINE_H

#include "ultra64.h"
#include "z_math.h"

union CutsceneCameraPoint;

void func_800BB0A0(f32 u, Vec3f* pos, f32* roll, f32* viewAngle, f32* point0, f32* point1, f32* point2, f32* point3);
s32 func_800BB2B4(Vec3f* pos, f32* roll, f32* fov, union CutsceneCameraPoint* point, s16* keyFrame, f32* curFrame);

#endif
