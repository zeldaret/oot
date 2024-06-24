#ifndef SYS_MATRIX_H
#define SYS_MATRIX_H

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
