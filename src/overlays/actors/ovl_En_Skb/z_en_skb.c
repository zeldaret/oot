#include "z_en_skb.h"

#define FLAGS 0x00000015

#define THIS ((EnSkb*)thisx)

void EnSkb_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSkb_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSkb_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSkb_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000460;
extern UNK_TYPE D_060009DC;
extern UNK_TYPE D_06000D98;
extern UNK_TYPE D_06001854;
extern UNK_TYPE D_060041F8;
extern UNK_TYPE D_060047E0;

/*
const ActorInit En_Skb_InitVars = {
    ACTOR_EN_SKB,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_SKB,
    sizeof(EnSkb),
    (ActorFunc)EnSkb_Init,
    (ActorFunc)EnSkb_Destroy,
    (ActorFunc)EnSkb_Update,
    (ActorFunc)EnSkb_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFC9A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFC9A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/EnSkb_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/EnSkb_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFCD60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFCDF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFCE5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFCF48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFCFF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD0A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD13C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD33C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD3D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD47C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD508.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD540.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD59C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD644.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD6CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD7B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD880.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFD968.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/EnSkb_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFDD30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/func_80AFDF24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Skb/EnSkb_Draw.s")
