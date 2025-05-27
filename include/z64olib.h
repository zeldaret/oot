#ifndef Z64OLIB_H
#define Z64OLIB_H

#include "z64math.h"

f32 OLib_Vec3fDist(Vec3f* a, Vec3f* b);
f32 OLib_Vec3fDistXZ(Vec3f* a, Vec3f* b);
f32 OLib_ClampMinDist(f32 val, f32 min);
f32 OLib_ClampMaxDist(f32 val, f32 max);
Vec3f OLib_Vec3fDistNormalize(Vec3f* a, Vec3f* b);
Vec3f OLib_VecGeoToVec3f(VecGeo* geo);
VecSph OLib_Vec3fToVecSph(Vec3f* vec);
VecGeo OLib_Vec3fToVecGeo(Vec3f* vec);
VecGeo OLib_Vec3fDiffToVecGeo(Vec3f* a, Vec3f* b);
Vec3f OLib_Vec3fDiffRad(Vec3f* a, Vec3f* b);

#endif
