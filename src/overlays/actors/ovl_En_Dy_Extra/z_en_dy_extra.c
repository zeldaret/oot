#include "z_en_dy_extra.h"
#include "vt.h"

#define FLAGS 0x00000030

#define THIS ((EnDyExtra*)thisx)

void EnDyExtra_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDyExtra_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDyExtra_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDyExtra_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_809FF7AC(EnDyExtra* this, GlobalContext* globalCtx);
void func_809FF840(EnDyExtra* this, GlobalContext* globalCtx);

const ActorInit En_Dy_Extra_InitVars = {
    ACTOR_EN_DY_EXTRA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_DY_OBJ,
    sizeof(EnDyExtra),
    (ActorFunc)EnDyExtra_Init,
    (ActorFunc)EnDyExtra_Destroy,
    (ActorFunc)EnDyExtra_Update,
    (ActorFunc)EnDyExtra_Draw,
};

void EnDyExtra_Destroy(Actor *thisx, GlobalContext *globalCtx) {

}

void EnDyExtra_Init(Actor *thisx, GlobalContext *globalCtx) {
    EnDyExtra* this = THIS;

    osSyncPrintf("\n\n", &this->actor);
    osSyncPrintf(VT_FGCOL(YELLOW)"☆☆☆☆☆ 大妖精効果 ☆☆☆☆☆ %d\n" VT_RST, &this->actor.params);
    
    this->unk_164 = 0.025f;
    this->actor.gravity = -0.2f;

    this->unk_150 = this->actor.params;
    this->unk_15C = 0.025f;
    this->unk_168 = this->actor.posRot.pos;
    
    this->unk_154 = 0x3C;
    this->unk_160 = 0.039f;
    this->unk_158 = 1.0f;
    
    this->actionFunc = func_809FF7AC;
}

void func_809FF7AC(EnDyExtra* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxF(&this->actor.gravity, 0.0f, 0.1f, 0.005f);
    if (this->actor.posRot.pos.y < -55.0f) {
        this->actor.velocity.y = 0.0f;
    }
    if (this->unk_154 == 0) {
        if (this->unk_152 != 0) {
            this->unk_154 = 0xC8;
            this->actionFunc = func_809FF840;
        }
    }
}

void func_809FF840(EnDyExtra* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxF(&this->actor.gravity, 0.0f, 0.1f, 0.005f);
    if (this->unk_154 == 0 || this->unk_158 < 0.02f) {
        Actor_Kill(&this->actor);
    }
    else{
        Math_SmoothDownscaleMaxF(&this->unk_158, 0.03f, 0.05f);
        if (this->actor.posRot.pos.y < -55.0f) {
            this->actor.velocity.y = 0.0f;
        }
    } 
}

void EnDyExtra_Update(Actor *thisx, GlobalContext *globalCtx) {
    EnDyExtra* this = THIS;

    DECR(this->unk_154);
    this->actor.scale.x = this->unk_15C;
    this->actor.scale.y = this->unk_160;
    this->actor.scale.z = this->unk_164;
    Audio_PlayActorSound2(&this->actor, NA_SE_PL_SPIRAL_HEAL_BEAM - SFX_FLAG);
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
}

s32 D_809FFC40[] = { 0xFFFFAAFF, 0xFFFFAAFF};
s32 D_809FFC48[] = { 0xFF64FFFF, 0x64FFFFFF};
s32 D_809FFC50[] = { 0x02010102, 0x00000201, 0x00020100, 0x02010002, 0x01000201, 0x00020100, 0x01020000, 0x00000000};
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Dy_Extra/EnDyExtra_Draw.s")
