#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gLakesideLaboratoryTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gLakesideLaboratoryTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gLakesideLaboratoryTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gLakesideLaboratoryTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gLakesideLaboratoryTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gLakesideLaboratoryTitleCardGERTex.ia8.inc.c"
};

u64 gLakesideLaboratoryTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gLakesideLaboratoryTitleCardFRATex.ia8.inc.c"
};
#endif
