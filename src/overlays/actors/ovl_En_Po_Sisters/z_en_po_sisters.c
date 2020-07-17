/*
 * File: z_en_po_sisters.c
 * Overlay: ovl_En_Po_Sisters
 * Description: Forest Temple Four Poes
 */

#include "z_en_po_sisters.h"

#define FLAGS 0x00005215

#define THIS ((EnPoSisters*)thisx)

void EnPoSisters_Init(Actor* thisx, GlobalContext* globalCtx);
void EnPoSisters_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnPoSisters_Update(Actor* thisx, GlobalContext* globalCtx);
void EnPoSisters_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80ADA094(EnPoSisters* this, GlobalContext* globalCtx);
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

void func_80AD9AA8(EnPoSisters* this, GlobalContext* globalCtx);
void func_80AD9C24(EnPoSisters* this, GlobalContext* globalCtx);

void func_80AD9D44(EnPoSisters* this);

Color_RGBA8 D_80ADD6F0[4] = {
    { 0xFF, 0xAA, 0xFF, 0xFF },
    { 0xFF, 0xC8, 0x00, 0xFF },
    { 0x00, 0xAA, 0xFF, 0xFF },
    { 0xAA, 0xFF, 0x00, 0xFF },
};

Color_RGBA8 D_80ADD700[4] = {
    { 0x64, 0x00, 0xFF, 0xFF },
    { 0xFF, 0x00, 0x00, 0xFF },
    { 0x00, 0x00, 0xFF, 0xFF },
    { 0x00, 0x96, 0x00, 0xFF },
};

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

ColliderCylinderInit D_80ADD730 = {
    { COLTYPE_UNK3, 0x11, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0x4FC7FFEA, 0x00, 0x00 }, 0x01, 0x05, 0x01 },
    { 18, 60, 15, { 0, 0, 0 } },
};

CollisionCheckInfoInit D_80ADD75C = { 0x0A, 0x0019, 0x003C, 0x28 };

DamageTable D_80ADD764 = {
    0xF0, 0x02, 0x01, 0x02, 0x00, 0x02, 0x02, 0x02, 0xE1, 0xE2, 0xE4, 0x02, 0x02, 0x02, 0x02, 0x02, 
    0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE1, 0xE4, 0xE2, 0xE2, 0xE8, 0xE4, 0x00, 0x00, 0x04, 0x00,
};

s32 D_80ADD784 = 0;

InitChainEntry D_80ADD788[2] = {
    ICHAIN_VEC3F_DIV1000(scale, 7, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 6000, ICHAIN_STOP),
};

Vec3f D_80ADD790 = { 0.0f, 0.0f, 0.0f };

s16 D_80ADD79C[4] = {
    0xB000, 0xD000, 0x5000, 0x3000,
};

Vec3s D_80ADD7A4[4] = {
    { 0xFFEA, 0x0151, 0xF958 },
    { 0xFE51, 0x036F, 0xF2AE },
    { 0x0225, 0x036F, 0xF2AE },
    { 0x06B5, 0x0203, 0xFAC4 },
};

Vec3f D_80ADD7BC = { 120.0f, 250.0f, -1420.0f };

Gfx* D_80ADD7C8[4] = {
    0x06001DE0, 0x06002F88, 0x06003628, 0x06003DC8,
};

Gfx* D_80ADD7D8[4] = {
    0x06001CB0, 0x06002EB8, 0x06003880, 0x06004020,
};

Color_RGBA8 D_80ADD7E8[4] = {
    { 0x50, 0x00, 0x64, 0x00 },
    { 0x50, 0x0F, 0x00, 0x00 },
    { 0x00, 0x46, 0x32, 0x00 },
    { 0x46, 0x46, 0x00, 0x00 },
};

Vec3f D_80ADD7F8 = { 1000.0f, -1700.0f, 0.0f };

extern SkeletonHeader D_060065C8;
extern AnimationHeader D_060014CC;
extern AnimationHeader D_06000D40;
extern AnimationHeader D_06000114;
extern AnimationHeader D_060008C0;
extern AnimationHeader D_06000A54;
extern AnimationHeader D_0600119C;
extern AnimationHeader D_06000680;

extern Gfx D_060027B0[];
extern Gfx D_060046E0[];

extern Gfx D_0404D4E0[];

#ifdef NON_MATCHING
// Single regalloc
void EnPoSisters_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnPoSisters* this;
    ColliderCylinder* collider;

    this = THIS;
    Actor_ProcessInitChain(&this->actor, D_80ADD788);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 50.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_060065C8, &D_060014CC, &this->unk_19E, &this->unk_1E6, 0xC);
    this->unk_22E.r = 255;
    this->unk_22E.g = 255;
    this->unk_22E.b = 210;
    this->unk_22E.a = 255;
    this->light = Lights_Insert(globalCtx, &globalCtx->lightCtx, &this->lightInfo);
    Lights_InitType2PositionalLight(&this->lightInfo, this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z, 0, 0, 0, 0);
    collider = &this->collider;
    Collider_InitCylinder(globalCtx, collider);
    Collider_SetCylinder(globalCtx, collider, &this->actor, &D_80ADD730);
    func_80061ED4(&this->actor.colChkInfo, &D_80ADD764, &D_80ADD75C);
    this->unk_194 = (thisx->params >> 8) & 3;
    this->actor.naviEnemyId = this->unk_194 + 0x50;
    if (1) {}
    this->unk_195 = (thisx->params >> 0xA) & 3;
    this->unk_196 = 0x20;
    this->unk_197 = 0x14;
    this->unk_198 = 1;
    this->unk_199 = 0x20;
    this->unk_294 = 110.0f;
    this->actor.flags &= -2;
    if (this->actor.params & 0x1000) {
        func_80ADA094(this, globalCtx);
    } else if (this->unk_194 == 0) {
        if (this->unk_195 == 0) {
            this->collider.base.maskA = 9;
            func_80AD9AA8(this, globalCtx);
        } else {
            this->actor.flags &= -0x4201;
            this->collider.body.flags = 4;
            this->collider.body.bumper.flags |= 1;
            this->collider.base.maskA = 0;
            func_80AD9C24(this, NULL);
        }
    } else {
        func_80AD9D44(this);
    }
    this->actor.params &= 0x3F;
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/EnPoSisters_Init.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/EnPoSisters_Destroy.s")
void EnPoSisters_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnPoSisters* this = THIS;

    Lights_Remove(globalCtx, &globalCtx->lightCtx, this->light);
    if (this->unk_194 == 0 && this->unk_195 == 0) {
        func_800F5B58();
    }
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

#ifdef NON_MATCHING
// Single reordering
void func_80AD9240(EnPoSisters* this, s32 arg1, Vec3f* arg2) {
    f32 temp_f20;
    s32 phi_s2;
    Vec3f *vec;
    s32 i;

    temp_f20 = SQ(arg1) * 0.1f;
    for (i = 0, phi_s2 = 0; i < this->unk_198; i++, phi_s2 += 0x2000) {
        vec = &this->unk_234[i];
        vec->x = arg2->x + Math_Sins((s16)(this->actor.shape.rot.y + (this->unk_19A * 0x800) + phi_s2)) * temp_f20;
        vec->z = arg2->z + Math_Coss((s16)(this->actor.shape.rot.y + (this->unk_19A * 0x800) + phi_s2)) * temp_f20;
        vec->y = arg2->y + arg1;
    }
}
#else
void func_80AD9240(EnPoSisters* this, s32 arg1, Vec3f* arg2);
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80AD9240.s")
#endif

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
    if (this->unk_22E.a != 0) {
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
        this->unk_22E.a = 0;
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
    this->actor.posRot.pos.y = this->unk_234[0].y;
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
    this->unk_22E.a = 0;
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
    this->unk_22E.a = 0xFF;
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
    this->unk_22E.a = 0xFF;
    this->unk_199 |= 0x15;
    this->actor.flags |= 1;
    this->actionFunc = func_80ADBBF4;
    this->actor.speedXZ = 0.0f;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA094.s")
void func_80ADA094(EnPoSisters* this, GlobalContext* globalCtx) {
    D_80ADD784 = 0;
    this->unk_22E.a = 0;
    this->unk_199 = 0x80;
    this->unk_19A = 0x32;
    this->unk_234[0] = this->actor.initPosRot.pos;
    Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_PROP);
    this->actionFunc = func_80ADBC88;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA10C.s")
void func_80ADA10C(EnPoSisters* this) {
    s32 i;

    this->unk_198 = ARRAY_COUNT(this->unk_234);
    for (i = 0; i < ARRAY_COUNT(this->unk_234); i++) {
        this->unk_234[i] = this->unk_234[0];
    }
    this->actionFunc = func_80ADBD38;
}

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
// Single Regalloc
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
        this->unk_196 -= 1;
    }
    this->actor.posRot.pos.y += (2.0f + 0.5f * Math_Rand_ZeroOne()) * Math_Sins(this->unk_196 * 0x800);
    if (this->unk_22E.a == 0xFF && this->actionFunc != func_80ADA8C0 && this->actionFunc != func_80ADA7F0) {
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
        this->unk_22E.a = ((this->skelAnime.animFrameCount - this->skelAnime.animCurrentFrame) * 255.0f) / this->skelAnime.animFrameCount;
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

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADAD54.s")
void func_80ADAD54(EnPoSisters* this, GlobalContext* globalCtx) {
    s32 animFrameCount;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        this->unk_22E.a = 0;
        this->collider.body.bumper.flags = 0x60001;
        func_80AD93C4(this);
    } else {
        animFrameCount = this->skelAnime.animFrameCount;
        this->unk_22E.a = ((animFrameCount - this->skelAnime.animCurrentFrame) * 255.0f) / animFrameCount;
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADAE6C.s")
void func_80ADAE6C(EnPoSisters* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        this->unk_22E.a = 0xFF;
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
        this->unk_22E.a = (this->skelAnime.animCurrentFrame * 255.0f) / this->skelAnime.animFrameCount;
        if (this->unk_194 == 0) {
            func_80AD97C8(this, globalCtx);
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADAFC0.s")
void func_80ADAFC0(EnPoSisters* this, GlobalContext* globalCtx) {
    s32 temp_v0;
    s32 i;

    temp_v0 = this->unk_198 + 1;
    this->unk_19A++;
    this->unk_198 = (temp_v0 >= 9) ? 8 : temp_v0;
    for (i = this->unk_198-1; i > 0; i--) {
        this->unk_234[i] = this->unk_234[i-1];
    }
    this->unk_234[0].x = (Math_Sins((this->actor.shape.rot.y + this->unk_19A * 0x3000) - 0x4000) * (3000.0f * this->actor.scale.x)) + this->actor.posRot.pos.x;
    this->unk_234[0].z = (Math_Coss((this->actor.shape.rot.y + this->unk_19A * 0x3000) - 0x4000) * (3000.0f * this->actor.scale.x)) + this->actor.posRot.pos.z;
    if (this->unk_19A < 8) {
        this->unk_234[0].y = this->unk_234[1].y - 9.0f;
    } else {
        this->unk_234[0].y = this->unk_234[1].y + 2.0f;
        if (this->unk_19A >= 0x10) {
            if (Math_ApproxF(&this->actor.scale, 0.0f, 0.0010000000474974513f) != 0) {
                func_80AD9A54(this, globalCtx);
            }
            this->actor.scale.z = this->actor.scale.x;
            this->actor.scale.y = this->actor.scale.x;
        }
    }
    if (this->unk_19A == 0x10) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DEAD2);
    }
}

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

#ifdef NON_MATCHING
// Regalloc
void func_80ADB338(EnPoSisters* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    EnPoSisters* attached = (EnPoSisters*)this->actor.attachedA;

    if (this->unk_195 == 0) {
        if (func_8002DBB0(player, &this->actor.initPosRot.pos) < 600.0f) {
            if (this->unk_19C != 0) {
                this->unk_19C -= 1;
            }
        } else {
            this->unk_19C = 0x64;
        }
        if (this->unk_19C == 0) {
            this->actor.shape.rot.y = this->actor.yawTowardsLink + ((s16)(Math_Rand_ZeroOne() * 4.0f) * 0x4000);
            this->actor.posRot.pos.y = player->actor.posRot.pos.y + 5.0f;
            func_80AD98F4(this, globalCtx);
        }
    } else if (attached->actionFunc == func_80ADB51C) {
        this->actor.draw = EnPoSisters_Draw;
        func_80AD9E60(this);
    } else if (attached->actionFunc == func_80ADAE6C) {
        this->actor.shape.rot.y = attached->actor.shape.rot.y + (this->unk_195 * 0x4000);
        this->actor.posRot.pos.y = player->actor.posRot.pos.y + 5.0f;
        func_80AD98F4(this, globalCtx);
    } else if (attached->actionFunc == func_80ADAFC0) {
        Actor_Kill(&this->actor);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB338.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB4B0.s")
void func_80ADB4B0(EnPoSisters* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        func_80AD9E60(this);
    }
    func_80AD97C8(this, globalCtx);
    this->actor.posRot.pos.y += 1.0f;
    Actor_SetHeight(&this->actor, 40.0f);
}

#ifdef NON_MATCHING
// Regalloc, single reordering
void func_80ADB51C(EnPoSisters* this, GlobalContext* globalCtx) {
    f32 temp_f2;
    s16 phi_v0;
    s16 phi_a2;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    temp_f2 = this->skelAnime.animFrameCount * 0.5f;
    this->unk_22E.a = (fabsf(temp_f2 - this->skelAnime.animCurrentFrame) * 255.0f) / temp_f2;
    if (this->unk_19A != 0) {
        this->unk_19A--;
    }
    if (this->unk_19A == 0) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y += (s16)(Math_Rand_ZeroOne() * 4.0f) * 0x4000;
        if (this->unk_195 == 0) {
            func_800F5ACC(0x38);
        }
        func_80AD9F1C(this);
    } else {
        this->actor.posRot.pos.y += 0.1f;
        if (this->unk_195 != 0) {
            if (this->unk_19A >= 0x5B) {
                phi_v0 = 1;
                phi_a2 = 0x40;
            } else  if (this->unk_19A >= 0x47) {
                phi_v0 = 0;
                phi_a2 = 0x40;
            } else if (this->unk_19A >= 0x38) {
                phi_v0 = 1;
                phi_a2 = 0x60;
            } else if (this->unk_19A >= 0x29) {
                phi_v0 = 0;
                phi_a2 = 0x60;
            } else {
                phi_v0 = 1;
                phi_a2 = 0x100;
            }
            if (this->unk_195 == 2) {
                phi_a2 *= 2;
            }
            Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.attachedA->shape.rot.y + ((this->unk_195 * 0x4000) * phi_v0), phi_a2);
        } else if (this->unk_19A == 0x46 || this->unk_19A == 0x28) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH2);
        }
    }
    func_80AD97C8(this, globalCtx);
    Actor_SetHeight(&this->actor, 40.0f);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB51C.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB770.s")
void func_80ADB770(EnPoSisters* this, GlobalContext* globalCtx) {
    s32 temp_v0;
    s32 phi_a0;

    if (this->unk_19A != 0) {
        this->unk_19A--;
    }
    if (this->unk_19C > 0) {
        if (this->unk_19A >= 0x10) {
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            if (this->unk_195 == 0) {
                if (ABS((s16)(0x10 - this->unk_196)) < 0xE) {
                    this->actor.shape.rot.y += (0x580 - (this->unk_19C * 0x180)) * fabsf(Math_Sins(this->unk_196 << 0xB));
                }
                if (this->unk_19A >= 0x11C || this->unk_19A < 0x1F) {
                    this->unk_199 |= 0x40;
                } else {
                    this->unk_199 &= 0xFFBF;
                }
            } else {
                this->actor.shape.rot.y = (s16)(this->actor.attachedA->shape.rot.y + (this->unk_195 * 0x4000));
            }
        }
    }
    if (this->unk_195 == 0) {
        if (this->unk_19A >= 0x11C || (this->unk_19A < 0x1F && this->unk_19A >= 0x10)) {
            this->unk_199 |= 0x40;
        } else {
            this->unk_199 &= 0xFFBF;
        }
    }
    if (600.0f < func_8002DBB0(PLAYER, &this->actor.initPosRot.pos)) {
        this->unk_199 &= 0xFFBF;
        func_80AD9C24(this, globalCtx);
    } else if (this->unk_19A == 0) {
        if (this->unk_195 == 0) {
            func_80AD94E0(this);
        } else {
            func_80AD9C24(this, globalCtx);
        }
    } else if (this->unk_195 != 0) {
        EnPoSisters* attached = (EnPoSisters*)this->actor.attachedA;
        if (attached->actionFunc == func_80ADAAA4) {
            func_80AD95D8(this);
        }
    } else if (this->unk_19C == 0) {
        this->unk_19C = -0xF;
    } else if (this->unk_19C < 0) {
        this->unk_19C++;
        if (this->unk_19C == 0) {
            func_80AD94E0(this);
        }
    }
    func_80AD97C8(this, globalCtx);
}

#ifdef NON_MATCHING
// Regalloc
void func_80ADB9F0(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime* skelAnime = &this->skelAnime;

    if (SkelAnime_FrameUpdateMatrix(skelAnime) != 0) {
        this->unk_22E.a = 0xFF;
        if (this->unk_194 == 3) {
            this->actor.flags |= 1;
            this->actor.initPosRot.pos.x = 1992.0f;
            this->actor.initPosRot.pos.z = -1440.0f;
            this->unk_199 |= 0x18;
            func_80AD93C4(this);
        } else {
            func_80AD9F90(this);
        }
    } else {
        this->unk_22E.a = 255.0f * (this->skelAnime.animCurrentFrame / this->skelAnime.animFrameCount);
    }
    if (this->unk_194 != 3 && func_800A56C8(skelAnime, 1.0f) != 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_APPEAR);
    }
    Actor_SetHeight(&this->actor, 40.0f);
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADB9F0.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBB6C.s")
void func_80ADBB6C(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_8002DBB0(&this->actor, &this->actor.initPosRot.pos) < 10.0f) {
        func_80ADA028(this);
    } else {
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, func_8002DAC0(&this->actor, &this->actor.initPosRot.pos), 0x71C);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBBF4.s")
void func_80ADBBF4(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 0x71C);
    if (this->actor.xzDistFromLink < 240.0f && fabsf(this->actor.yDistFromLink + 5.0f) < 30.0f) {
        func_80AD93C4(this);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBC88.s")
void func_80ADBC88(EnPoSisters* this, GlobalContext* globalCtx) {
    if (D_80ADD784 != 0 || func_8008E988(globalCtx) == 0) {
        if (this->unk_19A != 0) {
            this->unk_19A--;
        }
        if (this->unk_19A == 0x1E) {
            if (this->unk_194 == 0) {
                func_800800F8(globalCtx, 0xC44, 0x3E7, NULL, 0);
            }
            D_80ADD784 = 1;
        }
        if (this->unk_19A == 0) {
            func_80ADA10C(this);
        }
    }
    func_8002F974(&this->actor, NA_SE_EV_TORCH & ~0x0800);
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBD38.s")
void func_80ADBD38(EnPoSisters* this, GlobalContext* globalCtx) {
    this->unk_19A++;
    func_80AD9240(this, this->unk_19A, &this->actor.initPosRot.pos);
    if (this->unk_19A == 0x20) {
        func_80ADA1B8(this);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBD8C.s")
void func_80ADBD8C(EnPoSisters* this, GlobalContext* globalCtx) {
    this->unk_19A--;
    if (this->unk_19A == 0) {
        Audio_PlayActorSound2(&this->actor, 0x3873);
        this->unk_199 &= 0xFF7F;
    }
    if (this->unk_19A <= 0) {
        if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
            this->unk_22E.a = 0xFF;
            D_80ADD784 |= (1 << this->unk_194);
        } else {
            this->unk_22E.a = (this->skelAnime.animCurrentFrame * 255.0f) / this->skelAnime.animFrameCount;
        }
    }
    if (D_80ADD784 == 0xF) {
        func_80ADA25C(this);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBEE8.s")
void func_80ADBEE8(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_19A != 0) {
        this->unk_19A--;
    }
    func_80AD9240(this, this->unk_19A, &this->actor.initPosRot.pos);
    if (this->unk_19A == 0) {
        func_80ADA2BC(this, globalCtx);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADBF58.s")
void func_80ADBF58(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->unk_19A--;
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.posRot.rot.y, 0x500);
    if (this->unk_19A == 0 && this->unk_194 == 0) {
        globalCtx->envCtx.unk_BF = 4;
    }
    if (this->unk_19A < 0) {
        Math_ApproxF(&this->actor.speedXZ, 5.0f, 0.2f);
    }
    if (this->unk_19A == -0x46 && this->unk_194 == 1) {
        Audio_PlaySoundAtPosition(globalCtx, &D_80ADD7BC, 0x28, NA_SE_EN_PO_LAUGH);
    }
    if (this->unk_19A < -0x78) {
        Actor_Kill(&this->actor);
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADC034.s")
void func_80ADC034(EnPoSisters* this, GlobalContext* globalCtx) {
    if (this->actor.unk_10C != 0 && this->unk_22E.a == 0xFF) {
        if (this->unk_197 != 0) {
            this->unk_197--;
        }
    } else {
        this->unk_197 = 0x14;
    }
    if (this->unk_22E.a == 0) {
        if (this->unk_19C != 0) {
            this->unk_19C--;
        }
    }
    if (this->actionFunc != func_80ADA7F0 && this->actionFunc != func_80ADA8C0 && 
        this->actionFunc != func_80ADAAA4) {
        if (this->unk_197 == 0) {
            func_80AD9718(this);
            return;
        }
        if (this->unk_19C == 0 && this->unk_22E.a == 0) {
            func_80AD98F4(this, globalCtx);
        }
    }
}

#ifdef NON_MATCHING
// Weird control flow
void func_80ADC10C(EnPoSisters* this, GlobalContext *globalCtx) {
    Vec3f sp24;

    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= 0xFFFD;
        func_80035650(&this->actor, &this->collider.body, 1);
        if (this->unk_195 != 0) {
            ((EnPoSisters*)this->actor.attachedA)->unk_19C--;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH2);
            func_80AD9C24(this, globalCtx);
            if (Math_Rand_ZeroOne() < 0.2f) {
                sp24.x = this->actor.posRot.pos.x;
                sp24.y = this->actor.posRot.pos.y;
                sp24.z = this->actor.posRot.pos.z;
                Item_DropCollectible(globalCtx, &sp24, 8);
            }
        } else if ((this->collider.base.type != 9 && this->actor.colChkInfo.damageEffect == 0) || 
                    (this->actor.colChkInfo.damage != 0 && this->unk_194 == 0)) {
            this->actor.freezeTimer = 0;
        } else if (this->actor.colChkInfo.damageEffect == 0xF) {
            this->unk_199 |= 2;
            this->actor.posRot.rot.y = this->actor.shape.rot.y;
            func_80AD98F4(this, globalCtx);
        } else if (this->unk_194 == 0 && this->actor.colChkInfo.damageEffect == 0xE && this->actionFunc == func_80ADB770) {
            if (this->unk_19C == 0) {
                this->unk_19C = -0x2D;
            }
        } else {
            if (Actor_ApplyDamage(&this->actor) != 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DAMAGE);
            } else {
                func_80032C7C(globalCtx, &this->actor);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_SISTER_DEAD);
            }
            func_80AD95D8(this);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADC10C.s")
#endif

#ifdef NON_MATCHING
// Regalloc, branch likely
void EnPoSisters_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnPoSisters* this;
    Vec3f sp38;
    UNK_TYPE sp34;
    ColliderCylinder* collider;

    this = THIS;
    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= 0xFFFD;
        func_80AD9568(this);
    }
    func_80ADC10C(this, globalCtx);
    if (this->unk_199 & 4) {
        func_80ADC034(this, globalCtx);
    }
    this->actionFunc(this, globalCtx);
    if (this->unk_199 & 0x1F) {
        if (this->unk_199 & 8) {
            func_80ADA35C(this, globalCtx);
        }
        Actor_MoveForward(&this->actor);
        if (this->unk_199 & 0x10) {
            func_8002E4B4(globalCtx, &this->actor, 20.0f, 20.0f, 0.0f, 5);
        } else {
            sp38.x = this->actor.posRot.pos.x;
            sp38.y = this->actor.posRot.pos.y + 10.0f;
            sp38.z = this->actor.posRot.pos.z;
            this->actor.groundY = func_8003C9A4(&globalCtx->colCtx, &this->actor.floorPoly, &sp34, &this->actor, &sp38);
        }
        collider = &this->collider;
        Collider_CylinderUpdate(&this->actor, collider);
        if (this->actionFunc == func_80ADA8C0 || this->actionFunc == func_80ADA7F0) {
            this->unk_198 = CLAMP_MAX((u8)(this->unk_198 + 1), 8);
        } else if (this->actionFunc != func_80ADAFC0) {
            this->unk_198 = CLAMP_MIN((s16)(this->unk_198 - 1), 1);
        }
        if (this->actionFunc == func_80ADA8C0) {
            this->actor.flags |= 0x1000000;
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &collider->base);
        }
        if (this->unk_199 & 1) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &collider->base);
        }
        if (this->actionFunc != func_80ADB338) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &collider->base);
        }
        Actor_SetHeight(&this->actor, 40.0f);
        if (this->actionFunc == func_80ADAC70) {
            this->actor.shape.rot.y = this->actor.posRot.rot.y + 0x8000;
        } else if (this->unk_199 & 2) {
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/EnPoSisters_Update.s")
#endif

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADC55C.s")
void func_80ADC55C(EnPoSisters* this) {
    s16 temp_var; // required for matching

    if (this->skelAnime.animCurrentSeg == &D_06000114) {
        this->unk_22E.r = CLAMP_MAX((s16)(this->unk_22E.r + 5), 0xFF);
        this->unk_22E.g = CLAMP_MIN((s16)(this->unk_22E.g - 5), 0x32);
        temp_var = this->unk_22E.b - 5;
        this->unk_22E.b = CLAMP_MIN(temp_var, 0x00);
    } else if (this->skelAnime.animCurrentSeg == &D_06000A54) {
        this->unk_22E.r = CLAMP_MAX((s16)(this->unk_22E.r + 5), 0x50);
        this->unk_22E.g = CLAMP_MAX((s16)(this->unk_22E.g + 5), 0xFF);
        temp_var = this->unk_22E.b + 5;
        this->unk_22E.b = CLAMP_MAX(temp_var, 0xE1);
    } else if (this->skelAnime.animCurrentSeg == &D_060008C0) {
        if (this->actor.dmgEffectTimer & 2) {
            this->unk_22E.r = 0;
            this->unk_22E.g = 0;
            this->unk_22E.b = 0;
        } else {
            this->unk_22E.r = 0x50;
            this->unk_22E.g = 0xFF;
            this->unk_22E.b = 0xE1;
        }
    } else {
        this->unk_22E.r = CLAMP_MAX((s16)(this->unk_22E.r + 5), 0xFF);
        this->unk_22E.g = CLAMP_MAX((s16)(this->unk_22E.g + 5), 0xFF);
        if (this->unk_22E.b >= 0xD3) {
            temp_var = this->unk_22E.b - 5;
            this->unk_22E.b = CLAMP_MIN(temp_var, 0xD2);
        } else {
            temp_var = this->unk_22E.b + 5;
            this->unk_22E.b = CLAMP_MAX(temp_var, 0xD2);
        }
    }
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADC77C.s")
// OverrideLimbDraw2
s32 func_80ADC77C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx, Gfx** gfxP) {
    EnPoSisters* this = THIS;
    Color_RGBA8* color;

    if (limbIndex == 1 && (this->unk_199 & 0x40)) {
        if (this->unk_19A >= 0x11C) {
            rot->x += (this->unk_19A * 0x1000) + 0xFFEE4000;
        } else {
            rot->x += (this->unk_19A * 0x1000) + 0xFFFF1000;
        }
    }
    if (this->unk_22E.a == 0 || limbIndex == 8 || (this->actionFunc == func_80ADAFC0 && this->unk_19A >= 8)) {
        *dList = NULL;
    } else if (limbIndex == 9) {
        *dList = D_80ADD7C8[this->unk_194];
    } else if (limbIndex == 0xA) {
        *dList = D_80ADD7D8[this->unk_194];
        gDPPipeSync((*gfxP)++);
        gDPSetEnvColor((*gfxP)++, this->unk_22E.r, this->unk_22E.g, this->unk_22E.b, this->unk_22E.a);
    } else if (limbIndex == 0xB) {
        color = &D_80ADD7E8[this->unk_194];
        gDPPipeSync((*gfxP)++);
        gDPSetEnvColor((*gfxP)++, color->r, color->g, color->b, this->unk_22E.a);
    }
    return 0;
}

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADC970.s")
// PostLimbDraw2
void func_80ADC970(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx, Gfx** gfxP) {
    EnPoSisters* this;
    s32 i;
    s32 pad;

    this = THIS;
    if (this->actionFunc == func_80ADAFC0 && this->unk_19A >= 8 && limbIndex == 9) {
        gSPMatrix((*gfxP)++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_sisters.c", 0xB3C), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList((*gfxP)++, D_060046E0);
    }
    if (limbIndex == 8 && this->actionFunc != func_80ADB2B8) {
        if ((this->unk_199 & 0x20) != 0) {
            for (i = this->unk_198-1; i > 0; i--) {
                 this->unk_234[i] = this->unk_234[i-1];
            }
            Matrix_MultVec3f(&D_80ADD7F8, &this->unk_234);
        } else if (this->actionFunc == func_80ADBD8C) {
            Matrix_MultVec3f(&D_80ADD7F8, &this->actor.initPosRot.pos);
        }
        if (this->unk_198 > 0) {
            Color_RGB8* color = &D_80ADD6F0[this->unk_194];
            f32 temp_f2 = Math_Rand_ZeroOne() * 0.3f + 0.7f;

            if (this->actionFunc == func_80ADB17C || this->actionFunc == func_80ADBD38 || this->actionFunc == func_80ADBEE8) {
                Lights_InitType0PositionalLight(&this->lightInfo, 
                                this->unk_234[0].x, this->unk_234[0].y + 15.0f, this->unk_234[0].z, 
                                color->r * temp_f2, color->g * temp_f2, color->b * temp_f2, 
                                0xC8);
            } else {
                Lights_InitType2PositionalLight(&this->lightInfo, 
                                this->unk_234[0].x, this->unk_234[0].y + 15.0f, this->unk_234[0].z, 
                                color->r * temp_f2, color->g * temp_f2, color->b * temp_f2, 
                                0xC8);
            }
        } else {
            Lights_SetPositionalLightColorAndRadius(&this->lightInfo, 0, 0, 0, 0);
        }
        if (!(this->unk_199 & 0x80)) {
            Matrix_Get(&this->unk_2F8);
        }
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/EnPoSisters_Draw.s")
// weird pattern
/* void EnPoSisters_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnPoSisters* this;
    void *spF4;
    Gfx *spC4;
    void *sp84;
    void *sp7C;
    u32 sp78;
    Gfx *temp_v0_10;
    Gfx *temp_v0_11;
    Gfx *temp_v0_12;
    Gfx *temp_v0_13;
    Gfx *temp_v0_2;
    Gfx *temp_v0_3;
    Gfx *temp_v0_4;
    Gfx *temp_v0_5;
    Gfx *temp_v0_6;
    Gfx *temp_v0_7;
    Gfx *temp_v0_8;
    Gfx *temp_v0_9;
    GraphicsContext *gfxCtx;
    f32 temp_f20;
    s32 temp_lo;
    s32 temp_lo_2;
    s32 temp_lo_3;
    s32 temp_s1_2;
    s32 temp_s5;
    u8 temp_s5_2;
    u8 temp_v0;
    Color_RGBA8 *temp_s1;
    Color_RGBA8 *temp_s7;
    u8 phi_s5;
    EnPoSisters *phi_s2;
    s32 i;
    f32 phi_f20;
    f32 phi_f0;
    f32 phi_f2;
    s32 phi_at;
    s32 phi_at_2;
    s32 phi_at_3;
    s32 phi_at_4;
    u8 spE7;

    this = THIS;
    temp_s1 = &D_80ADD700[this->unk_194];
    temp_s7 = &D_80ADD6F0[this->unk_194];
    gfxCtx = globalCtx->state.gfxCtx;
    Graph_OpenDisps(&spC4, globalCtx->state.gfxCtx, "../z_en_po_sisters.c", 0xBAD);
    func_80ADC55C(this);
    func_80093D18(globalCtx->state.gfxCtx);
    func_80093D84(globalCtx->state.gfxCtx);
    if (this->unk_22E.a == 0xFF || this->unk_22E.a == 0) {
        gDPSetEnvColor(gfxCtx->polyOpa.p++, this->unk_22E.r, this->unk_22E.g, this->unk_22E.b, this->unk_22E.a);
        gSPSegment(gfxCtx->polyOpa.p++, 0x09, D_80116280 + 2);
        gfxCtx->polyOpa.p = SkelAnime_Draw2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_80ADC77C, func_80ADC970, &this->actor, gfxCtx->polyOpa.p);
    } else {
        gDPSetEnvColor(gfxCtx->polyXlu.p++, 0xFF, 0xFF, 0xFF, this->unk_22E.a);
        gSPSegment(gfxCtx->polyXlu.p++, 0x09, D_80116280);
        gfxCtx->polyXlu.p = SkelAnime_Draw2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_80ADC77C, func_80ADC970, &this->actor, gfxCtx->polyXlu.p);
    }
    if (!(this->unk_199 & 0x80)) {
        Matrix_Put(&this->unk_2F8);
        gSPMatrix(gfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_sisters.c", 0xBDA), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyOpa.p++, D_060027B0);
    }
    gSPSegment(gfxCtx->polyXlu.p++, 0x08, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0, ((-globalCtx->gameplayFrames) * 0x14) & 0x1FF, 0x20, 0x80));
    gDPSetEnvColor(gfxCtx->polyXlu.p++, temp_s1->r, temp_s1->g, temp_s1->b, temp_s1->a);
    if (this->actionFunc == func_80ADB17C) {
        if (this->unk_19A < 0x20) {
            * phi_at_4 = (0x20 - this->unk_19A) * 0xFF;
            if (phi_at_4 < 0) {
                phi_at_4 += 0x1F;
            } *
            phi_s5 = ((0x20 - this->unk_19A) * 0xFF) >> 5;
            phi_f20 = 0.0056000003f;
        } else {
            * phi_at_4 = this->unk_19A * 0xFF;
            if (phi_at_4 < 0) {
                phi_at_4 += 0x1F;
            } *
            phi_s5 = (this->unk_19A * 0xFF) >> 5;
            phi_f20 = 0.0027f;
        }
    } else if (this->actionFunc == func_80ADBD38) {
        phi_s5 = ((0x20 - this->unk_19A) * 0xFF) >> 5;
        phi_f20 = 0.0027f;
    } else if (this->actionFunc == func_80ADBEE8) {
        phi_at = (0x20 - this->unk_19A) * 0xFF;
        if (phi_at < 0) {
            phi_at += 0x1F;
        }
        phi_s5 = phi_at >> 5;
        if (1) {}
        phi_f20 = 0.0035f;
    } else if (this->actionFunc == func_80ADBC88) { //! @bug uninitialised spE7
        phi_s5 = spE7;
        phi_f20 = 0.0027f;
    } else {
        phi_s5 = spE7;
        phi_f20 = this->actor.scale.x * 0.5f;
    }
    for (i = 0; i < this->unk_198; i++) {
        if (this->actionFunc != func_80ADB17C && this->actionFunc != func_80ADBD38 && this->actionFunc != func_80ADBEE8) {
            phi_s5 = (-i * 31 + 0xF8) & 0xFF;
        }
        gDPPipeSync(gfxCtx->polyXlu.p++);
        gDPSetPrimColor(gfxCtx->polyXlu.p++, 0x80, 0x80, temp_s7->r, temp_s7->g, temp_s7->b, phi_s5);
        Matrix_Translate(this->unk_234[i].x, this->unk_234[i].y, this->unk_234[i].z, MTXMODE_NEW);
        Matrix_RotateRPY(0, (s16)(func_8005A9F4(ACTIVE_CAM) + 0x8000), 0, MTXMODE_APPLY);
        if (func_80ADAFC0 == this->actionFunc) {
            temp_f20 = (this->unk_19A - i) * 0.025f + 0.5f;
            if (temp_f20 < 0.5f) {
                phi_f0 = 0.5f;
            } else if (0.8f < temp_f20) {
                phi_f0 = 0.8f;
            } else {
                phi_f0 = temp_f20;
            }
            phi_f20 = phi_f0 * 0.007f;
        }
        Matrix_Scale(phi_f20, phi_f20, phi_f20, MTXMODE_APPLY);
        gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_sisters.c", 0xC3C), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++, D_0404D4E0);
    }
    Graph_CloseDisps(&spC4, globalCtx->state.gfxCtx, "../z_en_po_sisters.c", 0xC43);
} */
