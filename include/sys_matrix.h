#ifndef MATRIX_STACK_H
#define MATRIX_STACK_H

#include "ultra64.h"
#include "z64math.h"

struct GameState;
struct GraphicsContext;

// Matrix stack operations

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
void Matrix_MultVec3f(Vec3f* src, Vec3f* dest);
void Matrix_ReplaceRotation(MtxF* mf);
void Matrix_RotateAxis(f32 angle, Vec3f* axis, u8 mode);

#if OOT_DEBUG

Mtx* Matrix_ToMtx(Mtx* dest, const char* file, int line);
#define MATRIX_TO_MTX(gfxCtx, file, line) Matrix_ToMtx(gfxCtx, file, line)

Mtx* Matrix_NewMtx(struct GraphicsContext* gfxCtx, const char* file, int line);
#define MATRIX_NEW(gfxCtx, file, line) Matrix_NewMtx(gfxCtx, file, line)

#else

Mtx* Matrix_ToMtx(Mtx* dest);
#define MATRIX_TO_MTX(gfxCtx, file, line) Matrix_ToMtx(gfxCtx)

Mtx* Matrix_NewMtx(struct GraphicsContext* gfxCtx);
#define MATRIX_NEW(gfxCtx, file, line) Matrix_NewMtx(gfxCtx)

#endif

// Operations not involving the matrix stack

extern Mtx gMtxClear;
extern MtxF gMtxFClear;

Mtx* Matrix_MtxFToMtx(MtxF* src, Mtx* dest);
void Matrix_MtxFCopy(MtxF* dest, MtxF* src);
void Matrix_MtxToMtxF(Mtx* src, MtxF* dest);
void Matrix_MultVec3fExt(Vec3f* src, Vec3f* dest, MtxF* mf);
void Matrix_Transpose(MtxF* mf);
void Matrix_MtxFToYXZRotS(MtxF* mf, Vec3s* rotDest, s32 flag);
void Matrix_MtxFToZYXRotS(MtxF* mf, Vec3s* rotDest, s32 flag);
void Matrix_SetTranslateScaleMtx2(Mtx* mtx, f32 scaleX, f32 scaleY, f32 scaleZ, f32 translateX, f32 translateY,
                                  f32 translateZ);

#if OOT_DEBUG

MtxF* Matrix_CheckFloats(MtxF* mf, const char* file, int line);
#define MATRIX_CHECK_FLOATS(mtx, file, line) Matrix_CheckFloats(mtx, file, line)

#else

#define MATRIX_CHECK_FLOATS(mtx, file, line) (mtx)

#endif

#endif
