#include "global.h"

/**
 * Creates a new temporary graphics display list pointer, using the memory reserved by gfxDisp
 *
 * @param gfxDisp is the display list yielding memory. It cannot be written to until Gfx_Close is called.
 * @returns a new graphics display list pointer.
 *
 * @note This is used to give WORK_DISP more memory to write instructions without increasing the WORK_DISP buffer size.
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
 * @returns gfxDisp's new position
 */
Gfx* Gfx_Close(Gfx* gfxDisp, Gfx* gfx) {
    gSPBranchList(gfxDisp, gfx);
    return gfx;
}

/**
 * Allocates a fixed size block of memory for graphics data on a graphics display list
 *
 * @param gfxP is a pointer to a graphics display list pointer
 * @param size is the number of bytes to reserve
 * @returns start pointer to the allocated memory
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
