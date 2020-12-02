#include "z_boss_dodongo.h"

#define FLAGS 0x00000035

#define THIS ((BossDodongo*)thisx)

void BossDodongo_Init(Actor* thisx, GlobalContext* globalCtx);
void BossDodongo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossDodongo_Update(Actor* thisx, GlobalContext* globalCtx);
void BossDodongo_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_030021D8;
extern UNK_TYPE D_06001074;
extern UNK_TYPE D_06002D0C;
extern UNK_TYPE D_06003CF8;
extern UNK_TYPE D_060042A8;
extern UNK_TYPE D_06004E0C;
extern UNK_TYPE D_060061D4;
extern UNK_TYPE D_06008EEC;
extern UNK_TYPE D_06009D10;
extern UNK_TYPE D_06009D50;
extern UNK_TYPE D_06009DD0;
extern UNK_TYPE D_0600DF38;
extern UNK_TYPE D_0600E848;
extern UNK_TYPE D_0600F0D8;
extern UNK_TYPE D_06015890;
extern UNK_TYPE D_06015990;
extern UNK_TYPE D_06015D90;
extern UNK_TYPE D_06015F90;
extern UNK_TYPE D_06016390;
extern UNK_TYPE D_06016590;
extern UNK_TYPE D_06016790;
extern UNK_TYPE D_06016990;
extern UNK_TYPE D_06016E10;
extern UNK_TYPE D_06017210;
extern UNK_TYPE D_06017410;
extern UNK_TYPE D_0601B310;
extern UNK_TYPE D_0601CAE0;
extern UNK_TYPE D_0601D934;

/*
const ActorInit Boss_Dodongo_InitVars = {
    ACTOR_EN_DODONGO,
    ACTORTYPE_BOSS,
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
