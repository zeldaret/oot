#include "gfxalloc.h"
#include "alignment.h"

/**
 * Creates a new temporary graphics display list pointer, using the memory reserved by gfxDisp
 *
 * @param gfxDisp is the display list yielding memory. It cannot be written to until Gfx_Close is called.
 * @return a new graphics display list pointer.
 *
 * @note This is used to take memory allocated to a larger display buffer and use it for a smaller display buffer.
 * For example, space in POLY_OPA_DISP can be reserved for WORK_DISP and OVERLAY_DISP task data.
 */
Gfx* Gfx_Open(Gfx* gfxDisp) {
    // reserve space for a gSPBranchList command when Gfx_Close is called
    return gfxDisp + 1;
}

/**
 * Closes the graphics display list created by Gfx_Open.
 *
 * @param gfxDisp is the display list yielding memory.
 * @param gfx is the graphics display list pointer that was created with Gfx_Open
 * @return gfxDisp's new position.
 *
 * @note gfxDisp must be updated after the call with the return value of this function to complete the operation.
 */
Gfx* Gfx_Close(Gfx* gfxDisp, Gfx* gfxAllocDisp) {
    gSPBranchList(gfxDisp, gfxAllocDisp);
    return gfxAllocDisp;
}

/**
 * Allocates a fixed size block of memory for graphics data on a graphics display list
 *
 * @param gfxP is a pointer to a graphics display list pointer
 * @param size is the number of bytes to reserve
 * @return the start pointer to the allocated memory
 */
void* Gfx_Alloc(Gfx** gfxP, u32 size) {
    u8* ptr;
    Gfx* dst;

    size = ALIGN8(size);
    ptr = (u8*)(*gfxP + 1);
    dst = (Gfx*)(ptr + size);

    gSPBranchList(*gfxP, dst);

    *gfxP = dst;
    return ptr;
}
