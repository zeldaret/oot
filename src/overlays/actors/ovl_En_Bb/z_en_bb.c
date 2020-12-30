/*
 * File: z_en_bb.c
 * Overlay: ovl_En_Bb
 * Description: Bubble (Flying Skull Enemy)
 */

#include "z_en_bb.h"

#define FLAGS 0x01000015

#define THIS ((EnBb*)thisx)

#define vBombHopPhase actionVar1
#define vTrailIdx actionVar1
#define vTrailMaxAlpha actionVar2
#define vMoveAngleY actionVar2
#define vFlameTimer actionVar2

typedef enum {
    /* 0 */ BB_DAMAGE,
    /* 1 */ BB_KILL,
    /* 2 */ BB_FLAME_TRAIL,
    /* 3 */ BB_DOWN,
    /* 4 */ BB_STUNNED,
    /* 5 */ BB_UNUSED,
    /* 6 */ BB_BLUE,
    /* 7 */ BB_RED,
    /* 8 */ BB_WHITE,
    /* 9 */ BB_GREEN
} EnBbAction;

typedef enum {
    /* 0 */ BBMOVE_NORMAL,
    /* 1 */ BBMOVE_NOCLIP,
    /* 2 */ BBMOVE_HIDDEN
} EnBbMoveMode;

typedef enum {
    /* 0 */ BBBLUE_NORMAL,
    /* 1 */ BBBLUE_AGGRO
} EnBbBlueActionState;

typedef enum {
    /* 0 */ BBRED_WAIT,
    /* 1 */ BBRED_ATTACK,
    /* 2 */ BBRED_HIDE
} EnBbRedActionState;

typedef enum {
    /* 0 */ BBGREEN_FLAME_ON,
    /* 1 */ BBGREEN_FLAME_OFF
} EnBbGreenActionState;

// Main functions

void EnBb_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBb_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBb_Update(Actor* this, GlobalContext* globalCtx);
void EnBb_Draw(Actor* this, GlobalContext* globalCtx);

// Helper functions

void EnBb_FaceWaypoint(EnBb* this);
void EnBb_SetWaypoint(EnBb* this, GlobalContext* globalCtx);

// Action functions

void EnBb_SetupFlameTrail(EnBb* this);
void EnBb_FlameTrail(EnBb* this, GlobalContext* globalCtx);

void EnBb_SetupDeath(EnBb* this, GlobalContext* globalCtx);
void EnBb_Death(EnBb* this, GlobalContext* globalCtx);

void EnBb_Damage(EnBb* this, GlobalContext* globalCtx);

void EnBb_SetupBlue(EnBb* this);
void EnBb_Blue(EnBb* this, GlobalContext* globalCtx);

void EnBb_SetupDown(EnBb* this);
void EnBb_Down(EnBb* this, GlobalContext* globalCtx);

void EnBb_SetupRed(GlobalContext* globalCtx, EnBb* this);
void EnBb_Red(EnBb* this, GlobalContext* globalCtx);

void EnBb_SetupWhite(GlobalContext* globalCtx, EnBb* this);
void EnBb_White(EnBb* this, GlobalContext* globalCtx);

void EnBb_InitGreen(EnBb* this, GlobalContext* globalCtx);
void EnBb_Green(EnBb* this, GlobalContext* globalCtx);

void EnBb_Stunned(EnBb* this, GlobalContext* globalCtx);

extern Gfx D_0404D4E0[];
extern AnimationHeader D_06000184;
extern AnimationHeader D_06000444;
extern SkeletonHeader D_06001A30;

static DamageTable sDamageTableBlueGreen = {
    0xF0, 0x02, 0x01, 0xA2, 0xF0, 0xE2, 0xA2, 0xF0, 0x01, 0x02, 0x04, 0xE2, 0xC4, 0xB4, 0x00, 0x00,
    0x00, 0x60, 0x93, 0x83, 0xA0, 0xA0, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x60, 0x00, 0xA4, 0x00,
};

static DamageTable sDamageTableRed = {
    0xD0, 0xD0, 0xD0, 0xA2, 0xD0, 0xE2, 0xA2, 0xD0, 0xD0, 0xE2, 0xE4, 0xE2, 0x94, 0xE2, 0xE4, 0xE2,
    0xE2, 0x60, 0x93, 0x60, 0xA0, 0xA0, 0x01, 0xE4, 0xE2, 0x02, 0xE8, 0xE4, 0x60, 0x00, 0xA4, 0x00,
};

static DamageTable sDamageTableWhite = {
    0xF0, 0xE2, 0xE1, 0xA2, 0xF0, 0xE2, 0xA2, 0xF0, 0xE1, 0xE2, 0xE4, 0x54, 0xE2, 0xE2, 0xE4, 0xE2,
    0xE2, 0x74, 0x60, 0x60, 0xA0, 0xA0, 0xE1, 0xE4, 0xE2, 0xE2, 0xE8, 0xE4, 0x60, 0x00, 0xA4, 0x00,
};

const ActorInit En_Bb_InitVars = {
    ACTOR_EN_BB,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_BB,
    sizeof(EnBb),
    (ActorFunc)EnBb_Init,
    (ActorFunc)EnBb_Destroy,
    (ActorFunc)EnBb_Update,
    (ActorFunc)EnBb_Draw,
};

static ColliderJntSphItemInit sJntSphElementInit[1] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 0, { { 0, -120, 0 }, 4 }, 300 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK3, 0x11, 0x09, 0x09, 0x10, COLSHAPE_JNTSPH },
    ARRAY_COUNT(sJntSphElementInit),
    sJntSphElementInit,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(unk_4C, 10, ICHAIN_STOP),
};

void EnBb_SetupAction(EnBb* this, EnBbActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

Actor* EnBb_FindExplosive(GlobalContext* globalCtx, EnBb* this, f32 range) {
    Actor* explosive = globalCtx->actorCtx.actorList[ACTORTYPE_EXPLOSIVES].first;
    f32 dist;

    while (explosive != NULL) {
        if (explosive->params != 0) {
            explosive = explosive->next;
            continue;
        }
        dist = func_8002DB48(&this->actor, explosive);
        if ((explosive->params == 0) && (dist <= range)) {
            return explosive;
        }
        explosive = explosive->next;
    }
    return NULL;
}

void EnBb_SpawnFlameTrail(GlobalContext* globalCtx, EnBb* this, s16 startAtZero) {
    EnBb* now = this;
    EnBb* next;
    s32 i;

    for (i = 0; i < 5; i++) {
        next = (EnBb*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BB, this->actor.posRot.pos.x,
                                  this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
        if (next != NULL) {
            now->actor.child = &next->actor;
            next->actor.parent = &now->actor;
            next->targetActor = &this->actor;
            next->vTrailIdx = i + 1;
            next->actor.scale.x = 1.0f;
            next->vTrailMaxAlpha = next->flamePrimAlpha = 255 - (i * 40);
            next->flameScaleY = next->actor.scale.y = 0.8f - (i * 0.075f);
            next->flameScaleX = next->actor.scale.z = 1.0f - (i * 0.094f);
            if (startAtZero) {
                next->flamePrimAlpha = 0;
                next->flameScaleY = next->flameScaleX = 0.0f;
            }
            next->flameScrollMod = i + 1;
            next->timer = 2 * i + 2;
            next->flameEnvColor.r = 255;
            now = next;
        }
    }
}

void EnBb_KillFlameTrail(EnBb* this) {
    Actor* actor = &this->actor;

    while (actor->child != NULL) {
        Actor* nextActor = actor->child;

        if (nextActor->id == ACTOR_EN_BB) {
            nextActor->parent = NULL;
            actor->child = NULL;
            nextActor->params = ENBB_KILL_TRAIL;
        }
        actor = nextActor;
    }
    this->actor.child = NULL;
}

void EnBb_Init(Actor* thisx, GlobalContext* globalCtx) {
    EffectBlureInit1 blureInit;
    s32 pad;
    EnBb* this = THIS;

    Actor_ProcessInitChain(thisx, sInitChain);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06001A30, &D_06000444, this->jointTable, this->morphTable, 16);
    this->unk_254 = 0;
    thisx->colChkInfo.health = 4;
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, thisx, &sJntSphInit, this->elements);

    this->actionState = thisx->params >> 8;

    if (thisx->params & 0x80) {
        thisx->params |= 0xFF00;
    }
    if (thisx->params <= ENBB_BLUE) {
        ActorShape_Init(&thisx->shape, 200.0f, ActorShadow_DrawFunc_Circle, 35.0f);
    }
    if (thisx->params & 0xFF00) {
        this->timer = 0;
        this->flameScaleY = 80.0f;
        this->flameScaleX = 100.0f;
        this->collider.list[0].body.toucherFlags = 9;
        this->collider.list[0].body.toucher.flags = 0xFFCFFFFF;
        this->collider.list[0].body.toucher.damage = 8;
        this->bobSize = this->actionState * 20.0f;
        this->flamePrimAlpha = 255;
        this->moveMode = BBMOVE_NORMAL;
        Actor_SetScale(thisx, 0.01f);
        switch (thisx->params) {
            case ENBB_BLUE:
                thisx->naviEnemyId = 0x1C;
                thisx->colChkInfo.damageTable = &sDamageTableBlueGreen;
                this->flamePrimBlue = this->flameEnvColor.b = 255;
                thisx->posRot.pos.y += 50.0f;
                EnBb_SetupBlue(this);
                thisx->flags |= 0x4000;
                break;
            case ENBB_RED:
                thisx->naviEnemyId = 0x24;
                thisx->colChkInfo.damageTable = &sDamageTableRed;
                this->flameEnvColor.r = 255;
                this->collider.list[0].body.toucher.effect = 1;
                EnBb_SetupRed(globalCtx, this);
                break;
            case ENBB_WHITE:
                thisx->naviEnemyId = 0x1D;
                thisx->colChkInfo.damageTable = &sDamageTableWhite;
                this->path = this->actionState;
                blureInit.p1StartColor[0] = blureInit.p1StartColor[1] = blureInit.p1StartColor[2] =
                    blureInit.p1StartColor[3] = blureInit.p2StartColor[0] = blureInit.p2StartColor[1] =
                        blureInit.p2StartColor[2] = blureInit.p2StartColor[3] = blureInit.p1EndColor[0] =
                            blureInit.p1EndColor[1] = blureInit.p1EndColor[2] = blureInit.p2EndColor[0] =
                                blureInit.p2EndColor[1] = blureInit.p2EndColor[2] = 255;

                blureInit.p1EndColor[3] = 0;
                blureInit.p2EndColor[3] = 0;
                blureInit.elemDuration = 16;
                blureInit.unkFlag = 0;
                blureInit.calcMode = 2;

                Effect_Add(globalCtx, &this->blureIdx, EFFECT_BLURE1, 0, 0, &blureInit);
                EnBb_SetupWhite(globalCtx, this);
                EnBb_SetWaypoint(this, globalCtx);
                EnBb_FaceWaypoint(this);
                thisx->flags |= 0x4000;
                break;
            case ENBB_GREEN_BIG:
                this->path = this->actionState >> 4;
                this->collider.list[0].dim.modelSphere.radius = 0x16;
                Actor_SetScale(thisx, 0.03f);
            case ENBB_GREEN:
                thisx->naviEnemyId = 0x1E;
                this->bobSize = (this->actionState & 0xF) * 20.0f;
                thisx->colChkInfo.damageTable = &sDamageTableBlueGreen;
                this->flameEnvColor.g = 255;
                thisx->colChkInfo.health = 1;

                EnBb_InitGreen(this, globalCtx);
                break;
        }
        thisx->posRot2.pos = thisx->posRot.pos;
    } else {
        EnBb_SetupFlameTrail(this);
    }
    this->collider.list[0].dim.worldSphere.radius =
        this->collider.list[0].dim.modelSphere.radius * this->collider.list[0].dim.scale;
}

void EnBb_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnBb* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void EnBb_SetupFlameTrail(EnBb* this) {
    this->action = BB_FLAME_TRAIL;
    this->moveMode = BBMOVE_NOCLIP;
    this->actor.flags &= ~1;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = 0.0f;
    this->actor.speedXZ = 0.0f;
    EnBb_SetupAction(this, EnBb_FlameTrail);
}

void EnBb_FlameTrail(EnBb* this, GlobalContext* globalCtx) {
    if (this->actor.params == ENBB_KILL_TRAIL) {
        if (this->actor.parent == NULL) {
            EnBb_SetupDeath(this, globalCtx);
        }
    } else {
        if (this->timer == 0) {
            if (((EnBb*)this->targetActor)->flameScaleY != 0.0f) {
                Math_SmoothStepToF(&this->flameScaleY, this->actor.scale.y, 1.0f, this->actor.scale.y * 0.1f, 0.0f);
                Math_SmoothStepToF(&this->flameScaleX, this->actor.scale.z, 1.0f, this->actor.scale.z * 0.1f, 0.0f);
                if (this->flamePrimAlpha != this->vTrailMaxAlpha) {
                    this->flamePrimAlpha += 10;
                    if (this->vTrailMaxAlpha < this->flamePrimAlpha) {
                        this->flamePrimAlpha = this->vTrailMaxAlpha;
                    }
                }
            } else {
                if (!this->flamePrimAlpha) {
                    Actor_Kill(&this->actor);
                    return;
                } else if (this->flamePrimAlpha <= 20) {
                    this->flamePrimAlpha = 0;
                } else {
                    this->flamePrimAlpha -= 20;
                }
            }
            this->actor.posRot.pos = this->actor.parent->pos4;
        } else {
            this->timer--;
            this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.parent->posRot.rot.y;
        }
    }
    if (this->actor.parent != NULL) {
        this->actor.velocity.y = this->actor.parent->velocity.y;
    }
}

void EnBb_SetupDeath(EnBb* this, GlobalContext* globalCtx) {
    if (this->actor.params <= ENBB_BLUE) {
        this->actor.posRot.rot.y = this->actor.yawTowardsLink;
        this->actor.speedXZ = -7.0f;
        this->timer = 5;
        this->actor.shape.rot.x += 0x4E20;
        EffectSsDeadSound_SpawnStationary(globalCtx, &this->actor.projectedPos, NA_SE_EN_BUBLE_DEAD, 1, 1, 0x28);
    }
    this->action = BB_KILL;
    EnBb_SetupAction(this, EnBb_Death);
}

void EnBb_Death(EnBb* this, GlobalContext* globalCtx) {
    s16 sp4E = 3;
    Vec3f sp40 = { 0.0f, 0.5f, 0.0f };
    Vec3f sp34 = { 0.0f, 0.0f, 0.0f };

    if (this->actor.params <= ENBB_BLUE) {
        Math_SmoothStepToF(&this->flameScaleY, 0.0f, 1.0f, 30.0f, 0.0f);
        Math_SmoothStepToF(&this->flameScaleX, 0.0f, 1.0f, 30.0f, 0.0f);
        if (this->timer != 0) {
            this->timer--;
            this->actor.shape.rot.x -= 0x4E20;
            return;
        }
        if (this->enPartInfo.unk_10 == 0) {
            func_80032E24(&this->enPartInfo, 0xC, globalCtx);
        }
        if ((this->dmgEffect == 7) || (this->dmgEffect == 5)) {
            sp4E = 0xB;
        }
        if (!func_8003305C(&this->actor, &this->enPartInfo, globalCtx, sp4E)) {
            return;
        }
        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0xD0);
    } else {
        if (this->flamePrimAlpha) {
            if (this->flamePrimAlpha <= 20) {
                this->flamePrimAlpha = 0;
            } else {
                this->flamePrimAlpha -= 20;
            }
            return;
        }
    }
    Actor_Kill(&this->actor);
}

void EnBb_SetupDamage(EnBb* this) {
    this->action = BB_DAMAGE;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_DAMAGE);
    if (this->actor.params > ENBB_GREEN) {
        this->actor.posRot.rot.y = this->actor.yawTowardsLink;
        if ((this->actor.bgCheckFlags & 8) == 0) {
            this->actor.speedXZ = -7.0f;
        }
        this->actor.shape.unk_08 = 1500.0f;
    }
    if (this->actor.params == ENBB_RED) {
        EnBb_KillFlameTrail(this);
    }
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0xC);
    this->timer = 5;
    EnBb_SetupAction(this, EnBb_Damage);
}

void EnBb_Damage(EnBb* this, GlobalContext* globalCtx) {
    Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    if (this->actor.speedXZ == 0.0f) {
        this->actor.shape.unk_08 = 200.0f;
        EnBb_SetupDown(this);
    }
}

void EnBb_SetupBlue(EnBb* this) {
    Animation_PlayLoop(&this->skelAnime, &D_06000444);
    this->actor.speedXZ = (Rand_ZeroOne() * 0.5f) + 0.5f;
    this->timer = (Rand_ZeroOne() * 20.0f) + 40.0f;
    this->unk_264 = (Rand_ZeroOne() * 30.0f) + 180.0f;
    this->targetActor = NULL;
    this->action = BB_BLUE;
    EnBb_SetupAction(this, EnBb_Blue);
}

void EnBb_Blue(EnBb* this, GlobalContext* globalCtx) {
    Actor* explosive;
    s16 moveYawToWall;
    s16 thisYawToWall;
    s16 afterHitAngle;

    Math_SmoothStepToF(&this->flameScaleY, 80.0f, 1.0f, 10.0f, 0.0f);
    Math_SmoothStepToF(&this->flameScaleX, 100.0f, 1.0f, 10.0f, 0.0f);
    if (this->actor.groundY > -32000.0f) {
        Math_SmoothStepToF(&this->actor.posRot.pos.y, this->actor.groundY + 50.0f + this->flyHeightMod, 1.0f, 0.5f,
                           0.0f);
    }
    SkelAnime_Update(&this->skelAnime);
    if (Math_CosF(this->bobPhase) == 0.0f) {
        if (this->charge) {
            this->bobSpeedMod = Rand_ZeroOne() * 2.0f;
        } else {
            this->bobSpeedMod = Rand_ZeroOne() * 4.0f;
        }
    }
    this->actor.posRot.pos.y += Math_CosF(this->bobPhase) * (1.0f + this->bobSpeedMod);
    this->bobPhase += 0.2f;
    Math_SmoothStepToF(&this->actor.speedXZ, this->maxSpeed, 1.0f, 0.5f, 0.0f);

    if (Math_Vec3f_DistXZ(&this->actor.posRot.pos, &this->actor.initPosRot.pos) > 300.0f) {
        this->vMoveAngleY = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos);
        Math_SmoothStepToS(&this->actor.posRot.rot.y, this->vMoveAngleY, 1, 0x7D0, 0);
    } else {
        this->timer--;
        if (this->timer <= 0) {
            this->charge ^= true;
            this->flyHeightMod = (s16)(Math_CosF(this->bobPhase) * 10.0f);
            this->actor.speedXZ = 0.0f;
            if (this->charge && (this->targetActor == NULL)) {
                this->vMoveAngleY = this->actor.posRot.rot.y;
                if (this->actor.xzDistFromLink < 200.0f) {
                    Animation_PlayLoop(&this->skelAnime, &D_06000184);
                    this->vMoveAngleY = this->actor.yawTowardsLink;
                }
                this->maxSpeed = (Rand_ZeroOne() * 1.5f) + 6.0f;
                this->timer = (Rand_ZeroOne() * 5.0f) + 20.0f;
                this->actionState = BBBLUE_NORMAL;
            } else {
                Animation_PlayLoop(&this->skelAnime, &D_06000444);
                this->maxSpeed = (Rand_ZeroOne() * 1.5f) + 1.0f;
                this->timer = (Rand_ZeroOne() * 20.0f) + 40.0f;
                this->vMoveAngleY = Math_SinF(this->bobPhase) * 65535.0f;
            }
        }
        if ((this->actor.xzDistFromLink < 150.0f) && (this->actionState != BBBLUE_NORMAL)) {
            if (!this->charge) {
                Animation_PlayLoop(&this->skelAnime, &D_06000184);
                this->maxSpeed = (Rand_ZeroOne() * 1.5f) + 6.0f;
                this->timer = (Rand_ZeroOne() * 5.0f) + 20.0f;
                this->vMoveAngleY = this->actor.yawTowardsLink;
                this->actionState = this->charge = true; // Sets actionState to BBBLUE_AGGRO
            }
        } else if (this->actor.xzDistFromLink < 200.0f) {
            this->vMoveAngleY = this->actor.yawTowardsLink;
        }
        if (this->targetActor == NULL) {
            explosive = EnBb_FindExplosive(globalCtx, this, 300.0f);
        } else if (this->targetActor->params == 0) {
            explosive = this->targetActor;
        } else {
            explosive = NULL;
        }
        if (explosive != NULL) {
            this->vMoveAngleY = func_8002DA78(&this->actor, explosive);
            if ((this->vBombHopPhase == 0) && (explosive != this->targetActor)) {
                this->vBombHopPhase = -0x8000;
                this->targetActor = explosive;
                this->actor.speedXZ *= 0.5f;
            }
            Math_SmoothStepToS(&this->actor.posRot.rot.y, this->vMoveAngleY, 1, 0x1388, 0);
            Math_SmoothStepToF(&this->actor.posRot.pos.x, explosive->posRot.pos.x, 1.0f, 1.5f, 0.0f);
            Math_SmoothStepToF(&this->actor.posRot.pos.y, explosive->posRot.pos.y + 40.0f, 1.0f, 1.5f, 0.0f);
            Math_SmoothStepToF(&this->actor.posRot.pos.z, explosive->posRot.pos.z, 1.0f, 1.5f, 0.0f);
        } else {
            this->targetActor = NULL;
        }
        if (this->vBombHopPhase != 0) {
            this->actor.posRot.pos.y += -Math_CosS(this->vBombHopPhase) * 10.0f;
            this->vBombHopPhase += 0x1000;
            Math_SmoothStepToS(&this->actor.posRot.rot.y, this->vMoveAngleY, 1, 0x7D0, 0);
        }
        thisYawToWall = this->actor.wallPolyRot - this->actor.posRot.rot.y;
        moveYawToWall = this->actor.wallPolyRot - this->vMoveAngleY;
        if ((this->targetActor == NULL) && (this->actor.bgCheckFlags & 8) &&
            (ABS(thisYawToWall) > 0x4000 || ABS(moveYawToWall) > 0x4000)) {
            this->vMoveAngleY = this->actor.wallPolyRot + this->actor.wallPolyRot - this->actor.posRot.rot.y - 0x8000;
            Math_SmoothStepToS(&this->actor.posRot.rot.y, this->vMoveAngleY, 1, 0xBB8, 0);
        }
    }
    Math_SmoothStepToS(&this->actor.posRot.rot.y, this->vMoveAngleY, 1, 0x3E8, 0);
    if ((this->collider.base.acFlags & 2) || (this->collider.base.atFlags & 2)) {
        this->vMoveAngleY = this->actor.yawTowardsLink + 0x8000;
        if (this->collider.base.acFlags & 2) {
            afterHitAngle = -0x8000;
        } else {
            afterHitAngle = 0x4000;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_BITE);
            if (globalCtx->gameplayFrames & 1) {
                afterHitAngle = -0x4000;
            }
        }
        this->actor.posRot.rot.y = this->actor.yawTowardsLink + afterHitAngle;
        this->collider.base.acFlags &= ~2;
        this->collider.base.atFlags &= ~2;
    }

    if (this->maxSpeed >= 6.0f) {
        if ((s32)this->skelAnime.curFrame == 0 || (s32)this->skelAnime.curFrame == 5) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_MOUTH);
        } else if ((s32)this->skelAnime.curFrame == 2 || (s32)this->skelAnime.curFrame == 7) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_WING);
        }
    } else {
        if ((s32)this->skelAnime.curFrame == 5) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_WING);
        }
    }
    if (((s32)this->skelAnime.curFrame == 0) && (Rand_ZeroOne() < 0.1f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_LAUGH);
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
}

void EnBb_SetupDown(EnBb* this) {
    Animation_PlayLoop(&this->skelAnime, &D_06000444);
    this->action = BB_DOWN;
    this->timer = 200;
    this->actor.dmgEffectTimer = 0;
    this->actor.bgCheckFlags &= ~1;
    this->actor.speedXZ = 3.0f;
    this->flameScaleX = 0.0f;
    this->flameScaleY = 0.0f;
    this->actor.gravity = -2.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_DOWN);
    EnBb_SetupAction(this, EnBb_Down);
}

void EnBb_Down(EnBb* this, GlobalContext* globalCtx) {
    s16 yawDiff = this->actor.posRot.rot.y - this->actor.wallPolyRot;

    SkelAnime_Update(&this->skelAnime);
    if (this->actor.bgCheckFlags & 8) {
        if (ABS(yawDiff) > 0x4000) {
            this->actor.posRot.rot.y =
                this->actor.wallPolyRot + this->actor.wallPolyRot - this->actor.posRot.rot.y - 0x8000;
        }
        this->actor.bgCheckFlags &= ~8;
    }
    if (this->actor.bgCheckFlags & 3) {
        if (this->actor.params == ENBB_RED) {
            s32 floorType = func_80041D4C(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource);

            if ((floorType == 2) || (floorType == 3) || (floorType == 9)) {
                this->moveMode = BBMOVE_HIDDEN;
                this->timer = 10;
                this->actionState++;
                this->actor.flags &= ~1;
                this->action = BB_RED;
                EnBb_SetupAction(this, EnBb_Red);
                return;
            }
        }
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        if (this->actor.velocity.y < -14.0f) {
            this->actor.velocity.y *= -0.7f;
        } else {
            this->actor.velocity.y = 10.0f;
        }
        this->actor.bgCheckFlags &= ~1;
        func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 7.0f, 2, 2.0f, 0, 0, 0);
        Math_SmoothStepToS(&this->actor.posRot.rot.y, -this->actor.yawTowardsLink, 1, 0xBB8, 0);
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
    if ((s32)this->skelAnime.curFrame == 5) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_WING);
    }
    if (this->timer == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_UP);
        switch (this->actor.params) {
            case ENBB_BLUE:
                this->actor.velocity.y = 0.0f;
                this->actor.gravity = 0.0f;
                EnBb_SetupBlue(this);
                break;
            case ENBB_RED:
                if (this->actor.velocity.y == 10.0f) {
                    EnBb_SetupRed(globalCtx, this);
                    EnBb_SpawnFlameTrail(globalCtx, this, true);
                }
                break;
            case ENBB_WHITE:
                this->actor.velocity.y = 0.0f;
                this->actor.gravity = 0.0f;
                EnBb_SetupWhite(globalCtx, this);
                this->actor.posRot.pos.y -= 60.0f;
                break;
        }
    } else {
        this->timer--;
    }
}

void EnBb_SetupRed(GlobalContext* globalCtx, EnBb* this) {
    Animation_PlayLoop(&this->skelAnime, &D_06000184);
    if (this->action == BB_DOWN) {
        this->actor.speedXZ = 5.0f;
        this->actor.gravity = -1.0f;
        this->actor.velocity.y = 16.0f;
        this->actionState = BBRED_ATTACK;
        this->timer = 0;
        this->moveMode = BBMOVE_NORMAL;
        this->actor.bgCheckFlags &= ~1;
    } else {
        this->actor.colChkInfo.health = 4;
        this->timer = 0;
        this->actionState = BBRED_WAIT;
        this->moveMode = BBMOVE_HIDDEN;
        this->actor.posRot.pos.y -= 80.0f;
        this->actor.initPosRot.pos = this->actor.posRot.pos;
        this->actor.velocity.y = this->actor.gravity = this->actor.speedXZ = 0.0f;
        this->actor.bgCheckFlags &= ~1;
        this->actor.flags &= ~1;
    }
    this->action = BB_RED;
    EnBb_SetupAction(this, EnBb_Red);
}

void EnBb_Red(EnBb* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 floorType;
    s16 yawDiff;

    SkelAnime_Update(&this->skelAnime);
    if (this->timer != 0) {
        this->timer--;
    }

    yawDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;
    switch (this->actionState) {
        case BBRED_WAIT:
            if ((func_8002DB48(&this->actor, &player->actor) <= 250.0f) && (ABS(yawDiff) <= 0x4000) &&
                (this->timer == 0)) {
                this->actor.speedXZ = 5.0f;
                this->actor.gravity = -1.0f;
                this->actor.velocity.y = 18.0f;
                this->moveMode = BBMOVE_NOCLIP;
                this->timer = 7;
                this->actor.bgCheckFlags &= ~1;
                this->actionState++;
                EnBb_SpawnFlameTrail(globalCtx, this, false);
            }
            break;
        case BBRED_ATTACK:
            if (this->timer == 0) {
                this->moveMode = BBMOVE_NORMAL;
                this->actor.flags |= 1;
            }
            this->bobPhase += Rand_ZeroOne();
            Math_SmoothStepToF(&this->flameScaleY, 80.0f, 1.0f, 10.0f, 0.0f);
            Math_SmoothStepToF(&this->flameScaleX, 100.0f, 1.0f, 10.0f, 0.0f);
            if (this->actor.bgCheckFlags & 8) {
                yawDiff = this->actor.posRot.rot.y - this->actor.wallPolyRot;
                if (ABS(yawDiff) > 0x4000) {
                    this->actor.posRot.rot.y =
                        this->actor.wallPolyRot + this->actor.wallPolyRot - this->actor.posRot.rot.y - 0x8000;
                }
                this->actor.bgCheckFlags &= ~8;
            }
            if (this->actor.bgCheckFlags & 1) {
                floorType = func_80041D4C(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource);
                if ((floorType == 2) || (floorType == 3) || (floorType == 9)) {
                    this->moveMode = BBMOVE_HIDDEN;
                    this->timer = 10;
                    this->actionState++;
                    this->actor.flags &= ~1;
                } else {
                    this->actor.velocity.y *= -1.06f;
                    if (this->actor.velocity.y > 13.0f) {
                        this->actor.velocity.y = 13.0f;
                    }
                    this->actor.posRot.rot.y = Math_SinF(this->bobPhase) * 65535.0f;
                }
                this->actor.bgCheckFlags &= ~1;
            }
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
            if (Actor_GetCollidedExplosive(globalCtx, &this->collider.base) != NULL) {
                EnBb_SetupDown(this);
            }
            break;
        case BBRED_HIDE:
            if (this->timer == 0) {
                this->actor.speedXZ = 0.0f;
                this->actor.gravity = 0.0f;
                this->actor.velocity.y = 0.0f;
                this->actionState = BBRED_WAIT;
                this->timer = 120;
                this->actor.posRot.pos = this->actor.initPosRot.pos;
                this->actor.shape.rot = this->actor.posRot.rot = this->actor.initPosRot.rot;
                EnBb_KillFlameTrail(this);
            }
            break;
    }
    if (this->actionState != BBRED_WAIT) {
        if (((s32)this->skelAnime.curFrame == 0) || ((s32)this->skelAnime.curFrame == 5)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_MOUTH);
        }
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLEFALL_FIRE - SFX_FLAG);
    }
}

void EnBb_FaceWaypoint(EnBb* this) {
    this->actor.posRot.rot.y = this->actor.shape.rot.y = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->waypointPos);
}

void EnBb_SetWaypoint(EnBb* this, GlobalContext* globalCtx) {
    Path* path = &globalCtx->setupPathList[this->path];
    Vec3s* point;

    if (this->waypoint == (s16)(path->count - 1)) {
        this->waypoint = 0;
    } else {
        this->waypoint++;
    }
    point = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->waypoint;
    this->waypointPos.x = point->x;
    this->waypointPos.y = point->y;
    this->waypointPos.z = point->z;
}

void EnBb_SetupWhite(GlobalContext* globalCtx, EnBb* this) {
    Animation_PlayLoop(&this->skelAnime, &D_06000444);
    this->actor.speedXZ = 0.0f;
    this->actor.posRot.pos.y += 60.0f;
    this->flameScaleX = 100.0f;
    this->action = BB_WHITE;
    this->waypoint = 0;
    this->timer = (Rand_ZeroOne() * 30.0f) + 40.0f;
    this->maxSpeed = 7.0f;
    EnBb_SetupAction(this, EnBb_White);
}

void EnBb_White(EnBb* this, GlobalContext* globalCtx) {
    if (this->actor.speedXZ == 0.0f) {
        f32 distL1;
        f32 vx;
        f32 vz;
        s16 pitch = Math_Vec3f_Pitch(&this->actor.posRot.pos, &this->waypointPos);
        f32 vy = Math_SinS(pitch) * this->maxSpeed;
        f32 vxz = Math_CosS(pitch) * this->maxSpeed;

        vx = Math_SinS(this->actor.shape.rot.y) * vxz;
        vz = Math_CosS(this->actor.shape.rot.y) * vxz;
        distL1 = Math_SmoothStepToF(&this->actor.posRot.pos.x, this->waypointPos.x, 1.0f, ABS(vx), 0.0f);
        distL1 += Math_SmoothStepToF(&this->actor.posRot.pos.y, this->waypointPos.y, 1.0f, ABS(vy), 0.0f);
        distL1 += Math_SmoothStepToF(&this->actor.posRot.pos.z, this->waypointPos.z, 1.0f, ABS(vz), 0.0f);
        this->bobPhase += (0.05f + (Rand_ZeroOne() * 0.01f));
        if (distL1 == 0.0f) {
            this->timer--;
            if (this->timer == 0) {
                EnBb_SetWaypoint(this, globalCtx);
                EnBb_FaceWaypoint(this);
                Animation_PlayLoop(&this->skelAnime, &D_06000184);
                this->timer = Rand_ZeroOne() * 30.0f + 40.0f;
            } else {
                if (this->moveMode != BBMOVE_NORMAL) {
                    Animation_PlayLoop(&this->skelAnime, &D_06000444);
                }
                this->actor.posRot.rot.y += 0x1F40;
            }
            this->moveMode = BBMOVE_NORMAL;
            this->maxSpeed = 0.0f;
        } else {
            this->moveMode = BBMOVE_NOCLIP;
            this->maxSpeed = 10.0f;
        }
        if (this->collider.base.atFlags & 2) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_BITE);
            this->collider.base.atFlags &= ~2;
        }
        this->actor.shape.rot.y = this->actor.posRot.rot.y;
    } else if (Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f) == 0.0f) {
        EnBb_FaceWaypoint(this);
    }
    SkelAnime_Update(&this->skelAnime);
    if (((s32)this->skelAnime.curFrame == 0) && (Rand_ZeroOne() <= 0.1f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_LAUGH);
    }

    if ((this->maxSpeed != 0.0f) && (((s32)this->skelAnime.curFrame == 0) || ((s32)this->skelAnime.curFrame == 5))) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_MOUTH);
    } else if (((s32)this->skelAnime.curFrame == 2) || ((s32)this->skelAnime.curFrame == 7)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_WING);
    }
}

void EnBb_InitGreen(EnBb* this, GlobalContext* globalCtx) {
    Vec3f bobOffset = { 0.0f, 0.0f, 0.0f };

    Animation_PlayLoop(&this->skelAnime, &D_06000444);
    this->moveMode = BBMOVE_NOCLIP;
    this->actionState = BBGREEN_FLAME_ON;
    this->bobPhase = Rand_ZeroOne();
    this->actor.shape.rot.x = this->actor.shape.rot.z = 0;
    this->actor.shape.rot.y = this->actor.yawTowardsLink;
    if (this->actor.params == ENBB_GREEN_BIG) {
        EnBb_SetWaypoint(this, globalCtx);
        EnBb_FaceWaypoint(this);
    }
    Matrix_Translate(this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z,
                     MTXMODE_NEW);
    Matrix_RotateRPY(this->actor.posRot.rot.x, this->actor.posRot.rot.y, 0, MTXMODE_APPLY);
    Matrix_RotateZ(this->bobPhase, MTXMODE_APPLY);
    bobOffset.y = this->bobSize;
    Matrix_MultVec3f(&bobOffset, &this->actor.posRot.pos);
    this->targetActor = NULL;
    this->action = BB_GREEN;
    this->actor.speedXZ = 0.0f;
    this->vFlameTimer = (Rand_ZeroOne() * 30.0f) + 180.0f;
    EnBb_SetupAction(this, EnBb_Green);
}

void EnBb_SetupGreen(EnBb* this) {
    Animation_PlayLoop(&this->skelAnime, &D_06000444);
    this->moveMode = BBMOVE_NOCLIP;
    this->actionState = BBGREEN_FLAME_ON;
    this->targetActor = NULL;
    this->action = BB_GREEN;
    this->actor.speedXZ = 0.0f;
    this->vFlameTimer = (Rand_ZeroOne() * 30.0f) + 180.0f;
    this->actor.shape.rot.z = 0;
    this->actor.shape.rot.y = this->actor.yawTowardsLink;
    EnBb_SetupAction(this, EnBb_Green);
}

void EnBb_Green(EnBb* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Vec3f bobOffset = { 0.0f, 0.0f, 0.0f };
    Vec3f nextPos = player->actor.posRot.pos;

    nextPos.y += 30.0f;
    if (this->actor.params == ENBB_GREEN_BIG) {
        if (this->actor.speedXZ == 0.0f) {
            s16 pitch = Math_Vec3f_Pitch(&this->actor.initPosRot.pos, &this->waypointPos);
            s16 yaw = Math_Vec3f_Yaw(&this->actor.initPosRot.pos, &this->waypointPos);
            f32 vy = Math_SinS(pitch) * this->maxSpeed;
            f32 vxz = Math_CosS(pitch) * this->maxSpeed;
            f32 vz;
            f32 vx;
            f32 distL1;

            Math_SmoothStepToS(&this->actor.posRot.rot.y, yaw, 1, 0x3E8, 0);
            vx = Math_SinS(this->actor.posRot.rot.y) * vxz;
            distL1 = Math_CosS(this->actor.posRot.rot.y) * vxz;
            vz = Math_SmoothStepToF(&this->actor.initPosRot.pos.x, this->waypointPos.x, 1.0f, ABS(vx), 0.0f);
            vz += Math_SmoothStepToF(&this->actor.initPosRot.pos.y, this->waypointPos.y, 1.0f, ABS(vy), 0.0f);
            vz += Math_SmoothStepToF(&this->actor.initPosRot.pos.z, this->waypointPos.z, 1.0f, ABS(distL1), 0.0f);
            this->bobPhase += (0.05f + (Rand_ZeroOne() * 0.01f));
            if (vz == 0.0f) {
                EnBb_SetWaypoint(this, globalCtx);
            }
            this->moveMode = BBMOVE_NOCLIP;
            this->maxSpeed = 10.0f;
            if (this->collider.base.atFlags & 2) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_BITE);
                this->collider.base.atFlags &= ~2;
            }
            if (Math_CosF(this->bobPhase) == 0.0f) {
                if (this->charge) {
                    this->bobSpeedMod = Rand_ZeroOne();
                } else {
                    this->bobSpeedMod = Rand_ZeroOne() * 3.0f;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_LAUGH);
                }
            }
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
        } else if (Math_SmoothStepToF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f) == 0.0f) {
            EnBb_FaceWaypoint(this);
        }
    } else {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0xFA0, 0);
        Math_SmoothStepToS(&this->actor.shape.rot.x, Math_Vec3f_Pitch(&this->actor.posRot.pos, &nextPos), 1, 0xFA0, 0);
    }
    SkelAnime_Update(&this->skelAnime);
    if (Math_CosF(this->bobPhase) <= 0.002f) {
        this->bobSpeedMod = Rand_ZeroOne() * 0.05f;
    }
    Matrix_Translate(this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z,
                     MTXMODE_NEW);
    Matrix_RotateRPY(this->actor.posRot.rot.x, this->actor.posRot.rot.y, 0, MTXMODE_APPLY);
    Matrix_RotateZ(this->bobPhase, MTXMODE_APPLY);
    bobOffset.y = this->bobSize;
    Matrix_MultVec3f(&bobOffset, &nextPos);
    Math_SmoothStepToF(&this->actor.posRot.pos.x, nextPos.x, 1.0f, this->bobPhase * 0.75f, 0.0f);
    Math_SmoothStepToF(&this->actor.posRot.pos.y, nextPos.y, 1.0f, this->bobPhase * 0.75f, 0.0f);
    Math_SmoothStepToF(&this->actor.posRot.pos.z, nextPos.z, 1.0f, this->bobPhase * 0.75f, 0.0f);
    this->bobPhase += 0.1f + this->bobSpeedMod;
    if (Actor_GetCollidedExplosive(globalCtx, &this->collider.base) || (--this->vFlameTimer == 0)) {
        this->actionState++;
        this->timer = (Rand_ZeroOne() * 30.0f) + 60.0f;
        if (this->vFlameTimer != 0) {
            this->collider.base.acFlags &= ~2;
        }
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_DOWN);
    }
    if (this->actionState != BBGREEN_FLAME_ON) {
        this->timer--;
        if (this->timer == 0) {
            this->actionState = BBGREEN_FLAME_ON;
            this->vFlameTimer = (Rand_ZeroOne() * 30.0f) + 180.0f;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_UP);
        }
        Math_SmoothStepToF(&this->flameScaleY, 0.0f, 1.0f, 10.0f, 0.0f);
        Math_SmoothStepToF(&this->flameScaleX, 0.0f, 1.0f, 10.0f, 0.0f);
    } else {
        Math_SmoothStepToF(&this->flameScaleY, 80.0f, 1.0f, 10.0f, 0.0f);
        Math_SmoothStepToF(&this->flameScaleX, 100.0f, 1.0f, 10.0f, 0.0f);
    }
    if ((s32)this->skelAnime.curFrame == 5) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_WING);
    }
    if (((s32)this->skelAnime.curFrame == 0) && (Rand_ZeroOne() < 0.1f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_LAUGH);
    }
}

void EnBb_SetupStunned(EnBb* this) {
    this->action = BB_STUNNED;
    if (this->actor.params != ENBB_WHITE) {
        if (this->actor.params != ENBB_RED) {
            if (this->actor.params > ENBB_GREEN) {
                this->actor.gravity = -2.0f;
                this->actor.shape.unk_08 = 1500.0f;
            }
            this->actor.speedXZ = 0.0f;
            this->flameScaleX = 0.0f;
            this->flameScaleY = 0.0f;
        } else {
            EnBb_KillFlameTrail(this);
        }
    }
    switch (this->dmgEffect) {
        case 8:
            func_8003426C(&this->actor, -0x8000, 0xC8, 0, 0x50);
            break;
        case 9:
            this->fireIceTimer = 0x30;
        case 15:
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
            func_8003426C(&this->actor, 0, 0xB4, 0, 0x50);
            break;
    }
    this->actor.bgCheckFlags &= ~1;
    EnBb_SetupAction(this, EnBb_Stunned);
}

void EnBb_Stunned(EnBb* this, GlobalContext* globalCtx) {
    s16 yawDiff = this->actor.posRot.rot.y - this->actor.wallPolyRot;

    if (this->actor.bgCheckFlags & 8) {
        if (ABS(yawDiff) > 0x4000) {
            this->actor.posRot.rot.y =
                this->actor.wallPolyRot + this->actor.wallPolyRot - this->actor.posRot.rot.y - 0x8000;
        }
        this->actor.bgCheckFlags &= ~8;
    }
    if (this->actor.bgCheckFlags & 2) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_DODO_M_GND);
        if (this->actor.velocity.y < -14.0f) {
            this->actor.velocity.y *= -0.4f;
        } else {
            this->actor.velocity.y = 0.0f;
        }
        func_80033260(globalCtx, &this->actor, &this->actor.posRot.pos, 7.0f, 2, 2.0f, 0, 0, 0);
    }
    if (this->actor.dmgEffectTimer == 0) {
        this->actor.shape.unk_08 = 200.0f;
        if (this->actor.colChkInfo.health != 0) {
            if ((this->actor.params == ENBB_GREEN) || (this->actor.params == ENBB_GREEN_BIG)) {
                EnBb_SetupGreen(this);
            } else if (this->actor.params == ENBB_WHITE) {
                this->action = BB_WHITE;
                EnBb_SetupAction(this, EnBb_White);
            } else {
                EnBb_SetupDown(this);
            }
        } else {
            this->actor.flags &= ~1;
            EnBb_SetupDeath(this, globalCtx);
        }
    }
}

void EnBb_CollisionCheck(EnBb* this, GlobalContext* globalCtx) {
    if (this->collider.base.atFlags & 4) {
        this->collider.base.atFlags &= ~4;
        if (this->action != BB_DOWN) {
            if (this->actor.params >= ENBB_RED) {
                this->actor.posRot.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsLink + 0x8000;
                if (this->actor.params == ENBB_RED) {
                    EnBb_KillFlameTrail(this);
                }
                EnBb_SetupDown(this);
                return;
            }
            this->actionVar2 = 1;
        }
    }
    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        this->dmgEffect = this->actor.colChkInfo.damageEffect;
        func_80035650(&this->actor, &this->collider.list[0].body, 0);
        switch (this->dmgEffect) {
            case 7:
                this->actor.freezeTimer = this->collider.list[0].body.acHitItem->toucher.damage;
            case 5:
                this->fireIceTimer = 0x30;
                //! @bug
                //! Setting fireIceTimer here without calling func_8003426C causes a crash if the bubble is killed
                //! in a single hit by an attack with damage effect 5 or 7 while actor updating is halted. Using
                //! Din's Fire on a white bubble will do just that. The mechanism is complex and described below.
                goto block_15;
            case 6:
                this->actor.freezeTimer = this->collider.list[0].body.acHitItem->toucher.damage;
                break;
            case 8:
            case 9:
            case 15:
                if (this->action != BB_STUNNED) {
                    Actor_ApplyDamage(&this->actor);
                    EnBb_SetupStunned(this);
                }
                break;
            default:
            block_15:
                if ((this->dmgEffect == 14) || (this->dmgEffect == 12) || (this->dmgEffect == 11) ||
                    (this->dmgEffect == 10) || (this->dmgEffect == 7) || (this->dmgEffect == 5)) {
                    if ((this->action != BB_DOWN) || (this->timer < 190)) {
                        Actor_ApplyDamage(&this->actor);
                    }
                    if ((this->action != BB_DOWN) && (this->actor.params != ENBB_WHITE)) {
                        EnBb_SetupDown(this);
                    }
                } else {
                    if (((this->action == BB_DOWN) && (this->timer < 190)) ||
                        ((this->actor.params != ENBB_WHITE) && (this->flameScaleX < 20.0f))) {
                        Actor_ApplyDamage(&this->actor);
                    } else {
                        this->collider.base.acFlags |= 2;
                    }
                }
                if (this->actor.colChkInfo.health == 0) {
                    this->actor.flags &= ~1;
                    if (this->actor.params == ENBB_RED) {
                        EnBb_KillFlameTrail(this);
                    }
                    EnBb_SetupDeath(this, globalCtx);
                    //! @bug
                    //! Because Din's Fire kills the bubble in a single hit, func_8003426C is never called and
                    //! dmgEffectParams is never set. And because Din's Fire halts updating during its cutscene,
                    //! EnBb_Death doesn't kill the bubble on the next frame like it should. This combines with
                    //! the bug in EnBb_Draw below to crash the game.
                } else if ((this->actor.params == ENBB_WHITE) &&
                           ((this->action == BB_WHITE) || (this->action == BB_STUNNED))) {
                    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0xC);
                    this->actor.speedXZ = -8.0f;
                    this->maxSpeed = 0.0f;
                    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_DAMAGE);
                } else if (((this->action == BB_DOWN) && (this->timer < 190)) ||
                           ((this->actor.params != ENBB_WHITE) && (this->flameScaleX < 20.0f))) {
                    EnBb_SetupDamage(this);
                }
            case 13:
                break;
        }
    }
}

void EnBb_Update(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnBb* this = THIS;
    Vec3f sp4C = { 0.0f, 0.0f, 0.0f };
    Vec3f sp40 = { 0.0f, -0.6f, 0.0f };
    Color_RGBA8 sp3C = { 0, 0, 255, 255 };
    Color_RGBA8 sp38 = { 0, 0, 0, 0 };
    f32 sp34 = -15.0f;

    if (this->actor.params <= ENBB_BLUE) {
        EnBb_CollisionCheck(this, globalCtx);
    }
    if (this->actor.colChkInfo.damageEffect != 0xD) {
        this->actionFunc(this, globalCtx);
        if ((this->actor.params <= ENBB_BLUE) && (this->actor.speedXZ >= -6.0f) &&
            ((this->actor.flags & 0x8000) == 0)) {
            Actor_MoveForward(&this->actor);
        }
        if (this->moveMode == BBMOVE_NORMAL) {
            if ((this->actor.posRot.pos.y - 20.0f) <= this->actor.groundY) {
                sp34 = 20.0f;
            }
            func_8002E4B4(globalCtx, &this->actor, sp34, 25.0f, 20.0f, 5);
        }
        this->actor.posRot2.pos = this->actor.posRot.pos;
        this->collider.list->dim.worldSphere.center.x = this->actor.posRot.pos.x;
        this->collider.list->dim.worldSphere.center.y =
            this->actor.posRot.pos.y + (this->actor.shape.unk_08 * this->actor.scale.y);
        this->collider.list->dim.worldSphere.center.z = this->actor.posRot.pos.z;

        if ((this->action > BB_KILL) && ((this->actor.speedXZ != 0.0f) || (this->action == BB_GREEN))) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
        if ((this->action > BB_FLAME_TRAIL) &&
            ((this->actor.dmgEffectTimer == 0) || !(this->actor.dmgEffectParams & 0x4000)) &&
            (this->moveMode != BBMOVE_HIDDEN)) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }
}

void EnBb_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnBb* this = THIS;

    func_80032F54(&this->enPartInfo, limbIndex, 4, 0xF, 0xF, dList, -1);
}

static Vec3f sFireIceOffsets[] = {
    { 13.0f, 10.0f, 0.0f }, { 5.0f, 25.0f, 5.0f },   { -5.0f, 25.0f, 5.0f },  { -13.0f, 10.0f, 0.0f },
    { 5.0f, 25.0f, -5.0f }, { -5.0f, 25.0f, -5.0f }, { 0.0f, 10.0f, -13.0f }, { 5.0f, 0.0f, 5.0f },
    { 5.0f, 0.0f, -5.0f },  { 0.0f, 10.0f, 13.0f },  { -5.0f, 0.0f, 5.0f },   { -5.0f, 0.0f, -5.0f },
};

void EnBb_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnBb* this = THIS;
    Vec3f blureBase1 = { 0.0f, 5000.0f, 0.0f };
    Vec3f blureBase2 = { 0.0f, 2000.0f, 0.0f };
    Vec3f blureVtx1;
    Vec3f blureVtx2;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_bb.c", 2044);

    blureBase1.z = this->maxSpeed * 80.0f;
    blureBase2.z = this->maxSpeed * 80.0f;
    if (this->moveMode != BBMOVE_HIDDEN) {
        if (this->actor.params <= ENBB_BLUE) {
            func_80093D18(globalCtx->state.gfxCtx);
            SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, NULL, EnBb_PostLimbDraw,
                              this);

            if (this->fireIceTimer != 0) {
                this->actor.dmgEffectTimer++;
                //! @bug:
                //! The purpose of this is to counteract Actor_UpdateAll decrementing dmgEffectTimer. However,
                //! the above bugs mean unk_2A8 can be nonzero without damage effects ever having been set.
                //! This routine will then increment dmgEffectTimer, and on the next frame Actor_Draw will try
                //! to draw the unset dmgEffectParams. This causes a divide-by-zero error, crashing the game.
                if (1) {}
                this->fireIceTimer--;
                if ((this->fireIceTimer % 4) == 0) {
                    Vec3f sp70;
                    s32 index = this->fireIceTimer >> 2;

                    sp70.x = this->actor.posRot.pos.x + sFireIceOffsets[index].x;
                    sp70.y = this->actor.posRot.pos.y + sFireIceOffsets[index].y;
                    sp70.z = this->actor.posRot.pos.z + sFireIceOffsets[index].z;

                    if ((this->dmgEffect != 7) && (this->dmgEffect != 5)) {
                        EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &sp70, 0x96, 0x96, 0x96, 0xFA, 0xEB,
                                                       0xF5, 0xFF, 0.8f);
                    } else {
                        sp70.y -= 17.0f;
                        EffectSsEnFire_SpawnVec3f(globalCtx, &this->actor, &sp70, 0x28, 1, 0, -1);
                    }
                }
            }
            Matrix_Translate(0.0f, this->flameScaleX * -40.0f, 0.0f, MTXMODE_APPLY);
        } else {
            Matrix_Translate(0.0f, -40.0f, 0.0f, MTXMODE_APPLY);
        }
        if (this->actor.params != ENBB_WHITE) {
            func_80093D84(globalCtx->state.gfxCtx);
            gSPSegment(POLY_XLU_DISP++, 0x08,
                       Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0,
                                        ((globalCtx->gameplayFrames + (this->flameScrollMod * 10)) *
                                         (-20 - (this->flameScrollMod * -2))) %
                                            0x200,
                                        0x20, 0x80));
            gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 255, 255, this->flamePrimBlue, this->flamePrimAlpha);
            gDPSetEnvColor(POLY_XLU_DISP++, this->flameEnvColor.r, this->flameEnvColor.g, this->flameEnvColor.b, 0);
            Matrix_RotateY(((s16)(Camera_GetCamDirYaw(ACTIVE_CAM) - this->actor.shape.rot.y + 0x8000)) *
                               (M_PI / 0x8000),
                           MTXMODE_APPLY);
            Matrix_Scale(this->flameScaleX * 0.01f, this->flameScaleY * 0.01f, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_bb.c", 2106),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_0404D4E0);
        } else {
            Matrix_MultVec3f(&blureBase1, &blureVtx1);
            Matrix_MultVec3f(&blureBase2, &blureVtx2);
            if ((this->maxSpeed != 0.0f) && (this->action == BB_WHITE) && !(globalCtx->gameplayFrames & 1) &&
                (this->actor.colChkInfo.health != 0)) {
                EffectBlure_AddVertex(Effect_GetByIndex(this->blureIdx), &blureVtx1, &blureVtx2);
            } else if (this->action != BB_WHITE) {
                EffectBlure_AddSpace(Effect_GetByIndex(this->blureIdx));
            }
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_bb.c", 2127);
}
