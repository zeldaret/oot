#include "ultra64/ultratypes.h"
#include "tex_len.h"
#include "title_static.h"

u64 gFileSelEraseWhichFileENGTex[TEX_LEN(u64, gFileSelEraseWhichFileENGTex_WIDTH, gFileSelEraseWhichFileENGTex_HEIGHT,
                                         8)] = {
#include "assets/textures/title_static/gFileSelEraseWhichFileENGTex.ia8.inc.c"
};

u64 gFileSelAreYouSure2ENGTex[TEX_LEN(u64, gFileSelAreYouSure2ENGTex_WIDTH, gFileSelAreYouSure2ENGTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelAreYouSure2ENGTex.ia8.inc.c"
};

u64 gFileSelFileErasedENGTex[TEX_LEN(u64, gFileSelFileErasedENGTex_WIDTH, gFileSelFileErasedENGTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelFileErasedENGTex.ia8.inc.c"
};

#if OOT_PAL && PLATFORM_GC
u64 gFileSelEraseWhichFileGERTex[TEX_LEN(u64, gFileSelEraseWhichFileGERTex_WIDTH, gFileSelEraseWhichFileGERTex_HEIGHT,
                                         8)] = {
#include "assets/textures/title_static/gFileSelEraseWhichFileGERTex.ia8.inc.c"
};

u64 gFileSelAreYouSure2GERTex[TEX_LEN(u64, gFileSelAreYouSure2GERTex_WIDTH, gFileSelAreYouSure2GERTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelAreYouSure2GERTex.ia8.inc.c"
};

u64 gFileSelFileErasedGERTex[TEX_LEN(u64, gFileSelFileErasedGERTex_WIDTH, gFileSelFileErasedGERTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelFileErasedGERTex.ia8.inc.c"
};

u64 gFileSelEraseWhichFileFRATex[TEX_LEN(u64, gFileSelEraseWhichFileFRATex_WIDTH, gFileSelEraseWhichFileFRATex_HEIGHT,
                                         8)] = {
#include "assets/textures/title_static/gFileSelEraseWhichFileFRATex.ia8.inc.c"
};

u64 gFileSelAreYouSure2FRATex[TEX_LEN(u64, gFileSelAreYouSure2FRATex_WIDTH, gFileSelAreYouSure2FRATex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelAreYouSure2FRATex.ia8.inc.c"
};

u64 gFileSelFileErasedFRATex[TEX_LEN(u64, gFileSelFileErasedFRATex_WIDTH, gFileSelFileErasedFRATex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelFileErasedFRATex.ia8.inc.c"
};
#endif