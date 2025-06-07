#include "ultra64.h"
#include "tex_len.h"
#include "versions.h"
#include "actor.h"

#if OOT_NTSC
u64 gShootingGalleryTitleCardJPNTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gShootingGalleryTitleCardJPNTex.ia8.inc.c"
};
#endif

u64 gShootingGalleryTitleCardENGTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gShootingGalleryTitleCardENGTex.ia8.inc.c"
};

#if OOT_PAL
u64 gShootingGalleryTitleCardGERTex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gShootingGalleryTitleCardGERTex.ia8.inc.c"
};

u64 gShootingGalleryTitleCardFRATex[TEX_LEN(u64, PLACE_NAME_TEX_WIDTH, PLACE_NAME_TEX_HEIGHT, 8)] = {
#include "assets/textures/place_title_cards/gShootingGalleryTitleCardFRATex.ia8.inc.c"
};
#endif
