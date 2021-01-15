/**
 * File: z_en_honotrap.c
 * Overlay: ovl_En_Honotrap
 * Description: Fake eye switches and Dampe flames
 */

#include "z_en_honotrap.h"

#define FLAGS 0x00000010

#define THIS ((EnHonotrap*)thisx)

#define HONOTRAP_AT_ACTIVE (1 << 0)
#define HONOTRAP_AC_ACTIVE (1 << 1)
#define HONOTRAP_OC_ACTIVE (1 << 2)

typedef enum {
    /* 0 */ HONOTRAP_EYE_OPEN,
    /* 1 */ HONOTRAP_EYE_HALF,
    /* 2 */ HONOTRAP_EYE_CLOSE,
    /* 3 */ HONOTRAP_EYE_SHUT
} EnHonotrapEyeState;

void EnHonotrap_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHonotrap_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHonotrap_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHonotrap_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnHonotrap_SetupEyeIdle(EnHonotrap* this);
void EnHonotrap_EyeIdle(EnHonotrap* this, GlobalContext* globalCtx);
void EnHonotrap_SetupEyeOpen(EnHonotrap* this);
void EnHonotrap_EyeOpen(EnHonotrap* this, GlobalContext* globalCtx);
void EnHonotrap_SetupEyeAttack(EnHonotrap* this);
void EnHonotrap_EyeAttack(EnHonotrap* this, GlobalContext* globalCtx);
void EnHonotrap_SetupEyeClose(EnHonotrap* this);
void EnHonotrap_EyeClose(EnHonotrap* this, GlobalContext* globalCtx);

void EnHonotrap_SetupFlame(EnHonotrap* this);
void EnHonotrap_Flame(EnHonotrap* this, GlobalContext* globalCtx);
void EnHonotrap_SetupFlameDrop(EnHonotrap* this);
void EnHonotrap_FlameDrop(EnHonotrap* this, GlobalContext* globalCtx);

void EnHonotrap_SetupFlameMove(EnHonotrap* this);
void EnHonotrap_FlameMove(EnHonotrap* this, GlobalContext* globalCtx);
void EnHonotrap_SetupFlameChase(EnHonotrap* this);
void EnHonotrap_FlameChase(EnHonotrap* this, GlobalContext* globalCtx);
void EnHonotrap_SetupFlameVanish(EnHonotrap* this);
void EnHonotrap_FlameVanish(EnHonotrap* this, GlobalContext* globalCtx);

extern Gfx D_0404D4E0[];
extern Gfx D_05006810[];

const ActorInit En_Honotrap_InitVars = {
    ACTOR_EN_HONOTRAP,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_DANGEON_KEEP,
    sizeof(EnHonotrap),
    (ActorFunc)EnHonotrap_Init,
    (ActorFunc)EnHonotrap_Destroy,
    (ActorFunc)EnHonotrap_Update,
    (ActorFunc)EnHonotrap_Draw,
};

static ColliderTrisItemInit sTrisElementsInit[2] = {
    {
        { 0x04, { 0x00000000, 0x00, 0x00 }, { 0x0001F824, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 0.0f, 23.0f, 8.5f }, { -23.0f, 0.0f, 8.5f }, { 0.0f, -23.0f, 8.5f } } },
    },
    {
        { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x0001F824, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { { { 0.0f, 23.0f, 8.5f }, { 0.0f, -23.0f, 8.5f }, { 23.0f, 0.0f, 8.5f } } },
    },
};

static ColliderTrisInit sTrisInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x00, COLSHAPE_TRIS },
    2,
    sTrisElementsInit,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x01, 0x04 }, { 0x00100000, 0x00, 0x00 }, 0x19, 0x01, 0x01 },
    { 10, 25, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 0, 9, 23, 1 };

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

void EnHonotrap_FlameCollisionCheck(EnHonotrap* this, GlobalContext* globalCtx) {
    s32 pad[3];

    Collider_CylinderUpdate(&this->actor, &this->collider.cyl);
    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.cyl.base);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.cyl.base);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.cyl.base);
    this->colChkFlags |= HONOTRAP_AT_ACTIVE;
    this->colChkFlags |= HONOTRAP_AC_ACTIVE;
    this->colChkFlags |= HONOTRAP_OC_ACTIVE;
}

void EnHonotrap_GetNormal(Vec3f* normal, Vec3f* vec) {
    f32 mag = Math3D_Vec3fMagnitude(vec);

    if (mag < 0.001f) {
        osSyncPrintf("Warning : vector size zero (%s %d)\n", "../z_en_honotrap.c", 328, normal);

        normal->x = normal->y = 0.0f;
        normal->z = 1.0f;
    } else {
        normal->x = vec->x * (1.0f / mag);
        normal->y = vec->y * (1.0f / mag);
        normal->z = vec->z * (1.0f / mag);
    }
}

void EnHonotrap_InitEye(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnHonotrap* this = THIS;
    s32 i;
    s32 j;
    Vec3f* vtx;
    Vec3f triangle[3];
    f32 cos;
    f32 sin;

    Actor_SetScale(thisx, 0.1f);
    sin = Math_SinS(thisx->initPosRot.rot.y);
    cos = Math_CosS(thisx->initPosRot.rot.y);
    Collider_InitTris(globalCtx, &this->collider.tris);
    Collider_SetTris(globalCtx, &this->collider.tris, thisx, &sTrisInit, this->collider.elements);

    for (i = 0; i < 2; i++) {
        for (j = 0, vtx = triangle; j < 3; j++, vtx++) {
            Vec3f* baseVtx = &sTrisInit.list[i].dim.vtx[j];

            vtx->x = baseVtx->z * sin + baseVtx->x * cos;
            vtx->y = baseVtx->y;
            vtx->z = baseVtx->z * cos - baseVtx->x * sin;
            Math_Vec3f_Sum(vtx, &thisx->posRot.pos, vtx);
        }
        func_800627A0(&this->collider.tris, i, &triangle[0], &triangle[1], &triangle[2]);
    }
    EnHonotrap_SetupEyeIdle(this);
    Actor_SetHeight(thisx, 0.0f);
}

void EnHonotrap_InitFlame(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnHonotrap* this = THIS;

    Actor_SetScale(&this->actor, 0.0001f);
    Collider_InitCylinder(globalCtx, &this->collider.cyl);
    Collider_SetCylinder(globalCtx, &this->collider.cyl, &this->actor, &sCylinderInit);
    Collider_CylinderUpdate(&this->actor, &this->collider.cyl);
    this->actor.minVelocityY = -1.0f;
    func_80061ED4(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    this->actor.shape.unk_14 = 0x80;
    this->targetPos = PLAYER->actor.posRot.pos;
    this->targetPos.y += 10.0f;
    this->flameScroll = Rand_ZeroOne() * 511.0f;
    EnHonotrap_SetupFlame(this);
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_FLAME_IGNITION);
    if (this->actor.params == HONOTRAP_FLAME_DROP) {
        this->actor.room = -1;
        this->collider.cyl.dim.radius = 12;
        this->collider.cyl.dim.height = 30;
        this->actor.shape.unk_08 = -1000.0f;
    }
}

void EnHonotrap_Init(Actor* thisx, GlobalContext* globalCtx) {
    Actor_ProcessInitChain(thisx, sInitChain);
    if (thisx->params == HONOTRAP_EYE) {
        EnHonotrap_InitEye(thisx, globalCtx);
    } else {
        EnHonotrap_InitFlame(thisx, globalCtx);
    }
}

void EnHonotrap_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnHonotrap* this = THIS;

    if (this->actor.params == HONOTRAP_EYE) {
        Collider_DestroyTris(globalCtx, &this->collider.tris);
    } else {
        Collider_DestroyCylinder(globalCtx, &this->collider.cyl);
    }
}

void EnHonotrap_SetupEyeIdle(EnHonotrap* this) {
    this->actionFunc = EnHonotrap_EyeIdle;
    this->eyeState = HONOTRAP_EYE_SHUT;
}

void EnHonotrap_EyeIdle(EnHonotrap* this, GlobalContext* globalCtx) {
    if (this->actor.child != NULL) {
        this->timer = 200;
    } else if ((this->timer <= 0) && (this->actor.xzDistToLink < 750.0f) && (0.0f > this->actor.yDistToLink) &&
               (this->actor.yDistToLink > -700.0f) &&
               (-0x4000 < (this->actor.yawTowardsLink - this->actor.shape.rot.y)) &&
               ((this->actor.yawTowardsLink - this->actor.shape.rot.y) < 0x4000)) {
        EnHonotrap_SetupEyeOpen(this);
    }
}

void EnHonotrap_SetupEyeOpen(EnHonotrap* this) {
    this->actionFunc = EnHonotrap_EyeOpen;
    func_8003426C(&this->actor, 0x4000, 0xFF, 0, 0x28);
    this->timer = 30;
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_RED_EYE);
}

void EnHonotrap_EyeOpen(EnHonotrap* this, GlobalContext* globalCtx) {
    f32 cos;
    f32 sin;

    this->eyeState--;
    if (this->eyeState <= HONOTRAP_EYE_OPEN) {
        EnHonotrap_SetupEyeAttack(this);
        sin = Math_SinS(this->actor.shape.rot.y);
        cos = Math_CosS(this->actor.shape.rot.y);
        Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_HONOTRAP,
                           (sin * 12.0f) + this->actor.initPosRot.pos.x, this->actor.initPosRot.pos.y - 10.0f,
                           (cos * 12.0f) + this->actor.initPosRot.pos.z, this->actor.initPosRot.rot.x,
                           this->actor.initPosRot.rot.y, this->actor.initPosRot.rot.z, HONOTRAP_FLAME_MOVE);
    }
}

void EnHonotrap_SetupEyeAttack(EnHonotrap* this) {
    this->actionFunc = EnHonotrap_EyeAttack;
    this->eyeState = HONOTRAP_EYE_OPEN;
}

void EnHonotrap_EyeAttack(EnHonotrap* this, GlobalContext* globalCtx) {
    if (this->timer <= 0) {
        EnHonotrap_SetupEyeClose(this);
    }
}

void EnHonotrap_SetupEyeClose(EnHonotrap* this) {
    this->actionFunc = EnHonotrap_EyeClose;
}

void EnHonotrap_EyeClose(EnHonotrap* this, GlobalContext* globalCtx) {
    this->eyeState++;
    if (this->eyeState >= HONOTRAP_EYE_SHUT) {
        EnHonotrap_SetupEyeIdle(this);
        this->timer = 200;
    }
}

void EnHonotrap_SetupFlame(EnHonotrap* this) {
    this->actionFunc = EnHonotrap_Flame;
}

void EnHonotrap_Flame(EnHonotrap* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 ready =
        Math_StepToF(&this->actor.scale.x, (this->actor.params == HONOTRAP_FLAME_MOVE) ? 0.004f : 0.0048f, 0.0006f);

    this->actor.scale.z = this->actor.scale.y = this->actor.scale.x;
    if (ready) {
        if (this->actor.params == HONOTRAP_FLAME_MOVE) {
            EnHonotrap_SetupFlameMove(this);
        } else {
            EnHonotrap_SetupFlameDrop(this);
        }
    }
}

void EnHonotrap_SetupFlameDrop(EnHonotrap* this) {
    this->timer = 40;
    this->actor.velocity.y = 1.0f;
    this->actor.velocity.x = 2.0f * Math_SinS(this->actor.posRot.rot.y);
    this->actor.velocity.z = 2.0f * Math_CosS(this->actor.posRot.rot.y);
    this->actionFunc = EnHonotrap_FlameDrop;
}

void EnHonotrap_FlameDrop(EnHonotrap* this, GlobalContext* globalCtx) {
    if ((this->collider.cyl.base.atFlags & 2) || (this->timer <= 0)) {
        if ((this->collider.cyl.base.atFlags & 2) && !(this->collider.cyl.base.atFlags & 4)) {
            func_8002F71C(globalCtx, &this->actor, 5.0f, this->actor.yawTowardsLink, 0.0f);
        }
        this->actor.velocity.x = this->actor.velocity.y = this->actor.velocity.z = 0.0f;
        EnHonotrap_SetupFlameVanish(this);
    } else {
        if (this->actor.velocity.y > 0.0f) {
            this->actor.posRot.pos.x += this->actor.velocity.x;
            this->actor.posRot.pos.z += this->actor.velocity.z;
            func_8002E4B4(globalCtx, &this->actor, 7.0f, 12.0f, 0.0f, 5);
        }
        if (!Math_StepToF(&this->actor.posRot.pos.y, this->actor.groundY + 1.0f, this->actor.velocity.y)) {
            this->actor.velocity.y += 1.0f;
        } else {
            this->actor.velocity.y = 0.0f;
        }
        EnHonotrap_FlameCollisionCheck(this, globalCtx);
    }
}

void EnHonotrap_SetupFlameMove(EnHonotrap* this) {
    f32 distFrac;

    this->actionFunc = EnHonotrap_FlameMove;

    distFrac = 1.0f / (func_8002DB6C(&this->actor, &this->targetPos) + 1.0f);
    this->actor.velocity.x = (this->targetPos.x - this->actor.posRot.pos.x) * distFrac;
    this->actor.velocity.y = (this->targetPos.y - this->actor.posRot.pos.y) * distFrac;
    this->actor.velocity.z = (this->targetPos.z - this->actor.posRot.pos.z) * distFrac;
    this->speedMod = 0.0f;

    this->timer = 160;
}

void EnHonotrap_FlameMove(EnHonotrap* this, GlobalContext* globalCtx) {
    s32 pad;
    Vec3f speed;
    s32 ready;

    Math_StepToF(&this->speedMod, 13.0f, 0.5f);
    speed.x = fabsf(this->speedMod * this->actor.velocity.x);
    speed.y = fabsf(this->speedMod * this->actor.velocity.y);
    speed.z = fabsf(this->speedMod * this->actor.velocity.z);
    ready = Math_StepToF(&this->actor.posRot.pos.x, this->targetPos.x, speed.x) & 1;
    ready &= Math_StepToF(&this->actor.posRot.pos.y, this->targetPos.y, speed.y);
    ready &= Math_StepToF(&this->actor.posRot.pos.z, this->targetPos.z, speed.z);
    func_8002E4B4(globalCtx, &this->actor, 7.0f, 10.0f, 0.0f, 0x1D);

    if (this->collider.tris.base.atFlags & 4) {
        Player* player = PLAYER;
        Vec3f shieldNorm;
        Vec3f tempVel;
        Vec3f shieldVec;

        shieldVec.x = -player->shieldMf.zx;
        shieldVec.y = -player->shieldMf.zy;
        shieldVec.z = -player->shieldMf.zz;
        EnHonotrap_GetNormal(&shieldNorm, &shieldVec);

        tempVel = this->actor.velocity;
        Math3D_Vec3fReflect(&tempVel, &shieldNorm, &this->actor.velocity);
        this->actor.speedXZ = this->speedMod * 0.5f;
        this->actor.posRot.rot.y = Math_Atan2S(this->actor.velocity.z, this->actor.velocity.x);
        EnHonotrap_SetupFlameVanish(this);
    } else if (this->collider.tris.base.atFlags & 2) {
        this->actor.velocity.y = this->actor.speedXZ = 0.0f;
        EnHonotrap_SetupFlameVanish(this);
    } else if (this->timer <= 0) {
        EnHonotrap_SetupFlameVanish(this);
    } else {
        EnHonotrap_FlameCollisionCheck(this, globalCtx);
        if (ready) {
            EnHonotrap_SetupFlameChase(this);
        }
    }
}

void EnHonotrap_SetupFlameChase(EnHonotrap* this) {
    this->actionFunc = EnHonotrap_FlameChase;

    this->actor.velocity.x = this->actor.velocity.y = this->actor.velocity.z = this->actor.speedXZ = 0.0f;
    this->actor.posRot.rot.x = this->actor.posRot.rot.y = this->actor.posRot.rot.z = 0;

    this->timer = 100;
}

void EnHonotrap_FlameChase(EnHonotrap* this, GlobalContext* globalCtx) {
    s32 pad;

    Math_ScaledStepToS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 0x300);
    Math_StepToF(&this->actor.speedXZ, 3.0f, 0.1f);
    this->actor.gravity = (-this->actor.yDistToLink < 10.0f) ? 0.08f : -0.08f;
    func_8002D868(&this->actor);
    if (this->actor.velocity.y > 1.0f) {
        this->actor.velocity.y = 1.0f;
    }
    this->actor.velocity.y *= 0.95f;
    func_8002D7EC(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 7.0f, 10.0f, 0.0f, 0x1D);
    if (this->collider.cyl.base.atFlags & 4) {
        Player* player = PLAYER;
        Vec3s shieldRot;

        func_800D20CC(&player->shieldMf, &shieldRot, false);
        this->actor.posRot.rot.y = ((shieldRot.y * 2) - this->actor.posRot.rot.y) + 0x8000;
        EnHonotrap_SetupFlameVanish(this);
    } else if (this->collider.cyl.base.atFlags & 2) {
        this->actor.speedXZ *= 0.1f;
        this->actor.velocity.y *= 0.1f;
        EnHonotrap_SetupFlameVanish(this);
    } else if ((this->actor.bgCheckFlags & 8) || (this->timer <= 0)) {
        EnHonotrap_SetupFlameVanish(this);
    } else {
        EnHonotrap_FlameCollisionCheck(this, globalCtx);
    }
}

void EnHonotrap_SetupFlameVanish(EnHonotrap* this) {
    this->actionFunc = EnHonotrap_FlameVanish;
}

void EnHonotrap_FlameVanish(EnHonotrap* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 ready = Math_StepToF(&this->actor.scale.x, 0.0001f, 0.00015f);

    this->actor.scale.z = this->actor.scale.y = this->actor.scale.x;
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 7.0f, 10.0f, 0.0f, 0x1D);
    if (ready) {
        Actor_Kill(&this->actor);
    }
}

void EnHonotrap_Update(Actor* thisx, GlobalContext* globalCtx) {
    static Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    static Vec3f accel = { 0.0f, 0.1f, 0.0f };
    s32 pad;
    EnHonotrap* this = THIS;

    if (this->timer > 0) {
        this->timer--;
    }
    if (this->actor.params == HONOTRAP_EYE) {
        if ((this->actor.child != NULL) && (this->actor.child->update == NULL)) {
            this->actor.child = NULL;
        }
    } else {
        this->colChkFlags = 0;
        this->bobPhase += 0x640;
        this->actor.shape.unk_08 = (Math_SinS(this->bobPhase) * 1000.0f) + 600.0f;
        Actor_SetHeight(&this->actor, 5.0f);
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_BURN_OUT - SFX_FLAG);
    }
    this->actionFunc(this, globalCtx);
    if (this->actor.params == HONOTRAP_EYE) {
        if (this->collider.tris.base.acFlags & 2) {
            EffectSsBomb2_SpawnLayered(globalCtx, &this->actor.posRot.pos, &velocity, &accel, 15, 8);
            Actor_Kill(&this->actor);
        } else if (this->eyeState < HONOTRAP_EYE_SHUT) {
            this->collider.tris.base.acFlags &= ~2;
            CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.tris.base);
        }
    }
}

void EnHonotrap_DrawEye(Actor* thisx, GlobalContext* globalCtx) {
    static void* eyeTextures[] = { 0x0500B0A0, 0x0500B8A0, 0x0500C0A0, 0x0500C0A0 };
    EnHonotrap* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_honotrap.c", 982);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTextures[this->eyeState]));
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_honotrap.c", 987),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_OPA_DISP++, D_05006810);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_honotrap.c", 991);
}

void EnHonotrap_DrawFlame(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnHonotrap* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_honotrap.c", 1000);

    func_80093D84(globalCtx->state.gfxCtx);
    this->flameScroll -= 20;
    this->flameScroll &= 0x1FF;
    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 0x20, 0x40, 1, 0, this->flameScroll, 0x20, 0x80));
    gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 255, 200, 0, 255);
    gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 0);
    Matrix_RotateY((s16)(Camera_GetCamDirYaw(ACTIVE_CAM) - this->actor.shape.rot.y + 0x8000) * 0.0000958738f,
                   MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_honotrap.c", 1024),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(POLY_XLU_DISP++, D_0404D4E0);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_honotrap.c", 1028);
}

void EnHonotrap_Draw(Actor* thisx, GlobalContext* globalCtx) {
    switch (thisx->params) {
        case HONOTRAP_EYE:
            EnHonotrap_DrawEye(thisx, globalCtx);
            break;
        case HONOTRAP_FLAME_MOVE:
        case HONOTRAP_FLAME_DROP:
            EnHonotrap_DrawFlame(thisx, globalCtx);
            break;
    }
}
