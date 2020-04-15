#include "z_en_ru1.h"

#define FLAGS 0x04000011

void EnRu1_Init(EnRu1* this, GlobalContext* globalCtx);
void EnRu1_Destroy(EnRu1* this, GlobalContext* globalCtx);
void EnRu1_Update(EnRu1* this, GlobalContext* globalCtx);
void EnRu1_Draw(EnRu1* this, GlobalContext* globalCtx);

/*
const ActorInit En_Ru1_InitVars = {
    ACTOR_EN_RU1,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_RU1,
    sizeof(EnRu1),
    (ActorFunc)EnRu1_Init,
    (ActorFunc)EnRu1_Destroy,
    (ActorFunc)EnRu1_Update,
    (ActorFunc)EnRu1_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEAC10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEAC54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEACDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEAD20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEAD98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEADD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEADE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEADF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/EnRu1_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEAE1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEAEA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEAEB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEAECC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEAF38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEAF58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEAFA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEAFE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB020.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB088.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB0EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB104.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB124.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB174.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB1B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB1D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB220.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB264.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB320.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB364.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB3A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB3CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB3DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB438.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB458.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB480.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB4A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB50C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB59C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB680.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB6E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB738.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB7D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB7E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB87C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB89C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB914.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB934.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB954.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEB974.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEBA0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEBA2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEBAFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEBB3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEBB78.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEBBF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEBC30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEBC84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEBCB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEBD1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEBD94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEBE3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEBEC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEBF60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEBFD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC070.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC0B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC100.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC130.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC17C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC1D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC244.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC2C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC320.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC40C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC4CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC4F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC5FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC650.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC6B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC6E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC780.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC81C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC8B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC93C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEC9C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AECA18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AECA44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AECA94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AECAB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AECAD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AECB18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AECB60.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AECBB8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AECC1C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AECC84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AECCB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AECDA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AECE04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AECE20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AECEB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AECF6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED084.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED0B0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED0C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED0D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED110.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED154.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED19C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED218.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED304.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED324.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED344.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED374.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED3A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED3E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED414.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED44C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED4FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED520.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED57C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED5B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED5DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED600.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED624.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED6DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED6F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED738.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED83C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AED8DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEDAE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEDB30.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEDEF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEDFF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEE02C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEE050.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEE264.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEE2F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEE394.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEE488.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEE568.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEE628.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEE6D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEE7C4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEEAC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEEB24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEEBB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEEBD4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEEC5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEECF0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEED58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEEDCC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEEE34.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEEE9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEEF08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEEF5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEEF68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEEFEC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF080.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF0BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF170.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF188.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF1F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF29C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF2AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF2D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF354.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF3A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF40C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF4A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF4E0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF51C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF540.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF5B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF624.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF728.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF79C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF820.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF890.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF930.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF99C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEF9D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEFA2C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEFAAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEFB04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEFB68.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEFBC8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEFC24.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEFC54.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEFCE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEFD38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEFDC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEFE38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEFE84.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEFE9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEFECC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEFF40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AEFF94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AF0050.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/EnRu1_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/EnRu1_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AF0278.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AF02E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AF0368.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AF03F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AF0400.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/func_80AF05D4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ru1/EnRu1_Draw.s")
