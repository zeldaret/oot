#ifndef MATRIX_H
#define MATRIX_H

#include "ultra64.h"
#include "z64math.h"

struct GameState;
struct GraphicsContext;

extern Mtx gMtxClear;
extern MtxF gMtxFClear;

typedef enum {
    /* 0 */ MTXMODE_NEW,  // generates a new matrix
    /* 1 */ MTXMODE_APPLY // applies transformation to the current matrix
} MatrixMode;

void Matrix_Init(struct GameState* gameState);
void Matrix_Push(void);
void Matrix_Pop(void);
void Matrix_Get(MtxF* dest);
void Matrix_Put(MtxF* src);
void Matrix_Mult(MtxF* mf, u8 mode);
void Matrix_Translate(f32 x, f32 y, f32 z, u8 mode);
void Matrix_Scale(f32 x, f32 y, f32 z, u8 mode);
void Matrix_RotateX(f32 x, u8 mode);
void Matrix_RotateY(f32 y, u8 mode);
void Matrix_RotateZ(f32 z, u8 mode);
void Matrix_RotateZYX(s16 x, s16 y, s16 z, u8 mode);
void Matrix_TranslateRotateZYX(Vec3f* translation, Vec3s* rotation);
void Matrix_SetTranslateRotateYXZ(f32 translateX, f32 translateY, f32 translateZ, Vec3s* rot);
Mtx* Matrix_MtxFToMtx(MtxF* src, Mtx* dest);
void Matrix_MultVec3f(Vec3f* src, Vec3f* dest);
void Matrix_MtxFCopy(MtxF* dest, MtxF* src);
void Matrix_MtxToMtxF(Mtx* src, MtxF* dest);
void Matrix_MultVec3fExt(Vec3f* src, Vec3f* dest, MtxF* mf);
void Matrix_Transpose(MtxF* mf);
void Matrix_ReplaceRotation(MtxF* mf);
void Matrix_MtxFToYXZRotS(MtxF* mf, Vec3s* rotDest, s32 flag);
void Matrix_MtxFToZYXRotS(MtxF* mf, Vec3s* rotDest, s32 flag);
void Matrix_RotateAxis(f32 angle, Vec3f* axis, u8 mode);
void Matrix_SetTranslateScaleMtx2(Mtx* mtx, f32 scaleX, f32 scaleY, f32 scaleZ, f32 translateX, f32 translateY,
                                  f32 translateZ);

#if OOT_DEBUG

Mtx* Matrix_ToMtx(Mtx* dest, const char* file, int line);
#define MATRIX_TO_MTX(gfxCtx, file, line) Matrix_ToMtx(gfxCtx, file, line)

Mtx* Matrix_NewMtx(struct GraphicsContext* gfxCtx, const char* file, int line);
#define MATRIX_NEW(gfxCtx, file, line) Matrix_NewMtx(gfxCtx, file, line)

MtxF* Matrix_CheckFloats(MtxF* mf, const char* file, int line);
#define MATRIX_CHECK_FLOATS(mtx, file, line) Matrix_CheckFloats(mtx, file, line)

#else

Mtx* Matrix_ToMtx(Mtx* dest);
#define MATRIX_TO_MTX(gfxCtx, file, line) Matrix_ToMtx(gfxCtx)

Mtx* Matrix_NewMtx(struct GraphicsContext* gfxCtx);
#define MATRIX_NEW(gfxCtx, file, line) Matrix_NewMtx(gfxCtx)

#define MATRIX_CHECK_FLOATS(mtx, file, line) (mtx)

#endif

void MtxConv_F2L(Mtx* m1, MtxF* m2);
void MtxConv_L2F(MtxF* m1, Mtx* m2);

void SkinMatrix_Vec3fMtxFMultXYZW(MtxF* mf, Vec3f* src, Vec3f* xyzDest, f32* wDest);
void SkinMatrix_Vec3fMtxFMultXYZ(MtxF* mf, Vec3f* src, Vec3f* dest);
void SkinMatrix_MtxFMtxFMult(MtxF* mfA, MtxF* mfB, MtxF* dest);
void SkinMatrix_GetClear(MtxF** mfp);
void SkinMatrix_MtxFCopy(MtxF* src, MtxF* dest);
s32 SkinMatrix_Invert(MtxF* src, MtxF* dest);
void SkinMatrix_SetScale(MtxF* mf, f32 x, f32 y, f32 z);
void SkinMatrix_SetRotateZYX(MtxF* mf, s16 x, s16 y, s16 z);
void SkinMatrix_SetTranslate(MtxF* mf, f32 x, f32 y, f32 z);
void SkinMatrix_SetTranslateRotateYXZScale(MtxF* dest, f32 scaleX, f32 scaleY, f32 scaleZ, s16 rotX, s16 rotY, s16 rotZ,
                                           f32 translateX, f32 translateY, f32 translateZ);
void SkinMatrix_SetTranslateRotateZYX(MtxF* dest, s16 rotX, s16 rotY, s16 rotZ, f32 translateX, f32 translateY,
                                      f32 translateZ);
Mtx* SkinMatrix_MtxFToNewMtx(struct GraphicsContext* gfxCtx, MtxF* src);
void SkinMatrix_SetRotateAxis(MtxF* mf, s16 angle, f32 axisX, f32 axisY, f32 axisZ);

#endif
