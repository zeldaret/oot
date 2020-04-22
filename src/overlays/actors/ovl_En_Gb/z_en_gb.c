#include "z_en_gb.h"

#define FLAGS 0x00000009

void EnGb_Init(EnGb* this, GlobalContext* globalCtx);
void EnGb_Destroy(EnGb* this, GlobalContext* globalCtx);
void EnGb_Update(EnGb* this, GlobalContext* globalCtx);
void EnGb_Draw(EnGb* this, GlobalContext* globalCtx);

/*
const ActorInit En_Gb_InitVars = {
    ACTOR_EN_GB,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_PS,
    sizeof(EnGb),
    (ActorFunc)EnGb_Init,
    (ActorFunc)EnGb_Destroy,
    (ActorFunc)EnGb_Update,
    (ActorFunc)EnGb_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2F180.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/EnGb_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/EnGb_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2F608.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2F760.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2F7C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2F83C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2F94C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2F9C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2FA50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2FB40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2FBB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2FC0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2FC70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/EnGb_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/EnGb_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A2FFFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Gb/func_80A30350.s")
