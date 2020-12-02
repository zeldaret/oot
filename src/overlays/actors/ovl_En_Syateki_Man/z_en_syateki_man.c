#include "z_en_syateki_man.h"

#define FLAGS 0x08000019

#define THIS ((EnSyatekiMan*)thisx)

void EnSyatekiMan_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiMan_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiMan_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSyatekiMan_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_06000338;
extern UNK_TYPE D_06007E28;
extern UNK_TYPE D_06009B38;

/*
const ActorInit En_Syateki_Man_InitVars = {
    ACTOR_EN_SYATEKI_MAN,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_OSSAN,
    sizeof(EnSyatekiMan),
    (ActorFunc)EnSyatekiMan_Init,
    (ActorFunc)EnSyatekiMan_Destroy,
    (ActorFunc)EnSyatekiMan_Update,
    (ActorFunc)EnSyatekiMan_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/EnSyatekiMan_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/EnSyatekiMan_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10948.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B109DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10A2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10A84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10C2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10CD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10D94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B10EB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B11164.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B111D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B112A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B11310.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B11344.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/EnSyatekiMan_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B1148C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/EnSyatekiMan_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Syateki_Man/func_80B1156C.s")
