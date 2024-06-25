#ifndef SYS_MATRIX_H
#define SYS_MATRIX_H

#include "z64math.h"


struct GraphicsContext;
struct GameState;

typedef enum {
    /* 0 */ MTXMODE_NEW,  // generates a new matrix
    /* 1 */ MTXMODE_APPLY // applies transformation to the current matrix
} MatrixMode;


extern Mtx gIdentityMtx;
extern MtxF gIdentityMatrixF;


/* Stack operations */
void Matrix_Init(GameState* gameState);
void Matrix_Push(void);
void Matrix_Pop(void);
void Matrix_Get(MtxF* dest);
void Matrix_Put(MtxF* src);
MtxF* Matrix_GetCurrent(void);
void Matrix_Translate(f32 x, f32 y, f32 z, u8 mode);
void Matrix_Scale(f32 x, f32 y, f32 z, u8 mode);

/* Basic operations */
void Matrix_Mult(MtxF* mf, u8 mode);

void Matrix_RotateX(f32 x, u8 mode);
void Matrix_RotateY(f32 y, u8 mode);
void Matrix_RotateZ(f32 z, u8 mode);

/* Compound operations */

void Matrix_RotateZYX(s16 x, s16 y, s16 z, u8 mode);
void Matrix_TranslateRotateZYX(Vec3f* translation, Vec3s* rotation);
void Matrix_SetTranslateRotateYXZ(f32 translateX, f32 translateY, f32 translateZ, Vec3s* rot);

/* Conversion and allocation operations */

#if OOT_DEBUG
MtxF* Matrix_CheckFloats(MtxF* mf, const char* file, int line);
#endif
Mtx* Matrix_MtxFToMtx(MtxF* src, Mtx* dest);
#if OOT_DEBUG
Mtx* Matrix_ToMtx(Mtx* dest, const char* file, int line);
Mtx* Matrix_NewMtx(GraphicsContext* gfxCtx, const char* file, int line);
#else
Mtx* Matrix_ToMtx(Mtx* dest);
Mtx* Matrix_NewMtx(GraphicsContext* gfxCtx);
#endif

/* Vector operations */

void Matrix_MultVec3f(Vec3f* src, Vec3f* dest);

/* Copy and another conversion */

void Matrix_MtxFCopy(MtxF* dest, MtxF* src);
void Matrix_MtxToMtxF(Mtx* src, MtxF* dest);

/* Miscellaneous */

void Matrix_MultVec3fExt(Vec3f* src, Vec3f* dest, MtxF* mf);
void Matrix_Transpose(MtxF* mf);
void Matrix_ReplaceRotation(MtxF* mf);
void Matrix_MtxFToYXZRot(MtxF* src, Vec3s* dest, s32 nonUniformScale);
void Matrix_MtxFToZYXRot(MtxF* src, Vec3s* dest, s32 nonUniformScale);
void Matrix_RotateAxis(f32 angle, Vec3f* axis, u8 mode);
void Matrix_SetTranslateScaleMtx2(Mtx* mtx, f32 scaleX, f32 scaleY, f32 scaleZ, f32 translateX, f32 translateY,
                                  f32 translateZ);


#if OOT_DEBUG

#define MATRIX_CHECK_FLOATS(mtx, file, line) Matrix_CheckFloats(mtx, file, line)
#define MATRIX_TO_MTX(gfxCtx, file, line) Matrix_ToMtx(gfxCtx, file, line)
#define MATRIX_NEW(gfxCtx, file, line) Matrix_NewMtx(gfxCtx, file, line)

#else

#define MATRIX_CHECK_FLOATS(mtx, file, line) (mtx)
#define MATRIX_TO_MTX(gfxCtx, file, line) Matrix_ToMtx(gfxCtx)
#define MATRIX_NEW(gfxCtx, file, line) Matrix_NewMtx(gfxCtx)

#endif  /* OOT_DEBUG */

#endif
