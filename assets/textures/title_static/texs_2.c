#include "ultra64/ultratypes.h"
#include "tex_len.h"
#include "title_static.h"

u64 gFileSelCopyWhichFileENGTex[TEX_LEN(u64, gFileSelCopyWhichFileENGTex_WIDTH, gFileSelCopyWhichFileENGTex_HEIGHT,
                                        8)] = {
#include "assets/textures/title_static/gFileSelCopyWhichFileENGTex.ia8.inc.c"
};

u64 gFileSelCopyToWhichFileENGTex[TEX_LEN(u64, gFileSelCopyToWhichFileENGTex_WIDTH,
                                          gFileSelCopyToWhichFileENGTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelCopyToWhichFileENGTex.ia8.inc.c"
};

u64 gFileSelAreYouSureENGTex[TEX_LEN(u64, gFileSelAreYouSureENGTex_WIDTH, gFileSelAreYouSureENGTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelAreYouSureENGTex.ia8.inc.c"
};

u64 gFileSelFileCopiedENGTex[TEX_LEN(u64, gFileSelFileCopiedENGTex_WIDTH, gFileSelFileCopiedENGTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelFileCopiedENGTex.ia8.inc.c"
};

#if OOT_PAL && PLATFORM_GC
u64 gFileSelCopyWhichFileGERTex[TEX_LEN(u64, gFileSelCopyWhichFileGERTex_WIDTH, gFileSelCopyWhichFileGERTex_HEIGHT,
                                        8)] = {
#include "assets/textures/title_static/gFileSelCopyWhichFileGERTex.ia8.inc.c"
};

u64 gFileSelCopyToWhichFileGERTex[TEX_LEN(u64, gFileSelCopyToWhichFileGERTex_WIDTH,
                                          gFileSelCopyToWhichFileGERTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelCopyToWhichFileGERTex.ia8.inc.c"
};

u64 gFileSelAreYouSureGERTex[TEX_LEN(u64, gFileSelAreYouSureGERTex_WIDTH, gFileSelAreYouSureGERTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelAreYouSureGERTex.ia8.inc.c"
};

u64 gFileSelFileCopiedGERTex[TEX_LEN(u64, gFileSelFileCopiedGERTex_WIDTH, gFileSelFileCopiedGERTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelFileCopiedGERTex.ia8.inc.c"
};

u64 gFileSelCopyWhichFileFRATex[TEX_LEN(u64, gFileSelCopyWhichFileFRATex_WIDTH, gFileSelCopyWhichFileFRATex_HEIGHT,
                                        8)] = {
#include "assets/textures/title_static/gFileSelCopyWhichFileFRATex.ia8.inc.c"
};

u64 gFileSelCopyToWhichFileFRATex[TEX_LEN(u64, gFileSelCopyToWhichFileFRATex_WIDTH,
                                          gFileSelCopyToWhichFileFRATex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelCopyToWhichFileFRATex.ia8.inc.c"
};

u64 gFileSelAreYouSureFRATex[TEX_LEN(u64, gFileSelAreYouSureFRATex_WIDTH, gFileSelAreYouSureFRATex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelAreYouSureFRATex.ia8.inc.c"
};

u64 gFileSelFileCopiedFRATex[TEX_LEN(u64, gFileSelFileCopiedFRATex_WIDTH, gFileSelFileCopiedFRATex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelFileCopiedFRATex.ia8.inc.c"
};
#endif
