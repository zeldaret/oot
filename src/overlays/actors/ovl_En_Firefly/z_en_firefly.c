#include "z_en_firefly.h"
#include "macros.h"
#include "overlays/actors/ovl_Obj_Syokudai/z_obj_syokudai.h"

#define FLAGS 0x00005005

#define THIS ((EnFirefly*)thisx)

void EnFirefly_Init(Actor* thisx, GlobalContext* globalCtx);
void EnFirefly_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnFirefly_Update(Actor* thisx, GlobalContext* globalCtx);
void EnFirefly_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnFirefly_DrawInvisible(Actor* thisx, GlobalContext* globalCtx);

void EnFirefly_Wait(EnFirefly* this, GlobalContext* globalCtx);
void EnFirefly_Fall(EnFirefly* this, GlobalContext* globalCtx);
void EnFirefly_Die(EnFirefly* this, GlobalContext* globalCtx);
void EnFirefly_DiveAttack(EnFirefly* this, GlobalContext* globalCtx);
void EnFirefly_Rebound(EnFirefly* this, GlobalContext* globalCtx);
void EnFirefly_FlyAway(EnFirefly* this, GlobalContext* globalCtx);
void EnFirefly_Stunned(EnFirefly* this, GlobalContext* globalCtx);
void EnFirefly_FrozenFall(EnFirefly* this, GlobalContext* globalCtx);
void EnFirefly_Perch(EnFirefly* this, GlobalContext* globalCtx);
void EnFirefly_DisturbDiveAttack(EnFirefly* this, GlobalContext* globalCtx);

const ActorInit En_Firefly_InitVars = {
    ACTOR_EN_FIREFLY,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_FIREFLY,
    sizeof(EnFirefly),
    (ActorFunc)EnFirefly_Init,
    (ActorFunc)EnFirefly_Destroy,
    (ActorFunc)EnFirefly_Update,
    (ActorFunc)EnFirefly_Draw,
};

// extern ColliderJntSphItemInit D_80A14F30;
static ColliderJntSphItemInit sJntSphItemsInit[] = { {
    { 0x00, { 0xFFCFFFFF, 0x01, 0x08 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x09, 0x01, 0x01 },
    { 1, { { 0, 1000, 0 }, 15 }, 100 },
} };

// extern ColliderJntSphInit D_80A14F54;
static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK3, 0x11, 0x09, 0x39, 0x10, COLSHAPE_JNTSPH },
    1,
    &sJntSphItemsInit[0],
};

// extern ColliderJntSphItemInit* D_80A14F60;
// static ColliderJntSphItemInit* D_80A14F60 = &sJntSphItemsInit; // Fake symbol

// extern CollisionCheckInfoInit D_80A14F64;
static CollisionCheckInfoInit sColChkInfoInit = { 1, 10, 10, 30 };

// extern DamageTable D_80A14F6C;
static DamageTable sDamageTable = {
    0x10, 0x02, 0x01, 0x02, 0x01, 0x02, 0x02, 0x02, 0x01, 0x02, 0x04, 0xF2, 0x34, 0x02, 0x02, 0x02,
    0x02, 0x20, 0x34, 0x00, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

// extern InitChainEntry D_80A14F8C[];
static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 5, ICHAIN_CONTINUE), ICHAIN_F32_DIV1000(gravity, -500, ICHAIN_CONTINUE),
    ICHAIN_F32(minVelocityY, -4, ICHAIN_CONTINUE),   ICHAIN_U8(unk_1F, 2, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 4000, ICHAIN_STOP),
};

// extern Color_RGBA8 D_80A14FA0;
static Color_RGBA8 D_80A14FA0 = { 255, 255, 100, 255 };

// extern Color_RGBA8 D_80A14FA4;
static Color_RGBA8 D_80A14FA4 = { 255, 50, 0, 0 };

// extern Color_RGBA8 D_80A14FA8;
static Color_RGBA8 D_80A14FA8 = { 100, 200, 255, 255 };

// extern Color_RGBA8 D_80A14FAC;
static Color_RGBA8 D_80A14FAC = { 0, 0, 255, 0 };

// extern Vec3f D_80A14FB0;
static Vec3f D_80A14FB0 = { 0.0f, 0.5f, 0.0f };

// extern Vec3f D_80A14FBC;
static Vec3f D_80A14FBC = { 0.0f, 0.5f, 0.0f };

// extern Vec3f D_80A14FC8;
static Vec3f D_80A14FC8 = { 0.0f, 0.0f, 0.0f };
// glabel D_80A14FC8
//  .word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

extern SkeletonHeader D_060018B8;
extern AnimationHeader D_0600017C;
extern Gfx D_06001678[];

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A13070.s")
// Turn Fire Keese into Keese
void EnFirefly_Extinguish(EnFirefly* this) {
    this->actor.params += 2;
    this->collider.list->body.toucher.effect = 0; // None
    this->auraType = 0;
    this->bodyLit = 0;
    this->actor.naviEnemyId = 0x12; // Keese
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A13098.s")
// Turn Ice Keese and Keese into Fire Keese
void EnFirefly_Ignite(EnFirefly* this) {
    if (this->actor.params == 4) {
        this->actor.params = 0;
    } else {
        this->actor.params -= 2;
    }
    this->collider.list->body.toucher.effect = 1; // Fire
    this->auraType = 1;
    this->bodyLit = 1;
    this->actor.naviEnemyId = 0x11; // Fire Keese
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Init.s")
void EnFirefly_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnFirefly* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 25.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_060018B8, &D_0600017C, this->limbDrawTable,
                   this->transitionDrawTable, 28);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, &this->colliderItems[0]);
    func_80061ED4(&this->actor.colChkInfo, &sDamageTable, &sColChkInfoInit);
    if ((this->actor.params & 0x8000) != 0) {
        this->actor.flags |= 0x80;
        if (1) {}
        this->actor.draw = EnFirefly_DrawInvisible;
        this->actor.params &= 0x7FFF;
    }
    if (this->actor.params < 2) {
        this->bodyLit = 1;
    } else {
        this->bodyLit = 0;
    }
    if (this->bodyLit != 0) {
        this->actionFunc = EnFirefly_Wait;
        this->timer = Math_Rand_S16Offset(20, 60);
        this->actor.shape.rot.x = 0x1554;
        this->auraType = 1;
        this->actor.naviEnemyId = 0x11; // Fire Keese
        this->maxAltitude = this->actor.initPosRot.pos.y;
    } else {
        if (this->actor.params == 3) {
            this->actionFunc = EnFirefly_Perch;
        } else {
            this->actionFunc = EnFirefly_Wait;
        }
        if (this->actor.params == 4) {
            this->collider.list->body.toucher.effect = 2; // Ice
            this->actor.naviEnemyId = 0x56;               // Ice Keese
        } else {
            this->collider.list->body.toucher.effect = 0; // Nothing
            this->actor.naviEnemyId = 0x12;               // Keese
        }
        this->maxAltitude = this->actor.initPosRot.pos.y + 100.0f;
        if (this->actor.params == 4) {
            this->auraType = 2;
        } else {
            this->auraType = 0;
        }
    }
    this->collider.list->dim.worldSphere.radius = sJntSphInit.list[0].dim.modelSphere.radius;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Destroy.s")
void EnFirefly_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnFirefly* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A132F4.s")
void EnFirefly_SetupWait(EnFirefly* this) {
    this->timer = Math_Rand_S16Offset(70, 100);
    this->actor.speedXZ = (Math_Rand_ZeroOne() * 1.5f) + 1.5f;
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, func_8002DAC0(&this->actor, &this->actor.initPosRot.pos), 0x300);
    this->targetPitch = ((this->maxAltitude < this->actor.posRot.pos.y) ? 0xC00 : -0xC00) + 0x1554; // 0x2154 and 0x954
    this->skelAnime.animPlaybackSpeed = 1.0f;
    this->actionFunc = EnFirefly_Wait;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A133A0.s")
void EnFirefly_SetupFall(EnFirefly* this) {
    this->timer = 40;
    this->actor.velocity.y = 0.0f;
    SkelAnime_ChangeAnim(&this->skelAnime, &D_0600017C, 0.5f, 0.0f, 0.0f, 1, -3.0f);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_FFLY_DEAD);
    this->actor.flags |= 0x10;
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 40);
    this->actionFunc = EnFirefly_Fall;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A13444.s")
void EnFirefly_SetupDie(EnFirefly* this) {
    this->timer = 15;
    this->actor.speedXZ = 0.0f;
    this->actionFunc = EnFirefly_Die;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A13464.s")
// SetupKnockback
void EnFirefly_SetupRebound(EnFirefly* this) {
    this->actor.posRot.rot.x = 0x7000;
    this->timer = 18;
    this->skelAnime.animPlaybackSpeed = 1.0f;
    this->actor.speedXZ = 2.5f;
    this->actionFunc = EnFirefly_Rebound;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A1349C.s")
void EnFirefly_SetupDiveAttack(EnFirefly* this) {
    this->timer = Math_Rand_S16Offset(70, 100);
    this->skelAnime.animPlaybackSpeed = 1.0f;
    this->targetPitch = ((0.0f < this->actor.yDistFromLink) ? -0xC00 : 0xC00) + 0x1554; // 0x954 or 0x2154
    this->actionFunc = EnFirefly_DiveAttack;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A1350C.s")
void EnFirefly_SetupFlyAway(EnFirefly* this) {
    this->timer = 150;
    this->skelAnime.animPlaybackSpeed = 1.0f;
    this->targetPitch = 0x954;
    this->actionFunc = EnFirefly_FlyAway;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A13538.s")
void EnFirefly_SetupStunned(EnFirefly* this) {
    this->timer = 80;
    func_8003426C(&this->actor, 0, 0xFF, 0, 80);
    this->auraType = 0;
    this->actor.velocity.y = 0.0f;
    this->skelAnime.animPlaybackSpeed = 3.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    this->actionFunc = EnFirefly_Stunned;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A135A8.s")
void EnFirefly_SetupFrozenFall(EnFirefly* this, GlobalContext* globalCtx) {
    s32 i;
    Vec3f iceParticlePos;

    this->actor.flags |= 0x10;
    this->auraType = 0;
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
    this->actionFunc = EnFirefly_FrozenFall;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A13744.s")
void EnFirefly_SetupPerch(EnFirefly* this) {
    this->timer = 1;
    this->actor.speedXZ = 0.0f;
    this->actionFunc = EnFirefly_Perch;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A13764.s")
void EnFirefly_SetupDisturbDiveAttack(EnFirefly* this) {
    this->skelAnime.animPlaybackSpeed = 3.0f;
    this->actor.shape.rot.x = 0x1554;
    this->actor.shape.rot.y = this->actor.yawTowardsLink;
    this->actor.speedXZ = 3.0f;
    this->timer = 50;
    this->actionFunc = EnFirefly_DisturbDiveAttack;
} // This matches in several orderings

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A1379C.s")
s32 EnFirefly_ReturnToPerch(EnFirefly* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    f32 distFromInit;

    if (this->actor.params != 3) {
        return 0;
    }
    if (300.0f < func_8002DBB0(&player->actor, &this->actor.initPosRot.pos)) {
        distFromInit = func_8002DB6C(&this->actor, &this->actor.initPosRot.pos);
        if (distFromInit < 5.0f) {
            EnFirefly_SetupPerch(this);
            return 1;
        }
        distFromInit *= 0.05f;
        if (distFromInit < 1.0f) {
            this->actor.speedXZ *= distFromInit;
        }
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, func_8002DAC0(&this->actor, &this->actor.initPosRot.pos),
                                 0x300);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x,
                                 func_8002DB28(&this->actor, &this->actor.initPosRot.pos) + 0x1554, 0x100);
        return 1;
    }
    return 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A138B8.s")
// Find nearest torch and fly towards it
s32 EnFirefly_SeekTorch(EnFirefly* this, GlobalContext* globalCtx) {
    ObjSyokudai* findTorch;
    ObjSyokudai* closestTorch;
    f32 torchDist;
    f32 currentMinDist;
    Vec3f flamePos;

    // Finds the closest torch to the Keese, if any
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
    // If there is, fly into it and ignite
    if (closestTorch != NULL) {
        flamePos.x = closestTorch->actor.posRot.pos.x;
        flamePos.y = closestTorch->actor.posRot.pos.y + 52.0f + 15.0f;
        flamePos.z = closestTorch->actor.posRot.pos.z;
        if (func_8002DB6C(&this->actor, &flamePos) < 15.0f) {
            EnFirefly_Ignite(this);
            return 1;
        }
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, func_8002DA78(&this->actor, &closestTorch->actor), 0x300);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, func_8002DB28(&this->actor, &flamePos) + 0x1554, 0x100);
        return 1;
    }
    return 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A13A08.s")
void EnFirefly_Wait(EnFirefly* this, GlobalContext* globalCtx) {
    s32 skelanimeUpdated;
    f32 rand_f;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->timer != 0) {
        this->timer--;
    }
    skelanimeUpdated = func_800A56C8(&this->skelAnime, 0.0f);
    this->actor.speedXZ = (Math_Rand_ZeroOne() * 1.5f) + 1.5f;
    if (((this->bodyLit != 0) || (this->actor.params == 4)) ||
        ((EnFirefly_ReturnToPerch(this, globalCtx) == 0) && (EnFirefly_SeekTorch(this, globalCtx) == 0))) {
        if (skelanimeUpdated) {
            rand_f = Math_Rand_ZeroOne();
            if (rand_f < 0.5f) {
                Math_ApproxUpdateScaledS(&this->actor.shape.rot.y,
                                         func_8002DAC0(&this->actor, &this->actor.initPosRot.pos), 0x300);
            } else if (rand_f < 0.8f) {
                this->actor.shape.rot.y += Math_Rand_CenteredFloat(1536.0f);
            }
            // Climb if too close to ground
            if (this->actor.posRot.pos.y < (this->actor.groundY + 20.0f)) {
                this->targetPitch = 0x954;
                // Descend if above maxAltitude
            } else if (this->maxAltitude < this->actor.posRot.pos.y) {
                this->targetPitch = 0x2154;
                // Otherwise ascend or descend at random, biased towards ascending
            } else if (0.35f < Math_Rand_ZeroOne()) {
                this->targetPitch = 0x954;
            } else {
                this->targetPitch = 0x2154;
            }
        } else {
            if (this->actor.bgCheckFlags & 1) {
                this->targetPitch = 0x954;
            } else if ((this->actor.bgCheckFlags & 0x10) || (this->maxAltitude < this->actor.posRot.pos.y)) {
                this->targetPitch = 0x2154;
            }
        }
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, this->targetPitch, 0x100);
    }
    if (this->actor.bgCheckFlags & 8) {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.wallPolyRot, 2, 0xC00, 0x300);
    }
    if ((this->timer == 0) && (this->actor.xzDistFromLink < 200.0f) &&
        (Player_GetMask(globalCtx) != PLAYER_MASK_SKULL)) {
        EnFirefly_SetupDiveAttack(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A13C98.s")
// Fall to the ground after being hit
void EnFirefly_Fall(EnFirefly* this, GlobalContext* globalCtx) {
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
        if (this->timer != 0) {
            this->timer--;
        }
        if ((this->actor.bgCheckFlags & 1) || (this->timer == 0)) {
            EnFirefly_SetupDie(this);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A13D68.s")
// Hit the ground or burn up, spawn drops
void EnFirefly_Die(EnFirefly* this, GlobalContext* globalCtx) {
    if (this->timer != 0) {
        this->timer--;
    }
    Math_ApproxF(&this->actor.scale.x, 0.0f, 0.00034f);
    this->actor.scale.y = this->actor.scale.z = this->actor.scale.x;
    if (this->timer == 0) {
        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0xE0);
        Actor_Kill(&this->actor);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A13DE4.s")
void EnFirefly_DiveAttack(EnFirefly* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    Vec3f preyPos;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->timer != 0) {
        this->timer--;
    }
    Math_ApproxF(&this->actor.speedXZ, 4.0f, 0.5f);
    if (this->actor.bgCheckFlags & 8) {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.wallPolyRot, 2, 0xC00, 0x300);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, this->targetPitch, 0x100);
    } else if (func_8002E084(&this->actor, 0x2800)) {
        if (func_800A56C8(&this->skelAnime, 4.0f) != 0) {
            this->skelAnime.animPlaybackSpeed = 0.0f;
            this->skelAnime.animCurrentFrame = 4.0f;
        }
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 2, 0xC00, 0x300);
        preyPos.x = player->actor.posRot.pos.x;
        preyPos.y = player->actor.posRot.pos.y + 20.0f;
        preyPos.z = player->actor.posRot.pos.z;
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, func_8002DB28(&this->actor, &preyPos) + 0x1554, 2, 0x400,
                                0x100);
    } else {
        this->skelAnime.animPlaybackSpeed = 1.5f;
        if (80.0f < this->actor.xzDistFromLink) {
            Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 2, 0xC00, 0x300);
        }
        if (this->actor.bgCheckFlags & 1) {
            this->targetPitch = 0x954;
        }
        if ((this->actor.bgCheckFlags & 0x10) || (this->maxAltitude < this->actor.posRot.pos.y)) {
            this->targetPitch = 0x2154;
        } else {
            this->targetPitch = 0x954;
        }
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, this->targetPitch, 0x100);
    }
    if ((this->timer == 0) || (Player_GetMask(globalCtx) == PLAYER_MASK_SKULL)) {
        EnFirefly_SetupFlyAway(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A13FF4.s")
// Knockback after hitting player
void EnFirefly_Rebound(EnFirefly* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0, 0x100);
    Math_ApproxF(&this->actor.velocity.y, 0.0f, 0.4f);
    if (Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.15f) != 0) {
        if (this->timer != 0) {
            this->timer--;
        }
        if (this->timer == 0) {
            EnFirefly_SetupFlyAway(this);
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A14088.s")
void EnFirefly_FlyAway(EnFirefly* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->timer != 0) {
        this->timer--;
    }
    if (((fabsf(this->actor.posRot.pos.y - this->maxAltitude) < 10.0f) &&
         (Math_Vec3f_DistXZ(&this->actor.posRot.pos, &this->actor.initPosRot.pos) < 20.0f)) ||
        (this->timer == 0)) {
        EnFirefly_SetupWait(this);
        return;
    }
    Math_ApproxF(&this->actor.speedXZ, 3.0f, 0.3f);
    if (this->actor.bgCheckFlags & 1) {
        this->targetPitch = 0x954;
    } else if ((this->actor.bgCheckFlags & 0x10) || (this->maxAltitude < this->actor.posRot.pos.y)) {
        this->targetPitch = 0x2154;
    } else {
        this->targetPitch = 0x954;
    }
    if (this->actor.bgCheckFlags & 8) {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.wallPolyRot, 2, 0xC00, 0x300);
    } else {
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, func_8002DAC0(&this->actor, &this->actor.initPosRot.pos),
                                 0x300);
    }
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, this->targetPitch, 0x100);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A141F0.s")
void EnFirefly_Stunned(EnFirefly* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.5f);
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0x1554, 0x100);
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer == 0) {
        if (this->bodyLit != 0) {
            this->auraType = 1;
        } else if (this->actor.params == 4) {
            this->auraType = 2;
        }
        EnFirefly_SetupWait(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A14294.s")
void EnFirefly_FrozenFall(EnFirefly* this, GlobalContext* globalCtx) {
    if ((this->actor.bgCheckFlags & 1) || (this->actor.groundY == -32000.0f)) {
        this->actor.dmgEffectTimer = 0;
        EnFirefly_SetupDie(this);
    } else {
        // Does this have a special meaning? Doesn't seem to appear elsewhere
        this->actor.dmgEffectTimer = 0xFF;
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A142F4.s")
// When roosting, sit on wall and flap at random intervals
void EnFirefly_Perch(EnFirefly* this, GlobalContext* globalCtx) {
    Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, 0, 0x100);
    if (this->timer != 0) {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        if (func_800A56C8(&this->skelAnime, 6.0f) != 0) {
            this->timer--;
        }
    } else if (Math_Rand_ZeroOne() < 0.02f) {
        this->timer = 1;
    }
    if (this->actor.xzDistFromLink < 120.0f) {
        EnFirefly_SetupDisturbDiveAttack(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A143B4.s")
void EnFirefly_DisturbDiveAttack(EnFirefly* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    Vec3f preyPos;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->timer != 0) {
        this->timer--;
    }
    if (this->timer < 40) {
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, -0xAAC, 0x100);
    } else {
        preyPos.x = player->actor.posRot.pos.x;
        preyPos.y = player->actor.posRot.pos.y + 20.0f;
        preyPos.z = player->actor.posRot.pos.z;
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.x, func_8002DB28(&this->actor, &preyPos) + 0x1554, 0x100);
        Math_ApproxUpdateScaledS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 0x300);
    }
    if (this->timer == 0) {
        EnFirefly_SetupWait(this);
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A1448C.s")
void EnFirefly_Combust(EnFirefly* this, GlobalContext* globalCtx) {
    s32 i;

    for (i = 0; i <= 2; i++) {
        EffectSsEnFire_SpawnVec3f(globalCtx, &this->actor, &this->actor.posRot.pos, 40, 0, 0, i);
    }
    this->auraType = 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A1450C.s")
// This really does seem to be all if-elses, not a switch
void EnFirefly_HitByAttack(EnFirefly* this, GlobalContext* globalCtx) {
    u8 dmgEfct;

    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= 0xFFFD;
        func_80035650(&this->actor, &this->collider.list->body, 1);
        if ((this->actor.colChkInfo.damageEffect != 0) || (this->actor.colChkInfo.damage != 0)) {
            if (Actor_ApplyDamage(&this->actor) == 0) {
                func_80032C7C(globalCtx, &this->actor);
                this->actor.flags &= ~1;
            }
            dmgEfct = this->actor.colChkInfo.damageEffect;
            if (dmgEfct == 2) { // Din's Fire
                if (this->actor.params == 4) {
                    this->actor.colChkInfo.health = 0;
                    func_80032C7C(globalCtx, &this->actor);
                    EnFirefly_Combust(this, globalCtx);
                    EnFirefly_SetupFall(this);
                } else if (this->bodyLit == 0) {
                    EnFirefly_Ignite(this);
                    if (this->actionFunc == EnFirefly_Perch) {
                        EnFirefly_SetupWait(this);
                    }
                }
            } else if (dmgEfct == 3) { // Ice Arrows or Ice Magic
                if (this->actor.params == 4) {
                    EnFirefly_SetupFall(this);
                } else {
                    EnFirefly_SetupFrozenFall(this, globalCtx);
                }
            } else if (dmgEfct == 1) { // Deku Nuts
                if (this->actionFunc != EnFirefly_Stunned) {
                    EnFirefly_SetupStunned(this);
                }
            } else { // Fire Arrows
                if ((dmgEfct == 0xF) && (this->actor.params == 4)) {
                    EnFirefly_Combust(this, globalCtx);
                }
                EnFirefly_SetupFall(this);
            }
        }
    }
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/EnFirefly_Update.s")
void EnFirefly_Update(Actor* thisx, GlobalContext* globalCtx2) {
    EnFirefly* this = THIS;
    GlobalContext* globalCtx = globalCtx2;

    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~2;
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_FFLY_ATTACK);
        if (this->bodyLit != 0) {
            EnFirefly_Extinguish(this);
        }
        if (this->actionFunc != EnFirefly_DisturbDiveAttack) {
            EnFirefly_SetupRebound(this);
        }
    }
    EnFirefly_HitByAttack(this, globalCtx);
    this->actionFunc(this, globalCtx);
    if (!(this->actor.flags & 0x8000)) {
        if ((this->actor.colChkInfo.health == 0) || (this->actionFunc == EnFirefly_Stunned)) {
            Actor_MoveForward(&this->actor);
        } else {
            if (this->actionFunc != EnFirefly_Rebound) {
                this->actor.posRot.rot.x = 0x1554 - this->actor.shape.rot.x;
            }
            func_8002D97C(&this->actor);
        }
    }
    func_8002E4B4(globalCtx, &this->actor, 10.0f, 10.0f, 15.0f, 7);
    this->collider.list->dim.worldSphere.center.x = this->actor.posRot.pos.x;
    this->collider.list->dim.worldSphere.center.y = (this->actor.posRot.pos.y + 10.0f);
    this->collider.list->dim.worldSphere.center.z = this->actor.posRot.pos.z;
    if ((this->actionFunc == EnFirefly_DiveAttack) || (this->actionFunc == EnFirefly_DisturbDiveAttack)) {
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
    this->actor.posRot2.pos.x =
        (10.0f * Math_Sins(this->actor.shape.rot.x) * Math_Sins(this->actor.shape.rot.y)) + this->actor.posRot.pos.x;
    this->actor.posRot2.pos.y = (10.0f * Math_Coss(this->actor.shape.rot.x)) + this->actor.posRot.pos.y;
    this->actor.posRot2.pos.z =
        (10.0f * Math_Sins(this->actor.shape.rot.x) * Math_Coss(this->actor.shape.rot.y)) + this->actor.posRot.pos.z;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A14960.s")
s32 EnFirefly_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                               Actor* thisx, Gfx** gfx) {
    EnFirefly* this = THIS;

    // If Keese is invisible (and Lens of Truth not active?)
    if ((this->actor.draw == EnFirefly_DrawInvisible) && (globalCtx->actorCtx.unk_03 == 0)) {
        *dList = NULL;
    } else if (limbIndex == 1) {
        pos->y = pos->y + 2300.0f;
    }
    return 0;
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A149B4.s")
void EnFirefly_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx, Gfx** gfx) {
    Vec3f effPos;
    Vec3f* limbDest;
    void* effPrimColor;
    void* effEnvColor;
    MtxF mtx;
    s16 effScaleStep;
    s16 effLife;

    EnFirefly* this = THIS; // Can't go at the top or breaks stack

    if ((this->bodyLit == 0) && (limbIndex == 27)) {
        gSPDisplayList((*gfx)++, D_06001678);
    } else {
        if ((this->auraType == 1) || (this->auraType == 2)) { // Fire or Ice trail
            if ((limbIndex == 15) || (limbIndex == 21)) {
                if (this->actionFunc != EnFirefly_Die) {
                    Matrix_Get(&mtx);
                    effPos.x = (Math_Rand_ZeroOne() * 5.0f) + mtx.wx;
                    effPos.y = (Math_Rand_ZeroOne() * 5.0f) + mtx.wy;
                    effPos.z = (Math_Rand_ZeroOne() * 5.0f) + mtx.wz;
                    effScaleStep = -40;
                    effLife = 3;
                } else {
                    if (limbIndex == 15) {
                        effPos.x = (Math_Sins(9100 * this->timer) * this->timer) + this->actor.posRot.pos.x;
                        effPos.z = (Math_Coss(9100 * this->timer) * this->timer) + this->actor.posRot.pos.z;
                    } else {
                        effPos.x = this->actor.posRot.pos.x - (Math_Sins(9100 * this->timer) * this->timer);
                        effPos.z = this->actor.posRot.pos.z - (Math_Coss(9100 * this->timer) * this->timer);
                    }
                    effPos.y = this->actor.posRot.pos.y + ((15 - this->timer) * 1.5f);
                    effScaleStep = -5;
                    effLife = 10;
                }
                if (this->auraType == 1) {
                    // Orange
                    effPrimColor = &D_80A14FA0;
                    effEnvColor = &D_80A14FA4;
                } else {
                    // Blue
                    effPrimColor = &D_80A14FA8;
                    effEnvColor = &D_80A14FAC;
                }
                func_8002843C(globalCtx, &effPos, &D_80A14FB0, &D_80A14FBC, effPrimColor, effEnvColor, 250,
                              effScaleStep, effLife);
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
    if (this->bodyLit != 0) {
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 0);
    } else {
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, 255);
    }
    POLY_OPA_DISP = SkelAnime_Draw2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                    EnFirefly_OverrideLimbDraw, EnFirefly_PostLimbDraw, &this->actor, POLY_OPA_DISP);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_firefly.c", 1763);
}

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Firefly/func _80A14E28.s")
void EnFirefly_DrawInvisible(Actor* thisx, GlobalContext* globalCtx) {
    EnFirefly* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_firefly.c", 1775);
    func_80093D84(globalCtx->state.gfxCtx);
    if (this->bodyLit != 0) {
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, 0);
    } else {
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, 255);
    }
    POLY_XLU_DISP = SkelAnime_Draw2(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                    EnFirefly_OverrideLimbDraw, EnFirefly_PostLimbDraw, &this->actor, POLY_XLU_DISP);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_firefly.c", 1805);
}
