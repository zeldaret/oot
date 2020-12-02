#include "z_boss_ganon.h"

#define FLAGS 0x00000035

#define THIS ((BossGanon*)thisx)

void BossGanon_Init(Actor* thisx, GlobalContext* globalCtx);
void BossGanon_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossGanon_Update(Actor* thisx, GlobalContext* globalCtx);
void BossGanon_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_02006C18;
extern UNK_TYPE D_02007418;
extern UNK_TYPE D_06000540;
extern UNK_TYPE D_06000FE8;
extern UNK_TYPE D_06001440;
extern UNK_TYPE D_06001B0C;
extern UNK_TYPE D_06001F58;
extern UNK_TYPE D_06001FF8;
extern UNK_TYPE D_06002D2C;
extern UNK_TYPE D_06003018;
extern UNK_TYPE D_0600343C;
extern UNK_TYPE D_06003D40;
extern UNK_TYPE D_06004304;
extern UNK_TYPE D_06004884;
extern UNK_TYPE D_06004DA8;
extern UNK_TYPE D_06004F64;
extern UNK_TYPE D_060058C4;
extern UNK_TYPE D_06005FFC;
extern UNK_TYPE D_06006028;
extern UNK_TYPE D_060063CC;
extern UNK_TYPE D_060069A0;
extern UNK_TYPE D_06006AF4;
extern UNK_TYPE D_06007268;
extern UNK_TYPE D_0600738C;
extern UNK_TYPE D_06007A64;
extern UNK_TYPE D_06008128;
extern UNK_TYPE D_060089F8;
extern UNK_TYPE D_06008A88;
extern UNK_TYPE D_06008F44;
extern UNK_TYPE D_060096B0;
extern UNK_TYPE D_06009A14;
extern UNK_TYPE D_06009A20;
extern UNK_TYPE D_06009D5C;
extern UNK_TYPE D_0600A598;
extern UNK_TYPE D_0600AA24;
extern UNK_TYPE D_0600ADDC;
extern UNK_TYPE D_0600B668;
extern UNK_TYPE D_0600BE38;
extern UNK_TYPE D_0600BE90;
extern UNK_TYPE D_0600C9E8;
extern UNK_TYPE D_0600CF00;
extern UNK_TYPE D_0600EA00;
extern UNK_TYPE D_0600F19C;
extern UNK_TYPE D_06010298;
extern UNK_TYPE D_06010514;
extern UNK_TYPE D_060114E8;

/*
const ActorInit Boss_Ganon_InitVars = {
    ACTOR_BOSS_GANON,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_GANON,
    sizeof(BossGanon),
    (ActorFunc)BossGanon_Init,
    (ActorFunc)BossGanon_Destroy,
    (ActorFunc)BossGanon_Update,
    (ActorFunc)BossGanon_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D6870.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D69B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D6AAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D6BF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D6CBC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D6D60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D6E54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D6F3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D7034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D70F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D712C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/BossGanon_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/BossGanon_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D779C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D787C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D7918.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D9018.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D90F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D91F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808D933C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DACE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DAD20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DB278.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DB2E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DBAF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DBB78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DBEC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DBF30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DC0E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DC14C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DC420.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DC4DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DC66C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DC75C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DC9B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DCB7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DD0E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DD14C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DD20C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/BossGanon_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DE734.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DE988.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DED30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DED4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DEE70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DF25C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DF4F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DFBD0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808DFFC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E0254.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E06FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E0A3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/BossGanon_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E0F4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E1034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E1B54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E1EB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E229C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E2544.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E324C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E3564.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Boss_Ganon/func_808E3D84.s")
