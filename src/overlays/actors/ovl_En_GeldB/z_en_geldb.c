#include "z_en_geldb.h"

#define ROOM 0x00
#define FLAGS 0x00000015

void EnGeldB_Init(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_Destroy(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_Update(EnGeldB* this, GlobalContext* globalCtx);
void EnGeldB_Draw(EnGeldB* this, GlobalContext* globalCtx);

/*
const ActorInit En_GeldB_InitVars = {
    ACTOR_EN_GELDB,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_GELDB,
    sizeof(EnGeldB),
    (ActorFunc)EnGeldB_Init,
    (ActorFunc)EnGeldB_Destroy,
    (ActorFunc)EnGeldB_Update,
    (ActorFunc)EnGeldB_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35310.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/EnGeldB_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/EnGeldB_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A3559C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35974.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35A08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35B8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35C24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35D48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A35DD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A360B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A36130.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A365DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A36690.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A367E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A36830.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A36A10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A36AE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A370BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37670.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A376E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A3792C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A379C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37D70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37DEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37EF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A37F98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A38054.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A380EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A38290.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A38348.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A38430.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A384E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A387D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A38960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A3907C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A39120.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A391D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A392D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/EnGeldB_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A39688.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A39824.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/EnGeldB_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_GeldB/func_80A39E2C.s")
