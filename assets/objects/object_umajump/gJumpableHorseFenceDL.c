#include "object_umajump.h"
#include "gfx.h"
#include "tex_len.h"

#define gJumpableHorseFenceBrickTex_WIDTH 16
#define gJumpableHorseFenceBrickTex_HEIGHT 64
u64 gJumpableHorseFenceBrickTex[TEX_LEN(u64, gJumpableHorseFenceBrickTex_WIDTH, gJumpableHorseFenceBrickTex_HEIGHT,
                                        16)] = {
#include "assets/objects/object_umajump/gJumpableHorseFenceBrickTex.rgba16.inc.c"
};

#define gJumpableHorseFenceMetalBarTex_WIDTH 16
#define gJumpableHorseFenceMetalBarTex_HEIGHT 64
u64 gJumpableHorseFenceMetalBarTex[TEX_LEN(u64, gJumpableHorseFenceMetalBarTex_WIDTH,
                                           gJumpableHorseFenceMetalBarTex_HEIGHT, 16)] = {
#include "assets/objects/object_umajump/gJumpableHorseFenceMetalBarTex.rgba16.inc.c"
};

Vtx gJumpableHorseFenceVtx[] = {
#include "assets/objects/object_umajump/gJumpableHorseFenceVtx.inc.c"
};

Gfx gJumpableHorseFenceDL[37] = {
#include "assets/objects/object_umajump/gJumpableHorseFenceDL.inc.c"
};
