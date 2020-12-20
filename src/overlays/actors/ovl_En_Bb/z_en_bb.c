/*
 * File: z_en_bb.c
 * Overlay: ovl_En_Bb
 * Description: Bubble (Flying Skull Enemy)
 */

#include "z_en_bb.h"

#define FLAGS 0x01000015

#define THIS ((EnBb*)thisx)

// Main functions

void EnBb_Init(Actor* thisx, GlobalContext* globalCtx);
void EnBb_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnBb_Update(Actor* this, GlobalContext* globalCtx);
void EnBb_Draw(Actor* this, GlobalContext* globalCtx);

// Helper functions

void func_809B9F28(EnBb* this);
void func_809B9F60(EnBb* this, GlobalContext* globalCtx);

// Action functions

void func_809B8930(EnBb* this);
void func_809B8984(EnBb* this, GlobalContext* globalCtx);

void func_809B8B00(EnBb* this, GlobalContext* globalCtx);
void func_809B8B94(EnBb* this, GlobalContext* globalCtx);

void func_809B8DCC(EnBb* this, GlobalContext* globalCtx);

void func_809B8E34(EnBb* this);
void func_809B8EF4(EnBb* this, GlobalContext* globalCtx);

void func_809B96EC(EnBb* this);
void func_809B977C(EnBb* this, GlobalContext* globalCtx);

void func_809B9A54(GlobalContext* globalCtx, EnBb* this);
void func_809B9B64(EnBb* this, GlobalContext* globalCtx);

void func_809BA028(GlobalContext* globalCtx, EnBb* this);
void func_809BA0D8(EnBb* this, GlobalContext* globalCtx);

void func_809BA458(EnBb* this, GlobalContext* globalCtx);
void func_809BA628(EnBb* this, GlobalContext* globalCtx);

void func_809BADA4(EnBb* this, GlobalContext* globalCtx);

extern Gfx D_0404D4E0[];
extern AnimationHeader D_06000184;
extern AnimationHeader D_06000444;
extern SkeletonHeader D_06001A30;

static DamageTable D_809BBA80 = {
    0xF0, 0x02, 0x01, 0xA2, 0xF0, 0xE2, 0xA2, 0xF0, 0x01, 0x02, 0x04, 0xE2, 0xC4, 0xB4, 0x00, 0x00,
    0x00, 0x60, 0x93, 0x83, 0xA0, 0xA0, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x60, 0x00, 0xA4, 0x00,
};
static DamageTable D_809BBAA0 = {
    0xD0, 0xD0, 0xD0, 0xA2, 0xD0, 0xE2, 0xA2, 0xD0, 0xD0, 0xE2, 0xE4, 0xE2, 0x94, 0xE2, 0xE4, 0xE2,
    0xE2, 0x60, 0x93, 0x60, 0xA0, 0xA0, 0x01, 0xE4, 0xE2, 0x02, 0xE8, 0xE4, 0x60, 0x00, 0xA4, 0x00,
};
static DamageTable D_809BBAC0 = {
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

static ColliderJntSphItemInit D_809BBB00[1] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
        { 0, { { 0, -120, 0 }, 4 }, 300 },
    },
};

static ColliderJntSphInit D_809BBB24 = {
    { COLTYPE_UNK3, 0x11, 0x09, 0x09, 0x10, COLSHAPE_JNTSPH },
    1,
    D_809BBB00,
};

static InitChainEntry D_809BBB34[] = {
    ICHAIN_F32(unk_4C, 10, ICHAIN_STOP),
};

void func_809B82E0(EnBb* this, EnBbActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

Actor* func_809B82E8(GlobalContext* globalCtx, EnBb* this, f32 range) {
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

void func_809B837C(GlobalContext* globalCtx, EnBb* this, s16 arg2) {
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
            next->unk_26E = next->unk_29F = 255 - 40 * i;
            next->unk_288 = next->actor.scale.y = 0.8f - (i * 0.075f);
            next->unk_28C = next->actor.scale.z = 1.0f - (i * 0.094f);
            if (arg2 != 0) {
                next->unk_29F = 0;
                next->unk_288 = next->unk_28C = 0.0f;
            }
            next->unk_270 = i + 1;
            next->unk_260 = 2 * i + 2;
            next->unk_2A0 = 255;
            now = next;
        }
    }
}

void func_809B8518(EnBb* this) {
    Actor* actor = &this->actor;

    while (actor->child != NULL) {
        Actor* nextActor = actor->child;

        if (nextActor->id == ACTOR_EN_BB) {
            nextActor->parent = NULL;
            actor->child = NULL;
            nextActor->params = 0xB;
        }
        actor = nextActor;
    }
    this->actor.child = NULL;
}

void EnBb_Init(Actor* thisx, GlobalContext* globalCtx) {
    EffectBlureInit1 blureInit;
    s32 pad;
    EnBb* this = THIS;

    Actor_ProcessInitChain(thisx, D_809BBB34);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06001A30, &D_06000444, this->limbDrawTbl, this->transitionDrawTbl,
                   16);
    this->unk_254 = 0;
    thisx->colChkInfo.health = 4;
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, thisx, &D_809BBB24, this->elements);

    this->unk_268 = thisx->params >> 8;

    if (thisx->params & 0x80) {
        thisx->params |= 0xFF00;
    }
    if (thisx->params < 0) {
        ActorShape_Init(&thisx->shape, 200.0f, ActorShadow_DrawFunc_Circle, 35.0f);
    }
    if (thisx->params & 0xFF00) {
        this->unk_260 = 0;
        this->unk_288 = 80.0f;
        this->unk_28C = 100.0f;
        this->collider.list[0].body.toucherFlags = 9;
        this->collider.list[0].body.toucher.flags = 0xFFCFFFFF;
        this->collider.list[0].body.toucher.damage = 8;
        this->unk_278 = this->unk_268 * 20.0f;
        this->unk_29F = 255;
        this->unk_25C = 0;
        Actor_SetScale(thisx, 0.01f);
        switch (thisx->params) {
            case -1:
                thisx->naviEnemyId = 0x1C;
                thisx->colChkInfo.damageTable = &D_809BBA80;
                this->unk_29E = this->unk_2A2 = 0xFF;
                thisx->posRot.pos.y += 50.0f;
                func_809B8E34(this);
                thisx->flags |= 0x4000;
                break;
            case -2:
                thisx->naviEnemyId = 0x24;
                thisx->colChkInfo.damageTable = &D_809BBAA0;
                this->unk_2A0 = 0xFF;
                this->collider.list[0].body.toucher.effect = 1;
                func_809B9A54(globalCtx, this);
                break;
            case -3:
                thisx->naviEnemyId = 0x1D;
                thisx->colChkInfo.damageTable = &D_809BBAC0;
                this->unk_29C = this->unk_268;
                blureInit.p1StartColor[0] = blureInit.p1StartColor[1] = blureInit.p1StartColor[2] =
                    blureInit.p1StartColor[3] = blureInit.p2StartColor[0] = blureInit.p2StartColor[1] =
                        blureInit.p2StartColor[2] = blureInit.p2StartColor[3] = blureInit.p1EndColor[0] =
                            blureInit.p1EndColor[1] = blureInit.p1EndColor[2] = blureInit.p2EndColor[0] =
                                blureInit.p2EndColor[1] = blureInit.p2EndColor[2] = 0xFF;

                blureInit.p1EndColor[3] = 0;
                blureInit.p2EndColor[3] = 0;
                blureInit.elemDuration = 16;
                blureInit.unkFlag = 0;
                blureInit.calcMode = 2;

                Effect_Add(globalCtx, &this->blureIdx, 1, 0, 0, &blureInit);
                func_809BA028(globalCtx, this);
                func_809B9F60(this, globalCtx);
                func_809B9F28(this);
                thisx->flags |= 0x4000;
                break;
            case -5:
                this->unk_29C = this->unk_268 >> 4;
                this->collider.list[0].dim.modelSphere.radius = 0x16;
                Actor_SetScale(thisx, 0.03f);
            case -4:
                thisx->naviEnemyId = 0x1E;
                this->unk_278 = (this->unk_268 & 0xF) * 20.0f;
                thisx->colChkInfo.damageTable = &D_809BBA80;
                this->unk_2A1 = 0xFF;
                thisx->colChkInfo.health = 1;

                func_809BA458(this, globalCtx);
                break;
        }
        thisx->posRot2.pos = thisx->posRot.pos;
    } else {
        func_809B8930(this);
    }
    this->collider.list[0].dim.worldSphere.radius =
        this->collider.list[0].dim.modelSphere.radius * this->collider.list[0].dim.scale;
}

void EnBb_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnBb* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void func_809B8930(EnBb* this) {
    this->unk_250 = 2;
    this->unk_25C = 1;
    this->actor.flags &= ~1;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = 0.0f;
    this->actor.speedXZ = 0.0f;
    func_809B82E0(this, func_809B8984);
}

void func_809B8984(EnBb* this, GlobalContext* globalCtx) {
    if (this->actor.params == 0xB) {
        if (this->actor.parent == NULL) {
            func_809B8B00(this, globalCtx);
        }
    } else {
        if (this->unk_260 == 0) {
            if (((EnBb*)this->unk_324)->unk_288 != 0.0f) {
                Math_SmoothScaleMaxMinF(&this->unk_288, this->actor.scale.y, 1.0f, this->actor.scale.y * 0.1f, 0.0f);
                Math_SmoothScaleMaxMinF(&this->unk_28C, this->actor.scale.z, 1.0f, this->actor.scale.z * 0.1f, 0.0f);
                if (this->unk_29F != this->unk_26E) {
                    this->unk_29F += 10;
                    if (this->unk_26E < this->unk_29F) {
                        this->unk_29F = this->unk_26E;
                    }
                }
            } else {
                if (!this->unk_29F) {
                    Actor_Kill(&this->actor);
                    return;
                } else if (this->unk_29F <= 20) {
                    this->unk_29F = 0;
                } else {
                    this->unk_29F -= 20;
                }
            }
            this->actor.posRot.pos = this->actor.parent->pos4;
        } else {
            this->unk_260--;
            this->actor.shape.rot.y = this->actor.posRot.rot.y = this->actor.parent->posRot.rot.y;
        }
    }
    if (this->actor.parent != NULL) {
        this->actor.velocity.y = this->actor.parent->velocity.y;
    }
}

void func_809B8B00(EnBb* this, GlobalContext* globalCtx) {
    if (this->actor.params < 0) {
        this->actor.posRot.rot.y = this->actor.yawTowardsLink;
        this->actor.speedXZ = -7.0f;
        this->unk_260 = 5;
        this->actor.shape.rot.x += 0x4E20;
        EffectSsDeadSound_SpawnStationary(globalCtx, &this->actor.projectedPos, 0x38CE, 1, 1, 0x28);
    }
    this->unk_250 = 1;
    func_809B82E0(this, func_809B8B94);
}

void func_809B8B94(EnBb* this, GlobalContext* globalCtx) {
    s16 sp4E = 3;
    Vec3f sp40 = { 0.0f, 0.5f, 0.0f };
    Vec3f sp34 = { 0.0f, 0.0f, 0.0f };

    if (this->actor.params < 0) {
        Math_SmoothScaleMaxMinF(&this->unk_288, 0.0f, 1.0f, 30.0f, 0.0f);
        Math_SmoothScaleMaxMinF(&this->unk_28C, 0.0f, 1.0f, 30.0f, 0.0f);
        if (this->unk_260 != 0) {
            this->unk_260--;
            this->actor.shape.rot.x -= 0x4E20;
            return;
        }
        if (this->unk_30C.unk_10 == 0) {
            func_80032E24(&this->unk_30C, 0xC, globalCtx);
        }
        if ((this->unk_2AA == 7) || (this->unk_2AA == 5)) {
            sp4E = 0xB;
        }
        if (!func_8003305C(&this->actor, &this->unk_30C, globalCtx, sp4E)) {
            return;
        }
        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot.pos, 0xD0);
    } else {
        if (this->unk_29F) {
            if (this->unk_29F <= 20) {
                this->unk_29F = 0;
            } else {
                this->unk_29F -= 20;
            }
            return;
        }
    }
    Actor_Kill(&this->actor);
}

void func_809B8D10(EnBb* this) {
    this->unk_250 = 0;
    Audio_PlayActorSound2(&this->actor, 0x38E3);
    if (this->actor.params >= -3) {
        this->actor.posRot.rot.y = this->actor.yawTowardsLink;
        if ((this->actor.bgCheckFlags & 8) == 0) {
            this->actor.speedXZ = -7.0f;
        }
        this->actor.shape.unk_08 = 1500.0f;
    }
    if (this->actor.params == -2) {
        func_809B8518(this);
    }
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0xC);
    this->unk_260 = 5;
    func_809B82E0(this, func_809B8DCC);
}

void func_809B8DCC(EnBb* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    if (this->actor.speedXZ == 0.0f) {
        this->actor.shape.unk_08 = 200.0f;
        func_809B96EC(this);
    }
}

void func_809B8E34(EnBb* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000444);
    this->actor.speedXZ = Math_Rand_ZeroOne() * 0.5f + 0.5f;
    this->unk_260 = Math_Rand_ZeroOne() * 20.0f + 40.0f;
    this->unk_264 = Math_Rand_ZeroOne() * 30.0f + 180.0f;
    this->unk_324 = NULL;
    this->unk_250 = 6;
    func_809B82E0(this, func_809B8EF4);
}

void func_809B8EF4(EnBb* this, GlobalContext* globalCtx) {
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
        this->unk_260--;
        if (this->unk_260 <= 0) {
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
                this->unk_260 = Math_Rand_ZeroOne() * 5.0f + 20.0f;
                this->unk_268 = 0;
            } else {
                SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000444);
                this->unk_27C = (Math_Rand_ZeroOne() * 1.5f) + 1.0f;
                this->unk_260 = (Math_Rand_ZeroOne() * 20.0f) + 40.0f;
                this->unk_26E = func_800CA720(this->unk_274) * 65535.0f;
            }
        }
        if ((this->actor.xzDistFromLink < 150.0f) && (this->unk_268 != 0)) {
            if (this->unk_26A == 0) {
                SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000184);
                this->unk_27C = Math_Rand_ZeroOne() * 1.5f + 6.0f;
                this->unk_260 = Math_Rand_ZeroOne() * 5.0f + 20.0f;
                this->unk_26E = this->actor.yawTowardsLink;
                this->unk_268 = this->unk_26A = 1;
            }
        } else if (this->actor.xzDistFromLink < 200.0f) {
            this->unk_26E = this->actor.yawTowardsLink;
        }
        if (this->unk_324 == NULL) {
            sp4C = func_809B82E8(globalCtx, this, 300.0f);
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
            Audio_PlayActorSound2(&this->actor, 0x38CB);
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
            Audio_PlayActorSound2(&this->actor, 0x38C9);
        } else if ((s32)this->skelAnime.animCurrentFrame == 2 || (s32)this->skelAnime.animCurrentFrame == 7) {
            Audio_PlayActorSound2(&this->actor, 0x38C8);
        }
    } else {
        if ((s32)this->skelAnime.animCurrentFrame == 5) {
            Audio_PlayActorSound2(&this->actor, 0x38C8);
        }
    }
    if (((s32)this->skelAnime.animCurrentFrame == 0) && (Math_Rand_ZeroOne() < 0.1f)) {
        Audio_PlayActorSound2(&this->actor, 0x38CA);
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
}

void func_809B96EC(EnBb* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000444);
    this->unk_250 = 3;
    this->unk_260 = 200;
    this->actor.dmgEffectTimer = 0;
    this->actor.bgCheckFlags &= ~1;
    this->actor.speedXZ = 3.0f;
    this->unk_28C = 0.0f;
    this->unk_288 = 0.0f;
    this->actor.gravity = -2.0f;
    Audio_PlayActorSound2(&this->actor, 0x38CD);
    func_809B82E0(this, func_809B977C);
}

void func_809B977C(EnBb* this, GlobalContext* globalCtx) {
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
        if (this->actor.params == -2) {
            s32 floorType = func_80041D4C(&globalCtx->colCtx, this->actor.floorPoly, this->actor.floorPolySource);

            if ((floorType == 2) || (floorType == 3) || (floorType == 9)) {
                this->unk_25C = 2;
                this->unk_260 = 10;
                this->unk_268++;
                this->actor.flags &= ~1;
                this->unk_250 = 7;
                func_809B82E0(this, func_809B9B64);
                return;
            }
        }
        Audio_PlayActorSound2(&this->actor, 0x387B);
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
        Audio_PlayActorSound2(&this->actor, 0x38C8);
    }
    if (this->unk_260 == 0) {
        Audio_PlayActorSound2(&this->actor, 0x38CC);
        switch (this->actor.params) {
            case -1:
                this->actor.velocity.y = 0.0f;
                this->actor.gravity = 0.0f;
                func_809B8E34(this);
                break;
            case -2:
                if (this->actor.velocity.y == 10.0f) {
                    func_809B9A54(globalCtx, this);
                    func_809B837C(globalCtx, this, 1);
                }
                break;
            case -3:
                this->actor.velocity.y = 0.0f;
                this->actor.gravity = 0.0f;
                func_809BA028(globalCtx, this);
                this->actor.posRot.pos.y -= 60.0f;
                break;
        }
    } else {
        this->unk_260--;
    }
}

void func_809B9A54(GlobalContext* globalCtx, EnBb* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000184);
    if (this->unk_250 == 3) {
        this->actor.speedXZ = 5.0f;
        this->actor.gravity = -1.0f;
        this->actor.velocity.y = 16.0f;
        this->unk_268 = 1;
        this->unk_25C = this->unk_260 = 0;
        this->actor.bgCheckFlags &= ~1;
    } else {
        this->actor.colChkInfo.health = 4;
        this->unk_268 = this->unk_260 = 0;
        this->unk_25C = 2;
        this->actor.posRot.pos.y -= 80.0f;
        this->actor.initPosRot.pos = this->actor.posRot.pos;
        this->actor.velocity.y = this->actor.gravity = this->actor.speedXZ = 0.0f;
        this->actor.bgCheckFlags &= ~1;
        this->actor.flags &= ~1;
    }
    this->unk_250 = 7;
    func_809B82E0(this, func_809B9B64);
}

void func_809B9B64(EnBb* this, GlobalContext* globalCtx) {
    Player* sp54 = PLAYER;
    s32 floorType;
    s16 yawDiff;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->unk_260 != 0) {
        this->unk_260--;
    }

    yawDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;
    switch (this->unk_268) {
        case 0:
            if ((func_8002DB48(&this->actor, &sp54->actor) <= 250.0f) && (ABS(yawDiff) <= 0x4000) &&
                (this->unk_260 == 0)) {
                this->actor.speedXZ = 5.0f;
                this->actor.gravity = -1.0f;
                this->actor.velocity.y = 18.0f;
                this->unk_25C = 1;
                this->unk_260 = 7;
                this->actor.bgCheckFlags &= ~1;
                this->unk_268++;
                func_809B837C(globalCtx, this, 0);
            }
            break;
        case 1:
            if (this->unk_260 == 0) {
                this->unk_25C = 0;
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
                    this->unk_25C = 2;
                    this->unk_260 = 10;
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
                func_809B96EC(this);
            }
            break;
        case 2:
            if (this->unk_260 == 0) {
                this->actor.speedXZ = 0.0f;
                this->actor.gravity = 0.0f;
                this->actor.velocity.y = 0.0f;
                this->unk_268 = 0;
                this->unk_260 = 120;
                this->actor.posRot.pos = this->actor.initPosRot.pos;
                this->actor.shape.rot = this->actor.posRot.rot = this->actor.initPosRot.rot;
                func_809B8518(this);
            }
            break;
    }
    if (this->unk_268 != 0) {
        if (((s32)this->skelAnime.animCurrentFrame == 0) || ((s32)this->skelAnime.animCurrentFrame == 5)) {
            Audio_PlayActorSound2(&this->actor, 0x38C9);
        }
        Audio_PlayActorSound2(&this->actor, 0x30CF);
    }
}

void func_809B9F28(EnBb* this) {
    this->actor.posRot.rot.y = this->actor.shape.rot.y = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->unk_290);
}

void func_809B9F60(EnBb* this, GlobalContext* globalCtx) {
    Path* path = &globalCtx->setupPathList[this->unk_29C];
    Vec3s* point;

    if (this->unk_29D == (s16)(path->count - 1)) {
        this->unk_29D = 0;
    } else {
        this->unk_29D++;
    }
    point = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->unk_29D;
    this->unk_290.x = point->x;
    this->unk_290.y = point->y;
    this->unk_290.z = point->z;
}

void func_809BA028(GlobalContext* globalCtx, EnBb* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000444);
    this->actor.speedXZ = 0.0f;
    this->actor.posRot.pos.y += 60.0f;
    this->unk_28C = 100.0f;
    this->unk_250 = 8;
    this->unk_29D = 0;
    this->unk_260 = Math_Rand_ZeroOne() * 30.0f + 40.0f;
    this->unk_27C = 7.0f;
    func_809B82E0(this, func_809BA0D8);
}

void func_809BA0D8(EnBb* this, GlobalContext* globalCtx) {
    f32 sp4C;
    f32 sp48;
    f32 sp44;
    s16 sp42;
    f32 sp3C;
    f32 sp38;

    if (this->actor.speedXZ == 0.0f) {
        sp42 = Math_Vec3f_Pitch(&this->actor.posRot.pos, &this->unk_290);
        sp3C = Math_Sins(sp42) * this->unk_27C;
        sp38 = Math_Coss(sp42) * this->unk_27C;
        sp48 = Math_Sins(this->actor.shape.rot.y) * sp38;
        sp44 = Math_Coss(this->actor.shape.rot.y) * sp38;
        sp4C = Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x, this->unk_290.x, 1.0f, ABS(sp48), 0.0f);
        sp4C += Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, this->unk_290.y, 1.0f, ABS(sp3C), 0.0f);
        sp4C += Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z, this->unk_290.z, 1.0f, ABS(sp44), 0.0f);
        this->unk_274 += (0.05f + (Math_Rand_ZeroOne() * 0.01f));
        if (sp4C == 0.0f) {
            this->unk_260--;
            if (this->unk_260 == 0) {
                func_809B9F60(this, globalCtx);
                func_809B9F28(this);
                SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000184);
                this->unk_260 = (Math_Rand_ZeroOne() * 30.0f) + 40.0f;
            } else {
                if (this->unk_25C != 0) {
                    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000444);
                }
                this->actor.posRot.rot.y += 0x1F40;
            }
            this->unk_25C = 0;
            this->unk_27C = 0.0f;
        } else {
            this->unk_25C = 1;
            this->unk_27C = 10.0f;
        }
        if (this->collider.base.atFlags & 2) {
            Audio_PlayActorSound2(&this->actor, 0x38CB);
            this->collider.base.atFlags &= ~2;
        }
        this->actor.shape.rot.y = this->actor.posRot.rot.y;
    } else if (Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f) == 0.0f) {
        func_809B9F28(this);
    }
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (((s32)this->skelAnime.animCurrentFrame == 0) && (Math_Rand_ZeroOne() <= 0.1f)) {
        Audio_PlayActorSound2(&this->actor, 0x38CA);
    }

    if ((this->unk_27C != 0.0f) &&
        (((s32)this->skelAnime.animCurrentFrame == 0) || ((s32)this->skelAnime.animCurrentFrame == 5))) {
        Audio_PlayActorSound2(&this->actor, 0x38C9);
    } else if (((s32)this->skelAnime.animCurrentFrame == 2) || ((s32)this->skelAnime.animCurrentFrame == 7)) {
        Audio_PlayActorSound2(&this->actor, 0x38C8);
    }
}

void func_809BA458(EnBb* this, GlobalContext* globalCtx) {
    Vec3f sp24 = { 0.0f, 0.0f, 0.0f };

    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000444);
    this->unk_25C = 1;
    this->unk_268 = 0;
    this->unk_274 = Math_Rand_ZeroOne();
    this->actor.shape.rot.x = this->actor.shape.rot.z = 0;
    this->actor.shape.rot.y = this->actor.yawTowardsLink;
    if (this->actor.params == -5) {
        func_809B9F60(this, globalCtx);
        func_809B9F28(this);
    }
    Matrix_Translate(this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z, 0);
    Matrix_RotateRPY(this->actor.posRot.rot.x, this->actor.posRot.rot.y, 0, 1);
    Matrix_RotateZ(this->unk_274, 1);
    sp24.y = this->unk_278;
    Matrix_MultVec3f(&sp24, &this->actor.posRot.pos);
    this->unk_324 = NULL;
    this->unk_250 = 9;
    this->actor.speedXZ = 0.0f;
    this->unk_26E = (Math_Rand_ZeroOne() * 30.0f) + 180.0f;
    func_809B82E0(this, func_809BA628);
}

void func_809BA590(EnBb* this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000444);
    this->unk_25C = 1;
    this->unk_268 = 0;
    this->unk_324 = NULL;
    this->unk_250 = 9;
    this->actor.speedXZ = 0.0f;
    this->unk_26E = Math_Rand_ZeroOne() * 30.0f + 180.0f;
    this->actor.shape.rot.z = 0;
    this->actor.shape.rot.y = this->actor.yawTowardsLink;
    func_809B82E0(this, func_809BA628);
}

void func_809BA628(EnBb* this, GlobalContext* globalCtx) {
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
    if (this->actor.params == -5) {
        if (this->actor.speedXZ == 0.0f) {
            sp52 = Math_Vec3f_Pitch(&this->actor.initPosRot.pos, &this->unk_290);
            sp50 = Math_Vec3f_Yaw(&this->actor.initPosRot.pos, &this->unk_290);
            sp4C = Math_Sins(sp52) * this->unk_27C;
            sp48 = Math_Coss(sp52) * this->unk_27C;
            Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, sp50, 1, 0x3E8, 0);
            sp40 = Math_Sins(this->actor.posRot.rot.y) * sp48;
            sp3C = Math_Coss(this->actor.posRot.rot.y) * sp48;
            sp44 = Math_SmoothScaleMaxMinF(&this->actor.initPosRot.pos.x, this->unk_290.x, 1.0f, ABS(sp40), 0.0f);
            sp44 += Math_SmoothScaleMaxMinF(&this->actor.initPosRot.pos.y, this->unk_290.y, 1.0f, ABS(sp4C), 0.0f);
            sp44 += Math_SmoothScaleMaxMinF(&this->actor.initPosRot.pos.z, this->unk_290.z, 1.0f, ABS(sp3C), 0.0f);
            this->unk_274 += (0.05f + (Math_Rand_ZeroOne() * 0.01f));
            if (sp44 == 0.0f) {
                func_809B9F60(this, globalCtx);
            }
            this->unk_25C = 1;
            this->unk_27C = 10.0f;
            if (this->collider.base.atFlags & 2) {
                Audio_PlayActorSound2(&this->actor, 0x38CB);
                this->collider.base.atFlags &= ~2;
            }
            if (func_800CA774(this->unk_274) == 0.0f) {
                if (this->unk_26A != 0) {
                    this->unk_284 = Math_Rand_ZeroOne();
                } else {
                    this->unk_284 = Math_Rand_ZeroOne() * 3.0f;
                    Audio_PlayActorSound2(&this->actor, 0x38CA);
                }
            }
            this->actor.shape.rot.y = this->actor.posRot.rot.y;
        } else if (Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f) == 0.0f) {
            func_809B9F28(this);
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
    Matrix_Translate(this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y, this->actor.initPosRot.pos.z, 0);
    Matrix_RotateRPY(this->actor.posRot.rot.x, this->actor.posRot.rot.y, 0, 1);
    Matrix_RotateZ(this->unk_274, 1);
    sp60.y = this->unk_278;
    Matrix_MultVec3f(&sp60, &sp54);
    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.x, sp54.x, 1.0f, this->unk_274 * 0.75f, 0.0f);
    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.y, sp54.y, 1.0f, this->unk_274 * 0.75f, 0.0f);
    Math_SmoothScaleMaxMinF(&this->actor.posRot.pos.z, sp54.z, 1.0f, this->unk_274 * 0.75f, 0.0f);
    this->unk_274 += 0.1f + this->unk_284;
    if (Actor_GetCollidedExplosive(globalCtx, &this->collider.base) || (--this->unk_26E == 0)) {
        this->unk_268++;
        this->unk_260 = (Math_Rand_ZeroOne() * 30.0f) + 60.0f;
        if (this->unk_26E != 0) {
            this->collider.base.acFlags &= ~2;
        }
        Audio_PlayActorSound2(&this->actor, 0x38CD);
    }
    if (this->unk_268 != 0) {
        this->unk_260--;
        if (this->unk_260 == 0) {
            this->unk_268 = 0;
            this->unk_26E = (Math_Rand_ZeroOne() * 30.0f) + 180.0f;
            Audio_PlayActorSound2(&this->actor, 0x38CC);
        }
        Math_SmoothScaleMaxMinF(&this->unk_288, 0.0f, 1.0f, 10.0f, 0.0f);
        Math_SmoothScaleMaxMinF(&this->unk_28C, 0.0f, 1.0f, 10.0f, 0.0f);
    } else {
        Math_SmoothScaleMaxMinF(&this->unk_288, 80.0f, 1.0f, 10.0f, 0.0f);
        Math_SmoothScaleMaxMinF(&this->unk_28C, 100.0f, 1.0f, 10.0f, 0.0f);
    }
    if ((s32)this->skelAnime.animCurrentFrame == 5) {
        Audio_PlayActorSound2(&this->actor, 0x38C8);
    }
    if (((s32)this->skelAnime.animCurrentFrame == 0) && (Math_Rand_ZeroOne() < 0.1f)) {
        Audio_PlayActorSound2(&this->actor, 0x38CA);
    }
}

void func_809BAC90(EnBb* this) {
    this->unk_250 = 4;
    if (this->actor.params != -3) {
        if (this->actor.params != -2) {
            if (this->actor.params >= -3) {
                this->actor.gravity = -2.0f;
                this->actor.shape.unk_08 = 1500.0f;
            }
            this->actor.speedXZ = 0.0f;
            this->unk_28C = 0.0f;
            this->unk_288 = 0.0f;
        } else {
            func_809B8518(this);
        }
    }
    switch (this->unk_2AA) {
        case 8:
            func_8003426C(&this->actor, -0x8000, 0xC8, 0, 0x50);
            break;
        case 9:
            this->unk_2A8 = 0x30;
        case 15:
            Audio_PlayActorSound2(&this->actor, 0x389E);
            func_8003426C(&this->actor, 0, 0xB4, 0, 0x50);
            break;
    }
    this->actor.bgCheckFlags &= ~1;
    func_809B82E0(this, func_809BADA4);
}

void func_809BADA4(EnBb* this, GlobalContext* globalCtx) {
    s16 temp_v0 = this->actor.posRot.rot.y - this->actor.wallPolyRot;

    if (this->actor.bgCheckFlags & 8) {
        if (ABS(temp_v0) > 0x4000) {
            this->actor.posRot.rot.y =
                this->actor.wallPolyRot + this->actor.wallPolyRot - this->actor.posRot.rot.y - 0x8000;
        }
        this->actor.bgCheckFlags &= ~8;
    }
    if (this->actor.bgCheckFlags & 2) {
        Audio_PlayActorSound2(&this->actor, 0x387B);
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
            if ((this->actor.params == -4) || (this->actor.params == -5)) {
                func_809BA590(this);
            } else if (this->actor.params == -3) {
                this->unk_250 = 8;
                func_809B82E0(this, func_809BA0D8);
            } else {
                func_809B96EC(this);
            }
        } else {
            this->actor.flags &= ~1;
            func_809B8B00(this, globalCtx);
        }
    }
}

void func_809BAF44(EnBb* this, GlobalContext* globalCtx) {
    if (this->collider.base.atFlags & 4) {
        this->collider.base.atFlags &= ~4;
        if (this->unk_250 != 3) {
            if (this->actor.params >= -2) {
                this->actor.posRot.rot.y = this->actor.shape.rot.y = this->actor.yawTowardsLink + 0x8000;
                if (this->actor.params == -2) {
                    func_809B8518(this);
                }
                func_809B96EC(this);
                return;
            }
            this->unk_26E = 1;
        }
    }
    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        this->unk_2AA = this->actor.colChkInfo.damageEffect;
        func_80035650(&this->actor, &this->collider.list[0].body, 0);
        switch (this->unk_2AA) {
            case 7:
                this->actor.freezeTimer = this->collider.list[0].body.acHitItem->toucher.damage;
            case 5:
                this->unk_2A8 = 0x30;
                goto block_15;
            case 6:
                this->actor.freezeTimer = this->collider.list[0].body.acHitItem->toucher.damage;
                break;
            case 8:
            case 9:
            case 15:
                if (this->unk_250 != 4) {
                    Actor_ApplyDamage(&this->actor);
                    func_809BAC90(this);
                }
                break;
            default:
            block_15:
                if ((this->unk_2AA == 14) || (this->unk_2AA == 12) || (this->unk_2AA == 11) || (this->unk_2AA == 10) ||
                    (this->unk_2AA == 7) || (this->unk_2AA == 5)) {
                    if ((this->unk_250 != 3) || (this->unk_260 < 0xBE)) {
                        Actor_ApplyDamage(&this->actor);
                    }
                    if ((this->unk_250 != 3) && (this->actor.params != -3)) {
                        func_809B96EC(this);
                    }
                } else {
                    if (((this->unk_250 == 3) && (this->unk_260 < 0xBE)) ||
                        ((this->actor.params != -3) && (this->unk_28C < 20.0f))) {
                        Actor_ApplyDamage(&this->actor);
                    } else {
                        this->collider.base.acFlags |= 2;
                    }
                }
                if (this->actor.colChkInfo.health == 0) {
                    this->actor.flags &= ~1;
                    if (this->actor.params == -2) {
                        func_809B8518(this);
                    }
                    func_809B8B00(this, globalCtx);
                } else if ((this->actor.params == -3) && ((this->unk_250 == 8) || (this->unk_250 == 4))) {
                    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0xC);
                    this->actor.speedXZ = -8.0f;
                    this->unk_27C = 0.0f;
                    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
                    Audio_PlayActorSound2(&this->actor, 0x38E3);
                } else if (((this->unk_250 == 3) && (this->unk_260 < 0xBE)) ||
                           ((this->actor.params != -3) && (this->unk_28C < 20.0f))) {
                    func_809B8D10(this);
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

    if (this->actor.params < 0) {
        func_809BAF44(this, globalCtx);
    }
    if (this->actor.colChkInfo.damageEffect != 0xD) {
        this->actionFunc(this, globalCtx);
        if ((this->actor.params < 0) && (this->actor.speedXZ >= -6.0f) && ((this->actor.flags & 0x8000) == 0)) {
            Actor_MoveForward(&this->actor);
        }
        if (this->unk_25C == 0) {
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

        if (this->unk_250 >= 2) {
            if ((this->actor.speedXZ != 0.0f) || (this->unk_250 == 9)) {
                CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            }
        }
        if (this->unk_250 >= 3) {
            if ((this->actor.dmgEffectTimer == 0) || ((this->actor.dmgEffectParams & 0x4000) == 0)) {
                if (this->unk_25C != 2) {
                    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
                    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
                }
            }
        }
    }
}

void func_809BB4F4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
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

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_bb.c", 0x7FC);

    blureBase1.z = this->unk_27C * 80.0f;
    blureBase2.z = this->unk_27C * 80.0f;
    if (this->unk_25C != 2) {
        if (this->actor.params < 0) {
            func_80093D18(globalCtx->state.gfxCtx);
            SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, NULL, func_809BB4F4,
                              this);

            if (this->unk_2A8 != 0) {
                this->actor.dmgEffectTimer++;
                if (1) {}
                this->unk_2A8--;
                if ((this->unk_2A8 % 4) == 0) {
                    Vec3f sp70;
                    s32 index = this->unk_2A8 >> 2;

                    sp70.x = this->actor.posRot.pos.x + sEffectOffsets[index].x;
                    sp70.y = this->actor.posRot.pos.y + sEffectOffsets[index].y;
                    sp70.z = this->actor.posRot.pos.z + sEffectOffsets[index].z;

                    if ((this->unk_2AA != 7) && (this->unk_2AA != 5)) {
                        EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &sp70, 0x96, 0x96, 0x96, 0xFA, 0xEB,
                                                       0xF5, 0xFF, 0.8f);
                    } else {
                        sp70.y -= 17.0f;
                        EffectSsEnFire_SpawnVec3f(globalCtx, &this->actor, &sp70, 0x28, 1, 0, -1);
                    }
                }
            }
            Matrix_Translate(0.0f, this->unk_28C * -40.0f, 0.0f, 1);
        } else {
            Matrix_Translate(0.0f, -40.0f, 0.0f, 1);
        }
        if (this->actor.params != -3) {
            func_80093D84(globalCtx->state.gfxCtx);
            gSPSegment(POLY_XLU_DISP++, 0x08,
                       Gfx_TwoTexScroll(
                           globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0,
                           ((globalCtx->gameplayFrames + this->unk_270 * 10) * (-20 - this->unk_270 * -2)) & 0x1FF,
                           0x20, 0x80));
            gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 0xFF, 0xFF, this->unk_29E, this->unk_29F);
            gDPSetEnvColor(POLY_XLU_DISP++, this->unk_2A0, this->unk_2A1, this->unk_2A2, 0);
            Matrix_RotateY(
                ((s16)(Camera_GetCamDirYaw(ACTIVE_CAM) - this->actor.shape.rot.y + 0x8000)) * (M_PI / 0x8000), 1);
            Matrix_Scale(this->unk_28C * 0.01f, this->unk_288 * 0.01f, 1.0f, 1);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_bb.c", 0x83A),
                      G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_0404D4E0);
        } else {
            Matrix_MultVec3f(&blureBase1, &blureVtx1);
            Matrix_MultVec3f(&blureBase2, &blureVtx2);
            if ((this->unk_27C != 0.0f) && (this->unk_250 == 8) && !(globalCtx->gameplayFrames & 1) &&
                (this->actor.colChkInfo.health != 0)) {
                EffectBlure_AddVertex(Effect_GetByIndex(this->blureIdx), &blureVtx1, &blureVtx2);
            } else if (this->unk_250 != 8) {
                EffectBlure_AddSpace(Effect_GetByIndex(this->blureIdx));
            }
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_bb.c", 0x84F);
}
