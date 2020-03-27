#include "z_en_niw_girl.h"

#define ROOM 0x00
#define FLAGS 0x00000019

void EnNiwGirl_Init(EnNiwGirl* this, GlobalContext* globalCtx);
void EnNiwGirl_Destroy(EnNiwGirl* this, GlobalContext* globalCtx);
void EnNiwGirl_Update(EnNiwGirl* this, GlobalContext* globalCtx);
void EnNiwGirl_Draw(EnNiwGirl* this, GlobalContext* globalCtx);

/*
const ActorInit En_Niw_Girl_InitVars = {
    ACTOR_EN_NIW_GIRL,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_GR,
    sizeof(EnNiwGirl),
    (ActorFunc)EnNiwGirl_Init,
    (ActorFunc)EnNiwGirl_Destroy,
    (ActorFunc)EnNiwGirl_Update,
    (ActorFunc)EnNiwGirl_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/EnNiwGirl_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/EnNiwGirl_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/func_80AB918C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/func_80AB9210.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/func_80AB93C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/func_80AB94D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/EnNiwGirl_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/func_80AB97E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/EnNiwGirl_Draw.s")
