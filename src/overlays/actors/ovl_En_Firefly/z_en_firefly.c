#include "z_en_firefly.h"
#include "macros.h"
#include "overlays/actors/ovl_Obj_Syokudai/z_obj_syokudai.h"

#define FLAGS 0x00005005

#define THIS ((EnFirefly*)thisx)

void EnFirefly_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFirefly_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFirefly_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFirefly_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A14E28(Actor* thisx, GlobalContext* globalCtx);

void func_80A13A08(EnFirefly* this, GlobalContext* globalCtx);
void func_80A13C98(EnFirefly* this, GlobalContext* globalCtx);
void func_80A13D68(EnFirefly* this, GlobalContext* globalCtx);
void func_80A13DE4(EnFirefly* this, GlobalContext* globalCtx);
void func_80A13FF4(EnFirefly* this, GlobalContext* globalCtx);
void func_80A14088(EnFirefly* this, GlobalContext* globalCtx);
void func_80A141F0(EnFirefly* this, GlobalContext* globalCtx);
void func_80A14294(EnFirefly* this, GlobalContext* globalCtx);
void func_80A142F4(EnFirefly* this, GlobalContext* globalCtx);
void func_80A143B4(EnFirefly* this, GlobalContext* globalCtx);

// const ActorInit En_Firefly_InitVars = {
//     ACTOR_EN_FIREFLY,
//     ACTORTYPE_ENEMY,
//     FLAGS,
//     OBJECT_FIREFLY,
//     sizeof(EnFirefly),
//     (ActorFunc)EnFirefly_Init,
//     (ActorFunc)EnFirefly_Destroy,
//     (ActorFunc)EnFirefly_Update,
//     (ActorFunc)EnFirefly_Draw,
// };

extern ColliderJntSphItemInit D_80A14F30;
// static ColliderJntSphItemInit sJntSphItemsInit = {
//     { 0x00, { 0xFFCFFFFF, 0x01, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x09, 0x01, 0x01 },
//     { 1, { { 0, 1000, 0 }, 15 }, 100 },
// };

extern ColliderJntSphInit D_80A14F54;
// static ColliderJntSphInit sJntSphInit = {
//     { COLTYPE_UNK3, 0x11, 0x09, 0x39, 0x10, COLSHAPE_JNTSPH },
//     1,
//     &sJntSphItemsInit,
// };

extern ColliderJntSphItemInit* D_80A14F60;
// static ColliderJntSphItemInit* D_80A14F60 = &sJntSphItemsInit;

extern CollisionCheckInfoInit D_80A14F64;
// static CollisionCheckInfoInit sColChkInfoInit = { 1, 10, 10, 30 };

extern DamageTable D_80A14F6C;
// static DamageTable sDamageTable = {
//     0x10, 0x02, 0x01, 0x02, 0x01, 0x02, 0x02, 0x02, 0x01, 0x02, 0x04, 0xF2, 0x34, 0x02, 0x02, 0x02,
//     0x02, 0x20, 0x34, 0x00, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
// };

extern InitChainEntry D_80A14F8C[];
// static InitChainEntry sInitChain[] = {
//     ICHAIN_VEC3F_DIV1000(scale, 5, ICHAIN_CONTINUE), ICHAIN_F32_DIV1000(gravity, -500, ICHAIN_CONTINUE),
//     ICHAIN_F32(minVelocityY, -4, ICHAIN_CONTINUE),   ICHAIN_U8(unk_1F, 2, ICHAIN_CONTINUE),
//     ICHAIN_F32(unk_4C, 4000, ICHAIN_STOP),
// };

extern Color_RGBA8 D_80A14FA0;
// static ColorRGBA8 D_80A14FA0 = { 255, 255, 100, 255 };

extern Color_RGBA8 D_80A14FA4;
// static ColorRGBA8 D_80A14FA4 = { 255, 50, 0, 0 };

extern Color_RGBA8 D_80A14FA8;
// static ColorRGB8 D_80A14FA8 = { 100, 200, 255 , 255 };

extern Color_RGBA8 D_80A14FAC;
// static ColorRGB8 D_80A14FAC = { 0, 0, 255, 0 };

extern Vec3f D_80A14FB0;
// static Vec3f D_80A14FB0 = { 0.0f, 0.5f, 0.0f };

extern Vec3f D_80A14FBC;
// static Vec3f D_80A14FBC = { 0.0f, 0.5f, 0.0f };

extern Vec3f D_80A14FC8;
// static Vec3f D_80A14FBC = { 0.0f, 0.0f, 0.0f };
// glabel D_80A14FC8
//  .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

extern SkeletonHeader D_060018B8;
extern AnimationHeader D_0600017C;
extern Gfx D_06001678[];

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13070.s")
void func_80A13070(EnFirefly* this) {
    this->actor.params += 2;
    this->collider.list->body.toucher.effect = 0;
    this->unk_1B8 = 0;
    this->unk_1B9 = 0;
    this->actor.naviEnemyId = 0x12;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13098.s")
void func_80A13098(EnFirefly* this) {
    if (this->actor.params == 4) {
        this->actor.params = 0;
    } else {
        this->actor.params -= 2;
    }
    this->collider.list->body.toucher.effect = 1;
    this->unk_1B8 = 1;
    this->unk_1B9 = 1;
    this->actor.naviEnemyId = 0x11;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Init.s")
void EnFirefly_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnFirefly* this = THIS;

    Actor_ProcessInitChain(&this->actor, D_80A14F8C);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 25.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_060018B8, &D_0600017C, this->limbDrawTable,
                   this->transitionDrawTable, 28);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &D_80A14F54, &this->colliderItem);
    func_80061ED4(&this->actor.colChkInfo, &D_80A14F6C, &D_80A14F64);
    if ((this->actor.params & 0x8000) != 0) {
        this->actor.flags |= 0x80;
        if (1) {}
        this->actor.draw = func_80A14E28;
        this->actor.params &= 0x7FFF;
    }
    if (this->actor.params < 2) {
        this->unk_1B9 = 1;
    } else {
        this->unk_1B9 = 0;
    }
    if (this->unk_1B9 != 0) {
        this->actionFunc = func_80A13A08;
        this->unk_1BA = Math_Rand_S16Offset(20, 60);
        this->actor.shape.rot.x = 0x1554;
        this->unk_1B8 = 1;
        this->actor.naviEnemyId = 0x11;
        this->unk_310 = this->actor.initPosRot.pos.y;
    } else {
        if (this->actor.params == 3) {
            this->actionFunc = func_80A142F4;
        } else {
            this->actionFunc = func_80A13A08;
        }
        if (this->actor.params == 4) {
            this->collider.list->body.toucher.effect = 2;
            this->actor.naviEnemyId = 0x56;
        } else {
            this->collider.list->body.toucher.effect = 0;
            this->actor.naviEnemyId = 0x12;
        }
        this->unk_310 = this->actor.initPosRot.pos.y + 100.0f;
        if (this->actor.params == 4) {
            this->unk_1B8 = 2;
        } else {
            this->unk_1B8 = 0;
        }
    }
    this->collider.list->dim.worldSphere.radius = D_80A14F60->dim.modelSphere.radius;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Destroy.s")
void EnFirefly_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnFirefly* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A132F4.s")
void func_80A132F4(EnFirefly* this) {
    this->unk_1BA = Math_Rand_S16Offset(70, 100);
    this->actor.speedXZ = (Math_Rand_ZeroOne() * 1.5f) + 1.5f;
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, func_8002DAC0(&this->actor, &this->actor.initPosRot.pos), 0x300);
    this->unk_1BC = ((this->unk_310 < this->actor.posRot.pos.y) ? 0xC00 : -0xC00) + 0x1554;
    this->skelAnime.animPlaybackSpeed = 1.0f;
    this->actionFunc = func_80A13A08;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A133A0.s")
void func_80A133A0(EnFirefly* this) {
    this->unk_1BA = 40;
    this->actor.velocity.y = 0.0f;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600017C, 0.5f, 0.0f, 0.0f, 1, -3.0f);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FFLY_DEAD);
    this->actor.flags |= 0x10;
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 40);
    this->actionFunc = func_80A13C98;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13444.s")
void func_80A13444(EnFirefly* this) {
    this->unk_1BA = 15;
    this->actor.speedXZ = 0.0f;
    this->actionFunc = func_80A13D68;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13464.s")
void func_80A13464(EnFirefly* this) {
    this->actor.posRot.rot.x = 0x7000;
    this->unk_1BA = 18;
    this->skelAnime.animPlaybackSpeed = 1.0f;
    this->actor.speedXZ = 2.5f;
    this->actionFunc = func_80A13FF4;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1349C.s")
void func_80A1349C(EnFirefly* this) {
    this->unk_1BA = Math_Rand_S16Offset(70, 100);
    this->skelAnime.animPlaybackSpeed = 1.0f;
    this->unk_1BC = ((0.0f < this->actor.yDistFromLink) ? -0xC00 : 0xC00) + 0x1554;
    this->actionFunc = func_80A13DE4;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1350C.s")
void func_80A1350C(EnFirefly* this) {
    this->unk_1BA = 150;
    this->skelAnime.animPlaybackSpeed = 1.0f;
    this->unk_1BC = 0x954;
    this->actionFunc = func_80A14088;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13538.s")
void func_80A13538(EnFirefly* this) {
    this->unk_1BA = 80;
    func_8003426C(&this->actor, 0, 0xFF, 0, 80);
    this->unk_1B8 = 0;
    this->actor.velocity.y = 0.0f;
    this->skelAnime.animPlaybackSpeed = 3.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->actionFunc = func_80A141F0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A135A8.s")
void func_80A135A8(EnFirefly* this, GlobalContext* globalCtx) {
    s32 i;
    Vec3f iceParticlePos;

    this->actor.flags |= 0x10;
    this->unk_1B8 = 0;
    this->actor.speedXZ = 0.0f;
    func_8003426C(&this->actor, 0, 0xFF, 0, 0xFF);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FFLY_DEAD);
    for (i = 0; i <= 7; i++) {
        iceParticlePos.x = (i & 1 ? 7.0f : -7.0f) + this->actor.posRot.pos.x;
        iceParticlePos.y = (i & 2 ? 7.0f : -7.0f) + this->actor.posRot.pos.y;
        iceParticlePos.z = (i & 4 ? 7.0f : -7.0f) + this->actor.posRot.pos.z;
        EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &iceParticlePos, 150, 150, 150, 250, 235, 245, 255,
                                       (Math_Rand_ZeroOne() * 0.15f) + 0.85f);
    }
    this->actionFunc = func_80A14294;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13744.s")
void func_80A13744(EnFirefly* this) {
    this->unk_1BA = 1;
    this->actor.speedXZ = 0.0f;
    this->actionFunc = func_80A142F4;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13764.s")
void func_80A13764(EnFirefly* this) {
    this->skelAnime.animPlaybackSpeed = 3.0f;
    this->actor.shape.rot.x = 0x1554;
    this->actor.shape.rot.y = this->actor.yawTowardsLink;
    this->actor.speedXZ = 3.0f;
    this->unk_1BA = 50;
    this->actionFunc = func_80A143B4;
} // This matches in several orderings

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1379C.s")
s32 func_80A1379C(EnFirefly* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    f32 playerDistFromInit;

    if (this->actor.params != 3) {
        return 0;
    }
    if (300.0f < func_8002DBB0(&player->actor, &this->actor.initPosRot.pos)) {
        playerDistFromInit = func_8002DB6C(&this->actor, &this->actor.initPosRot.pos);
        if (playerDistFromInit < 5.0f) {
            func_80A13744(this);
            return 1;
        }
        playerDistFromInit *= 0.05f;
        if (playerDistFromInit < 1.0f) {
            this->actor.speedXZ *= playerDistFromInit;
        }
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, func_8002DAC0(&this->actor, &this->actor.initPosRot.pos),
                                 0x300);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x,
                                 func_8002DB28(&this->actor, &this->actor.initPosRot.pos) + 0x1554, 0x100);
        return 1;
    }
    return 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A138B8.s")
s32 func_80A138B8(EnFirefly* this, GlobalContext* globalCtx) {
    ObjSyokudai* findTorch;
    ObjSyokudai* closestTorch;
    f32 torchDist;
    f32 currentMinDist;
    Vec3f flamePos;

    // Finds the closest torch to the Keese
    findTorch = (ObjSyokudai*)globalCtx->actorCtx.actorList[ACTORTYPE_PROP].first;
    closestTorch = NULL;
    currentMinDist = 35000.0f;
    while (findTorch != NULL) {
        if ((findTorch->actor.id == ACTOR_OBJ_SYOKUDAI) && (findTorch->litTimer != 0)) {
            torchDist = func_8002DB48(&this->actor, &findTorch->actor);
            if (torchDist < currentMinDist) {
                currentMinDist = torchDist;
                closestTorch = findTorch;
            }
        }
        findTorch = (ObjSyokudai*)findTorch->actor.next;
    }
    if (closestTorch != NULL) {
        flamePos.x = closestTorch->actor.posRot.pos.x;
        flamePos.y = closestTorch->actor.posRot.pos.y + 52.0f + 15.0f;
        flamePos.z = closestTorch->actor.posRot.pos.z;
        if (func_8002DB6C(&this->actor, &flamePos) < 15.0f) {
            func_80A13098(this);
            return 1;
        }
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, func_8002DA78(&this->actor, &closestTorch->actor), 0x300);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, func_8002DB28(&this->actor, &flamePos) + 0x1554, 0x100);
        return 1;
    }
    return 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13A08.s")
void func_80A13A08(EnFirefly* this, GlobalContext* globalCtx) {
    s32 skelanimeUpdated;
    f32 rand_f;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_1BA != 0) {
        this->unk_1BA--;
    }
    skelanimeUpdated = func_800A56C8(&this->skelAnime, 0.0f);
    this->actor.speedXZ = (Math_Rand_ZeroOne() * 1.5f) + 1.5f;
    if (((this->unk_1B9 != 0) || (this->actor.params == 4)) ||
        ((func_80A1379C(this, globalCtx) == 0) && (func_80A138B8(this, globalCtx) == 0))) {
        if (skelanimeUpdated) {
            rand_f = Math_Rand_ZeroOne();
            if (rand_f < 0.5f) {
                Math_ApproxUpdateScaledS(&this->actor.shape.rot.y,
                                         func_8002DAC0(&this->actor, &this->actor.initPosRot.pos), 0x300);
            } else if (rand_f < 0.8f) {
                this->actor.shape.rot.y += Math_Rand_CenteredFloat(1536.0f);
            }
            if (this->actor.posRot.pos.y < (this->actor.groundY + 20.0f)) {
                this->unk_1BC = 0x954;
            } else if (this->unk_310 < this->actor.posRot.pos.y) {
                this->unk_1BC = 0x2154;
            } else if (0.35f < Math_Rand_ZeroOne()) {
                this->unk_1BC = 0x954;
            } else {
                this->unk_1BC = 0x2154;
            }
        } else {
            if ((this->actor.bgCheckFlags & 1) != 0) {
                this->unk_1BC = 0x954;
            } else if (((this->actor.bgCheckFlags & 0x10) != 0) || (this->unk_310 < this->actor.posRot.pos.y)) {
                this->unk_1BC = 0x2154;
            }
        }
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, this->unk_1BC, 0x100);
    }
    if (this->actor.bgCheckFlags & 8) {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.wallPolyRot, 2, 0xC00, 0x300);
    }
    if ((this->unk_1BA == 0) && (this->actor.xzDistFromLink < 200.0f) &&
        (Player_GetMask(globalCtx) != PLAYER_MASK_SKULL)) {
        func_80A1349C(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13C98.s")
void func_80A13C98(EnFirefly* this, GlobalContext* globalCtx) {
    if (func_800A56C8(&this->skelAnime, 6.0f) != 0) {
        this->skelAnime.animPlaybackSpeed = 0.0f;
    }
    this->actor.dmgEffectTimer = 40;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.5f);
    if ((this->actor.flags & 0x8000)) {
        this->actor.dmgEffectTimer = 40;
    } else {
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0x6800, 0x200);
        this->actor.shape.rot.y = this->actor.shape.rot.y - 0x300;
        if (this->unk_1BA != 0) {
            this->unk_1BA--;
        }
        if (((this->actor.bgCheckFlags & 1) != 0) || (this->unk_1BA == 0)) {
            func_80A13444(this);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13D68.s")
void func_80A13D68(EnFirefly* this, GlobalContext* globalCtx) {
    if (this->unk_1BA != 0) {
        this->unk_1BA--;
    }
    Math_ApproxF(&this->actor.scale.x, 0.0f, 0.00034f);
    this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;
    if (this->unk_1BA == 0) {
        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0xE0);
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13DE4.s")
void func_80A13DE4(EnFirefly* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    // f32 sp40;
    // f32 sp3C;
    Vec3f sp38;
    // SkelAnime *sp30;
    // SkelAnime *temp_a0;
    // f32 *temp_a1;
    // s16 temp_v1;

    // temp_a0 = &this->skelAnime;
    // sp30 = temp_a0;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_1BA != 0) {
        this->unk_1BA--;
    }
    Math_ApproxF(&this->actor.speedXZ, 4.0f, 0.5f);
    if (this->actor.bgCheckFlags & 8) {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.wallPolyRot, 2, 0xC00, 0x300);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, this->unk_1BC, 0x100);
    } else if (func_8002E084(&this->actor, 0x2800)) {
        if (func_800A56C8(&this->skelAnime, 4.0f) != 0) {
            this->skelAnime.animPlaybackSpeed = 0.0f;
            this->skelAnime.animCurrentFrame = 4.0f;
        }
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 2, 0xC00, 0x300);
        // temp_a1 = &sp38;
        sp38.x = player->actor.posRot.pos.x;
        sp38.y = player->actor.posRot.pos.y + 20.0f;
        sp38.z = player->actor.posRot.pos.z;
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, func_8002DB28(&this->actor, &sp38) + 0x1554, 2, 0x400, 0x100);
    } else {
        this->skelAnime.animPlaybackSpeed = 1.5f;
        if (80.0f < this->actor.xzDistFromLink) {
            Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 2, 0xC00, 0x300);
        }
        if (this->actor.bgCheckFlags & 1) {
            this->unk_1BC = 0x954;
        }
        if ((this->actor.bgCheckFlags & 0x10) || (this->unk_310 < this->actor.posRot.pos.y)) {
            this->unk_1BC = 0x2154;
        } else {
            this->unk_1BC = 0x954;
        }
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, this->unk_1BC, 0x100);
    }
    if ((this->unk_1BA == 0) || (Player_GetMask(globalCtx) == 2)) {
        func_80A1350C(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A13FF4.s")
void func_80A13FF4(EnFirefly* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0, 0x100);
    Math_ApproxF(&this->actor.velocity.y, 0.0f, 0.4f);
    if (Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.15f) != 0) {
        if (this->unk_1BA != 0) {
            this->unk_1BA--;
        }
        if (this->unk_1BA == 0) {
            func_80A1350C(this);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A14088.s")
void func_80A14088(EnFirefly* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_1BA != 0) {
        this->unk_1BA--;
    }
    if (((fabsf(this->actor.posRot.pos.y - this->unk_310) < 10.0f) &&
         (Math_Vec3f_DistXZ(&this->actor.posRot.pos, &this->actor.initPosRot.pos) < 20.0f)) ||
        (this->unk_1BA == 0)) {
        func_80A132F4(this);
        return;
    }
    Math_ApproxF(&this->actor.speedXZ, 3.0f, 0.3f);
    if (this->actor.bgCheckFlags & 1) {
        this->unk_1BC = 0x954;
    } else if ((this->actor.bgCheckFlags & 0x10) || (this->unk_310 < this->actor.posRot.pos.y)) {
        this->unk_1BC = 0x2154;
    } else {
        this->unk_1BC = 0x954;
    }
    if (this->actor.bgCheckFlags & 8) {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.wallPolyRot, 2, 0xC00, 0x300);
    } else {
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, func_8002DAC0(&this->actor, &this->actor.initPosRot.pos),
                                 0x300);
    }
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, this->unk_1BC, 0x100);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A141F0.s")
void func_80A141F0(EnFirefly* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.5f);
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0x1554, 0x100);
    if (this->unk_1BA != 0) {
        this->unk_1BA--;
    }
    if (this->unk_1BA == 0) {
        if (this->unk_1B9 != 0) {
            this->unk_1B8 = 1;
        } else if (this->actor.params == 4) {
            this->unk_1B8 = 2;
        }
        func_80A132F4(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A14294.s")
void func_80A14294(EnFirefly* this, GlobalContext* globalCtx) {
    if ((this->actor.bgCheckFlags & 1) || (this->actor.groundY == -32000.0f)) {
        this->actor.dmgEffectTimer = 0;
        func_80A13444(this);
    } else {
        // Does this have a special meaning? Doesn't seem to appear elsewhere
        this->actor.dmgEffectTimer = 0xFF;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A142F4.s")
void func_80A142F4(EnFirefly* this, GlobalContext* globalCtx) {
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0, 0x100);
    if (this->unk_1BA != 0) {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        if (func_800A56C8(&this->skelAnime, 6.0f) != 0) {
            this->unk_1BA--;
        }
    } else if (Math_Rand_ZeroOne() < 0.02f) {
        this->unk_1BA = 1;
    }
    if (this->actor.xzDistFromLink < 120.0f) {
        func_80A13764(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A143B4.s")
void func_80A143B4(EnFirefly* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    Vec3f temp_pos;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_1BA != 0) {
        this->unk_1BA--;
    }
    if ((s32)this->unk_1BA < 40) {
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, -0xAAC, 0x100);
    } else {
        temp_pos.x = player->actor.posRot.pos.x;
        temp_pos.y = player->actor.posRot.pos.y + 20.0f;
        temp_pos.z = player->actor.posRot.pos.z;
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, func_8002DB28(&this->actor, &temp_pos) + 0x1554, 0x100);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 0x300);
    }
    if (this->unk_1BA == 0) {
        func_80A132F4(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1448C.s")
void func_80A1448C(EnFirefly* this, GlobalContext* globalCtx) {
    s32 i;

    for (i = 0; i <= 2; i++) {
        EffectSsEnFire_SpawnVec3f(globalCtx, &this->actor, &this->actor.posRot.pos, 40, 0, 0, i);
    }
    this->unk_1B8 = 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A1450C.s")
// This really does seem to be all if-elses, not a switch
void func_80A1450C(EnFirefly* this, GlobalContext* globalCtx) {
    u8 dmgEfct;

    if ((this->collider.base.acFlags & 2) != 0) {
        this->collider.base.acFlags &= 0xFFFD;
        func_80035650(&this->actor, &this->collider.list->body, 1);
        if ((this->actor.colChkInfo.damageEffect != 0) || (this->actor.colChkInfo.damage != 0)) {
            if (Actor_ApplyDamage(&this->actor) == 0) {
                func_80032C7C(globalCtx, &this->actor);
                this->actor.flags &= ~1;
            }
            dmgEfct = this->actor.colChkInfo.damageEffect;
            if (dmgEfct == 2) {
                if (this->actor.params == 4) {
                    this->actor.colChkInfo.health = 0;
                    func_80032C7C(globalCtx, &this->actor);
                    func_80A1448C(this, globalCtx);
                    func_80A133A0(this);
                } else if (this->unk_1B9 == 0) {
                    func_80A13098(this);
                    if (this->actionFunc == func_80A142F4) {
                        func_80A132F4(this);
                    }
                }
            } else if (dmgEfct == 3) {
                if (this->actor.params == 4) {
                    func_80A133A0(this);
                } else {
                    func_80A135A8(this, globalCtx);
                }
            } else if (dmgEfct == 1) {
                if (this->actionFunc != func_80A141F0) {
                    func_80A13538(this);
                }
            } else {
                if ((dmgEfct == 0xF) && (this->actor.params == 4)) {
                    func_80A1448C(this, globalCtx);
                }
                func_80A133A0(this);
            }
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Update.s")
void EnFirefly_Update(Actor* thisx, GlobalContext* globalCtx2) {
    EnFirefly* this = THIS;
    GlobalContext* globalCtx = globalCtx2;

    f32 sp34;
    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= 0xFFFD;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FFLY_ATTACK);
        if (this->unk_1B9 != 0) {
            func_80A13070(this);
        }
        if (this->actionFunc != func_80A143B4) {
            func_80A13464(this);
        }
    }
    func_80A1450C(this, globalCtx);
    this->actionFunc(this, globalCtx);
    if (!(this->actor.flags & 0x8000)) {
        if ((this->actor.colChkInfo.health == 0) || (this->actionFunc == func_80A141F0)) {
            Actor_MoveForward(&this->actor);
        } else {
            if (this->actionFunc != func_80A13FF4) {
                this->actor.posRot.rot.x = 0x1554 - this->actor.shape.rot.x;
            }
            func_8002D97C(&this->actor);
        }
    }
    func_8002E4B4(globalCtx, &this->actor, 10.0f, 10.0f, 15.0f, 7);
    this->collider.list->dim.worldSphere.center.x = this->actor.posRot.pos.x;
    this->collider.list->dim.worldSphere.center.y = (this->actor.posRot.pos.y + 10.0f);
    this->collider.list->dim.worldSphere.center.z = this->actor.posRot.pos.z;
    if ((this->actionFunc == func_80A13DE4) || (this->actionFunc == func_80A143B4)) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
    if (this->actor.colChkInfo.health != 0) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        if (func_800A56C8(&this->skelAnime, 5.0f)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_FFLY_FLY);
        }
    }
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    sp34 = Math_Sins(this->actor.shape.rot.x);
    this->actor.posRot2.pos.x = (Math_Sins(this->actor.shape.rot.y) * (10.0f * sp34)) + this->actor.posRot.pos.x;
    this->actor.posRot2.pos.y = (Math_Coss(this->actor.shape.rot.x) * 10.0f) + this->actor.posRot.pos.y;
    sp34 = Math_Sins(this->actor.shape.rot.x);
    this->actor.posRot2.pos.z = (Math_Coss(this->actor.shape.rot.y) * (10.0f * sp34)) + this->actor.posRot.pos.z;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A14960.s")
s32 func_80A14960(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx,
                  Gfx** gfx) {
    EnFirefly* this = THIS;

    if ((this->actor.draw == func_80A14E28) && (globalCtx->actorCtx.unk_03 == 0)) {
        *dList = NULL;
    } else if (limbIndex == 1) {
        pos->y = pos->y + 2300.0f;
    }
    return 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A149B4.s")
void func_80A149B4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx, Gfx** gfx) {
    Vec3f effPos;
    Vec3f* limbDest;
    void* effPrimColor;
    void* effEnvColor;
    MtxF mtx;
    s16 effScaleStep;
    s16 effLife;

    EnFirefly* this = THIS; // Can't go at the top or breaks stack

    if ((this->unk_1B9 == 0) && (limbIndex == 27)) {
        gSPDisplayList((*gfx)++, D_06001678);
    } else {
        if ((this->unk_1B8 == 1) || (this->unk_1B8 == 2)) {
            if ((limbIndex == 15) || (limbIndex == 21)) {
                if (this->actionFunc != func_80A13D68) {
                    Matrix_Get(&mtx);
                    effPos.x = (Math_Rand_ZeroOne() * 5.0f) + mtx.wx;
                    effPos.y = (Math_Rand_ZeroOne() * 5.0f) + mtx.wy;
                    effPos.z = (Math_Rand_ZeroOne() * 5.0f) + mtx.wz;
                    effScaleStep = -40;
                    effLife = 3;
                } else {
                    if (limbIndex == 15) {
                        effPos.x = (Math_Sins(9100 * this->unk_1BA) * this->unk_1BA) + this->actor.posRot.pos.x;
                        effPos.z = (Math_Coss(9100 * this->unk_1BA) * this->unk_1BA) + this->actor.posRot.pos.z;
                    } else {
                        effPos.x = this->actor.posRot.pos.x - (Math_Sins(9100 * this->unk_1BA) * this->unk_1BA);
                        effPos.z = this->actor.posRot.pos.z - (Math_Coss(9100 * this->unk_1BA) * this->unk_1BA);
                    }
                    effPos.y = this->actor.posRot.pos.y + ((15 - this->unk_1BA) * 1.5f);
                    effScaleStep = -5;
                    effLife = 10;
                }
                if (this->unk_1B8 == 1) {
                    effPrimColor = &D_80A14FA0;
                    effEnvColor = &D_80A14FA4;
                } else {
                    effPrimColor = &D_80A14FA8;
                    effEnvColor = &D_80A14FAC;
                }
                func_8002843C(globalCtx, &effPos, &D_80A14FB0, &D_80A14FBC, effPrimColor, effEnvColor, 250, effScaleStep, effLife);
            }
        }
    }
    if ((limbIndex == 15) || (limbIndex == 21) || (limbIndex == 10)) {
        if (limbIndex == 15) {
            limbDest = &this->bodyPartsPos[0];
        } else if (limbIndex == 21) {
            limbDest = &this->bodyPartsPos[1];
        } else {
            limbDest = &this->bodyPartsPos[2];
        }
        Matrix_MultVec3f(&D_80A14FC8, limbDest);
        limbDest->y -= 5.0f;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Draw.s")
void EnFirefly_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnFirefly* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_firefly.c", 1733);
    func_80093D18(globalCtx->state.gfxCtx);
    if (this->unk_1B9 != 0) {
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
    } else {
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    }
    POLY_OPA_DISP = SkelAnime_Draw2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_80A14960,
                                    func_80A149B4, &this->actor, POLY_OPA_DISP);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_firefly.c", 1763);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func_80A14E28.s")
void func_80A14E28(Actor* thisx, GlobalContext* globalCtx) {
    EnFirefly* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_firefly.c", 1775);
    func_80093D84(globalCtx->state.gfxCtx);
    if (this->unk_1B9 != 0) {
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, 0);
    } else {
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, 255);
    }
    POLY_XLU_DISP = SkelAnime_Draw2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_80A14960,
                                    func_80A149B4, &this->actor, POLY_XLU_DISP);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_firefly.c", 1805);
}
