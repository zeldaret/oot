/*
 * File: z_en_po_sisters.c
 * Overlay: ovl_En_Po_Sisters
 * Description: Forest Temple Four Poe Sisters
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

static Color_RGBA8 D_80ADD6F0[4] = {
    { 255, 170, 255, 255 },
    { 255, 200, 0, 255 },
    { 0, 170, 255, 255 },
    { 170, 255, 0, 255 },
};

static Color_RGBA8 D_80ADD700[4] = {
    { 100, 0, 255, 255 },
    { 255, 0, 0, 255 },
    { 0, 0, 255, 255 },
    { 0, 150, 0, 255 },
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

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK3, 0x11, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0x4FC7FFEA, 0x00, 0x00 }, 0x01, 0x05, 0x01 },
    { 18, 60, 15, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 0x0A, 0x0019, 0x003C, 0x28 };

static DamageTable sDamageTable = {
    0xF0, 0x02, 0x01, 0x02, 0x00, 0x02, 0x02, 0x02, 0xE1, 0xE2, 0xE4, 0x02, 0x02, 0x02, 0x02, 0x02,
    0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE1, 0xE4, 0xE2, 0xE2, 0xE8, 0xE4, 0x00, 0x00, 0x04, 0x00,
};

static s32 D_80ADD784 = 0;

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 7, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 6000, ICHAIN_STOP),
};

static Vec3f sZeroVector = { 0.0f, 0.0f, 0.0f };

static s16 D_80ADD79C[4] = { 0xB000, 0xD000, 0x5000, 0x3000 };

static Vec3s D_80ADD7A4[4] = {
    { -22, 337, -1704 },
    { -431, 879, -3410 },
    { 549, 879, -3410 },
    { 1717, 515, -1340 },
};

static Vec3f D_80ADD7BC = { 120.0f, 250.0f, -1420.0f };

static Gfx* D_80ADD7C8[4] = { 0x06001DE0, 0x06002F88, 0x06003628, 0x06003DC8 };

static Gfx* D_80ADD7D8[4] = { 0x06001CB0, 0x06002EB8, 0x06003880, 0x06004020 };

static Color_RGBA8 D_80ADD7E8[4] = {
    { 80, 0, 100, 0 },
    { 80, 15, 0, 0 },
    { 0, 70, 50, 0 },
    { 70, 70, 0, 0 },
};

static Vec3f D_80ADD7F8 = { 1000.0f, -1700.0f, 0.0f };

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

void EnPoSisters_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnPoSisters* this = THIS;
    s32 pad;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 50.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_060065C8, &D_060014CC, this->limbDrawTable,
                   this->transitionDrawTable, 12);
    this->unk_22E.r = 255;
    this->unk_22E.g = 255;
    this->unk_22E.b = 210;
    this->unk_22E.a = 255;
    this->lightNode = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &this->lightInfo);
    Lights_PointGlowSetInfo(&this->lightInfo, this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y,
                            this->actor.initPosRot.pos.z, 0, 0, 0, 0);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    func_80061ED4(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    this->unk_194 = (thisx->params >> 8) & 3;
    this->actor.naviEnemyId = this->unk_194 + 0x50;
    if (1) {}
    this->unk_195 = (thisx->params >> 0xA) & 3;
    this->unk_196 = 32;
    this->unk_197 = 20;
    this->unk_198 = 1;
    this->unk_199 = 32;
    this->unk_294 = 110.0f;
    this->actor.flags &= ~1;
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

void EnPoSisters_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnPoSisters* this = THIS;

    LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, this->lightNode);
    if (this->unk_194 == 0 && this->unk_195 == 0) {
        func_800F5B58();
    }
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80AD9240(EnPoSisters* this, s32 arg1, Vec3f* arg2) {
    f32 temp_f20 = SQ(arg1) * 0.1f;
    Vec3f* vec;
    s32 i;

    for (i = 0; i < this->unk_198; i++) {
        vec = &this->unk_234[i];
        vec->x = arg2->x + Math_Sins((s16)(this->actor.shape.rot.y + (this->unk_19A * 0x800) + i * 0x2000)) * temp_f20;
        vec->z = arg2->z + Math_Coss((s16)(this->actor.shape.rot.y + (this->unk_19A * 0x800) + i * 0x2000)) * temp_f20;
        vec->y = arg2->y + arg1;
    }
}

void func_80AD9368(EnPoSisters* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060014CC, -3.0f);
    this->unk_19A = Math_Rand_S16Offset(2, 3);
    this->actionFunc = func_80ADA4A8;
    this->actor.speedXZ = 0.0f;
}

void func_80AD93C4(EnPoSisters* this) {
    if (this->actionFunc != func_80ADA6A0) {
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000D40, -3.0f);
    }
    this->unk_19A = Math_Rand_S16Offset(0xF, 3);
    this->unk_199 |= 7;
    this->actionFunc = func_80ADA530;
}

void func_80AD943C(EnPoSisters* this) {
    this->actionFunc = func_80ADA6A0;
}

void func_80AD944C(EnPoSisters* this) {
    if (this->unk_22E.a != 0) {
        this->collider.base.type = COLTYPE_METAL_SHIELD;
        this->collider.base.acFlags |= 4;
    }
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000114, -5.0f);
    this->actor.speedXZ = 0.0f;
    this->unk_19A = SkelAnime_GetFrameCount(&D_06000114) * 3 + 3;
    this->unk_199 &= ~2;
    this->actionFunc = func_80ADA7F0;
}

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

void func_80AD9568(EnPoSisters* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000D40, -3.0f);
    this->actor.posRot.rot.y = this->actor.yawTowardsLink + 0x8000;
    if (this->unk_194 != 0) {
        this->collider.base.type = COLTYPE_UNK3;
        this->collider.base.acFlags &= ~4;
    }
    this->actionFunc = func_80ADA9E8;
}

void func_80AD95D8(EnPoSisters* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060008C0, -3.0f);
    if (this->collider.base.ac != NULL) {
        this->actor.posRot.rot.y = (this->collider.body.acHitItem->toucher.flags & 0x1F824)
                                       ? this->collider.base.ac->posRot.rot.y
                                       : func_8002DA78(&this->actor, this->collider.base.ac) + 0x8000;
    }
    if (this->unk_194 != 0) {
        this->actor.speedXZ = 10.0f;
    }
    this->unk_199 &= ~0xB;
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0x10);
    this->actionFunc = func_80ADAAA4;
}

void func_80AD96A4(EnPoSisters* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000A54, -3.0f);
    this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x8000;
    this->unk_19A = 5;
    this->unk_199 |= 0xB;
    this->actor.speedXZ = 5.0f;
    this->actionFunc = func_80ADAC70;
}

void func_80AD9718(EnPoSisters* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600119C, 1.5f, 0.0f, SkelAnime_GetFrameCount(&D_0600119C), 2, -3.0f);
    this->actor.speedXZ = 0.0f;
    this->unk_19C = 100;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->unk_199 &= ~5;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DISAPPEAR);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH2);
    this->actionFunc = func_80ADAD54;
}

void func_80AD97C8(EnPoSisters* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 sp20;

    if (this->unk_195 == 0 || this->actionFunc != func_80ADAAA4) {
        if ((player->swordState == 0 || player->swordAnimation >= 24) &&
            player->actor.posRot.pos.y - player->actor.groundY < 1.0f) {
            Math_ApproxF(&this->unk_294, 110.0f, 3.0f);
        } else {
            Math_ApproxF(&this->unk_294, 170.0f, 10.0f);
        }
        sp20 = this->unk_294;
    } else if (this->unk_195 != 0) {
        sp20 = this->actor.parent->xzDistFromLink;
    }
    this->actor.posRot.pos.x = (Math_Sins(this->actor.shape.rot.y + 0x8000) * sp20) + player->actor.posRot.pos.x;
    this->actor.posRot.pos.z = (Math_Coss(this->actor.shape.rot.y + 0x8000) * sp20) + player->actor.posRot.pos.z;
}

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
    this->unk_19A = 15;
    this->actor.speedXZ = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_APPEAR);
    this->unk_199 &= ~1;
    this->actionFunc = func_80ADAE6C;
}

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

void func_80AD9A54(EnPoSisters* this, GlobalContext* globalCtx) {
    this->unk_19A = 0;
    this->actor.posRot.pos.y = this->unk_234[0].y;
    Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x80);
    this->actionFunc = func_80ADB17C;
}

// Meg spawning fakes
void func_80AD9AA8(EnPoSisters* this, GlobalContext* globalCtx) {
    Actor* actor1 = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_PO_SISTERS, this->actor.posRot.pos.x,
                                this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0x400);
    Actor* actor2 = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_PO_SISTERS, this->actor.posRot.pos.x,
                                this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0x800);
    Actor* actor3 = Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_PO_SISTERS, this->actor.posRot.pos.x,
                                this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0xC00);
    s32 pad;
    s32 pad1;

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
        actor3->parent = &this->actor;
        actor2->parent = &this->actor;
        actor1->parent = &this->actor;
        SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000680);
        this->unk_198 = 0;
        this->unk_199 = 160;
        this->actionFunc = func_80ADB2B8;
    }
}

void func_80AD9C24(EnPoSisters* this, GlobalContext* globalCtx) {
    Vec3f vec;

    this->actor.draw = NULL;
    this->actor.flags &= -2;
    this->unk_19C = 100;
    this->unk_199 = 32;
    this->collider.base.type = COLTYPE_UNK3;
    this->collider.base.acFlags &= ~4;
    if (globalCtx != NULL) {
        vec.x = this->actor.posRot.pos.x;
        vec.y = this->actor.posRot.pos.y + 45.0f;
        vec.z = this->actor.posRot.pos.z;
        EffectSsDeadDb_Spawn(globalCtx, &vec, &sZeroVector, &sZeroVector, 150, 0, 255, 255, 255, 155, 150, 150, 150, 1,
                             9, 0);
    }
    Lights_PointSetColorAndRadius(&this->lightInfo, 0, 0, 0, 0);
    this->actionFunc = func_80ADB338;
}

void func_80AD9D44(EnPoSisters* this) {
    if (this->unk_194 == 3) {
        SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_0600119C);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_APPEAR);
    } else {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_0600119C, 0.5f, 0.0f, SkelAnime_GetFrameCount(&D_0600119C), 3, 0.0f);
    }
    this->unk_22E.a = 0;
    this->unk_199 = 32;
    this->actionFunc = func_80ADB9F0;
}

void func_80AD9DF0(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_0600119C, -5.0f);
    this->unk_198 = 1;
    this->unk_199 &= ~0x80;
    this->actionFunc = func_80ADB4B0;
    func_800800F8(globalCtx, 0xC6C, 0x9C, &this->actor, 0);
}

void func_80AD9E60(EnPoSisters* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000D40, -3.0f);
    this->unk_19A = SkelAnime_GetFrameCount(&D_06000D40) * 7 + 7;
    if (this->actor.parent != NULL) {
        this->actor.posRot.pos = this->actor.parent->posRot.pos;
        this->actor.shape.rot.y = this->actor.parent->shape.rot.y;
    } else {
        this->actor.shape.rot.y = this->actor.yawTowardsLink;
        this->unk_19A++;
    }
    if (this->unk_195 == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH2);
    }
    this->actionFunc = func_80ADB51C;
}

void func_80AD9F1C(EnPoSisters* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000D40, -3.0f);
    this->unk_22E.a = 255;
    this->unk_19A = 300;
    this->unk_19C = 3;
    this->unk_199 |= 9;
    this->actor.flags |= 1;
    this->actionFunc = func_80ADB770;
}

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

void func_80ADA028(EnPoSisters* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_060014CC, -3.0f);
    this->unk_22E.a = 255;
    this->unk_199 |= 0x15;
    this->actor.flags |= 1;
    this->actionFunc = func_80ADBBF4;
    this->actor.speedXZ = 0.0f;
}

void func_80ADA094(EnPoSisters* this, GlobalContext* globalCtx) {
    D_80ADD784 = 0;
    this->unk_22E.a = 0;
    this->unk_199 = 128;
    this->unk_19A = 50;
    this->unk_234[0] = this->actor.initPosRot.pos;
    Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_PROP);
    this->actionFunc = func_80ADBC88;
}

void func_80ADA10C(EnPoSisters* this) {
    s32 i;

    this->unk_198 = ARRAY_COUNT(this->unk_234);
    for (i = 0; i < ARRAY_COUNT(this->unk_234); i++) {
        this->unk_234[i] = this->unk_234[0];
    }
    this->actionFunc = func_80ADBD38;
}

void func_80ADA1B8(EnPoSisters* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600119C, 0.833f, 0.0f, SkelAnime_GetFrameCount(&D_0600119C), 3, 0.0f);
    if (this->unk_194 == 0 || this->unk_194 == 1) {
        this->unk_19A = 40;
    } else {
        this->unk_19A = 76;
    }
    this->unk_198 = 0;
    D_80ADD784 = 0;
    this->actionFunc = func_80ADBD8C;
}

void func_80ADA25C(EnPoSisters* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_060014CC);
    this->unk_198 = 8;
    this->unk_19A = 32;
    func_80AD9240(this, this->unk_19A, &this->actor.initPosRot.pos);
    this->actionFunc = func_80ADBEE8;
}

void func_80ADA2BC(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000D40, -3.0f);
    this->unk_198 = 0;
    this->unk_199 = 40;
    this->unk_19A = 90;
    this->unk_196 = 32;
    this->actor.posRot.rot.y = D_80ADD79C[this->unk_194];
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
    if (this->unk_194 == 0) {
        Flags_SetSwitch(globalCtx, 0x1B);
    }
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_FLAME_IGNITION);
    this->actionFunc = func_80ADBF58;
}

#ifdef NON_MATCHING
// Single register swap
void func_80ADA35C(EnPoSisters* this, GlobalContext* globalCtx) {
    f32 targetY;
    Player* player = PLAYER;

    if (this->actionFunc == func_80ADBF58) {
        targetY = this->actor.initPosRot.pos.y;
    } else if (this->unk_194 == 0 || this->unk_194 == 3) {
        targetY = player->actor.posRot.pos.y + 5.0f;
    } else {
        targetY = 832.0f;
    }
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, targetY, 0.5f, 3.0f);
    if (this->unk_196 == 0) {
        this->unk_196 = 32;
    }
    if (this->unk_196 != 0U) { // U improves codegen from missing move + regalloc to just regalloc
        this->unk_196 -= 1U;
    }
    this->actor.posRot.pos.y += (2.0f + 0.5f * Math_Rand_ZeroOne()) * Math_Sins(this->unk_196 * 0x800);
    if (this->unk_22E.a == 255 && this->actionFunc != func_80ADA8C0 && this->actionFunc != func_80ADA7F0) {
        if (this->actionFunc == func_80ADAC70) {
            func_8002F974(&this->actor, NA_SE_EN_PO_AWAY - SFX_FLAG);
        } else {
            func_8002F974(&this->actor, NA_SE_EN_PO_FLY - SFX_FLAG);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Po_Sisters/func_80ADA35C.s")
#endif

void func_80ADA4A8(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 0.0f) && this->unk_19A != 0) {
        this->unk_19A--;
    }
    if (this->unk_19A == 0 || this->actor.xzDistFromLink < 200.0f) {
        func_80AD93C4(this);
    }
}

void func_80ADA530(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxF(&this->actor.speedXZ, 1.0f, 0.2f);
    if (func_800A56C8(&this->skelAnime, 0.0f) && this->unk_19A != 0) {
        this->unk_19A--;
    }
    if (this->actor.xzDistFromLink < 200.0f && fabsf(this->actor.yDistFromLink + 5.0f) < 30.0f) {
        func_80AD943C(this);
    } else if (this->unk_19A == 0 && Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.2f) != 0) {
        func_80AD9368(this);
    }
    if (this->actor.bgCheckFlags & 8) {
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, func_8002DAC0(&this->actor, &this->actor.initPosRot.pos),
                                 0x71C);
    } else if (func_8002DBB0(&this->actor, &this->actor.initPosRot.pos) > 300.0f) {
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, func_8002DAC0(&this->actor, &this->actor.initPosRot.pos),
                                 0x71C);
    }
}

void func_80ADA6A0(EnPoSisters* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 temp_v0;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    temp_v0 = this->actor.yawTowardsLink - player->actor.shape.rot.y;
    Math_ApproxF(&this->actor.speedXZ, 2.0f, 0.2f);
    if (temp_v0 > 0x3000) {
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

void func_80ADA7F0(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_19A != 0) {
        this->unk_19A--;
    }
    this->actor.shape.rot.y += 384.0f * ((this->skelAnime.animFrameCount + 1.0f) * 3.0f - this->unk_19A);
    if (this->unk_19A == 18 || this->unk_19A == 7) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_ROLL);
    }
    if (this->unk_19A == 0) {
        func_80AD94E0(this);
    }
}

void func_80ADA8C0(EnPoSisters* this, GlobalContext* globalCtx) {
    s32 pad;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800A56C8(&this->skelAnime, 0.0f) && this->unk_19A != 0) {
        this->unk_19A--;
    }
    this->actor.shape.rot.y += (384.0f * this->skelAnime.animFrameCount) * 3.0f;
    if (this->unk_19A == 0 && ABS((s16)(this->actor.shape.rot.y - this->actor.posRot.rot.y)) < 0x1000) {
        if (this->unk_194 != 0) {
            this->collider.base.type = COLTYPE_UNK3;
            this->collider.base.acFlags &= ~4;
            func_80AD93C4(this);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH2);
            func_80AD9C24(this, globalCtx);
        }
    }
    if (func_800A56C8(&this->skelAnime, 1.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_ROLL);
    }
}

void func_80ADA9E8(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->actor.shape.rot.y -= (this->actor.speedXZ * 10.0f) * 128.0f;
    if (Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.1f) != 0) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        if (this->unk_194 != 0) {
            func_80AD93C4(this);
        } else {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH2);
            func_80AD9C24(this, globalCtx);
        }
    }
}

void func_80ADAAA4(EnPoSisters* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) && !(this->actor.flags & 0x8000)) {
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
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.parent->shape.rot.y,
                                 (this->unk_195 == 2) ? 0x800 : 0x400);
        this->unk_22E.a = ((this->skelAnime.animFrameCount - this->skelAnime.animCurrentFrame) * 255.0f) /
                          this->skelAnime.animFrameCount;
        this->actor.posRot.pos.y = this->actor.parent->posRot.pos.y;
        func_80AD97C8(this, globalCtx);
    } else if (this->unk_194 != 0) {
        Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.5f);
    }
}

void func_80ADAC70(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink + 0x8000, 1820);
    if (func_800A56C8(&this->skelAnime, 0.0f) && this->unk_19A != 0) {
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

void func_80ADAD54(EnPoSisters* this, GlobalContext* globalCtx) {
    s32 animFrameCount;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        this->unk_22E.a = 0;
        this->collider.body.bumper.flags = 0x60001;
        func_80AD93C4(this);
    } else {
        animFrameCount = this->skelAnime.animFrameCount;
        this->unk_22E.a = ((animFrameCount - this->skelAnime.animCurrentFrame) * 255.0f) / animFrameCount;
    }
}

void func_80ADAE6C(EnPoSisters* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        this->unk_22E.a = 255;
        if (this->unk_194 != 0) {
            this->unk_199 |= 1;
            this->collider.body.bumper.flags = 0x4FC7FFEA;
            if (this->unk_19A != 0) {
                this->unk_19A--;
            }
            if (this->unk_19A == 0) {
                this->unk_197 = 20;
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

void func_80ADAFC0(EnPoSisters* this, GlobalContext* globalCtx) {
    s32 i;

    this->unk_19A++;
    this->unk_198 = CLAMP_MAX(this->unk_198 + 1, 8);
    for (i = this->unk_198 - 1; i > 0; i--) {
        this->unk_234[i] = this->unk_234[i - 1];
    }
    this->unk_234[0].x =
        (Math_Sins((this->actor.shape.rot.y + this->unk_19A * 0x3000) - 0x4000) * (3000.0f * this->actor.scale.x)) +
        this->actor.posRot.pos.x;
    this->unk_234[0].z =
        (Math_Coss((this->actor.shape.rot.y + this->unk_19A * 0x3000) - 0x4000) * (3000.0f * this->actor.scale.x)) +
        this->actor.posRot.pos.z;
    if (this->unk_19A < 8) {
        this->unk_234[0].y = this->unk_234[1].y - 9.0f;
    } else {
        this->unk_234[0].y = this->unk_234[1].y + 2.0f;
        if (this->unk_19A >= 16) {
            if (Math_ApproxF(&this->actor.scale.x, 0.0f, 0.001f) != 0) {
                func_80AD9A54(this, globalCtx);
            }
            this->actor.scale.z = this->actor.scale.x;
            this->actor.scale.y = this->actor.scale.x;
        }
    }
    if (this->unk_19A == 16) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DEAD2);
    }
}

void func_80ADB17C(EnPoSisters* this, GlobalContext* globalCtx) {
    Vec3s* vec;

    this->unk_19A++;
    if (this->unk_19A == 64) {
        Flags_SetSwitch(globalCtx, this->actor.params);
        Audio_PlaySoundAtPosition(globalCtx, &this->actor.posRot.pos, 30, NA_SE_EV_FLAME_IGNITION);
        if (this->unk_194 == 0) {
            Flags_UnsetSwitch(globalCtx, 0x1B);
        }
        globalCtx->envCtx.unk_BF = 0xFF;
        func_80078884(NA_SE_SY_CORRECT_CHIME);
        Actor_Kill(&this->actor);
    } else if (this->unk_19A < 32) {
        func_80AD9240(this, this->unk_19A, &this->actor.posRot.pos);
    } else {
        func_80AD9240(this, 64 - this->unk_19A, &this->actor.posRot.pos);
    }
    if (this->unk_19A == 32) {
        vec = &D_80ADD7A4[this->unk_194];
        this->actor.posRot.pos.x = vec->x;
        this->actor.posRot.pos.y = vec->y;
        this->actor.posRot.pos.z = vec->z;
    }
}

void func_80ADB2B8(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->actor.xzDistFromLink < 130.0f) {
        func_80AD9DF0(this, globalCtx);
    }
    if (func_800A56C8(&this->skelAnime, 0.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_CRY);
    }
    this->actor.shape.rot.y = this->actor.yawTowardsLink;
}

void func_80ADB338(EnPoSisters* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    EnPoSisters* realMeg = (EnPoSisters*)this->actor.parent;

    if (this->unk_195 == 0) {
        if (func_8002DBB0(&player->actor, &this->actor.initPosRot.pos) < 600.0f) {
            if (this->unk_19C != 0) {
                this->unk_19C--;
            }
        } else {
            this->unk_19C = 100;
        }
        if (this->unk_19C == 0) {
            this->actor.shape.rot.y = (s32)(4.0f * Math_Rand_ZeroOne()) * 0x4000 + this->actor.yawTowardsLink;
            this->actor.posRot.pos.y = player->actor.posRot.pos.y + 5.0f;
            func_80AD98F4(this, globalCtx);
        }
    } else {
        if (realMeg->actionFunc == func_80ADB51C) {
            this->actor.draw = EnPoSisters_Draw;
            func_80AD9E60(this);
        } else if (realMeg->actionFunc == func_80ADAE6C) {
            this->actor.shape.rot.y = this->actor.parent->shape.rot.y + this->unk_195 * 0x4000;
            this->actor.posRot.pos.y = player->actor.posRot.pos.y + 5.0f;
            func_80AD98F4(this, globalCtx);
        } else if (realMeg->actionFunc == func_80ADAFC0) {
            Actor_Kill(&this->actor);
        }
    }
}

void func_80ADB4B0(EnPoSisters* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        func_80AD9E60(this);
    }
    func_80AD97C8(this, globalCtx);
    this->actor.posRot.pos.y += 1.0f;
    Actor_SetHeight(&this->actor, 40.0f);
}

void func_80ADB51C(EnPoSisters* this, GlobalContext* globalCtx) {
    f32 temp_f2;
    s16 phi_v0;
    s16 phi_a2;
    u8 temp;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    temp_f2 = this->skelAnime.animFrameCount * 0.5f;
    this->unk_22E.a = (fabsf(temp_f2 - this->skelAnime.animCurrentFrame) * 255.0f) / temp_f2;
    if (this->unk_19A != 0) {
        this->unk_19A -= 1;
    }
    if (this->unk_19A == 0) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y += 0x4000 * (s32)(Math_Rand_ZeroOne() * 4.0f);
        if (this->unk_195 == 0) {
            func_800F5ACC(0x38);
        }
        func_80AD9F1C(this);
    } else {
        this->actor.posRot.pos.y += 0.1f;
        temp = this->unk_195;
        if (temp != 0) {
            if (this->unk_19A > 90) {
                phi_v0 = 1;
                phi_a2 = 64;
            } else if (this->unk_19A > 70) {
                phi_v0 = 0;
                phi_a2 = 64;
            } else if (this->unk_19A > 55) {
                phi_v0 = 1;
                phi_a2 = 96;
            } else if (this->unk_19A > 40) {
                phi_v0 = 0;
                phi_a2 = 96;
            } else {
                phi_v0 = 1;
                phi_a2 = 256;
            }
            if (this->unk_195 == 2) {
                phi_a2 *= 2;
            }
            Math_ApproxUpdateScaledS(&this->actor.shape.rot.y,
                                     this->actor.parent->shape.rot.y + (this->unk_195 * 0x4000) * phi_v0, phi_a2);
        } else if (this->unk_19A == 70 || this->unk_19A == 40) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH2);
        }
    }
    func_80AD97C8(this, globalCtx);
    Actor_SetHeight(&this->actor, 40.0f);
}

void func_80ADB770(EnPoSisters* this, GlobalContext* globalCtx) {
    s32 temp_v0;
    s32 phi_a0;

    if (this->unk_19A != 0) {
        this->unk_19A--;
    }
    if (this->unk_19C > 0) {
        if (this->unk_19A >= 16) {
            SkelAnime_FrameUpdateMatrix(&this->skelAnime);
            if (this->unk_195 == 0) {
                if (ABS((s16)(16 - this->unk_196)) < 14) {
                    this->actor.shape.rot.y +=
                        (0x580 - (this->unk_19C * 0x180)) * fabsf(Math_Sins(this->unk_196 * 0x800));
                }
                if (this->unk_19A >= 284 || this->unk_19A < 31) {
                    this->unk_199 |= 0x40;
                } else {
                    this->unk_199 &= ~0x40;
                }
            } else {
                this->actor.shape.rot.y = (s16)(this->actor.parent->shape.rot.y + (this->unk_195 * 0x4000));
            }
        }
    }
    if (this->unk_195 == 0) {
        if (this->unk_19A >= 284 || (this->unk_19A < 31 && this->unk_19A >= 16)) {
            this->unk_199 |= 0x40;
        } else {
            this->unk_199 &= ~0x40;
        }
    }
    if (func_8002DBB0(&PLAYER->actor, &this->actor.initPosRot.pos) > 600.0f) {
        this->unk_199 &= ~0x40;
        func_80AD9C24(this, globalCtx);
    } else if (this->unk_19A == 0) {
        if (this->unk_195 == 0) {
            func_80AD94E0(this);
        } else {
            func_80AD9C24(this, globalCtx);
        }
    } else if (this->unk_195 != 0) {
        EnPoSisters* realMeg = (EnPoSisters*)this->actor.parent;
        if (realMeg->actionFunc == func_80ADAAA4) {
            func_80AD95D8(this);
        }
    } else if (this->unk_19C == 0) {
        this->unk_19C = -15;
    } else if (this->unk_19C < 0) {
        this->unk_19C++;
        if (this->unk_19C == 0) {
            func_80AD94E0(this);
        }
    }
    func_80AD97C8(this, globalCtx);
}

void func_80ADB9F0(EnPoSisters* this, GlobalContext* globalCtx) {
    f32 div;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        this->unk_22E.a = 255;
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
        div = this->skelAnime.animCurrentFrame / this->skelAnime.animFrameCount;
        this->unk_22E.a = 255.0f * div;
    }
    if (this->unk_194 != 3 && func_800A56C8(&this->skelAnime, 1.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_APPEAR);
    }
    Actor_SetHeight(&this->actor, 40.0f);
}

void func_80ADBB6C(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_8002DBB0(&this->actor, &this->actor.initPosRot.pos) < 10.0f) {
        func_80ADA028(this);
    } else {
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, func_8002DAC0(&this->actor, &this->actor.initPosRot.pos),
                                 1820);
    }
}

void func_80ADBBF4(EnPoSisters* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 1820);
    if (this->actor.xzDistFromLink < 240.0f && fabsf(this->actor.yDistFromLink + 5.0f) < 30.0f) {
        func_80AD93C4(this);
    }
}

void func_80ADBC88(EnPoSisters* this, GlobalContext* globalCtx) {
    if (D_80ADD784 != 0 || !Player_InCsMode(globalCtx)) {
        if (this->unk_19A != 0) {
            this->unk_19A--;
        }
        if (this->unk_19A == 30) {
            if (this->unk_194 == 0) {
                func_800800F8(globalCtx, 0xC44, 0x3E7, NULL, 0);
            }
            D_80ADD784 = 1;
        }
        if (this->unk_19A == 0) {
            func_80ADA10C(this);
        }
    }
    func_8002F974(&this->actor, NA_SE_EV_TORCH - SFX_FLAG);
}

void func_80ADBD38(EnPoSisters* this, GlobalContext* globalCtx) {
    this->unk_19A++;
    func_80AD9240(this, this->unk_19A, &this->actor.initPosRot.pos);
    if (this->unk_19A == 32) {
        func_80ADA1B8(this);
    }
}

void func_80ADBD8C(EnPoSisters* this, GlobalContext* globalCtx) {
    this->unk_19A--;
    if (this->unk_19A == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_APPEAR);
        this->unk_199 &= ~0x80;
    }
    if (this->unk_19A <= 0) {
        if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
            this->unk_22E.a = 255;
            D_80ADD784 |= (1 << this->unk_194);
        } else {
            this->unk_22E.a = (this->skelAnime.animCurrentFrame * 255.0f) / this->skelAnime.animFrameCount;
        }
    }
    if (D_80ADD784 == 15) {
        func_80ADA25C(this);
    }
}

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
    if (this->unk_19A == -70 && this->unk_194 == 1) {
        Audio_PlaySoundAtPosition(globalCtx, &D_80ADD7BC, 40, NA_SE_EN_PO_LAUGH);
    }
    if (this->unk_19A < -120) {
        Actor_Kill(&this->actor);
    }
}

void func_80ADC034(EnPoSisters* this, GlobalContext* globalCtx) {
    if (this->actor.unk_10C != 0 && this->unk_22E.a == 255) {
        if (this->unk_197 != 0) {
            this->unk_197--;
        }
    } else {
        this->unk_197 = 20;
    }
    if (this->unk_22E.a == 0) {
        if (this->unk_19C != 0) {
            this->unk_19C--;
        }
    }
    if (this->actionFunc != func_80ADA7F0 && this->actionFunc != func_80ADA8C0 && this->actionFunc != func_80ADAAA4) {
        if (this->unk_197 == 0) {
            func_80AD9718(this);
        } else if (this->unk_19C == 0 && this->unk_22E.a == 0) {
            func_80AD98F4(this, globalCtx);
        }
    }
}

void func_80ADC10C(EnPoSisters* this, GlobalContext* globalCtx) {
    Vec3f sp24;

    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        func_80035650(&this->actor, &this->collider.body, 1);
        if (this->unk_195 != 0) {
            ((EnPoSisters*)this->actor.parent)->unk_19C--;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH2);
            func_80AD9C24(this, globalCtx);
            if (Math_Rand_ZeroOne() < 0.2f) {
                sp24.x = this->actor.posRot.pos.x;
                sp24.y = this->actor.posRot.pos.y;
                sp24.z = this->actor.posRot.pos.z;
                Item_DropCollectible(globalCtx, &sp24, ITEM00_ARROWS_SMALL);
            }
        } else if (this->collider.base.type == 9 ||
                   (this->actor.colChkInfo.damageEffect == 0 && this->actor.colChkInfo.damage == 0)) {
            if (this->unk_194 == 0) {
                this->actor.freezeTimer = 0;
            }
        } else if (this->actor.colChkInfo.damageEffect == 0xF) {
            this->actor.posRot.rot.y = this->actor.shape.rot.y;
            this->unk_199 |= 2;
            func_80AD98F4(this, globalCtx);
        } else if (this->unk_194 == 0 && this->actor.colChkInfo.damageEffect == 0xE &&
                   this->actionFunc == func_80ADB770) {
            if (this->unk_19C == 0) {
                this->unk_19C = -45;
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

#ifdef NON_MATCHING
// Stack only
void EnPoSisters_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnPoSisters* this = THIS;
    s32 pad;

    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~2;
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
            Vec3f vec;
            UNK_TYPE sp34;
            vec.x = this->actor.posRot.pos.x;
            vec.y = this->actor.posRot.pos.y + 10.0f;
            vec.z = this->actor.posRot.pos.z;
            this->actor.groundY = func_8003C9A4(&globalCtx->colCtx, &this->actor.floorPoly, &sp34, &this->actor, &vec);
        }
        Collider_CylinderUpdate(&this->actor, &this->collider);
        if (this->actionFunc == func_80ADA8C0 || this->actionFunc == func_80ADA7F0) {
            this->unk_198++;
            this->unk_198 = CLAMP_MAX(this->unk_198, 8);
        } else if (this->actionFunc != func_80ADAFC0) {
            this->unk_198 = CLAMP_MIN((s16)(this->unk_198 - 1), 1);
        }
        if (this->actionFunc == func_80ADA8C0) {
            this->actor.flags |= 0x01000000;
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
        if (this->unk_199 & 1) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
        if (this->actionFunc != func_80ADB338) {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
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

void func_80ADC55C(EnPoSisters* this) {
    s16 temp_var;

    if (this->skelAnime.animation == &D_06000114) {
        this->unk_22E.r = CLAMP_MAX((s16)(this->unk_22E.r + 5), 255);
        this->unk_22E.g = CLAMP_MIN((s16)(this->unk_22E.g - 5), 50);
        temp_var = this->unk_22E.b - 5;
        this->unk_22E.b = CLAMP_MIN(temp_var, 0);
    } else if (this->skelAnime.animation == &D_06000A54) {
        this->unk_22E.r = CLAMP_MAX((s16)(this->unk_22E.r + 5), 80);
        this->unk_22E.g = CLAMP_MAX((s16)(this->unk_22E.g + 5), 255);
        temp_var = this->unk_22E.b + 5;
        this->unk_22E.b = CLAMP_MAX(temp_var, 225);
    } else if (this->skelAnime.animation == &D_060008C0) {
        if (this->actor.dmgEffectTimer & 2) {
            this->unk_22E.r = 0;
            this->unk_22E.g = 0;
            this->unk_22E.b = 0;
        } else {
            this->unk_22E.r = 80;
            this->unk_22E.g = 255;
            this->unk_22E.b = 225;
        }
    } else {
        this->unk_22E.r = CLAMP_MAX((s16)(this->unk_22E.r + 5), 255);
        this->unk_22E.g = CLAMP_MAX((s16)(this->unk_22E.g + 5), 255);
        if (this->unk_22E.b > 210) {
            temp_var = this->unk_22E.b - 5;
            this->unk_22E.b = CLAMP_MIN(temp_var, 210);
        } else {
            temp_var = this->unk_22E.b + 5;
            this->unk_22E.b = CLAMP_MAX(temp_var, 210);
        }
    }
}

s32 EnPoSisters_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                 void* thisx, Gfx** gfxP) {
    EnPoSisters* this = THIS;
    Color_RGBA8* color;

    if (limbIndex == 1 && (this->unk_199 & 0x40)) {
        if (this->unk_19A >= 284) {
            rot->x += (this->unk_19A * 0x1000) + 0xFFEE4000;
        } else {
            rot->x += (this->unk_19A * 0x1000) + 0xFFFF1000;
        }
    }
    if (this->unk_22E.a == 0 || limbIndex == 8 || (this->actionFunc == func_80ADAFC0 && this->unk_19A >= 8)) {
        *dList = NULL;
    } else if (limbIndex == 9) {
        *dList = D_80ADD7C8[this->unk_194];
    } else if (limbIndex == 10) {
        *dList = D_80ADD7D8[this->unk_194];
        gDPPipeSync((*gfxP)++);
        gDPSetEnvColor((*gfxP)++, this->unk_22E.r, this->unk_22E.g, this->unk_22E.b, this->unk_22E.a);
    } else if (limbIndex == 11) {
        color = &D_80ADD7E8[this->unk_194];
        gDPPipeSync((*gfxP)++);
        gDPSetEnvColor((*gfxP)++, color->r, color->g, color->b, this->unk_22E.a);
    }
    return 0;
}

void EnPoSisters_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx,
                              Gfx** gfxP) {
    EnPoSisters* this = THIS;
    s32 i;
    s32 pad;

    if (this->actionFunc == func_80ADAFC0 && this->unk_19A >= 8 && limbIndex == 9) {
        gSPMatrix((*gfxP)++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_sisters.c", 2876),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList((*gfxP)++, D_060046E0);
    }
    if (limbIndex == 8 && this->actionFunc != func_80ADB2B8) {
        if (this->unk_199 & 0x20) {
            for (i = this->unk_198 - 1; i > 0; i--) {
                this->unk_234[i] = this->unk_234[i - 1];
            }
            Matrix_MultVec3f(&D_80ADD7F8, &this->unk_234[0]);
        } else if (this->actionFunc == func_80ADBD8C) {
            Matrix_MultVec3f(&D_80ADD7F8, &this->actor.initPosRot.pos);
        }
        if (this->unk_198 > 0) {
            Color_RGBA8* color = &D_80ADD6F0[this->unk_194];
            f32 temp_f2 = Math_Rand_ZeroOne() * 0.3f + 0.7f;

            if (this->actionFunc == func_80ADB17C || this->actionFunc == func_80ADBD38 ||
                this->actionFunc == func_80ADBEE8) {
                Lights_PointNoGlowSetInfo(&this->lightInfo, this->unk_234[0].x, this->unk_234[0].y + 15.0f,
                                          this->unk_234[0].z, color->r * temp_f2, color->g * temp_f2,
                                          color->b * temp_f2, 200);
            } else {
                Lights_PointGlowSetInfo(&this->lightInfo, this->unk_234[0].x, this->unk_234[0].y + 15.0f,
                                        this->unk_234[0].z, color->r * temp_f2, color->g * temp_f2, color->b * temp_f2,
                                        200);
            }
        } else {
            Lights_PointSetColorAndRadius(&this->lightInfo, 0, 0, 0, 0);
        }
        if (!(this->unk_199 & 0x80)) {
            Matrix_Get(&this->unk_2F8);
        }
    }
}

void EnPoSisters_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnPoSisters* this = THIS;
    u8 phi_s5;
    f32 phi_f20;
    s32 i;
    u8 spE7;
    Color_RGBA8* temp_s1 = &D_80ADD700[this->unk_194];
    Color_RGBA8* temp_s7 = &D_80ADD6F0[this->unk_194];
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_po_sisters.c", 2989);
    func_80ADC55C(this);
    func_80093D18(globalCtx->state.gfxCtx);
    func_80093D84(globalCtx->state.gfxCtx);
    if (this->unk_22E.a == 255 || this->unk_22E.a == 0) {
        gDPSetEnvColor(POLY_OPA_DISP++, this->unk_22E.r, this->unk_22E.g, this->unk_22E.b, this->unk_22E.a);
        gSPSegment(POLY_OPA_DISP++, 0x09, D_80116280 + 2);
        POLY_OPA_DISP =
            SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                           EnPoSisters_OverrideLimbDraw, EnPoSisters_PostLimbDraw, &this->actor, POLY_OPA_DISP);
    } else {
        gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, this->unk_22E.a);
        gSPSegment(POLY_XLU_DISP++, 0x09, D_80116280);
        POLY_XLU_DISP =
            SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                           EnPoSisters_OverrideLimbDraw, EnPoSisters_PostLimbDraw, &this->actor, POLY_XLU_DISP);
    }
    if (!(this->unk_199 & 0x80)) {
        Matrix_Put(&this->unk_2F8);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_sisters.c", 3034),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, D_060027B0);
    }
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0,
                                (globalCtx->gameplayFrames * -20) % 512, 0x20, 0x80));
    gDPSetEnvColor(POLY_XLU_DISP++, temp_s1->r, temp_s1->g, temp_s1->b, temp_s1->a);
    if (this->actionFunc == func_80ADB17C) {
        if (this->unk_19A < 32) {
            phi_s5 = ((32 - this->unk_19A) * 255) / 32;
            phi_f20 = 0.0056000003f;
        } else {
            phi_s5 = (this->unk_19A * 255 - 8160) / 32;
            phi_f20 = 0.0027f;
        }
    } else if (this->actionFunc == func_80ADBD38) {
        phi_s5 = ((32 - this->unk_19A) * 255) / 32;
        phi_f20 = 0.0027f;
    } else if (this->actionFunc == func_80ADBEE8) {
        phi_s5 = ((32 - this->unk_19A) * 255) / 32;
        phi_f20 = 0.0035f;
    } else if (this->actionFunc == func_80ADBC88) {
        //! @bug uninitialised spE7
        phi_s5 = spE7;
        phi_f20 = 0.0027f;
    } else {
        phi_s5 = spE7;
        phi_f20 = this->actor.scale.x * 0.5f;
    }
    for (i = 0; i < this->unk_198; i++) {
        if (this->actionFunc != func_80ADB17C && this->actionFunc != func_80ADBD38 &&
            this->actionFunc != func_80ADBEE8) {
            phi_s5 = -i * 31 + 248;
        }
        gDPPipeSync(POLY_XLU_DISP++);
        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, temp_s7->r, temp_s7->g, temp_s7->b, phi_s5);
        Matrix_Translate(this->unk_234[i].x, this->unk_234[i].y, this->unk_234[i].z, MTXMODE_NEW);
        Matrix_RotateRPY(0, (s16)(func_8005A9F4(ACTIVE_CAM) + 0x8000), 0, MTXMODE_APPLY);
        if (this->actionFunc == func_80ADAFC0) {
            phi_f20 = (this->unk_19A - i) * 0.025f + 0.5f;
            phi_f20 = CLAMP(phi_f20, 0.5f, 0.8f) * 0.007f;
        }
        Matrix_Scale(phi_f20, phi_f20, phi_f20, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_sisters.c", 3132),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_0404D4E0);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_po_sisters.c", 3139);
}
