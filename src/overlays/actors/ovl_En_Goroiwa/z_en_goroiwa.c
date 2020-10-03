/*
 * File: z_en_goroiwa.c
 * Overlay: ovl_En_Goroiwa
 * Description: Rolling boulders
 */

#include "z_en_goroiwa.h"
#include "overlays/effects/ovl_Effect_Ss_Kakera/z_eff_ss_kakera.h"

#include <vt.h>

#define FLAGS 0x00000010

#define THIS ((EnGoroiwa*)thisx)

typedef s32 (*EnGoroiwaUnkFunc1)(EnGoroiwa* this, GlobalContext* globalCtx);
typedef void (*EnGoroiwaUnkFunc2)(EnGoroiwa* this);

void EnGoroiwa_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGoroiwa_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGoroiwa_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGoroiwa_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A4D5E0(EnGoroiwa* this);
void func_80A4D624(EnGoroiwa* this, GlobalContext* globalCtx);
void func_80A4D8CC(EnGoroiwa* this);
void func_80A4D944(EnGoroiwa* this, GlobalContext* globalCtx);
void func_80A4D9DC(EnGoroiwa* this);
void func_80A4DA3C(EnGoroiwa* this, GlobalContext* globalCtx);
void func_80A4DA7C(EnGoroiwa* this);
void func_80A4DAD0(EnGoroiwa* this, GlobalContext* globalCtx);
void func_80A4DB90(EnGoroiwa* this);
void func_80A4DC00(EnGoroiwa* this, GlobalContext* globalCtx);

const ActorInit En_Goroiwa_InitVars = {
    ACTOR_EN_GOROIWA,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GOROIWA,
    sizeof(EnGoroiwa),
    (ActorFunc)EnGoroiwa_Init,
    (ActorFunc)EnGoroiwa_Destroy,
    (ActorFunc)EnGoroiwa_Update,
    (ActorFunc)EnGoroiwa_Draw,
};

static ColliderJntSphItemInit sJntSphItemsInit[] = {
    {
        { 0x00, { 0x20000000, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 0, { { 0, 0, 0 }, 58 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x39, 0x20, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

static CollisionCheckInfoInit sColChkInfoInit = { 0, 12, 60, 254 };

// Unused
static f32 D_80A4DEBC[] = { 10.0f, 9.2f };

extern Gfx D_0400D340[];
extern Gfx D_060006B0[];

void func_80A4BCA0(EnGoroiwa* this) {
    static f32 colliderHeightOffset[] = { 0.0f, 59.5f };
    Sphere16* worldSphere = &this->collider.list[0].dim.worldSphere;

    worldSphere->center.x = this->actor.posRot.pos.x;
    worldSphere->center.y = this->actor.posRot.pos.y + colliderHeightOffset[(this->actor.params >> 10) & 1];
    worldSphere->center.z = this->actor.posRot.pos.z;
}

void func_80A4BD04(EnGoroiwa* this, GlobalContext* globalCtx) {
    s32 pad;

    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, this->colliderItems);
    func_80A4BCA0(this);
    this->collider.list[0].dim.worldSphere.radius = 58;
}

void func_80A4BD70(EnGoroiwa* this, u8 arg1) {
    this->unk_1D3 &= ~3;
    this->unk_1D3 |= arg1;
}

s32 EnGoroiwa_Vec3fNormalize(Vec3f* ret, Vec3f* a) {
    f32 magnitude = Math3D_Vec3fMagnitude(a);
    f32 scale;

    if (magnitude < 0.001f) {
        return false;
    }

    scale = 1.0f / magnitude;

    ret->x = a->x * scale;
    ret->y = a->y * scale;
    ret->z = a->z * scale;

    return true;
}

void EnGoroiwa_SetSpeed(EnGoroiwa* this, GlobalContext* globalCtx) {
    if (globalCtx->sceneNum == SCENE_SPOT04) {
        this->isInKokiri = true;
        mREG(12) = 920;
    } else {
        this->isInKokiri = false;
        mREG(12) = 1000;
    }
}

void func_80A4BE54(EnGoroiwa* this, GlobalContext* globalCtx) {
    Path* path = &globalCtx->setupPathList[this->actor.params & 0xFF];
    Vec3s* nextPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->nextWaypoint;
    Vec3f nextPosF;

    nextPosF.x = nextPos->x;
    nextPosF.y = nextPos->y;
    nextPosF.z = nextPos->z;

    this->actor.posRot.rot.y = Math_Vec3f_Yaw(&this->actor.posRot.pos, &nextPosF);
}

void func_80A4BF28(EnGoroiwa* this, GlobalContext* globalCtx, Vec3f* arg2) {
    s16 temp_v0 = (this->actor.params >> 8) & 3;
    Path* path = &globalCtx->setupPathList[this->actor.params & 0xFF];
    s16 temp_t0 = this->currentWaypoint - this->pathDirection;
    Vec3s* pointPos;
    Vec3s* currentPointPos;

    if (temp_t0 < 0) {
        if (temp_v0 == 0 || temp_v0 == 1) {
            temp_t0 = this->endWaypoint;
        } else if (temp_v0 == 3) {
            temp_t0 = 1;
        }
    } else if (this->endWaypoint < temp_t0) {
        if (temp_v0 == 0 || temp_v0 == 1) {
            temp_t0 = 0;
        } else if (temp_v0 == 3) {
            temp_t0 = this->endWaypoint - 1;
        }
    }

    currentPointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->currentWaypoint;
    pointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + temp_t0;
    arg2->x = currentPointPos->x - pointPos->x;
    arg2->y = currentPointPos->x - pointPos->y;
    arg2->z = currentPointPos->x - pointPos->z;
}

void func_80A4C080(EnGoroiwa* this) {
    s16 temp_v0 = (this->actor.params >> 8) & 3;

    if (this->nextWaypoint < 0) {
        if (temp_v0 == 0 || temp_v0 == 1) {
            this->currentWaypoint = this->endWaypoint;
            this->nextWaypoint = this->endWaypoint - 1;
            this->pathDirection = -1;
        } else if (temp_v0 == 3) {
            this->currentWaypoint = 0;
            this->nextWaypoint = 1;
            this->pathDirection = 1;
        }
    } else if (this->nextWaypoint > this->endWaypoint) {
        if (temp_v0 == 0 || temp_v0 == 1) {
            this->currentWaypoint = 0;
            this->nextWaypoint = 1;
            this->pathDirection = 1;
        } else if (temp_v0 == 3) {
            this->currentWaypoint = this->endWaypoint;
            this->nextWaypoint = this->endWaypoint - 1;
            this->pathDirection = -1;
        }
    }
}

void func_80A4C134(EnGoroiwa* this) {
    this->currentWaypoint = this->nextWaypoint;
    this->nextWaypoint += this->pathDirection;
    func_80A4C080(this);
}

void func_80A4C164(EnGoroiwa* this) {
    this->pathDirection *= -1;
    this->currentWaypoint = this->nextWaypoint;
    this->nextWaypoint += this->pathDirection;
}

void func_80A4C188(EnGoroiwa* this, GlobalContext* globalCtx) {
    this->endWaypoint = globalCtx->setupPathList[this->actor.params & 0xFF].count - 1;
    this->currentWaypoint = 0;
    this->nextWaypoint = 1;
    this->pathDirection = 1;
}

void func_80A4C1C4(EnGoroiwa* this, GlobalContext* globalCtx, s32 waypoint) {
    Path* path = &globalCtx->setupPathList[this->actor.params & 0xFF];
    Vec3s* pointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + waypoint;

    this->actor.posRot.pos.x = pointPos->x;
    this->actor.posRot.pos.y = pointPos->y;
    this->actor.posRot.pos.z = pointPos->z;
}

void func_80A4C264(EnGoroiwa* this) {
    this->unk_1B0.x = 1.0f;
    this->unk_1C0 = 1.0f;
}

s32 func_80A4C27C(EnGoroiwa* this, GlobalContext* globalCtx) {
    s32 pad;
    Path* path = &globalCtx->setupPathList[this->actor.params & 0xFF];
    Vec3s* nextPointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->nextWaypoint;
    Vec3s* currentPointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->currentWaypoint;

    if (nextPointPos->x == currentPointPos->x && nextPointPos->z == currentPointPos->z) {
        if (nextPointPos->y == currentPointPos->y) {
            // Translation: Error: Invalid path data (points overlap)
            osSyncPrintf("Error : レールデータ不正(点が重なっている)");
            osSyncPrintf("(%s %d)(arg_data 0x%04x)\n", "../z_en_gr.c", 559, this->actor.params);
        }

        if (nextPointPos->y > currentPointPos->y) {
            return 1;
        } else {
            return -1;
        }
    }

    return 0;
}

void EnGoroiwa_SpawnDust(GlobalContext* globalCtx, Vec3f* pos) {
    static Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    static Vec3f accel = { 0.0f, 0.3f, 0.0f };
    Vec3f randPos;
    s32 i;
    s16 angle = 0;

    for (i = 0; i < 8; i++) {
        angle += 0x4E20;
        randPos.x = pos->x + ((47.0f * ((Math_Rand_ZeroOne() * 0.5f) + 0.5f)) * Math_Sins(angle));
        randPos.y = pos->y + ((Math_Rand_ZeroOne() - 0.5f) * 40.0f);
        randPos.z = pos->z + ((47.0f * ((Math_Rand_ZeroOne() * 0.5f) + 0.5f))) * Math_Coss(angle);
        func_800286CC(globalCtx, &randPos, &velocity, &accel, (s16)(Math_Rand_ZeroOne() * 30.0f) + 100, 80);
        func_800286CC(globalCtx, &randPos, &velocity, &accel, (s16)(Math_Rand_ZeroOne() * 20.0f) + 80, 80);
    }
}

void EnGoroiwa_SpawnWaterEffects(GlobalContext* globalCtx, Vec3f* contactPos) {
    Vec3f splashPos;
    s32 i;
    s16 angle = 0;

    for (i = 0; i < 11; i++) {
        angle += 0x1746;
        splashPos.x = contactPos->x + (Math_Sins(angle) * 55.0f);
        splashPos.y = contactPos->y;
        splashPos.z = contactPos->z + (Math_Coss(angle) * 55.0f);
        EffectSsGSplash_Spawn(globalCtx, &splashPos, 0, 0, 0, 350);
    }

    EffectSsGRipple_Spawn(globalCtx, contactPos, 300, 700, 0);
    EffectSsGRipple_Spawn(globalCtx, contactPos, 500, 900, 4);
    EffectSsGRipple_Spawn(globalCtx, contactPos, 500, 1300, 8);
}

s32 func_80A4C6C8(EnGoroiwa* this, GlobalContext* globalCtx) {
    Path* path;
    s32 result;
    s32 pad;
    Vec3s* nextPointPos;

    Math_ApproxF(&this->actor.speedXZ, mREG(12) * 0.01f, 0.3f);
    func_8002D868(&this->actor);
    path = &globalCtx->setupPathList[this->actor.params & 0xFF];
    nextPointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->nextWaypoint;
    result = Math_ApproxF(&this->actor.posRot.pos.x, nextPointPos->x, fabsf(this->actor.velocity.x)) & 1;
    result &= Math_ApproxF(&this->actor.posRot.pos.z, nextPointPos->z, fabsf(this->actor.velocity.z));
    this->actor.posRot.pos.y += this->actor.velocity.y;
    return result;
}

s32 func_80A4C814(EnGoroiwa* this, GlobalContext* globalCtx) {
    Path* path = &globalCtx->setupPathList[this->actor.params & 0xFF];
    s32 pad;
    Vec3s* nextPointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->nextWaypoint;
    Vec3s* currentPointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->currentWaypoint;
    s32 result;
    Vec3f posDiff;
    Vec3f nextPointPosF;

    nextPointPosF.x = nextPointPos->x;
    nextPointPosF.y = nextPointPos->y;
    nextPointPosF.z = nextPointPos->z;
    Math_ApproxF(&this->actor.speedXZ, mREG(12) * 0.01f, 0.3f);
    if (Math3D_Vec3fDistSq(&nextPointPosF, &this->actor.posRot.pos) < 25.0f) {
        Math_Vec3f_Diff(&nextPointPosF, &this->actor.posRot.pos, &posDiff);
    } else {
        posDiff.x = nextPointPosF.x - currentPointPos->x;
        posDiff.y = nextPointPosF.y - currentPointPos->y;
        posDiff.z = nextPointPosF.z - currentPointPos->z;
    }
    EnGoroiwa_Vec3fNormalize(&this->actor.velocity, &posDiff);
    this->actor.velocity.x *= this->actor.speedXZ;
    this->actor.velocity.y *= this->actor.speedXZ;
    this->actor.velocity.z *= this->actor.speedXZ;
    result = Math_ApproxF(&this->actor.posRot.pos.x, nextPointPosF.x, fabsf(this->actor.velocity.x)) & 1;
    result &= Math_ApproxF(&this->actor.posRot.pos.y, nextPointPosF.y, fabsf(this->actor.velocity.y));
    result &= Math_ApproxF(&this->actor.posRot.pos.z, nextPointPosF.z, fabsf(this->actor.velocity.z));
    return result;
}

s32 func_80A4CA50(EnGoroiwa* this, GlobalContext* globalCtx) {
    s32 pad;
    Path* path = &globalCtx->setupPathList[this->actor.params & 0xFF];
    Vec3s* nextPointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->nextWaypoint;

    Math_ApproxF(&this->actor.velocity.y, (mREG(12) * 0.01f) * 0.5f, 0.18f);
    this->actor.posRot.pos.x = nextPointPos->x;
    this->actor.posRot.pos.z = nextPointPos->z;
    return Math_ApproxF(&this->actor.posRot.pos.y, nextPointPos->y, fabsf(this->actor.velocity.y));
}

s32 func_80A4CB78(EnGoroiwa* this, GlobalContext* globalCtx) {
    s32 pad;
    Path* path = &globalCtx->setupPathList[this->actor.params & 0xFF];
    Vec3s* nextPointPos = (Vec3s*)SEGMENTED_TO_VIRTUAL(path->points) + this->nextWaypoint;
    f32 nextPointY;
    f32 thisY;
    f32 temp;
    s32 quakeIdx;
    CollisionPoly* sp68;
    Vec3f sp5C;
    f32 temp_f0_2;
    s32 pad2;
    u32 sp50;
    Vec3f sp44;
    WaterBox* waterBox;
    f32 ySurface;
    Vec3f sp30;

    nextPointY = nextPointPos->y;
    Math_ApproxF(&this->actor.velocity.y, -14.0f, 1.0f);
    this->actor.posRot.pos.x = nextPointPos->x;
    this->actor.posRot.pos.z = nextPointPos->z;
    thisY = this->actor.posRot.pos.y;
    if (1) {}
    this->actor.posRot.pos.y += this->actor.velocity.y;
    if (this->actor.velocity.y < 0.0f && this->actor.posRot.pos.y <= nextPointY) {
        if (this->unk_1C6 == 0) {
            if (this->actor.xzDistFromLink < 600.0f) {
                quakeIdx = Quake_Add(ACTIVE_CAM, 3);
                Quake_SetSpeed(quakeIdx, -0x3CB0);
                Quake_SetQuakeValues(quakeIdx, 3, 0, 0, 0);
                Quake_SetCountdown(quakeIdx, 7);
            }
            this->unk_1C0 = 0.0f;
            if (!(this->unk_1D3 & 0x10)) {
                sp5C.x = this->actor.posRot.pos.x;
                sp5C.y = this->actor.posRot.pos.y + 50.0f;
                sp5C.z = this->actor.posRot.pos.z;
                temp_f0_2 = func_8003CA0C(globalCtx, &globalCtx->colCtx, &sp68, &sp50, &this->actor, &sp5C);
                // temp needed to match
                temp = temp_f0_2 - (this->actor.posRot.pos.y - 59.5f);
                if (fabsf(temp) < 15.0f) {
                    sp44.x = this->actor.posRot.pos.x;
                    sp44.y = temp_f0_2 + 10.0f;
                    sp44.z = this->actor.posRot.pos.z;
                    EnGoroiwa_SpawnDust(globalCtx, &sp44);
                }
            }
        }
        if (this->unk_1C6 > 0) {
            return true;
        }
        this->unk_1C6 += 1;
        this->actor.velocity.y *= -0.3f;
        this->actor.posRot.pos.y = nextPointY - ((this->actor.posRot.pos.y - nextPointY) * 0.3f);
    }
    if (this->unk_1C6 == 0 &&
        func_80042244(globalCtx, &globalCtx->colCtx, this->actor.posRot.pos.x, this->actor.posRot.pos.z, &ySurface,
                      &waterBox) &&
        this->actor.posRot.pos.y <= ySurface) {
        this->unk_1D3 |= 0x10;
        if (ySurface < thisY) {
            sp30.x = this->actor.posRot.pos.x;
            sp30.y = ySurface;
            sp30.z = this->actor.posRot.pos.z;
            EnGoroiwa_SpawnWaterEffects(globalCtx, &sp30);
            this->actor.velocity.y *= 0.2f;
        }
        if (this->actor.velocity.y < -8.0f) {
            this->actor.velocity.y = -8.0f;
        }
    }
    return false;
}

void func_80A4CED8(EnGoroiwa* this, GlobalContext* globalCtx) {
    static Vec3f unitY = { 0.0f, 1.0f, 0.0f };
    s32 pad;
    Vec3f* temp;
    f32 sp8C;
    Vec3f sp80;
    Vec3f sp74;
    MtxF mtx;
    Vec3f sp28;

    if (this->unk_1D3 & 8) {
        sp8C = this->unk_1BC;
    } else {
        this->unk_1BC = Math3D_Vec3f_DistXYZ(&this->actor.posRot.pos, &this->actor.pos4) * 0.016806724f;
        sp8C = this->unk_1BC;
    }
    sp8C *= this->unk_1C0;
    // temp assignment needed to match
    temp = &sp80;
    if (this->unk_1D3 & 8) {
        func_80A4BF28(this, globalCtx, &sp28);
        Math3D_Vec3f_Cross(&unitY, &this->actor.velocity, temp);
    } else {
        Math3D_Vec3f_Cross(&unitY, &this->actor.velocity, temp);
    }

    if (EnGoroiwa_Vec3fNormalize(&sp74, temp)) {
        this->unk_1B0 = sp74;
    } else {
        sp74 = this->unk_1B0;
    }

    func_800D23FC(sp8C, &sp74, 0);
    Matrix_RotateY(this->actor.shape.rot.y * (2.0f * M_PI / 0x10000), 1);
    Matrix_RotateX(this->actor.shape.rot.x * (2.0f * M_PI / 0x10000), 1);
    Matrix_RotateZ(this->actor.shape.rot.z * (2.0f * M_PI / 0x10000), 1);
    Matrix_Get(&mtx);
    func_800D20CC(&mtx, &this->actor.shape.rot, 0);
}

void func_80A4D074(EnGoroiwa* this, GlobalContext* globalCtx) {
    s16 temp_v0 = (this->actor.params >> 8) & 3;

    func_80A4C134(this);

    if (temp_v0 == 0 || temp_v0 == 1) {
        if (this->currentWaypoint == 0 || this->currentWaypoint == this->endWaypoint) {
            func_80A4C1C4(this, globalCtx, this->currentWaypoint);
        }
    }

    func_80A4BE54(this, globalCtx);
}

void func_80A4D0FC(EnGoroiwa* this, GlobalContext* globalCtx) {
    static f32 colliderHeightOffset[] = { 0.0f, 59.5f };
    s16 angle1;
    s16 angle2;
    s32 pad;
    Vec3f* thisPos = &this->actor.posRot.pos;
    Vec3f effectPos;
    Vec3f fragmentVelocity;
    f32 temp_f24;
    f32 temp_f22;
    f32 temp_f20;
    f32 temp_f20_2;
    s16 temp_v0 = (this->actor.params >> 10) & 1;
    s32 i;

    for (i = 0, angle1 = 0; i < 16; i++, angle1 += 0x4E20) {
        temp_f22 = Math_Sins(angle1);
        temp_f24 = Math_Coss(angle1);
        angle2 = Math_Rand_ZeroOne() * 0xFFFF;
        effectPos.x = ((Math_Rand_ZeroOne() * 50.0f) * temp_f22) * Math_Sins(angle2);
        temp_f20_2 = Math_Sins(angle2);
        effectPos.y = (((Math_Rand_ZeroOne() - 0.5f) * 100.0f) * temp_f20_2) + colliderHeightOffset[temp_v0];
        effectPos.z = ((Math_Rand_ZeroOne() * 50.0f) * temp_f24) * Math_Sins(angle2);
        fragmentVelocity.x = effectPos.x * 0.2f;
        fragmentVelocity.y = (Math_Rand_ZeroOne() * 15.0f) + 2.0f;
        fragmentVelocity.z = effectPos.z * 0.2f;
        Math_Vec3f_Sum(&effectPos, thisPos, &effectPos);
        EffectSsKakera_Spawn(globalCtx, &effectPos, &fragmentVelocity, &effectPos, -340, 33, 28, 2, 0,
                             (Math_Rand_ZeroOne() * 7.0f) + 1.0f, 1, 0, 70, KAKERA_COLOR_NONE, 1, D_0400D340);
    }

    effectPos.x = thisPos->x;
    effectPos.y = thisPos->y + colliderHeightOffset[temp_v0];
    effectPos.z = thisPos->z;
    func_80033480(globalCtx, &effectPos, 80.0f, 5, 70, 110, 1);
    func_80033480(globalCtx, &effectPos, 90.0f, 5, 110, 160, 1);
}

static InitChainEntry sInitChain[] = {
    ICHAIN_F32_DIV1000(gravity, -860, ICHAIN_CONTINUE), ICHAIN_F32_DIV1000(minVelocityY, -15000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),  ICHAIN_F32(uncullZoneForward, 1500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 150, ICHAIN_CONTINUE),  ICHAIN_F32(uncullZoneDownward, 1500, ICHAIN_STOP),
};

void EnGoroiwa_Init(Actor* thisx, GlobalContext* globalCtx) {
    static f32 D_80A4DF10[] = { 0.0f, 595.0f };
    EnGoroiwa* this = THIS;
    s32 pathIdx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    func_80A4BD04(this, globalCtx);
    pathIdx = this->actor.params & 0xFF;
    if (pathIdx == 0xFF) {
        // Translation: Error: Invalid arg_data
        osSyncPrintf("Ｅｒｒｏｒ : arg_data が不正(%s %d)(arg_data 0x%04x)\n", "../z_en_gr.c", 1033,
                     this->actor.params);
        Actor_Kill(&this->actor);
        return;
    }
    if (globalCtx->setupPathList[pathIdx].count < 2) {
        // Translation: Error: Invalid Path Data
        osSyncPrintf("Ｅｒｒｏｒ : レールデータ が不正(%s %d)\n", "../z_en_gr.c", 1043);
        Actor_Kill(&this->actor);
        return;
    }
    func_80061ED4(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    ActorShape_Init(&this->actor.shape, D_80A4DF10[(this->actor.params >> 10) & 1], ActorShadow_DrawFunc_Circle, 9.4f);
    this->actor.shape.unk_14 = 200;
    EnGoroiwa_SetSpeed(this, globalCtx);
    func_80A4C188(this, globalCtx);
    func_80A4C1C4(this, globalCtx, 0);
    func_80A4C264(this);
    func_80A4BE54(this, globalCtx);
    func_80A4D5E0(this);
    // Translation: (Goroiwa)
    osSyncPrintf("(ごろ岩)(arg 0x%04x)(rail %d)(end %d)(bgc %d)(hit %d)\n", this->actor.params,
                 this->actor.params & 0xFF, (this->actor.params >> 8) & 3, (this->actor.params >> 10) & 1,
                 this->actor.initPosRot.rot.z & 1);
}

void EnGoroiwa_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    Collider_DestroyJntSph(globalCtx, &THIS->collider);
}

void func_80A4D5E0(EnGoroiwa* this) {
    this->actionFunc = func_80A4D624;
    func_80A4BD70(this, 3);
    this->unk_1C0 = 1.0f;
}

static EnGoroiwaUnkFunc1 D_80A4DF18[] = { func_80A4C814, func_80A4C6C8 };
static EnGoroiwaUnkFunc2 D_80A4DF20[] = { func_80A4D9DC, func_80A4D8CC };

void func_80A4D624(EnGoroiwa* this, GlobalContext* globalCtx) {
    s32 temp_v0_5;
    s16 yawDiff;
    s16 temp_v1_2;

    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~2;
        this->unk_1D3 &= ~4;
        yawDiff = this->actor.yawTowardsLink - this->actor.posRot.rot.y;
        if (yawDiff > -0x4000 && yawDiff < 0x4000) {
            this->unk_1D3 |= 4;
            if ((this->actor.params >> 10) & 1 || (this->actor.initPosRot.rot.z & 1) != 1) {
                func_80A4C164(this);
                func_80A4BE54(this, globalCtx);
            }
        }
        func_8002F6D4(globalCtx, &this->actor, 2.0f, this->actor.yawTowardsLink, 0.0f, 0);
        osSyncPrintf(VT_FGCOL(CYAN));
        // Translation: Player knocked down
        osSyncPrintf("Player ぶっ飛ばし\n");
        osSyncPrintf(VT_RST);
        D_80A4DF20[(this->actor.params >> 10) & 1](this);
        func_8002F7DC(&PLAYER->actor, NA_SE_PL_BODY_HIT);
        if ((this->actor.initPosRot.rot.z & 1) == 1) {
            this->collisionTimer = 50;
        }
    } else if (D_80A4DF18[(this->actor.params >> 10) & 1](this, globalCtx)) {
        temp_v1_2 = (this->actor.params >> 8) & 3;
        if (temp_v1_2 == 1) {
            if (this->nextWaypoint == 0 || this->nextWaypoint == this->endWaypoint) {
                func_80A4D0FC(this, globalCtx);
            }
        }
        func_80A4D074(this, globalCtx);
        if ((temp_v1_2 == 3) && (this->currentWaypoint == 0 || this->currentWaypoint == this->endWaypoint)) {
            func_80A4D9DC(this);
        } else if (!((this->actor.params >> 10) & 1) && this->currentWaypoint != 0 &&
                   this->currentWaypoint != this->endWaypoint) {
            temp_v0_5 = func_80A4C27C(this, globalCtx);
            if (temp_v0_5 > 0) {
                func_80A4DA7C(this);
            } else if (temp_v0_5 < 0) {
                func_80A4DB90(this);
            } else {
                func_80A4D5E0(this);
            }
        } else {
            func_80A4D5E0(this);
        }
    }
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_BIGBALL_ROLL - SFX_FLAG);
}

void func_80A4D8CC(EnGoroiwa* this) {
    this->actionFunc = func_80A4D944;
    func_80A4BD70(this, 2);
    this->actor.gravity = -0.86f;
    this->actor.minVelocityY = -15.0f;
    this->actor.speedXZ *= 0.15f;
    this->actor.velocity.y = 5.0f;
    this->unk_1C0 = 1.0f;
}

void func_80A4D944(EnGoroiwa* this, GlobalContext* globalCtx) {
    func_80A4C6C8(this, globalCtx);
    if (this->actor.bgCheckFlags & 1 && this->actor.velocity.y < 0.0f) {
        if (this->unk_1D3 & 4 && (this->actor.initPosRot.rot.z & 1) == 1) {
            func_80A4C164(this);
            func_80A4BE54(this, globalCtx);
        }
        func_80A4D9DC(this);
    }
}

void func_80A4D9DC(EnGoroiwa* this) {
    static s16 waitDurations[] = { 20, 6 };

    this->actionFunc = func_80A4DA3C;
    this->actor.speedXZ = 0.0f;
    func_80A4BD70(this, 2);
    this->waitTimer = waitDurations[this->actor.initPosRot.rot.z & 1];
    this->unk_1C0 = 0.0f;
}

void func_80A4DA3C(EnGoroiwa* this, GlobalContext* globalCtx) {
    if (this->waitTimer > 0) {
        this->waitTimer--;
    } else {
        this->collider.base.atFlags &= ~2;
        func_80A4D5E0(this);
    }
}

void func_80A4DA7C(EnGoroiwa* this) {
    this->actionFunc = func_80A4DAD0;
    func_80A4BD70(this, 3);
    this->unk_1C0 = 0.0f;
    this->actor.velocity.y = fabsf(this->actor.speedXZ) * 0.1f;
}

void func_80A4DAD0(EnGoroiwa* this, GlobalContext* globalCtx) {
    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~2;
        func_8002F6D4(globalCtx, &this->actor, 2.0f, this->actor.yawTowardsLink, 0.0f, 4);
        func_8002F7DC(&PLAYER->actor, NA_SE_PL_BODY_HIT);
        if ((this->actor.initPosRot.rot.z & 1) == 1) {
            this->collisionTimer = 50;
        }
    } else if (func_80A4CA50(this, globalCtx)) {
        func_80A4D074(this, globalCtx);
        func_80A4D5E0(this);
        this->actor.speedXZ = 0.0f;
    }
}

void func_80A4DB90(EnGoroiwa* this) {
    this->actionFunc = func_80A4DC00;
    func_80A4BD70(this, 3);
    this->unk_1C0 = 0.3f;
    this->unk_1C6 = 0;
    this->actor.velocity.y = fabsf(this->actor.speedXZ) * -0.3f;
    this->unk_1D3 |= 8;
    this->unk_1D3 &= ~0x10;
}

void func_80A4DC00(EnGoroiwa* this, GlobalContext* globalCtx) {
    if (this->collider.base.atFlags & 2) {
        this->collider.base.atFlags &= ~2;
        func_8002F6D4(globalCtx, &this->actor, 2.0f, this->actor.yawTowardsLink, 0.0f, 4);
        func_8002F7DC(&PLAYER->actor, NA_SE_PL_BODY_HIT);
        if ((this->actor.initPosRot.rot.z & 1) == 1) {
            this->collisionTimer = 50;
        }
    } else if (func_80A4CB78(this, globalCtx)) {
        func_80A4D074(this, globalCtx);
        func_80A4D5E0(this);
        this->unk_1D3 &= ~8;
        this->actor.speedXZ = 0.0f;
    }
}

void EnGoroiwa_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnGoroiwa* this = THIS;
    Player* player = PLAYER;
    s32 pad;
    UNK_TYPE sp30;

    if (!(player->stateFlags1 & 0x300000C0)) {
        if (this->collisionTimer > 0) {
            this->collisionTimer--;
        }
        this->actionFunc(this, globalCtx);
        switch ((this->actor.params >> 10) & 1) {
            case 1:
                func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 0x1C);
                break;
            case 0:
                this->actor.groundY = func_8003C9A4(&globalCtx->colCtx, &this->actor.floorPoly, &sp30, &this->actor,
                                                    &this->actor.posRot.pos);
                break;
        }
        func_80A4CED8(this, globalCtx);
        if (this->actor.xzDistFromLink < 300.0f) {
            func_80A4BCA0(this);
            if (this->unk_1D3 & 1 && this->collisionTimer <= 0) {
                CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            }
            if (this->unk_1D3 & 2 && this->collisionTimer <= 0) {
                CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            }
        }
    }
}

void EnGoroiwa_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_060006B0);
}
