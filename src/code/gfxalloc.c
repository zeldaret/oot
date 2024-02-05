#include "global.h"

Gfx* Gfx_Open(Gfx* gfx) {
    return gfx + 1;
}

Gfx* Gfx_Close(Gfx* gfx, Gfx* dst) {
    gSPBranchList(gfx, dst);
    return dst;
}

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
