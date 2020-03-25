#include "z_boss_dodongo.h"

#define ROOM 0x00
#define FLAGS 0x00000035

void BossDodongo_Init(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_Destroy(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_Update(BossDodongo* this, GlobalContext* globalCtx);
void BossDodongo_Draw(BossDodongo* this, GlobalContext* globalCtx);

/*
const ActorInit Boss_Dodongo_InitVars = {
    ACTOR_EN_DODONGO,
    ACTORTYPE_BOSS,
    ROOM,
    FLAGS,
    OBJECT_KINGDODONGO,
    sizeof(BossDodongo),
    (ActorFunc)BossDodongo_Init,
    (ActorFunc)BossDodongo_Destroy,
    (ActorFunc)BossDodongo_Update,
    (ActorFunc)BossDodongo_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C1190.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C11D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C1200.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C1230.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C1278.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C12C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C1554.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C17C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C18B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/BossDodongo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/BossDodongo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C1C80.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C1D00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C287C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C290C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C29B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C2A40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C2AB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C2B38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C2BC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C2C78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C2ECC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C2FAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C3094.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C30F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C3224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C32F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C3704.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/BossDodongo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C4940.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C4B90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/BossDodongo_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C4F6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C50A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C51F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C524C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C52E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C5354.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C54C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C5578.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C6CB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Dodongo/func_808C6DE8.s")
