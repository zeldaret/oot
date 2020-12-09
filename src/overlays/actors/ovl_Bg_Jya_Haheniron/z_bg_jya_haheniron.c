/*
 * File: z_bg_jya_haheniron
 * Overlay: ovl_Bg_Jya_Haheniron
 * Description: Chunks of Iron Knucle Chair and Pillar
 */

#include "z_bg_jya_haheniron.h"

#define FLAGS 0x00000010

#define THIS ((BgJyaHaheniron*)thisx)

void BgJyaHaheniron_Init(Actor* thisx, GlobalContext* globalCtx);
void BgJyaHaheniron_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgJyaHaheniron_Update(Actor* thisx, GlobalContext* globalCtx);
void BgJyaHaheniron_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8089843C(BgJyaHaheniron* this);
void func_8089844C(BgJyaHaheniron* this, GlobalContext* globalCtx);
void func_80898588(BgJyaHaheniron* this);
void func_80898598(BgJyaHaheniron* this, GlobalContext* globalCtx);
void func_8089861C(BgJyaHaheniron* this);
void func_8089862C(BgJyaHaheniron* this, GlobalContext* globalCtx);

extern UNK_TYPE D_06000880;

const ActorInit Bg_Jya_Haheniron_InitVars = {
    ACTOR_BG_JYA_HAHENIRON,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_JYA_IRON,
    sizeof(BgJyaHaheniron),
    (ActorFunc)BgJyaHaheniron_Init,
    (ActorFunc)BgJyaHaheniron_Destroy,
    (ActorFunc)BgJyaHaheniron_Update,
    (ActorFunc)BgJyaHaheniron_Draw,
};


extern s32 D_80898740[];
extern s32 D_80898764[];
extern s32 D_80898774[];
extern s32 D_8089877E[];
extern s32 D_80898780[];
extern s32 D_80898794[];
extern s32 D_808987A0[];
extern s32 D_808987AC[];
extern s32 D_808987B8[];

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/func_808980C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/func_80898114.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/BgJyaHaheniron_Init.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/BgJyaHaheniron_Destroy.s")
void BgJyaHaheniron_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    if (thisx->params == 0) {
        Collider_DestroyJntSph(globalCtx, &THIS->collider);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/func_8089843C.s")
void func_8089843C(BgJyaHaheniron* this) {
    this->actionFunc = func_8089844C;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/func_8089844C.s")
void func_8089844C(BgJyaHaheniron* this, GlobalContext* globalCtx) {
    Vec3f vec;

    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 5.0f, 8.0f, 0.0f, 0x85);
    if ((this->actor.bgCheckFlags & 9) ||
        ((this->collider.base.atFlags & 2) && (this->collider.base.at) && (this->collider.base.at->type == 2))) {
        vec.x = -Math_Rand_ZeroOne() * this->actor.velocity.x;
        vec.y = -Math_Rand_ZeroOne() * this->actor.velocity.y;
        vec.z = -Math_Rand_ZeroOne() * this->actor.velocity.z;
        func_80898114(globalCtx, &this->actor.posRot, &vec);
        Actor_Kill(&this->actor);
    } else if (this->unk_1B0 >= 0x3D) {
        Actor_Kill(&this->actor);
    } else {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider);
    }
    this->actor.shape.rot.y += 0x4B0;
    this->actor.shape.rot.x += 0xFA0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/func_80898588.s")
void func_80898588(BgJyaHaheniron* this) {
    this->actionFunc = func_80898598;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/func_80898598.s")
void func_80898598(BgJyaHaheniron* this, GlobalContext* globalCtx) {
    if (this->unk_1B0 >= 8) {
        Actor_MoveForward(&this->actor);
    } else if (this->unk_1B0 >= 0x11) {
        func_80898114(globalCtx, &this->actor.posRot, D_808987A0);
        Actor_Kill(&this->actor);
    }
    this->actor.shape.rot.y += 0x258;
    this->actor.shape.rot.x += 0x3E8;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/func_8089861C.s")
void func_8089861C(BgJyaHaheniron* this) {
    this->actionFunc = func_8089862C;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/func_8089862C.s")
void func_8089862C(BgJyaHaheniron* this, GlobalContext* globalCtx) {
    if (this->unk_1B0 >= 17) {
        func_80898114(globalCtx, &this->actor.posRot, D_808987AC);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot, 0x50, NA_SE_EN_IRONNACK_BREAK_PILLAR2);
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/BgJyaHaheniron_Update.s")
void BgJyaHaheniron_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgJyaHaheniron* this = THIS;
    this->unk_1B0++;
    this->actionFunc(this, globalCtx);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Jya_Haheniron/BgJyaHaheniron_Draw.s")
