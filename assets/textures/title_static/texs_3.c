#include "ultra64/ultratypes.h"
#include "tex_len.h"
#include "title_static.h"

u64 gFileSelPleaseSelectAFileENGTex[TEX_LEN(u64, gFileSelPleaseSelectAFileENGTex_WIDTH,
                                            gFileSelPleaseSelectAFileENGTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelPleaseSelectAFileENGTex.ia8.inc.c"
};

u64 gFileSelOpenThisFileENGTex[TEX_LEN(u64, gFileSelOpenThisFileENGTex_WIDTH, gFileSelOpenThisFileENGTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelOpenThisFileENGTex.ia8.inc.c"
};

#if OOT_PAL && PLATFORM_GC
u64 gFileSelPleaseSelectAFileGERTex[TEX_LEN(u64, gFileSelPleaseSelectAFileGERTex_WIDTH,
                                            gFileSelPleaseSelectAFileGERTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelPleaseSelectAFileGERTex.ia8.inc.c"
};

u64 gFileSelOpenThisFileGERTex[TEX_LEN(u64, gFileSelOpenThisFileGERTex_WIDTH, gFileSelOpenThisFileGERTex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelOpenThisFileGERTex.ia8.inc.c"
};

u64 gFileSelPleaseSelectAFileFRATex[TEX_LEN(u64, gFileSelPleaseSelectAFileFRATex_WIDTH,
                                            gFileSelPleaseSelectAFileFRATex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelPleaseSelectAFileFRATex.ia8.inc.c"
};

u64 gFileSelOpenThisFileFRATex[TEX_LEN(u64, gFileSelOpenThisFileFRATex_WIDTH, gFileSelOpenThisFileFRATex_HEIGHT, 8)] = {
#include "assets/textures/title_static/gFileSelOpenThisFileFRATex.ia8.inc.c"
};
#endif
