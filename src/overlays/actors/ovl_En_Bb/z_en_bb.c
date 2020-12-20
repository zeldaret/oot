/*
 * File: z_en_bb.c
 * Overlay: ovl_En_Bb
 * Description: Bubble (Flying Skull Enemy)
 */

#include "z_en_bb.h"

#define FLAGS 0x01000015

#define THIS ((EnBb*)thisx)

typedef enum {
    /* 0 */ BB_DAMAGE,
    /* 0 */ BB_KILL,
    /* 0 */ BB_FLAME_TRAIL,
    /* 0 */ BB_DOWN,
    /* 0 */ BB_STUNNED,
    /* 0 */ BB_UNUSED,
    /* 0 */ BB_BLUE,
    /* 0 */ BB_RED,
    /* 0 */ BB_WHITE,
    /* 0 */ BB_GREEN,
} EnBbActionState;

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

void EnBb_SetupKill(EnBb* this, GlobalContext* globalCtx);
void EnBb_Kill(EnBb* this, GlobalContext* globalCtx);

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
/*  DNUT, STCK, SLNG, BOMB, BOOM, ARRW, HAMR, SHOT, KKRI, MSTR, BGRN, FIRA, ICEA, LGTA, WNDA, SDWA
 *  SPTA, FIRM, ICEM, LGTM, SHLD, MRAY, KSPN, MSPN, BSPN, KKJS, MSJS, BGJS, UNK1, UBLK, HMJS, UNK2
 */

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
    Actor* bomb = globalCtx->actorCtx.actorList[ACTORTYPE_EXPLOSIVES].first;
    f32 dist;

    while (bomb != NULL) {
        if (bomb->params != 0) {
            bomb = bomb->next;
            continue;
        }
        dist = func_8002DB48(&this->actor, bomb);
        if ((bomb->params == 0) && (dist <= range)) {
            return bomb;
        }
        bomb = bomb->next;
    }
    return NULL;
}

void EnBb_SpawnFlameTrail(GlobalContext* globalCtx, EnBb* this, s16 arg2) {
    EnBb* now = this;
    EnBb* next;
    s32 i;

    for (i = 0; i < 5; i++) {
        next = (EnBb*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, 0x69, this->actor.posRot.pos.x,
                                  this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
        if (next != NULL) {
            now->actor.child = &next->actor;
            next->actor.parent = &now->actor;
            next->unk_324 = &this->actor;
            next->unk_26C = i + 1;
            next->actor.scale.x = 1.0f;
            next->unk_26E = next->flamePrimAlpha = 255 - 40 * i;
            next->unk_288 = next->actor.scale.y = 0.8f - (i * 0.075f);
            next->unk_28C = next->actor.scale.z = 1.0f - (i * 0.094f);
            if (arg2 != 0) {
                next->flamePrimAlpha = 0;
                next->unk_288 = next->unk_28C = 0.0f;
            }
            next->unk_270 = i + 1;
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
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06001A30, &D_06000444, this->limbDrawTbl, this->transitionDrawTbl,
                   16);
    this->unk_254 = 0;
    thisx->colChkInfo.health = 4;
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, thisx, &sJntSphInit, this->elements);

    this->unk_268 = thisx->params >> 8;

    if (thisx->params & 0x80) {
        thisx->params |= 0xFF00;
    }
    if (thisx->params <= ENBB_BLUE) {
        ActorShape_Init(&thisx->shape, 200.0f, ActorShadow_DrawFunc_Circle, 35.0f);
    }
    if (thisx->params & 0xFF00) {
        this->timer = 0;
        this->unk_288 = 80.0f;
        this->unk_28C = 100.0f;
        this->collider.list[0].body.toucherFlags = 9;
        this->collider.list[0].body.toucher.flags = 0xFFCFFFFF;
        this->collider.list[0].body.toucher.damage = 8;
        this->unk_278 = this->unk_268 * 20.0f;
        this->flamePrimAlpha = 255;
        this->actionState = 0;
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
                this->path = this->unk_268;
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

                Effect_Add(globalCtx, &this->blureIdx, 1, 0, 0, &blureInit);
                EnBb_SetupWhite(globalCtx, this);
                EnBb_SetWaypoint(this, globalCtx);
                EnBb_FaceWaypoint(this);
                thisx->flags |= 0x4000;
                break;
            case ENBB_GREEN_BIG:
                this->path = this->unk_268 >> 4;
                this->collider.list[0].dim.modelSphere.radius = 0x16;
                Actor_SetScale(thisx, 0.03f);
            case ENBB_GREEN:
                thisx->naviEnemyId = 0x1E;
                this->unk_278 = (this->unk_268 & 0xF) * 20.0f;
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
    this->actionState = 1;
    this->actor.flags &= ~1;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = 0.0f;
    this->actor.speedXZ = 0.0f;
    EnBb_SetupAction(this, EnBb_FlameTrail);
}

void EnBb_FlameTrail(EnBb* this, GlobalContext* globalCtx) {
    if (this->actor.params == ENBB_KILL_TRAIL) {
        if (this->actor.parent == NULL) {
            EnBb_SetupKill(this, globalCtx);
        }
    } else {
        if (this->timer == 0) {
            if (((EnBb*)this->unk_324)->unk_288 != 0.0f) {
                Math_SmoothScaleMaxMinF(&this->unk_288, this->actor.scale.y, 1.0f, this->actor.scale.y * 0.1f, 0.0f);
                Math_SmoothScaleMaxMinF(&this->unk_28C, this->actor.scale.z, 1.0f, this->actor.scale.z * 0.1f, 0.0f);
                if (this->flamePrimAlpha != this->unk_26E) {
                    this->flamePrimAlpha += 10;
                    if (this->unk_26E < this->flamePrimAlpha) {
                        this->flamePrimAlpha = this->unk_26E;
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

void EnBb_SetupKill(EnBb* this, GlobalContext* globalCtx) {
    if (this->actor.params <= ENBB_BLUE) {
        this->actor.posRot.rot.y = this->actor.yawTowardsLink;
        this->actor.speedXZ = -7.0f;
        this->timer = 5;
        this->actor.shape.rot.x += 0x4E20;
        EffectSsDeadSound_SpawnStationary(globalCtx, &this->actor.projectedPos, 0x38CE, NA_SE_PL_WALK_SAND - SFX_FLAG, NA_SE_PL_WALK_SAND - SFX_FLAG, 0x28);
    }
    this->action = BB_KILL;
    EnBb_SetupAction(this, EnBb_Kill);
}

void EnBb_Kill(EnBb* this, GlobalContext* globalCtx) {
    s16 sp4E = 3;
    Vec3f sp40 = { 0.0f, 0.5f, 0.0f };
    Vec3f sp34 = { 0.0f, 0.0f, 0.0f };

    if (this->actor.params <= ENBB_BLUE) {
        Math_SmoothScaleMaxMinF(&this->unk_288, 0.0f, 1.0f, 30.0f, 0.0f);
        Math_SmoothScaleMaxMinF(&this->unk_28C, 0.0f, 1.0f, 30.0f, 0.0f);
        if (this->timer != 0) {
            this->timer--;
            this->actor.shape.rot.x -= 0x4E20;
            return;
        }
        if (this->unk_30C.unk_10 == 0) {
            func_80032E24(&this->unk_30C, 0xC, globalCtx);
        }
        if ((this->dmgEffect == 7) || (this->dmgEffect == 5)) {
            sp4E = 0xB;
        }
        if (!func_8003305C(&this->actor, &this->unk_30C, globalCtx, sp4E)) {
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
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    if (this->actor.speedXZ == 0.0f) {
        this->actor.shape.unk_08 = 200.0f;
        EnBb_SetupDown(this);
    }
}

void EnBb_SetupBlue(EnBb* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000444);
    this->actor.speedXZ = Math_Rand_ZeroOne() * 0.5f + 0.5f;
    this->timer = Math_Rand_ZeroOne() * 20.0f + 40.0f;
    this->unk_264 = Math_Rand_ZeroOne() * 30.0f + 180.0f;
    this->unk_324 = NULL;
    this->action = BB_BLUE;
    EnBb_SetupAction(this, EnBb_Blue);
}

void EnBb_Blue(EnBb* this, GlobalContext* globalCtx) {
    Actor* sp4C;
    s16 temp_a0_6;
    s16 temp_v0_2;
    s16 sp46;

    Math_SmoothScaleMaxMinF(&this->unk_288, 80.0f, 1.0f, 10.0f, 0.0f);
    Math_SmoothScaleMaxMinF(&this->unk_28C, 100.0f, 1.0f, 10.0f, 0.0f);
    if (this->actor.groundY > -32000.0f) {
        Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, this->actor.groundY + 50.0f + this->unk_280, 1.0f, 0.5f,
                                0.0f);
    }
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800CA774(this->unk_274) == 0.0f) {
        if (this->unk_26A != 0) {
            this->unk_284 = Math_Rand_ZeroOne() * 2.0f;
        } else {
            this->unk_284 = Math_Rand_ZeroOne() * 4.0f;
        }
    }
    this->actor.posRot.pos.y += (func_800CA774(this->unk_274) * (1.0f + this->unk_284));
    this->unk_274 += 0.2f;
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, this->unk_27C, 1.0f, 0.5f, 0.0f);

    if (Math_Vec3f_DistXZ(&this->actor.posRot.pos, &this->actor.initPosRot.pos) > 300.0f) {
        this->unk_26E = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos);
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->unk_26E, 1, 0x7D0, 0);
    } else {
        this->timer--;
        if (this->timer <= 0) {
            this->unk_26A ^= 1;
            this->unk_280 = (s16)(func_800CA774(this->unk_274) * 10.0f);
            this->actor.speedXZ = 0.0f;
            if ((this->unk_26A != 0) && (this->unk_324 == NULL)) {
                this->unk_26E = this->actor.posRot.rot.y;
                if (this->actor.xzDistFromLink < 200.0f) {
                    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000184);
                    this->unk_26E = this->actor.yawTowardsLink;
                }
                this->unk_27C = Math_Rand_ZeroOne() * 1.5f + 6.0f;
                this->timer = Math_Rand_ZeroOne() * 5.0f + 20.0f;
                this->unk_268 = 0;
            } else {
                SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000444);
                this->unk_27C = (Math_Rand_ZeroOne() * 1.5f) + 1.0f;
                this->timer = (Math_Rand_ZeroOne() * 20.0f) + 40.0f;
                this->unk_26E = func_800CA720(this->unk_274) * 65535.0f;
            }
        }
        if ((this->actor.xzDistFromLink < 150.0f) && (this->unk_268 != 0)) {
            if (this->unk_26A == 0) {
                SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000184);
                this->unk_27C = Math_Rand_ZeroOne() * 1.5f + 6.0f;
                this->timer = Math_Rand_ZeroOne() * 5.0f + 20.0f;
                this->unk_26E = this->actor.yawTowardsLink;
                this->unk_268 = this->unk_26A = 1;
            }
        } else if (this->actor.xzDistFromLink < 200.0f) {
            this->unk_26E = this->actor.yawTowardsLink;
        }
        if (this->unk_324 == NULL) {
            sp4C = EnBb_FindExplosive(globalCtx, this, 300.0f);
        } else if (this->unk_324->params == 0) {
            sp4C = this->unk_324;
        } else {
            sp4C = NULL;
        }
        if (sp4C != NULL) {
            this->unk_26E = func_8002DA78(&this->actor, sp4C);
            if ((this->unk_26C == 0) && (sp4C != this->unk_324)) {
                this->unk_26C = -0x8000;
                this->unk_324 = sp4C;
                this->actor.speedXZ *= 0.5f;
            }
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->unk_26E, 1, 0x1388, 0);
            Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x, sp4C->posRot.pos.x, 1.0f, 1.5f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, sp4C->posRot.pos.y + 40.0f, 1.0f, 1.5f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z, sp4C->posRot.pos.z, 1.0f, 1.5f, 0.0f);
        } else {
            this->unk_324 = NULL;
        }
        if (this->unk_26C != 0) {
            this->actor.posRot.pos.y += -Math_Coss(this->unk_26C) * 10.0f;
            this->unk_26C += 0x1000;
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->unk_26E, 1, 0x7D0, 0);
        }
        temp_v0_2 = this->actor.wallPolyRot - this->actor.posRot.rot.y;
        temp_a0_6 = this->actor.wallPolyRot - this->unk_26E;
        if ((this->unk_324 == NULL) && (this->actor.bgCheckFlags & 8) &&
            (ABS(temp_v0_2) > 0x4000 || ABS(temp_a0_6) > 0x4000)) {
            this->unk_26E = this->actor.wallPolyRot + this->actor.wallPolyRot - this->actor.posRot.rot.y - 0x8000;
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->unk_26E, 1, 0xBB8, 0);
        }
    }
    Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->unk_26E, 1, 0x3E8, 0);
    if ((this->collider.base.acFlags & 2) || (this->collider.base.atFlags & 2)) {
        this->unk_26E = this->actor.yawTowardsLink + 0x8000;
        if (this->collider.base.acFlags & 2) {
            sp46 = -0x8000;
        } else {
            sp46 = 0x4000;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_BITE);
            if (globalCtx->gameplayFrames & 1) {
                sp46 = -0x4000;
            }
        }
        this->actor.posRot.rot.y = this->actor.yawTowardsLink + sp46;
        this->collider.base.acFlags &= ~2;
        this->collider.base.atFlags &= ~2;
    }

    if (this->unk_27C >= 6.0f) {
        if ((s32)this->skelAnime.animCurrentFrame == 0 || (s32)this->skelAnime.animCurrentFrame == 5) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_MOUTH);
        } else if ((s32)this->skelAnime.animCurrentFrame == 2 || (s32)this->skelAnime.animCurrentFrame == 7) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_WING);
        }
    } else {
        if ((s32)this->skelAnime.animCurrentFrame == 5) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_WING);
        }
    }
    if (((s32)this->skelAnime.animCurrentFrame == 0) && (Math_Rand_ZeroOne() < 0.1f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_LAUGH);
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
}

void EnBb_SetupDown(EnBb* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000444);
    this->action = BB_DOWN;
    this->timer = 200;
    this->actor.dmgEffectTimer = 0;
    this->actor.bgCheckFlags &= ~1;
    this->actor.speedXZ = 3.0f;
    this->unk_28C = 0.0f;
    this->unk_288 = 0.0f;
    this->actor.gravity = -2.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_DOWN);
    EnBb_SetupAction(this, EnBb_Down);
}

void EnBb_Down(EnBb* this, GlobalContext* globalCtx) {
    s16 yawDiff = this->actor.posRot.rot.y - this->actor.wallPolyRot;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
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
                this->actionState = 2;
                this->timer = 10;
                this->unk_268++;
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
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, -this->actor.yawTowardsLink, 1, 0xBB8, 0);
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
    if ((s32)this->skelAnime.animCurrentFrame == 5) {
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
                    EnBb_SpawnFlameTrail(globalCtx, this, 1);
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
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000184);
    if (this->action == BB_DOWN) {
        this->actor.speedXZ = 5.0f;
        this->actor.gravity = -1.0f;
        this->actor.velocity.y = 16.0f;
        this->unk_268 = 1;
        this->actionState = this->timer = 0;
        this->actor.bgCheckFlags &= ~1;
    } else {
        this->actor.colChkInfo.health = 4;
        this->unk_268 = this->timer = 0;
        this->actionState = 2;
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
    Player* sp54 = PLAYER;
    s32 floorType;
    s16 yawDiff;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->timer != 0) {
        this->timer--;
    }

    yawDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;
    switch (this->unk_268) {
        case 0:
            if ((func_8002DB48(&this->actor, &sp54->actor) <= 250.0f) && (ABS(yawDiff) <= 0x4000) &&
                (this->timer == 0)) {
                this->actor.speedXZ = 5.0f;
                this->actor.gravity = -1.0f;
                this->actor.velocity.y = 18.0f;
                this->actionState = 1;
                this->timer = 7;
                this->actor.bgCheckFlags &= ~1;
                this->unk_268++;
                EnBb_SpawnFlameTrail(globalCtx, this, 0);
            }
            break;
        case 1:
            if (this->timer == 0) {
                this->actionState = 0;
                this->actor.flags |= 1;
            }
            this->unk_274 += Math_Rand_ZeroOne();
            Math_SmoothScaleMaxMinF(&this->unk_288, 80.0f, 1.0f, 10.0f, 0.0f);
            Math_SmoothScaleMaxMinF(&this->unk_28C, 100.0f, 1.0f, 10.0f, 0.0f);
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
                    this->actionState = 2;
                    this->timer = 10;
                    this->unk_268++;
                    this->actor.flags &= ~1;
                } else {
                    this->actor.velocity.y *= -1.06f;
                    if (this->actor.velocity.y > 13.0f) {
                        this->actor.velocity.y = 13.0f;
                    }
                    this->actor.posRot.rot.y = func_800CA720(this->unk_274) * 65535.0f;
                }
                this->actor.bgCheckFlags &= ~1;
            }
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
            if (Actor_GetCollidedExplosive(globalCtx, &this->collider.base)) {
                EnBb_SetupDown(this);
            }
            break;
        case 2:
            if (this->timer == 0) {
                this->actor.speedXZ = 0.0f;
                this->actor.gravity = 0.0f;
                this->actor.velocity.y = 0.0f;
                this->unk_268 = 0;
                this->timer = 120;
                this->actor.posRot.pos = this->actor.initPosRot.pos;
                this->actor.shape.rot = this->actor.posRot.rot = this->actor.initPosRot.rot;
                EnBb_KillFlameTrail(this);
            }
            break;
    }
    if (this->unk_268 != 0) {
        if (((s32)this->skelAnime.animCurrentFrame == 0) || ((s32)this->skelAnime.animCurrentFrame == 5)) {
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
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000444);
    this->actor.speedXZ = 0.0f;
    this->actor.posRot.pos.y += 60.0f;
    this->unk_28C = 100.0f;
    this->action = BB_WHITE;
    this->waypoint = 0;
    this->timer = Math_Rand_ZeroOne() * 30.0f + 40.0f;
    this->unk_27C = 7.0f;
    EnBb_SetupAction(this, EnBb_White);
}

void EnBb_White(EnBb* this, GlobalContext* globalCtx) {
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    s16 sp42;
    f32 sp3C;
    f32 sp38;

    if (this->actor.speedXZ == 0.0f) {
        sp42 = Math_Vec3f_Pitch(&this->actor.posRot.pos, &this->waypointPos);
        sp3C = Math_Sins(sp42) * this->unk_27C;
        sp38 = Math_Coss(sp42) * this->unk_27C;
        sp48 = Math_Sins(this->actor.shape.rot.y) * sp38;
        sp44 = Math_Coss(this->actor.shape.rot.y) * sp38;
        sp4C = Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x, this->waypointPos.x, 1.0f, ABS(sp48), 0.0f);
        sp4C += Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, this->waypointPos.y, 1.0f, ABS(sp3C), 0.0f);
        sp4C += Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z, this->waypointPos.z, 1.0f, ABS(sp44), 0.0f);
        this->unk_274 += (0.05f + (Math_Rand_ZeroOne() * 0.01f));
        if (sp4C == 0.0f) {
            this->timer--;
            if (this->timer == 0) {
                EnBb_SetWaypoint(this, globalCtx);
                EnBb_FaceWaypoint(this);
                SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000184);
                this->timer = (Math_Rand_ZeroOne() * 30.0f) + 40.0f;
            } else {
                if (this->actionState != 0) {
                    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000444);
                }
                this->actor.posRot.rot.y += 0x1F40;
            }
            this->actionState = 0;
            this->unk_27C = 0.0f;
        } else {
            this->actionState = 1;
            this->unk_27C = 10.0f;
        }
        if (this->collider.base.atFlags & 2) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_BITE);
            this->collider.base.atFlags &= ~2;
        }
        this->actor.shape.rot.y = this->actor.posRot.rot.y;
    } else if (Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f) == 0.0f) {
        EnBb_FaceWaypoint(this);
    }
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (((s32)this->skelAnime.animCurrentFrame == 0) && (Math_Rand_ZeroOne() <= 0.1f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_LAUGH);
    }

    if ((this->unk_27C != 0.0f) &&
        (((s32)this->skelAnime.animCurrentFrame == 0) || ((s32)this->skelAnime.animCurrentFrame == 5))) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_MOUTH);
    } else if (((s32)this->skelAnime.animCurrentFrame == 2) || ((s32)this->skelAnime.animCurrentFrame == 7)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_WING);
    }
}

void EnBb_InitGreen(EnBb* this, GlobalContext* globalCtx) {
    Vec3f sp24 = { 0.0f, 0.0f, 0.0f };

    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000444);
    this->actionState = 1;
    this->unk_268 = 0;
    this->unk_274 = Math_Rand_ZeroOne();
    this->actor.shape.rot.x = this->actor.shape.rot.z = 0;
    this->actor.shape.rot.y = this->actor.yawTowardsLink;
    if (this->actor.params == ENBB_GREEN_BIG) {
        EnBb_SetWaypoint(this, globalCtx);
        EnBb_FaceWaypoint(this);
    }
    Matrix_Translate(this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z, MTXMODE_NEW);
    Matrix_RotateRPY(this->actor.posRot.rot.x, this->actor.posRot.rot.y, 0, MTXMODE_APPLY);
    Matrix_RotateZ(this->unk_274, MTXMODE_APPLY);
    sp24.y = this->unk_278;
    Matrix_MultVec3f(&sp24, &this->actor.posRot.pos);
    this->unk_324 = NULL;
    this->action = BB_GREEN;
    this->actor.speedXZ = 0.0f;
    this->unk_26E = (Math_Rand_ZeroOne() * 30.0f) + 180.0f;
    EnBb_SetupAction(this, EnBb_Green);
}

void EnBb_SetupGreen(EnBb* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000444);
    this->actionState = 1;
    this->unk_268 = 0;
    this->unk_324 = NULL;
    this->action = BB_GREEN;
    this->actor.speedXZ = 0.0f;
    this->unk_26E = Math_Rand_ZeroOne() * 30.0f + 180.0f;
    this->actor.shape.rot.z = 0;
    this->actor.shape.rot.y = this->actor.yawTowardsLink;
    EnBb_SetupAction(this, EnBb_Green);
}

void EnBb_Green(EnBb* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Vec3f sp60 = { 0.0f, 0.0f, 0.0f };
    Vec3f sp54 = player->actor.posRot.pos;
    s16 sp52;
    s16 sp50;
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    f32 sp40;
    f32 sp3C;

    sp54.y += 30.0f;
    if (this->actor.params == ENBB_GREEN_BIG) {
        if (this->actor.speedXZ == 0.0f) {
            sp52 = Math_Vec3f_Pitch(&this->actor.initPosRot.pos, &this->waypointPos);
            sp50 = Math_Vec3f_Yaw(&this->actor.initPosRot.pos, &this->waypointPos);
            sp4C = Math_Sins(sp52) * this->unk_27C;
            sp48 = Math_Coss(sp52) * this->unk_27C;
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, sp50, 1, 0x3E8, 0);
            sp40 = Math_Sins(this->actor.posRot.rot.y) * sp48;
            sp3C = Math_Coss(this->actor.posRot.rot.y) * sp48;
            sp44 = Math_SmoothScaleMaxMinF(&this->actor.initPosRot.pos.x, this->waypointPos.x, 1.0f, ABS(sp40), 0.0f);
            sp44 += Math_SmoothScaleMaxMinF(&this->actor.initPosRot.pos.y, this->waypointPos.y, 1.0f, ABS(sp4C), 0.0f);
            sp44 += Math_SmoothScaleMaxMinF(&this->actor.initPosRot.pos.z, this->waypointPos.z, 1.0f, ABS(sp3C), 0.0f);
            this->unk_274 += (0.05f + (Math_Rand_ZeroOne() * 0.01f));
            if (sp44 == 0.0f) {
                EnBb_SetWaypoint(this, globalCtx);
            }
            this->actionState = 1;
            this->unk_27C = 10.0f;
            if (this->collider.base.atFlags & 2) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_BITE);
                this->collider.base.atFlags &= ~2;
            }
            if (func_800CA774(this->unk_274) == 0.0f) {
                if (this->unk_26A != 0) {
                    this->unk_284 = Math_Rand_ZeroOne();
                } else {
                    this->unk_284 = Math_Rand_ZeroOne() * 3.0f;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_LAUGH);
                }
            }
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
        } else if (Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f) == 0.0f) {
            EnBb_FaceWaypoint(this);
        }
    } else {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 1, 0xFA0, 0);
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.x, Math_Vec3f_Pitch(&this->actor.posRot.pos, &sp54), 1, 0xFA0,
                                0);
    }
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_800CA774(this->unk_274) <= 0.002f) {
        this->unk_284 = Math_Rand_ZeroOne() * 0.05f;
    }
    Matrix_Translate(this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z, MTXMODE_NEW);
    Matrix_RotateRPY(this->actor.posRot.rot.x, this->actor.posRot.rot.y, 0, MTXMODE_APPLY);
    Matrix_RotateZ(this->unk_274, MTXMODE_APPLY);
    sp60.y = this->unk_278;
    Matrix_MultVec3f(&sp60, &sp54);
    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x, sp54.x, 1.0f, this->unk_274 * 0.75f, 0.0f);
    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, sp54.y, 1.0f, this->unk_274 * 0.75f, 0.0f);
    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z, sp54.z, 1.0f, this->unk_274 * 0.75f, 0.0f);
    this->unk_274 += 0.1f + this->unk_284;
    if (Actor_GetCollidedExplosive(globalCtx, &this->collider.base) || (--this->unk_26E == 0)) {
        this->unk_268++;
        this->timer = (Math_Rand_ZeroOne() * 30.0f) + 60.0f;
        if (this->unk_26E != 0) {
            this->collider.base.acFlags &= ~2;
        }
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_DOWN);
    }
    if (this->unk_268 != 0) {
        this->timer--;
        if (this->timer == 0) {
            this->unk_268 = 0;
            this->unk_26E = (Math_Rand_ZeroOne() * 30.0f) + 180.0f;
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_UP);
        }
        Math_SmoothScaleMaxMinF(&this->unk_288, 0.0f, 1.0f, 10.0f, 0.0f);
        Math_SmoothScaleMaxMinF(&this->unk_28C, 0.0f, 1.0f, 10.0f, 0.0f);
    } else {
        Math_SmoothScaleMaxMinF(&this->unk_288, 80.0f, 1.0f, 10.0f, 0.0f);
        Math_SmoothScaleMaxMinF(&this->unk_28C, 100.0f, 1.0f, 10.0f, 0.0f);
    }
    if ((s32)this->skelAnime.animCurrentFrame == 5) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_WING);
    }
    if (((s32)this->skelAnime.animCurrentFrame == 0) && (Math_Rand_ZeroOne() < 0.1f)) {
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
            this->unk_28C = 0.0f;
            this->unk_288 = 0.0f;
        } else {
            EnBb_KillFlameTrail(this);
        }
    }
    switch (this->dmgEffect) {
        case 8:
            func_8003426C(&this->actor, -0x8000, 0xC8, 0, 0x50);
            break;
        case 9:
            this->unk_2A8 = 0x30;
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
            EnBb_SetupKill(this, globalCtx);
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
            this->unk_26E = 1;
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
                this->unk_2A8 = 0x30;
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
                if ((this->dmgEffect == 14) || (this->dmgEffect == 12) || (this->dmgEffect == 11) || (this->dmgEffect == 10) ||
                    (this->dmgEffect == 7) || (this->dmgEffect == 5)) {
                    if ((this->action != BB_DOWN) || (this->timer < 190)) {
                        Actor_ApplyDamage(&this->actor);
                    }
                    if ((this->action != BB_DOWN) && (this->actor.params != ENBB_WHITE)) {
                        EnBb_SetupDown(this);
                    }
                } else {
                    if (((this->action == BB_DOWN) && (this->timer < 190)) ||
                        ((this->actor.params != ENBB_WHITE) && (this->unk_28C < 20.0f))) {
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
                    EnBb_SetupKill(this, globalCtx);
                    //! @bug
                    //! Because Din's Fire kills the bubble in a single hit, func_8003426C is never called and 
                    //! dmgEffectParams is never set. And because Din's Fire halts updating during its cutscene,
                    //! EnBb_Kill doesn't kill the bubble on the next frame like it should. This combines with
                    //! the bug in EnBb_Draw below to crash the game.
                } else if ((this->actor.params == ENBB_WHITE) && ((this->action == BB_WHITE) || (this->action == BB_STUNNED))) {
                    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0xC);
                    this->actor.speedXZ = -8.0f;
                    this->unk_27C = 0.0f;
                    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_BUBLE_DAMAGE);
                } else if (((this->action == BB_DOWN) && (this->timer < 190)) ||
                           ((this->actor.params != ENBB_WHITE) && (this->unk_28C < 20.0f))) {
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
        if ((this->actor.params <= ENBB_BLUE) && (this->actor.speedXZ >= -6.0f) && ((this->actor.flags & 0x8000) == 0)) {
            Actor_MoveForward(&this->actor);
        }
        if (this->actionState == 0) {
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
        if ((this->action > BB_FLAME_TRAIL) && ((this->actor.dmgEffectTimer == 0) || !(this->actor.dmgEffectParams & 0x4000)) && (this->actionState != 2)) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }
}

void EnBb_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnBb* this = THIS;

    func_80032F54(&this->unk_30C, limbIndex, 4, 0xF, 0xF, dList, -1);
}

static Vec3f sEffectOffsets[] = {
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

    blureBase1.z = this->unk_27C * 80.0f;
    blureBase2.z = this->unk_27C * 80.0f;
    if (this->actionState != 2) {
        if (this->actor.params <= ENBB_BLUE) {
            func_80093D18(globalCtx->state.gfxCtx);
            SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, NULL, EnBb_PostLimbDraw,
                              this);

            if (this->unk_2A8 != 0) {
                this->actor.dmgEffectTimer++;
                //! @bug:
                //! The purpose of this is to counteract Actor_UpdateAll decrementing dmgEffectTimer. However,
                //! the above bugs mean unk_2A8 can be nonzero without damage effects ever having been set.
                //! This routine will then increment dmgEffectTimer, and on the next frame Actor_Draw will try
                //! to draw the unset dmgEffectParams. This causes a divide-by-zero error, crashing the game.
                if (1) {}
                this->unk_2A8--;
                if ((this->unk_2A8 % 4) == 0) {
                    Vec3f sp70;
                    s32 index = this->unk_2A8 >> 2;

                    sp70.x = this->actor.posRot.pos.x + sEffectOffsets[index].x;
                    sp70.y = this->actor.posRot.pos.y + sEffectOffsets[index].y;
                    sp70.z = this->actor.posRot.pos.z + sEffectOffsets[index].z;

                    if ((this->dmgEffect != 7) && (this->dmgEffect != 5)) {
                        EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &sp70, 0x96, 0x96, 0x96, 0xFA, 0xEB,
                                                       0xF5, 0xFF, 0.8f);
                    } else {
                        sp70.y -= 17.0f;
                        EffectSsEnFire_SpawnVec3f(globalCtx, &this->actor, &sp70, 0x28, 1, 0, -1);
                    }
                }
            }
            Matrix_Translate(0.0f, this->unk_28C * -40.0f, 0.0f, MTXMODE_APPLY);
        } else {
            Matrix_Translate(0.0f, -40.0f, 0.0f, MTXMODE_APPLY);
        }
        if (this->actor.params != ENBB_WHITE) {
            func_80093D84(globalCtx->state.gfxCtx);
            gSPSegment(POLY_XLU_DISP++, 0x08,
                       Gfx_TwoTexScroll(
                           globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0,
                           ((globalCtx->gameplayFrames + this->unk_270 * 10) * (-20 - this->unk_270 * -2)) & 0x1FF,
                           0x20, 0x80));
            gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 0xFF, 0xFF, this->flamePrimBlue, this->flamePrimAlpha);
            gDPSetEnvColor(POLY_XLU_DISP++, this->flameEnvColor.r, this->flameEnvColor.g, this->flameEnvColor.b, 0);
            Matrix_RotateY(
                ((s16)(Camera_GetCamDirYaw(ACTIVE_CAM) - this->actor.shape.rot.y + 0x8000)) * (M_PI / 0x8000), MTXMODE_APPLY);
            Matrix_Scale(this->unk_28C * 0.01f, this->unk_288 * 0.01f, 1.0f, MTXMODE_APPLY);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_bb.c", 2106),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_0404D4E0);
        } else {
            Matrix_MultVec3f(&blureBase1, &blureVtx1);
            Matrix_MultVec3f(&blureBase2, &blureVtx2);
            if ((this->unk_27C != 0.0f) && (this->action == BB_WHITE) && !(globalCtx->gameplayFrames & 1) &&
                (this->actor.colChkInfo.health != 0)) {
                EffectBlure_AddVertex(Effect_GetByIndex(this->blureIdx), &blureVtx1, &blureVtx2);
            } else if (this->action != BB_WHITE) {
                EffectBlure_AddSpace(Effect_GetByIndex(this->blureIdx));
            }
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_bb.c", 2127);
}
