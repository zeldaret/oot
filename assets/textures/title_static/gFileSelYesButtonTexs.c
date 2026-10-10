#include "ultra64/ultratypes.h"
#include "tex_len.h"
#include "title_static.h"

u64 gFileSelYesButtonENGTex[TEX_LEN(u64, gFileSelYesButtonENGTex_WIDTH, gFileSelYesButtonENGTex_HEIGHT, 16)] = {
#include "assets/textures/title_static/gFileSelYesButtonENGTex.ia16.inc.c"
};

#if OOT_PAL && PLATFORM_GC
u64 gFileSelYesButtonGERTex[TEX_LEN(u64, gFileSelYesButtonGERTex_WIDTH, gFileSelYesButtonGERTex_HEIGHT, 16)] = {
#include "assets/textures/title_static/gFileSelYesButtonGERTex.ia16.inc.c"
};

u64 gFileSelYesButtonFRATex[TEX_LEN(u64, gFileSelYesButtonFRATex_WIDTH, gFileSelYesButtonFRATex_HEIGHT, 16)] = {
#include "assets/textures/title_static/gFileSelYesButtonFRATex.ia16.inc.c"
};
#endif
