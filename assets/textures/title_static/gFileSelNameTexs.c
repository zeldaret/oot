#include "ultra64/ultratypes.h"
#include "tex_len.h"
#include "title_static.h"

u64 gFileSelNameENGTex[TEX_LEN(u64, gFileSelNameENGTex_WIDTH, gFileSelNameENGTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelNameENGTex.ia8.inc.c"
};

#if OOT_PAL && PLATFORM_GC
u64 gFileSelNameGERTex[TEX_LEN(u64, gFileSelNameGERTex_WIDTH, gFileSelNameGERTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelNameGERTex.ia8.inc.c"
};

u64 gFileSelNameFRATex[TEX_LEN(u64, gFileSelNameFRATex_WIDTH, gFileSelNameFRATex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelNameFRATex.ia8.inc.c"
};
#endif
