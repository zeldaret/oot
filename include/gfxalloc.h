#ifndef GFXALLOC_H
#define GFXALLOC_H

#include "ultra64.h"
#include "gfx.h"

Gfx* Gfx_Open(Gfx* gfxDisp);
Gfx* Gfx_Close(Gfx* gfxDisp, Gfx* gfxAllocDisp);
void* Gfx_Alloc(Gfx** gfxP, u32 size);

/**
 * Creates a new temporary graphics display list pointer, using the memory reserved by POLY_OPA_DISP.
 * POLY_OPA_DISP cannot be written to until GFX_ALLOC_CLOSE is called.
 *
 * @param gfxAllocDisp is the new temporary graphics display list pointer.
 * @param tempGfx is an intermediate Gfx* variable that should not be touched.
 * @param disp is the top level display list that is being given more memory.
 */
#define GFX_ALLOC_OPEN(gfxAllocDisp, tempGfx, disp)             \
    {                                                           \
        (gfxAllocDisp) = Gfx_Open((tempGfx) = POLY_OPA_DISP);   \
        gSPDisplayList((disp)++, (gfxAllocDisp));               \
        (void)0

/**
 * Closes the graphics display list created by GFX_ALLOC_OPEN.
 *
 * @param gfxAllocDisp is the graphics display list pointer that was created with GFX_ALLOC_OPEN
 * @param tempGfx is the same Gfx* variable that was passed into GFX_ALLOC_OPEN
 */
#define GFX_ALLOC_CLOSE(gfxAllocDisp, tempGfx)  \
        gSPEndDisplayList((gfxAllocDisp)++);    \
        Gfx_Close((tempGfx), (gfxAllocDisp));   \
        POLY_OPA_DISP = (gfxAllocDisp);         \
    }(void)0

#endif
