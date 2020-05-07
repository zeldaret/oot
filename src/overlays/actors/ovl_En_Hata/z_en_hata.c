/*
 * File: z_en_hata.c
 * Overlay: ovl_En_Hata
 * Description: Wooden post with red cloth
 */

#include "z_en_hata.h"

#define FLAGS 0x00000000

#define THIS ((EnHata*)thisx)

void EnHata_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHata_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHata_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHata_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Hata_InitVars = {
    ACTOR_EN_HATA,
    ACTORTYPE_PROP,
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
