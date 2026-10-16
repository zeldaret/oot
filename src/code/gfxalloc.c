#include "gfxalloc.h"
#include "alignment.h"

Gfx* Gfx_Open(Gfx* gfx) {
    return gfx + 1;
}

Gfx* Gfx_Close(Gfx* gfx, Gfx* dst) {
    gSPBranchList(gfx, dst);
    return dst;
}

void* Gfx_Alloc(Gfx** gfx, u32 size) {
    u8* ptr;
    Gfx* dst;

    size = ALIGN8(size);

    ptr = (u8*)(*gfx + 1);

    dst = (Gfx*)(ptr + size);
    gSPBranchList(*gfx, dst);

    *gfx = dst;
    return ptr;
}
