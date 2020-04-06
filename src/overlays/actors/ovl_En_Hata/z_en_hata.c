#include "z_en_hata.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void EnHata_Init(EnHata* this, GlobalContext* globalCtx);
void EnHata_Destroy(EnHata* this, GlobalContext* globalCtx);
void EnHata_Update(EnHata* this, GlobalContext* globalCtx);
void EnHata_Draw(EnHata* this, GlobalContext* globalCtx);

/*
const ActorInit En_Hata_InitVars = {
    ACTOR_EN_HATA,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_HATA,
    sizeof(EnHata),
    (ActorFunc)EnHata_Init,
    (ActorFunc)EnHata_Destroy,
    (ActorFunc)EnHata_Update,
    (ActorFunc)EnHata_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hata/EnHata_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hata/EnHata_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hata/EnHata_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hata/func_80A510E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hata/func_80A51164.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Hata/EnHata_Draw.s")
