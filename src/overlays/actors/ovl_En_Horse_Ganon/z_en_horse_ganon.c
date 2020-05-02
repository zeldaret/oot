/*
 * File: z_en_horse_ganon.c
 * Overlay: ovl_En_Horse_Ganon
 * Description: Ganondorf's Horse
 */

#include "z_en_horse_ganon.h"

#define FLAGS 0x00000010

void EnHorseGanon_Init(EnHorseGanon* this, GlobalContext* globalCtx);
void EnHorseGanon_Destroy(EnHorseGanon* this, GlobalContext* globalCtx);
void EnHorseGanon_Update(EnHorseGanon* this, GlobalContext* globalCtx);
void EnHorseGanon_Draw(EnHorseGanon* this, GlobalContext* globalCtx);

// internal functions
void func_80A68660(Vec3s* data, s32 index, Vec3f* vec);
void func_80A686A8(EnHorseGanon* this, GlobalContext* globalCtx);
void func_80A68870(EnHorseGanon* this);
void func_80A68AC4(EnHorseGanon* this);
void func_80A68AF0(EnHorseGanon* this, GlobalContext* globalCtx);
void func_80A68B20(EnHorseGanon* this);
void func_80A68DB0(EnHorseGanon* this, GlobalContext* globalCtx);
void func_80A68E14(EnHorseGanon* this, GlobalContext* globalCtx);
void func_80A68FA8(EnHorseGanon* this, GlobalContext* globalCtx, ColliderJntSphItem* colliderSphereItem);

// external functions
void func_800A6888(GlobalContext*, PSkinAwb*);
void func_800A6330(Actor* this, GlobalContext* globalCtx, PSkinAwb*,
                   void(fn)(EnHorseGanon*, GlobalContext*, ColliderJntSphItem*), s32);

// stolen from krim's z_skin branch, I edited the type of the 1st arg of the 1st function
void func_800A6408(ColliderJntSphItem* arg0, s32 arg1, Vec3f* arg2, Vec3f* arg3);
void func_800A663C(GlobalContext* globalCtx, PSkinAwb*, SkeletonHeader*, AnimationHeader*);

const ActorInit En_Horse_Ganon_InitVars = {
    ACTOR_EN_HORSE_GANON,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HORSE_GANON,
    sizeof(EnHorseGanon),
    (ActorFunc)EnHorseGanon_Init,
    (ActorFunc)EnHorseGanon_Destroy,
    (ActorFunc)EnHorseGanon_Update,
    (ActorFunc)EnHorseGanon_Draw,
};

extern SkeletonHeader D_06008668;
extern AnimationHeader D_06004AA4;
extern AnimationHeader D_06005264;
extern AnimationHeader D_06005B78;
extern AnimationHeader D_06002CE4;
extern AnimationHeader D_06002650;
extern AnimationHeader D_06003858;

AnimationHeader* D_80A691B0[] = { &D_06004AA4, &D_06005264, &D_06005B78, &D_06002CE4 };
AnimationHeader* D_80A691C0[] = { &D_06002650, &D_06003858 };
static f32 animPlaybackSpeed[] = { 0.66666666f, 0.66666666f, 1.0f, 1.0f, 1.0f, 0.66666666f };
static ColliderCylinderInit cylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x12, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 40, 100, 0, { 0, 0, 0 } },
};
static ColliderJntSphItemInit jntsphItemsInit[1] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
        { 13, { { 0, 0, 0 }, 20 }, 100 },
    },
};
static ColliderJntSphInit jntsphInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x12, COLSHAPE_JNTSPH },
    1,
    jntsphItemsInit,
};
static CollisionCheckInfoInit collisionCheckInfoInit = {
    0x0A,
    0x0023,
    0x0064,
    0xFE,
};
s8 D_80A69248[] = { 0x09, 0xB8, 0x01, 0x26, 0x0E, 0x2C, 0x07, 0x00, 0x0C, 0x11, 0x01, 0x7A, 0x12, 0x69, 0x07, 0x00,
                    0x06, 0x4E, 0xFE, 0xFB, 0x1D, 0xAC, 0x07, 0x00, 0x02, 0xF2, 0xFF, 0x45, 0x24, 0x4F, 0x07, 0x00,
                    0xF9, 0x6E, 0xFE, 0x0C, 0x31, 0x22, 0x07, 0x00, 0xF3, 0x28, 0xFE, 0x0C, 0x32, 0xD5, 0x07, 0x00,
                    0xEB, 0xEA, 0xFE, 0x5F, 0x2D, 0x6E, 0x07, 0x00, 0xE9, 0x5E, 0xFE, 0x27, 0x25, 0x65, 0x07, 0x00,
                    0xE5, 0x93, 0xFE, 0x0C, 0x20, 0xAC, 0x07, 0x00, 0xE6, 0x25, 0xFE, 0x77, 0x1B, 0x07, 0x07, 0x00,
                    0xEB, 0xB7, 0x00, 0x7C, 0x15, 0x39, 0x07, 0x00, 0xF4, 0x66, 0x00, 0x02, 0x11, 0xB9, 0x07, 0x00,
                    0xF4, 0x7B, 0xFF, 0xDD, 0x11, 0xAF, 0x07, 0x00, 0xF8, 0x8D, 0xFF, 0xD1, 0x0B, 0xA2, 0x07, 0x00 };
s32 D_80A692B8[] = { 0, 0x00000010 };
static InitChainEntry initChain[] = {
    ICHAIN_F32(unk_F8, 1200, ICHAIN_STOP),
};
static void (*actionFuncs[])(EnHorseGanon*, GlobalContext*) = { func_80A68AF0, func_80A68DB0, NULL };

const f32 D_80A692D0 = 10430.3779f;

void func_80A68660(Vec3s* data, s32 index, Vec3f* vec) {
    Vec3s* temp = (Vec3s*)((u64*)data + index);

    vec->x = (f32)temp->x;
    vec->y = (f32)temp->y;
    vec->z = (f32)temp->z;
}

void func_80A686A8(EnHorseGanon* this, GlobalContext* globalCtx) {
    Vec3f* tempPos;
    Vec3f vec;
    s16 y;

    func_80A68660((Vec3s*)D_80A69248, this->unk_1EC, &vec);
    if (Math3D_Vec3f_DistXYZ(&vec, &this->actor.posRot.pos) <= 400.0f) {
        this->unk_1EC += 1;
        if (this->unk_1EC >= 14) {
            this->unk_1EC = 0;
            func_80A68660((Vec3s*)D_80A69248, 0, &vec);
        }
    }

    tempPos = &this->actor.posRot.pos;
    y = Math_Vec3f_Yaw(tempPos, &vec) - this->actor.posRot.rot.y;
    if (y >= 301) {
        this->actor.posRot.rot.y += 300;
    } else {
        if (y < -300) {
            this->actor.posRot.rot.y -= 300;
        } else {
            this->actor.posRot.rot.y += y;
        }
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;

    if (func_8002DB8C(&this->actor, globalCtx->actorCtx.actorList[ACTORTYPE_PLAYER].first) <= 300.0f) {
        if (this->actor.speedXZ < 12.0f) {
            this->actor.speedXZ += 1.0f;
        } else {
            this->actor.speedXZ -= 1.0f;
        }
    } else if (this->actor.speedXZ < (f32)((u8*)D_80A69248 + 6)[this->unk_1EC * 8]) {
        this->actor.speedXZ += 0.5f;
    } else {
        this->actor.speedXZ -= 0.5f;
    }
}

#ifdef NON_MATCHING
void func_80A68870(EnHorseGanon* this)
// regalloc mismatch
{
    if (this->skin.skelAnime.animCurrentFrame > (f32)D_80A692B8[this->soundCount]) {
        if (D_80A692B8[this->soundCount] != 0 || !(this->skin.skelAnime.animCurrentFrame > (f32)D_80A692B8[1])) {
            Audio_PlaySoundGeneral(NA_SE_EV_HORSE_WALK, &this->actor.unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);

            this->soundCount += 1;
            if (this->soundCount >= 2) {
                this->soundCount = 0;
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Horse_Ganon/func_80A68870.s")
#endif

void EnHorseGanon_Init(EnHorseGanon* this, GlobalContext* globalCtx) {
    ColliderCylinder* colliderCylinder = &this->colliderCylinder;

    Actor_ProcessInitChain(&this->actor, initChain);
    Actor_SetScale(&this->actor, 0.0115f);

    this->actor.gravity = -3.5f;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Squiggly, 20.0f);
    this->actor.speedXZ = 0.0f;
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->action = 0;
    this->actor.posRot2.pos.y += 70.0f;
    func_800A663C(globalCtx, &this->skin, &D_06008668, &D_06004AA4);
    this->currentAnimation = 0;
    SkelAnime_ChangeAnimDefaultStop(&this->skin.skelAnime, D_80A691B0[0]);

    Collider_InitCylinder(globalCtx, colliderCylinder);
    Collider_SetCylinder(globalCtx, colliderCylinder, &this->actor, &cylinderInit);
    Collider_InitJntSph(globalCtx, &this->colliderSphere);
    Collider_SetJntSph(globalCtx, &this->colliderSphere, &this->actor, &jntsphInit, &this->colliderSphereItem);

    func_80061ED4(&this->actor.colChkInfo, 0, &collisionCheckInfoInit);
    func_80A68AC4(this);
}

void EnHorseGanon_Destroy(EnHorseGanon* this, GlobalContext* globalCtx) {
    func_800A6888(globalCtx, &this->skin);
    Collider_DestroyCylinder(globalCtx, &this->colliderCylinder);
    Collider_DestroyJntSph(globalCtx, &this->colliderSphere);
}

void func_80A68AC4(EnHorseGanon* this) {
    this->action = 0;
    SkelAnime_ChangeAnimDefaultRepeat(&this->skin.skelAnime, D_80A691C0[0]);
}

void func_80A68AF0(EnHorseGanon* this, GlobalContext* globalCtx) {
    this->actor.speedXZ = 0.0f;
    SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime);
}

void func_80A68B20(EnHorseGanon* this) {
    s32 animationChanged;
    f32 sp30;

    animationChanged = 0;
    this->action = 1;
    if (this->actor.speedXZ <= 3.0f) {
        if (this->currentAnimation != 2) {
            animationChanged = 1;
        }
        this->currentAnimation = 2;
    } else if (this->actor.speedXZ <= 6.0f) {
        if (this->currentAnimation != 3) {
            animationChanged = 1;
        }
        this->currentAnimation = 3;
    } else {
        if (this->currentAnimation != 4) {
            animationChanged = 1;
        }
        this->currentAnimation = 4;
    }

    if (this->currentAnimation == 2) {
        sp30 = this->actor.speedXZ / 3.0f;
    } else if (this->currentAnimation == 3) {
        sp30 = this->actor.speedXZ / 5.0f;
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_RUN, &this->actor.unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else if (this->currentAnimation == 4) {
        sp30 = this->actor.speedXZ / 7.0f;
        Audio_PlaySoundGeneral(NA_SE_EV_HORSE_RUN, &this->actor.unk_E4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
    } else {
        sp30 = 1.0f;
    }

    if (animationChanged == 1) {
        SkelAnime_ChangeAnim(&this->skin.skelAnime, D_80A691B0[this->currentAnimation],
                             animPlaybackSpeed[this->currentAnimation] * sp30 * 1.5f, 0.0f,
                             SkelAnime_GetFrameCount(&D_80A691B0[this->currentAnimation]->genericHeader), 2, -3.0f);
    } else {
        SkelAnime_ChangeAnim(&this->skin.skelAnime, D_80A691B0[this->currentAnimation],
                             animPlaybackSpeed[this->currentAnimation] * sp30 * 1.5f, 0.0f,
                             SkelAnime_GetFrameCount(&D_80A691B0[this->currentAnimation]->genericHeader), 2, 0.0f);
    }
}

void func_80A68DB0(EnHorseGanon* this, GlobalContext* globalCtx) {
    if (this->currentAnimation == 2) {
        func_80A68870(this);
    }

    func_80A686A8(this, globalCtx);

    if (SkelAnime_FrameUpdateMatrix(&this->skin.skelAnime) != 0) {
        func_80A68B20(this);
    }
}

void func_80A68E14(EnHorseGanon* this, GlobalContext* globalCtx) {
    u32 padding;
    CollisionPoly* col;
    f32 temp_ret;
    Vec3f v;
    s32 temp1;

    v.x = Math_Sins(this->actor.shape.rot.y) * 30.0f + this->actor.posRot.pos.x;
    v.y = this->actor.posRot.pos.y + 60.0f;
    v.z = Math_Coss(this->actor.shape.rot.y) * 30.0f + this->actor.posRot.pos.z;

    temp_ret = func_8003C940(&globalCtx->colCtx, &col, &temp1, &v);

    this->unk_1F4 = temp_ret;
    this->actor.shape.rot.x = D_80A692D0 * Math_atan2f(this->actor.posRot.pos.y - temp_ret, 30.0f);
}

void EnHorseGanon_Update(EnHorseGanon* this, GlobalContext* globalCtx) {
    u32 padding[2];

    actionFuncs[this->action](this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 20.0f, 55.0f, 100.0f, 29);
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += 70.0f;
    Collider_CylinderUpdate(&this->actor, &this->colliderCylinder);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderCylinder.base);
}

void func_80A68FA8(EnHorseGanon* this, GlobalContext* globalCtx, ColliderJntSphItem* colliderSphereItem) {
    Vec3f sp4C;
    Vec3f sp40;
    ColliderJntSphItem* temp_v0;
    s32 index;

    for (index = 0; index < this->colliderSphere.count; index += 1) {
        sp4C.x = this->colliderSphere.list[index].dim.modelSphere.center.x;
        sp4C.y = this->colliderSphere.list[index].dim.modelSphere.center.y;
        sp4C.z = this->colliderSphere.list[index].dim.modelSphere.center.z;

        func_800A6408(colliderSphereItem, this->colliderSphere.list[index].dim.joint, &sp4C, &sp40);

        this->colliderSphere.list[index].dim.worldSphere.center.x = (s16)sp40.x;
        this->colliderSphere.list[index].dim.worldSphere.center.y = (s16)sp40.y;
        this->colliderSphere.list[index].dim.worldSphere.center.z = (s16)sp40.z;

        temp_v0 = &this->colliderSphere.list[index];
        temp_v0->dim.worldSphere.radius = (s16)(temp_v0->dim.scale * (f32)temp_v0->dim.modelSphere.radius);
    }
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colliderSphere.base);
}

void EnHorseGanon_Draw(EnHorseGanon* this, GlobalContext* globalCtx) {
    func_80A68E14(this, globalCtx);
    func_80093D18(globalCtx->state.gfxCtx);
    func_800A6330(&this->actor, globalCtx, &this->skin, func_80A68FA8, 1);
}
