#include "z_en_attack_niw.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void EnAttackNiw_Init(EnAttackNiw* this, GlobalContext* globalCtx);
void EnAttackNiw_Destroy(EnAttackNiw* this, GlobalContext* globalCtx);
void EnAttackNiw_Update(EnAttackNiw* this, GlobalContext* globalCtx);
void EnAttackNiw_Draw(EnAttackNiw* this, GlobalContext* globalCtx);

/*
const ActorInit En_Attack_Niw_InitVars =
{
    ACTOR_EN_ATTACK_NIW,
    ACTORTYPE_ENEMY,
    ROOM,
    FLAGS,
    OBJECT_NIW,
    sizeof(EnAttackNiw),
    (ActorFunc)EnAttackNiw_Init,
    (ActorFunc)EnAttackNiw_Destroy,
    (ActorFunc)EnAttackNiw_Update,
    (ActorFunc)EnAttackNiw_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Attack_Niw/EnAttackNiw_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Attack_Niw/EnAttackNiw_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Attack_Niw/func_809B5268.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Attack_Niw/func_809B55EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Attack_Niw/func_809B5670.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Attack_Niw/func_809B59B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Attack_Niw/func_809B5C18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Attack_Niw/EnAttackNiw_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Attack_Niw/func_809B5F98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Attack_Niw/EnAttackNiw_Draw.s")
