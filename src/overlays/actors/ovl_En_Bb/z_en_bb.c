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

Actor* func_809B82E8(GlobalContext* globalCtx, EnBb* this, f32 dist);
void func_809B837C(GlobalContext* globalCtx, EnBb* this, s16 arg2);
void func_809B8518(EnBb* this);
void func_809BAF44(EnBb* this, GlobalContext* globalCtx);
void func_809B9F28(EnBb* this);
void func_809B9F60(EnBb* this, GlobalContext* globalCtx);
void func_809BB4F4(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);

// Action functions

void func_809B8930(EnBb* this);
void func_809B8984(EnBb* this, GlobalContext* globalCtx);

void func_809B8B00(EnBb* this, GlobalContext* globalCtx);
void func_809B8B94(EnBb* this, GlobalContext* globalCtx);

void func_809B8D10(EnBb* this);
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
void func_809BA590(EnBb* this);
void func_809BA628(EnBb* this, GlobalContext* globalCtx);

void func_809BAC90(EnBb* this);
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

Actor *func_809B82E8(GlobalContext *globalCtx, EnBb *this, f32 range) {
    Actor* bomb = globalCtx->actorCtx.actorList[ACTORTYPE_EXPLOSIVES].first;
    f32 dist;

    while(bomb != NULL) {
        if(bomb->params != 0) {
            bomb = bomb->next;
            continue;
        } 
        dist = func_8002DB48(this, bomb);
        if((bomb->params == 0) && (dist <= range)) {
            return bomb;
        }
        bomb = bomb->next;
    }
    return NULL;
}

void func_809B837C(GlobalContext *globalCtx, EnBb *this, s16 arg2) {
    EnBb *now = this;
    EnBb* next;
    s32 i;

    for(i = 0; i < 5; i++) {
        next = Actor_Spawn(&globalCtx->actorCtx, globalCtx, 0x69, this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0);
        if(next != NULL) {
            now->actor.child = next;
            next->actor.parent = now;
            next->unk_324 = this;
            next->unk_26C = i + 1;
            next->actor.scale.x = 1.0f;
            next->unk_26E = next->unk_29F = 255 - 40 * i;
            next->unk_288 = next->actor.scale.y = 0.8f - (i * 0.075f);
            next->unk_28C = next->actor.scale.z =  1.0f - (i * 0.094f);
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

void func_809B8518(EnBb *this) {
    Actor* actor = &this->actor;

    while(actor->child != NULL) {
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

void func_809B8930(EnBb *this) {
    this->unk_250 = 2;
    this->unk_25C = 1;
    this->actor.flags &= ~1;
    this->actor.velocity.y = 0.0f;
    this->actor.gravity = 0.0f;
    this->actor.speedXZ = 0.0f;
    func_809B82E0(this, func_809B8984);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B8984.s")

void func_809B8B00(EnBb *this, GlobalContext *globalCtx) {
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

void func_809B8B94(EnBb *this, GlobalContext *globalCtx) {
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
        if (!func_8003305C(this, &this->unk_30C, globalCtx, sp4E)) {
            return;
        }
        Item_DropCollectibleRandom(globalCtx, this, &this->actor.posRot, 0xD0);
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
    Actor_Kill(this);
}

void func_809B8D10(EnBb *this) {
    this->unk_250 = 0;
    Audio_PlayActorSound2(this, 0x38E3);
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

void func_809B8DCC(EnBb *this, GlobalContext *globalCtx) {
    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 1.0f, 0.5f, 0.0f);
    if (this->actor.speedXZ == 0.0f) {
        this->actor.shape.unk_08 = 200.0f;
        func_809B96EC(this);
    }
}

void func_809B8E34(EnBb *this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000444);
    this->actor.speedXZ = Math_Rand_ZeroOne() * 0.5f + 0.5f;
    this->unk_260 = Math_Rand_ZeroOne() * 20.0f + 40.0f;
    this->unk_264 = Math_Rand_ZeroOne() * 30.0f + 180.0f;
    this->unk_324 = NULL;
    this->unk_250 = 6;
    func_809B82E0(this, func_809B8EF4);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B8EF4.s")

void func_809B96EC(EnBb *this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000444);
    this->unk_250 = 3;
    this->unk_260 = 200;
    this->actor.dmgEffectTimer = 0;
    this->actor.bgCheckFlags &= ~1;
    this->actor.speedXZ = 3.0f;
    this->unk_28C = 0.0f;
    this->unk_288 = 0.0f;
    this->actor.gravity = -2.0f;
    Audio_PlayActorSound2(this, 0x38CD);
    func_809B82E0(this, func_809B977C);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B977C.s")

void func_809B9A54(GlobalContext *globalCtx, EnBb *this) {
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809B9B64.s")

void func_809B9F28(EnBb *this) {
    this->actor.posRot.rot.y = this->actor.shape.rot.y = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->unk_290);
}

void func_809B9F60(EnBb *this, GlobalContext *globalCtx) {
    Path* path = &globalCtx->setupPathList[this->unk_29C];
    Vec3s *point;

    if (this->unk_29D == (s16)(path->count - 1)) {
        this->unk_29D = 0;
    } else {
        this->unk_29D++;
    }
    point = (Vec3s*) SEGMENTED_TO_VIRTUAL(path->points) + this->unk_29D;
    this->unk_290.x = point->x;
    this->unk_290.y = point->y;
    this->unk_290.z = point->z;
}

void func_809BA028(GlobalContext *globalCtx, EnBb *this) {
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000444);
    this->actor.speedXZ = 0.0f;
    this->actor.posRot.pos.y += 60.0f;
    this->unk_28C = 100.0f;
    this->unk_250 = 8;
    this->unk_29D = 0;
    this->unk_260 =  Math_Rand_ZeroOne() * 30.0f + 40.0f;
    this->unk_27C = 7.0f;
    func_809B82E0(this, func_809BA0D8);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809BA0D8.s")

void func_809BA458(EnBb *this, GlobalContext *globalCtx) {
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

void func_809BA590(EnBb *this) {
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

Vec3f D_809BBB5C = { 0.0f, 0.0f, 0.0f };

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809BA628.s")

void func_809BAC90(EnBb *this) {
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
    switch( this->unk_2AA) {
        case 8:
            func_8003426C(this, -0x8000, 0xC8, 0, 0x50);
            break;
        case 9:
            this->unk_2A8 = 0x30;
        case 15:
            Audio_PlayActorSound2(this, 0x389E);
            func_8003426C(this, 0, 0xB4, 0, 0x50);
        break;
    }
    this->actor.bgCheckFlags &= ~1;
    func_809B82E0(this, func_809BADA4);
}

void func_809BADA4(EnBb *this, GlobalContext *globalCtx) {
    s16 temp_v0 = this->actor.posRot.rot.y - this->actor.wallPolyRot;

    if (this->actor.bgCheckFlags & 8) {
        if (ABS(temp_v0) > 0x4000) {
            this->actor.posRot.rot.y = this->actor.wallPolyRot + this->actor.wallPolyRot - this->actor.posRot.rot.y - 0x8000;
        }
        this->actor.bgCheckFlags &= ~8;
    }
    if (this->actor.bgCheckFlags & 2) {
        Audio_PlayActorSound2(this, 0x387B);
        if (this->actor.velocity.y < -14.0f) {
            this->actor.velocity.y *= -0.4f;
        } else {
            this->actor.velocity.y = 0.0f;
        }
        func_80033260(globalCtx, this, &this->actor.posRot, 7.0f, 2, 2.0f, 0, 0, 0);
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

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/func_809BAF44.s")

void EnBb_Update(Actor *thisx, GlobalContext *globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnBb* this = THIS;
    Vec3f sp4C  = { 0.0f, 0.0f, 0.0f };
    Vec3f sp40 = { 0.0f, -0.6f, 0.0f };
    Color_RGBA8 sp3C = {0, 0, 255, 255};
    Color_RGBA8 sp38 = {0, 0, 0, 0};
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
        this->collider.list->dim.worldSphere.center.y = this->actor.posRot.pos.y + (this->actor.shape.unk_08 * this->actor.scale.y);
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

void func_809BB4F4(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3s *rot, void* thisx) {
    EnBb* this = THIS;

    func_80032F54(&this->unk_30C, limbIndex, 4, 0xF, 0xF, dList, -1);
}

#ifdef NON_MATCHING

static Vec3f D_809BBB88[] = {
    { 13.0f, 10.0f, 0.0f }, { 5.0f, 25.0f, 5.0f },   { -5.0f, 25.0f, 5.0f },  { -13.0f, 10.0f, 0.0f },
    { 5.0f, 25.0f, -5.0f }, { -5.0f, 25.0f, -5.0f }, { 0.0f, 10.0f, -13.0f }, { 5.0f, 0.0f, 5.0f },
    { 5.0f, 0.0f, -5.0f },  { 0.0f, 10.0f, 13.0f },  { -5.0f, 0.0f, 5.0f },   { -5.0f, 0.0f, -5.0f },
};

void EnBb_Draw(Actor *thisx, GlobalContext *globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    EnBb* this = THIS;
    Vec3f spB4 = { 0.0f, 5000.0f, 0.0f };
    Vec3f spA8 = { 0.0f, 2000.0f, 0.0f };
    Vec3f sp9C;
    Vec3f sp90;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_bb.c", 0x7FC);

    if(1){}

    spB4.z = this->unk_27C * 80.0f;
    spA8.z = this->unk_27C * 80.0f;
    if (this->unk_25C != 2) {
        if (this->actor.params < 0) {
            func_80093D18(globalCtx->state.gfxCtx);
            SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, NULL, func_809BB4F4, this);
            if (this->unk_2A8 != 0) {
                
                this->unk_2A8--;
                this->actor.dmgEffectTimer++;
                
                if ((this->unk_2A8 % 4) == 0) {
                    Vec3f sp70;
                    s32 index = this->unk_2A8 >> 2;

                    sp70.x = this->actor.posRot.pos.x + D_809BBB88[index].x;
                    sp70.y = this->actor.posRot.pos.y + D_809BBB88[index].y;
                    sp70.z = this->actor.posRot.pos.z + D_809BBB88[index].z;
                    
                    if ((this->unk_2AA != 7) && (this->unk_2AA != 5)) {
                        EffectSsEnIce_SpawnFlyingVec3f(globalCtx, &this->actor, &sp70, 0x96, 0x96, 0x96, 0xFA, 0xEB, 0xF5, 0xFF, 0.8f);
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
            gSPSegment(POLY_XLU_DISP++, 0x08, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0, ((globalCtx->gameplayFrames + this->unk_270 * 10) * (-20 - this->unk_270 * -2)) & 0x1FF, 0x20, 0x80));
            gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 0xFF, 0xFF, this->unk_29E, this->unk_29F);
            gDPSetEnvColor(POLY_XLU_DISP++, this->unk_2A0, this->unk_2A1, this->unk_2A2, 0);

            Matrix_RotateY((s16)((s16)(Camera_GetCamDirYaw(ACTIVE_CAM) - this->actor.shape.rot.y) + 0x8000) * ((f32)0x8000 / M_PI), 1);
            Matrix_Scale(this->unk_28C * 0.01f, this->unk_288 * 0.01f, 1.0f, 1);
            gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_bb.c", 0x83A), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
            gSPDisplayList(POLY_XLU_DISP++, D_0404D4E0);
        } else {
            Matrix_MultVec3f(&spB4, &sp9C);
            Matrix_MultVec3f(&spA8, &sp90);
            if ((this->unk_27C != 0.0f) && (this->unk_250 == 8) && !(globalCtx->gameplayFrames & 1) && (this->actor.colChkInfo.health != 0)) {
                EffectBlure_AddVertex(Effect_GetByIndex(this->blureIdx), &sp9C, &sp90);
            } else if (this->unk_250 != 8) {
                EffectBlure_AddSpace(Effect_GetByIndex(this->blureIdx));
            }
        }
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_bb.c", 0x84F);
}
#else
Vec3f D_809BBB88[] = {
    { 13.0f, 10.0f, 0.0f }, { 5.0f, 25.0f, 5.0f },   { -5.0f, 25.0f, 5.0f },  { -13.0f, 10.0f, 0.0f },
    { 5.0f, 25.0f, -5.0f }, { -5.0f, 25.0f, -5.0f }, { 0.0f, 10.0f, -13.0f }, { 5.0f, 0.0f, 5.0f },
    { 5.0f, 0.0f, -5.0f },  { 0.0f, 10.0f, 13.0f },  { -5.0f, 0.0f, 5.0f },   { -5.0f, 0.0f, -5.0f },
};
Vec3f D_809BBC18 = { 0.0f, 5000.0f, 0.0f };
Vec3f D_809BBC24 = { 0.0f, 2000.0f, 0.0f };
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Bb/EnBb_Draw.s")
#endif
