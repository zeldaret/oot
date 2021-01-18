#include "z_eff_dust.h"

#define FLAGS 0x00000030

#define THIS ((EffDust*)thisx)

void EffDust_Init(Actor* thisx, GlobalContext* globalCtx);
void EffDust_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EffDust_Update(Actor* thisx, GlobalContext* globalCtx);
void EffDust_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8099D8E0(EffDust* this);

void EffDust_UpdateFunc_8099DB28(EffDust* this, GlobalContext* globalCtx);
void EffDust_UpdateFunc_8099DD74(EffDust* this, GlobalContext* globalCtx);
void func_8099DFC0(EffDust* this, GlobalContext* globalCtx);
void func_8099E4F4(EffDust* this, GlobalContext* globalCtx);
void func_8099E784(EffDust* this, GlobalContext* globalCtx);

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


void func_8099D8E0(EffDust *this) {
    s32 i;
    for (i = 0; i < 0x40; i++) {
        this->unk_024C[i].z = 0.0f;
        this->unk_024C[i].y = 0.0f;
        this->unk_024C[i].x = 0.0f;

        this->unk_014C[i] = 1.0f;
    }

    this->unk_054C = 0;
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Eff_Dust/EffDust_Init.s")

void EffDust_Init(Actor *thisx, GlobalContext *globalCtx) {
    EffDust *this = THIS;
    u32 sp20;

    sp20 = this->actor.params;
    func_8099D8E0(this);

    switch(sp20){
    case 0:
        EffDust_setUpdateFunc(this, EffDust_UpdateFunc_8099DB28);
        EffDust_setDrawFunc(this, func_8099E4F4);
        this->unk_0554 = 0.8f;
        this->unk_0558 = 0.8f;
        this->unk_0550 = 1.0f;
        this->unk_055C = 0.1f;
        break;

    case 1:
        EffDust_setUpdateFunc(this, EffDust_UpdateFunc_8099DD74);
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


void EffDust_UpdateFunc_8099DB28(EffDust *this, GlobalContext *globalCtx) {
    s16 theta;
    s16 fi;

    f32 *unk_014C;

    s32 i;
    s32 j;

    unk_014C = this->unk_014C;
    for (i = 0; i < 0x40; i++) {
        if ((*unk_014C) < 1.0f) {
            *unk_014C += 0.05f;
        }
        unk_014C++;
    }

    for (j = 0; j < 3; j++){
        i = this->unk_054C & 0x3F;
        if (this->unk_014C[i] >= 1.0f) {
            fi = Rand_CenteredFloat(8192.0f); 
            theta = Rand_CenteredFloat(4096.0f); 
            this->unk_024C[i].x = -800.0f * Math_CosS(fi) * Math_CosS(theta); 
            this->unk_024C[i].y = -800.0f * Math_SinS(theta);
            this->unk_024C[i].z = -800.0f * Math_SinS(fi) * Math_CosS(theta);
            this->unk_014C[i] = 0.0f;
            this->unk_054C += 1;
        }
    }
}


void EffDust_UpdateFunc_8099DD74(EffDust *this, GlobalContext *globalCtx) {
    s16 theta;
    s16 fi;

    f32 *unk_014C;

    s32 i;
    s32 j;

    unk_014C = this->unk_014C;
    for (i = 0; i < 0x40; i++) {
        if ((*unk_014C) < 1.0f) {
            *unk_014C += 0.03f;
        }
        unk_014C++;
    }

    for (j = 0; j < 2; j++){
        i = this->unk_054C & 0x3F;
        if (this->unk_014C[i] >= 1.0f) {
            fi = Rand_CenteredFloat(65536.0f); 
            theta = Rand_ZeroFloat(8192.0f); 
            this->unk_024C[i].x = 400.0f * Math_CosS(fi) * Math_CosS(theta); 
            this->unk_024C[i].y = 400.0f * Math_SinS(theta);
            this->unk_024C[i].z = 400.0f * Math_SinS(fi) * Math_CosS(theta);
            this->unk_014C[i] = 0.0f;
            this->unk_054C += 1;
        }
    }
}

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
