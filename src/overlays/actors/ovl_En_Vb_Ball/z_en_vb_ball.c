/*
 * File: z_en_vb_ball.c
 * Overlay: ovl_En_Vb_Ball
 * Description: Volvagia's rocks and bones
 */

#include "z_en_vb_ball.h"
#include "../ovl_Boss_Fd/z_boss_fd.h"

#define FLAGS 0x00000030

#define THIS ((EnVbBall*)thisx)

#define BOSSFD ((BossFd*)this->actor.parent)

void EnVbBall_Init(Actor* thisx, GlobalContext* globalCtx);
void EnVbBall_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnVbBall_Update(Actor* thisx, GlobalContext* globalCtx);
void EnVbBall_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnVbBall_SpawnDebris(GlobalContext* globalCtx, BossFdParticle* particle, Vec3f* position, Vec3f* velocity,
                          Vec3f* acceleration, f32 scale);
void EnVbBall_SpawnDust(GlobalContext* globalCtx, BossFdParticle* particle, Vec3f* position, Vec3f* velocity,
                        Vec3f* acceleration, f32 scale);
void EnVbBall_UpdateBones(EnVbBall* this, GlobalContext* globalCtx);

extern Gfx D_06009F20[];
extern Gfx D_0600B2F8[];

const ActorInit En_Vb_Ball_InitVars = {
    0,
    ACTORTYPE_BOSS,
    FLAGS,
    OBJECT_FD,
    sizeof(EnVbBall),
    (ActorFunc)EnVbBall_Init,
    (ActorFunc)EnVbBall_Destroy,
    (ActorFunc)EnVbBall_Update,
    (ActorFunc)EnVbBall_Draw,
};

ColliderCylinderInit D_80B2A000 = { { 0x0A, 0x11, 0x09, 0x39, 0x10, 0x01 },
                                    { 0x06, { 0x00100700, 0x00, 0x20 }, { 0x00100700, 0x00, 0x00 }, 0x01, 0x01, 0x01 },
                                    { 0x0014, 0x0001E, 0x000A, 0x0000, 0x0000, 0x0000 } };

Vec3f D_80B2A02C = { 0.0f, 0.0f, 0.0f };
Vec3f D_80B2A038 = { 0.0f, 0.0f, 0.0f };
Vec3f D_80B2A044 = { 0.0f, 0.0f, 0.0f };
Vec3f D_80B2A050 = { 0.0f, -1.0f, 0.0f };
Vec3f D_80B2A05C = { 0.0f, 0.0f, 0.0f };
Vec3f D_80B2A068 = { 0.0f, 0.0f, 0.0f };
Vec3f D_80B2A074 = { 0.0f, 0.0f, 0.0f };
Vec3f D_80B2A080 = { 0.0f, -1.0f, 0.0f };

void EnVbBall_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnVbBall* this = THIS;
    ColliderCylinder* collider = &this->collider1;
    f32 pad;
    f32 angle;

    if (this->actor.params >= 0xC8) { // Volvagia's bones
        this->yRotVel = Math_Rand_CenteredFloat(768.0f);
        this->xRotVel = Math_Rand_CenteredFloat(768.0f);
        angle = Math_atan2f(this->actor.posRot.pos.x, this->actor.posRot.pos.z);
        this->actor.velocity.y = Math_Rand_ZeroFloat(3.0f);
        this->actor.velocity.x = 2.0f * sinf(angle);
        this->actor.velocity.z = 2.0f * cosf(angle);
        this->actor.gravity = -0.8f;
    } else { // Volvagia's rocks
        Collider_InitCylinder(globalCtx, collider);
        Collider_SetCylinder(globalCtx, collider, &this->actor, &D_80B2A000);
        Actor_SetScale(&this->actor, this->actor.posRot.rot.z / 10000.0f);
        this->collider1.dim.radius = this->actor.scale.y * 3000.0f;
        this->collider1.dim.height = this->actor.scale.y * 5000.0f;
        this->collider1.dim.yShift = this->actor.scale.y * -2500.0f;
        this->xRotVel = Math_Rand_CenteredFloat(8192.0f);
        this->yRotVel = Math_Rand_CenteredFloat(8192.0f);
        this->shadowSize = this->actor.scale.y * 68.0f;
    }
}

void EnVbBall_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnVbBall* this = THIS;
    if (this->actor.params < 0xC8) {
        Collider_DestroyCylinder(globalCtx, &this->collider1);
    }
}

void EnVbBall_SpawnDebris(GlobalContext* globalCtx, BossFdParticle* particle, Vec3f* position, Vec3f* velocity,
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

void EnVbBall_SpawnDust(GlobalContext* globalCtx, BossFdParticle* particle, Vec3f* position, Vec3f* velocity,
                        Vec3f* acceleration, f32 scale) {
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

void EnVbBall_UpdateBones(EnVbBall* this, GlobalContext* globalCtx) {
    BossFd* bossFd = BOSSFD;
    f32 pad[2];
    f32 angle;
    s16 i1;
    Vec3f dustVel;
    Vec3f dustAcc;
    Vec3f dustPos;

    func_8002E4B4(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 4);
    if ((this->actor.bgCheckFlags & 1) != 0) {
        if (this->actor.velocity.y <= 0.0f) {
            this->xRotVel = Math_Rand_CenteredFloat(16384.0f);
            this->yRotVel = Math_Rand_CenteredFloat(16384.0f);
            angle = Math_atan2f(this->actor.posRot.pos.x, this->actor.posRot.pos.z);
            this->actor.velocity.x = sinf(angle) * 10.0f;
            this->actor.velocity.z = cosf(angle) * 10.0f;
            this->actor.velocity.y = this->actor.velocity.y * -0.5f;
            if ((this->actor.params & 1) != 0) {
                Audio_PlaySoundGeneral(0x3927, &this->actor.projectedPos, 4, &D_801333E0, &D_801333E0, &D_801333E8);
            }
            for (i1 = 0; i1 < 10; i1++) {
                dustVel = D_80B2A02C;
                dustAcc = D_80B2A038;
                dustVel.x = Math_Rand_CenteredFloat(8.0f);
                dustVel.y = Math_Rand_ZeroFloat(1.0f);
                dustVel.z = Math_Rand_CenteredFloat(8.0f);
                dustAcc.y = 0.3f;
                dustPos.x = Math_Rand_CenteredFloat(20.0f) + this->actor.posRot.pos.x;
                dustPos.y = this->actor.groundY + 10.0f;
                dustPos.z = Math_Rand_CenteredFloat(20.0f) + this->actor.posRot.pos.z;
                EnVbBall_SpawnDust(globalCtx, bossFd->particles, &dustPos, &dustVel, &dustAcc,
                                   Math_Rand_ZeroFloat(80.0f) + 200.0f);
            }
        }
    }
    if (this->actor.posRot.pos.y < 50.0f) {
        Actor_Kill(&this->actor);
    }
}

void EnVbBall_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnVbBall* this = THIS;
    EnVbBall* newActor;
    BossFd* bossFd = BOSSFD;
    f32 pad3;
    f32 pad2;
    s16 spawnNum;
    s16 i1;
    Vec3f spawnOffset;
    f32 temp_f0;
    f32 temp_f20;
    Vec3f debrisVel1;
    Vec3f debrisAcc1;
    Vec3f debrisPos1;
    Vec3f dustVel;
    Vec3f dustAcc;
    Vec3f dustPos;
    Vec3f debrisVel2;
    Vec3f debrisAcc2;
    Vec3f debrisPos2;
    Player* player;

    this->unkTimer2++;
    if (this->unkTimer1 != 0) {
        this->unkTimer1--;
    }
    this->actor.shape.rot.x += (s16)this->xRotVel;
    this->actor.shape.rot.y += (s16)this->yRotVel;
    this->actor.velocity.y += -1.0f;
    this->actor.gravity = -1.0f;
    func_8002D7EC(&this->actor);
    if (this->actor.params >= 0xC8) {
        EnVbBall_UpdateBones(this, globalCtx);
    } else {
        Math_SmoothScaleMaxF(&this->shadowOpacity, 175.0f, 1.0f, 40.0f);
        temp_f20 = this->actor.scale.y * 1700.0f;
        this->actor.posRot.pos.y -= temp_f20;
        func_8002E4B4(globalCtx, &this->actor, 50.0f, 50.0f, 100.0f, 4);
        this->actor.posRot.pos.y += temp_f20;
        if (((this->actor.bgCheckFlags & 1) != 0) && (this->actor.velocity.y <= 0.0f)) {
            if ((0x64 == this->actor.params) || (this->actor.params == 0x65)) {
                Actor_Kill(&this->actor);
                if (0x64 == this->actor.params) {
                    func_80033E88(&this->actor, globalCtx, 5, 0xA);
                }
                if (0x64 == this->actor.params) {
                    spawnNum = 2;
                } else {
                    spawnNum = 2;
                }
                for (i1 = 0; i1 < spawnNum; i1++) {
                    if (0x64 == this->actor.params) {
                        spawnOffset.x = Math_Rand_CenteredFloat(13.0f);
                        spawnOffset.y = Math_Rand_ZeroFloat(5.0f) + 6.0f;
                        spawnOffset.z = Math_Rand_CenteredFloat(13);
                    } else {
                        spawnOffset.x = Math_Rand_CenteredFloat(10.0f);
                        spawnOffset.y = Math_Rand_ZeroFloat(3.0f) + 4.0f;
                        spawnOffset.z = Math_Rand_CenteredFloat(10.0f);
                    }
                    newActor = (EnVbBall*)Actor_SpawnAsChild(
                        &globalCtx->actorCtx, &this->actor, globalCtx, 0xAD, this->actor.posRot.pos.x + spawnOffset.x,
                        this->actor.posRot.pos.y + spawnOffset.y, this->actor.posRot.pos.z + spawnOffset.z, 0, 0,
                        this->actor.posRot.rot.z * 0.5f, this->actor.params + 1);
                    if (newActor != 0) {
                        if ((i1 == 0) && (0x64 == this->actor.params)) {
                            Audio_PlaySoundGeneral(0x38D7, &newActor->actor.projectedPos, 4, &D_801333E0, &D_801333E0,
                                                   &D_801333E8);
                        }
                        newActor->actor.parent = &BOSSFD->actor;
                        newActor->actor.velocity = spawnOffset;
                        newActor->yRotVel = 0.0f;
                        temp_f0 = sqrtf((spawnOffset.x * spawnOffset.x) + (spawnOffset.z * spawnOffset.z));
                        newActor->xRotVel = 4096 / 10.0f * temp_f0;
                        newActor->actor.shape.rot.y = Math_atan2f(spawnOffset.x, spawnOffset.z) * 10430.378f;
                        newActor->shadowOpacity = 200.0f;
                    }
                }
                for (i1 = 0; i1 < 15; i1++) {
                    debrisVel1 = D_80B2A044;
                    debrisAcc1 = D_80B2A050;
                    debrisVel1.x = Math_Rand_CenteredFloat(25.0f);
                    debrisVel1.y = Math_Rand_ZeroFloat(5.0f) + 8;
                    debrisVel1.z = Math_Rand_CenteredFloat(25.0f);
                    debrisPos1.x = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot.pos.x;
                    debrisPos1.y = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot.pos.y;
                    debrisPos1.z = Math_Rand_CenteredFloat(10.0f) + this->actor.posRot.pos.z;
                    EnVbBall_SpawnDebris(globalCtx, bossFd->particles, &debrisPos1, &debrisVel1, &debrisAcc1,
                                         (s16)Math_Rand_ZeroFloat(12.0f) + 0xF);
                }
                for (i1 = 0; i1 < 10; i1++) {
                    dustVel = D_80B2A05C;
                    dustAcc = D_80B2A068;
                    dustVel.x = Math_Rand_CenteredFloat(8.0f);
                    dustVel.y = Math_Rand_ZeroFloat(1.0f);
                    dustVel.z = Math_Rand_CenteredFloat(8.0f);
                    dustAcc.y = 1.0f / 2;
                    dustPos.x = Math_Rand_CenteredFloat(30.0f) + this->actor.posRot.pos.x;
                    dustPos.y = Math_Rand_CenteredFloat(30.0f) + this->actor.posRot.pos.y;
                    dustPos.z = Math_Rand_CenteredFloat(30.0f) + this->actor.posRot.pos.z;

                    EnVbBall_SpawnDust(globalCtx, bossFd->particles, &dustPos, &dustVel, &dustAcc,
                                       Math_Rand_ZeroFloat(100.0f) + 350.0f);
                }
            } else {
                for (i1 = 0; i1 < 5; i1++) {

                    debrisVel2 = D_80B2A074;
                    debrisAcc2 = D_80B2A080;
                    debrisVel2.x = Math_Rand_CenteredFloat(10.0f);
                    debrisVel2.y = Math_Rand_ZeroFloat(3.0f) + 3.0f;
                    debrisVel2.z = Math_Rand_CenteredFloat(10.0f);
                    debrisPos2.x = Math_Rand_CenteredFloat(5.0f) + this->actor.posRot.pos.x;
                    debrisPos2.y = Math_Rand_CenteredFloat(5.0f) + this->actor.posRot.pos.y;
                    debrisPos2.z = Math_Rand_CenteredFloat(5.0f) + this->actor.posRot.pos.z;
                    if (globalCtx) {} // Needed for matching.
                    EnVbBall_SpawnDebris(globalCtx, bossFd->particles, &debrisPos2, &debrisVel2, &debrisAcc2,
                                         (s16)Math_Rand_ZeroFloat(12.0f) + 0xF);
                }
                Actor_Kill(&this->actor);
            }
        }
        if ((this->collider1.base.atFlags & 2) != 0) {
            player = PLAYER;
            this->collider1.base.atFlags &= ~2;
            Audio_PlayActorSound2(&player->actor, 0x83E);
        }
        Collider_CylinderUpdate(&this->actor, &this->collider1);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider1.base);
    }
}

void EnVbBall_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnVbBall* this = THIS;
    f32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_vb_ball.c", 0x25C);
    if (1) {}
    func_80093D18(globalCtx->state.gfxCtx);
    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_vb_ball.c", 0x25F),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (this->actor.params >= 0xC8) {
        gSPDisplayList(oGfxCtx->polyOpa.p++, SEGMENTED_TO_VIRTUAL(D_0600B2F8));
    } else {
        gSPDisplayList(oGfxCtx->polyOpa.p++, SEGMENTED_TO_VIRTUAL(D_06009F20));
        func_80094044(globalCtx->state.gfxCtx);

        gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0, 0, 0x00, 0x00, 0x00, (s8)this->shadowOpacity);
        Matrix_Translate(this->actor.posRot.pos.x, 100.0f, this->actor.posRot.pos.z, 0);
        Matrix_Scale(this->shadowSize, 1.0f, this->shadowSize, 1);
        gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_vb_ball.c", 0x272),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(oGfxCtx->polyXlu.p++, SEGMENTED_TO_VIRTUAL(D_04049210));
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_vb_ball.c", 0x278);
}
