#include "z_en_fu.h"

#define ROOM 0x00
#define FLAGS 0x02000019

void EnFu_Init(EnFu* this, GlobalContext* globalCtx);
void EnFu_Destroy(EnFu* this, GlobalContext* globalCtx);
void EnFu_Update(EnFu* this, GlobalContext* globalCtx);
void EnFu_Draw(EnFu* this, GlobalContext* globalCtx);

/*
const ActorInit En_Fu_InitVars = {
    ACTOR_EN_FU,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_FU,
    sizeof(EnFu),
    (ActorFunc)EnFu_Init,
    (ActorFunc)EnFu_Destroy,
    (ActorFunc)EnFu_Update,
    (ActorFunc)EnFu_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fu/EnFu_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fu/EnFu_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fu/func_80A1D94C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fu/func_80A1DA04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fu/func_80A1DA9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fu/func_80A1DB60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fu/func_80A1DBA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fu/func_80A1DBD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fu/func_80A1DD44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fu/func_80A1DDA8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fu/func_80A1DE24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fu/EnFu_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fu/func_80A1E110.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fu/func_80A1E26C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Fu/EnFu_Draw.s")
