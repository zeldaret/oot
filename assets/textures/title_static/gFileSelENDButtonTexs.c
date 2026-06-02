#include "ultra64/ultratypes.h"
#include "tex_len.h"
#include "title_static.h"

u64 gFileSelENDButtonENGTex[TEX_LEN(u64, gFileSelENDButtonENGTex_WIDTH, gFileSelENDButtonENGTex_HEIGHT, 16)] = {
#include "assets/textures/title_static/gFileSelENDButtonENGTex.ia16.inc.c"
};

#if OOT_PAL
u64 gFileSelENDButtonGERTex[TEX_LEN(u64, gFileSelENDButtonGERTex_WIDTH, gFileSelENDButtonGERTex_HEIGHT, 16)] = {
#include "assets/textures/title_static/gFileSelENDButtonGERTex.ia16.inc.c"
};

u64 gFileSelENDButtonFRATex[TEX_LEN(u64, gFileSelENDButtonFRATex_WIDTH, gFileSelENDButtonFRATex_HEIGHT, 16)] = {
#include "assets/textures/title_static/gFileSelENDButtonFRATex.ia16.inc.c"
};
#endif
