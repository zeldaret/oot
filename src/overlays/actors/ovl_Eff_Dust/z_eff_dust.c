#include "z_eff_dust.h"

#define FLAGS 0x00000030

#define THIS ((EffDust*)thisx)

void EffDust_Init(Actor* thisx, GlobalContext* globalCtx);
void EffDust_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EffDust_Update(Actor* thisx, GlobalContext* globalCtx);
void EffDust_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 func_8099D8E0(EffDust* this);

f32 func_8099DB28(EffDust* this, GlobalContext* globalCtx);
f32 func_8099DD74(EffDust* this, GlobalContext* globalCtx);
f32 func_8099DFC0(EffDust* this, GlobalContext* globalCtx);
f32 func_8099E4F4(EffDust* this, GlobalContext* globalCtx);
f32 func_8099E784(EffDust* this, GlobalContext* globalCtx);

extern UNK_TYPE D_04037880;

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

static Gfx *D_8099EB60[] = {
    0xDF000000, 0x00000000, 0x00000000, 0x00000000
};


void EffDust_setUpdateFunc(EffDust* this, EffDustActionFunc callback_updateFunc) {
    this->updateFunc = callback_updateFunc;
}

void EffDust_setDrawFunc(EffDust* this, EffDustActionFunc callback_drawFunc) {
    this->drawFunc = callback_drawFunc;
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099D8E0.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/EffDust_Init.s")

void EffDust_Init(Actor *thisx, GlobalContext *globalCtx) {
    EffDust *this = THIS;
    u32 sp20;

    sp20 = this->actor.params;
    func_8099D8E0(this);

    switch(sp20){
    case 0:
        EffDust_setUpdateFunc(this, func_8099DB28);
        EffDust_setDrawFunc(this, func_8099E4F4);
        this->unk_0554 = 0.8f;
        this->unk_0558 = 0.8f;
        this->unk_0550 = 1.0f;
        this->unk_055C = 0.1f;
        break;

    case 1:
        EffDust_setUpdateFunc(this, func_8099DD74);
        EffDust_setDrawFunc(this, func_8099E4F4);
        this->unk_0550 = 0.8f;
        this->unk_0558 = 0.8f;
        this->unk_0554 = 1.0f;
        this->unk_055C = 0.5f;
        break;

    case 2:
        EffDust_setUpdateFunc(this, func_8099DFC0);
        EffDust_setDrawFunc(this, func_8099E784);
        this->unk_0550 = 0.5f;
        this->unk_055C = 15.0f;
        break;

    case 3:
        EffDust_setUpdateFunc(this, func_8099DFC0);
        EffDust_setDrawFunc(this, func_8099E784);
        this->unk_0550 = 0.5f;
        this->unk_055C = 10.0f;
        break;

    case 4:
        EffDust_setUpdateFunc(this, func_8099DFC0);
        EffDust_setDrawFunc(this, func_8099E784);
        this->actor.room = -1;
        this->unk_0550 = 0.5f;
        this->unk_055C = 20.0f;
        break;

    default:
        SystemArena_FreeDebug(this, "../z_eff_dust.c", 0xCA);
        break;

    }

    this->unk_054D = 0xA;
}


void EffDust_Destroy(Actor *thisx, GlobalContext *globalCtx) {
}


#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099DB28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099DD74.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099DFC0.s")

void EffDust_Update(Actor *thisx, GlobalContext *globalCtx) {
    EffDust *this = THIS;
    this->updateFunc(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099E4F4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/func_8099E784.s")

void EffDust_Draw(Actor *thisx, GlobalContext *globalCtx) {
    EffDust *this = THIS;
    this->drawFunc(this, globalCtx);
}
