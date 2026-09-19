#include "ultra64/ultratypes.h"
#include "tex_len.h"
#include "title_static.h"

u64 gFileSelOptionsButtonENGTex[TEX_LEN(u64, gFileSelOptionsButtonENGTex_WIDTH, gFileSelOptionsButtonENGTex_HEIGHT,
                                        16)] = {
#include "assets/textures/title_static/gFileSelOptionsButtonENGTex.ia16.inc.c"
};

#if OOT_PAL
u64 gFileSelOptionsButtonGERTex[TEX_LEN(u64, gFileSelOptionsButtonGERTex_WIDTH, gFileSelOptionsButtonGERTex_HEIGHT,
                                        16)] = {
#include "assets/textures/title_static/gFileSelOptionsButtonGERTex.ia16.inc.c"
};
#endif
