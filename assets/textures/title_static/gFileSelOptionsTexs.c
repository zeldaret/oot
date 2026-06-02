#include "ultra64/ultratypes.h"
#include "tex_len.h"
#include "title_static.h"

u64 gFileSelOptionsENGTex[TEX_LEN(u64, gFileSelOptionsENGTex_WIDTH, gFileSelOptionsENGTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelOptionsENGTex.ia8.inc.c"
};

#if OOT_PAL && PLATFORM_GC
u64 gFileSelOptionsGERTex[TEX_LEN(u64, gFileSelOptionsGERTex_WIDTH, gFileSelOptionsGERTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelOptionsGERTex.ia8.inc.c"
};
#endif
