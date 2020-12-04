/*
 * File: z_en_po_field.c
 * Overlay: ovl_En_Po_Field
 * Description: Field Poe
 */

#include "z_en_po_field.h"

#define FLAGS 0x00001035

#define THIS ((EnPoField*)thisx)

void EnPoField_Init(Actor* thisx, GlobalContext* globalCtx);
void EnPoField_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnPoField_Update(Actor* thisx, GlobalContext* globalCtx);
void EnPoField_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnPoField_UpdateDead(Actor* thisx, GlobalContext* globalCtx);
void EnPoField_DrawSoul(Actor* thisx, GlobalContext* globalCtx);

void EnPoField_SetupWaitForSpawn(EnPoField* this, GlobalContext* globalCtx);
void EnPoField_WaitForSpawn(EnPoField* this, GlobalContext* globalCtx);
void EnPoField_Appear(EnPoField* this, GlobalContext* globalCtx);
void EnPoField_CirclePlayer(EnPoField* this, GlobalContext* globalCtx);
void EnPoField_Damage(EnPoField* this, GlobalContext* globalCtx);
void EnPoField_Flee(EnPoField* this, GlobalContext* globalCtx);
void EnPoField_Death(EnPoField* this, GlobalContext* globalCtx);
void EnPoField_Disappear(EnPoField* this, GlobalContext* globalCtx);
void EnPoField_SoulIdle(EnPoField* this, GlobalContext* globalCtx);
void func_80AD587C(EnPoField* this, GlobalContext* globalCtx);
void func_80AD58D4(EnPoField* this, GlobalContext* globalCtx);
void EnPoField_SoulDisappear(EnPoField* this, GlobalContext* globalCtx);
void EnPoField_SoulInteract(EnPoField* this, GlobalContext* globalCtx);
void EnPoField_SpawnFlame(EnPoField* this);

const ActorInit En_Po_Field_InitVars = {
    ACTOR_EN_PO_FIELD,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_PO_FIELD,
    sizeof(EnPoField),
    (ActorFunc)EnPoField_Init,
    (ActorFunc)EnPoField_Destroy,
    (ActorFunc)EnPoField_Update,
    (ActorFunc)EnPoField_Draw,
};

static ColliderCylinderInit D_80AD7080 = {
    { COLTYPE_UNK3, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 25, 50, 20, { 0, 0, 0 } },
};

static ColliderCylinderInit D_80AD70AC = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x00, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x19, 0x00, 0x00 },
    { 10, 30, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit D_80AD70D8 = { 0x04, 0x0019, 0x0032, 0x28 };

static DamageTable sDamageTable = {
    0x00, 0x02, 0x01, 0x02, 0x11, 0x02, 0x02, 0x12, 0x01, 0x02, 0x04, 0x02, 0x02, 0x02, 0x02, 0x02,
    0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x04, 0x02, 0x02, 0x08, 0x04, 0x00, 0x00, 0x04, 0x00,
};

static s32 sNumSpawned = 0;

static Vec3f sFieldMiddle = { -1000.0f, 0.0f, 6500.0f };

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(unk_4C, 3200, ICHAIN_STOP),
};

static Vec3f D_80AD7114 = { 0.0f, 3.0f, 0.0f };

static Vec3f D_80AD7120 = { 0.0f, 0.0f, 0.0f };

static EnPoFieldInfo sPoFieldInfo[2] = {
    { { 255, 170, 255 }, { 100, 0, 150 }, { 255, 85, 0 }, 248, 0x06001B70 },
    { { 255, 255, 170 }, { 255, 200, 0 }, { 160, 0, 255 }, 241, 0x06001370 },
};

static Vec3f D_80AD714C = { 0.0f, 1400.0f, 0.0f };

static Vec3s sSpawnPositions[10];
static u8 sSpawnSwitchFlags[10];
static MtxF sLimb7Mtx;

extern AnimationHeader D_06000924;
extern SkeletonHeader D_06006A30;
extern AnimationHeader D_06000F9C;
extern AnimationHeader D_06000608;
extern AnimationHeader D_06000454;
extern AnimationHeader D_06001360;
extern Gfx D_0404D4E0[];
extern Gfx D_060059F0[];
extern Gfx D_06005900[];
extern Gfx D_06005620[];
extern Gfx D_060066D0[];
extern Gfx D_06004BA0[];
extern Gfx D_06004CC0[];
extern Gfx D_060023B0[];

void EnPoField_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnPoField* this = THIS;
    s32 pad;

    if (sNumSpawned != 10) {
        sSpawnPositions[sNumSpawned].x = this->actor.posRot.pos.x;
        sSpawnPositions[sNumSpawned].y = this->actor.posRot.pos.y;
        sSpawnPositions[sNumSpawned].z = this->actor.posRot.pos.z;
        sSpawnSwitchFlags[sNumSpawned] = this->actor.params & 0xFF;
        sNumSpawned++;
    }
    if (sNumSpawned >= 2) {
        this->actor.params = 0xFF;
        Actor_Kill(&this->actor);
        return;
    }
    Actor_ProcessInitChain(&this->actor, sInitChain);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_06006A30, &D_06000924, this->limbDrawTable,
                   this->transitionDrawTable, 10);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80AD7080);
    Collider_InitCylinder(globalCtx, &this->flameCollider);
    Collider_SetCylinder(globalCtx, &this->flameCollider, &this->actor, &D_80AD70AC);
    func_80061ED4(&this->actor.colChkInfo, &sDamageTable, &D_80AD70D8);
    this->lightNode = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &this->lightInfo);
    Lights_PointGlowSetInfo(&this->lightInfo, this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y,
                            this->actor.initPosRot.pos.z, 255, 255, 255, 0);
    this->actor.shape.shadowDrawFunc = ActorShadow_DrawFunc_Circle;
    EnPoField_SetupWaitForSpawn(this, globalCtx);
}

void EnPoField_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnPoField* this = THIS;

    if (this->actor.params != 0xFF) {
        LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, this->lightNode);
        Collider_DestroyCylinder(globalCtx, &this->flameCollider);
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

void EnPoField_SetupWaitForSpawn(EnPoField* this, GlobalContext* globalCtx) {
    this->actor.update = EnPoField_Update;
    Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_ENEMY);
    this->actor.shape.rot.x = 0;
    Lights_PointSetColorAndRadius(&this->lightInfo, 0, 0, 0, 0);
    this->actionTimer = 200;
    Actor_SetScale(&this->actor, 0.0f);
    this->actor.flags &= ~0x00010001;
    this->collider.base.acFlags &= ~1;
    this->collider.base.maskA = 0x39;
    this->actor.colChkInfo.health = D_80AD70D8.health;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actionFunc = EnPoField_WaitForSpawn;
}

void EnPoField_SetupAppear(EnPoField* this) {
    SkelAnime_ChangeAnimDefaultStop(&this->skelAnime, &D_06000F9C);
    this->actor.draw = EnPoField_Draw;
    this->lightColor.r = 255;
    this->lightColor.g = 255;
    this->lightColor.b = 210;
    this->lightColor.a = 0;
    this->actor.shape.unk_14 = 0;
    this->actor.shape.unk_08 = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_APPEAR);
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
    if (this->actor.params == EN_PO_FIELD_BIG) {
        this->actor.speedXZ = 12.0f;
        this->collider.dim.radius = 35;
        this->collider.dim.height = 100;
        this->collider.dim.yShift = 10;
        this->actor.shape.unk_10 = 45.0f;
        this->scaleModifier = 0.014f;
        this->actor.naviEnemyId = 0x5A;
    } else {
        this->actor.speedXZ = 0.0f;
        this->collider.dim.radius = D_80AD7080.dim.radius;
        this->collider.dim.height = D_80AD7080.dim.height;
        this->collider.dim.yShift = D_80AD7080.dim.yShift;
        this->actor.shape.unk_10 = 37.0f;
        this->scaleModifier = 0.01f;
        this->actor.naviEnemyId = 0x5C;
    }
    this->actionFunc = EnPoField_Appear;
}

void EnPoField_SetupCirclePlayer(EnPoField* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    SkelAnime_ChangeAnimDefaultRepeat(&this->skelAnime, &D_06000924);
    this->collider.base.acFlags |= 1;
    this->scaleModifier = this->actor.xzDistFromLink;
    Math_Vec3f_Copy(&this->actor.initPosRot.pos, &player->actor.posRot.pos);
    this->actor.posRot.rot.y = this->actor.yawTowardsLink;
    if (this->actionFunc != EnPoField_Damage) {
        this->actor.flags |= 1;
        this->actionTimer = 600;
        this->unk_194 = 32;
    }
    this->actionFunc = EnPoField_CirclePlayer;
}

void EnPoField_SetupFlee(EnPoField* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06000608, -5.0f);
    this->collider.base.acFlags |= 1;
    this->actionFunc = EnPoField_Flee;
    this->actor.speedXZ = 12.0f;
    if (this->actionFunc != EnPoField_Damage) {
        this->actor.flags |= 1;
        this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x8000;
        this->actionTimer = 2000;
        this->unk_194 = 32;
    }
}

void EnPoField_SetupDamage(EnPoField* this) {
    SkelAnime_ChangeAnimTransitionStop(&this->skelAnime, &D_06000454, -6.0f);
    if (this->collider.body.acHitItem->toucher.flags & 0x1F824) {
        this->actor.posRot.rot.y = this->collider.base.ac->posRot.rot.y;
    } else {
        this->actor.posRot.rot.y = func_8002DA78(&this->actor, this->collider.base.ac) + 0x8000;
    }
    this->collider.base.acFlags &= ~3;
    this->actor.speedXZ = 5.0f;
    func_8003426C(&this->actor, 0x4000, 255, 0, 16);
    this->actionFunc = EnPoField_Damage;
}

void EnPoField_SetupDeath(EnPoField* this) {
    this->actionTimer = 0;
    this->actor.flags &= -2;
    this->actor.speedXZ = 0.0f;
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    this->actor.naviEnemyId = 0xFF;
    if (this->flameTimer >= 20) {
        this->flameTimer = 19;
    }
    this->actionFunc = EnPoField_Death;
}

void EnPoField_SetupDisappear(EnPoField* this) {
    SkelAnime_ChangeAnimTransitionRepeat(&this->skelAnime, &D_06001360, -6.0f);
    this->actionTimer = 16;
    this->collider.base.acFlags &= ~3;
    this->actor.speedXZ = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DISAPPEAR);
    this->actionFunc = EnPoField_Disappear;
}

void EnPoField_SetupSoulIdle(EnPoField* this, GlobalContext* globalCtx) {
    this->actor.update = EnPoField_UpdateDead;
    this->actor.draw = EnPoField_DrawSoul;
    this->actor.shape.shadowDrawFunc = NULL;
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.gravity = -1.0f;
    this->actor.shape.unk_08 = 1500.0f;
    this->actor.shape.rot.x = -0x8000;
    this->actionTimer = 60;
    this->actor.posRot.pos.y -= 15.0f;
    Actor_ChangeType(globalCtx, &globalCtx->actorCtx, &this->actor, ACTORTYPE_MISC);
    this->actionFunc = EnPoField_SoulIdle;
}

void func_80AD42B0(EnPoField* this) {
    Lights_PointNoGlowSetInfo(&this->lightInfo, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                              this->actor.posRot.pos.z, 0, 0, 0, 0);
    this->actor.shape.rot.y = 0;
    this->lightColor.a = 0;
    this->actor.shape.rot.x = 0;
    this->actor.shape.unk_08 = 0.0f;
    this->actor.gravity = 0.0f;
    this->actor.velocity.y = 0.0f;
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
    this->actor.scale.x = 0.0f;
    this->actor.scale.y = 0.0f;
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_METAL_BOX_BOUND);
    if (this->actor.params == EN_PO_FIELD_BIG) {
        func_80078884(NA_SE_SY_TRE_BOX_APPEAR);
    }
    this->actionFunc = func_80AD587C;
}

void func_80AD4384(EnPoField* this) {
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y;
    Actor_SetHeight(&this->actor, -10.0f);
    this->collider.dim.radius = 13;
    this->collider.dim.height = 30;
    this->collider.dim.yShift = 0;
    this->collider.dim.pos.x = this->actor.posRot.pos.x;
    this->collider.dim.pos.y = this->actor.posRot.pos.y - 20.0f;
    this->collider.dim.pos.z = this->actor.posRot.pos.z;
    this->collider.base.maskA = 9;
    this->actor.textId = 0x5005;
    this->actionTimer = 400;
    this->unk_194 = 32;
    this->actor.flags |= 1;
    this->actionFunc = func_80AD58D4;
}

void EnPoField_SetupSoulDisappear(EnPoField* this) {
    this->actionFunc = EnPoField_SoulDisappear;
}

void EnPoField_SetupInteractWithSoul(EnPoField* this) {
    this->actionFunc = EnPoField_SoulInteract;
    this->actor.initPosRot.pos.y = this->actor.posRot.pos.y - 15.0f;
}

void EnPoField_CorrectYPos(EnPoField* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->unk_194 == 0) {
        this->unk_194 = 32;
    }
    if (this->unk_194 != 0) {
        this->unk_194 -= 1;
    }
    if (this->actor.groundY == -32000.0f) {
        EnPoField_SetupDisappear(this);
        return;
    }
    Math_SmoothScaleMaxF(
        &this->actor.initPosRot.pos.y,
        ((player->actor.posRot.pos.y > this->actor.groundY) ? player->actor.posRot.pos.y : this->actor.groundY) + 13.0f,
        0.2f, 5.0f);
    this->actor.posRot.pos.y = Math_Sins(this->unk_194 * 0x800) * 13.0f + this->actor.initPosRot.pos.y;
}

f32 EnPoField_SetFleeSpeed(EnPoField* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 speed = ((player->stateFlags1 & 0x800000) && player->rideActor != NULL) ? player->rideActor->speedXZ : 12.0f;

    if (this->actor.xzDistFromLink < 300.0f) {
        this->actor.speedXZ = speed * 1.5f + 2.0f;
    } else if (this->actor.xzDistFromLink < 400.0f) {
        this->actor.speedXZ = speed * 1.25f + 2.0f;
    } else if (this->actor.xzDistFromLink < 500.0f) {
        this->actor.speedXZ = speed + 2.0f;
    } else {
        this->actor.speedXZ = 12.0f;
    }
    this->actor.speedXZ = CLAMP_MIN(this->actor.speedXZ, 12.0f);
}

void EnPoField_WaitForSpawn(EnPoField* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 spawnDist;
    s32 i;
    UNK_TYPE sp88;

    if (this->actionTimer != 0) {
        this->actionTimer--;
    }
    if (this->actionTimer == 0) {
        for (i = 0; i < sNumSpawned; i++) {
            if (fabsf(sSpawnPositions[i].x - player->actor.posRot.pos.x) < 150.0f &&
                fabsf(sSpawnPositions[i].z - player->actor.posRot.pos.z) < 150.0f) {
                if (Flags_GetSwitch(globalCtx, sSpawnSwitchFlags[i])) {
                    if (player->stateFlags1 & 0x800000) { // Player riding Epona
                        return;
                    } else {
                        this->actor.params = EN_PO_FIELD_SMALL;
                        spawnDist = 300.0f;
                    }
                } else if (player->stateFlags1 & 0x800000 || Math_Rand_ZeroOne() < 0.4f) {
                    this->actor.params = EN_PO_FIELD_BIG;
                    this->spawnFlagIndex = i;
                    spawnDist = 480.0f;
                } else {
                    this->actor.params = EN_PO_FIELD_SMALL;
                    spawnDist = 300.0f;
                }
                this->actor.posRot.pos.x =
                    Math_Sins(player->actor.shape.rot.y) * spawnDist + player->actor.posRot.pos.x;
                this->actor.posRot.pos.z =
                    Math_Coss(player->actor.shape.rot.y) * spawnDist + player->actor.posRot.pos.z;
                this->actor.posRot.pos.y = player->actor.posRot.pos.y + 1000.0f;
                this->actor.posRot.pos.y = func_8003C9A4(&globalCtx->colCtx, &this->actor.floorPoly, &sp88,
                                                         &this->actor, &this->actor.posRot.pos);
                if (this->actor.posRot.pos.y != -32000.0f) {
                    this->actor.shape.rot.y = func_8002DA78(&this->actor, &player->actor);
                    EnPoField_SetupAppear(this);
                } else {
                    return;
                }
            }
        }
    }
}

void EnPoField_Appear(EnPoField* this, GlobalContext* globalCtx) {
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        this->lightColor.a = 255;
        Actor_SetScale(&this->actor, this->scaleModifier);
        if (this->actor.params == EN_PO_FIELD_BIG) {
            EnPoField_SetupFlee(this);
        } else {
            EnPoField_SetupCirclePlayer(this, globalCtx);
        }
    } else if (this->skelAnime.animCurrentFrame > 10.0f) {
        this->lightColor.a = ((this->skelAnime.animCurrentFrame - 10.0f) * 0.05f) * 255.0f;
    } else {
        this->actor.scale.x += this->scaleModifier * 0.1f;
        this->actor.scale.y = this->actor.scale.x;
        this->actor.scale.z = this->actor.scale.x;
    }
    this->actor.shape.unk_14 = this->lightColor.a;
    this->actor.shape.rot.y = this->actor.yawTowardsLink;
    if (this->actor.params == EN_PO_FIELD_BIG) {
        this->actor.posRot.rot.y = this->actor.yawTowardsLink + 0x8000;
        EnPoField_SetFleeSpeed(this, globalCtx);
    }
}

void EnPoField_CirclePlayer(EnPoField* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 temp_v1 = 16 - this->unk_194;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->actionTimer != 0) {
        this->actionTimer--;
    }
    if (ABS(temp_v1) < 16) {
        this->actor.posRot.rot.y += 512.0f * fabsf(Math_Sins(this->unk_194 * 0x800));
    }
    Math_SmoothScaleMaxF(&this->scaleModifier, 180.0f, 0.5f, 10.0f);
    Math_SmoothScaleMaxF(&this->actor.initPosRot.pos.x, player->actor.posRot.pos.x, 0.2f, 6.0f);
    Math_SmoothScaleMaxF(&this->actor.initPosRot.pos.z, player->actor.posRot.pos.z, 0.2f, 6.0f);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.posRot.rot.y, 1, 0x800, 0x200);
    if (this->actor.initPosRot.pos.x - player->actor.posRot.pos.x > 100.0f) {
        this->actor.initPosRot.pos.x = player->actor.posRot.pos.x + 100.0f;
    } else if (this->actor.initPosRot.pos.x - player->actor.posRot.pos.x < -100.0f) {
        this->actor.initPosRot.pos.x = player->actor.posRot.pos.x + -100.0f;
    }
    if (this->actor.initPosRot.pos.z - player->actor.posRot.pos.z > 100.0f) {
        this->actor.initPosRot.pos.z = player->actor.posRot.pos.z + 100.0f;
    } else if (this->actor.initPosRot.pos.z - player->actor.posRot.pos.z < -100.0f) {
        this->actor.initPosRot.pos.z = player->actor.posRot.pos.z + -100.0f;
    }
    this->actor.posRot.pos.x =
        this->actor.initPosRot.pos.x - (Math_Sins(this->actor.posRot.rot.y) * this->scaleModifier);
    this->actor.posRot.pos.z =
        this->actor.initPosRot.pos.z - (Math_Coss(this->actor.posRot.rot.y) * this->scaleModifier);
    if (this->actionTimer == 0) {
        EnPoField_SetupDisappear(this);
    } else {
        EnPoField_SpawnFlame(this);
    }
    EnPoField_CorrectYPos(this, globalCtx);
    func_8002F974(&this->actor, NA_SE_EN_PO_FLY - SFX_FLAG);
}

void EnPoField_Flee(EnPoField* this, GlobalContext* globalCtx) {
    f32 temp_f6;
    s16 phi_t0;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->actionTimer != 0) {
        this->actionTimer--;
    }
    if (func_8002DBB0(&this->actor, &sFieldMiddle) > 3000.0f) {
        phi_t0 = (s16)(this->actor.yawTowardsLink - func_8002DAC0(&this->actor, &sFieldMiddle) - 0x8000) * 0.2f;
    } else {
        phi_t0 = 0;
    }
    Math_SmoothScaleMaxS(&this->actor.shape.rot.y, this->actor.yawTowardsLink - phi_t0, 6, 0x400);
    EnPoField_SetFleeSpeed(this, globalCtx);
    this->actor.posRot.rot.y = this->actor.shape.rot.y + 0x8000;
    temp_f6 = Math_Sins(this->actionTimer * 0x800) * 3.0f;
    this->actor.posRot.pos.x -= temp_f6 * Math_Coss(this->actor.shape.rot.y);
    this->actor.posRot.pos.z += temp_f6 * Math_Sins(this->actor.shape.rot.y);
    if (this->actionTimer == 0 || this->actor.xzDistFromLink > 1500.0f) {
        EnPoField_SetupDisappear(this);
    } else {
        EnPoField_CorrectYPos(this, globalCtx);
    }
    func_8002F974(&this->actor, NA_SE_EN_PO_AWAY - SFX_FLAG);
}

void EnPoField_Damage(EnPoField* this, GlobalContext* globalCtx) {
    Math_ApproxF(&this->actor.speedXZ, 0.0f, 0.5f);
    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime)) {
        if (this->actor.colChkInfo.health == 0) {
            EnPoField_SetupDeath(this);
        } else if (this->actor.params == EN_PO_FIELD_BIG) {
            EnPoField_SetupFlee(this);
        } else {
            EnPoField_SetupCirclePlayer(this, globalCtx);
        }
    }
}

void EnPoField_Death(EnPoField* this, GlobalContext* globalCtx) {
    Vec3f sp6C;
    f32 sp68;
    s32 pad;
    s32 pad1;
    f32 temp_f0;

    this->actionTimer++;
    if (this->actionTimer < 8) {
        if (this->actionTimer < 5) {
            sp6C.y = Math_Sins(this->actionTimer * 0x1000 - 0x4000) * 23.0f + (this->actor.posRot.pos.y + 40.0f);
            sp68 = Math_Coss(this->actionTimer * 0x1000 - 0x4000) * 23.0f;
            sp6C.x = Math_Sins(func_8005A9F4(ACTIVE_CAM) + 0x4800) * sp68 + this->actor.posRot.pos.x;
            sp6C.z = Math_Coss(func_8005A9F4(ACTIVE_CAM) + 0x4800) * sp68 + this->actor.posRot.pos.z;
        } else {
            sp6C.y = this->actor.posRot.pos.y + 40.0f + 15.0f * (this->actionTimer - 5);
            sp6C.x = Math_Sins(func_8005A9F4(ACTIVE_CAM) + 0x4800) * 23.0f + this->actor.posRot.pos.x;
            sp6C.z = Math_Coss(func_8005A9F4(ACTIVE_CAM) + 0x4800) * 23.0f + this->actor.posRot.pos.z;
        }
        EffectSsDeadDb_Spawn(globalCtx, &sp6C, &D_80AD7114, &D_80AD7120, this->actionTimer * 10 + 80, 0, 255, 255, 255,
                             255, 0, 0, 255, 1, 9, 1);
        sp6C.x = (this->actor.posRot.pos.x + this->actor.posRot.pos.x) - sp6C.x;
        sp6C.z = (this->actor.posRot.pos.z + this->actor.posRot.pos.z) - sp6C.z;
        EffectSsDeadDb_Spawn(globalCtx, &sp6C, &D_80AD7114, &D_80AD7120, this->actionTimer * 10 + 80, 0, 255, 255, 255,
                             255, 0, 0, 255, 1, 9, 1);
        sp6C.x = this->actor.posRot.pos.x;
        sp6C.z = this->actor.posRot.pos.z;
        EffectSsDeadDb_Spawn(globalCtx, &sp6C, &D_80AD7114, &D_80AD7120, this->actionTimer * 10 + 80, 0, 255, 255, 255,
                             255, 0, 0, 255, 1, 9, 1);
        if (this->actionTimer == 1) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_EXTINCT);
        }
    } else if (this->actionTimer == 28) {
        EnPoField_SetupSoulIdle(this, globalCtx);
    } else if (this->actionTimer >= 19) {
        temp_f0 = (28 - this->actionTimer) * 0.001f;
        this->actor.posRot.pos.y += 5.0f;
        this->actor.scale.z = temp_f0;
        this->actor.scale.y = temp_f0;
        this->actor.scale.x = temp_f0;
    }
    if (this->actionTimer == 18) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DEAD2);
    }
}

void EnPoField_Disappear(EnPoField* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->actionTimer != 0) {
        this->actionTimer--;
    }
    this->actor.shape.rot.y += 0x1000;
    this->lightColor.a = this->actionTimer * 15.9375f;
    this->actor.shape.unk_14 = this->lightColor.a;
    if (this->actionTimer == 0) {
        EnPoField_SetupWaitForSpawn(this, globalCtx);
    }
}

void EnPoField_SoulIdle(EnPoField* this, GlobalContext* globalCtx) {
    if (this->actionTimer != 0) {
        this->actionTimer--;
    }
    if (this->actor.bgCheckFlags & 1) {
        EffectSsHahen_SpawnBurst(globalCtx, &this->actor.posRot.pos, 6.0f, 0, 1, 1, 15, OBJECT_PO_FIELD, 10,
                                 D_06004BA0);
        func_80AD42B0(this);
    } else if (this->actionTimer == 0) {
        EnPoField_SetupWaitForSpawn(this, globalCtx);
    }
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 10.0f, 10.0f, 10.0f, 4);
}

void EnPoField_SoulUpdateProperties(EnPoField* this, s32 arg1) {
    EnPoFieldInfo* info = &sPoFieldInfo[this->actor.params];
    f32 multiplier;

    this->lightColor.a = CLAMP(this->lightColor.a + arg1, 0, 255);
    if (arg1 < 0) {
        multiplier = this->lightColor.a * 0.003921569f;
        this->actor.scale.z = 0.0056000003f * multiplier + 0.00140000007f;
        this->actor.scale.x = 0.0056000003f * multiplier + 0.00140000007f;
        this->actor.scale.y = 0.007f - 0.007f * multiplier + 0.007f;
    } else {
        multiplier = 1.0f;
        this->actor.scale.z = this->lightColor.a * 2.7450982e-05f;
        this->actor.scale.y = this->lightColor.a * 2.7450982e-05f;
        this->actor.scale.x = this->lightColor.a * 2.7450982e-05f;
        this->actor.posRot.pos.y = this->actor.initPosRot.pos.y + (0.05882353f * this->lightColor.a);
    }
    this->lightColor.r = info->lightColor.r * multiplier;
    this->lightColor.g = info->lightColor.g * multiplier;
    this->lightColor.b = info->lightColor.b * multiplier;
    Lights_PointNoGlowSetInfo(&this->lightInfo, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                              this->actor.posRot.pos.z, info->lightColor.r, info->lightColor.g, info->lightColor.b,
                              this->lightColor.a * 0.78431373f);
}

void func_80AD587C(EnPoField* this, GlobalContext* globalCtx) {
    this->actor.initPosRot.pos.y += 2.0f;
    EnPoField_SoulUpdateProperties(this, 20);
    if (this->lightColor.a == 255) {
        func_80AD4384(this);
    }
}

void func_80AD58D4(EnPoField* this, GlobalContext* globalCtx) {
    if (this->actionTimer != 0) {
        this->actionTimer--;
    }
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        EnPoField_SetupInteractWithSoul(this);
        return;
    }
    if (this->actionTimer == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
        this->actor.flags &= ~0x10000;
        EnPoField_SetupSoulDisappear(this);
        return;
    }
    if (this->collider.base.maskA & 2) {
        this->actor.flags |= 0x10000;
        func_8002F2F4(&this->actor, globalCtx);
    } else {
        this->actor.flags &= ~0x10000;
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
    this->actor.posRot.pos.y = Math_Sins(this->unk_194 * 0x800) * 5.0f + this->actor.initPosRot.pos.y;
    if (this->unk_194 != 0) {
        this->unk_194 -= 1;
    }
    if (this->unk_194 == 0) {
        this->unk_194 = 32;
    }
    this->collider.dim.pos.y = this->actor.posRot.pos.y - 20.0f;
    Actor_SetHeight(&this->actor, -10.0f);
    Lights_PointNoGlowSetInfo(&this->lightInfo, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                              this->actor.posRot.pos.z, this->lightInfo.params.point.color[0],
                              this->lightInfo.params.point.color[1], this->lightInfo.params.point.color[2],
                              this->lightColor.a * 0.78431374f);
}

void EnPoField_SoulDisappear(EnPoField* this, GlobalContext* globalCtx) {
    EnPoField_SoulUpdateProperties(this, -13);
    if (this->lightColor.a == 0) {
        EnPoField_SetupWaitForSpawn(this, globalCtx);
    }
}

void EnPoField_SoulInteract(EnPoField* this, GlobalContext* globalCtx) {
    if (this->actor.textId != 0x5005) {
        EnPoField_SoulUpdateProperties(this, -13);
    } else {
        func_8002F974(&this->actor, NA_SE_EN_PO_BIG_CRY - SFX_FLAG);
    }
    if (func_8010BDBC(&globalCtx->msgCtx) == 4) {
        if (func_80106BC8(globalCtx) != 0) {
            func_800F8A44(&this->actor.projectedPos, NA_SE_EN_PO_BIG_CRY - SFX_FLAG);
            if (globalCtx->msgCtx.choiceIndex == 0) {
                if (Inventory_HasEmptyBottle()) {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_BIG_GET);
                    if (this->actor.params == 0) {
                        Item_Give(globalCtx, ITEM_POE);
                        this->actor.textId = 0x5008;
                    } else {
                        this->actor.textId = 0x508F;
                        Item_Give(globalCtx, ITEM_BIG_POE);
                        Flags_SetSwitch(globalCtx, sSpawnSwitchFlags[this->spawnFlagIndex]);
                    }
                } else {
                    Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
                    this->actor.textId = 0x5006;
                }
            } else {
                this->actor.textId = 0x5007;
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_LAUGH);
            }
            func_8010B720(globalCtx, this->actor.textId);
            return;
        }
    } else if (func_8002F334(&this->actor, globalCtx) != 0) {
        EnPoField_SetupSoulDisappear(this);
    }
}

void EnPoField_TestForDamage(EnPoField* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 2) {
        this->collider.base.acFlags &= ~2;
        if (this->actor.colChkInfo.damageEffect != 0 || this->actor.colChkInfo.damage != 0) {
            if (Actor_ApplyDamage(&this->actor) == 0) {
                func_80032C7C(globalCtx, &this->actor);
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DEAD);
            } else {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_PO_DAMAGE);
            }
            EnPoField_SetupDamage(this);
        }
    }
}

void EnPoField_SpawnFlame(EnPoField* this) {
    if (this->flameTimer == 0) {
        this->flamePosition.x = this->lightInfo.params.point.x;
        this->flamePosition.y = this->lightInfo.params.point.y;
        this->flamePosition.z = this->lightInfo.params.point.z;
        this->flameTimer = 70;
        this->flameRotation = this->actor.shape.rot.y;
    }
}

void EnPoField_UpdateFlame(EnPoField* this, GlobalContext* globalCtx) {
    if (this->flameTimer != 0) {
        if (this->flameTimer != 0) {
            this->flameTimer--;
        }
        if (this->flameCollider.base.atFlags & 2) {
            this->flameCollider.base.atFlags &= ~2;
            this->flameTimer = 19;
        }
        if (this->flameTimer < 20) {
            Math_ApproxF(&this->flameScale, 0.0f, 0.00015f);
            return;
        }
        if (Math_ApproxF(&this->flameScale, 0.003f, 0.0006f) != 0) {
            this->flamePosition.x += 2.5f * Math_Sins(this->flameRotation);
            this->flamePosition.z += 2.5f * Math_Coss(this->flameRotation);
        }
        this->flameCollider.dim.pos.x = this->flamePosition.x;
        this->flameCollider.dim.pos.y = this->flamePosition.y;
        this->flameCollider.dim.pos.z = this->flamePosition.z;
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->flameCollider.base);
    }
}

void EnPoField_DrawFlame(EnPoField* this, GlobalContext* globalCtx) {
    f32 sp4C;
    s32 pad;

    if (this->flameTimer != 0) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_po_field.c", 1669);
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 64, 1, 0,
                                    (globalCtx->gameplayFrames * -20) % 512, 32, 128));
        sp4C = this->flameScale * 85000.0f;
        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 255, 255, 0, sp4C);
        Matrix_Translate(this->flamePosition.x, this->flamePosition.y, this->flamePosition.z, MTXMODE_NEW);
        Matrix_RotateY((s16)(func_8005A9F4(ACTIVE_CAM) + 0x8000) * 0.0000958738f, MTXMODE_APPLY);
        if (this->flameTimer >= 20) {
            gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 0);
            Matrix_Scale(this->flameScale, this->flameScale, this->flameScale, MTXMODE_APPLY);
        } else {
            gDPSetEnvColor(POLY_XLU_DISP++, sp4C, 0, 0, 0);
            Matrix_Scale((this->flameScale * 0.7f) + 0.00090000004f, (0.003f - this->flameScale) + 0.003f, 0.003f,
                         MTXMODE_APPLY);
        }
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_field.c", 1709),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_0404D4E0);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_po_field.c", 1712);
    }
}

void func_80AD619C(EnPoField* this) {
    s16 temp_var;

    if (this->actionFunc == EnPoField_Flee) {
        this->lightColor.r = CLAMP_MAX((s16)(this->lightColor.r + 5), 80);
        this->lightColor.g = CLAMP_MAX((s16)(this->lightColor.g + 5), 255);
        temp_var = this->lightColor.b + 5;
        this->lightColor.b = CLAMP_MAX(temp_var, 225);
    } else if (this->actionFunc == EnPoField_Damage) {
        if (this->actor.dmgEffectTimer & 2) {
            this->lightColor.r = 0;
            this->lightColor.g = 0;
            this->lightColor.b = 0;
        } else {
            this->lightColor.r = 80;
            this->lightColor.g = 255;
            this->lightColor.b = 225;
        }
    } else {
        this->lightColor.r = CLAMP_MAX((s16)(this->lightColor.r + 5), 255);
        this->lightColor.g = CLAMP_MAX((s16)(this->lightColor.g + 5), 255);
        if (this->lightColor.b > 210) {
            temp_var = this->lightColor.b - 5;
            this->lightColor.b = CLAMP_MIN(temp_var, 210);
        } else {
            temp_var = this->lightColor.b + 5;
            this->lightColor.b = CLAMP_MAX(temp_var, 210);
        }
    }
}

void func_80AD6330(EnPoField* this) {
    f32 rand;

    if (this->actionFunc == EnPoField_Appear && this->skelAnime.animCurrentFrame < 12.0f) {
        this->soulColor.r = this->soulColor.g = this->soulColor.b =
            (s16)(this->skelAnime.animCurrentFrame * 16.66f) + 55;
        this->soulColor.a = this->skelAnime.animCurrentFrame * 16.666666f;
    } else {
        rand = Math_Rand_ZeroOne();
        this->soulColor.r = (s16)(rand * 30.0f) + 225;
        this->soulColor.g = (s16)(rand * 100.0f) + 155;
        this->soulColor.b = (s16)(rand * 160.0f) + 95;
        this->soulColor.a = 200;
    }
}

void EnPoField_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnPoField* this = THIS;

    EnPoField_TestForDamage(this, globalCtx);
    this->actionFunc(this, globalCtx);
    EnPoField_UpdateFlame(this, globalCtx);
    if (this->actionFunc == EnPoField_Flee || this->actionFunc == EnPoField_Damage ||
        this->actionFunc == EnPoField_Appear) {
        Actor_MoveForward(&this->actor);
    }
    if (this->actionFunc != EnPoField_WaitForSpawn) {
        Actor_SetHeight(&this->actor, 42.0f);
        func_8002E4B4(globalCtx, &this->actor, 0.0f, 27.0f, 60.0f, 4);
        func_80AD619C(this);
        func_80AD6330(this);
        Collider_CylinderUpdate(&this->actor, &this->collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        if (this->collider.base.acFlags & 1) {
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        }
    }
}

s32 EnPoField_OverrideLimbDraw2(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                void* thisx, Gfx** gfxP) {
    EnPoField* this = THIS;

    if (this->lightColor.a == 0 || limbIndex == 7 || (this->actionFunc == EnPoField_Death && this->actionTimer >= 2)) {
        *dList = NULL;
    } else if (this->actor.params == EN_PO_FIELD_BIG) {
        if (limbIndex == 1) {
            *dList = D_06005900;
        } else if (limbIndex == 8) {
            *dList = D_06005620;
        } else if (limbIndex == 9) {
            *dList = D_060059F0;
        }
    }
    if (this->actionFunc == EnPoField_Disappear && limbIndex == 7) {
        Matrix_Scale(this->actionTimer * 0.0625f, this->actionTimer * 0.0625f, this->actionTimer * 0.0625f, 1);
    }
    return 0;
}

void EnPoField_PostLimDraw2(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx, Gfx** gfxP) {
    EnPoField* this = THIS;

    if (this->actionFunc == EnPoField_Death && this->actionTimer >= 2 && limbIndex == 8) {
        gSPMatrix((*gfxP)++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_field.c", 1916),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList((*gfxP)++, D_060066D0);
    }
    if (limbIndex == 7) {
        Vec3f vec;
        Matrix_MultVec3f(&D_80AD714C, &vec);
        if (this->actionFunc == EnPoField_Death && this->actionTimer >= 19 && this->actor.scale.x != 0.0f) {
            f32 mtxScale = 0.01f / this->actor.scale.x;
            Matrix_Scale(mtxScale, mtxScale, mtxScale, MTXMODE_APPLY);
        }
        Matrix_Get(&sLimb7Mtx);
        if (this->actionFunc == EnPoField_Death && this->actionTimer == 27) {
            this->actor.posRot.pos.x = sLimb7Mtx.wx;
            this->actor.posRot.pos.y = sLimb7Mtx.wy;
            this->actor.posRot.pos.z = sLimb7Mtx.wz;
        }
        Lights_PointGlowSetInfo(&this->lightInfo, vec.x, vec.y, vec.z, this->soulColor.r, this->soulColor.g,
                                this->soulColor.b, this->soulColor.a * 0.7843137383460999f);
    }
}

void EnPoField_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnPoField* this = THIS;
    EnPoFieldInfo* info = &sPoFieldInfo[this->actor.params];

    if (this->actionFunc != EnPoField_WaitForSpawn) {
        OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_po_field.c", 1976);
        func_80093D18(globalCtx->state.gfxCtx);
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(POLY_OPA_DISP++, 0x0A,
                   Gfx_EnvColor(globalCtx->state.gfxCtx, info->envColor.r, info->envColor.g, info->envColor.b, 255));
        if (this->lightColor.a == 255 || this->lightColor.a == 0) {
            gSPSegment(POLY_OPA_DISP++, 0x08,
                       Gfx_EnvColor(globalCtx->state.gfxCtx, this->lightColor.r, this->lightColor.g, this->lightColor.b,
                                    this->lightColor.a));
            gSPSegment(POLY_OPA_DISP++, 0x0C, D_80116280 + 2);
            POLY_OPA_DISP =
                SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                               EnPoField_OverrideLimbDraw2, EnPoField_PostLimDraw2, &this->actor, POLY_OPA_DISP);
        } else {
            gSPSegment(POLY_XLU_DISP++, 0x08,
                       Gfx_EnvColor(globalCtx->state.gfxCtx, this->lightColor.r, this->lightColor.g, this->lightColor.b,
                                    this->lightColor.a));
            gSPSegment(POLY_XLU_DISP++, 0x0C, D_80116280);
            POLY_XLU_DISP =
                SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl,
                               EnPoField_OverrideLimbDraw2, EnPoField_PostLimDraw2, &this->actor, POLY_XLU_DISP);
        }
        gDPPipeSync(POLY_OPA_DISP++);
        gDPSetEnvColor(POLY_OPA_DISP++, this->soulColor.r, this->soulColor.g, this->soulColor.b, 255);
        Matrix_Put(&sLimb7Mtx);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_field.c", 2033),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, D_06004BA0);
        gSPDisplayList(POLY_OPA_DISP++, D_06004CC0);
        CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_po_field.c", 2039);
    }
    EnPoField_DrawFlame(this, globalCtx);
}

void EnPoField_UpdateDead(Actor* thisx, GlobalContext* globalCtx) {
    EnPoField* this = THIS;

    this->actionFunc(this, globalCtx);
    if (this->actionFunc == EnPoField_SoulIdle) {
        func_80AD6330(this);
    }
    EnPoField_UpdateFlame(this, globalCtx);
}

void EnPoField_DrawSoul(Actor* thisx, GlobalContext* globalCtx) {
    EnPoField* this = THIS;
    s32 pad;
    EnPoFieldInfo* info = &sPoFieldInfo[this->actor.params];

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_po_field.c", 2077);
    if (this->actionFunc == EnPoField_SoulIdle) {
        func_80093D18(globalCtx->state.gfxCtx);
        gSPSegment(POLY_OPA_DISP++, 0x0A,
                   Gfx_EnvColor(globalCtx->state.gfxCtx, info->envColor.r, info->envColor.g, info->envColor.b, 255));
        Lights_PointGlowSetInfo(&this->lightInfo, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                                this->actor.posRot.pos.z, this->soulColor.r, this->soulColor.g, this->soulColor.b, 200);
        gDPSetEnvColor(POLY_OPA_DISP++, this->soulColor.r, this->soulColor.g, this->soulColor.b, 255);
        gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_field.c", 2104),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_OPA_DISP++, D_06004BA0);
        gSPDisplayList(POLY_OPA_DISP++, D_06004CC0);
    } else {
        func_80093D84(globalCtx->state.gfxCtx);
        gSPSegment(POLY_XLU_DISP++, 0x08,
                   Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0,
                                    (globalCtx->gameplayFrames * info->unk_9) & 0x1FF, 0x20, 0x80));
        gSPSegment(POLY_XLU_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(info->unk_C));
        gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, info->primColor.r, info->primColor.g, info->primColor.b,
                        this->lightColor.a);
        gDPSetEnvColor(POLY_XLU_DISP++, this->lightColor.r, this->lightColor.g, this->lightColor.b, 255);
        Matrix_RotateY((s16)(func_8005A9F4(ACTIVE_CAM) + 0x8000) * 9.58738e-05f, MTXMODE_APPLY);
        gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_po_field.c", 2143),
                  G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
        gSPDisplayList(POLY_XLU_DISP++, D_060023B0);
    }
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_po_field.c", 2149);
    EnPoField_DrawFlame(this, globalCtx);
}
