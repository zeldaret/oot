#include "ultra64/ultratypes.h"
#include "tex_len.h"
#include "title_static.h"

#if OOT_PAL && PLATFORM_GC
u64 gFileSelSaveXTex[TEX_LEN(u64, gFileSelSaveXTex_WIDTH, gFileSelSaveXTex_HEIGHT, 4)] = {
#include "assets/textures/title_static/gFileSelSaveXTex.i4.inc.c"
};
#endif

#if OOT_NTSC
u64 gFileSelSaveXENGTex[TEX_LEN(u64, gFileSelSaveXENGTex_WIDTH, gFileSelSaveXENGTex_HEIGHT, 4)] = {
#include "assets/textures/title_static/gFileSelSaveXENGTex.i4.inc.c"
};
#endif
