/*
 * File: z_en_am.c
 * Overlay: ovl_En_Am
 * Description: Armos
 */

#include "z_en_am.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"

#define FLAGS 0x04000015

#define THIS ((EnAm*)thisx)

void EnAm_Init(Actor* thisx, GlobalContext* globalCtx);
void EnAm_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnAm_Update(Actor* thisx, GlobalContext* globalCtx);
void EnAm_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnAm_SetupStatue(EnAm* this);
void EnAm_SetupSleep(EnAm* this);
void EnAm_Statue(EnAm* this, GlobalContext* globalCtx);
void EnAm_Sleep(EnAm* this, GlobalContext* globalCtx);
void EnAm_Lunge(EnAm* this, GlobalContext* globalCtx);
void EnAm_RotateToHome(EnAm* this, GlobalContext* globalCtx);
void EnAm_MoveToHome(EnAm* this, GlobalContext* globalCtx);
void EnAm_RotateToInit(EnAm* this, GlobalContext* globalCtx);
void EnAm_Cooldown(EnAm* this, GlobalContext* globalCtx);
void EnAm_Ricochet(EnAm* this, GlobalContext* globalCtx);
void EnAm_Stunned(EnAm* this, GlobalContext* globalCtx);
void EnAm_RecoilFromDamage(EnAm* this, GlobalContext* globalCtx);

typedef enum {
    /* 00 */ AM_BEHAVIOR_NONE,
    /* 01 */ AM_BEHAVIOR_DAMAGED,
    /* 02 */ AM_BEHAVIOR_2, // unused
    /* 03 */ AM_BEHAVIOR_DO_NOTHING,
    /* 04 */ AM_BEHAVIOR_4, // unused
    /* 05 */ AM_BEHAVIOR_5, // unused
    /* 06 */ AM_BEHAVIOR_STUNNED,
    /* 07 */ AM_BEHAVIOR_GO_HOME,
    /* 08 */ AM_BEHAVIOR_RICOCHET,
    /* 09 */ AM_BEHAVIOR_9, // unused
    /* 10 */ AM_BEHAVIOR_AGRO
} ArmosBehavior;

const ActorInit En_Am_InitVars = {
    ACTOR_EN_AM,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_AM,
    sizeof(EnAm),
    (ActorFunc)EnAm_Init,
    (ActorFunc)EnAm_Destroy,
    (ActorFunc)EnAm_Update,
    (ActorFunc)EnAm_Draw,
};

ColliderCylinderInit D_809AFF80 = {
    { COLTYPE_UNK5, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 15, 70, 0, { 0, 0, 0 } },
};

ColliderCylinderInit D_809AFFAC = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x0D, 0x00, 0x00, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00400106, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { 15, 70, 0, { 0, 0, 0 } },
};

ColliderQuadInit D_809AFFD8 = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x00, COLSHAPE_QUAD },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x08 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

typedef enum {
    /* 00 */ AM_DMGEFF_NONE, // used by anything that cant kill the armos
    /* 01 */ AM_DMGEFF_NUT,
    /* 06 */ AM_DMGEFF_STUN = 6, // doesnt include deku nuts
    /* 13 */ AM_DMGEFF_ICE = 13,
    /* 14 */ AM_DMGEFF_NON_ICE_MAGIC,
    /* 15 */ AM_DMGEFF_KILL // any damage source that can kill the armos (and isnt a special case)
} ArmosDamageEffect;

static DamageTable D_809B0028 = {
    /* Deku nut      */ 0x10,
    /* Deku stick    */ 0x02,
    /* Slingshot     */ 0x01,
    /* Explosive     */ 0xF2,
    /* Boomerang     */ 0x60,
    /* Normal arrow  */ 0xF2,
    /* Hammer swing  */ 0xF2,
    /* Hookshot      */ 0x60,
    /* Kokiri sword  */ 0x01,
    /* Master sword  */ 0xF2,
    /* Giant's Knife */ 0xF4,
    /* Fire arrow    */ 0xF2,
    /* Ice arrow     */ 0xD4,
    /* Light arrow   */ 0xF2,
    /* Wind arrow    */ 0x02,
    /* Shadow arrow  */ 0x02,
    /* Spirit arrow  */ 0x02,
    /* Fire magic    */ 0xE0,
    /* Ice magic     */ 0xD3,
    /* Light magic   */ 0xE0,
    /* Shield        */ 0x00,
    /* Mirror Ray    */ 0x00,
    /* Kokiri spin   */ 0x01,
    /* Giant spin    */ 0xF4,
    /* Master spin   */ 0xF2,
    /* Kokiri jump   */ 0x02,
    /* Giant jump    */ 0xF8,
    /* Master jump   */ 0xF4,
    /* Unknown 1     */ 0x00,
    /* Unblockable   */ 0x00,
    /* Hammer jump   */ 0xF4,
    /* Unknown 2     */ 0x00,
};

InitChainEntry D_809B0048[] = {
    ICHAIN_S8(naviEnemyId, 19, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -4000, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 5300, ICHAIN_STOP),
};

extern CollisionHeader D_06000118;
extern AnimationHeader D_06000238;
extern AnimationHeader D_0600033C;
extern SkeletonHeader D_06005948;
extern AnimationHeader D_06005B3C;

void EnAm_SetupAction(EnAm* this, EnAmActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

/**
 * Checks bgCheckFlags in the direction of current yaw at the specified distance.
 *
 * Returns true if the armos would land on the ground in the resulting position.
 *
 * If it won't land on the ground, it will return true anyway if the floor the armos will be on
 * is 20 units higher than the home position. This is a convoluted way of making sure
 * the Armos can move down slight slopes but not steep ones (or complete drop offs).
 */
s32 EnAm_CanMove(EnAm* this, GlobalContext* globalCtx, f32 distance, s16 yaw) {
    s16 ret;
    s16 curBgCheckFlags;
    f32 sin;
    f32 cos;
    Vec3f curPos;

    // save current position and bgCheckFlags to restore later
    curPos = this->dyna.actor.posRot.pos;
    curBgCheckFlags = this->dyna.actor.bgCheckFlags;

    sin = Math_SinS(yaw) * distance;
    cos = Math_CosS(yaw) * distance;

    this->dyna.actor.posRot.pos.x += sin;
    this->dyna.actor.posRot.pos.z += cos;

    func_8002E4B4(globalCtx, &this->dyna.actor, 0.0f, 0.0f, 0.0f, 4);

    this->dyna.actor.posRot.pos = curPos;

    ret = this->dyna.actor.bgCheckFlags & 1;

    if (!ret) {
        if ((this->dyna.actor.initPosRot.pos.y - 20.0f) <= this->dyna.actor.groundY) {
            ret = true;
        }
    }

    this->dyna.actor.bgCheckFlags = curBgCheckFlags;

    return ret;
}

void EnAm_Init(Actor* thisx, GlobalContext* globalCtx) {
    CollisionHeader* colHeader = NULL;
    s32 pad;
    EnAm* this = THIS;

    Actor_ProcessInitChain(&this->dyna.actor, D_809B0048);
    ActorShape_Init(&this->dyna.actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 48.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06005948, &D_0600033C, this->jointTable, this->morphTable, 14);
    Actor_SetScale(&this->dyna.actor, 0.01f);
    DynaPolyActor_Init(&this->dyna, DPM_UNK);
    Collider_InitCylinder(globalCtx, &this->cylinder1);
    Collider_InitCylinder(globalCtx, &this->cylinder2);
    Collider_SetCylinder(globalCtx, &this->cylinder1, &this->dyna.actor, &D_809AFF80);

    if (this->dyna.actor.params == ARMOS_STATUE) {
        this->dyna.actor.colChkInfo.health = 1;
        Collider_SetCylinder(globalCtx, &this->cylinder2, &this->dyna.actor, &D_809AFF80);
        this->cylinder1.base.maskA = 0x35;
        this->cylinder2.base.maskA = 0xD;
        CollisionHeader_GetVirtual(&D_06000118, &colHeader);
        this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);
        Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->dyna.actor, ACTORTYPE_BG);
        EnAm_SetupStatue(this);
    } else {
        Collider_SetCylinder(globalCtx, &this->cylinder2, &this->dyna.actor, &D_809AFFAC);
        Collider_InitQuad(globalCtx, &this->hitCollider);
        Collider_SetQuad(globalCtx, &this->hitCollider, &this->dyna.actor, &D_809AFFD8);
        this->dyna.actor.colChkInfo.health = 1;
        this->dyna.actor.colChkInfo.damageTable = &D_809B0028;
        EnAm_SetupSleep(this);
        this->unk_258 = 0;
    }

    this->dyna.actor.colChkInfo.mass = 0xFE;
}

void EnAm_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnAm* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
    Collider_DestroyCylinder(globalCtx, &this->cylinder1);
    Collider_DestroyCylinder(globalCtx, &this->cylinder2);
    //! @bug Quad collider is not destroyed (though destroy doesnt really do anything anyway)
}

void EnAm_SpawnEffects(EnAm* this, GlobalContext* globalCtx) {
    static Vec3f velocity = { 0.0f, -1.5f, 0.0f };
    static Vec3f accel = { 0.0f, -0.2f, 0.0f };
    s32 i;
    Vec3f pos;
    Color_RGBA8 primColor = { 100, 100, 100, 0 };
    Color_RGBA8 envColor = { 40, 40, 40, 0 };
    s32 pad;

    for (i = 4; i > 0; i--) {
        pos.x = ((Rand_ZeroOne() - 0.5f) * 65.0f) + this->dyna.actor.posRot.pos.x;
        pos.y = ((Rand_ZeroOne() - 0.5f) * 10.0f) + (this->dyna.actor.posRot.pos.y + 40.0f);
        pos.z = ((Rand_ZeroOne() - 0.5f) * 65.0f) + this->dyna.actor.posRot.pos.z;

        EffectSsKiraKira_SpawnSmall(globalCtx, &pos, &velocity, &accel, &primColor, &envColor);
    }

    Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EN_AMOS_WALK);
    func_80033260(globalCtx, &this->dyna.actor, &this->dyna.actor.posRot.pos, 4.0f, 3, 8.0f, 0x12C, 0xF, 0);
}

void EnAm_SetupSleep(EnAm* this) {
    f32 lastFrame = Animation_GetLastFrame(&D_0600033C);

    Animation_Change(&this->skelAnime, &D_0600033C, 0.0f, lastFrame, lastFrame, ANIMMODE_LOOP, 0.0f);
    this->behavior = AM_BEHAVIOR_DO_NOTHING;
    this->dyna.actor.speedXZ = 0.0f;

    if (this->textureBlend == 255) {
        this->unk_258 = 0;
    } else {
        this->unk_258 = 1;
    }

    EnAm_SetupAction(this, EnAm_Sleep);
}

void EnAm_SetupStatue(EnAm* this) {
    f32 lastFrame = Animation_GetLastFrame(&D_0600033C);

    Animation_Change(&this->skelAnime, &D_0600033C, 0.0f, lastFrame, lastFrame, ANIMMODE_LOOP, 0.0f);
    this->dyna.actor.flags &= ~1;
    this->behavior = AM_BEHAVIOR_DO_NOTHING;
    this->dyna.actor.speedXZ = 0.0f;
    EnAm_SetupAction(this, EnAm_Statue);
}

void EnAm_SetupLunge(EnAm* this) {
    Animation_PlayLoopSetSpeed(&this->skelAnime, &D_06000238, 4.0f);
    this->unk_258 = 3;
    this->behavior = AM_BEHAVIOR_AGRO;
    this->dyna.actor.speedXZ = 0.0f;
    this->dyna.actor.posRot.rot.y = this->dyna.actor.shape.rot.y;
    EnAm_SetupAction(this, EnAm_Lunge);
}

void EnAm_SetupCooldown(EnAm* this) {
    Animation_PlayLoopSetSpeed(&this->skelAnime, &D_06000238, 4.0f);
    this->unk_258 = 3;
    this->cooldownTimer = 40;
    this->behavior = AM_BEHAVIOR_AGRO;
    this->dyna.actor.speedXZ = 0.0f;
    this->dyna.actor.posRot.rot.y = this->dyna.actor.shape.rot.y;
    EnAm_SetupAction(this, EnAm_Cooldown);
}

void EnAm_SetupMoveToHome(EnAm* this) {
    Animation_PlayLoopSetSpeed(&this->skelAnime, &D_06000238, 4.0f);
    this->behavior = AM_BEHAVIOR_GO_HOME;
    this->unk_258 = 1;
    this->dyna.actor.speedXZ = 0.0f;
    EnAm_SetupAction(this, EnAm_MoveToHome);
}

void EnAm_SetupRotateToInit(EnAm* this) {
    Animation_PlayLoopSetSpeed(&this->skelAnime, &D_06000238, 4.0f);
    this->behavior = AM_BEHAVIOR_GO_HOME;
    this->unk_258 = 1;
    this->dyna.actor.speedXZ = 0.0f;
    EnAm_SetupAction(this, EnAm_RotateToInit);
}

void EnAm_SetupRotateToHome(EnAm* this) {
    Animation_PlayLoopSetSpeed(&this->skelAnime, &D_06000238, 4.0f);
    this->behavior = AM_BEHAVIOR_GO_HOME;
    this->dyna.actor.speedXZ = 0.0f;
    this->dyna.actor.posRot.rot.y = this->dyna.actor.shape.rot.y;
    EnAm_SetupAction(this, EnAm_RotateToHome);
}

void EnAm_SetupRecoilFromDamage(EnAm* this, GlobalContext* globalCtx) {
    Animation_Change(&this->skelAnime, &D_06005B3C, 1.0f, 4.0f, Animation_GetLastFrame(&D_06005B3C) - 6.0f,
                     ANIMMODE_ONCE, 0.0f);
    this->behavior = AM_BEHAVIOR_DAMAGED;
    this->dyna.actor.posRot.rot.y = this->dyna.actor.yawTowardsLink;
    Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EN_AMOS_DAMAGE);

    if (EnAm_CanMove(this, globalCtx, -6.0f, this->dyna.actor.posRot.rot.y)) {
        this->dyna.actor.speedXZ = -6.0f;
    }

    this->dyna.actor.dmgEffectTimer = 0;
    func_80032C7C(globalCtx, &this->dyna.actor);
    EnAm_SetupAction(this, EnAm_RecoilFromDamage);
}

void EnAm_SetupRicochet(EnAm* this, GlobalContext* globalCtx) {
    Animation_Change(&this->skelAnime, &D_0600033C, 1.0f, 0.0f, 8.0f, ANIMMODE_ONCE, 0.0f);
    this->dyna.actor.posRot.rot.y = this->dyna.actor.yawTowardsLink;

    if (EnAm_CanMove(this, globalCtx, -6.0f, this->dyna.actor.posRot.rot.y)) {
        this->dyna.actor.speedXZ = -6.0f;
    }

    this->unk_264 = 0;
    this->unk_258 = 0;
    this->cooldownTimer = 5;
    this->behavior = AM_BEHAVIOR_RICOCHET;
    EnAm_SetupAction(this, EnAm_Ricochet);
}

void EnAm_Sleep(EnAm* this, GlobalContext* globalCtx) {
    f32 cos;
    s32 pad;
    f32 rand;
    f32 sin;
    Player* player = PLAYER;

    if ((this->unk_258 != 0) || ((this->cylinder1.base.maskA & 2) && (this->cylinder1.base.oc == &player->actor)) ||
        (this->cylinder1.base.acFlags & 2)) {
        this->cylinder1.base.acFlags &= ~2;

        if (this->textureBlend == 0) {
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EN_AMOS_WAVE);
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EN_AMOS_VOICE);
            func_8003426C(&this->dyna.actor, 0x4000, 255, 0, 8);
        }

        if (this->textureBlend >= 240) {
            this->attackTimer = 200;
            this->textureBlend = 255;
            this->dyna.actor.flags |= 1;
            this->dyna.actor.shape.unk_08 = 0.0f;
            EnAm_SetupLunge(this);
        } else {
            // shake randomly about the origin while waking up
            rand = (Rand_ZeroOne() - 0.5f) * 10.0f;

            cos = Math_CosS(this->dyna.actor.shape.rot.y) * rand;
            sin = Math_SinS(this->dyna.actor.shape.rot.y) * rand;

            this->dyna.actor.posRot.pos.x = this->shakeOrigin.x + cos;
            this->dyna.actor.posRot.pos.z = this->shakeOrigin.z + sin;

            this->textureBlend += 20;
            this->unk_258 = 1;
        }
    } else {
        if (this->textureBlend > 10) {
            this->textureBlend -= 10;
        } else {
            this->textureBlend = 0;
            this->dyna.actor.flags &= ~1;

            if (this->dyna.bgId < 0) {
                this->unk_264 = 0;
            }

            this->dyna.actor.speedXZ += this->dyna.unk_150;
            this->shakeOrigin = this->dyna.actor.posRot.pos;
            this->dyna.actor.posRot.rot.y = this->dyna.unk_158;
            this->dyna.actor.speedXZ = CLAMP(this->dyna.actor.speedXZ, -2.5f, 2.5f);
            Math_SmoothStepToF(&this->dyna.actor.speedXZ, 0.0f, 1.0f, 1.0f, 0.0f);

            if (this->dyna.actor.speedXZ != 0.0f) {
                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_ROCK_SLIDE - SFX_FLAG);
            }

            this->dyna.unk_154 = 0.0f;
            this->dyna.unk_150 = 0.0f;
        }
    }
}

/**
 * Spin toward the direction of the home position to start moving back to it.
 */
void EnAm_RotateToHome(EnAm* this, GlobalContext* globalCtx) {
    s16 yawToHome = Math_Vec3f_Yaw(&this->dyna.actor.posRot.pos, &this->dyna.actor.initPosRot.pos);

    if (this->skelAnime.curFrame == 8.0f) {
        Math_SmoothStepToS(&this->dyna.actor.posRot.rot.y, yawToHome, 1, 0x1F40, 0);
        this->dyna.actor.velocity.y = 12.0f;
    } else if (this->skelAnime.curFrame > 11.0f) {
        if (!(this->dyna.actor.bgCheckFlags & 1)) {
            this->skelAnime.curFrame = 11;
        } else {
            EnAm_SpawnEffects(this, globalCtx);

            if (this->dyna.actor.posRot.rot.y == yawToHome) {
                this->unk_258 = 0;
            }

            this->dyna.actor.velocity.y = 0.0f;
            this->dyna.actor.posRot.pos.y = this->dyna.actor.groundY;
        }
    }

    SkelAnime_Update(&this->skelAnime);

    if (this->unk_258 == 0) {
        EnAm_SetupMoveToHome(this);
    }

    this->dyna.actor.shape.rot.y = this->dyna.actor.posRot.rot.y;
}

/**
 * After reaching the home position, spin back to the starting rotation.
 */
void EnAm_RotateToInit(EnAm* this, GlobalContext* globalCtx) {
    if (this->skelAnime.curFrame == 8.0f) {
        if ((this->dyna.actor.posRot.pos.x == this->dyna.actor.initPosRot.pos.x) &&
            (this->dyna.actor.posRot.pos.z == this->dyna.actor.initPosRot.pos.z)) {
            Math_SmoothStepToS(&this->dyna.actor.posRot.rot.y, this->dyna.actor.initPosRot.rot.y, 1, 0x1F40, 0);
        }
        this->unk_258 = 2;
        this->dyna.actor.velocity.y = 12.0f;
    } else if (this->skelAnime.curFrame > 11.0f) {
        if (!(this->dyna.actor.bgCheckFlags & 1)) {
            this->skelAnime.curFrame = 11;
        } else {
            this->unk_258 = 1;
            EnAm_SpawnEffects(this, globalCtx);

            if (this->dyna.actor.initPosRot.rot.y == this->dyna.actor.posRot.rot.y) {
                this->unk_258 = 0;
            }

            this->dyna.actor.velocity.y = 0.0f;
            this->dyna.actor.posRot.pos.y = this->dyna.actor.groundY;
        }
    }

    if (this->unk_258 == 2) {
        Math_SmoothStepToF(&this->dyna.actor.posRot.pos.x, this->dyna.actor.initPosRot.pos.x, 1.0f, 8.0f, 0.0f);
        Math_SmoothStepToF(&this->dyna.actor.posRot.pos.z, this->dyna.actor.initPosRot.pos.z, 1.0f, 8.0f, 0.0f);
    }

    SkelAnime_Update(&this->skelAnime);

    if (this->unk_258 == 0) {
        EnAm_SetupSleep(this);
    }

    this->dyna.actor.shape.rot.y = this->dyna.actor.posRot.rot.y;
}

void EnAm_MoveToHome(EnAm* this, GlobalContext* globalCtx) {
    s16 yawToHome = Math_Vec3f_Yaw(&this->dyna.actor.posRot.pos, &this->dyna.actor.initPosRot.pos);

    if (this->skelAnime.curFrame == 8.0f) {
        this->dyna.actor.velocity.y = 12.0f;
        this->dyna.actor.speedXZ = 6.0f;
    } else if (this->skelAnime.curFrame > 11.0f) {
        if (!(this->dyna.actor.bgCheckFlags & 1)) {
            this->skelAnime.curFrame = 11;
        } else {
            Math_SmoothStepToS(&this->dyna.actor.posRot.rot.y, yawToHome, 1, 0xBB8, 0);

            if (this->dyna.actor.bgCheckFlags & 2) {
                this->unk_258--;
            }

            this->dyna.actor.velocity.y = 0.0f;
            this->dyna.actor.speedXZ = 0.0f;
            this->dyna.actor.posRot.pos.y = this->dyna.actor.groundY;
            EnAm_SpawnEffects(this, globalCtx);

            if (func_8002DB6C(&this->dyna.actor, &this->dyna.actor.initPosRot.pos) < 80.0f) {
                EnAm_SetupRotateToInit(this);
            }
        }
    }

    // turn away from a wall if touching one
    if ((this->dyna.actor.speedXZ != 0.0f) && (this->dyna.actor.bgCheckFlags & 8)) {
        this->dyna.actor.posRot.rot.y = this->dyna.actor.wallPolyRot;
        Actor_MoveForward(&this->dyna.actor);
    }

    SkelAnime_Update(&this->skelAnime);

    this->dyna.actor.shape.rot.y = this->dyna.actor.posRot.rot.y;
}

void EnAm_RecoilFromDamage(EnAm* this, GlobalContext* globalCtx) {
    if (this->dyna.actor.speedXZ < 0.0f) {
        this->dyna.actor.speedXZ += 0.5f;
    }

    if ((this->dyna.actor.velocity.y <= 0.0f) && !EnAm_CanMove(this, globalCtx, -8.0f, this->dyna.actor.posRot.rot.y)) {
        this->dyna.actor.speedXZ = 0.0f;
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        EnAm_SetupLunge(this);
        this->deathTimer = 64;
        this->panicSpinRot = 0;
    }
}

/**
 * After doing 3 lunges, wait for 2 seconds before attacking again.
 * Turn toward the player before lunging again.
 */
void EnAm_Cooldown(EnAm* this, GlobalContext* globalCtx) {
    s16 yawDiff = this->dyna.actor.yawTowardsLink - this->dyna.actor.posRot.rot.y;

    if (yawDiff < 0) {
        yawDiff = -yawDiff;
    }

    if (this->cooldownTimer != 0) {
        this->cooldownTimer--;
    } else {
        if (this->skelAnime.curFrame == 8.0f) {
            Math_SmoothStepToS(&this->dyna.actor.posRot.rot.y, this->dyna.actor.yawTowardsLink, 1, 0x1F40, 0);
            this->dyna.actor.velocity.y = 12.0f;
        } else if (this->skelAnime.curFrame > 11.0f) {
            if (!(this->dyna.actor.bgCheckFlags & 1)) {
                this->skelAnime.curFrame = 11;
            } else {
                if (yawDiff < 3500) {
                    this->unk_258 = 0;
                }
                this->dyna.actor.velocity.y = 0.0f;
                this->dyna.actor.posRot.pos.y = this->dyna.actor.groundY;
                EnAm_SpawnEffects(this, globalCtx);
            }
        }

        SkelAnime_Update(&this->skelAnime);

        if (this->unk_258 == 0) {
            EnAm_SetupLunge(this);
            Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EN_AMOS_VOICE);
        }

        this->dyna.actor.shape.rot.y = this->dyna.actor.posRot.rot.y;
    }
}

/**
 * Lunge toward the player in an attempt to deal damage. Hop 3 times.
 * Used for both normal attacks and the death sequence.
 */
void EnAm_Lunge(EnAm* this, GlobalContext* globalCtx) {
    if (this->deathTimer < 52) {
        if (this->skelAnime.curFrame == 8.0f) {
            this->dyna.actor.velocity.y = 12.0f;

            if (EnAm_CanMove(this, globalCtx, 80.0f, this->dyna.actor.posRot.rot.y)) {
                this->dyna.actor.speedXZ = 6.0f;
            } else {
                this->dyna.actor.speedXZ = 0.0f;
            }

            this->unk_264 = 1;
            this->hitCollider.base.atFlags &= ~6;
        } else if (this->skelAnime.curFrame > 11.0f) {
            if (!(this->dyna.actor.bgCheckFlags & 1)) {
                this->skelAnime.curFrame = 11;
            } else {
                Math_SmoothStepToS(&this->dyna.actor.posRot.rot.y, this->dyna.actor.yawTowardsLink, 1, 0x1770, 0);

                if (this->dyna.actor.bgCheckFlags & 2) {
                    this->unk_258--;
                }

                this->dyna.actor.velocity.y = 0.0f;
                this->dyna.actor.speedXZ = 0.0f;
                this->unk_264 = 0;
                this->dyna.actor.posRot.pos.y = this->dyna.actor.groundY;
                EnAm_SpawnEffects(this, globalCtx);

                if (((func_8002DBB0(&this->dyna.actor, &this->dyna.actor.initPosRot.pos) > 240.0f) ||
                     (this->attackTimer == 0)) &&
                    (this->deathTimer == 0)) {
                    EnAm_SetupRotateToHome(this);
                }
            }
        }

        // turn and move away from a wall if contact is made with one
        if ((this->dyna.actor.speedXZ != 0.0f) && (this->dyna.actor.bgCheckFlags & 8)) {
            this->dyna.actor.posRot.rot.y =
                (this->dyna.actor.wallPolyRot - this->dyna.actor.posRot.rot.y) + this->dyna.actor.wallPolyRot;
            Actor_MoveForward(&this->dyna.actor);
            this->dyna.actor.bgCheckFlags &= ~8;
        }

        SkelAnime_Update(&this->skelAnime);

        if ((this->unk_258 == 0) && (this->deathTimer == 0)) {
            EnAm_SetupCooldown(this);
        }

        if (this->deathTimer == 0) {
            this->dyna.actor.shape.rot.y = this->dyna.actor.posRot.rot.y;
        } else {
            if (this->panicSpinRot < 8000) {
                this->panicSpinRot += 800;
            }
            this->dyna.actor.shape.rot.y += this->panicSpinRot;
        }
    }
}

void EnAm_Statue(EnAm* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 temp158f = this->dyna.unk_158;
    s16 moveDir = 0;

    if (this->unk_258 == 0) {
        if (this->dyna.unk_150 != 0.0f) {
            this->unk_258 = -0x8000;
        }
    } else {
        this->unk_258 -= 0x800;
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_ROCK_SLIDE - SFX_FLAG);

        if (this->dyna.unk_150 < 0.0f) {
            temp158f = this->dyna.unk_158 + 0x8000;
        }

        if (this->cylinder1.base.maskA & 2) {
            moveDir = Math_Vec3f_Yaw(&this->dyna.actor.posRot.pos, &this->cylinder1.base.oc->posRot.pos) - temp158f;
        }

        if ((this->dyna.unk_150 == 0.0f) || (this->unk_258 == 0) || !(this->dyna.actor.bgCheckFlags & 1) ||
            !func_800435D8(globalCtx, &this->dyna, 0x14,
                           (Math_SinS(this->unk_258) * (this->dyna.unk_150 * 0.5f)) + 40.0f, 0xA) ||
            ((this->cylinder1.base.maskA & 2) && (ABS(moveDir) <= 0x2000))) {

            this->unk_258 = 0;
            player->stateFlags2 &= ~0x151;
            player->actor.speedXZ = 0.0f;
            this->dyna.unk_150 = 0.0f;
            this->dyna.unk_154 = 0.0f;
        }

        this->dyna.actor.posRot.rot.y = this->dyna.unk_158;
        this->dyna.actor.speedXZ = Math_SinS(this->unk_258) * (this->dyna.unk_150 * 0.5f);
    }

    if (this->dyna.actor.bgCheckFlags & 2) {
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_BLOCK_BOUND);
    }

    this->dyna.unk_150 = this->dyna.unk_154 = 0.0f;
}

void EnAm_SetupStunned(EnAm* this, GlobalContext* globalCtx) {
    Animation_Change(&this->skelAnime, &D_06005B3C, 1.0f, 0.0f, Animation_GetLastFrame(&D_06005B3C), ANIMMODE_ONCE,
                     0.0f);

    this->dyna.actor.posRot.rot.y = this->dyna.actor.yawTowardsLink;

    if (EnAm_CanMove(this, globalCtx, -6.0f, this->dyna.actor.posRot.rot.y)) {
        this->dyna.actor.speedXZ = -6.0f;
    }

    func_8003426C(&this->dyna.actor, 0, 120, 0, 100);

    if (this->damageEffect == AM_DMGEFF_ICE) {
        this->iceTimer = 48;
    }

    this->behavior = AM_BEHAVIOR_STUNNED;
    Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EN_GOMA_JR_FREEZE);
    EnAm_SetupAction(this, EnAm_Stunned);
}

void EnAm_Stunned(EnAm* this, GlobalContext* globalCtx) {
    Math_SmoothStepToS(&this->dyna.actor.shape.rot.y, this->dyna.actor.posRot.rot.y, 1, 0xFA0, 0);

    if (this->dyna.actor.speedXZ < 0.0f) {
        this->dyna.actor.speedXZ += 0.5f;
    }

    if ((this->dyna.actor.velocity.y <= 0.0f) && !EnAm_CanMove(this, globalCtx, -9.0f, this->dyna.actor.posRot.rot.y)) {
        this->dyna.actor.speedXZ = 0.0f;
    }

    if (this->dyna.actor.dmgEffectTimer == 0) {
        if (this->dyna.actor.colChkInfo.health != 0) {
            EnAm_SetupLunge(this);
        } else {
            EnAm_SetupRecoilFromDamage(this, globalCtx);
        }
    }
}

void EnAm_Ricochet(EnAm* this, GlobalContext* globalCtx) {
    if (this->dyna.actor.speedXZ < 0.0f) {
        this->dyna.actor.speedXZ += 0.5f;
    }

    if ((this->dyna.actor.velocity.y <= 0.0f) &&
        !EnAm_CanMove(this, globalCtx, this->dyna.actor.speedXZ * 1.5f, this->dyna.actor.posRot.rot.y)) {
        this->dyna.actor.speedXZ = 0.0f;
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        this->dyna.actor.speedXZ = 0.0f;
        EnAm_SetupLunge(this);
    }
}

void EnAm_TransformSwordHitbox(Actor* thisx, GlobalContext* globalCtx) {
    static Vec3f D_809B0074 = { 2500.0f, 7000.0f, 0.0f };
    static Vec3f D_809B0080 = { -2500.0f, 0.0f, 0.0f };
    static Vec3f D_809B008C = { 2500.0f, 7000.0f, 4000.0f };
    static Vec3f D_809B0098 = { -2500.0f, 0.0f, 4000.0f };
    EnAm* this = THIS;

    Matrix_MultVec3f(&D_809B0074, &this->hitCollider.dim.quad[1]);
    Matrix_MultVec3f(&D_809B0080, &this->hitCollider.dim.quad[0]);
    Matrix_MultVec3f(&D_809B008C, &this->hitCollider.dim.quad[3]);
    Matrix_MultVec3f(&D_809B0098, &this->hitCollider.dim.quad[2]);

    func_80062734(&this->hitCollider, &this->hitCollider.dim.quad[0], &this->hitCollider.dim.quad[1],
                  &this->hitCollider.dim.quad[2], &this->hitCollider.dim.quad[3]);
}

void EnAm_UpdateDamage(EnAm* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f sparkPos;

    if (this->deathTimer == 0) {
        if (this->cylinder2.base.acFlags & 0x80) {
            this->cylinder2.base.acFlags &= ~0x82;
            this->cylinder1.base.acFlags &= ~2;

            if (this->behavior >= 5) {
                EnAm_SetupRicochet(this, globalCtx);
            }
        } else {
            if ((this->cylinder1.base.acFlags & 2) && (this->behavior >= 5)) {
                this->cylinder1.base.acFlags &= ~2;

                if (this->dyna.actor.colChkInfo.damageEffect != AM_DMGEFF_NON_ICE_MAGIC) {
                    this->unk_264 = 0;
                    this->damageEffect = this->dyna.actor.colChkInfo.damageEffect;
                    func_80035650(&this->dyna.actor, &this->cylinder1.body, 0);

                    if ((this->dyna.actor.colChkInfo.damageEffect == AM_DMGEFF_NUT) ||
                        (this->dyna.actor.colChkInfo.damageEffect == AM_DMGEFF_STUN) ||
                        (this->dyna.actor.colChkInfo.damageEffect == AM_DMGEFF_ICE)) {
                        if (this->behavior != AM_BEHAVIOR_STUNNED) {
                            EnAm_SetupStunned(this, globalCtx);

                            if (this->dyna.actor.colChkInfo.damage != 0) {
                                this->dyna.actor.colChkInfo.health = 0;
                            }
                        } else if (this->dyna.actor.colChkInfo.damageEffect == AM_DMGEFF_STUN) {
                            sparkPos = this->dyna.actor.posRot.pos;
                            sparkPos.y += 50.0f;
                            func_80062D60(globalCtx, &sparkPos);
                        }
                    } else {
                        if ((this->dyna.actor.colChkInfo.damageEffect == AM_DMGEFF_KILL) ||
                            (this->behavior == AM_BEHAVIOR_STUNNED)) {
                            this->dyna.actor.colChkInfo.health = 0;

                            EnAm_SetupRecoilFromDamage(this, globalCtx);
                        } else {
                            EnAm_SetupRicochet(this, globalCtx);
                        }
                    }
                }
            }
        }
    }
}

void EnAm_Update(Actor* thisx, GlobalContext* globalCtx) {
    static Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    static Color_RGBA8 dustPrimColor = { 150, 150, 150, 255 };
    static Color_RGBA8 dustEnvColor = { 100, 100, 100, 150 };
    s32 pad;
    EnAm* this = THIS;
    EnBom* bomb;
    Vec3f dustPos;
    s32 i;
    f32 dustPosScale;
    s32 pad1;

    if (this->dyna.actor.params != ARMOS_STATUE) {
        EnAm_UpdateDamage(this, globalCtx);
    }

    if (this->dyna.actor.colChkInfo.damageEffect != AM_DMGEFF_NON_ICE_MAGIC) {
        if (this->attackTimer != 0) {
            this->attackTimer--;
        }

        this->actionFunc(this, globalCtx);

        if (this->deathTimer != 0) {
            this->deathTimer--;

            if (this->deathTimer == 0) {
                dustPosScale = globalCtx->gameplayFrames * 10;

                EnAm_SpawnEffects(this, globalCtx);
                bomb = (EnBom*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOM, this->dyna.actor.posRot.pos.x,
                                           this->dyna.actor.posRot.pos.y, this->dyna.actor.posRot.pos.z, 0, 0, 2,
                                           BOMB_BODY);
                if (bomb != NULL) {
                    bomb->timer = 0;
                }

                Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EN_AMOS_DEAD);
                Item_DropCollectibleRandom(globalCtx, &this->dyna.actor, &this->dyna.actor.posRot.pos, 0xA0);

                for (i = 9; i >= 0; i--) {
                    dustPos.x = (sinf(dustPosScale) * 7.0f) + this->dyna.actor.posRot.pos.x;
                    dustPos.y = (Rand_CenteredFloat(10.0f) * 6.0f) + (this->dyna.actor.posRot.pos.y + 40.0f);
                    dustPos.z = (cosf(dustPosScale) * 7.0f) + this->dyna.actor.posRot.pos.z;

                    func_8002836C(globalCtx, &dustPos, &zeroVec, &zeroVec, &dustPrimColor, &dustEnvColor, 200, 45, 12);
                    dustPosScale += 60.0f;
                }

                Actor_Kill(&this->dyna.actor);
                return;
            }

            if ((this->deathTimer & 3) == 0) {
                func_8003426C(&this->dyna.actor, 0x4000, 255, 0, 4);
            }
        }

        Actor_MoveForward(&this->dyna.actor);
        func_8002E4B4(globalCtx, &this->dyna.actor, 20.0f, 28.0f, 80.0f, 0x1D);
    }

    Collider_CylinderUpdate(&this->dyna.actor, &this->cylinder1);
    Collider_CylinderUpdate(&this->dyna.actor, &this->cylinder2);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->cylinder1.base);

    if (this->dyna.actor.params != ARMOS_STATUE) {
        Actor_SetHeight(&this->dyna.actor, this->dyna.actor.scale.x * 4500.0f);

        if (this->dyna.actor.dmgEffectTimer == 0) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->cylinder2.base);
        }

        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->cylinder1.base);

        if ((this->behavior >= 4) && (this->unk_264 > 0)) {
            if (!(this->hitCollider.base.atFlags & 4)) {
                if (this->hitCollider.base.atFlags & 2) {
                    Player* player = PLAYER;

                    if (this->hitCollider.base.at == &player->actor) {
                        Audio_PlayActorSound2(&player->actor, NA_SE_PL_BODY_HIT);
                    }
                }
                CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->hitCollider.base);
            } else {
                this->hitCollider.base.atFlags &= ~6;
                this->hitCollider.base.at = NULL;
                EnAm_SetupRicochet(this, globalCtx);
            }
        }
    } else {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->cylinder2.base);
    }
}

static Vec3f sUnused1 = { 1100.0f, -700.0f, 0.0f };
static Vec3f sUnused2 = { 0.0f, 0.0f, 0.0f };

void EnAm_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnAm* this = THIS;

    if ((limbIndex == 1) && (this->unk_264 != 0)) {
        EnAm_TransformSwordHitbox(&this->dyna.actor, globalCtx);
    }
}

Vec3f sIcePosOffsets[] = {
    { 20.0f, 40.0f, 0.0f },   { 10.0f, 60.0f, 10.0f },   { -10.0f, 60.0f, 10.0f }, { -20.0f, 40.0f, 0.0f },
    { 10.0f, 60.0f, -10.0f }, { -10.0f, 60.0f, -10.0f }, { 0.0f, 40.0f, -20.0f },  { 10.0f, 20.0f, 10.0f },
    { 10.0f, 20.0f, -10.0f }, { 0.0f, 40.0f, 20.0f },    { -10.0f, 20.0f, 10.0f }, { -10.0f, 20.0f, -10.0f },
};

void EnAm_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f sp68;
    EnAm* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_am.c", 1580);

    func_80093D18(globalCtx->state.gfxCtx);
    gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, this->textureBlend);
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, NULL, EnAm_PostLimbDraw, this);

    if (this->iceTimer != 0) {
        this->dyna.actor.dmgEffectTimer++;
        if (1) {};
        this->iceTimer--;

        if ((this->iceTimer & 3) == 0) {
            s32 index;

            index = this->iceTimer >> 2;

            sp68.x = this->dyna.actor.posRot.pos.x + sIcePosOffsets[index].x;
            sp68.y = this->dyna.actor.posRot.pos.y + sIcePosOffsets[index].y;
            sp68.z = this->dyna.actor.posRot.pos.z + sIcePosOffsets[index].z;

            EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->dyna.actor, &sp68, 150, 150, 150, 250, 235, 245, 255,
                                           1.4f);
        }
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_am.c", 1605);
}
