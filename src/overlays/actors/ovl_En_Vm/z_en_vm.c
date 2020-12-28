/*
 * File: z_en_vm.c
 * Overlay: ovl_En_Vm
 * Description: Beamos
 */

#include "z_en_vm.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"

#define FLAGS 0x00000011

#define THIS ((EnVm*)thisx)

void EnVm_Init(Actor* thisx, GlobalContext* globalCtx);
void EnVm_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnVm_Update(Actor* thisx, GlobalContext* globalCtx);
void EnVm_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnVm_SetupWait(EnVm* this);
void EnVm_Wait(EnVm* this, GlobalContext* globalCtx);
void EnVm_SetupAttack(EnVm* this);
void EnVm_Attack(EnVm* this, GlobalContext* globalCtx);
void EnVm_Stun(EnVm* this, GlobalContext* globalCtx);
void EnVm_Die(EnVm* this, GlobalContext* globalCtx);

const ActorInit En_Vm_InitVars = {
    ACTOR_EN_VM,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_VM,
    sizeof(EnVm),
    (ActorFunc)EnVm_Init,
    (ActorFunc)EnVm_Destroy,
    (ActorFunc)EnVm_Update,
    (ActorFunc)EnVm_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x0D, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 25, 70, 0, { 0, 0, 0 } },
};

static ColliderQuadInit sQuadInit1 = {
    { COLTYPE_METAL_SHIELD, 0x11, 0x00, 0x00, 0x00, COLSHAPE_QUAD },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x10 }, { 0x00000000, 0x00, 0x00 }, 0x81, 0x00, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static ColliderQuadInit sQuadInit2 = {
    { COLTYPE_METAL_SHIELD, 0x00, 0x09, 0x00, 0x00, COLSHAPE_QUAD },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
    { { { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f }, { 0.0f, 0.0f, 0.0f } } },
};

static Vec3f D_80B2EAEC = { 0.0f, 0.0f, 0.0f };

static Vec3f D_80B2EAF8 = { 0.0f, 0.0f, 0.0f };

static Vec3f D_80B2EB04 = { 500.0f, 0.0f, 0.0f };

static Vec3f D_80B2EB10 = { -500.0f, 0.0f, 0.0f };

static Vec3f D_80B2EB1C = { 0.0f, 0.0f, 0.0f };

static Vec3f D_80B2EB28 = { 0.0f, 0.0f, 1600.0f };

static Vec3f D_80B2EB34 = { 1000.0f, 700.0f, 2000.0f };

static Vec3f D_80B2EB40 = { 1000.0f, -700.0f, 2000.0f };

static Vec3f D_80B2EB4C = { -1000.0f, 700.0f, 1500.0f };

static Vec3f D_80B2EB58 = { -1000.0f, -700.0f, 1500.0f };

static Vec3f D_80B2EB64 = { 500.0f, 0.0f, 0.0f };

static Vec3f D_80B2EB70 = { -500.0f, 0.0f, 0.0f };

static Vec3f D_80B2EB7C = { 0.4f, 0.4f, 0.4f };

static UNK_PTR D_80B2EB88[] = { 0x0402CFE0, 0x0402D7E0, 0x0402DFE0, 0x0402E7E0, 0x0402EFE0,
                                0x0402F7E0, 0x0402FFE0, 0x040307E0, 0x04030FE0, 0x040317E0 };

extern SkeletonHeader D_06003F60;
extern AnimationHeader D_06000068;
extern Gfx D_04031FE0[];
extern Gfx D_06002728[];

void EnVm_SetupAction(EnVm* this, EnVmActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnVm_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnVm* this = THIS;

    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06003F60, &D_06000068, this->jointTable, this->morphTable, 11);
    ActorShape_Init(&thisx->shape, 0.0f, NULL, 0.0f);
    Collider_InitCylinder(globalCtx, &this->colliderCylinder);
    Collider_SetCylinder(globalCtx, &this->colliderCylinder, thisx, &sCylinderInit);
    Collider_InitQuad(globalCtx, &this->colliderQuad1);
    Collider_SetQuad(globalCtx, &this->colliderQuad1, thisx, &sQuadInit1);
    Collider_InitQuad(globalCtx, &this->colliderQuad2);
    Collider_SetQuad(globalCtx, &this->colliderQuad2, thisx, &sQuadInit2);
    this->beamSightRange = (thisx->params >> 8) * 40.0f;
    thisx->params &= 0xFF;
    thisx->naviEnemyId = 0x39;

    if (thisx->params == BEAMOS_LARGE) {
        thisx->colChkInfo.health = 2;
        Actor_SetScale(thisx, 0.014f);
    } else {
        thisx->colChkInfo.health = 1;
        Actor_SetScale(thisx, 0.01f);
    }

    EnVm_SetupWait(thisx);
}

void EnVm_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnVm* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->colliderCylinder);
}

void EnVm_SetupWait(EnVm* this) {
    f32 frameCount = Animation_GetLastFrame(&D_06000068);

    Animation_Change(&this->skelAnime, &D_06000068, 1.0f, frameCount, frameCount, 2, 0.0f);
    this->unk_25E = this->unk_260 = 0;
    this->unk_21C = 0;
    this->timer = 10;
    EnVm_SetupAction(this, EnVm_Wait);
}

void EnVm_Wait(EnVm* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 dist;
    s16 headRot;
    s16 pad;
    s16 pitch;

    switch (this->unk_25E) {
        case 0:
            Math_SmoothStepToS(&this->beamRot.x, 0, 10, 1500, 0);
            headRot = this->actor.yawTowardsLink - this->headRotY - this->actor.shape.rot.y;
            pitch = Math_Vec3f_Pitch(&this->beamPos1, &player->actor.posRot.pos);

            if (pitch > 0x1B91) {
                pitch = 0x1B91;
            }

            dist = this->beamSightRange - this->actor.xzDistFromLink;

            if (this->actor.xzDistFromLink <= this->beamSightRange && ABS(headRot) <= 0x2710 && pitch >= 0xE38 &&
                this->actor.yDistFromLink <= 80.0f && this->actor.yDistFromLink >= -160.0f) {
                Math_SmoothStepToS(&this->beamRot, pitch, 10, 0xFA0, 0);
                if (Math_SmoothStepToS(&this->headRotY, this->actor.yawTowardsLink - this->actor.shape.rot.y, 1,
                                       (ABS((s16)(dist * 180.0f)) / 3) + 0xFA0, 0) <= 5460) {
                    this->timer--;
                    if (this->timer == 0) {
                        this->unk_25E++;
                        this->skelAnime.curFrame = 0.0f;
                        this->skelAnime.startFrame = 0.0f;
                        this->skelAnime.playSpeed = 2.0f;
                        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BIMOS_AIM);
                    }
                }
            } else {
                this->headRotY -= 0x1F4;
            }

            SkelAnime_Update(&this->skelAnime);
            return;
        case 1:
            break;
        default:
            return;
    }

    Math_SmoothStepToS(&this->headRotY, this->actor.yawTowardsLink - this->actor.shape.rot.y, 1, 0x1F40, 0);

    if (SkelAnime_Update(&this->skelAnime)) {
        this->unk_260++;
        this->skelAnime.curFrame = 0.0f;
    }

    if (this->unk_260 == 2) {
        this->beamRot.y = this->actor.yawTowardsLink;
        this->beamRot.x = Math_Vec3f_Pitch(&this->beamPos1, &player->actor.posRot.pos.x);

        if (this->beamRot.x > 0x1B91) {
            this->beamRot.x = 0x1B91;
        }

        if (this->beamRot.x < 0xAAA) {
            this->skelAnime.startFrame = this->skelAnime.curFrame = this->skelAnime.endFrame;
            this->unk_25E = this->unk_260 = 0;
            this->timer = 10;
            this->skelAnime.playSpeed = 1.0f;
        } else {
            this->skelAnime.curFrame = 6.0f;
            EffectSsDeadDd_Spawn(globalCtx, &this->beamPos2, &D_80B2EAEC, &D_80B2EAEC, 150, -25, 0, 0, 255, 0, 255, 255,
                                 255, 16, 20);
            EnVm_SetupAttack(this);
        }
    }
}

void EnVm_SetupAttack(EnVm* this) {
    Animation_Change(&this->skelAnime, &D_06000068, 3.0f, 3.0f, 7.0f, 2, 0.0f);
    this->timer = 305;
    this->beamScale.x = 0.6f;
    this->beamSpeed = 40.0f;
    this->unk_21C = 1;
    this->colliderQuad1.base.atFlags &= ~2;
    EnVm_SetupAction(this, EnVm_Attack);
}

void EnVm_Attack(EnVm* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 pitch = Math_Vec3f_Pitch(&this->beamPos1, &player->actor.posRot.pos);
    f32 dist;
    Vec3f playerPos;

    if (pitch > 0x1B91) {
        pitch = 0x1B91;
    }

    if (this->colliderQuad1.base.atFlags & 2) {
        this->colliderQuad1.base.atFlags &= ~0x2;
        this->timer = 0;

        if (this->beamScale.x > 0.1f) {
            this->beamScale.x = 0.1f;
        }
    }

    if (this->beamRot.x < 0xAAA || this->timer == 0) {
        Math_SmoothStepToF(&this->beamScale, 0.0f, 1.0f, 0.03f, 0.0f);
        this->unk_260 = 0;

        if (this->beamScale.x == 0.0f) {
            this->beamScale.z = 0.0f;
            this->beamScale.y = 0.0f;
            EnVm_SetupWait(this);
        }
    } else {
        if (--this->timer > 300) {
            return;
        }

        Math_SmoothStepToS(&this->headRotY, -this->actor.shape.rot.y + this->actor.yawTowardsLink, 10, 0xDAC, 0);
        Math_SmoothStepToS(&this->beamRot.y, this->actor.yawTowardsLink, 10, 0xDAC, 0);
        Math_SmoothStepToS(&this->beamRot, pitch, 10, 0xDAC, 0);
        playerPos = player->actor.posRot.pos;

        if (player->actor.groundY > -32000.0f) {
            playerPos.y = player->actor.groundY;
        }

        dist = Math_Vec3f_DistXYZ(&this->beamPos1, &playerPos);
        Math_SmoothStepToF(&this->beamScale.z, dist, 1.0f, this->beamSpeed, 0.0f);
        Math_SmoothStepToF(&this->beamScale.x, 0.1f, 1.0f, 0.12f, 0.0f);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BIMOS_LAZER - SFX_FLAG);

        if (this->unk_260 > 2) {
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colliderQuad1);
        }

        this->unk_260 = 3;
    }

    if (SkelAnime_Update(&this->skelAnime)) {
        this->skelAnime.curFrame = this->skelAnime.startFrame;
    }
}

void EnVm_SetupStun(EnVm* this) {
    Animation_Change(&this->skelAnime, &D_06000068, -1.0f, Animation_GetLastFrame(&D_06000068), 0.0f, 2, 0.0f);
    this->unk_260 = 0;
    this->timer = 180;
    this->unk_25E = this->unk_260;
    this->unk_21C = 2;
    this->beamScale.z = 0.0f;
    this->beamScale.y = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
    EnVm_SetupAction(this, EnVm_Stun);
}

void EnVm_Stun(EnVm* this, GlobalContext* globalCtx) {
    if (this->timer == 0) {
        if (SkelAnime_Update(&this->skelAnime)) {
            this->unk_25E++;
            if (this->unk_25E == 3) {
                EnVm_SetupWait(this);
            } else if (this->unk_25E == 1) {
                Animation_Change(&this->skelAnime, &D_06000068, 1.0f, 0.0f, Animation_GetLastFrame(&D_06000068), 2,
                                 0.0f);
            } else {
                this->timer = 10;
                this->skelAnime.curFrame = 0.0f;
                this->skelAnime.playSpeed = 2.0f;
            }
        }
    } else {
        Math_SmoothStepToS(&this->beamRot, 0, 10, 0x5DC, 0);
        this->timer--;
        SkelAnime_Update(&this->skelAnime);
    }
}

void EnVm_SetupDie(EnVm* this) {
    Animation_Change(&this->skelAnime, &D_06000068, -1.0f, Animation_GetLastFrame(&D_06000068), 0.0f, 2, 0.0f);
    this->timer = 33;
    this->unk_25E = this->unk_260 = 0;
    this->unk_21C = 3;
    this->beamScale.z = 0.0f;
    this->beamScale.y = 0.0f;
    this->actor.shape.unk_08 = -5000.0f;
    this->actor.posRot.pos.y += 5000.0f * this->actor.scale.y;
    this->actor.velocity.y = 8.0f;
    this->actor.gravity = -0.5f;
    this->actor.speedXZ = Rand_ZeroOne() + 1.0f;
    this->actor.posRot.rot.y = Rand_CenteredFloat(65535.0f);
    EnVm_SetupAction(this, EnVm_Die);
}

void EnVm_Die(EnVm* this, GlobalContext* globalCtx) {
    EnBom* bomb;

    this->beamRot.x += 0x5DC;
    this->headRotY += 0x9C4;
    Actor_MoveForward(&this->actor);

    if (--this->timer == 0) {
        bomb = (EnBom*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOM, this->actor.posRot.pos.x,
                                   this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0x6FF, BOMB_BODY);

        if (bomb != NULL) {
            bomb->timer = 0;
        }

        Item_DropCollectibleRandom(globalCtx, &this->actor, &this->actor.posRot, 0xA0);
        Actor_Kill(&this->actor);
    }
}

void EnVm_CheckHealth(EnVm* this, GlobalContext* globalCtx) {
    EnBom* bomb;

    if (Actor_GetCollidedExplosive(globalCtx, &this->colliderCylinder) != NULL) {
        this->actor.colChkInfo.health--;
        osSyncPrintf("hp down %d\n", this->actor.colChkInfo.health);
    } else {
        if (!(this->colliderQuad2.base.acFlags & 2) || this->unk_21C == 2) {
            return;
        }
        this->colliderQuad2.base.acFlags &= ~2;
    }

    if (this->actor.colChkInfo.health != 0) {
        func_8003426C(&this->actor, 0x4000, 0xFF, 0, 8);
        EnVm_SetupStun(this);
    } else {
        bomb = (EnBom*)Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_BOM, this->actor.posRot.pos.x,
                                   this->actor.posRot.pos.y + 20.0f, this->actor.posRot.pos.z, 0, 0, 0x601, BOMB_BODY);

        if (bomb != NULL) {
            bomb->timer = 0;
        }

        EnVm_SetupDie(this);
    }
}

void EnVm_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnVm* this = THIS;
    CollisionCheckContext* colChkCtx = &globalCtx->colChkCtx;

    if (this->actor.colChkInfo.health != 0) {
        EnVm_CheckHealth(this, globalCtx);
    }

    if (this->unk_260 == 4) {
        EffectSsDeadDs_SpawnStationary(globalCtx, &this->beamPos3, 20, -1, 255, 20);
        func_80033480(globalCtx, &this->beamPos3, 6.0f, 1, 120, 20, 1);
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BIMOS_LAZER_GND - SFX_FLAG);
    }

    this->actionFunc(this, globalCtx);
    this->beamTexScroll += 0xC;

    if (this->actor.colChkInfo.health != 0 && this->unk_21C != 2) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_BIMOS_ROLL_HEAD - SFX_FLAG);
    }

    Collider_CylinderUpdate(&this->actor, &this->colliderCylinder);
    CollisionCheck_SetOC(globalCtx, colChkCtx, &this->colliderCylinder);

    if (this->actor.dmgEffectTimer == 0 && this->actor.colChkInfo.health != 0) {
        CollisionCheck_SetAC(globalCtx, colChkCtx, &this->colliderCylinder);
    }

    CollisionCheck_SetAC(globalCtx, colChkCtx, &this->colliderQuad2);
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actor.posRot2.pos.y += (6500.0f + this->actor.shape.unk_08) * this->actor.scale.y;
}

s32 EnVm_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnVm* this = THIS;

    if (limbIndex == 2) {
        rot->x += this->beamRot.x;
        rot->y += this->headRotY;
    } else if (limbIndex == 10) {
        if (this->unk_21C == 3) {
            *dList = NULL;
        }
    }

    return false;
}

void EnVm_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnVm* this = THIS;
    Vec3f sp80 = D_80B2EAF8;
    Vec3f sp74 = D_80B2EB04;
    Vec3f sp68 = D_80B2EB10;
    s32 pad;
    Vec3f sp58;
    CollisionPoly* poly;
    u32 buff;
    f32 dist;

    if (limbIndex == 2) {
        Matrix_MultVec3f(&D_80B2EB1C, &this->beamPos1);
        Matrix_MultVec3f(&D_80B2EB28, &this->beamPos2);

        if (this->unk_260 >= 3) {
            poly = NULL;
            sp80.z = (this->beamScale.z + 500.0f) * (this->actor.scale.y * 10000.0f);
            Matrix_MultVec3f(&sp80, &this->beamPos3);

            if (func_8003DE84(&globalCtx->colCtx, &this->beamPos1, &this->beamPos3, &sp58, &poly, 1, 1, 0, 1, &buff) ==
                1) {
                this->beamScale.z = Math_Vec3f_DistXYZ(&this->beamPos1, &sp58) - 5.0f;
                this->unk_260 = 4;
                this->beamPos3 = sp58;
            }
            if (this->beamScale.z != 0.0f) {
                dist = 100.0f;
                if (this->actor.scale.y > 0.01f) {
                    dist = 70.0f;
                }
                sp74.z = sp68.z = Math_Vec3f_DistXYZ(&this->beamPos1, &this->beamPos3) * dist;
                Matrix_MultVec3f(&D_80B2EB64, &this->colliderQuad1.dim.quad[3]);
                Matrix_MultVec3f(&D_80B2EB70, &this->colliderQuad1.dim.quad[2]);
                Matrix_MultVec3f(&sp74, &this->colliderQuad1.dim.quad[1]);
                Matrix_MultVec3f(&sp68, &this->colliderQuad1.dim.quad[0]);
                func_80062734(&this->colliderQuad1, &this->colliderQuad1.dim.quad[0], &this->colliderQuad1.dim.quad[1],
                              &this->colliderQuad1.dim.quad[2], &this->colliderQuad1.dim.quad[3]);
            }
        }
        Matrix_MultVec3f(&D_80B2EB34, &this->colliderQuad2.dim.quad[1]);
        Matrix_MultVec3f(&D_80B2EB40, &this->colliderQuad2.dim.quad[0]);
        Matrix_MultVec3f(&D_80B2EB4C, &this->colliderQuad2.dim.quad[3]);
        Matrix_MultVec3f(&D_80B2EB58, &this->colliderQuad2.dim.quad[2]);
        func_80062734(&this->colliderQuad2, &this->colliderQuad2.dim.quad[0], &this->colliderQuad2.dim.quad[1],
                      &this->colliderQuad2.dim.quad[2], &this->colliderQuad2.dim.quad[3]);
    }
}

void EnVm_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnVm* this = THIS;
    GlobalContext* globalCtx2 = globalCtx;
    Vec3f actorPos;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_vm.c", 1014);

    func_80093D18(globalCtx->state.gfxCtx);
    func_80093D84(globalCtx->state.gfxCtx);
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, EnVm_OverrideLimbDraw,
                      EnVm_PostLimbDraw, this);
    actorPos = this->actor.posRot.pos;
    func_80033C30(&actorPos, &D_80B2EB7C, 255, globalCtx);

    if (this->unk_260 >= 3) {
        Matrix_Translate(this->beamPos3.x, this->beamPos3.y + 10.0f, this->beamPos3.z, MTXMODE_NEW);
        Matrix_Scale(0.8f, 0.8f, 0.8f, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_vm.c", 1033),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gDPSetPrimColor(POLY_XLU_DISP++, 0, 0, 255, 255, 255, 168);
        func_80094BC4(globalCtx->state.gfxCtx);
        gDPSetEnvColor(POLY_XLU_DISP++, 0, 0, 255, 0);
        gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80B2EB88[globalCtx2->gameplayFrames % 8]));
        gSPDisplayList(POLY_XLU_DISP++, D_04031FE0);
        Matrix_RotateY(32767.0f, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_vm.c", 1044),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPSegment(POLY_XLU_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80B2EB88[(globalCtx2->gameplayFrames + 4) % 8]));
        gSPDisplayList(POLY_XLU_DISP++, D_04031FE0);
    }
    gSPSegment(POLY_OPA_DISP++, 0x08, func_80094E78(globalCtx->state.gfxCtx, 0, this->beamTexScroll));
    Matrix_Translate(this->beamPos1.x, this->beamPos1.y, this->beamPos1.z, MTXMODE_NEW);
    Matrix_RotateRPY(this->beamRot.x, this->beamRot.y, this->beamRot.z, MTXMODE_APPLY);
    Matrix_Scale(this->beamScale.x * 0.1f, this->beamScale.x * 0.1f, this->beamScale.z * 0.0015f, 1);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_vm.c", 1063),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_06002728);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_vm.c", 1068);
}
