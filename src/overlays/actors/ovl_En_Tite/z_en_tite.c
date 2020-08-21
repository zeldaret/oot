/*
 * File: z_en_tite.c
 * Overlay: ovl_En_Tite
 * Description: Tektite
 */

#include "z_en_tite.h"

#define FLAGS 0x00000015

#define THIS ((EnTite*)thisx)

void EnTite_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTite_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTite_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTite_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B1ABBC(Actor *thisx, GlobalContext *globalCtx);
s32 func_80042244(GlobalContext* globalCtx, CollisionContext* colCtx, f32 x, f32 z, f32* ySurface,
                  WaterBox** outWaterBox);
void func_80B1A76C(Actor *thisx);
void func_80B1A670(EnTite *this, GlobalContext *globalContext);
void func_80B1AA94(EnTite *this, GlobalContext *globalContext);
void func_80B1A888(EnTite *this, GlobalContext *globalContext);
void func_80B1A2A0(EnTite *this, GlobalContext *globalContext);
void func_80B18CC4(EnTite *this, GlobalContext *globalContext);
void func_80B1A6E4(EnTite *this, GlobalContext *globalContext);
void func_80B1AA44(Actor *thisx);
void func_80B1A63C(Actor *thisx);
//EffectSsGRipple_Spawn
void func_80029444(GlobalContext *globalCtxt, Vec3f *vec, s32 arg2, s32 arg3, s32 arg4);

extern AnimationHeader D_060012E4;
extern AnimationHeader D_06000A14;

/*
const ActorInit En_Tite_InitVars = {
    ACTOR_EN_TITE,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_TITE,
    sizeof(EnTite),
    (ActorFunc)EnTite_Init,
    (ActorFunc)EnTite_Destroy,
    (ActorFunc)EnTite_Update,
    (ActorFunc)EnTite_Draw,
};
*/

//EnTite_SetupAction
void func_80B18A80(EnTite* this, EnTiteActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/EnTite_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/EnTite_Destroy.s")

void func_80B18C5C(Actor *thisx) {
    EnTite *this = THIS;

    SkelAnime_ChangeAnimTransitionRepeat(&this->unk14C, &D_060012E4, 4.0f);
    this->unk2BC = 6;
    this->unk2E0 = Math_Rand_S16Offset(0xF, 0x1E);
    thisx->speedXZ = 0.0f;
    func_80B18A80(this, func_80B18CC4);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B18CC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B18E08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B18E7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B19524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B195C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1985C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B19918.s")

void func_80B19E94();
void func_80B19E28(Actor *thisx) {
    EnTite* this = THIS;

    this->unk2BC = 3;
    SkelAnime_ChangeAnimTransitionRepeat(&this->unk14C, &D_060012E4, 4.0f);
    thisx->speedXZ = -6.0f;
    thisx->posRot.rot.y = thisx->yawTowardsLink;
    thisx->gravity = -1.0f;
    func_80B18A80(this, func_80B19E94);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B19E94.s")

void func_80B1A1EC(Actor *thisx) {
    EnTite *this = THIS;

    SkelAnime_ChangeAnim(&this->unk14C, &D_060012E4, 0.0f, 0.0f, (f32) SkelAnime_GetFrameCount(&D_060012E4.genericHeader), 0, 4.0f);
    this->unk2BC = 7;
    thisx->speedXZ = -6.0f;
    thisx->posRot.rot.y = (s16) thisx->yawTowardsLink;
    if (this->unk2E4 == 0xF) {
        this->unk2E3 = 0x30;
    }
    Audio_PlayActorSound2(thisx, 0x389E);
    func_80B18A80(this, func_80B1A2A0);
}

// GOOD PROGRESS ON THIS ONE SO FAR, DIDN'T HAVE TIME TO FINISH
/*
void func_80B1A2A0(EnTite *this, GlobalContext *globalContext) {
    f32 temp_f0;
    f32 temp_f0_2;
    s16 temp_v0_3;
    s16 temp_v0_4;
    s16 temp_v1;
    s32 temp_a0;
    u16 temp_v0;
    u16 temp_v0_2;
    u16 temp_v0_5;
    f32 phi_f2;
    s32 phi_t0;
    s32 phi_v1;
    s32 phi_v1_2;
    s32 phi_v1_3;

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    if (((this->actor.bgCheckFlags & 3) != 0) || ((-2 == this->actor.params) && ((this->actor.bgCheckFlags & 0x20) != 0))){
        if (this->actor.velocity.y <= 0.0f){
            if ((-2 != this->actor.params) || ((this->actor.bgCheckFlags & 0x20) == 0)){
                if (-32000.0f < this->actor.groundY) {
                    this->actor.posRot.pos.y = this->actor.groundY;
                }
            }
            else{
                this->actor.velocity.y = 0;
                this->actor.gravity = 0;
                this->actor.posRot.pos.y += this->actor.waterY;
            }
        }
    }

    
    if ((this->actor.bgCheckFlags & 0x42) != 0) {
        if ((this->actor.bgCheckFlags & 0x40) == 0) {
            func_80033480(globalContext, &this->unk348, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalContext, &this->unk354, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalContext, &this->unk360, 1.0f, 2, 0x50, 0xF, 1);
            func_80033480(globalContext, &this->unk36C, 1.0f, 2, 0x50, 0xF, 1);
            Audio_PlayActorSound2(&this->actor, 0x387B);
        } else {
            this->actor.bgCheckFlags = (this->actor.bgCheckFlags & 0xFFBF);
            Audio_PlayActorSound2(&this->actor, 0x388F);
        }
    }
    if ((this->actor.dmgEffectTimer == 0) && (0.0f == this->actor.speedXZ)){
        if ((0.0f != this->actor.speedXZ)||(((this->actor.bgCheckFlags & 1) == 0) &&
         (-2 == this->actor.params) && ((this->actor.bgCheckFlags & 0x20) != 0))) { 
            this->actor.posRot.rot.y = this->actor.shape.rot.y;
            if (this->actor.colChkInfo.health == 0) {
                func_80B1A63C(&this->actor);
            } else {
                if (this->unk2BD == 2) {
                    func_80B1AA44(&this->actor);
                } else if ( ((300.0f < this->actor.xzDistFromLink) && (80.0f < this->actor.yDistFromLink) &&
                 (ABS(this->actor.shape.rot.x) < 0xFA0) && (ABS(this->actor.shape.rot.x) < 0xFA0)) &&
                  ((this->actor.bgCheckFlags & 1 != 0) || ((-2 == this->actor.params) && ((this->actor.bgCheckFlags & 0x20) != 0)))){
                    func_80B18C5C(&this->actor);
                } else{
                    if ((this->actor.xzDistFromLink < 180.0f) && (this->actor.yDistFromLink <= 80.0f) && 
                    (ABS(this->actor.yawTowardsLink - this->actor.shape.rot.y) < 0x1771)){
                        func_80B18E08(&this->actor);
                    } else {
                        func_80B1985C(&this->actor);
                    }
                }
            }
        }
    }
    SkelAnime_FrameUpdateMatrix(&this->unk14C);
}
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A2A0.s")

void func_80B1A63C(Actor *thisx) {
    EnTite *this = THIS;

    this->unk2BC = 0;
    thisx->dmgEffectTimer = 0;
    thisx->speedXZ = 0.0f;
    func_80B18A80(this, func_80B1A670);
}

void func_80B1A670(EnTite *this, GlobalContext *globalContext) {
    EffectSsDeadSound_SpawnStationary(globalContext, &this->actor.projectedPos, 0x386EU, 1, 1, 0x28);
    this->unk2BC = 5;
    func_80B18A80(this, func_80B1A6E4);
    func_80032E24(&this->unk2C4, 0x18, globalContext);
}

void func_80B1A6E4(EnTite *this, GlobalContext *globalContext) {
    if (func_8003305C(&this->actor, &this->unk2C4, globalContext, (u16)(this->actor.params + 0xB)) != 0) {
        if (this->actor.params == -2) {
            Item_DropCollectibleRandom(globalContext, &this->actor, &this->actor.posRot.pos, 0xE0);
        } else {
            Item_DropCollectibleRandom(globalContext, &this->actor, &this->actor.posRot.pos, 0x40);
        }
        Actor_Kill(&this->actor);
    }
}

void func_80B1A76C(Actor *thisx) {
    EnTite *this = THIS;

    SkelAnime_ChangeAnimPlaybackRepeat(&this->unk14C, &D_06000A14, 1.5f);
    Audio_PlayActorSound2(thisx, 0x3888);
    this->unk2BD = 2;
    this->unk2E0 = 0x1F4;
    thisx->speedXZ = 0.0f;
    thisx->gravity = -1.0f;
    this->unk2E2 = (Math_Rand_ZeroOne() * 50.0f);
    thisx->velocity.y = 11.0f;
    func_80B18A80(this, func_80B1A888);
}

void func_80B1A888(EnTite *this, GlobalContext *globalContext) {
    f32 temp_f0;
    u16 temp_v0;
    u8 temp_t7;

    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, 0x7FFF, 1, 0xFA0, 0);
    this->unk2E2--;
    if (this->unk2E2 == 0) {
        this->unk2E2 = Math_Rand_ZeroOne() * 30.0f;
        this->unk14C.animCurrentFrame = Math_Rand_ZeroOne() * 5.0f;
    }
    SkelAnime_FrameUpdateMatrix(&this->unk14C);
    if ((this->actor.bgCheckFlags & 3) != 0) {
        if ((this->actor.bgCheckFlags & 2) != 0) {
            func_80033260(globalContext, &this->actor, &this->actor.posRot.pos, 20.0f, 0xB, 4.0f, 0, 0, 0);
            Audio_PlayActorSound2(&this->actor, 0x387B);
        }
        this->unk2E0--;
        if (this->unk2E0 == 0) {
            func_80B1AA44(&this->actor);
        }
    } else {
        if (this->actor.shape.unk_08 < 2800.0f) {
            this->actor.shape.unk_08 += 400.0f;
        }
    }
}

void func_80B1AA44(Actor *thisx) {
    EnTite* this = THIS;

    this->unk2BD = 1;
    this->unk2E0 = 0x3E8;
    thisx->velocity.y = 13.0f;
    Audio_PlayActorSound2(thisx, 0x3888U);
    func_80B18A80(this, func_80B1AA94);
}

void func_80B1AA94(EnTite *this, GlobalContext *globalContext) {
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.z, 0, 1, 0xFA0, 0);
    SkelAnime_FrameUpdateMatrix(&this->unk14C);
    if ((this->actor.bgCheckFlags & 2) != 0) {
        func_80033480(globalContext, &this->unk348, 1.0f, 2, 0x50, 0xF, 1);
        func_80033480(globalContext, &this->unk354, 1.0f, 2, 0x50, 0xF, 1);
        func_80033480(globalContext, &this->unk360, 1.0f, 2, 0x50, 0xF, 1);
        func_80033480(globalContext, &this->unk36C, 1.0f, 2, 0x50, 0xF, 1);
        this->actor.shape.unk_08 = 0.0f;
        this->actor.posRot.pos.y = this->actor.groundY;
        Audio_PlayActorSound2(&this->actor, 0x387B);
        func_80B18C5C(&this->actor);
    }
}

void func_80B1ABBC(Actor *thisx, GlobalContext *globalContext) {
    EnTite* this = THIS;
    u8 phi_return;
    u16 num = 0x386D;

    if (((this->unk2E8.acFlags & 2) != 0) && (this->unk2BC >= 6)) {
        this->unk2E8.acFlags = (this->unk2E8.acFlags & 0xFFFD);
        if (thisx->colChkInfo.damageEffect != 0xE) {
            this->unk2E4 =  thisx->colChkInfo.damageEffect;
            func_80035650(thisx, this->unk304, 0);
            if ((thisx->colChkInfo.damageEffect == 1) || (thisx->colChkInfo.damageEffect == 0xF)){
                if (this->unk2BC != 7){
                    func_8003426C(thisx, 0, 0x78, 0, 0x50);
                    Actor_ApplyDamage(thisx);
                    func_80B1A1EC(thisx);
                }
            }
            else{
                if ((thisx->dmgEffectTimer == 0) || ((thisx->dmgEffectParams & 0x4000) == 0)){
                    func_8003426C(thisx, 0x4000, 0xFF, 0, 8);
                    Actor_ApplyDamage(thisx);
                }
                if (thisx->colChkInfo.health == 0){
                    func_80B1A63C(thisx);
                }
                else{
                    Audio_PlayActorSound2(thisx, num);
                    if (this->unk2BD != 2) {
                        func_80B19E28(thisx);
                    } else {
                        func_80B1AA44(thisx);
                    }
                }
            }
        }
    } else if ((thisx->colChkInfo.health != 0) && (globalContext->actorCtx.unk_02 != 0) &&
        (thisx->xzDistFromLink <= 400.0f) && ((thisx->bgCheckFlags & 1) != 0)) {
        if (this->unk2BD == 2) {
            func_80B1AA44(thisx);
        }
        else if ((this->unk2BC >= 6) || (!(this->unk2BC < 6))) {
            if (1) {}
            func_80B1A76C(thisx);
        }
    }
}

void EnTite_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnTite* this = THIS;
    char pad[0x4];
    CollisionPoly *sp3C;
    WaterBox *sp38;    
    f32 sp34;

    func_80B1ABBC(thisx, globalCtx);
    if (thisx->colChkInfo.damageEffect != 0xE) {
        this->actionFunc(this, globalCtx);
        Actor_MoveForward(thisx);
        func_8002E4B4(globalCtx, thisx, 25.0f, 40.0f, 20.0f, this->unk2DC);
        if ((thisx->params == -2) && ((thisx->bgCheckFlags & 0x20) != 0)) {
            sp3C = thisx->floorPoly;
            if ((((globalCtx->gameplayFrames & 7) == 0) || (thisx->velocity.y < 0.0f)) && 
                (func_80042244(globalCtx, &globalCtx->colCtx, this->unk360.x, this->unk360.z, &sp34, &sp38)) &&
                (this->unk360.y <= sp34)) {
                this->unk360.y = sp34;
                func_80029444(globalCtx, &this->unk360, 0, 0xDC, 0);
            }
            if (((((globalCtx->gameplayFrames + 2) & 7) == 0) || (thisx->velocity.y < 0.0f)) &&
                (func_80042244(globalCtx, &globalCtx->colCtx, this->unk36C.x, this->unk36C.z, &sp34, &sp38)) &&
                (this->unk36C.y <= sp34)) {
                this->unk36C.y = sp34;
                func_80029444(globalCtx, &this->unk36C, 0, 0xDC, 0);
            }
            if (((((globalCtx->gameplayFrames + 4) & 7) == 0) || (thisx->velocity.y < 0.0f)) &&
                (func_80042244(globalCtx, &globalCtx->colCtx, this->unk348.x, this->unk348.z, &sp34, &sp38)) &&
                (this->unk348.y <= sp34)) {
                this->unk348.y = sp34;
                func_80029444(globalCtx, &this->unk348, 0, 0xDC, 0);
            }
            if (((((globalCtx->gameplayFrames + 1) & 7) == 0) || (thisx->velocity.y < 0.0f)) &&
                (func_80042244(globalCtx, &globalCtx->colCtx, this->unk354.x, this->unk354.z, &sp34, &sp38)) &&
                (this->unk354.y <= sp34)) {
                this->unk354.y = sp34;
                func_80029444(globalCtx, &this->unk354, 0, 0xDC, 0);
            }
            thisx->floorPoly = sp3C;
        
        }
        if (thisx->bgCheckFlags & 3) {
            func_800359B8(thisx, thisx->shape.rot.y, &thisx->shape.rot);
            if (this->unk2BD >= 2) {
                thisx->shape.rot.z = (thisx->shape.rot.z + 0x7FFF);
            }
        } else {
            Math_SmoothScaleMaxMinS(&thisx->shape.rot.x, 0, 1, 0x3E8, 0);
            if (this->unk2BD < 2) {
                Math_SmoothScaleMaxMinS(&thisx->shape.rot.z, 0, 1, 0x3E8, 0);
                if (0.0f < thisx->shape.unk_08) {
                    thisx->shape.unk_08 -= 400.0f;
                }
            }
        }
    }
    thisx->posRot2.pos = thisx->posRot.pos;
    thisx->posRot2.pos.y += 20.0f;

    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->unk2E8);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->unk2E8);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1B178.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/EnTite_Draw.s")
