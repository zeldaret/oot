#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gQuestionMarkTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gQuestionMarkTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gQuestionMarkTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gQuestionMarkTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gQuestionMarkTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gQuestionMarkTitleCardGERTex.ia8.inc.c"
};

u64 gQuestionMarkTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gQuestionMarkTitleCardFRATex.ia8.inc.c"
};
#endif
