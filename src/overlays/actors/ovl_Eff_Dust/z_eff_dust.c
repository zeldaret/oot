#include "z_eff_dust.h"

#define FLAGS 0x00000030

#define THIS ((EffDust*)thisx)

void EffDust_Init(Actor* thisx, GlobalContext* globalCtx);
void EffDust_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EffDust_Update(Actor* thisx, GlobalContext* globalCtx);
void EffDust_Draw(Actor* thisx, GlobalContext* globalCtx);

extern UNK_TYPE D_04037880;

/*
const ActorInit Eff_Dust_InitVars = {
    ACTOR_EFF_DUST,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EffDust),
    (ActorFunc)EffDust_Init,
    (ActorFunc)EffDust_Destroy,
    (ActorFunc)EffDust_Update,
    (ActorFunc)EffDust_Draw,
};
*/

extern Gfx D_8099EB60[];

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099D8D0.s")

void func_8099D8D0(EffDust* this, void (*callback)()) {
    this->unk_0560 = callback;
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099D8D8.s")

void func_8099D8D8(EffDust* this, void (*callback)()) {
    this->unk_0564 = callback;
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099D8E0.s")

s32 func_8099D8E0(EffDust* this);

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/EffDust_Init.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/EffDust_Destroy.s")

void EffDust_Destroy(Actor *thisx, GlobalContext *globalCtx) {

}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099DB28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099DD74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099DFC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/EffDust_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099E4F4.s")

void func_8099E4F4(EffDust* this, GlobalContext* globalCtx);

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099E784.s")

void func_8099E784(EffDust* this, GlobalContext* globalCtx);

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/EffDust_Draw.s")
