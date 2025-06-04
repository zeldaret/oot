#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gGERudoTrainingGroundTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGERudoTrainingGroundTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gGERudoTrainingGroundTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGERudoTrainingGroundTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gGERudoTrainingGroundTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGERudoTrainingGroundTitleCardGERTex.ia8.inc.c"
};

u64 gGERudoTrainingGroundTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gGERudoTrainingGroundTitleCardFRATex.ia8.inc.c"
};
#endif
