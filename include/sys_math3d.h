#ifndef _SYS_MATH3D_H_
#define _SYS_MATH3D_H_

#include <z64vec.h>

typedef struct {
    s16 x, y, z, w;
} Vec4s;

typedef struct {
    f32 x, y, z, w;
} Vec4f;

typedef struct {
    Vec3f vtx[3];
    Vec3f unitNormal;
    f32 normalDist;
} TriNorm;

void func_800CAF5C(Vec3f *arg0, Vec3f *arg1, f32 arg2, Vec3f *arg3);
void func_800CAFA0(Vec3f* arg0, Vec3f* arg1, f32 arg2, Vec3f* arg3);
f32 Math3D_DotProduct(Vec3f* vec1, Vec3f* vec2);
s32 Math3D_CalcDotProduct(Vec3f *vec1, Vec3f *vec2, f32 *dst);
void func_800CB0C0(Vec3f *vec1, Vec3f *vec2, Vec3f *ret);
s32 func_800CB198(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5);
f32 func_800CB55C(f32 arg0, f32 arg1);
f32 func_800CB570(f32 arg0, f32 arg1);
f32 func_800CB594(f32 arg0, f32 arg1, f32 arg2, f32 arg3);
f32 func_800CB5D8(f32 arg0, f32 arg1, f32 arg2, f32 arg3);
f32 Math3D_Vec3f_HadamardProduct(Vec3f *vec);
f32 Math3D_Vec3fMagnitude(Vec3f* vec);
f32 func_800CB650(Vec3f* arg0, Vec3f* arg1);
f32 Math3D_Vec3f_DistXYZ(Vec3f* arg0, Vec3f* arg1);
f32 func_800CB698(Vec3s *arg0, Vec3f *arg1);
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
f32 func_800CC9C8(f32 arg0, f32 arg1, f32 arg2, f32 arg3, Vec3f *arg4);
f32 func_800CCA04(Vec4f *arg0, Vec4f *arg1);
f32 func_800CCA3C(f32 x, f32 y, f32 z, f32 arg3, Vec3f* norm);
f32 func_800CCB0C(f32 x, f32 y, f32 z, f32 arg3, Vec3f* norm);
s32 func_800CCF00(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6);
s32 func_800CCF48(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4);
s32 func_800CCF98(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 normMagnitude, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *pointDist, f32 argA);
s32 func_800CD044(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9, f32 argA);
s32 func_800CD0F0(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5);
s32 func_800CD168(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9, f32 argA, f32 argB);
s32 func_800CD2D8(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, Vec3f *arg3, f32 arg4, f32 arg5, f32 arg6);
s32 func_800CD34C(Vec3f*,Vec3f*,Vec3f*,f32,f32,f32,f32,f32);
s32 func_800CD668(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6);
s32 func_800CD6B0(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9);
s32 func_800CD760(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5);
s32 func_800CD7D8(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9, f32 argA, f32 argB);
s32 func_800CD95C(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 *arg3, f32 arg4, f32 arg5, f32 arg6);
s32 func_800CD9D0(Vec3f*,Vec3f*,Vec3f*,f32,f32,f32,f32,f32);
s32 func_800CDD18(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6);
s32 func_800CDD60(s32 arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9);
s32 func_800CDE10(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5);
s32 func_800CDE88(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7, f32 arg8, f32 *arg9, f32 argA, f32 argB);
s32 func_800CE010(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, Vec3f *arg3, f32 arg4, f32 arg5, f32 arg6);
s32 func_800CE084(f32 arg0, f32 arg1, Vec3f *arg2, Vec3f *arg3, Vec3f *arg4);
s32 func_800CE15C(f32 arg0, f32 arg1, f32 arg2, f32 arg3, Vec3f* arg4, Vec3f *arg5, Vec3f *arg6, s32 arg7);
s32 func_800CE25C(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, Vec3f* arg7, Vec3f *arg8, Vec3f *arg9, s32 argA);
void func_800CE3C0(TriNorm* tri, Vec3f *va, Vec3f *vb, Vec3f *vc);
s32 func_800CE46C(Vec3s *arg0, Vec3f* arg1);
s32 func_800CE4B8(f32 param_1, f32 param_2, f32 param_3, f32 param_4, f32 param_5,f32 param_6, f32 *param_7);
void func_800CE800(Vec4s *arg0, Vec3f *arg1, Vec3f *arg2);
s32 func_800CFC4C(Vec3f* arg0, Vec3f* arg1);
s32 func_800CFC6C(Vec4s* arg0, Vec4s* arg1);
s32 func_800CFC8C(Vec4s* arg0, Vec4s* arg1, f32* arg2);
s32 func_800CFCAC(Vec4s *arg0, Vec4s *arg1, f32 *arg2, f32 *arg3);
s32 func_800CFDA4(s16 *arg0, s16 *arg1, f32 *arg2, f32 *arg3);
s32 func_800CFD84(s16* arg0, s16* arg1, f32* arg2);
s32 func_800CFDA4(s16 *arg0, s16 *arg1, f32 *arg2, f32 *arg3);
s32 func_800CFF14(Vec3s* arg0, Vec3s* arg1, f32* arg2);
s32 func_800CFF34(Vec3s *arg0, Vec3s *arg1, f32 *arg2, f32 *arg3);
s32 func_800D0480(Vec4s *arg0, f32 arg1, f32 arg2);
s32 func_800D04F0(Vec4s *arg0, f32 arg1, f32 arg2);
s32 func_800D0560(Vec4s *arg0, f32 arg1, f32 arg2);
void func_800D05D0(s32 arg0, s32 arg1);
void func_800D05DC(s32 arg0, s32 arg1);


#endif