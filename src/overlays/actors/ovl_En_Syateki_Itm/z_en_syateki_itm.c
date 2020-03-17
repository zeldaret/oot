#include "z_en_syateki_itm.h"

#define ROOM  0x00
#define FLAGS 0x00000010

void EnSyatekiItm_Init(EnSyatekiItm* this, GlobalContext* globalCtx);
void EnSyatekiItm_Destroy(EnSyatekiItm* this, GlobalContext* globalCtx);
void EnSyatekiItm_Update(EnSyatekiItm* this, GlobalContext* globalCtx);

/*
const ActorInit En_Syateki_Itm_InitVars =
{
    ACTOR_EN_SYATEKI_ITM,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnSyatekiItm),
    (ActorFunc)EnSyatekiItm_Init,
    (ActorFunc)EnSyatekiItm_Destroy,
    (ActorFunc)EnSyatekiItm_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/EnSyatekiItm_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/EnSyatekiItm_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/func_80B0F838.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/func_80B0F944.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/func_80B0FABC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/func_80B0FF44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/func_80B0FFE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/func_80B10070.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Itm/EnSyatekiItm_Update.s")
