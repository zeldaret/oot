#include "z_en_karebaba.h"

#define FLAGS 0x00000005

#define THIS ((EnKarebaba*)thisx)

void EnKarebaba_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKarebaba_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKarebaba_Update(Actor* thisx, GlobalContext* globalCtx);
void EnKarebaba_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Karebaba_InitVars = {
    ACTOR_EN_KAREBABA,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_DEKUBABA,
    sizeof(EnKarebaba),
    (ActorFunc)EnKarebaba_Init,
    (ActorFunc)EnKarebaba_Destroy,
    (ActorFunc)EnKarebaba_Update,
    (ActorFunc)EnKarebaba_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_Hitbox_Disable.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_StateChange_Hidden.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_StateChange_Idle.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_StateChange_Awaken.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_StateChange_Upright.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_StateChange_Spin.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_StateChange_Dying.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_StateChange_Dead_ItemDrop.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_StateChange_Retract.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_StateChange_Inactive.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_StateChange_Regrow.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_UpdateState_Grow.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_UpdateState_Idle.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_UpdateState_Awaken.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_UpdateState_Upright.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_UpdateState_Spin.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_UpdateState_Dying.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_UpdateState_Dead_ItemDrop.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_UpdateState_Retract.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_UpdateState_Inactive.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_UpdateState_Regrow.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_Draw_CenterShadow.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Karebaba/EnKarebaba_Draw.s")
