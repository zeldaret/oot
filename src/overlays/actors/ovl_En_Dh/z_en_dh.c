#include "z_en_dh.h"

#define FLAGS 0x00000415

#define THIS ((EnDh*)thisx)

typedef enum {
    /* 0 */ DH_WAIT,
    /* 1 */ DH_RETREAT,
    /* 2 */ DH_BURROW,
    /* 3 */ DH_WALK,
    /* 4 */ DH_ATTACK,
    /* 5 */ DH_DEATH,
    /* 6 */ DH_DAMAGE
} EnDhAction;

void EnDh_Init(Actor* this, GlobalContext* globalCtx);
void EnDh_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDh_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDh_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnDh_SetupWait(EnDh* this);
void EnDh_SetupWalk(EnDh* this);
void EnDh_SetupAttack(EnDh* this);
void EnDh_SetupBurrow(EnDh* this);

void EnDh_Wait(EnDh* this, GlobalContext* globalCtx);
void EnDh_Walk(EnDh* this, GlobalContext* globalCtx);
void EnDh_Retreat(EnDh* this, GlobalContext* globalCtx);
void EnDh_Attack(EnDh* this, GlobalContext* globalCtx);
void EnDh_Burrow(EnDh* this, GlobalContext* globalCtx);
void EnDh_Damage(EnDh* this, GlobalContext* globalCtx);
void EnDh_Death(EnDh* this, GlobalContext* globalCtx);

extern FlexSkeletonHeader D_06007E88;
extern AnimationHeader D_06005880;
extern AnimationHeader D_06003A8C;
extern AnimationHeader D_06004658;
extern AnimationHeader D_06002148;
extern AnimationHeader D_06003D6C;
extern AnimationHeader D_060032BC;
extern AnimationHeader D_06001A3C;
extern AnimationHeader D_0600375C;
extern Gfx D_06007FC0[];

const ActorInit En_Dh_InitVars = {
    ACTOR_EN_DH,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_DH,
    sizeof(EnDh),
    (ActorFunc)EnDh_Init,
    (ActorFunc)EnDh_Destroy,
    (ActorFunc)EnDh_Update,
    (ActorFunc)EnDh_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK0, 0x00, 0x0D, 0x09, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000008, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 35, 70, 0, { 0, 0, 0 } },
};

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x09 },
        { 1, { { 0, 0, 0 }, 20 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK6, 0x00, 0x09, 0x09, 0x10, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

static DamageTable D_809EC620 = { {
    0x00, 0xF2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF2, 0xF2, 0xF4, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF2, 0xF4, 0xF2, 0xF4, 0xF8, 0xF4, 0x00, 0x00, 0xF4, 0x00,
} };

static InitChainEntry sInitChain[] = {
    ICHAIN_S8(naviEnemyId, 47, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 2000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, -3500, ICHAIN_STOP),
};

void EnDh_SetupAction(EnDh* this, EnDhActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnDh_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnDh* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actor.colChkInfo.damageTable = &D_809EC620;
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06007E88, &D_06005880, this->limbDrawTable, this->limbRotTable,
                       16);
    ActorShape_Init(&this->actor.shape, 0.0f, &ActorShadow_DrawFunc_Circle, 64.0f);
    this->actor.params = ENDH_WAIT_UNDERGROUND;
    this->actor.colChkInfo.mass = 0xFE;
    this->actor.colChkInfo.health = (gSaveContext.linkAge == 0) ? 14 : 20;
    this->alpha = this->unk_258 = 255;
    this->actor.flags &= ~1;
    Collider_InitCylinder(globalCtx, &this->collider1);
    Collider_SetCylinder(globalCtx, &this->collider1, &this->actor, &sCylinderInit);
    Collider_InitJntSph(globalCtx, &this->collider2);
    Collider_SetJntSph(globalCtx, &this->collider2, &this->actor, &sJntSphInit, this->elements);
    EnDh_SetupWait(this);
}

void EnDh_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDh* this = THIS;

    func_800F5B58();
    Collider_DestroyCylinder(globalCtx, &this->collider1);
    Collider_DestroyJntSph(globalCtx, &this->collider2);
}

void EnDh_SpawnDebris(GlobalContext* globalCtx, EnDh* this, Vec3f* spawnPos, f32 spread, s32 arg4, f32 accelXZ,
                      f32 scale) {
    Vec3f pos;
    Vec3f vel = { 0.0f, 8.0f, 0.0f };
    Vec3f accel = { 0.0f, -1.5f, 0.0f };
    f32 spreadAngle;
    f32 scaleMod;

    spreadAngle = (Math_Rand_ZeroOne() - 0.5f) * 6.28f;
    pos.y = this->actor.groundY;
    pos.x = (func_800CA720(spreadAngle) * spread) + spawnPos->x;
    pos.z = (func_800CA774(spreadAngle) * spread) + spawnPos->z;
    accel.x = (Math_Rand_ZeroOne() - 0.5f) * accelXZ;
    accel.z = (Math_Rand_ZeroOne() - 0.5f) * accelXZ;
    vel.y += (Math_Rand_ZeroOne() - 0.5f) * 4.0f;
    scaleMod = (Math_Rand_ZeroOne() * 5.0f) + 12.0f;
    EffectSsHahen_Spawn(globalCtx, &pos, &vel, &accel, arg4, scaleMod * scale, -1, 10, NULL);
}

void EnDh_SetupWait(EnDh* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06003A8C);
    this->curAction = DH_WAIT;
    this->actor.posRot.pos.x = Math_Rand_CenteredFloat(600.0f) + this->actor.initPosRot.pos.x;
    this->actor.posRot.pos.z = Math_Rand_CenteredFloat(600.0f) + this->actor.initPosRot.pos.z;
    this->actor.shape.unk_08 = -15000.0f;
    this->dirtWaveSpread = this->actor.speedXZ = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->actor.flags |= 0x80;
    this->dirtWavePhase = this->actionState = this->actor.params = ENDH_WAIT_UNDERGROUND;
    EnDh_SetupAction(this, EnDh_Wait);
}

void EnDh_Wait(EnDh* this, GlobalContext* globalCtx) {
    if ((s32)this->skelAnime.animCurrentFrame == 5) {
        func_800F5ACC(0x38);
    }
    if (Actor_GetCollidedExplosive(globalCtx, &this->collider1.base)) {
        this->actor.params = ENDH_START_ATTACK_BOMB;
    }
    if ((this->actor.params >= ENDH_START_ATTACK_GRAB) || (this->actor.params <= ENDH_HANDS_KILLED_4)) {
        switch (this->actionState) {
            case 0:
                this->actor.flags |= 1;
                this->actor.shape.rot.y = this->actor.yawTowardsLink;
                this->actor.flags &= ~0x80;
                this->actionState++;
                this->drawDirtWave++;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEADHAND_HIDE);
            case 1:
                this->dirtWavePhase += 0x3A7;
                Math_SmoothScaleMaxMinF(&this->dirtWaveSpread, 300.0f, 1.0f, 5.0f, 0.0f);
                this->dirtWaveHeight = Math_Sins(this->dirtWavePhase) * 55.0f;
                this->dirtWaveAlpha = (s16)(Math_Sins(this->dirtWavePhase) * 255.0f);
                EnDh_SpawnDebris(globalCtx, this, &this->actor.posRot.pos, this->dirtWaveSpread, 4, 2.05f, 1.2f);
                if (this->actor.shape.unk_08 == 0.0f) {
                    this->drawDirtWave = false;
                    this->actionState++;
                } else if (this->dirtWavePhase > 0x12C0) {
                    this->actor.shape.unk_08 += 500.0f;
                }
                break;
            case 2:
                EnDh_SetupWalk(this);
                break;
        }
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0x7D0, 0);
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        if (this->actor.params != ENDH_START_ATTACK_BOMB) {
            func_8008EEAC(globalCtx, &this->actor);
        }
    }
}

void EnDh_SetupWalk(EnDh* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06003A8C, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06003A8C) - 3.0f, 0,
                         -6.0f);
    this->curAction = DH_WALK;
    this->timer = 300;
    this->actor.speedXZ = 1.0f;
    EnDh_SetupAction(this, EnDh_Walk);
}

void EnDh_Walk(EnDh* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0xFA, 0);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (((s32)this->skelAnime.animCurrentFrame % 8) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEADHAND_WALK);
    }
    if ((globalCtx->gameplayFrames & 0x5F) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEADHAND_LAUGH);
    }
    if (this->actor.xzDistFromLink <= 100.0f) {
        this->actor.speedXZ = 0.0f;
        if (func_8002E084(&this->actor, 60 * 0x10000 / 360)) {
            EnDh_SetupAttack(this);
        }
    } else if (--this->timer == 0) {
        EnDh_SetupBurrow(this);
    }
}

void EnDh_SetupRetreat(EnDh* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06005880, -4.0f);
    this->curAction = DH_RETREAT;
    this->timer = 70;
    this->actor.speedXZ = 1.0f;
    EnDh_SetupAction(this, EnDh_Retreat);
}

void EnDh_Retreat(EnDh* this, GlobalContext* globalCtx) {
    this->timer--;
    if (this->timer == 0) {
        this->retreat = false;
        EnDh_SetupBurrow(this);
    } else {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, (s16)(this->actor.yawTowardsLink + 0x8000), 1, 0xBB8, 0);
    }
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

void EnDh_SetupAttack(EnDh* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06004658, -6.0f);
    this->timer = this->actionState = 0;
    this->curAction = DH_ATTACK;
    this->actor.speedXZ = 0.0f;
    EnDh_SetupAction(this, EnDh_Attack);
}

void EnDh_Attack(EnDh* this, GlobalContext* globalCtx) {
    s32 pad;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        this->actionState++;
    } else if ((this->actor.xzDistFromLink > 100.0f) || !func_8002E084(&this->actor, 60 * 0x10000 / 360)) {
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06004658, -1.0f, this->skelAnime.animCurrentFrame, 0.0f, 2, -4.0f);
        this->actionState = 4;
        this->collider2.base.atFlags = this->collider2.list[0].body.toucherFlags = 0;
        this->collider2.list[0].body.toucher.flags = this->collider2.list[0].body.toucher.damage = 0;
    }
    switch (this->actionState) {
        case 1:
            SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06001A3C);
            this->actionState++;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEADHAND_BITE);
        case 0:
            Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0x5DC, 0);
            break;
        case 2:
            if (this->skelAnime.animCurrentFrame >= 4.0f) {
                this->collider2.base.atFlags = this->collider2.list[0].body.toucherFlags = 0x11;
                this->collider2.list[0].body.toucher.flags = 0xFFCFFFFF;
                this->collider2.list->body.toucher.damage = 8;
            }
            if (this->collider2.base.atFlags & 4) {
                this->collider2.base.atFlags &= ~6;
                this->collider2.base.atFlags = this->collider2.list[0].body.toucherFlags = 0;
                this->collider2.list[0].body.toucher.flags = this->collider2.list[0].body.toucher.damage = 0;
                this->actionState++;
            } else if (this->collider2.base.atFlags & 2) {
                this->collider2.base.atFlags &= ~2;
                func_8002F71C(globalCtx, &this->actor, 8.0f, this->actor.shape.rot.y, 8.0f);
            }
            break;
        case 3:
            if ((this->actor.xzDistFromLink <= 100.0f) && (func_8002E084(&this->actor, 60 * 0x10000 / 360) != 0)) {
                SkelAnime_ChangeAnim(&this->skelAnime, &D_06004658, 1.0f, 20.0f, SkelAnime_GetFrameCount(&D_06004658),
                                     2, -6.0f);
                this->actionState = 0;
            } else {
                SkelAnime_ChangeAnim(&this->skelAnime, &D_06004658, -1.0f, SkelAnime_GetFrameCount(&D_06004658), 0.0f,
                                     2, -4.0f);
                this->actionState++;
                this->collider2.base.atFlags = this->collider2.list[0].body.toucherFlags = 0;
                this->collider2.list[0].body.toucher.flags = this->collider2.list[0].body.toucher.damage = 0;
            }
            break;
        case 5:
            EnDh_SetupWalk(this);
            break;
        case 4:
            break;
    }
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
}

void EnDh_SetupBurrow(EnDh* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06002148, -6.0f);
    this->curAction = DH_BURROW;
    this->dirtWaveSpread = this->actor.speedXZ = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->dirtWavePhase = 0;
    this->actionState = 0;
    this->actor.flags &= ~1;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEADHAND_HIDE);
    EnDh_SetupAction(this, EnDh_Burrow);
}

void EnDh_Burrow(EnDh* this, GlobalContext* globalCtx) {
    switch (this->actionState) {
        case 0:
            this->actionState++;
            this->drawDirtWave++;
            this->collider1.base.atFlags = this->collider1.body.toucherFlags = 0x11;
            this->collider1.body.toucher.flags = 0xFFCFFFFF;
            this->collider1.body.toucher.damage = 4;
        case 1:
            this->dirtWavePhase += 0x47E;
            Math_SmoothScaleMaxMinF(&this->dirtWaveSpread, 300.0f, 1.0f, 8.0f, 0.0f);
            this->dirtWaveHeight = Math_Sins(this->dirtWavePhase) * 55.0f;
            this->dirtWaveAlpha = (s16)(Math_Sins(this->dirtWavePhase) * 255.0f);
            EnDh_SpawnDebris(globalCtx, this, &this->actor.posRot.pos, this->dirtWaveSpread, 4, 2.05f, 1.2f);
            this->collider1.dim.radius = this->dirtWaveSpread * 0.6f;
            if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
                this->actionState++;
            }
            break;
        case 2:
            this->drawDirtWave = false;
            this->collider1.dim.radius = 35;
            this->collider1.base.atFlags = this->collider1.body.toucherFlags = 0;
            this->collider1.body.toucher.flags = this->collider1.body.toucher.damage = 0;
            EnDh_SetupWait(this);
            break;
    }
}

void EnDh_SetupDamage(EnDh* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06003D6C, -6.0f);
    if (this->actor.bgCheckFlags & 1) {
        this->actor.speedXZ = -1.0f;
    }
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEADHAND_DAMAGE);
    this->curAction = DH_DAMAGE;
    EnDh_SetupAction(this, EnDh_Damage);
}

void EnDh_Damage(EnDh* this, GlobalContext* globalCtx) {
    if (this->actor.speedXZ < 0.0f) {
        this->actor.speedXZ += 0.15f;
    }
    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        if (this->retreat) {
            EnDh_SetupRetreat(this, globalCtx);
        } else if ((this->actor.xzDistFromLink <= 105.0f) && func_8002E084(&this->actor, 60 * 0x10000 / 360)) {
            f32 frames = SkelAnime_GetFrameCount(&D_06004658);

            EnDh_SetupAttack(this);
            SkelAnime_ChangeAnim(&this->skelAnime, &D_06004658, 1.0f, 20.0f, frames, 2, -6.0f);
        } else {
            EnDh_SetupWalk(this);
        }
        this->unk_258 = 255;
    }
}

void EnDh_SetupDeath(EnDh* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_060032BC, -1.0f);
    this->curAction = DH_DEATH;
    this->timer = 300;
    this->actor.flags &= ~1;
    this->actor.speedXZ = 0.0f;
    func_800F5B58();
    this->actor.params = ENDH_DEATH;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_DEADHAND_DEAD);
    EnDh_SetupAction(this, EnDh_Death);
}

void EnDh_Death(EnDh* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) || (this->timer != 300)) {
        if (this->timer == 300) {
            SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_0600375C);
        }
        this->timer--;
        if (this->timer < 150) {
            if (this->alpha != 0) {
                this->actor.scale.y -= 0.000075f;
                this->actor.shape.unk_14 = this->alpha -= 5;
            } else {
                Actor_Kill(&this->actor);
                return;
            }
        }
    } else {
        if (((s32)this->skelAnime.animCurrentFrame == 53) || ((s32)this->skelAnime.animCurrentFrame == 56) ||
            ((s32)this->skelAnime.animCurrentFrame == 61)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_RIZA_DOWN);
        }
        if ((s32)this->skelAnime.animCurrentFrame == 61) {
            Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_PROP);
        }
    }
}

void EnDh_CollisionCheck(EnDh* this, GlobalContext* globalCtx) {
    s32 pad;
    Player* player = PLAYER;
    s32 lastHealth;

    if ((this->collider2.base.acFlags & 2) && !this->retreat) {
        this->collider2.base.acFlags &= ~2;
        if ((this->actor.colChkInfo.damageEffect != 0) && (this->actor.colChkInfo.damageEffect != 6)) {
            this->collider2.base.atFlags = this->collider2.list[0].body.toucherFlags = 0;
            this->collider2.list[0].body.toucher.flags = this->collider2.list[0].body.toucher.damage = 0;
            if (player->unk_844 != 0) {
                this->unk_258 = player->unk_845;
            }
            func_8003426C(&this->actor, 0x4000, 0xFF, 0, 8);
            lastHealth = this->actor.colChkInfo.health;
            if (Actor_ApplyDamage(&this->actor) == 0) {
                EnDh_SetupDeath(this);
                Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0x90);
            } else {
                if (((lastHealth >= 15) && (this->actor.colChkInfo.health < 15)) ||
                    ((lastHealth >= 9) && (this->actor.colChkInfo.health < 9)) ||
                    ((lastHealth >= 3) && (this->actor.colChkInfo.health < 3))) {

                    this->retreat++;
                }
                EnDh_SetupDamage(this);
            }
        }
    }
}

void EnDh_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDh* this = THIS;
    Player* player = PLAYER;
    s32 pad40;

    EnDh_CollisionCheck(this, globalCtx);
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 20.0f, 45.0f, 45.0f, 0x1D);
    this->actor.posRot2.pos = this->headPos;
    Collider_CylinderUpdate(&this->actor, &this->collider1);
    if (this->actor.colChkInfo.health > 0) {
        if (this->curAction == DH_WAIT) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        } else {
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        }
        if (((this->curAction != DH_DAMAGE) && (this->actor.shape.unk_08 == 0.0f)) ||
            ((player->unk_844 != 0) && (player->unk_845 != this->unk_258))) {

            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        }
    } else {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider2.base);
    }
}

void EnDh_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfx) {
    Vec3f headOffset = { 2000.0f, 1000.0f, 0.0f };
    EnDh* this = THIS;

    if (limbIndex == 13) {
        Matrix_MultVec3f(&headOffset, &this->headPos);
        Matrix_Push();
        Matrix_Translate(headOffset.x, headOffset.y, headOffset.z, MTXMODE_APPLY);
        func_800628A4(1, &this->collider2);
        Matrix_Pull();
    }
}

void EnDh_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnDh* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_dh.c", 1099);
    if (this->alpha == 255) {
        func_80093D18(globalCtx->state.gfxCtx);
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 0, 0, this->alpha);
        gSPSegment(POLY_OPA_DISP++, 0x08, &D_80116280[2]);
        POLY_OPA_DISP =
            SkelAnime_DrawFlex(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                               this->skelAnime.dListCount, NULL, EnDh_PostLimbDraw, &this->actor, POLY_OPA_DISP);
    } else {
        func_80093D84(globalCtx->state.gfxCtx);
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 0, this->alpha);
        gSPSegment(POLY_XLU_DISP++, 0x08, &D_80116280[0]);
        POLY_XLU_DISP = SkelAnime_DrawFlex(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                                           this->skelAnime.dListCount, NULL, NULL, &this->actor, POLY_XLU_DISP);
    }
    if (this->drawDirtWave) {
        func_80093D84(globalCtx->state.gfxCtx);
        gDPSetEnvColor(POLY_XLU_DISP++, 85, 55, 0, 130);
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (globalCtx->state.frames * -3) % 0x80, 0, 0x20, 0x40, 1,
                                    (globalCtx->state.frames * -10) % 0x80, (globalCtx->state.frames * -20) % 0x100,
                                    0x20, 0x40));
        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 0, 0, 0, this->dirtWaveAlpha);

        Matrix_Translate(0.0f, -this->actor.shape.unk_08, 0.0f, MTXMODE_APPLY);
        Matrix_Scale(this->dirtWaveSpread * 0.01f, this->dirtWaveHeight * 0.01f, this->dirtWaveSpread * 0.01f,
                     MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_dh.c", 1160),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_06007FC0);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_dh.c", 1166);
}
