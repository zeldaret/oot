#include "z_en_po_sisters.h"

#define FLAGS 0x00005215

#define THIS ((EnPoSisters*)thisx)

void EnPoSisters_Init(Actor* thisx, GlobalContext* globalCtx);
void EnPoSisters_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnPoSisters_Update(Actor* thisx, GlobalContext* globalCtx);
void EnPoSisters_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80ADA4A8(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADA530(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADA6A0(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADA7F0(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADA8C0(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADA9E8(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADAAA4(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADAC70(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADAD54(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADAE6C(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADAFC0(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADB17C(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADB2B8(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADB338(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADB9F0(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADB4B0(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADB51C(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADB770(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADBB6C(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADBBF4(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADBC88(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADBD38(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADBD8C(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADBEE8(EnPoSisters* this, GlobalContext* globalCtx);
void func_80ADBF58(EnPoSisters* this, GlobalContext* globalCtx);

/*
const ActorInit En_Po_Sisters_InitVars = {
    ACTOR_EN_PO_SISTERS,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_PO_SISTERS,
    sizeof(EnPoSisters),
    (ActorFunc)EnPoSisters_Init,
    (ActorFunc)EnPoSisters_Destroy,
    (ActorFunc)EnPoSisters_Update,
    (ActorFunc)EnPoSisters_Draw,
};
*/

// TODO data

extern InitChainEntry D_80ADD788[];
extern ColliderCylinderInit D_80ADD730;
extern DamageTable D_80ADD764;
extern CollisionCheckInfoInit D_80ADD75C;
extern Vec3f D_80ADD790;
extern s16 D_80ADD79C[];
extern Vec3s D_80ADD7A4[];

extern s32 D_80ADD784;

// TODO external

extern SkeletonHeader D_060065C8;
extern AnimationHeader D_060014CC;
extern AnimationHeader D_06000D40;
extern AnimationHeader D_06000114;
extern AnimationHeader D_060008C0;
extern AnimationHeader D_06000A54;
extern AnimationHeader D_0600119C;
extern AnimationHeader D_06000680;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/EnPoSisters_Init.s")
/* void EnPoSisters_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnPoSisters* this;
    ColliderCylinder* collider;

    this = THIS;
    Actor_ProcessInitChain(&this->actor, D_80ADD788);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 50.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_060065C8, &D_060014CC, &this->unk_19E, &this->unk_1E6, 0xC);
    this->unk_22E = 0xFF;
    this->unk_22F = 0xFF;
    this->unk_230 = 0xD2;
    this->unk_231 = 0xFF;
    this->light = Lights_Insert(globalCtx, &globalCtx->lightCtx, &this->lightInfo);
    Lights_InitType2PositionalLight(&this->lightInfo, this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z, 0, 0, 0, 0);
    collider = &this->collider;
    Collider_InitCylinder(globalCtx, collider);
    Collider_SetCylinder(globalCtx, collider, &this->actor, &D_80ADD730);
    func_80061ED4(&this->actor.colChkInfo, &D_80ADD764, &D_80ADD75C);
    this->unk_194 = (this->actor.params >> 8) & 3;
    this->actor.naviEnemyId = (this->actor.params >> 8) & 3 + 0x50;
    this->unk_195 = (this->actor.params >> 0xA) & 3;
    this->unk_196 = 0x20;
    this->unk_197 = 0x14;
    this->unk_198 = 1;
    this->unk_199 = 0x20;
    this->actor.flags &= -2;
    this->unk_294 = 110.0f;
    if (this->actor.params & 0x1000) {
        func_80ADA094(this, globalCtx);
    } else if (this->unk_194 == 0) {
        if (this->unk_195 == 0) {
            this->collider.base.maskA = 9;
            func_80AD9AA8(this, globalCtx);
        } else {
            this->collider.body.flags = 4;
            this->actor.flags &= -0x4201;
            this->collider.body.bumper.flags |= 1;
            this->collider.base.maskA = 0;
            func_80AD9C24(this, 0);
        }
    } else {
        func_80AD9D44(this);
    }
    this->actor.params &= 0x3F;
} */

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/EnPoSisters_Destroy.s")
void EnPoSisters_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnPoSisters* this = THIS;

    Lights_Remove(globalCtx, &globalCtx->lightCtx, this->light);
    if (this->unk_194 == 0 && this->unk_195 == 0) {
        func_800F5B58();
    }
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80AD9240(EnPoSisters* this, s32 arg1, Vec3f* arg2);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9240.s")





//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9368.s")
void func_80AD9368(EnPoSisters* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060014CC, -3.0f);
    this->unk_19A = Math_Rand_S16Offset(2, 3);
    this->actionFunc = func_80ADA4A8;
    this->actor.speedXZ = 0.0f;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD93C4.s")
void func_80AD93C4(EnPoSisters* this) {
    if (this->actionFunc != func_80ADA6A0) {
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000D40, -3.0f);
    }
    this->unk_19A = Math_Rand_S16Offset(0xF, 3);
    this->unk_199 |= 7;
    this->actionFunc = func_80ADA530;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD943C.s")
void func_80AD943C(EnPoSisters* this) {
    this->actionFunc = func_80ADA6A0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD944C.s")
void func_80AD944C(EnPoSisters* this) {
    if (this->unk_231 != 0) {
        this->collider.base.type = COLTYPE_METAL_SHIELD;
        this->collider.base.acFlags |= 4;
    }
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000114, -5.0f);
    this->actor.speedXZ = 0.0f;
    this->unk_19A = SkelAnime_GetFrameCount(&D_06000114) * 3 + 3;
    this->unk_199 &= 0xFFFD;
    this->actionFunc = func_80ADA7F0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD94E0.s")
void func_80AD94E0(EnPoSisters* this) {
    this->actor.speedXZ = 5.0f;
    if (this->unk_194 == 0) {
        this->collider.base.type = COLTYPE_METAL_SHIELD;
        this->collider.base.acFlags |= 4;
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000114, -5.0f);
    }
    this->unk_19A = 5;
    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    this->unk_199 |= 8;
    this->actionFunc = func_80ADA8C0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9568.s")
void func_80AD9568(EnPoSisters* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000D40, -3.0f);
    this->actor.posRot.rot.y = this->actor.yawTowardsLink + 0x8000;
    if (this->unk_194 != 0) {
        this->collider.base.type = COLTYPE_UNK3;
        this->collider.base.acFlags &= 0xFFFB;
    }
    this->actionFunc = func_80ADA9E8;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD95D8.s")
void func_80AD95D8(EnPoSisters* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060008C0, -3.0f);
    if (this->collider.base.ac != NULL) {
        this->actor.posRot.rot.y = (this->collider.body.acHitItem->toucher.flags & 0x1F824) ? 
                this->collider.base.ac->posRot.rot.y : 
                func_8002DA78(&this->actor, this->collider.base.ac) + 0x8000;
    }
    if (this->unk_194 != 0) {
        this->actor.speedXZ = 10.0f;
    }
    this->unk_199 &= 0xFFF4;
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0x10);
    this->actionFunc = func_80ADAAA4;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD96A4.s")
void func_80AD96A4(EnPoSisters* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000A54, -3.0f);
    this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x8000;
    this->unk_19A = 5;
    this->unk_199 |= 0xB;
    this->actor.speedXZ = 5.0f;
    this->actionFunc = func_80ADAC70;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9718.s")
void func_80AD9718(EnPoSisters* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600119C, 1.5f, 0.0f, SkelAnime_GetFrameCount(&D_0600119C), 2, -3.0f);
    this->actor.speedXZ = 0.0f;
    this->unk_19C = 0x64;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->unk_199 &= 0xFFFA;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DISAPPEAR);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH2);
    this->actionFunc = func_80ADAD54;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD97C8.s")
void func_80AD97C8(EnPoSisters* this, GlobalContext* globalCtx) {
    Player* player;
    f32 sp20;

    player = PLAYER;
    if (this->unk_195 == 0 || this->actionFunc != func_80ADAAA4) {
        if ((player->swordState == 0 || player->swordAnimation >= 0x18) && player->actor.posRot.pos.y - player->actor.groundY < 1.0f) {
            Math_ApproxF(&this->unk_294, 110.0f, 3.0f);
        } else {
            Math_ApproxF(&this->unk_294, 170.0f, 10.0f);
        }
        sp20 = this->unk_294;
    } else if (this->unk_195 != 0) {
        sp20 = this->actor.attachedA->xzDistFromLink;
    }
    this->actor.posRot.pos.x = (Math_Sins(this->actor.shape.rot.y + 0x8000) * sp20) + player->actor.posRot.pos.x;
    this->actor.posRot.pos.z = (Math_Coss(this->actor.shape.rot.y + 0x8000) * sp20) + player->actor.posRot.pos.z;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD98F4.s")
void func_80AD98F4(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600119C, 1.5f, 0.0f, SkelAnime_GetFrameCount(&D_0600119C), 2, -3.0f);
    if (this->unk_194 == 0) {
        this->unk_294 = 110.0f;
        func_80AD97C8(this, globalCtx);
        this->unk_231 = 0;
        this->actor.draw = EnPoSisters_Draw;
    } else {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
    }
    this->unk_19A = 0xF;
    this->actor.speedXZ = 0.0f;
    Audio_PlayActorSound2(this, NA_SE_EN_PO_APPEAR);
    this->unk_199 &= 0xFFFE;
    this->actionFunc = func_80ADAE6C;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD99D4.s")
void func_80AD99D4(EnPoSisters* this, GlobalContext* globalCtx) {
    this->unk_19A = 0;
    this->actor.speedXZ = 0.0f;
    this->actor.posRot.pos.y += 42.0f;
    this->actor.shape.unk_08 = -6000.0f;
    this->actor.flags &= -2;
    this->unk_199 = 0;
    this->actionFunc = func_80ADAFC0;
    func_800800F8(globalCtx, 0xC76, 0x3E7, &this->actor, 0);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9A54.s")
void func_80AD9A54(EnPoSisters* this, GlobalContext* globalCtx) {
    this->unk_19A = 0;
    this->actor.posRot.pos.y = this->unk_234.y;
    Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x80);
    this->actionFunc = func_80ADB17C;
}

// Meg spawning fakes
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9AA8.s")
void func_80AD9AA8(EnPoSisters* this, GlobalContext* globalCtx) {
    Actor *actor1;
    Actor *actor2;
    Actor *actor3;
    s32 pad;
    s32 pad1;

    actor1 = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_PO_SISTERS, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0x400);
    actor2 = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_PO_SISTERS, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0x800);
    actor3 = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_PO_SISTERS, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0xC00);
    // If any fake fails to spawn, kill all that were able to and the original
    if (actor1 == NULL || actor2 == NULL || actor3 == NULL) {
        if (actor1 != NULL) {
            Actor_Kill(actor1);
        }
        if (actor2 != NULL) {
            Actor_Kill(actor2);
        }
        if (actor3 != NULL) {
            Actor_Kill(actor3);
        }
        Actor_Kill(&this->actor);
    } else {
        actor3->attachedA = &this->actor;
        actor2->attachedA = &this->actor;
        actor1->attachedA = &this->actor;
        SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000680);
        this->unk_198 = 0;
        this->unk_199 = 0xA0;
        this->actionFunc = func_80ADB2B8;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9C24.s")
void func_80AD9C24(EnPoSisters* this, GlobalContext* globalCtx) {
    Vec3f vec;

    this->actor.draw = NULL;
    this->actor.flags &= -2;
    this->unk_19C = 0x64;
    this->unk_199 = 0x20;
    this->collider.base.type = COLTYPE_UNK3;
    this->collider.base.acFlags &= 0xFFFB;
    if (globalCtx != NULL) {
        vec.x = this->actor.posRot.pos.x;
        vec.y = this->actor.posRot.pos.y + 45.0f;
        vec.z = this->actor.posRot.pos.z;
        func_8002A6B8(globalCtx, &vec, &D_80ADD790, &D_80ADD790, 0x96, 0, 0xFF, 0xFF, 0xFF, 0x9B, 0x96, 0x96, 0x96, 1, 9, 0);
    }
    Lights_SetPositionalLightColorAndRadius(&this->lightInfo, 0, 0, 0, 0);
    this->actionFunc = func_80ADB338;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9D44.s")
void func_80AD9D44(EnPoSisters* this) {
    if (this->unk_194 == 3) {
        SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600119C);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_APPEAR);
    } else {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_0600119C, 0.5f, 0.0f, SkelAnime_GetFrameCount(&D_0600119C), 3, 0.0f);
    }
    this->unk_231 = 0;
    this->unk_199 = 0x20;
    this->actionFunc = func_80ADB9F0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9DF0.s")
void func_80AD9DF0(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600119C, -5.0f);
    this->unk_198 = 1;
    this->unk_199 &= 0xFF7F;
    this->actionFunc = func_80ADB4B0;
    func_800800F8(globalCtx, 0xC6C, 0x9C, &this->actor, 0);
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9E60.s")
void func_80AD9E60(EnPoSisters* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000D40, -3.0f);
    this->unk_19A = SkelAnime_GetFrameCount(&D_06000D40) * 7 + 7;
    if (this->actor.attachedA != NULL) {
        this->actor.posRot.pos = this->actor.attachedA->posRot.pos;
        this->actor.shape.rot.y = this->actor.attachedA->shape.rot.y;
    } else {
        this->actor.shape.rot.y = this->actor.yawTowardsLink;
        this->unk_19A++;
    }
    if (this->unk_195 == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH2);
    }
    this->actionFunc = func_80ADB51C;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9F1C.s")
void func_80AD9F1C(EnPoSisters* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000D40, -3.0f);
    this->unk_231 = 0xFF;
    this->unk_19A = 0x12C;
    this->unk_19C = 3;
    this->unk_199 |= 9;
    this->actor.flags |= 1;
    this->actionFunc = func_80ADB770;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9F90.s")
void func_80AD9F90(EnPoSisters* this) {
    if (this->unk_194 == 1) {
        this->actor.initPosRot.pos.x = -632.0f;
        this->actor.initPosRot.pos.z = -3440.0f;
    } else {
        this->actor.initPosRot.pos.x = 752.0f;
        this->actor.initPosRot.pos.z = -3440.0f;
    }
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000D40);
    this->unk_199 |= 0xA;
    this->actionFunc = func_80ADBB6C;
    this->actor.speedXZ = 5.0f;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA028.s")
void func_80ADA028(EnPoSisters* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060014CC, -3.0f);
    this->unk_231 = 0xFF;
    this->unk_199 |= 0x15;
    this->actor.flags |= 1;
    this->actionFunc = func_80ADBBF4;
    this->actor.speedXZ = 0.0f;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA094.s")
void func_80ADA094(EnPoSisters* this, GlobalContext* globalCtx) {
    D_80ADD784 = 0;
    this->unk_231 = 0;
    this->unk_199 = 0x80;
    this->unk_19A = 0x32;
    this->unk_234 = this->actor.initPosRot.pos;
    Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_PROP);
    this->actionFunc = func_80ADBC88;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA10C.s")
/* s32 func_80ADA10C(EnPoSisters* this) {
    s32 temp_v0;
    void *temp_a1;
    Vec3f *temp_a2;
    void *temp_a3;
    void *temp_t0;
    void *temp_t1;
    Vec3f *phi_a1;
    Vec3f *phi_a3;
    Vec3f *phi_t0;
    Vec3f *phi_t1;
    s32 phi_v0;

    this->unk_198 = 8;
    temp_a2 = &this->unk_234;
    phi_a1 = &this->unk_234;
    phi_a3 = &this->unk_240;
    phi_t0 = &this->unk_24C;
    phi_t1 = &this->unk_258;
    phi_v0 = 0;
loop_1:
    temp_v0 = phi_v0 + 4;

    temp_a1 = phi_a1 + 0x30;
    temp_a3 = phi_a3 + 0x30;
    temp_t0 = phi_t0 + 0x30;
    temp_t1 = phi_t1 + 0x30;

    temp_a1->unk-30 = (s32) temp_a2->unk0;
    temp_a1->unk-2C = (s32) temp_a2->unk4;
    temp_a1->unk-28 = (s32) temp_a2->unk8;

    temp_a3->unk-30 = (s32) temp_a2->unk0;
    temp_a3->unk-2C = (s32) temp_a2->unk4;
    temp_a3->unk-28 = (s32) temp_a2->unk8;

    temp_t0->unk-30 = (s32) temp_a2->unk0;
    temp_t0->unk-2C = (s32) temp_a2->unk4;
    temp_t0->unk-28 = (s32) temp_a2->unk8;

    temp_t1->unk-30 = (s32) temp_a2->unk0;
    temp_t1->unk-2C = (s32) temp_a2->unk4;
    temp_t1->unk-28 = (s32) temp_a2->unk8;

    phi_a1 = temp_a1;
    phi_a3 = temp_a3;
    phi_t0 = temp_t0;
    phi_t1 = temp_t1;

    phi_v0 = temp_v0;
    if (temp_v0 != 8) {
        goto loop_1;
    }
    this->actionFunc = func_80ADBD38;
} */


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA1B8.s")
void func_80ADA1B8(EnPoSisters* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600119C, 0.8330000042915344f, 0.0f, SkelAnime_GetFrameCount(&D_0600119C), 3, 0.0f);
    if ((this->unk_194 == 0) || (this->unk_194 == 1)) {
        this->unk_19A = 0x28;
    } else {
        this->unk_19A = 0x4C;
    }
    this->unk_198 = 0;
    D_80ADD784 = 0;
    this->actionFunc = func_80ADBD8C;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA25C.s")
void func_80ADA25C(EnPoSisters* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_060014CC);
    this->unk_198 = 8;
    this->unk_19A = 0x20;
    func_80AD9240(this, this->unk_19A, &this->actor.initPosRot.pos);
    this->actionFunc = func_80ADBEE8;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA2BC.s")
void func_80ADA2BC(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000D40, -3.0f);
    this->unk_198 = 0;
    this->unk_199 = 0x28;
    this->unk_19A = 0x5A;
    this->unk_196 = 0x20;
    this->actor.posRot.rot.y = D_80ADD79C[this->unk_194];
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
    if (this->unk_194 == 0) {
        Flags_SetSwitch(globalCtx, 0x1B);
    }
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_FLAME_IGNITION);
    this->actionFunc = func_80ADBF58;
}

#ifdef NON_MATCHING
// Some reorderings
void func_80ADA35C(EnPoSisters* this, GlobalContext* globalCtx) {
    f32 targetY;
    Player* player;

    player = PLAYER;
    if (this->actionFunc == func_80ADBF58) {
        targetY = this->actor.initPosRot.pos.y;
    } else if ((this->unk_194 == 0) || (this->unk_194 == 3)) {
        targetY = player->actor.posRot.pos.y + 5.0f;
    } else {
        targetY = 832.0f;
    }
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, targetY, 0.5f, 3.0f);
    if (this->unk_196 == 0) {
        this->unk_196 = 0x20;
    }
    if (this->unk_196 != 0) {
        this->unk_196--;
    }
    this->actor.posRot.pos.y += (2.0f + 0.5f * Math_Rand_ZeroOne()) * Math_Sins(this->unk_196 * 0x800);
    if (this->unk_231 == 0xFF && this->actionFunc != func_80ADA8C0 && this->actionFunc != func_80ADA7F0) {
        if (this->actionFunc == func_80ADAC70) {
            func_8002F974(&this->actor, 0x3072);
        } else {
            func_8002F974(&this->actor, 0x3071);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA35C.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA4A8.s")
void func_80ADA4A8(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 0.0f) != 0 && this->unk_19A != 0) {
        this->unk_19A--;
    }
    if (this->unk_19A == 0 || this->actor.xzDistFromLink < 200.0f) {
        func_80AD93C4(this);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA530.s")
void func_80ADA530(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxF(&this->actor.speedXZ, 1.0f, 0.20000000298023224f);
    if (func_800A56C8(&this->skelAnime, 0.0f) != 0 && this->unk_19A != 0) {
        this->unk_19A--;
    }
    if (this->actor.xzDistFromLink < 200.0f && fabsf(this->actor.yDistFromLink + 5.0f) < 30.0f) {
        func_80AD943C(this);
    } else if (this->unk_19A == 0 && Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.20000000298023224f) != 0) {
        func_80AD9368(this);
    }
    if (this->actor.bgCheckFlags & 8) {
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, func_8002DAC0(&this->actor, &this->actor.initPosRot.pos), 0x71C);
    } else if (func_8002DBB0(&this->actor, &this->actor.initPosRot.pos) > 300.0f) {
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, func_8002DAC0(&this->actor, &this->actor.initPosRot.pos), 0x71C);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA6A0.s")
void func_80ADA6A0(EnPoSisters* this, GlobalContext* globalCtx) {
    Player *player;
    s16 temp_v0;

    player = PLAYER;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    temp_v0 = this->actor.yawTowardsLink - player->actor.shape.rot.y;
    Math_ApproxF(&this->actor.speedXZ, 2.0f, 0.20000000298023224f);
    if (temp_v0 >= 0x3001) {
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink + 0x3000, 0x71C);
    } else if (temp_v0 < -0x3000) {
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink - 0x3000, 0x71C);
    } else {
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 0x71C);
    }
    if (this->actor.xzDistFromLink < 160.0f && fabsf(this->actor.yDistFromLink + 5.0f) < 30.0f) {
        func_80AD944C(this);
    } else if (this->actor.xzDistFromLink > 240.0f) {
        func_80AD93C4(this);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA7F0.s")
void func_80ADA7F0(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_19A != 0) {
        this->unk_19A--;
    }
    this->actor.shape.rot.y += 384.0f * ((this->skelAnime.animFrameCount + 1.0f) * 3.0f - this->unk_19A);
    if (this->unk_19A == 0x12 || this->unk_19A == 7) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_ROLL);
    }
    if (this->unk_19A == 0) {
        func_80AD94E0(this);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA8C0.s")
void func_80ADA8C0(EnPoSisters* this, GlobalContext* globalCtx) {
    s32 pad;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 0.0f) != 0 && this->unk_19A != 0) {
        this->unk_19A--;
    }
    this->actor.shape.rot.y += (384.0f * this->skelAnime.animFrameCount) * 3.0f;
    if (this->unk_19A == 0 && ABS((s16)(this->actor.shape.rot.y - this->actor.posRot.rot.y)) < 0x1000) {
        if (this->unk_194 != 0) {
            this->collider.base.type = COLTYPE_UNK3;
            this->collider.base.acFlags &= 0xFFFB;
            func_80AD93C4(this);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH2);
            func_80AD9C24(this, globalCtx);
        }
    }
    if (func_800A56C8(&this->skelAnime, 1.0f) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_ROLL);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA9E8.s")
void func_80ADA9E8(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->actor.shape.rot.y -= (this->actor.speedXZ * 10.0f) * 128.0f;
    if (Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.10000000149011612f) != 0) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        if (this->unk_194 != 0) {
            func_80AD93C4(this);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH2);
            func_80AD9C24(this, globalCtx);
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADAAA4.s")
void func_80ADAAA4(EnPoSisters* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0 && !(this->actor.flags & 0x8000)) {
        if (this->actor.colChkInfo.health != 0) {
            if (this->unk_194 != 0) {
                func_80AD96A4(this);
            } else if (this->unk_195 != 0) {
                func_80AD9C24(this, NULL);
            } else {
                func_80AD9C24(this, globalCtx);
            }
        } else {
            func_80AD99D4(this, globalCtx);
        }
    }
    if (this->unk_195 != 0) {
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.attachedA->shape.rot.y, (this->unk_195 == 2) ? 0x800 : 0x400);
        this->unk_231 = ((this->skelAnime.animFrameCount - this->skelAnime.animCurrentFrame) * 255.0f) / this->skelAnime.animFrameCount;
        this->actor.posRot.pos.y = this->actor.attachedA->posRot.pos.y;
        func_80AD97C8(this, globalCtx);
    } else if (this->unk_194 != 0) {
        Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.5f);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADAC70.s")
void func_80ADAC70(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink + 0x8000, 0x71C);
    if (func_800A56C8(&this->skelAnime, 0.0f) != 0 && this->unk_19A != 0) {
        this->unk_19A--;
    }
    if (this->actor.bgCheckFlags & 8) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        this->unk_199 |= 2;
        func_80AD9718(this);
    } else if (this->unk_19A == 0 && 240.0f < this->actor.xzDistFromLink) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        func_80AD93C4(this);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADAD54.s")
/* void func_80ADAD54(EnPoSisters* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        this->unk_231 = 0;
        this->collider.body.bumper.flags = 0x60001;
        func_80AD93C4(this);
    } else {
        this->unk_231 = ((this->skelAnime.animFrameCount - this->skelAnime.animCurrentFrame) * 255.0f) / this->skelAnime.animFrameCount;
    }
} */

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADAE6C.s")
void func_80ADAE6C(EnPoSisters* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        this->unk_231 = 0xFF;
        if (this->unk_194 != 0) {
            this->unk_199 |= 1;
            this->collider.body.bumper.flags = 0x4FC7FFEA;
            if (this->unk_19A != 0) {
                this->unk_19A--;
            }
            if (this->unk_19A == 0) {
                this->unk_197 = 0x14;
                func_80AD93C4(this);
            }
        } else {
            func_80AD9F1C(this);
        }
    } else {
        this->unk_231 = (this->skelAnime.animCurrentFrame * 255.0f) / this->skelAnime.animFrameCount;
        if (this->unk_194 == 0) {
            func_80AD97C8(this, globalCtx);
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADAFC0.s")
/* void func_80ADAFC0(EnPoSisters* this, GlobalContext* globalCtx) {
    s32 temp_v0_3;
    u8 temp_v0;
    u8 temp_v0_2;
    void *temp_a0;
    void *temp_a1;
    void *temp_v1;
    void *phi_a0;
    void *phi_v1;
    s32 phi_v0;

    temp_v0 = this->unk_198 + 1;
    this->unk_19A++;
    if ((s32) temp_v0 >= 9) {
        this->unk_198 = 8;
    } else {
        this->unk_198 = temp_v0;
    }
    temp_v0_2 = this->unk_198 - 1;
    if ((s32) temp_v0_2 > 0) {
        temp_a1 = this + (temp_v0_2 * 0xC);
        phi_a0 = temp_a1 + 0x228;
        phi_v1 = temp_a1 + 0x234;
        phi_v0 = (s32) temp_v0_2;
loop_5:
        temp_v0_3 = phi_v0 - 1;
        temp_v1 = phi_v1 - 0xC;
        temp_v1->unkC = (s32) phi_a0->unk0;
        temp_a0 = phi_a0 - 0xC;
        temp_v1->unk10 = (s32) phi_a0->unk4;
        temp_v1->unk14 = (s32) temp_a0->unk14;
        phi_a0 = temp_a0;
        phi_v1 = temp_v1;
        phi_v0 = temp_v0_3;
        if (temp_v0_3 > 0) {
            goto loop_5;
        }
    }
    this->unk_234.x = (Math_Sins((this->actor.shape.rot.y + this->unk_19A * 0x3000) - 0x4000) * (3000.0f * this->actor.scale.x)) + this->actor.posRot.pos.x;
    this->unk_234.z = (Math_Coss((this->actor.shape.rot.y + this->unk_19A * 0x3000) - 0x4000) * (3000.0f * this->actor.scale.x)) + this->actor.posRot.pos.z;
    if ((s32) this->unk_19A < 8) {
        this->unk_234.y = this->unk_244 - 9.0f;
    } else {
        this->unk_234.y = this->unk_244 + 2.0f;
        if (this->unk_19A >= 0x10) {
            if (Math_ApproxF(this + 0x50, 0.0f, 0.0010000000474974513f) != 0) {
                func_80AD9A54(this, globalCtx);
            }
            this->actor.scale.z = this->actor.scale.x;
            this->actor.scale.y = this->actor.scale.x;
        }
    }
    if (this->unk_19A == 0x10) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DEAD2);
    }
} */

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB17C.s")
void func_80ADB17C(EnPoSisters* this, GlobalContext* globalCtx) {
    Vec3s* vec;

    this->unk_19A++;
    if (this->unk_19A == 0x40) {
        Flags_SetSwitch(globalCtx, this->actor.params);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 0x1E, NA_SE_EV_FLAME_IGNITION);
        if (this->unk_194 == 0) {
            Flags_UnsetSwitch(globalCtx, 0x1B);
        }
        globalCtx->envCtx.unk_BF = 0xFF;
        func_80078884(NA_SE_SY_CORRECT_CHIME);
        Actor_Kill(&this->actor);
    } else if (this->unk_19A < 0x20) {
        func_80AD9240(this, this->unk_19A, &this->actor.posRot.pos);
    } else {
        func_80AD9240(this, 0x40 - this->unk_19A, &this->actor.posRot.pos);
    }
    if (this->unk_19A == 0x20) {
        vec = &D_80ADD7A4[this->unk_194];
        this->actor.posRot.pos.x = vec->x;
        this->actor.posRot.pos.y = vec->y;
        this->actor.posRot.pos.z = vec->z;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB2B8.s")
void func_80ADB2B8(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->actor.xzDistFromLink < 130.0f) {
        func_80AD9DF0(this, globalCtx);
    }
    if (func_800A56C8(&this->skelAnime, 0.0f) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_CRY);
    }
    this->actor.shape.rot.y = this->actor.yawTowardsLink;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB338.s")
/* void func_80ADB338(EnPoSisters* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->unk_195 == 0) {
        if (func_8002DBB0(player, &this->actor.initPosRot.pos) < 600.0f && this->unk_19C != 0) {
            this->unk_19C--;
        } else {
            this->unk_19C = 0x64;
        }
        if (this->unk_19C == 0) {
            this->actor.shape.rot.y = ((Math_Rand_ZeroOne() * 4.0f) * 0x4000) + this->actor.yawTowardsLink;
            this->actor.posRot.pos.y += 5.0f;
            func_80AD98F4(this, globalCtx);
        }
    } else if (((EnPoSisters*)this->actor.attachedA)->actionFunc == func_80ADB51C) {
        this->actor.draw = EnPoSisters_Draw;
        func_80AD9E60(this);
    } else if (((EnPoSisters*)this->actor.attachedA)->actionFunc == func_80ADAE6C) {
        this->actor.shape.rot.y = this->actor.attachedA->shape.rot.y + (this->unk_195 * 0x4000);
        this->actor.posRot.pos.y += 5.0f;
        func_80AD98F4(this, globalCtx);
    } else if (((EnPoSisters*)this->actor.attachedA)->actionFunc == func_80ADAFC0) {
        Actor_Kill(&this->actor);
    }
} */

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB4B0.s")
void func_80ADB4B0(EnPoSisters* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        func_80AD9E60(this);
    }
    func_80AD97C8(this, globalCtx);
    this->actor.posRot.pos.y += 1.0f;
    Actor_SetHeight(&this->actor, 40.0f);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB51C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB770.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB9F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBB6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBBF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBC88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBD38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBD8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBEE8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBF58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADC034.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADC10C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/EnPoSisters_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADC55C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADC77C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADC970.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/EnPoSisters_Draw.s")
