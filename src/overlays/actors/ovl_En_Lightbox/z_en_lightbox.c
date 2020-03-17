#include "z_en_lightbox.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void EnLightbox_Init(EnLightbox* this, GlobalContext* globalCtx);
void EnLightbox_Destroy(EnLightbox* this, GlobalContext* globalCtx);
void EnLightbox_Update(EnLightbox* this, GlobalContext* globalCtx);
void EnLightbox_Draw(EnLightbox* this, GlobalContext* globalCtx);

/*
const ActorInit En_Lightbox_InitVars =
{
    ACTOR_EN_LIGHTBOX,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_LIGHTBOX,
    sizeof(EnLightbox),
    (ActorFunc)EnLightbox_Init,
    (ActorFunc)EnLightbox_Destroy,
    (ActorFunc)EnLightbox_Update,
    (ActorFunc)EnLightbox_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Lightbox/EnLightbox_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Lightbox/EnLightbox_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Lightbox/EnLightbox_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Lightbox/EnLightbox_Draw.s")
