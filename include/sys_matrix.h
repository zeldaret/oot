#ifndef SYS_MATRIX_H
#define SYS_MATRIX_H

#include "z64math.h"

struct GraphicsContext;
struct GameState;

typedef enum MatrixMode {
    /* 0 */ MTXMODE_NEW,  // generates a new matrix
    /* 1 */ MTXMODE_APPLY // applies transformation to the current matrix
} MatrixMode;

extern Mtx gMtxClear;
extern MtxF gMtxFClear;

/* Stack operations */

void Matrix_Init(struct GameState* gameState);
void Matrix_Push(void);
void Matrix_Pop(void);
void Matrix_Get(MtxF* dest);
void Matrix_Put(MtxF* src);

/* Basic operations */

void Matrix_Mult(MtxF* mf, u8 mode);
void Matrix_Translate(f32 x, f32 y, f32 z, u8 mode);
void Matrix_Scale(f32 x, f32 y, f32 z, u8 mode);
void Matrix_RotateX(f32 x, u8 mode);
void Matrix_RotateY(f32 y, u8 mode);
void Matrix_RotateZ(f32 z, u8 mode);

/* Compound operations */

void Matrix_RotateZYX(s16 x, s16 y, s16 z, u8 mode);
void Matrix_TranslateRotateZYX(Vec3f* translation, Vec3s* rotation);
void Matrix_SetTranslateRotateYXZ(f32 translateX, f32 translateY, f32 translateZ, Vec3s* rot);
void Matrix_SetTranslateScaleMtx2(Mtx* mtx, f32 scaleX, f32 scaleY, f32 scaleZ, f32 translateX, f32 translateY,
                                  f32 translateZ);

/* Conversion and allocation operations */

Mtx* Matrix_MtxFToMtx(MtxF* src, Mtx* dest);

#if DEBUG_FEATURES

Mtx* Matrix_ToMtx(Mtx* dest, const char* file, int line);
Mtx* Matrix_Finalize(struct GraphicsContext* gfxCtx, const char* file, int line);
MtxF* Matrix_CheckFloats(MtxF* mf, const char* file, int line);

#define MATRIX_TO_MTX(gfxCtx, file, line) Matrix_ToMtx(gfxCtx, file, line)
#define MATRIX_FINALIZE(gfxCtx, file, line) Matrix_Finalize(gfxCtx, file, line)
#define MATRIX_CHECK_FLOATS(mtx, file, line) Matrix_CheckFloats(mtx, file, line)

#else

Mtx* Matrix_ToMtx(Mtx* dest);
Mtx* Matrix_Finalize(struct GraphicsContext* gfxCtx);

#define MATRIX_TO_MTX(gfxCtx, file, line) Matrix_ToMtx(gfxCtx)
#define MATRIX_FINALIZE(gfxCtx, file, line) Matrix_Finalize(gfxCtx)
#define MATRIX_CHECK_FLOATS(mtx, file, line) (mtx)

#endif

/* Vector operations */

void Matrix_MultVec3f(Vec3f* src, Vec3f* dest);
void Matrix_MultVec3fExt(Vec3f* src, Vec3f* dest, MtxF* mf);

/* Copy and another conversion */

void Matrix_MtxFCopy(MtxF* dest, MtxF* src);
void Matrix_MtxToMtxF(Mtx* src, MtxF* dest);

/* Miscellaneous */

void Matrix_Transpose(MtxF* mf);
void Matrix_ReplaceRotation(MtxF* mf);
void Matrix_MtxFToYXZRotS(MtxF* mf, Vec3s* rotDest, s32 flag);
void Matrix_MtxFToZYXRotS(MtxF* mf, Vec3s* rotDest, s32 flag);
void Matrix_RotateAxis(f32 angle, Vec3f* axis, u8 mode);

#endif
