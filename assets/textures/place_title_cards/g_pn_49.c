#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gThievesHideoutTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gThievesHideoutTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gThievesHideoutTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gThievesHideoutTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gThievesHideoutTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gThievesHideoutTitleCardGERTex.ia8.inc.c"
};

u64 gThievesHideoutTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gThievesHideoutTitleCardFRATex.ia8.inc.c"
};
#endif
