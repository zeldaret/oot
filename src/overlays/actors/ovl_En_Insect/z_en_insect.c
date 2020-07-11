#include "z_en_insect.h"
#include <vt.h>

#define FLAGS 0x00000000

#define THIS ((EnInsect*)thisx)

void EnInsect_Init(Actor* thisx, GlobalContext* globalCtx);
void EnInsect_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnInsect_Update(Actor* thisx, GlobalContext* globalCtx);
void EnInsect_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A7C3A0(EnInsect* this);
void func_80A7C3F4(EnInsect* this, GlobalContext* globalCtx);
void func_80A7C598(EnInsect* this);
void func_80A7C5EC(EnInsect* this, GlobalContext* globalCtx);
void func_80A7C818(EnInsect* this);
void func_80A7C86C(EnInsect* this, GlobalContext* globalCtx);
void func_80A7CAD0(EnInsect* this, GlobalContext* globalCtx);
void func_80A7CBC8(EnInsect* this);
void func_80A7CC3C(EnInsect* this, GlobalContext* globalCtx);
void func_80A7CE60(EnInsect* this);
void func_80A7CEC0(EnInsect* this, GlobalContext* globalCtx);
void func_80A7D1F4(EnInsect* this);
void func_80A7D26C(EnInsect* this, GlobalContext* globalCtx);
void func_80A7D39C(EnInsect* this);
void func_80A7D460(EnInsect* this, GlobalContext* globalCtx);

f32 D_80A7DEB0 = 0.0f;
s16 D_80A7DEB4 = 0;
s16 D_80A7DEB8 = 0;

const ActorInit En_Insect_InitVars = {
    ACTOR_EN_INSECT,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnInsect),
    (ActorFunc)EnInsect_Init,
    (ActorFunc)EnInsect_Destroy,
    (ActorFunc)EnInsect_Update,
    (ActorFunc)EnInsect_Draw,
};

extern SkeletonHeader D_04035590;
extern AnimationHeader D_040341FC;

static ColliderJntSphItemInit sColliderItemInit[1] = {
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
        { 0, { { 0, 0, 0 }, 5 }, 100 },
    },
};

static ColliderJntSphInit sColliderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x19, 0x10, COLSHAPE_JNTSPH },
    1,
    sColliderItemInit,
};

u16 D_80A7DF10[] = { 0, 5, 7, 7 };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 700, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 20, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 600, ICHAIN_STOP),
};

Vec3f D_80A7DF28[2] = { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } };

void func_80A7BE20(EnInsect* this) {
    this->unk_314 = D_80A7DF10[this->actor.params & 3];
}

f32 EnInsect_XZDistanceSquared(Vec3f* v1, Vec3f* v2) {
    return SQ(v1->x - v2->x) + SQ(v1->z - v2->z);
}

s32 func_80A7BE6C(EnInsect* this, GlobalContext* globalCtx) {
    u32 pad;
    Player* player = PLAYER;
    Vec3f pos;

    if (this->actor.xzDistFromLink < 32.0f) {
        pos.x = Math_Sins(this->actor.yawTowardsLink + 0x8000) * 16.0f + player->actor.posRot.pos.x;
        pos.y = player->actor.posRot.pos.y;
        pos.z = Math_Coss(this->actor.yawTowardsLink + 0x8000) * 16.0f + player->actor.posRot.pos.z;

        if (EnInsect_XZDistanceSquared(&pos, &this->actor.posRot.pos) <= 400.0f) {
            return 1;
        }
    }

    return 0;
}

void func_80A7BF58(EnInsect* this) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_040341FC, 1.0f, 0.0f, 0.0f, 1, 0.0f);
}

/**
 * Find the nearest soft dirt patch within 6400 units in the xz plane and the current room
 * Returns 1 if one was found, 0 otherwise
 */
s32 EnInsect_FindNearestSoil(EnInsect* this, GlobalContext* globalCtx) {
    Actor* currentActor;
    f32 currentDistance;
    f32 bestDistance;
    s32 ret;

    ret = 0;
    currentActor = globalCtx->actorCtx.actorList[ACTORTYPE_ITEMACTION].first;
    bestDistance = 6400.0f;
    this->soilActor = NULL;

    while (currentActor != NULL) {
        if (currentActor->id == ACTOR_OBJ_MAKEKINSUTA) {
            currentDistance = func_800CB594(this->actor.posRot.pos.x, this->actor.posRot.pos.z,
                                            currentActor->posRot.pos.x, currentActor->posRot.pos.z);

            if (currentDistance < bestDistance && currentActor->room == this->actor.room) {
                ret = 1;
                bestDistance = currentDistance;
                this->soilActor = (ObjMakekinsuta*)currentActor;
            }
        }
        currentActor = currentActor->next;
    }
    return ret;
}

void func_80A7C058(EnInsect* this) {
    if (this->unk_31E > 0) {
        this->unk_31E -= 1;
        return;
    }

    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MUSI_WALK);

    this->unk_31E = 3.0f / CLAMP_MIN(this->skelAnime.animPlaybackSpeed, 0.1f);
    if (this->unk_31E < 2) {
        this->unk_31E = 2;
    }
}

void EnInsect_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnInsect* this = THIS;
    f32 randomResult;
    s16 temp_s2;
    s32 count;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    func_80A7BE20(this);

    temp_s2 = this->actor.params & 3;

    SkelAnime_Init(globalCtx, &this->skelAnime, &D_04035590, &D_040341FC, this->limbDrawTable,
                   this->transitionDrawTable, 24);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sColliderInit, &this->colliderItem);

    this->actor.colChkInfo.mass = 30;

    if (this->unk_314 & 1) {
        this->actor.gravity = -0.2f;
        this->actor.minVelocityY = -2.0f;
    }

    if (this->unk_314 & 4) {
        this->unk_31C = Math_Rand_S16Offset(200, 40);
        this->actor.flags |= 0x10;
    }

    if (temp_s2 == 2 || temp_s2 == 3) {
        if (EnInsect_FindNearestSoil(this, globalCtx) != 0) {
            this->unk_314 |= 0x10;
            D_80A7DEB0 = 0.0f;
        }

        if (temp_s2 == 2) {
            this->actor.posRot.rot.z = 0;
            this->actor.shape.rot.z = this->actor.posRot.rot.z;

            for (count = 0; count < 2; count++) {
                Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_INSECT, this->actor.posRot.pos.x,
                            this->actor.posRot.pos.y, this->actor.posRot.pos.z, this->actor.shape.rot.x,
                            this->actor.shape.rot.y, this->actor.shape.rot.z, 3);

                if (globalCtx) {}
            }
        }

        func_80A7D39C(this);

        if (1) {}

        D_80A7DEB8++;
    } else {
        randomResult = Math_Rand_ZeroOne();

        if (randomResult < 0.3f) {
            func_80A7C3A0(this);
        } else if (randomResult < 0.4f) {
            func_80A7C598(this);
        } else {
            func_80A7C818(this);
        }
    }
}

void EnInsect_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s16 temp_v0;
    EnInsect* this = THIS;

    temp_v0 = this->actor.params & 3;
    Collider_DestroyJntSph(globalCtx, &this->collider);
    if ((temp_v0 == 2 || temp_v0 == 3) && D_80A7DEB8 > 0) {
        D_80A7DEB8--;
    }
}

void func_80A7C3A0(EnInsect* this) {
    this->unk_31A = Math_Rand_S16Offset(5, 35);
    func_80A7BF58(this);
    this->actionFunc = &func_80A7C3F4;
    this->unk_314 |= 0x100;
}

void func_80A7C3F4(EnInsect* this, GlobalContext* globalCtx) {
    u32 padding[2];
    s16 sp2E;
    f32 animPlaybackSpeed;

    sp2E = this->actor.params & 3;

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.1f, 0.5f, 0.0f);

    animPlaybackSpeed = (Math_Rand_ZeroOne() * 0.8f) + (this->actor.speedXZ * 1.2f);
    this->skelAnime.animPlaybackSpeed = CLAMP(animPlaybackSpeed, 0.0f, 1.9f);

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
    if (this->unk_31A <= 0) {
        func_80A7C598(this);
    }

    if ((this->unk_314 & 4 && this->unk_31C <= 0) ||
        ((sp2E == 2 || sp2E == 3) && this->unk_314 & 1 && this->actor.bgCheckFlags & 1 && D_80A7DEB8 >= 4)) {
        func_80A7CBC8(this);
    } else if (this->unk_314 & 1 && this->actor.bgCheckFlags & 0x40) {
        func_80A7CE60(this);
    } else if (this->actor.xzDistFromLink < 40.0f) {
        func_80A7C818(this);
    }
}

void func_80A7C598(EnInsect* this) {
    this->unk_31A = Math_Rand_S16Offset(10, 45);
    func_80A7BF58(this);
    this->actionFunc = &func_80A7C5EC;
    this->unk_314 |= 0x100;
}

#ifdef NON_MATCHING
// a stack offset is wrong
void func_80A7C5EC(EnInsect* this, GlobalContext* globalCtx) {
    s32 padding1;
    s32 padding2;
    s16 sp34 = this->actor.params & 3;

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 1.5f, 0.1f, 0.5f, 0.0f);

    if (EnInsect_XZDistanceSquared(&this->actor.posRot.pos, &this->actor.initPosRot.pos) > 1600.0f  ||
        (this->unk_31A < 4)) {
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y,
                                 Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos), 2000);
    } else if (this->actor.attachedB != NULL && &this->actor != this->actor.attachedB) {
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y,
                                 Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.attachedB->posRot.pos), 2000);
    }

    this->actor.shape.rot.y = this->actor.posRot.rot.y;
    this->skelAnime.animPlaybackSpeed = CLAMP(this->actor.speedXZ * 1.4f, 0.7f, 1.9f);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (this->unk_31A <= 0) {
        func_80A7C3A0(this);
    }

    if ((this->unk_314 & 4 && this->unk_31C <= 0) ||
        ((sp34 == 2 || sp34 == 3) && this->unk_314 & 1 && this->actor.bgCheckFlags & 1 && D_80A7DEB8 >= 4)) {
        func_80A7CBC8(this);
    } else if (this->unk_314 & 1 && this->actor.bgCheckFlags & 0x40) {
        func_80A7CE60(this);
    } else if (this->actor.xzDistFromLink < 40.0f) {
        func_80A7C818(this);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7C5EC.s")
#endif

void func_80A7C818(EnInsect* this) {
    this->unk_31A = Math_Rand_S16Offset(10, 40);
    func_80A7BF58(this);
    this->actionFunc = &func_80A7C86C;
    this->unk_314 |= 0x100;
}

#ifdef NON_MATCHING
// regalloc, minor reordering
void func_80A7C86C(EnInsect* this, GlobalContext* globalCtx) {
    s32 pad[3];
    s16 phi_a1;
    s16 sp38;

    sp38 = 0;
    if (this->actor.xzDistFromLink < 40.0f) {
        sp38 = 1;
    }

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 1.8f, 0.1f, 0.5f, 0.0f);

    if (EnInsect_XZDistanceSquared(&this->actor.posRot.pos, &this->actor.initPosRot.pos) > 25600.0f ||
        this->unk_31A < 4) {
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y,
                                 Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos), 2000);
    } else if (sp38 != 0) {
        phi_a1 = this->actor.yawTowardsLink + 0x8000;

        if ((s16)globalCtx->state.frames & 0x10) {
            if ((s16)globalCtx->state.frames & 0x20) {
                phi_a1 += 0x2000;
            }
        } else if ((s16)globalCtx->state.frames & 0x20) {
            phi_a1 -= 0x2000;
        }

        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, phi_a1, 2000);
    }

    this->actor.shape.rot.y = this->actor.posRot.rot.y;
    this->skelAnime.animPlaybackSpeed = CLAMP(this->actor.speedXZ * 1.6f, 0.8f, 1.9f);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (this->unk_31A <= 0 || sp38 == 0) {
        func_80A7C3A0(this);
    } else if (this->unk_314 & 1 && this->actor.bgCheckFlags & 0x40) {
        func_80A7CE60(this);
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Insect/func_80A7C86C.s")
#endif

void func_80A7CA64(EnInsect* this) {
    this->unk_31A = 200;

    Actor_SetScale(&this->actor, 0.001f);

    this->actor.draw = NULL;
    this->actor.speedXZ = 0.0f;

    func_80A7BF58(this);

    this->skelAnime.animPlaybackSpeed = 0.3f;
    this->actionFunc = &func_80A7CAD0;
    this->unk_314 &= ~0x100;
}

void func_80A7CAD0(EnInsect* this, GlobalContext* globalCtx) {
    if (this->unk_31A == 20 && !(this->unk_314 & 4)) {
        this->actor.draw = EnInsect_Draw;
    } else if (this->unk_31A == 0) {
        if (this->unk_314 & 4) {
            Actor_Kill(&this->actor);
        } else {
            Actor_SetScale(&this->actor, 0.01f);
            func_80A7C3A0(this);
        }
    } else if (this->unk_31A < 20) {
        Actor_SetScale(&this->actor, CLAMP_MAX(this->actor.scale.x + 0.001f, 0.01f));
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    }
}

void func_80A7CBC8(EnInsect* this) {
    this->unk_31A = 60;
    func_80A7BF58(this);
    this->skelAnime.animPlaybackSpeed = 1.9f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_MUSI_SINK);
    Math_Vec3f_Copy(&this->actor.initPosRot.pos, &this->actor.posRot.pos);
    this->actionFunc = func_80A7CC3C;
    this->unk_314 &= ~0x100;
    this->unk_314 |= 0x8;
}

void func_80A7CC3C(EnInsect* this, GlobalContext* globalCtx) {
    u32 padding[2];
    Vec3f sp34;

    Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.1f, 0.5f, 0.0f);
    Math_ApproxS(&this->actor.shape.rot.x, 10922, 352);

    Actor_SetScale(&this->actor, CLAMP_MIN(this->actor.scale.x - 0.0002f, 0.001f));

    this->actor.shape.unk_08 -= 0.8f;
    this->actor.posRot.pos.x = Math_Rand_ZeroOne() + this->actor.initPosRot.pos.x - 0.5f;
    this->actor.posRot.pos.z = Math_Rand_ZeroOne() + this->actor.initPosRot.pos.z - 0.5f;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (this->unk_31A >= 21 && Math_Rand_ZeroOne() < 0.1f) {
        sp34.x = Math_Sins(this->actor.shape.rot.y) * -0.6f;
        sp34.y = Math_Sins(this->actor.shape.rot.x) * 0.6f;
        sp34.z = Math_Coss(this->actor.shape.rot.y) * -0.6f;
        func_800286CC(globalCtx, &this->actor.posRot.pos, &sp34, D_80A7DF28, Math_Rand_ZeroOne() * 5.0f + 8.0f,
                      Math_Rand_ZeroOne() * 5.0f + 8.0f);
    }

    if (this->unk_31A <= 0) {
        if (this->unk_314 & 0x10 && this->soilActor != NULL &&
            func_800CB650(&this->soilActor->actor.posRot.pos, &this->actor.posRot.pos) < 64.0f) {
            this->soilActor->unk_152 = 1;
        }
        Actor_Kill(&this->actor);
    }
}

void func_80A7CE60(EnInsect* this) {
    this->unk_31A = Math_Rand_S16Offset(120, 50);
    func_80A7BF58(this);
    this->unk_316 = this->unk_318 = 0;
    this->actionFunc = &func_80A7CEC0;
    this->unk_314 &= ~0x100;
}

void func_80A7CEC0(EnInsect* this, GlobalContext* globalCtx) {
    f32 temp_f0;
    s16 temp_v1;
    s16 padding;
    s16 sp4E;
    Vec3f sp40;
    s32 phi_v0;
    s32 phi_v0_2;

    sp4E = this->actor.params & 3;

    if (this->unk_31A >= 81) {
        Math_ApproxF(&this->actor.speedXZ, 0.6f, 0.08f);
    } else {
        Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.02f);
    }
    this->actor.velocity.y = 0.0f;
    this->actor.posRot.pos.y += this->actor.waterY;
    this->skelAnime.animPlaybackSpeed = CLAMP(this->unk_31A * 0.018f, 0.1f, 1.9f);

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (this->unk_31A >= 81) {
        this->unk_316 += Math_Rand_S16Offset(-50, 100);
        this->unk_318 += Math_Rand_S16Offset(-300, 600);
    }

    temp_v1 = this->skelAnime.animPlaybackSpeed * 200.0f;

    if (this->unk_316 < -temp_v1) {
        this->unk_316 = -temp_v1;
    } else {
        if (temp_v1 < this->unk_316) {
            phi_v0 = temp_v1;
        } else {
            phi_v0 = this->unk_316;
        }
        this->unk_316 = phi_v0;
    }
    this->actor.posRot.rot.y += this->unk_316;

    temp_v1 = this->skelAnime.animPlaybackSpeed * 1000.0f;
    if (this->unk_318 < -temp_v1) {
        this->unk_318 = -temp_v1;
    } else {
        if (temp_v1 < this->unk_318) {
            phi_v0_2 = temp_v1;
        } else {
            phi_v0_2 = this->unk_318;
        }
        this->unk_318 = phi_v0_2;
    }
    this->actor.shape.rot.y += this->unk_318;

    Math_ApproxUpdateScaledS(&this->actor.posRot.rot.x, 0, 3000);
    this->actor.shape.rot.x = this->actor.posRot.rot.x;

    if (Math_Rand_ZeroOne() < 0.03f) {
        sp40.x = this->actor.posRot.pos.x;
        sp40.y = this->actor.posRot.pos.y + this->actor.waterY;
        sp40.z = this->actor.posRot.pos.z;
        func_80029444(globalCtx, &sp40, 20, 100, 4);
        func_80029444(globalCtx, &sp40, 40, 200, 8);
    }

    if (this->unk_31A <= 0 || (this->unk_314 & 4 && this->unk_31C <= 0) ||
        ((sp4E == 2 || sp4E == 3) && this->unk_314 & 1 && D_80A7DEB8 >= 4)) {
        func_80A7D1F4(this);
    } else if (!(this->actor.bgCheckFlags & 0x40)) {
        if (this->unk_314 & 0x10) {
            func_80A7D39C(this);
        } else {
            func_80A7C3A0(this);
        }
    }
}

void func_80A7D1F4(EnInsect* this) {
    this->unk_31A = 100;
    func_80A7BF58(this);
    this->actor.velocity.y = 0.0f;
    this->actor.speedXZ = 0.0f;
    this->actor.minVelocityY = -0.8f;
    this->actor.gravity = -0.04f;
    this->unk_314 &= ~0x3;
    this->actionFunc = &func_80A7D26C;
    this->unk_314 &= ~0x100;
    this->unk_314 |= 8;
}

void func_80A7D26C(EnInsect* this, GlobalContext* globalCtx) {
    this->actor.shape.rot.x -= 500;
    this->actor.shape.rot.y += 200;
    Actor_SetScale(&this->actor, CLAMP_MIN(this->actor.scale.x - 0.00005f, 0.001f));

    if (this->actor.waterY > 5.0f && this->actor.waterY < 30.0f && Math_Rand_ZeroOne() < 0.3f) {
        func_800293E4(globalCtx, &this->actor.posRot.pos, -5.0f, 5.0f, 5.0f, (Math_Rand_ZeroOne() * 0.04f) + 0.02f);
    }

    if (this->unk_31A <= 0) {
        Actor_Kill(&this->actor);
    }
}

void func_80A7D39C(EnInsect* this) {
    func_80A7BF58(this);
    this->unk_31A = 100;
    this->unk_324 = 1.5f;
    this->unk_328 = Math_Rand_ZeroOne() * 65535.5f;
    this->unk_316 = (Math_Rand_ZeroOne() - 0.5f) * 1500.0f;
    this->actor.posRot.rot.y = Math_Rand_ZeroOne() * 65535.5f;
    Actor_SetScale(&this->actor, 0.003f);
    this->actionFunc = &func_80A7D460;
    this->unk_314 |= 0x100;
}

void func_80A7D460(EnInsect* this, GlobalContext* globalCtx) {
    s32 temp_a0;
    s32 sp50;
    f32 phi_f0;
    EnInsect* thisTemp = this;
    s32 temp_a1;
    f32 sp40;
    f32 phi_f2;
    s16 sp3A;
    s16 sp38;
    f32 sp34;

    sp50 = 0;
    sp3A = this->actor.params & 3;

    if (this->soilActor != NULL) {
        sp40 = func_800CB650(&this->actor.posRot.pos, &this->soilActor->actor.posRot.pos);
    } else {
        if (this->unk_314 & 0x10) {
            osSyncPrintf(VT_COL(YELLOW, BLACK));
            // warning: target Actor is NULL
            osSyncPrintf("warning:目標 Actor が NULL (%s %d)\n", "../z_en_mushi.c", 1046);
            osSyncPrintf(VT_RST);
        }
        sp40 = 40.0f;
    }

    if (!this->soilActor->actor.params) {}

    D_80A7DEB0 += 0.0033333332f;
    if (D_80A7DEB0 > 1.0f) {
        D_80A7DEB0 = 1.0f;
    }

    if (D_80A7DEB0 > 0.999f) {
        phi_f2 = 0.0f;
    } else {
        if (sp40 > 900.0f) {
            phi_f2 = ((1.1f - D_80A7DEB0) * 100.0f) + 20.0f;
        } else {
            phi_f2 = (1.0f - D_80A7DEB0) * 10.0f;
        }
    }

    if (this->soilActor != NULL && Math_Rand_ZeroOne() < 0.07f) {
        this->actor.initPosRot.pos.x = (Math_Rand_ZeroOne() - 0.5f) * phi_f2 + thisTemp->soilActor->actor.posRot.pos.x;
        this->actor.initPosRot.pos.y = thisTemp->soilActor->actor.posRot.pos.y;
        this->actor.initPosRot.pos.z = (Math_Rand_ZeroOne() - 0.5f) * phi_f2 + thisTemp->soilActor->actor.posRot.pos.z;
    }

    if (D_80A7DEB0 > 0.999f) {
        this->unk_328 = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos);
        this->unk_324 = Math_Rand_ZeroOne() * 0.6f + 0.6f;
    } else if (Math_Rand_ZeroOne() < 0.07f) {
        if (this->unk_324 > 1.0f) {
            this->unk_324 = 0.1f;
        } else {
            this->unk_324 = Math_Rand_ZeroOne() * 0.8f + 1.0f;
        }

        sp34 = 1.3f - D_80A7DEB0;
        if (sp34 < 0.0f) {
            sp34 = 0.0f;
        } else {
            if (sp34 > 1.0f) {
                phi_f0 = 1.0f;
            } else {
                phi_f0 = sp34;
            }
            sp34 = phi_f0;
        }

        sp38 = (Math_Rand_ZeroOne() - 0.5f) * 65535.0f * sp34;
        this->unk_328 = Math_Vec3f_Yaw(&this->actor.posRot.pos, &this->actor.initPosRot.pos) + sp38;
    }

    Actor_SetScale(&this->actor, CLAMP_MAX(thisTemp->actor.scale.x + 0.0008f, 0.01f));

    if (this->actor.bgCheckFlags & 1) {
        Math_SmoothScaleMaxMinF(&this->actor.speedXZ, this->unk_324, 0.1f, 0.5f, 0.0f);
        Math_ApproxUpdateScaledS(&this->actor.posRot.rot.y, this->unk_328, 2000);
        sp50 = Math_ApproxUpdateScaledS(&this->actor.posRot.rot.x, 0, 2000);
        this->actor.shape.rot.y = this->actor.posRot.rot.y;
        this->actor.shape.rot.x = this->actor.posRot.rot.x;
    } else {
        Math_SmoothScaleMaxMinF(&this->actor.speedXZ, 0.0f, 0.1f, 0.5f, 0.0f);
        this->actor.speedXZ += (Math_Rand_ZeroOne() - 0.5f) * 0.14f;
        this->actor.velocity.y += Math_Rand_ZeroOne() * 0.12f;
        this->actor.posRot.rot.y += this->unk_316;
        this->actor.shape.rot.y = this->actor.posRot.rot.y;
        this->actor.shape.rot.x -= 2000;
    }

    phi_f2 = Math_Rand_ZeroOne() * 0.5f + this->actor.speedXZ * 1.3f;
    if (phi_f2 < 0.0f) {
        this->skelAnime.animPlaybackSpeed = 0.0f;
    } else {
        if (phi_f2 > 1.9f) {
            phi_f0 = 1.9f;
        } else {
            phi_f0 = phi_f2;
        }
        this->skelAnime.animPlaybackSpeed = phi_f0;
    }

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (!(this->unk_314 & 0x40) && this->unk_314 & 1 && this->actor.bgCheckFlags & 1) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_MUSI_LAND);
        this->unk_314 |= 0x40;
    }

    if (sp3A == 2 && this->unk_314 & 0x10 && !(this->unk_314 & 0x80)) {
        if (this->unk_32A >= 15) {
            if (this->soilActor != NULL) {
                temp_a0 = ((this->soilActor->actor.params >> 8) & 0x1F) - 1;
                temp_a1 = temp_a0 & 3;

                if ((((u32)(((s32*)gSaveContext.gsFlags)[temp_a0 >> 2] & D_8012723C[temp_a1]) >> D_8012724C[temp_a1]) &
                     (this->soilActor->actor.params & 0xFF)) == 0) {
                    func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
                }
            }
            this->unk_314 |= 0x80;
        } else {
            this->unk_32A++;
        }
    }

    if (this->unk_314 & 1 && this->actor.bgCheckFlags & 0x40) {
        func_80A7CE60(this);
    } else if (this->unk_314 & 0x10) {
        if (sp40 < 9.0f) {
            func_80A7CBC8(this);
        } else if (this->unk_31A <= 0 || this->unk_31C <= 0 ||
                   (this->unk_314 & 1 && this->actor.bgCheckFlags & 1 && D_80A7DEB8 >= 4 && (sp3A == 2 || sp3A == 3))) {
            func_80A7CBC8(this);
        } else {
            if (sp40 < 900.0f) {
                this->unk_31C++;
                this->unk_314 |= 0x20;
            } else {
                this->unk_31A = 100;
            }
        }
    } else if (sp50 != 0) {
        func_80A7C3A0(this);
    } else if ((sp3A == 2 || sp3A == 3) && this->unk_314 & 1 && this->unk_31C <= 0 && this->unk_31A <= 0 &&
               this->actor.groundY < -31990.0f) {
        osSyncPrintf(VT_COL(YELLOW, BLACK));
        // BG missing? To do Actor_delete
        osSyncPrintf("BG 抜け？ Actor_delete します(%s %d)\n", "../z_en_mushi.c", 1197);
        osSyncPrintf(VT_RST);
        Actor_Kill(&this->actor);
    }
}

void EnInsect_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnInsect* this = THIS;
    s32 phi_v0;

    if (this->actor.attachedB != NULL) {
        if (this->actor.attachedB->update == NULL) {
            if (&this->actor != this->actor.attachedB) {
                this->actor.attachedB = NULL;
            }
        }
    }

    if (this->unk_31A > 0) {
        this->unk_31A--;
    }

    if (this->unk_31C > 0) {
        this->unk_31C--;
    }

    this->actionFunc(this, globalCtx);

    if (this->actor.update != NULL) {
        Actor_MoveForward(&this->actor);
        if (this->unk_314 & 0x100) {
            if (this->unk_314 & 1) {
                if (this->actor.bgCheckFlags & 1) {
                    func_80A7C058(this);
                }
            } else {
                func_80A7C058(this);
            }
        }

        phi_v0 = 0;

        if (this->unk_314 & 1) {
            phi_v0 = 4;
        }

        if (this->unk_314 & 2) {
            phi_v0 |= 1;
        }

        if (phi_v0 != 0) {
            phi_v0 |= 0x40;
            func_8002E4B4(globalCtx, &this->actor, 8.0f, 5.0f, 0.0f, phi_v0);
        }

        if (func_8002F410(&this->actor, globalCtx) != 0) {
            this->actor.attachedA = NULL;
            phi_v0 = this->actor.params & 3;

            if (phi_v0 == 2 || phi_v0 == 3) {
                Actor_Kill(&this->actor);
            } else {
                func_80A7CA64(this);
            }
        } else if (this->actor.xzDistFromLink < 50.0f && this->actionFunc != &func_80A7CAD0) {
            if (!(this->unk_314 & 0x20) && this->unk_31C < 180) {
                CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            }

            if (!(this->unk_314 & 8) && D_80A7DEB4 < 4 && func_80A7BE6C(this, globalCtx) != 0 &&
                func_8002F434(&this->actor, globalCtx, 0x7E, 60.0f, 30.0f) != 0) {
                D_80A7DEB4++;
            }
        }

        Actor_SetHeight(&this->actor, 0.0f);
    }
}

void EnInsect_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnInsect* this = THIS;

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, NULL, 0, 0);
    func_800628A4(0, &this->collider);
    D_80A7DEB4 = 0;
}
