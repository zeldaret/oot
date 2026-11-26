#include "ultra64/ultratypes.h"
#include "tex_len.h"
#include "title_static.h"

u64 gFileSelQuitButtonENGTex[TEX_LEN(u64, gFileSelQuitButtonENGTex_WIDTH, gFileSelQuitButtonENGTex_HEIGHT, 16)] = {
#include "assets/textures/title_static/gFileSelQuitButtonENGTex.ia16.inc.c"
};

#if OOT_PAL && PLATFORM_GC
u64 gFileSelQuitButtonGERTex[TEX_LEN(u64, gFileSelQuitButtonGERTex_WIDTH, gFileSelQuitButtonGERTex_HEIGHT, 16)] = {
#include "assets/textures/title_static/gFileSelQuitButtonGERTex.ia16.inc.c"
};

u64 gFileSelQuitButtonFRATex[TEX_LEN(u64, gFileSelQuitButtonFRATex_WIDTH, gFileSelQuitButtonFRATex_HEIGHT, 16)] = {
#include "assets/textures/title_static/gFileSelQuitButtonFRATex.ia16.inc.c"
};
#endif
