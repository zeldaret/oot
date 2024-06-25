#ifndef MATRIX_H
#define MATRIX_H

#include "ultra64.h"
#include "z64math.h"

struct GameState;
struct GraphicsContext;

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

#endif
