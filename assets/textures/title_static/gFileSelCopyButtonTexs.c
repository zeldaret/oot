#include "ultra64/ultratypes.h"
#include "tex_len.h"
#include "title_static.h"

u64 gFileSelCopyButtonENGTex[TEX_LEN(u64, gFileSelCopyButtonENGTex_WIDTH, gFileSelCopyButtonENGTex_HEIGHT, 16)] = {
#include "assets/textures/title_static/gFileSelCopyButtonENGTex.ia16.inc.c"
};

#if OOT_PAL && PLATFORM_GC
u64 gFileSelCopyButtonGERTex[TEX_LEN(u64, gFileSelCopyButtonGERTex_WIDTH, gFileSelCopyButtonGERTex_HEIGHT, 16)] = {
#include "assets/textures/title_static/gFileSelCopyButtonGERTex.ia16.inc.c"
};

u64 gFileSelCopyButtonFRATex[TEX_LEN(u64, gFileSelCopyButtonFRATex_WIDTH, gFileSelCopyButtonFRATex_HEIGHT, 16)] = {
#include "assets/textures/title_static/gFileSelCopyButtonFRATex.ia16.inc.c"
};
#endif
