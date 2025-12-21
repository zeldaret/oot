#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gKakarikoVillageTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gKakarikoVillageTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gKakarikoVillageTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gKakarikoVillageTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gKakarikoVillageTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gKakarikoVillageTitleCardGERTex.ia8.inc.c"
};

u64 gKakarikoVillageTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gKakarikoVillageTitleCardFRATex.ia8.inc.c"
};
#endif
