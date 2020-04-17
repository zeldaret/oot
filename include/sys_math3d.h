#ifndef _SYS_MATH3D_H_
#define _SYS_MATH3D_H_

#include <z64vec.h>

#define VEC3F(V,X,Y,Z) V.x=X;V.y=Y;V.z=Z
#define CYL16TOF(c,cf) Math_Vec3s_ToVec3f(&cf.pos, &c->pos); \
                        cf.radius = c->radius; \
                        cf.yShift = c->yShift; \
                        cf.height = c->height

typedef struct {
    Vec3s center;
    s16 radius;
} Sphere16;

typedef struct {
    Vec3f center;
    f32 radius;
} Spheref;


typedef struct {
    Vec3f normal;
    f32 originDist;
} Plane;

typedef struct {
    Vec3f vtx[3];
    Plane plane;
} TriNorm;

typedef struct {
    s16 radius;
    s16 height;
    s16 yShift;
    Vec3s pos;
} Cylinder16;

typedef struct {
    f32 radius;
    f32 height;
    f32 yShift;
    Vec3f pos;
} Cylinderf;

typedef struct {
    Vec3f a;
    Vec3f b;
} Linef;

void func_800CAF5C(Vec3f *arg0, Vec3f *arg1, f32 arg2, Vec3f *arg3);
s32 func_800CA8E8(Vec3f*,Vec3f*, Vec3f*, Vec3f*, Vec3f*, Vec3f*);
void func_800CAFA0(Vec3f* arg0, Vec3f* arg1, f32 arg2, Vec3f* arg3);
f32 Math3D_DotProduct(Vec3f* vec1, Vec3f* vec2);
s32 func_800CB010(Vec3f *vec1, Vec3f *vec2, f32 *dst);
void func_800CB0C0(Vec3f *vec1, Vec3f *vec2, Vec3f *ret);
s32 func_800CB198(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5);
f32 func_800CB55C(f32 arg0, f32 arg1);
f32 func_800CB570(f32 arg0, f32 arg1);
f32 func_800CB594(f32 arg0, f32 arg1, f32 arg2, f32 arg3);
f32 Math3D_Dist2D(f32 arg0, f32 arg1, f32 arg2, f32 arg3);
f32 func_800CB600(Vec3f *vec);
f32 Math3D_Vec3fMagnitude(Vec3f* vec);
f32 func_800CB650(Vec3f* arg0, Vec3f* arg1);
f32 Math3D_Vec3f_DistXYZ(Vec3f* arg0, Vec3f* arg1);
f32 Math3D_DistXYZ16toF(Vec3s *arg0, Vec3f *arg1);
f32 func_800CB70C(Vec3f *arg0, Vec3f *arg1, f32 arg2, f32 arg3);
f32 func_800CB744(Vec3f *arg0, Vec3f *arg1, f32 arg2, f32 arg3);
f32 func_800CB77C(Vec3f *arg0, Vec3f *arg1, f32 arg2, f32 arg3);
void Math3D_Vec3f_Cross(Vec3f *a, Vec3f *b, Vec3f *ret);
void Math3D_SurfaceNorm(Vec3f* va, Vec3f* vb, Vec3f* vc, Vec3f* normal);
s32 func_800CB88C(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2);
s32 func_800CB934(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2);
s32 func_800CBAE4(Vec3f *arg0, Vec3f *arg1, Vec3f *arg2);
s32 func_800CBC60(Vec3f *arg0, Vec3f *arg1, Vec3f* arg2, Vec3f* arg3);
s32 func_800CC6D8(Vec3s *arg0, Vec3s *arg1, Vec3s *arg2, Vec3s *arg3);
void func_800CC824(Vec3f *arg0, s16 arg1, f32 *arg2, f32 *arg3, f32 *arg4);
void func_800CC8B4(Vec3f *va, Vec3f* vb, Vec3f* vc, f32 *nx, f32 *ny, f32 *nz, f32 *nd);
f32 Math3D_Planef(f32 arg0, f32 arg1, f32 arg2, f32 arg3, Vec3f *arg4);
f32 Math3D_Plane(Plane *plane, Vec3f *v);
f32 Math3D_UDistPlaneToPos(f32 x, f32 y, f32 z, f32 arg3, Vec3f* norm);
f32 Math3D_DistPlaneToPos(f32 x, f32 y, f32 z, f32 arg3, Vec3f* norm);
s32 func_800CCF00(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6);
s32 func_800CCF48(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4);
s32 func_800CCF98(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 normMagnitude, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *pointDist, f32 argA);
s32 func_800CD044(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9, f32 argA);
s32 func_800CD0F0(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5);
s32 Math3D_TriVtxCylTouching(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9, f32 argA, f32 argB);
s32 func_800CD2D8(Vec3f* v0, Vec3f* v1, Vec3f* v2, Plane *plane, f32 z, f32 x, f32 arg6);
s32 func_800CD34C(Vec3f*,Vec3f*,Vec3f*,f32,f32,f32,f32,f32);
s32 func_800CD668(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6);
s32 func_800CD6B0(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9);
s32 func_800CD760(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5);
s32 func_800CD7D8(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9, f32 argA, f32 argB);
s32 func_800CD95C(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 *arg3, f32 arg4, f32 arg5, f32 arg6);
s32 func_800CD9D0(Vec3f*,Vec3f*,Vec3f*,f32,f32,f32,f32,f32);
s32 func_800CDD18(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6);
s32 func_800CDD60(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9);
s32 func_800CDE10(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5);
s32 func_800CDE88(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9, f32 argA, f32 argB);
s32 func_800CE010(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, Vec3f *arg3, f32 arg4, f32 arg5, f32 arg6);
s32 func_800CE084(f32 arg0, f32 arg1, Vec3f *arg2, Vec3f *arg3, Vec3f *arg4);
s32 func_800CE15C(f32 arg0, f32 arg1, f32 arg2, f32 arg3, Vec3f* arg4, Vec3f *arg5, Vec3f *arg6, s32 arg7);
s32 Math3D_TriLineIntersect(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, Vec3f* arg7, Vec3f *arg8, Vec3f *arg9, s32 argA);
void Math3D_TriNorm(TriNorm* tri, Vec3f *va, Vec3f *vb, Vec3f *vc);
s32 Math3D_PointInSphere(Sphere16 *arg0, Vec3f* arg1);
s32 func_800CE4B8(f32 param_1, f32 param_2, f32 param_3, f32 param_4, f32 param_5,f32 param_6, f32 *param_7);
void func_800CE800(Sphere16 *arg0, TriNorm *arg1, Vec3f *arg2);
s32 Math3D_CylTriTouching(Cylinder16* cyl, TriNorm* tri);
s32 Math3D_SpheresTouching(Sphere16* arg0, Sphere16* arg1);
s32 Math3D_SpheresTouchingSurface(Sphere16* arg0, Sphere16* arg1, f32* arg2);
s32 Math3D_SpheresTouchingSurfaceCenter(Sphere16 *arg0, Sphere16 *arg1, f32 *arg2, f32 *arg3);
s32 func_800CFDA4(Sphere16 *sph, Cylinder16 *cyl, f32 *surfaceDist, f32 *centerDist);
s32 func_800CFD84(Sphere16* sph, Cylinder16* cyl, f32* surfaceDist);
s32 Math3D_CylinderOutCylinder(Cylinder16* arg0, Cylinder16* arg1, f32* arg2);
s32 Math3D_CylinderOutCylinderDist(Cylinder16 *arg0, Cylinder16 *arg1, f32 *arg2, f32 *arg3);
s32 func_800D0480(Sphere16 *arg0, f32 arg1, f32 arg2);
s32 func_800D04F0(Sphere16 *arg0, f32 arg1, f32 arg2);
s32 func_800D0560(Sphere16 *arg0, f32 arg1, f32 arg2);
void func_800D05D0(s32 arg0, s32 arg1);
void func_800D05DC(s32 arg0, s32 arg1);
s32 func_800CE934(Sphere16 *arg0, TriNorm *arg1, Vec3f *arg2);
s32 func_800CB338(Vec3f *v0, Vec3f *v1, Vec3f *v2, Vec3f *norm, f32 arg4);
s32 func_800CE600(Sphere16 *arg0, Linef *arg1);
void func_800CACAC(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 *arg7, f32 *arg8);
void Math3D_LineVsPos(Linef *arg0, Vec3f *arg1, Vec3f *arg2);
s32 func_800CAD08(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, Linef *arg8);
s32 func_800CA7D0(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, Vec3f* arg8, Vec3f* arg9, Vec3f* argA);
s32 func_800CAEE8(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, Vec3f* arg8, Vec3f* arg9);
s32 func_800CB1F8(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8);
s32 func_800CEE0C(Cylinder16 *arg0, Vec3f *arg1, Vec3f *arg2, Vec3f *arg3, Vec3f *arg4);
#endif
