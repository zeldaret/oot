#include "ultra64/ultratypes.h"
#include "tex_len.h"
#include "title_static.h"

u64 gFileSelControlsENGTex[TEX_LEN(u64, gFileSelControlsENGTex_WIDTH, gFileSelControlsENGTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelControlsENGTex.ia8.inc.c"
};

#if OOT_PAL && PLATFORM_GC
u64 gFileSelControlsGERTex[TEX_LEN(u64, gFileSelControlsGERTex_WIDTH, gFileSelControlsGERTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelControlsGERTex.ia8.inc.c"
};

u64 gFileSelControlsFRATex[TEX_LEN(u64, gFileSelControlsFRATex_WIDTH, gFileSelControlsFRATex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelControlsFRATex.ia8.inc.c"
};
#endif
