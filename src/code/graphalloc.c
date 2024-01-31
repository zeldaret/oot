#include "global.h"

Gfx* Graph_GfxPlusOne(Gfx* gfx) {
    return gfx + 1;
}

Gfx* Graph_BranchDlist(Gfx* gfx, Gfx* dst) {
    gSPBranchList(gfx, dst);
    return dst;
}

void* Graph_DlistAlloc(Gfx** gfxP, u32 size) {
    u8* ptr;
    Gfx* dst;

    size = ALIGN8(size);

    ptr = (u8*)(*gfxP + 1);

    dst = (Gfx*)(ptr + size);
    gSPBranchList(*gfxP, dst);

    *gfxP = dst;
    return ptr;
}
