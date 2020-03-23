#include "z_bg_ganon_otyuka.h"

#define ROOM 0x00
#define FLAGS 0x00000030

void BgGanonOtyuka_Init(BgGanonOtyuka* this, GlobalContext* globalCtx);
void BgGanonOtyuka_Destroy(BgGanonOtyuka* this, GlobalContext* globalCtx);
void BgGanonOtyuka_Update(BgGanonOtyuka* this, GlobalContext* globalCtx);
void BgGanonOtyuka_Draw(BgGanonOtyuka* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Ganon_Otyuka_InitVars =
{
    ACTOR_BG_GANON_OTYUKA,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_GANON,
    sizeof(BgGanonOtyuka),
    (ActorFunc)BgGanonOtyuka_Init,
    (ActorFunc)BgGanonOtyuka_Destroy,
    (ActorFunc)BgGanonOtyuka_Update,
    (ActorFunc)BgGanonOtyuka_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/BgGanonOtyuka_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/BgGanonOtyuka_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/func_80875A0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/func_80875C88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/func_808760DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/BgGanonOtyuka_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ganon_Otyuka/BgGanonOtyuka_Draw.s")
