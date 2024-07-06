#ifndef GFXALLOC_H
#define GFXALLOC_H

#include "ultra64.h"

Gfx* Gfx_Open(Gfx* gfxDisp);
Gfx* Gfx_Close(Gfx* gfxDisp, Gfx* gfx);
void* Gfx_Alloc(Gfx** gfxP, u32 size);

#endif
