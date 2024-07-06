/**
 * @file gfxalloc.c
 */
#include "gfxalloc.h"
#include "alignment.h"

/// @brief Creates a new graphics display list pointer, using the memory reserved by gfxDisp
/// @param gfxDisp is the display list yielding memory. It cannot be written to until Gfx_Close is called.
/// @returns a new graphics display list pointer
/// @note This is used to give WORK_DISP more memory to write instructions without increasing the WORK_DISP buffer size.
Gfx* Gfx_Open(Gfx* gfxDisp) {
    // reserve space for a gSPBranchList command when Gfx_Close is called
    return gfxDisp + 1;
}

/// @brief Closes the graphics display list created by Gfx_Open
/// @param gfxDisp is the display list yielding memory.
/// @param gfx is the graphics display list pointer that was created with Gfx_Open
/// @returns gfxDisp's new position
Gfx* Gfx_Close(Gfx* gfxDisp, Gfx* gfx) {
    // skips to the end of the display list being closed
    gSPBranchList(gfxDisp, gfx);
    return gfx;
}

/// @brief Allocates a fixed size block of memory for graphics data on a graphics display list
/// @param gfxP is a pointer to a graphics display list
/// @param size number of bytes to reserve
/// @returns start pointer to allocated memory
void* Gfx_Alloc(Gfx** gfxP, u32 size) {
    u8* alloc;
    Gfx* dst;

    size = ALIGN8(size);

    // reserve space for a gSPBranchList command
    alloc = (u8*)(*gfxP + 1);

    // create a gSPBranchList command that skips over the newly allocated memory
    dst = (Gfx*)(alloc + size);
    gSPBranchList(*gfxP, dst);

    *gfxP = dst;
    return alloc;
}
