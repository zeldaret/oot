#ifndef SYS_MATH3D_H
#define SYS_MATH3D_H

#include "ultra64/ultratypes.h"

struct PlayState;
struct Vec3f;
struct InfiniteLine;
struct TriNorm;
struct Sphere16;
struct Cylinder16;
struct Linef;
struct Plane;

s32 Math3D_PlaneVsLineSegClosestPoint(f32 planeAA, f32 planeAB, f32 planeAC, f32 planeADist, f32 planeBA, f32 planeBB,
                                      f32 planeBC, f32 planeBDist, struct Vec3f* linePointA, struct Vec3f* linePointB,
                                      struct Vec3f* closestPoint);
void Math3D_LineClosestToPoint(struct InfiniteLine* line, struct Vec3f* pos, struct Vec3f* closestPoint);
s32 Math3D_PlaneVsPlaneVsLineClosestPoint(f32 planeAA, f32 planeAB, f32 planeAC, f32 planeADist, f32 planeBA,
                                          f32 planeBB, f32 planeBC, f32 planeBDist, struct Vec3f* point, struct Vec3f* closestPoint);
void Math3D_LineSplitRatio(struct Vec3f* v0, struct Vec3f* v1, f32 ratio, struct Vec3f* ret);
f32 Math3D_Cos(struct Vec3f* a, struct Vec3f* b);
s32 Math3D_CosOut(struct Vec3f* a, struct Vec3f* b, f32* dst);
void Math3D_Vec3fReflect(struct Vec3f* vec, struct Vec3f* normal, struct Vec3f* reflVec);
s32 Math3D_PointInSquare2D(f32 upperLeftX, f32 lowerRightX, f32 upperLeftY, f32 lowerRightY, f32 x, f32 y);
f32 Math3D_Dist1DSq(f32 a, f32 b);
f32 Math3D_Dist2DSq(f32 x0, f32 y0, f32 x1, f32 y1);
f32 Math3D_Vec3fMagnitudeSq(struct Vec3f* vec);
f32 Math3D_Vec3fMagnitude(struct Vec3f* vec);
f32 Math3D_Vec3fDistSq(struct Vec3f* a, struct Vec3f* b);
void Math3D_Vec3f_Cross(struct Vec3f* a, struct Vec3f* b, struct Vec3f* ret);
void Math3D_SurfaceNorm(struct Vec3f* va, struct Vec3f* vb, struct Vec3f* vc, struct Vec3f* normal);
f32 Math3D_Vec3f_DistXYZ(struct Vec3f* a, struct Vec3f* b);
s32 Math3D_PointRelativeToCubeFaces(struct Vec3f* point, struct Vec3f* min, struct Vec3f* max);
s32 Math3D_PointRelativeToCubeEdges(struct Vec3f* point, struct Vec3f* min, struct Vec3f* max);
s32 Math3D_PointRelativeToCubeVertices(struct Vec3f* point, struct Vec3f* min, struct Vec3f* max);
s32 Math3D_LineVsCube(struct Vec3f* min, struct Vec3f* max, struct Vec3f* a, struct Vec3f* b);
void Math3D_RotateXZPlane(struct Vec3f* pointOnPlane, s16 angle, f32* a, f32* c, f32* d);
void Math3D_DefPlane(struct Vec3f* va, struct Vec3f* vb, struct Vec3f* vc, f32* nx, f32* ny, f32* nz, f32* originDist);
f32 Math3D_UDistPlaneToPos(f32 nx, f32 ny, f32 nz, f32 originDist, struct Vec3f* p);
f32 Math3D_DistPlaneToPos(f32 nx, f32 ny, f32 nz, f32 originDist, struct Vec3f* p);
s32 Math3D_TriChkPointParaYSlopedY(struct Vec3f* v0, struct Vec3f* v1, struct Vec3f* v2, f32 z, f32 x);
s32 Math3D_TriChkPointParaYIntersectDist(struct Vec3f* v0, struct Vec3f* v1, struct Vec3f* v2, f32 nx, f32 ny, f32 nz, f32 originDist, f32 z,
                                         f32 x, f32* yIntersect, f32 chkDist);
s32 Math3D_TriChkPointParaYIntersectInsideTri(struct Vec3f* v0, struct Vec3f* v1, struct Vec3f* v2, f32 nx, f32 ny, f32 nz, f32 originDist,
                                              f32 z, f32 x, f32* yIntersect, f32 chkDist);
s32 Math3D_TriChkLineSegParaYIntersect(struct Vec3f* v0, struct Vec3f* v1, struct Vec3f* v2, f32 nx, f32 ny, f32 nz, f32 originDist, f32 z,
                                       f32 x, f32* yIntersect, f32 y0, f32 y1);
s32 Math3D_TriChkPointParaYDist(struct Vec3f* v0, struct Vec3f* v1, struct Vec3f* v2, struct Plane* plane, f32 z, f32 x, f32 chkDist);
s32 Math3D_TriChkPointParaXIntersect(struct Vec3f* v0, struct Vec3f* v1, struct Vec3f* v2, f32 nx, f32 ny, f32 nz, f32 originDist, f32 y,
                                     f32 z, f32* xIntersect);
s32 Math3D_TriChkLineSegParaXIntersect(struct Vec3f* v0, struct Vec3f* v1, struct Vec3f* v2, f32 nx, f32 ny, f32 nz, f32 originDist, f32 y,
                                       f32 z, f32* xIntersect, f32 x0, f32 x1);
s32 Math3D_TriChkPointParaXDist(struct Vec3f* v0, struct Vec3f* v1, struct Vec3f* v2, struct Plane* plane, f32 y, f32 z, f32 chkDist);
s32 Math3D_TriChkPointParaZIntersect(struct Vec3f* v0, struct Vec3f* v1, struct Vec3f* v2, f32 nx, f32 ny, f32 nz, f32 originDist, f32 x,
                                     f32 y, f32* zIntersect);
s32 Math3D_TriChkLineSegParaZIntersect(struct Vec3f* v0, struct Vec3f* v1, struct Vec3f* v2, f32 nx, f32 ny, f32 nz, f32 originDist, f32 x,
                                       f32 y, f32* zIntersect, f32 z0, f32 z1);
s32 Math3D_TriChkLineSegParaZDist(struct Vec3f* v0, struct Vec3f* v1, struct Vec3f* v2, struct Plane* plane, f32 x, f32 y, f32 chkDist);
s32 Math3D_LineSegVsPlane(f32 nx, f32 ny, f32 nz, f32 originDist, struct Vec3f* linePointA, struct Vec3f* linePointB,
                          struct Vec3f* intersect, s32 fromFront);
void Math3D_TriNorm(struct TriNorm* tri, struct Vec3f* va, struct Vec3f* vb, struct Vec3f* vc);
s32 Math3D_PointDistSqToLine2D(f32 x0, f32 y0, f32 x1, f32 y1, f32 x2, f32 y2, f32* lineLenSq);
s32 Math3D_LineVsSph(struct Sphere16* sphere, struct Linef* line);
s32 Math3D_TriVsSphIntersect(struct Sphere16* sphere, struct TriNorm* tri, struct Vec3f* intersectPoint);
s32 Math3D_CylVsLineSeg(struct Cylinder16* cyl, struct Vec3f* linePointA, struct Vec3f* linePointB, struct Vec3f* intersectA, struct Vec3f* intersectB);
s32 Math3D_CylVsTri(struct Cylinder16* cyl, struct TriNorm* tri);
s32 Math3D_CylTriVsIntersect(struct Cylinder16* cyl, struct TriNorm* tri, struct Vec3f* intersect);
s32 Math3D_SphVsSph(struct Sphere16* sphereA, struct Sphere16* sphereB);
s32 Math3D_SphVsSphOverlap(struct Sphere16* sphereA, struct Sphere16* sphereB, f32* overlapSize);
s32 Math3D_SphVsSphOverlapCenterDist(struct Sphere16* sphereA, struct Sphere16* sphereB, f32* overlapSize, f32* centerDist);
s32 Math3D_SphVsCylOverlap(struct Sphere16* sph, struct Cylinder16* cyl, f32* overlapSize);
s32 Math3D_SphVsCylOverlapCenterDist(struct Sphere16* sph, struct Cylinder16* cyl, f32* overlapSize, f32* centerDist);
s32 Math3D_CylVsCylOverlap(struct Cylinder16* ca, struct Cylinder16* cb, f32* overlapSize);
s32 Math3D_CylVsCylOverlapCenterDist(struct Cylinder16* ca, struct Cylinder16* cb, f32* overlapSize, f32* centerDist);
s32 Math3D_TriVsTriIntersect(struct TriNorm* ta, struct TriNorm* tb, struct Vec3f* intersect);
s32 Math3D_XZInSphere(struct Sphere16* sphere, f32 x, f32 z);
s32 Math3D_XYInSphere(struct Sphere16* sphere, f32 x, f32 y);
s32 Math3D_YZInSphere(struct Sphere16* sphere, f32 y, f32 z);

void Math3D_DrawSphere(struct PlayState* play, struct Sphere16* sph);
void Math3D_DrawCylinder(struct PlayState* play, struct Cylinder16* cyl);

#endif
