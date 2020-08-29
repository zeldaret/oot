/*
 * File: z_boss_fd2.c
 * Overlay: ovl_Boss_Fd2
 * Description: Volvagia, hole form
 */

#include "z_boss_fd2.h"
#include "../ovl_Boss_Fd/z_boss_fd.h"

#define FLAGS 0x00000035

#define THIS ((BossFd2*)thisx)

#define BOSSFD ((BossFd*)this->actor.attachedA)

void BossFd2_Init(Actor* thisx, GlobalContext* globalCtx);
void BossFd2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BossFd2_Update(Actor* thisx, GlobalContext* globalCtx);
void BossFd2_Draw(Actor* thisx, GlobalContext* globalCtx);

void BossFd2_SpawnDebris(GlobalContext* globalCtx, BossFdParticle* particle, Vec3f* position, Vec3f* velocity,
                         Vec3f* acceleration, f32 scale);
void BossFd2_SpawnFireBreath(GlobalContext* globalCtx, BossFdParticle* particle, Vec3f* position, Vec3f* velocity,
                             Vec3f* acceleration, f32 scale, s16 opacity, s16 kbAngle);
void BossFd2_SpawnEmber(GlobalContext* globalCtx, BossFdParticle* particle, Vec3f* position, Vec3f* velocity,
                        Vec3f* acceleration, f32 scale);
void BossFd2_SpawnSkullPiece(GlobalContext* globalCtx, BossFdParticle* particle, Vec3f* position, Vec3f* velocity,
                             Vec3f* acceleration, f32 scale);
void BossFd2_SpawnDust(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale);

void BossFd2_SetupEmerge(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_Emerge(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_SetupIdle(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_Idle(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_SetupBurrow(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_Burrow(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_SetupBreatheFire(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_BreatheFire(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_SetupClawSwipe(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_ClawSwipe(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_SetupVulnerable(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_Vulnerable(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_SetupDamaged(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_Damaged(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_SetupDeath(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_UpdateCutsceneCamera(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_Death(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_Wait(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_CollisionCheck(BossFd2* this, GlobalContext* globalCtx);
void BossFd2_UpdateFace(BossFd2* this, GlobalContext* globalCtx);

s32 BossFd2_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                             Actor* thisx);
void BossFd2_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx);
void BossFd2_UpdateMane(BossFd2* this, GlobalContext* globalCtx, Vec3f* head, Vec3f* pos, Vec3f* rot, Vec3f* pull,
                        f32* scale);
void BossFd2_DrawMane(BossFd2* this, GlobalContext* globalCtx);

extern Gfx D_06002B08[];
extern Gfx D_06002708[];
extern Gfx D_06002F08[];
extern Gfx D_06004B48[];
extern Gfx D_06004BC8[];
extern Gfx D_06004E38[];

extern AnimationHeader D_060073CC;
extern AnimationHeader D_06007850;
extern AnimationHeader D_060089DC;
extern AnimationHeader D_06009194;
extern AnimationHeader D_0600A31C;
extern AnimationHeader D_0600A86C;
extern AnimationHeader D_0600AE90;
extern AnimationHeader D_0600B7A4;
extern AnimationHeader D_0600C1D0;
extern AnimationHeader D_0600C8EC;

extern SkeletonHeader D_06011A78;

const ActorInit Boss_Fd2_InitVars = {
    ACTOR_BOSS_FD2,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_FD2,
    sizeof(BossFd2),
    (ActorFunc)BossFd2_Init,
    (ActorFunc)BossFd2_Destroy,
    (ActorFunc)BossFd2_Update,
    (ActorFunc)BossFd2_Draw,
};

static ColliderJntSphItemInit sJntSphItemsInit[9] = {
    {
        { 0x03, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x00, 0x05, 0x01 },
        { 35, { { 6000, 0, 0 }, 21 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 18, { { 4000, 0, 0 }, 13 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 19, { { 3000, 0, 0 }, 13 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 20, { { 4000, 0, 0 }, 15 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 24, { { 4000, 0, 0 }, 13 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 25, { { 3000, 0, 0 }, 13 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 26, { { 3500, 1500, 0 }, 15 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 17, { { 0, 0, 0 }, 26 }, 100 },
    },
    {
        { 0x02, { 0xFFCFFFFF, 0x00, 0x20 }, { 0xFFCDFFFE, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 30, { { 0, 0, 0 }, 17 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_METAL_SHIELD, 0x11, 0x09, 0x09, 0x10, COLSHAPE_JNTSPH },
    9,
    sJntSphItemsInit,
};

Vec3f D_808D6124[] = { { 0.0f, 90.0f, -243.0f },    { 0.0f, 90.0f, 0.0f },    { 0.0f, 90.0f, 243.0f },
                       { -243.0f, 90.0f, -243.0f }, { -243.0f, 90.0f, 0.0f }, { -243.0f, 90.0f, 243.0f },
                       { 243.0f, 90.0f, -243.0f },  { 243.0f, 90.0f, 0.0f },  { 243.0f, 90.0f, 243.0f } };

static InitChainEntry sInitChain[] = {
    ICHAIN_U8(unk_1F, 5, ICHAIN_CONTINUE),
    ICHAIN_S8(naviEnemyId, 33, ICHAIN_CONTINUE),
    ICHAIN_F32_DIV1000(gravity, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 0, ICHAIN_STOP),
};

Vec3f D_808D61A0 = { 0.0, 0.0, 50.0 }; // Unused? BossFd uses this for sound effects.

void BossFd2_SpawnDebris(GlobalContext* globalCtx, BossFdParticle* particle, Vec3f* position, Vec3f* velocity,
                         Vec3f* acceleration, f32 scale) {
    s16 i1;
    for (i1 = 0; i1 < 180; i1++, particle++) {
        if (particle->type == 0) {
            particle->type = 2;
            particle->pos = *position;
            particle->vel = *velocity;
            particle->accel = *acceleration;
            particle->scale = scale / 1000.0f;
            particle->unk_34 = Math_Rand_ZeroFloat(100.0f);
            particle->unk_38 = Math_Rand_ZeroFloat(100.0f);
            break;
        }
    }
}

void BossFd2_SpawnFireBreath(GlobalContext* globalCtx, BossFdParticle* particle, Vec3f* position, Vec3f* velocity,
                             Vec3f* acceleration, f32 scale, s16 opacity, s16 kbAngle) {
    s16 i1;
    for (i1 = 0; i1 < 180; i1++, particle++) {
        if (particle->type == 0) {
            particle->type = 4;
            particle->timer1 = 0;
            particle->pos = *position;
            particle->vel = *velocity;
            particle->accel = *acceleration;
            particle->pos.x -= particle->vel.x;
            particle->pos.y -= particle->vel.y;
            particle->pos.z -= particle->vel.z;
            particle->unk_34 = 0.0f;
            particle->opacity = opacity;
            particle->unk_38 = Math_Rand_ZeroFloat(10.0f);
            particle->timer2 = 0;
            particle->scale = scale / 400.0f;
            particle->kbAngle = kbAngle;
            break;
        }
    }
}

void BossFd2_SpawnEmber(GlobalContext* globalCtx, BossFdParticle* particle, Vec3f* position, Vec3f* velocity,
                        Vec3f* acceleration, f32 scale) {
    s16 i1;
    for (i1 = 0; i1 < 180; i1++, particle++) {
        if (particle->type == 0) {
            particle->type = 1;
            particle->pos = *position;
            particle->vel = *velocity;
            particle->accel = *acceleration;
            particle->scale = scale / 1000.0f;
            particle->opacity = 0xFF;
            particle->timer1 = (s16)Math_Rand_ZeroFloat(10.0f);
            break;
        }
    }
}

void BossFd2_SpawnSkullPiece(GlobalContext* globalCtx, BossFdParticle* particle, Vec3f* position, Vec3f* velocity,
                             Vec3f* acceleration, f32 scale) {
    s16 i1;
    for (i1 = 0; i1 < 180; i1++, particle++) {
        if (particle->type == 0) {
            particle->type = 5;
            particle->pos = *position;
            particle->vel = *velocity;
            particle->accel = *acceleration;
            particle->scale = scale / 1000.0f;
            particle->unk_34 = Math_Rand_ZeroFloat(100.0f);
            particle->unk_38 = Math_Rand_ZeroFloat(100.0f);
            break;
        }
    }
}

void BossFd2_SpawnDust(BossFdParticle* particle, Vec3f* position, Vec3f* velocity, Vec3f* acceleration, f32 scale) {
    s16 i1;
    for (i1 = 0; i1 < 180; i1++, particle++) {
        if (particle->type == 0) {
            particle->type = 3;
            particle->pos = *position;
            particle->vel = *velocity;
            particle->accel = *acceleration;
            particle->timer2 = 0;
            particle->scale = scale / 400.0f;
            break;
        }
    }
}

void BossFd2_Init(Actor* thisx, GlobalContext* globalCtx) {
    BossFd2* this = THIS;
    ColliderJntSph* sp34;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Actor_SetScale(&this->actor, 0.0069999993f);
    this->actor.posRot.pos.y = -850.0f;
    ActorShape_Init(&this->actor.shape, -580.0f / this->actor.scale.y, NULL, 0.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime1, &D_06011A78, &D_0600C8EC, 0, 0, 0);
    if (this->actor.params == 0) {
        BossFd2_SetupEmerge(this, globalCtx);
    } else {
        this->actionFunc = BossFd2_Wait;
    }
    sp34 = &this->collider1;
    Collider_InitJntSph(globalCtx, sp34);
    Collider_SetJntSph(globalCtx, sp34, &this->actor, &sJntSphInit, this->colliderItems);
}

void BossFd2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BossFd2* this = THIS;
    SkelAnime_Free(&this->skelAnime1, globalCtx);
    Collider_DestroyJntSph(globalCtx, &this->collider1);
}

void BossFd2_SetupEmerge(BossFd2* this, GlobalContext* globalCtx) {
    BossFd* bossFd = BOSSFD;
    s16 temp_rand;
    s8 health;

    osSyncPrintf("UP INIT 1\n");
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime1, &D_0600C1D0);
    this->actionFunc = BossFd2_Emerge;
    this->skelAnime1.animPlaybackSpeed = 0.0f;
    temp_rand = (s16)Math_Rand_ZeroFloat(8.9f);
    this->actor.posRot.pos.x = D_808D6124[temp_rand].x;
    this->actor.posRot.pos.z = D_808D6124[temp_rand].z;
    this->actionState = 0;
    osSyncPrintf("UP INIT 2\n");
    this->timers[0] = 10;
    if (bossFd != 0) {
        health = bossFd->actor.colChkInfo.health;
        if (health >= 18) {
            this->fakeoutCount = 0;
        } else if (health >= 12) {
            this->fakeoutCount = 1;
        } else if (health >= 6) {
            this->fakeoutCount = 2;
        } else {
            this->fakeoutCount = 3;
        }
    }
}

void BossFd2_Emerge(BossFd2* this, GlobalContext* globalCtx) {
    s8 temp_v0_4;
    BossFd* bossFd = BOSSFD;
    Player* player = PLAYER;
    s16 i1;
    s16 phi_v0;

    osSyncPrintf("UP 1    mode %d\n", this->actionState);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime1);
    osSyncPrintf("UP 1.5 \n");
    switch (this->actionState) {
        case 0:
            osSyncPrintf("UP time %d \n", this->timers[0]);
            osSyncPrintf("PL time %x \n", player);
            osSyncPrintf("MT time %x \n", bossFd);
            if ((this->timers[0] == 0) && (70.0f < player->actor.posRot.pos.y)) {
                osSyncPrintf("UP 1.6 \n");
                bossFd->faceExposed = 0;
                bossFd->holePosition.x = this->actor.posRot.pos.x;
                bossFd->holePosition.z = this->actor.posRot.pos.z;
                func_80033E1C(globalCtx, 1, 0x32, 0x5000);
                this->actionState = 1;
                this->holeCounter++;
                this->actor.posRot.pos.y = -200.0f;
                temp_v0_4 = bossFd->actor.colChkInfo.health;
                if (temp_v0_4 == 24) {
                    phi_v0 = 30;
                } else if (temp_v0_4 >= 18) {
                    phi_v0 = 25;
                } else if (temp_v0_4 >= 12) {
                    phi_v0 = 20;
                } else if (temp_v0_4 >= 6) {
                    phi_v0 = 10;
                } else {
                    phi_v0 = 5;
                }
                this->timers[0] = phi_v0;
                bossFd->animationTimers[4] = this->timers[0] + 10;
                osSyncPrintf("UP 1.7 \n");
            }
            break;
        case 1:
            if (this->timers[0] == 0) {
                if (this->fakeoutCount != 0) {
                    this->fakeoutCount--;
                    i1 = (s16)Math_Rand_ZeroFloat(8.9f);
                    this->actor.posRot.pos.x = D_808D6124[i1].x;
                    this->actor.posRot.pos.z = D_808D6124[i1].z;
                    this->actionState = 0;
                    this->timers[0] = 0xA;
                } else {
                    this->skelAnime1.animPlaybackSpeed = 1.0f;
                    this->animationLength = SkelAnime_GetFrameCount(&D_0600C1D0.genericHeader);
                    this->actionState = 2;
                    Audio_PlayActorSound2(&this->actor, 0x38D1);
                    this->actor.shape.rot.y = this->actor.yawTowardsLink;
                    this->timers[0] = 0xF;
                    this->actor.posRot.pos.y = 150.0f;
                    for (i1 = 0; i1 < 10; i1++) {
                        this->rightMane.pos[i1].x += Math_Rand_CenteredFloat(100.0f);
                        this->rightMane.pos[i1].z += Math_Rand_CenteredFloat(100.0f);
                        this->leftMane.pos[i1].x += Math_Rand_CenteredFloat(100.0f);
                        this->leftMane.pos[i1].z += Math_Rand_CenteredFloat(100.0f);
                    }
                    bossFd->holeSplashTimer = 5;
                }
            }
            break;
        case 2:
            Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x7D0);
            if ((this->timers[0] == 1) && (this->actor.xzDistFromLink < 120.0f)) {
                func_8002F6D4(globalCtx, &this->actor, 3.0f, this->actor.yawTowardsLink, 2.0f, 0x20);
                Audio_PlayActorSound2(&player->actor, 0x83E);
            }
            if (func_800A56C8(&this->skelAnime1, this->animationLength) != 0) {
                BossFd2_SetupIdle(this, globalCtx);
            }
            break;
        default:
            break;
    }
    osSyncPrintf("UP 2\n");
}

void BossFd2_SetupIdle(BossFd2* this, GlobalContext* globalCtx) {
    BossFd* bossFd = BOSSFD;
    s8 temp_v0;
    s16 phi_v0;

    osSyncPrintf("UP INIT 1\n");
    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime1, &D_0600AE90);
    this->actionFunc = BossFd2_Idle;
    temp_v0 = bossFd->actor.colChkInfo.health;
    if (temp_v0 == 24) {
        phi_v0 = 50;
    } else if (temp_v0 >= 18) {
        phi_v0 = 40;
    } else if (temp_v0 >= 12) {
        phi_v0 = 40;
    } else if (temp_v0 >= 6) {
        phi_v0 = 30;
    } else {
        phi_v0 = 20;
    }
    this->timers[0] = phi_v0;
}

void BossFd2_Idle(BossFd2* this, GlobalContext* globalCtx) {
    s16 sp36;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime1);
    sp36 = this->turnToLink;
    this->turnToLink = Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, 0x7D0, 0);
    osSyncPrintf("SW1 = %d\n", sp36);
    osSyncPrintf("SW2 = %d\n", this->turnToLink);
    if ((fabsf(sp36) <= 1000.0f) && (1000.0f < fabsf(this->turnToLink))) {
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime1, &D_0600AE90, -5.0f);
    }
    if ((1000.0f < fabsf(sp36)) && (fabsf(this->turnToLink) <= 1000.0f)) {
        SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime1, &D_0600C8EC, -5.0f);
    }
    if (this->timers[0] == 0) {
        if (this->actor.xzDistFromLink < 200.0f) {
            BossFd2_SetupClawSwipe(this, globalCtx);
        } else {
            BossFd2_SetupBreatheFire(this, globalCtx);
        }
    }
}

void BossFd2_SetupBurrow(BossFd2* this, GlobalContext* globalCtx) {
    BossFd* bossFd = BOSSFD;

    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime1, &D_06009194, -5.0f);
    this->actionFunc = BossFd2_Burrow;
    this->animationLength = SkelAnime_GetFrameCount(&D_06009194.genericHeader);
    bossFd->animationTimers[4] = 30;
    this->actionState = 0;
}

void BossFd2_Burrow(BossFd2* this, GlobalContext* globalCtx) {
    BossFd* bossFd = BOSSFD;

    if (this->actionState == 0) {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime1);
        if (func_800A56C8(&this->skelAnime1, this->animationLength) != 0) {
            this->actionState = 1;
            this->timers[0] = 25;
        }
    } else {
        Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, -100.0f, 1.0f, 10.0f);
        if (this->timers[0] == 0) {
            if ((this->holeCounter >= 3) && ((s8)bossFd->actor.colChkInfo.health < 24)) {
                this->holeCounter = 0;
                this->actionFunc = BossFd2_Wait;
                bossFd->handoffSignal = 1;
            } else {
                BossFd2_SetupEmerge(this, globalCtx);
            }
        }
    }
}

void BossFd2_SetupBreatheFire(BossFd2* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime1, &D_060073CC, -5.0f);
    this->actionFunc = BossFd2_BreatheFire;
    this->animationLength = SkelAnime_GetFrameCount(&D_060073CC.genericHeader);
    this->actionState = 0;
}

Vec3f D_808D61AC = { 0.0f, 0.0f, 0.0f };
Vec3f D_808D61B8 = { 0.0f, 0.0f, 0.0f };

void BossFd2_BreatheFire(BossFd2* this, GlobalContext* globalCtx) {
    f32 temp_f22;
    f32 temp_f20;
    f32 temp_x;
    f32 temp_y;
    s16 angleX;
    s16 angleY;
    s16 spB2 = 0;
    s16 i1;
    BossFd* bossFd = BOSSFD;
    Player* player = PLAYER;
    Vec3f toLink;
    Vec3f sp90;
    Vec3f sp84;
    Vec3f sp78;
    Vec3f sp6C;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime1);
    if (func_800A56C8(&this->skelAnime1, this->animationLength) != 0) {
        BossFd2_SetupBurrow(this, globalCtx);
    }
    if ((25.0f <= this->skelAnime1.animCurrentFrame) && (this->skelAnime1.animCurrentFrame < 70.0f)) {
        if (this->skelAnime1.animCurrentFrame == 25.0f) {
            globalCtx->envCtx.unk_D8 = 0.0f;
        }
        Audio_PlayActorSound2(&this->actor, 0x30DB);
        if (50 < this->skelAnime1.animCurrentFrame) {
            spB2 = (70.0f - this->skelAnime1.animCurrentFrame) * 12.0f;
        } else {
            spB2 = 0xFF;
        }
        toLink.x = player->actor.posRot.pos.x - this->fireBreathSpawnPoint.x;
        toLink.y = player->actor.posRot.pos.y - this->fireBreathSpawnPoint.y;
        toLink.z = player->actor.posRot.pos.z - this->fireBreathSpawnPoint.z;
        angleY = atan2s(toLink.z, toLink.x);
        angleX = -atan2s(sqrtf((toLink.x * toLink.x) + (toLink.z * toLink.z)), toLink.y);
        angleY -= this->actor.shape.rot.y;
        if (angleY >= 0x1F41) {
            angleY = 0x1F40;
        }
        if (angleY < -0x1F40) {
            angleY = -0x1F40;
        }
        angleX += (-0x1B58);
        if (angleX >= 0x3E9) {
            angleX = 0x3E8;
        }
        if (angleX < -0xFA0) {
            angleX = -0xFA0;
        }
        Math_SmoothScaleMaxS(&this->fireBreathAngle.y, angleY, 5, 0x7D0);
        Math_SmoothScaleMaxS(&this->fireBreathAngle.x, angleX, 5, 0x7D0);
    } else {
        Math_SmoothScaleMaxS(&this->fireBreathAngle.y, 0, 5, 0x7D0);
        Math_SmoothScaleMaxS(&this->fireBreathAngle.x, 0, 5, 0x7D0);
    }
    if (spB2 != 0) {
        sp90 = D_808D61AC;
        sp78 = D_808D61B8;
        bossFd->fogMode = 2;
        sp90.z = 30.0f;
        sp6C = this->fireBreathSpawnPoint;
        temp_y = ((this->actor.shape.rot.y + this->fireBreathAngle.y) / 32768.0f) * 3.1415927f;
        temp_x = ((this->fireBreathAngle.x / 32768.0f) * 3.1415927f) + 1.0f / 2;
        Matrix_RotateY(temp_y, 0);
        Matrix_RotateX(temp_x, 1);
        Matrix_MultVec3f(&sp90, &sp84);
        temp_f22 = 300.0f + 50.0f * Math_Sins(this->varianceTimer * 0x2000);
        BossFd2_SpawnFireBreath(globalCtx, bossFd->particles, &sp6C, &sp84, &sp78, temp_f22, spB2,
                                this->actor.shape.rot.y + this->fireBreathAngle.y);
        sp6C.x += sp84.x * 0.5f;
        sp6C.y += sp84.y * 0.5f;
        sp6C.z += sp84.z * 0.5f;
        temp_f20 = 300.0f + 50.0f * Math_Sins(this->varianceTimer * 0x2000);
        BossFd2_SpawnFireBreath(globalCtx, bossFd->particles, &sp6C, &sp84, &sp78, temp_f20, spB2,
                                this->actor.shape.rot.y + this->fireBreathAngle.y);
        sp90.x = 0.0f;
        sp90.y = 17.0f;
        sp90.z = 0.0f;

        for (i1 = 0; i1 < 6; i1++) {
            temp_y = Math_Rand_ZeroFloat(6.2831855f);
            temp_x = Math_Rand_ZeroFloat(6.2831855f);
            Matrix_RotateY(temp_y, 0);
            Matrix_RotateX(temp_x, 1);
            Matrix_MultVec3f(&sp90, &sp84);
            sp78.x = (sp84.x * -10.0f) / 100.0f;
            sp78.y = (sp84.y * -10.0f) / 100.0f;
            sp78.z = (sp84.z * -10.0f) / 100.0f;
            BossFd2_SpawnEmber(globalCtx, bossFd->particles, &this->fireBreathSpawnPoint, &sp84, &sp78,
                               (s16)Math_Rand_ZeroFloat(2.0f) + 8);
        }
    }
}

void BossFd2_SetupClawSwipe(BossFd2* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime1, &D_0600B7A4, -5.0f);
    this->actionFunc = BossFd2_ClawSwipe;
    this->animationLength = SkelAnime_GetFrameCount(&D_0600B7A4.genericHeader);
}

void BossFd2_ClawSwipe(BossFd2* this, GlobalContext* globalCtx) {

    SkelAnime_FrameUpdateMatrix(&this->skelAnime1);
    if (func_800A56C8(&this->skelAnime1, 5.0f) != 0) {
        Audio_PlayActorSound2(&this->actor, 0x38D1);
        Audio_PlayActorSound2(&this->actor, 0x38D8);
    }
    if (func_800A56C8(&this->skelAnime1, this->animationLength) != 0) {
        BossFd2_SetupBurrow(this, globalCtx);
    }
}

void BossFd2_SetupVulnerable(BossFd2* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime1, &D_0600A31C);
    this->animationLength = SkelAnime_GetFrameCount(&D_0600A31C.genericHeader);
    this->actionFunc = BossFd2_Vulnerable;
    this->actionState = 0;
}

Vec3f D_808D61C4 = { 0.0f, 0.0f, 0.0f };

void BossFd2_Vulnerable(BossFd2* this, GlobalContext* globalCtx) {
    BossFd* bossFd = BOSSFD;
    s16 i1;
    Vec3f sp84;
    Vec3f sp78;
    Vec3f sp6C;

    this->disableAT = 1;
    this->actor.flags |= 0x400;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime1);
    switch (this->actionState) {
        case 0:
            if (func_800A56C8(&this->skelAnime1, 13.0f) != 0) {
                Audio_PlayActorSound2(&this->actor, 0x38D3);
            }
            if (func_800A56C8(&this->skelAnime1, this->animationLength - 3.0f) != 0) {
                for (i1 = 0; i1 < 25; i1++) {
                    sp78 = D_808D61C4;
                    sp84.x = Math_Rand_CenteredFloat(8.0f);
                    sp84.y = Math_Rand_ZeroFloat(1.0f);
                    sp84.z = Math_Rand_CenteredFloat(8.0f);
                    sp78.y = 0.5f;
                    sp6C.x = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot2.pos.x;
                    sp6C.y = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot2.pos.y;
                    sp6C.z = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot2.pos.z;
                    BossFd2_SpawnDust(bossFd->particles, &sp6C, &sp84, &sp78, Math_Rand_ZeroFloat(100.0f) + 300.0f);
                }
                Audio_PlayActorSound2(&this->actor, 0x3927);
            }
            if (func_800A56C8(&this->skelAnime1, this->animationLength) != 0) {
                SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime1, &D_0600A86C, -5.0f);
                this->actionState = 1;
                this->timers[0] = 60;
            }
            break;
        case 1:
            if ((this->varianceTimer & 0xF) == 0xF) {
                Audio_PlayActorSound2(&this->actor, 0x38D4);
            }
            if (this->timers[0] == 0) {
                BossFd2_SetupBurrow(this, globalCtx);
            }
            break;
        default:
            break;
    }
}

void BossFd2_SetupDamaged(BossFd2* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime1, &D_06007850);
    this->animationLength = SkelAnime_GetFrameCount(&D_06007850.genericHeader);
    this->actionFunc = BossFd2_Damaged;
    this->actionState = 0;
}

void BossFd2_Damaged(BossFd2* this, GlobalContext* globalCtx) {
    BossFd* bossFd = BOSSFD;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime1);
    this->disableAT = 1;
    if (this->actionState == 0) {
        if (func_800A56C8(&this->skelAnime1, this->animationLength) != 0) {
            SkelAnime_ChangeAnimDefaultStop(&this->skelAnime1, &D_060089DC);
            this->animationLength = SkelAnime_GetFrameCount(&D_060089DC.genericHeader);
            this->actionState = 1;
        }
    } else if (this->actionState == 1) {
        if (func_800A56C8(&this->skelAnime1, 6.0f) != 0) {
            Audio_PlayActorSound2(&this->actor, 0x38D6);
        }
        if (func_800A56C8(&this->skelAnime1, 20.0f) != 0) {
            bossFd->animationTimers[4] = 30;
        }
        if (func_800A56C8(&this->skelAnime1, this->animationLength) != 0) {
            this->actionState = 2;
            this->timers[0] = 25;
        }
    } else {
        Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, -100.0f, 1.0f, 10.0f);
        if (this->timers[0] == 0) {
            this->actionFunc = BossFd2_Wait;
            bossFd->handoffSignal = 1;
        }
    }
}

void BossFd2_SetupDeath(BossFd2* this, GlobalContext* globalCtx) {
    this->animationLength = SkelAnime_GetFrameCount(&D_060089DC.genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime1, &D_060089DC, 1.0f, 0.0f, this->animationLength, 3, -3.0f);
    this->actionFunc = BossFd2_Death;
    this->actor.flags = this->actor.flags & ~1;
    this->cutsceneState = 0;
}

void BossFd2_UpdateCutsceneCamera(BossFd2* this, GlobalContext* globalCtx) {
    if (this->cutsceneCamera != 0) {
        Math_SmoothScaleMaxF(&this->unk_1394.x, this->unk_13DC.x, this->unk_13E8.x, this->unk_13C4.x * this->unk_140C);
        Math_SmoothScaleMaxF(&this->unk_1394.y, this->unk_13DC.y, this->unk_13E8.y, this->unk_13C4.y * this->unk_140C);
        Math_SmoothScaleMaxF(&this->unk_1394.z, this->unk_13DC.z, this->unk_13E8.z, this->unk_13C4.z * this->unk_140C);
        Math_SmoothScaleMaxF(&this->unk_13A0.x, this->unk_13F4.x, this->unk_1400.x, this->unk_13D0.x * this->unk_140C);
        Math_SmoothScaleMaxF(&this->unk_13A0.y, this->unk_13F4.y, this->unk_1400.y, this->unk_13D0.y * this->unk_140C);
        Math_SmoothScaleMaxF(&this->unk_13A0.z, this->unk_13F4.z, this->unk_1400.z, this->unk_13D0.z * this->unk_140C);
        Math_SmoothScaleMaxF(&this->unk_140C, 1.0f, 1.0f, this->unk_1410);
        this->unk_13A0.y += this->unk_1414;
        func_800C04D8(globalCtx, this->cutsceneCamera, &this->unk_13A0, &this->unk_1394);
        Math_SmoothScaleMaxF(&this->unk_1414, 0.0f, 1.0f, 0.1f);
    }
}

void BossFd2_Death(BossFd2* this, GlobalContext* globalCtx) {
    f32 sp7C;
    Vec3f sp70;
    Vec3f sp64;
    BossFd* bossFd = BOSSFD;
    Camera* camera = Gameplay_GetCamera(globalCtx, 0);
    Vec3f* temp_eye;
    Vec3f* temp_at;
    SkelAnime* skelAnime = &this->skelAnime1;
    f32 temp_f0;
    s32 pad1;

    SkelAnime_FrameUpdateMatrix(skelAnime);
    switch (this->cutsceneState) {
        case 0:
            this->cutsceneState = 1;
            func_80064520(globalCtx, &globalCtx->csCtx);
            func_8002DF54(globalCtx, &this->actor, 1);
            this->cutsceneCamera = Gameplay_CreateSubCamera(globalCtx);
            Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
            Gameplay_ChangeCameraStatus(globalCtx, this->cutsceneCamera, 7);
            this->unk_1394 = camera->eye;
            this->unk_13A0 = camera->at;
            this->unk_13C4.x = 100.0f;
            this->unk_13C4.y = 100.0f;
            this->unk_13C4.z = 100.0f;
            this->unk_13D0.x = 100.0f;
            this->unk_13D0.y = 100.0f;
            this->unk_13D0.z = 100.0f;
            this->unk_1410 = 0.02f;
            this->timers[0] = 0;
            this->holeCounter = 0;
            this->unk_13E8.x = 0.1f;
            this->unk_13E8.y = 0.1f;
            this->unk_13E8.z = 0.1f;
            this->unk_1400.x = 0.1f;
            this->unk_1400.y = 0.1f;
            this->unk_1400.z = 0.1f;
        case 1:
            this->holeCounter++;
            if (this->holeCounter < 15) {
                sp7C = 1.0f;
            } else if (this->holeCounter < 20) {
                sp7C = 0.5f;
            } else {
                sp7C = 0.25f;
            }
            if ((this->holeCounter == 1) || (this->holeCounter == 40)) {
                this->screamTimer = 20;
                if (this->holeCounter == 40) {
                    func_800F8D04(0x38D9);
                }

                Audio_PlayActorSound2(&this->actor, 0x38D6);
            }
            Math_SmoothScaleMaxF(&this->skelAnime1.animPlaybackSpeed, sp7C, 1.0f, 1.0f);
            Matrix_RotateY(((this->actor.yawTowardsLink / 32768.0f) * 3.1415927f) + 0.2f, 0);
            sp70.x = 0.0f;
            sp70.y = 0.0f;
            sp70.z = 250.0f;
            Matrix_MultVec3f(&sp70, &sp64);
            this->unk_13DC.x = this->actor.posRot.pos.x + sp64.x;
            this->unk_13DC.y = 140.0f;
            this->unk_13DC.z = this->actor.posRot.pos.z + sp64.z;
            if (90.0f <= this->actor.posRot2.pos.y) {
                this->unk_13F4.y = this->actor.posRot2.pos.y;
                this->unk_13F4.x = this->actor.posRot2.pos.x;
                this->unk_13F4.z = this->actor.posRot2.pos.z;
            }
            if (this->timers[0] == 0) {
                if (func_800A56C8(skelAnime, 20.0f) != 0) {
                    bossFd->animationTimers[4] = 60;
                }
                if (this->holeCounter >= 100) {
                    this->cutsceneState = 2;
                    this->timers[0] = 50;
                }
            } else if (func_800A56C8(skelAnime, 15.0f) != 0) {
                SkelAnime_ChangeAnimTransitionStop(skelAnime, &D_060089DC, -10.0f);
            }
            break;
        case 2:
            if (this->timers[0] == 0) {
                this->actor.draw = NULL;
                this->cutsceneState = 3;
                bossFd->handoffSignal = 2;
                this->actionState = 0;
                this->unk_140C = 0.0f;
            } else {
                Math_SmoothScaleMaxF(&this->actor.posRot.pos.y, -100.0f, 1.0f, 5.0f);
            }
            break;
        case 3:
            if (bossFd->actor.posRot.pos.y < 80.0f) {
                if (bossFd->actor.posRot.rot.x >= 0x3001) {
                    this->unk_13F4 = bossFd->actor.posRot.pos;
                    this->unk_13F4.y = 80.0f;
                    this->unk_13DC.x = bossFd->actor.posRot.pos.x;
                    this->unk_13DC.y = 150.0f;
                    this->unk_13DC.z = bossFd->actor.posRot.pos.z + 300.0f;
                }
            } else {
                this->unk_13F4 = bossFd->actor.posRot.pos;
                this->unk_13DC.x = this->actor.posRot.pos.x;
                Math_SmoothScaleMaxF(&this->unk_13DC.y, 200.0f, 1.0f, 2.0f);
                Math_SmoothScaleMaxF(&this->unk_13DC.z, bossFd->actor.posRot.pos.z + 200.0f, 1.0f, 3.0f);
                if (this->actionState == 0) {
                    this->actionState++;
                    this->unk_140C = 0.0f;
                    this->unk_1410 = 0.02f;
                    func_8002DF54(globalCtx, &bossFd->actor, 1);
                }
            }
            if ((bossFd->actionState == 202) && (bossFd->animationTimers[0] == 5)) {
                this->cutsceneState = 4;
                this->unk_140C = 0.0f;
                this->unk_1410 = 0.02f;
                this->unk_13DC.y = 150.0f;
                this->unk_13DC.z = bossFd->actor.posRot.pos.z + 300.0f;
            }
            break;
        case 4:
            Math_SmoothScaleMaxF(&this->unk_13F4.y, 100.0, 1.0f, 100.0f);
            this->unk_13F4.x = 0.0f;
            this->unk_13F4.z = 0.0f;
            this->unk_13DC.x = 0.0f;
            this->unk_13DC.y = 140.0f;
            Math_SmoothScaleMaxF(&this->unk_13DC.z, 220.0f, 0.5f, 1.15f);
            if (bossFd->deathCameraShakeTimer != 0) {
                bossFd->deathCameraShakeTimer--;
                temp_f0 = bossFd->deathCameraShakeTimer / 0.5f;
                if (20.0f <= temp_f0) {
                    temp_f0 = 20.0f;
                }
                this->unk_1414 = (bossFd->deathCameraShakeTimer & 1) ? temp_f0 : -temp_f0;
            }
            if (bossFd->actionState == 205) {
                this->cutsceneState = 5;
                camera->eye = this->unk_1394;
                camera->eyeNext = this->unk_1394;
                camera->at = this->unk_13A0;
                func_800C08AC(globalCtx, this->cutsceneCamera, 0);
                this->cutsceneCamera = 0;
                func_80064534(globalCtx, &globalCtx->csCtx);
                func_8002DF54(globalCtx, &this->actor, 7);
                Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_DOOR_WARP1, 0.0f, 100.0f, 0.0f,
                                    0, 0, 0, -1);
                Flags_SetClear(globalCtx, globalCtx->roomCtx.curRoom.num);
            }
            break;
        case 5:
            break;
    }
    BossFd2_UpdateCutsceneCamera(this, globalCtx);
}

void BossFd2_Wait(BossFd2* this, GlobalContext* globalCtx) {
    BossFd* bossFd = BOSSFD;
    if (bossFd->handoffSignal == 100) {
        bossFd->handoffSignal = 0;
        BossFd2_SetupEmerge(this, globalCtx);
        this->timers[0] = 20;
        this->holeCounter = 0;
    }
}

Vec3f D_808D61D0 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808D61DC = { 0.0f, -1.0f, 0.0f };
Vec3f D_808D61E8 = { 0.0f, 0.0f, 0.0f };
Vec3f D_808D61F4 = { 0.0f, -1.0f, 0.0f };

void BossFd2_CollisionCheck(BossFd2* this, GlobalContext* globalCtx) {

    s16 i1;
    u8 phi_s2;
    u8 phi_s1;
    Player* player;
    BossFd* bossFd = BOSSFD;
    ColliderBody* hurtbox;
    Vec3f sp8C;
    Vec3f sp80;
    Vec3f sp74;
    u32 temp_v0_4;
    Vec3f sp64;
    Vec3f sp58;
    Vec3f sp4C;

    if (this->actionFunc == BossFd2_ClawSwipe) {
        player = PLAYER;
        for (i1 = 0; i1 < 9; i1++) {
            if ((this->collider1.list[i1].body.toucherFlags & 2) != 0) {
                this->collider1.list[i1].body.toucherFlags &= ~2;
                Audio_PlayActorSound2(&player->actor, 0x83E);
            }
        }
    }
    if (bossFd->faceExposed == 0) {
        this->collider1.list[0].body.flags = 2;
        this->collider1.base.type = 9;
    } else {
        this->collider1.list[0].body.flags = 3;
        this->collider1.base.type = 3;
    }

    if ((this->collider1.list[0].body.bumperFlags & 2) != 0) {
        this->collider1.list[0].body.bumperFlags &= ~2;
        hurtbox = this->collider1.list[0].body.acHitItem;
        if (bossFd->faceExposed == 0) {
            if ((hurtbox->toucher.flags & 0x40000040) != 0) {
                bossFd->actor.colChkInfo.health -= 2;
                if ((s8)bossFd->actor.colChkInfo.health < 3) {
                    bossFd->actor.colChkInfo.health = 1;
                }
                bossFd->faceExposed = 1;
                BossFd2_SetupVulnerable(this, globalCtx);
                this->invulnerabilityTimer = 0x1E;
                this->damageFlashTimer = 5;
                Audio_PlayActorSound2(&this->actor, 0x38D2);
                for (i1 = 0; i1 < 30; i1++) {
                    sp8C = D_808D61D0;
                    sp80 = D_808D61DC;
                    sp8C.x = Math_Rand_CenteredFloat(10.0f);
                    sp8C.y = Math_Rand_ZeroFloat(5.0f) + 8.0f;
                    sp8C.z = Math_Rand_CenteredFloat(10.0f);
                    sp74.x = this->actor.posRot2.pos.x;
                    sp74.y = this->actor.posRot2.pos.y;
                    sp74.z = this->actor.posRot2.pos.z;
                    BossFd2_SpawnDebris(globalCtx, bossFd->particles, &sp74, &sp8C, &sp80,
                                        (s16)Math_Rand_ZeroFloat(10.0) + 10);
                }
            }
        } else {
            phi_s2 = 0;
            temp_v0_4 = func_800635D0(hurtbox->toucher.flags);
            phi_s1 = temp_v0_4;
            if (temp_v0_4 == 0) {
                phi_s1 = ((hurtbox->toucher.flags & 0x1000) != 0) ? 4 : 2;
            } else {
                phi_s2 = 1;
            }
            if ((hurtbox->toucher.flags & 0x80) != 0) {
                phi_s1 = 0;
            }
            temp_v0_4 = phi_s1;
            if (((s8)bossFd->actor.colChkInfo.health >= 3) || (phi_s2 != 0)) {
                bossFd->actor.colChkInfo.health -= phi_s1;
                osSyncPrintf("\x1b[32m");
                osSyncPrintf("damage   %d\n", phi_s1);
            }
            osSyncPrintf("\x1b[m");
            osSyncPrintf("hp %d\n", bossFd->actor.colChkInfo.health);

            if ((s8)bossFd->actor.colChkInfo.health <= 0) {
                bossFd->actor.colChkInfo.health = 0;
                BossFd2_SetupDeath(this, globalCtx);
                this->damageFlashTimer = 10;
                this->invulnerabilityTimer = 30000;
                Audio_SetBGM(0x100100FF);
                Audio_PlayActorSound2(&this->actor, 0x38D9);
                func_80032C7C(globalCtx, &this->actor);
            } else if (temp_v0_4 != 0) {
                BossFd2_SetupDamaged(this, globalCtx);
                this->damageFlashTimer = 10;
                this->invulnerabilityTimer = 100;
                Audio_PlayActorSound2(&this->actor, 0x38D5);
            }
            if (temp_v0_4 != 0) {
                for (i1 = 0; i1 < 0x1E; i1++) {
                    sp64 = D_808D61E8;
                    sp58 = D_808D61F4;
                    sp64.x = Math_Rand_CenteredFloat(6.0f);
                    sp64.y = Math_Rand_ZeroFloat(4.0f) + 6.0f;
                    sp64.z = Math_Rand_CenteredFloat(6.0f);
                    sp4C.x = this->actor.posRot2.pos.x;
                    sp4C.y = this->actor.posRot2.pos.y;
                    sp4C.z = this->actor.posRot2.pos.z;
                    BossFd2_SpawnSkullPiece(globalCtx, bossFd->particles, &sp4C, &sp64, &sp58,
                                            (s16)Math_Rand_ZeroFloat(6.0f) + 0xA);
                }
            }
        }
    }
}

void BossFd2_UpdateFace(BossFd2* this, GlobalContext* globalCtx) {
    f32 phi_f0;
    f32 phi_f2;
    s16 sp24[5] = { 0, 1, 2, 2, 1 };

    if (((this->varianceTimer & 7) == 0) && (Math_Rand_ZeroOne() < 0.3f)) {
        this->blinkTimer = 4;
    }
    if ((this->actionFunc == BossFd2_Vulnerable) || (this->actionFunc == BossFd2_Damaged)) {
        if ((this->varianceTimer & 0x10) != 0) {
            this->eyeState = 1;
        } else {
            this->eyeState = 2;
        }
    } else {
        this->eyeState = sp24[this->blinkTimer];
    }
    if (this->blinkTimer != 0) {
        this->blinkTimer--;
    }
    if (this->screamTimer != 0) {
        phi_f0 = 6000.0f;
        phi_f2 = 1300.0f;
    } else {
        phi_f0 = ((this->varianceTimer & 0x10) != 0) ? 1000.0f : 0.0f;
        phi_f2 = 700.0f;
    }
    Math_SmoothScaleMaxF(&this->jawOpening, phi_f0, 0.3f, phi_f2);
    if (this->screamTimer != 0) {
        this->screamTimer--;
    }
}

void BossFd2_Update(Actor* thisx, GlobalContext* globalCtx) {
    BossFd2* this = THIS;
    s16 i1;
    s32 pad;

    osSyncPrintf("FD2 move start \n");
    this->disableAT = 0;
    this->actor.flags &= ~0x400;
    this->varianceTimer++;
    this->unkTimer++;

    this->actionFunc(this, globalCtx);

    for (i1 = 0; i1 < 5; i1++) {
        if (this->timers[i1] != 0) {
            this->timers[i1]--;
        }
    }
    if (this->damageFlashTimer != 0) {
        this->damageFlashTimer--;
    }
    if (this->invulnerabilityTimer != 0) {
        this->invulnerabilityTimer--;
    }

    if (this->cutsceneState == 0) {
        if (this->invulnerabilityTimer == 0) {
            BossFd2_CollisionCheck(this, globalCtx);
        }
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        if (this->disableAT == 0) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
        }
    }

    BossFd2_UpdateFace(this, globalCtx);
    this->bodyTex1Scroll += 4.0f;
    this->bodyTex1Rot = 120.0f;
    this->bodyTex2Scroll += 3.0f;
    this->bodyTex2Rot -= 2.0f;
    if (this->actor.posRot2.pos.y < 90.0f) {
        this->actor.flags &= ~1;
    } else {
        this->actor.flags |= 1;
    }
}

s32 BossFd2_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                             Actor* thisx) {
    BossFd2* this = THIS;
    BossFd* bossFd = BOSSFD;

    if (limbIndex == 31) {
        rot->y -= (f32)this->fireBreathAngle.y;
        rot->z += (f32)this->fireBreathAngle.x;
    }
    if (limbIndex != 32) {
        if ((limbIndex == 35) || (limbIndex == 36)) {
            rot->z -= this->jawOpening * 0.1f;
        }
    } else {
        rot->z += this->jawOpening;
    }
    if ((bossFd->faceExposed == 1) && (limbIndex == 35)) {
        *dList = D_06004E38;
    }

    if ((limbIndex == 32) || (limbIndex == 35) || (limbIndex == 36)) {
        GraphicsContext* gfxCtx1 = globalCtx->state.gfxCtx;
        Gfx* dispRefs1[4];
        Graph_OpenDisps(dispRefs1, globalCtx->state.gfxCtx, "../z_boss_fd2.c", 0x875);
        gDPPipeSync(gfxCtx1->polyOpa.p++);
        gDPSetEnvColor(gfxCtx1->polyOpa.p++, 0xFF, 0xFF, 0xFF, (s8)bossFd->headTex2Opacity);
        Graph_CloseDisps(dispRefs1, globalCtx->state.gfxCtx, "../z_boss_fd2.c", 0x87C);
    } else {
        GraphicsContext* gfxCtx2 = globalCtx->state.gfxCtx;
        Gfx* dispRefs2[4];
        Graph_OpenDisps(dispRefs2, globalCtx->state.gfxCtx, "../z_boss_fd2.c", 0x87E);
        gDPPipeSync(gfxCtx2->polyOpa.p++);
        gDPSetEnvColor(gfxCtx2->polyOpa.p++, 0xFF, 0xFF, 0xFF, (s8)bossFd->bodyTex2Opacity);
        Graph_CloseDisps(dispRefs2, globalCtx->state.gfxCtx, "../z_boss_fd2.c", 0x885);
    }
    if ((limbIndex > 0) && (limbIndex < 16)) {
        *dList = NULL;
    }
    return 0;
}

Vec3f D_808D620C = { 4500.0f, 0.0f, 0.0f };
Vec3f D_808D6218 = { 4000.0f, 0.0f, 0.0f };
Vec3f D_808D6224 = { 4000.0f, -2900.0, 2000.0f };
Vec3f D_808D6230 = { 4000.0f, -1600.0, 0.0f };
Vec3f D_808D623C = { 4000.0f, -1600.0, -2000.0f };

void BossFd2_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    BossFd2* this = THIS;
    if (limbIndex == 35) {
        Matrix_MultVec3f(&D_808D620C, &this->actor.posRot2.pos);
        Matrix_MultVec3f(&D_808D6218, &this->fireBreathSpawnPoint);
        Matrix_MultVec3f(&D_808D6224, &this->centerMane.head);
        Matrix_MultVec3f(&D_808D6230, &this->rightMane.head);
        Matrix_MultVec3f(&D_808D623C, &this->leftMane.head);
    }
    func_800628A4(limbIndex, &this->collider1);
}

void BossFd2_UpdateMane(BossFd2* this, GlobalContext* globalCtx, Vec3f* head, Vec3f* pos, Vec3f* rot, Vec3f* pull,
                        f32* scale) {
    f32 sp138[] = { 0.0f, 100.0f, 50.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f };
    f32 sp110[] = { 0.0f, 5.0f, -10.0f, 500.0f, 500.0f, 500.0f, 500.0f, 500.0f, 500.0f, 500.0f };
    f32 spE8[] = { 0.4f, 0.6f, 0.8f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f };
    f32 temp_f12;
    f32 temp_f23;
    f32 temp_f5;
    f32 temp_f20;
    f32 temp_f24;
    f32 temp_f2;
    f32 phi_f0;
    f32 temp_f22;
    Vec3f spBC;
    Vec3f spB0;
    s16 i;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_fd2.c", 0x955);
    Matrix_Push();
    gDPPipeSync(gfxCtx->polyOpa.p++);

    for (i = 0; i < 10; i++) {
        if (i == 0) {
            (pos + i)->x = head->x;
            (pos + i)->y = head->y;
            (pos + i)->z = head->z;
        } else {
            Math_SmoothScaleMaxF(&(pull + i)->x, 0.0f, 1.0f, 1.0f);
            Math_SmoothScaleMaxF(&(pull + i)->y, 0.0f, 1.0f, 1.0f);
            Math_SmoothScaleMaxF(&(pull + i)->z, 0.0f, 1.0f, 1.0f);
        }
    }

    for (i = 1; i < 10; i++) {
        temp_f22 = ((pos + i)->x + (pull + i)->x) - (pos + i - 1)->x;
        phi_f0 = sp138[i] + (((pos + i)->y + (pull + i)->y) - 2.0f);

        temp_f2 = (pos + i - 1)->y + sp110[i];
        if (temp_f2 < phi_f0) {
            phi_f0 = temp_f2;
        }
        if ((-910.0f <= head->y) && (phi_f0 < 110.0f)) {
            phi_f0 = 110.0f;
        }
        temp_f24 = phi_f0 - (pos + i - 1)->y;
        temp_f20 = ((pos + i)->z + (pull + i)->z) - (pos + i - 1)->z;
        temp_f5 = atan2f(temp_f20, temp_f22);
        temp_f23 = -atan2f(sqrtf((temp_f22 * temp_f22) + (temp_f20 * temp_f20)), temp_f24);
        (rot + i - 1)->y = temp_f5;
        (rot + i - 1)->x = temp_f23;
        spBC.x = 0.0f;
        spBC.y = 0.0f;
        spBC.z = spE8[i] * 25.0f;
        Matrix_RotateY(temp_f5, 0);
        Matrix_RotateX(temp_f23, 1);
        Matrix_MultVec3f(&spBC, &spB0);
        temp_f22 = (pos + i)->x;
        temp_f24 = (pos + i)->y;
        temp_f20 = (pos + i)->z;
        (pos + i)->x = (pos + i - 1)->x + spB0.x;
        (pos + i)->y = (pos + i - 1)->y + spB0.y;
        (pos + i)->z = (pos + i - 1)->z + spB0.z;
        (pull + i)->x = (((pos + i)->x - temp_f22) * 88.0f) / 100.0f;
        (pull + i)->y = (((pos + i)->y - temp_f24) * 88.0f) / 100.0f;
        (pull + i)->z = (((pos + i)->z - temp_f20) * 88.0f) / 100.0f;
        if (30.0f < (pull + i)->x) {
            (pull + i)->x = 30.0f;
        }
        if ((pull + i)->x < -30.0f) {
            (pull + i)->x = -30.0f;
        }
        if (30.0f < (pull + i)->y) {
            (pull + i)->y = 30.0f;
        }
        if ((pull + i)->y < -30.0f) {
            (pull + i)->y = -30.0f;
        }
        if (30.0f < (pull + i)->z) {
            (pull + i)->z = 30.0f;
        }
        if ((pull + i)->z < -30.0f) {
            (pull + i)->z = -30.0f;
        }
    }

    for (i = 0; i < 9; i++) {
        Matrix_Translate((pos + i)->x, (pos + i)->y, (pos + i)->z, 0);
        Matrix_RotateY((rot + i)->y, 1);
        Matrix_RotateX((rot + i)->x, 1);
        temp_f12 = (0.01f - (i * 0.0009f)) * spE8[i] * scale[i];
        Matrix_Scale(temp_f12, temp_f12, 0.01f * spE8[i], 1);
        Matrix_RotateX(1.5707964f, 1);
        gSPMatrix(gfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_boss_fd2.c", 0x9C2),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(gfxCtx->polyXlu.p++, D_06004BC8);
    }
    Matrix_Pull();
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_fd2.c", 0x9C7);
}

void BossFd2_DrawMane(BossFd2* this, GlobalContext* globalCtx) {
    f32 temp_f20;
    BossFd* bossFd = BOSSFD;
    s16 i1;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_fd2.c", 0x9D3);
    if (1) {}
    for (i1 = 0; i1 < 10; i1++) {
        temp_f20 = i1 * 0x3200;
        this->centerMane.scale[i1] = 1.5f + 0.3f * Math_Sins(5596.0f * this->varianceTimer + temp_f20);
        this->rightMane.scale[i1] = 1.5f + 0.3f * Math_Sins(5496.0f * this->varianceTimer + temp_f20);
        this->leftMane.scale[i1] = 1.5f + 0.3f * Math_Coss(5696.0f * this->varianceTimer + temp_f20);
    }

    func_80093D84(globalCtx->state.gfxCtx);

    gSPDisplayList(gfxCtx->polyXlu.p++, D_06004B48);

    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xFF, (u32)bossFd->centerManeColor, 0x00, 0xFF);
    BossFd2_UpdateMane(this, globalCtx, &this->centerMane.head, this->centerMane.pos, this->centerMane.rot,
                       this->centerMane.pull, this->centerMane.scale);

    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xFF, (u32)bossFd->rightManeColor, 0x00, 0xFF);
    BossFd2_UpdateMane(this, globalCtx, &this->rightMane.head, this->rightMane.pos, this->rightMane.rot,
                       this->rightMane.pull, this->rightMane.scale);

    gDPSetPrimColor(gfxCtx->polyXlu.p++, 0, 0, 0xFF, (u32)bossFd->leftManeColor, 0x00, 0xFF);
    BossFd2_UpdateMane(this, globalCtx, &this->leftMane.head, this->leftMane.pos, this->leftMane.rot,
                       this->leftMane.pull, this->leftMane.scale);

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_fd2.c", 0xA29);
}

Gfx* D_808D62C0[] = { D_06002B08, D_06002708, D_06002F08 };

void BossFd2_Draw(Actor* thisx, GlobalContext* globalCtx) {
    f32 pad;
    BossFd2* this = THIS;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_fd2.c", 0xA39);
    osSyncPrintf("FD2 draw start \n");
    if (this->actionFunc != BossFd2_Wait) {
        func_80093D18(globalCtx->state.gfxCtx);
        if ((this->damageFlashTimer & 2) != 0) {
            gfxCtx->polyOpa.p = Gfx_SetFog(gfxCtx->polyOpa.p, 0xFF, 0xFF, 0xFF, 0, 0x384, 0x44B);
        }
        gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(D_808D62C0[this->eyeState]));

        gSPSegment(gfxCtx->polyOpa.p++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, (s16)this->bodyTex1Scroll, (s16)this->bodyTex1Rot, 0x20,
                                    0x20, 1, (s16)this->bodyTex2Scroll, (s16)this->bodyTex2Rot, 0x20, 0x20));
        gDPSetPrimColor(gfxCtx->polyOpa.p++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
        gDPSetEnvColor(gfxCtx->polyOpa.p++, 0xFF, 0xFF, 0xFF, 0x80);

        SkelAnime_DrawSV(globalCtx, this->skelAnime1.skeleton, this->skelAnime1.limbDrawTbl,
                         this->skelAnime1.dListCount, BossFd2_OverrideLimbDraw, BossFd2_PostLimbDraw, &this->actor);
        BossFd2_DrawMane(this, globalCtx);
        gfxCtx->polyOpa.p = func_800BC8A0(globalCtx, gfxCtx->polyOpa.p);
    }
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_boss_fd2.c", 0xA80);
}
