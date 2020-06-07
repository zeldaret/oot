#include "z_en_owl.h"

#define FLAGS 0x00000019

#define THIS ((EnOwl*)thisx)

void EnOwl_Init(Actor* thisx, GlobalContext* globalCtx);
void EnOwl_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnOwl_Update(Actor* thisx, GlobalContext* globalCtx);
void EnOwl_Draw(Actor* thisx, GlobalContext* globalCtx);

/*
const ActorInit En_Owl_InitVars = {
    ACTOR_EN_OWL,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_OWL,
    sizeof(EnOwl),
    (ActorFunc)EnOwl_Init,
    (ActorFunc)EnOwl_Destroy,
    (ActorFunc)EnOwl_Update,
    (ActorFunc)EnOwl_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/EnOwl_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/EnOwl_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA3B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA3F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA558.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA5C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA62C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA690.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA6C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA71C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA76C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA7E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA88C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA928.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACA998.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAA54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAAC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAB2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAB88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAC6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACACD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAD34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACADF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAE5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAEB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAF74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACAFE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB03C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB0B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB148.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB1A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB22C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB274.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB2B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB344.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB3E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB440.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB4FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB5C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB680.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB6EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB748.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB904.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACB994.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACBA24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACBAB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACBC0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACBD4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACBEA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACBF50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACC00C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACC23C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACC30C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACC390.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACC460.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACC540.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACC5CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACC624.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/EnOwl_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACCE00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACCF34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/EnOwl_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACD0B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACD130.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACD1C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACD220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACD2CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Owl/func_80ACD4D4.s")
