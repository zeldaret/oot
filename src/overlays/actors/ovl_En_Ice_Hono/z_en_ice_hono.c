#include "z_en_ice_hono.h"

#define FLAGS 0x00000000

#define THIS ((EnIceHono*)thisx)

void EnIceHono_Init(Actor* thisx, GlobalContext* globalCtx);
void EnIceHono_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnIceHono_Update(Actor* thisx, GlobalContext* globalCtx);
void EnIceHono_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnIceHono_CapturableFlame(EnIceHono* this, GlobalContext* globalCtx);
void EnIceHono_DropFlame(EnIceHono* this, GlobalContext* globalCtx);
void EnIceHono_SpreadFlames(EnIceHono* this, GlobalContext* globalCtx);
void EnIceHono_SmallFlameMove(EnIceHono* this, GlobalContext* globalCtx);

void EnIceHono_SetupActionCapturableFlame(EnIceHono* this);
void EnIceHono_SetupActionDroppedFlame(EnIceHono* this);
void EnIceHono_SetupActionSpreadFlames(EnIceHono* this);
void EnIceHono_SetupActionSmallFlame(EnIceHono* this);

extern Gfx D_0404D4E0[];

const ActorInit En_Ice_Hono_InitVars = {
    ACTOR_EN_ICE_HONO,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(EnIceHono),
    (ActorFunc)EnIceHono_Init,
    (ActorFunc)EnIceHono_Destroy,
    (ActorFunc)EnIceHono_Update,
    (ActorFunc)EnIceHono_Draw,
};

static ColliderCylinderInit sCylinderInitCapturableFlame = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 25, 80, 0, { 0, 0, 0 } },
};

static ColliderCylinderInit sCylinderInitDroppedFlame = {
    { COLTYPE_UNK10, 0x21, 0x00, 0x21, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
    { 12, 60, 0, { 0, 0, 0 } },
};

static InitChainEntry sInitChainCapturableFlame[] = {
    ICHAIN_U8(unk_1F, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(unk_4C, 60, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

static InitChainEntry sInitChainDroppedFlame[] = {
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

static InitChainEntry sInitChainSmallFlame[] = {
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 400, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

f32 EnIceHono_SquareDist(Vec3f* pos1, Vec3f* pos2) {
    f32 dx = pos1->x - pos2->x;
    f32 dz = pos1->z - pos2->z;

    return SQ(dx) + SQ(dz);
}

void EnIceHono_InitCapturableFlame(Actor* thisx, GlobalContext* globalCtx) {
    EnIceHono* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChainCapturableFlame);
    Actor_SetScale(&this->actor, 0.0074f);
    this->actor.flags |= 1;
    Actor_SetHeight(&this->actor, 10.0f);

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInitCapturableFlame);
    Collider_CylinderUpdate(&this->actor, &this->collider);

    this->actor.colChkInfo.mass = 0xFF;
    EnIceHono_SetupActionCapturableFlame(this);
}

void EnIceHono_InitDroppedFlame(Actor* thisx, GlobalContext* globalCtx) {
    EnIceHono* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChainDroppedFlame);
    this->actor.scale.x = this->actor.scale.z = this->actor.scale.y = 0.00002f;
    this->actor.gravity = -0.3f;
    this->actor.minVelocityY = -4.0f;
    this->actor.shape.unk_08 = 0.0f;
    this->actor.shape.rot.x = this->actor.shape.rot.y = this->actor.shape.rot.z = this->actor.posRot.rot.x =
        this->actor.posRot.rot.y = this->actor.posRot.rot.z = 0;

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInitDroppedFlame);
    Collider_CylinderUpdate(&this->actor, &this->collider);

    this->collider.dim.radius = this->actor.scale.x * 4000.4f;
    this->collider.dim.height = this->actor.scale.y * 8000.2f;
    this->actor.colChkInfo.mass = 253;
    EnIceHono_SetupActionDroppedFlame(this);
}

void EnIceHono_InitSmallFlame(Actor* thisx, GlobalContext* globalCtx) {
    EnIceHono* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChainSmallFlame);
    this->actor.scale.x = this->actor.scale.z = this->actor.scale.y = 0.0008f;
    this->actor.gravity = -0.3f;
    this->actor.minVelocityY = -4.0f;
    this->actor.shape.unk_08 = 0.0f;

    EnIceHono_SetupActionSmallFlame(this);
}

void EnIceHono_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnIceHono* this = THIS;
    s16 params = this->actor.params;

    switch (this->actor.params) {
        case -1:
            EnIceHono_InitCapturableFlame(&this->actor, globalCtx);
            break;
        case 0:
            EnIceHono_InitDroppedFlame(&this->actor, globalCtx);
            break;
        case 1:
        case 2:
            EnIceHono_InitSmallFlame(&this->actor, globalCtx);
            break;
    }

    if ((this->actor.params == -1) || (this->actor.params == 0)) {
        Lights_PointNoGlowSetInfo(&this->lightInfo, this->actor.posRot.pos.x, (s16)this->actor.posRot.pos.y + 10,
                                  this->actor.posRot.pos.z, 155, 210, 255, 0);
        this->lightNode = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &this->lightInfo);
        this->unk_154 = Math_Rand_ZeroOne() * (0x1FFFF / 2.0f);
        this->unk_156 = Math_Rand_ZeroOne() * (0x1FFFF / 2.0f);
        // Translates to: "(ice flame)"
        osSyncPrintf("(ice 炎)(arg_data 0x%04x)\n", this->actor.params);
    }
}

void EnIceHono_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnIceHono* this = THIS;

    if ((this->actor.params == -1) || (this->actor.params == 0)) {
        LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, this->lightNode);
        Collider_DestroyCylinder(globalCtx, &this->collider);
    }
}

u32 EnIceHono_LinkCloseAndFacing(EnIceHono* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->actor.xzDistFromLink < 60.0f) {
        Vec3f tempPos;
        tempPos.x = Math_Sins(this->actor.yawTowardsLink + 0x8000) * 40.0f + player->actor.posRot.pos.x;
        tempPos.y = player->actor.posRot.pos.y;
        tempPos.z = Math_Coss(this->actor.yawTowardsLink + 0x8000) * 40.0f + player->actor.posRot.pos.z;
        if (EnIceHono_SquareDist(&tempPos, &this->actor.posRot.pos) <= SQ(40.0f)) {
            return 1;
        }
    }
    return 0;
}

void EnIceHono_SetupActionCapturableFlame(EnIceHono* this) {
    this->actionFunc = EnIceHono_CapturableFlame;
    this->alpha = 255;
    this->actor.shape.unk_08 = -1000.0f;
}

void EnIceHono_CapturableFlame(EnIceHono* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actor.parent = NULL;
    } else if (EnIceHono_LinkCloseAndFacing(this, globalCtx)) {
        func_8002F434(&this->actor, globalCtx, 0x7E, 60.0f, 100.0f);
    }

    if (this->actor.xzDistFromLink < 200.0f) {
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
    func_8002F8F0(&this->actor, NA_SE_EV_FIRE_PILLAR_S - SFX_FLAG);
}

void EnIceHono_SetupActionDroppedFlame(EnIceHono* this) {
    this->actionFunc = EnIceHono_DropFlame;
    this->timer = 200;
    this->alpha = 255;
}

void EnIceHono_DropFlame(EnIceHono* this, GlobalContext* globalCtx) {
    u32 bgFlag = this->actor.bgCheckFlags & 1;

    Math_ApproxF(&this->actor.scale.x, 0.0017f, 0.00008f);
    this->actor.scale.z = this->actor.scale.x;
    Math_ApproxF(&this->actor.scale.y, 0.0017f, 0.00008f);

    if (bgFlag != 0) {
        s32 i;
        for (i = 0; i < 8; i++) {
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ICE_HONO, this->actor.posRot.pos.x,
                        this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0,
                        ((s32)(Math_Rand_ZeroOne() * 1000.0f) + i * 0x2000) - 0x1F4, 0, 1);
        }
        EnIceHono_SetupActionSpreadFlames(this);
    }
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 10.0f, this->actor.scale.x * 3500.0f, 0.0f, 5);

    Collider_CylinderUpdate(&this->actor, &this->collider);
    this->collider.dim.radius = this->actor.scale.x * 4000.0f;
    this->collider.dim.height = this->actor.scale.y * 8000.0f;
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);

    if (this->timer <= 0) {
        Actor_Kill(&this->actor);
    }
}

void EnIceHono_SetupActionSpreadFlames(EnIceHono* this) {
    this->actionFunc = EnIceHono_SpreadFlames;
    this->timer = 60;
    this->alpha = 255;
}

void EnIceHono_SpreadFlames(EnIceHono* this, GlobalContext* globalCtx) {
    if (this->timer > 20) {
        Math_ApproxF(&this->actor.scale.x, 0.011f, 0.00014f);
        Math_ApproxF(&this->actor.scale.y, 0.006f, 0.00012f);
    } else {
        Math_ApproxF(&this->actor.scale.x, 0.0001f, 0.00015f);
        Math_ApproxF(&this->actor.scale.y, 0.0001f, 0.00015f);
    }
    this->actor.scale.z = this->actor.scale.x;
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 10.0f, this->actor.scale.x * 3500.0f, 0.0f, 4);
    if (this->timer < 25) {
        this->alpha -= 10;
        this->alpha = CLAMP(this->alpha, 0, 255);
    }

    if ((this->alpha > 100) && (this->timer < 40)) {
        Collider_CylinderUpdate(&this->actor, &this->collider);
        this->collider.dim.radius = this->actor.scale.x * 6000.0f;
        this->collider.dim.height = this->actor.scale.y * 8000.0f;
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
    if (this->timer == 46) {
        s32 i;
        for (i = 0; i < 10; i++) {
            s32 rot = i * 0x1999;
            Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_EN_ICE_HONO, this->actor.posRot.pos.x,
                        this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0,
                        ((s32)(Math_Rand_ZeroOne() * 1000.0f) + rot) - 0x1F4, 0, 2);
        }
    }

    if (this->timer <= 0) {
        Actor_Kill(&this->actor);
    }
}

void EnIceHono_SetupActionSmallFlame(EnIceHono* this) {
    this->actionFunc = EnIceHono_SmallFlameMove;
    this->timer = 44;
    this->alpha = 255;
    if (this->actor.params == 1) {
        this->smallFlameTargetYScale = (Math_Rand_ZeroOne() * 0.005f) + 0.004f;
        this->actor.speedXZ = (Math_Rand_ZeroOne() * 1.6f) + 0.5f;
    } else {
        this->smallFlameTargetYScale = (Math_Rand_ZeroOne() * 0.005f) + 0.003f;
        this->actor.speedXZ = (Math_Rand_ZeroOne() * 2.0f) + 0.5f;
    }
}

void EnIceHono_SmallFlameMove(EnIceHono* this, GlobalContext* globalCtx) {
    if (this->timer > 20) {
        Math_ApproxF(&this->actor.scale.x, 0.006f, 0.00016f);
        Math_ApproxF(&this->actor.scale.y, this->smallFlameTargetYScale * 0.667f, 0.00014f);
    } else {
        Math_ApproxF(&this->actor.scale.x, 0.0001f, 0.00015f);
        Math_ApproxF(&this->actor.scale.y, 0.0001f, 0.00015f);
    }
    this->actor.scale.z = this->actor.scale.x;
    Math_ApproxF(&this->actor.speedXZ, 0, 0.06f);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 10.0f, 10.0f, 0.0f, 5);

    if (this->timer < 25) {
        this->alpha -= 10;
        this->alpha = CLAMP(this->alpha, 0, 255);
    }
    if (this->timer <= 0) {
        Actor_Kill(&this->actor);
    }
}

void EnIceHono_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnIceHono* this = THIS;
    s32 pad1;
    f32 intensity;
    s32 pad2;
    f32 sin154;
    f32 sin156;

    if (this->timer > 0) {
        this->timer--;
    }
    if (this->actor.params == 0) {
        func_8002F8F0(&this->actor, NA_SE_IT_FLAME - SFX_FLAG);
    }
    if ((this->actor.params == -1) || (this->actor.params == 0)) {
        this->unk_154 += 0x1111;
        this->unk_156 += 0x4000;
        sin156 = Math_Sins(this->unk_156);
        sin154 = Math_Sins(this->unk_154);
        intensity = (Math_Rand_ZeroOne() * 0.05f) + ((sin154 * 0.125f) + (sin156 * 0.1f)) + 0.425f;
        if ((intensity > 0.7f) || (intensity < 0.2f)) {
            // Translates to: "impossible value(ratio = %f)"
            osSyncPrintf("ありえない値(ratio = %f)\n", (f64)intensity);
        }
        Lights_PointNoGlowSetInfo(&this->lightInfo, this->actor.posRot.pos.x, (s16)this->actor.posRot.pos.y + 10,
                                  this->actor.posRot.pos.z, (s32)(155.0f * intensity), (s32)(210.0f * intensity),
                                  (s32)(255.0f * intensity), 1400);
    }

    if (this->actionFunc != NULL) {
        this->actionFunc(this, globalCtx);
    }
}

void EnIceHono_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnIceHono* this = THIS;
    u32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ice_hono.c", 695);
    func_80093D84(globalCtx->state.gfxCtx);

    gSPSegment(oGfxCtx->polyXlu.p++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, 0, 0, 32, 64, 1, 0, (globalCtx->state.frames * -20) % 512,
                                32, 128));

    gDPSetPrimColor(oGfxCtx->polyXlu.p++, 0x80, 0x80, 170, 255, 255, this->alpha);

    gDPSetEnvColor(oGfxCtx->polyXlu.p++, 0, 150, 255, 0);

    Matrix_RotateY((s16)(func_8005A9F4(ACTIVE_CAM) - this->actor.shape.rot.y + 0x8000) * (M_PI / 0x8000),
                   MTXMODE_APPLY);

    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_ice_hono.c", 718),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_0404D4E0);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ice_hono.c", 722);
}
