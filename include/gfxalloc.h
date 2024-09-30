#ifndef GFXALLOC_H
#define GFXALLOC_H

#include "ultra64.h"

Gfx* Gfx_Open(Gfx* gfx);
Gfx* Gfx_Close(Gfx* gfx, Gfx* dst);
void* Gfx_Alloc(Gfx** gfxP, u32 size);

#endif
