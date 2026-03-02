#ifndef GFXALLOC_H
#define GFXALLOC_H

#include "ultra64.h"
#include "gfx.h"

Gfx* Gfx_Open(Gfx* gfxBufRef);
Gfx* Gfx_Close(Gfx* gfxBufRef, Gfx* gfxChildEnd);
void* Gfx_Alloc(Gfx** gfxP, u32 size);

/**
 * Start writing a new display list to be executed as part of `gfxParent` but stored in `POLY_OPA_DISP`.
 * `POLY_OPA_DISP` must not be written to until `GFX_ALLOC_CLOSE` is called.
 *
 * @param gfxChild is the variable that will hold the new display list pointer.
 * @param gfxBufRef is an intermediate Gfx* variable that should not be touched.
 * @param gfxParent is the top level display list that is being given more memory.
 */
#define GFX_ALLOC_OPEN(gfxChild, gfxBufRef, gfxParent)      \
    {                                                       \
        (gfxChild) = Gfx_Open((gfxBufRef) = POLY_OPA_DISP); \
        gSPDisplayList((gfxParent)++, (gfxChild));          \
        (void)0

/**
 * Closes the display list created by `GFX_ALLOC_OPEN`.
 *
 * @param gfxChild is the display list pointer that was created with `GFX_ALLOC_OPEN`
 * @param gfxBufRef is the same Gfx* variable that was passed into `GFX_ALLOC_OPEN`
 */
#define GFX_ALLOC_CLOSE(gfxChild, gfxBufRef) \
    gSPEndDisplayList((gfxChild)++);         \
    Gfx_Close((gfxBufRef), (gfxChild));      \
    POLY_OPA_DISP = (gfxChild);              \
    }                                        \
    (void)0

#endif
