#include "ultra64/ultratypes.h"
#include "tex_len.h"
#include "title_static.h"

u64 gFileSelEraseButtonENGTex[TEX_LEN(u64, gFileSelEraseButtonENGTex_WIDTH, gFileSelEraseButtonENGTex_HEIGHT, 16)] = {
#include "assets/textures/title_static/gFileSelEraseButtonENGTex.ia16.inc.c"
};

#if OOT_PAL && PLATFORM_GC
u64 gFileSelEraseButtonGERTex[TEX_LEN(u64, gFileSelEraseButtonGERTex_WIDTH, gFileSelEraseButtonGERTex_HEIGHT, 16)] = {
#include "assets/textures/title_static/gFileSelEraseButtonGERTex.ia16.inc.c"
};

u64 gFileSelEraseButtonFRATex[TEX_LEN(u64, gFileSelEraseButtonFRATex_WIDTH, gFileSelEraseButtonFRATex_HEIGHT, 16)] = {
#include "assets/textures/title_static/gFileSelEraseButtonFRATex.ia16.inc.c"
};
#endif
