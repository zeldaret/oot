#include "z_en_ssh.h"

#define FLAGS 0x00000035

#define THIS ((EnSsh*)thisx)

#define SSH_STATE_STUNNED (1 << 0)
#define SSH_STATE_GROUND_START (1 << 2)
#define SSH_STATE_ATTACKED (1 << 3)
#define SSH_STATE_SPIN (1 << 4)

typedef enum {
    SSH_ANIM_UNK0, // Unused animation. Possibly being knocked back?
    SSH_ANIM_UP,
    SSH_ANIM_WAIT,
    SSH_ANIM_LAND,
    SSH_ANIM_DROP,
    SSH_ANIM_UNK5, // Slower version of ANIM_DROP
    SSH_ANIM_UNK6  // Faster repeating version of ANIM_UNK0
} EnSshAnimation;

void EnSsh_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSsh_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSsh_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSsh_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnSsh_Idle(EnSsh* this, GlobalContext* globalCtx);
void EnSsh_Drop(EnSsh* this, GlobalContext* globalCtx);
void EnSsh_Return(EnSsh* this, GlobalContext* globalCtx);
void EnSsh_Start(EnSsh* this, GlobalContext* globalCtx);

extern AnimationHeader D_06000304;
extern SkeletonHeader D_060052E0;
extern Gfx D_060046C0[];
extern Gfx D_06004080[];
extern Gfx D_06004DE8[];

static Vtx D_80B043C0[] = {
    VTX(-1, 0, 0, 0, 1024, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(1, 0, 0, 1024, 1024, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(1, 100, 0, 1024, 0, 0xFF, 0xFF, 0xFF, 0xFF),
    VTX(-1, 100, 0, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF),
};

static Gfx D_80B04400[] = {
    gsDPPipeSync(),
    gsSPTexture(0, 0, 0, G_TX_RENDERTILE, G_OFF),
    gsDPSetCombineLERP(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, PRIMITIVE, 0, 0, 0, PRIMITIVE),
    gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
    gsSPClearGeometryMode(G_CULL_BACK | G_LIGHTING | G_TEXTURE_GEN | G_TEXTURE_GEN_LINEAR),
    gsDPSetPrimColor(0, 0, 255, 255, 255, 255),
    gsSPVertex(D_80B043C0, 4, 0),
    gsSP1Triangle(0, 1, 2, 0),
    gsSP1Triangle(0, 2, 3, 0),
    gsSPEndDisplayList(),
};

const ActorInit En_Ssh_InitVars = {
    ACTOR_EN_SSH,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_SSH,
    sizeof(EnSsh),
    (ActorFunc)EnSsh_Init,
    (ActorFunc)EnSsh_Destroy,
    (ActorFunc)EnSsh_Update,
    (ActorFunc)EnSsh_Draw,
};

static ColliderCylinderInit sCylinderInit1 = {
    { COLTYPE_UNK6, 0x00, 0x09, 0x00, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x01, 0x00 },
    { 32, 50, -24, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 1, 0, 0, 0, 0xFF };

static ColliderCylinderInit sCylinderInit2 = {
    { COLTYPE_UNK6, 0x00, 0x00, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 20, 60, -30, { 0, 0, 0 } },
};

static ColliderJntSphItemInit sJntSphElementInit[1] = {
    {
        { 0x00, { 0xFFCFFFFF, 0x00, 0x04 }, { 0x00000000, 0x00, 0x00 }, 0x01, 0x00, 0x01 },
        { 1, { { 0, -240, 0 }, 28 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK6, 0x11, 0x00, 0x39, 0x10, COLSHAPE_JNTSPH },
    1,
    sJntSphElementInit,
};

void EnSsh_SetupAction(EnSsh* this, EnSshActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnSsh_SpawnShockwave(EnSsh* this, GlobalContext* globalCtx) {
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    Vec3f pos;

    pos.x = this->actor.posRot.pos.x;
    pos.y = this->actor.groundY;
    pos.z = this->actor.posRot.pos.z;
    EffectSsBlast_SpawnWhiteCustomScale(globalCtx, &pos, &zeroVec, &zeroVec, 100, 220, 8);
}

s32 EnSsh_CreateBlureEffect(GlobalContext* globalCtx) {
    EffectBlureInit1 blureInit;
    u8 p1StartColor[] = { 255, 255, 255, 75 };
    u8 p2StartColor[] = { 255, 255, 255, 75 };
    u8 p1EndColor[] = { 255, 255, 255, 0 };
    u8 p2EndColor[] = { 255, 255, 255, 0 };
    s32 i;
    s32 blureIdx;

    for (i = 0; i < 4; i++) {
        blureInit.p1StartColor[i] = p1StartColor[i];
        blureInit.p2StartColor[i] = p2StartColor[i];
        blureInit.p1EndColor[i] = p1EndColor[i];
        blureInit.p2EndColor[i] = p2EndColor[i];
    }

    blureInit.elemDuration = 6;
    blureInit.unkFlag = 0;
    blureInit.calcMode = 3;

    Effect_Add(globalCtx, &blureIdx, EFFECT_BLURE1, 0, 0, &blureInit);
    return blureIdx;
}

s32 EnSsh_CheckCeilingPos(EnSsh* this, GlobalContext* globalCtx) {
    CollisionPoly* sp4C;
    u32 sp48;
    Vec3f sp3C;

    sp3C.x = this->actor.posRot.pos.x;
    sp3C.y = this->actor.posRot.pos.y + 1000.0f;
    sp3C.z = this->actor.posRot.pos.z;
    if (!func_8003DE84(&globalCtx->colCtx, &this->actor.posRot.pos, &sp3C, &this->ceilingPos, &sp4C, 0, 0, 1, 1,
                       &sp48)) {
        return false;
    } else {
        return true;
    }
}

void EnSsh_AddBlureVertex(EnSsh* this) {
    Vec3f p1base = { 834.0f, 834.0f, 0.0f };
    Vec3f p2base = { 834.0f, -584.0f, 0.0f };
    Vec3f p1;
    Vec3f p2;

    p1base.x *= this->colliderScale;
    p1base.y *= this->colliderScale;
    p1base.z *= this->colliderScale;
    p2base.x *= this->colliderScale;
    p2base.y *= this->colliderScale;
    p2base.z *= this->colliderScale;
    Matrix_Push();
    Matrix_MultVec3f(&p1base, &p1);
    Matrix_MultVec3f(&p2base, &p2);
    Matrix_Pull();
    EffectBlure_AddVertex(Effect_GetByIndex(this->blureIdx), &p1, &p2);
}

void EnSsh_AddBlureSpace(EnSsh* this) {
    EffectBlure_AddSpace(Effect_GetByIndex(this->blureIdx));
}

void EnSsh_InitColliders(EnSsh* this, GlobalContext* globalCtx) {
    ColliderCylinderInit* cylinders[6] = {
        &sCylinderInit1, &sCylinderInit1, &sCylinderInit1, &sCylinderInit2, &sCylinderInit2, &sCylinderInit2,
    };
    s32 i;
    s32 pad;

    for (i = 0; i < ARRAY_COUNT(cylinders); i++) {
        Collider_InitCylinder(globalCtx, &this->colCylinder[i]);
        Collider_SetCylinder(globalCtx, &this->colCylinder[i], &this->actor, cylinders[i]);
    }

    this->colCylinder[0].body.bumper.flags = 0x0003F8E9;
    this->colCylinder[1].body.bumper.flags = 0xFFC00716;
    this->colCylinder[2].base.type = 9;
    this->colCylinder[2].body.bumperFlags = 0xD;
    this->colCylinder[2].body.flags = 2;
    this->colCylinder[2].body.bumper.flags = 0xFFCC0716;

    func_80061EFC(&this->actor.colChkInfo, DamageTable_Get(2), &sColChkInfoInit);

    Collider_InitJntSph(globalCtx, &this->colSph);
    Collider_SetJntSph(globalCtx, &this->colSph, &this->actor, &sJntSphInit, this->colSphElements);
}

f32 EnSsh_SetAnimation(EnSsh* this, s32 animIndex) {
    AnimationHeader* animation[] = {
        0x06005BE8, 0x06000304, 0x06000304, 0x060055F8, 0x06000304, 0x06000304, 0x06005BE8
    };
    f32 playbackSpeed[] = { 1.0f, 4.0f, 1.0f, 1.0f, 8.0f, 6.0f, 2.0f };
    u8 mode[] = { 3, 3, 1, 3, 1, 1, 1 };
    f32 frameCount = SkelAnime_GetFrameCount(animation[animIndex]);
    s32 pad;

    SkelAnime_ChangeAnim(&this->skelAnime, animation[animIndex], playbackSpeed[animIndex], 0.0f, frameCount,
                         mode[animIndex], -6.0f);

    return frameCount;
}

void EnSsh_SetWaitAnimation(EnSsh* this) {
    EnSsh_SetAnimation(this, SSH_ANIM_WAIT);
}

void EnSsh_SetReturnAnimation(EnSsh* this) {
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALTU_UP);
    EnSsh_SetAnimation(this, SSH_ANIM_UP);
}

void EnSsh_SetLandAnimation(EnSsh* this) {
    this->actor.posRot.pos.y = this->groundYoffset + this->actor.groundY;
    this->animTimer = EnSsh_SetAnimation(this, SSH_ANIM_LAND);
}

void EnSsh_SetDropAnimation(EnSsh* this) {
    if (this->unkTimer == 0) {
        this->animTimer = EnSsh_SetAnimation(this, SSH_ANIM_DROP);
    }
    this->actor.velocity.y = -10.0f;
}

void EnSsh_SetStunned(EnSsh* this) {
    if (this->stunTimer == 0) {
        this->stateFlags |= SSH_STATE_ATTACKED;
        this->stunTimer = 120;
        this->actor.dmgEffectTimer = 0;
    }
}

void EnSsh_SetColliderScale(EnSsh* this, f32 scale, f32 radiusMod) {
    f32 radius;
    f32 height;
    f32 yShift;
    s32 i;

    radius = this->colSph.list[0].dim.modelSphere.radius;
    radius *= scale;
    this->colSph.list[0].dim.modelSphere.radius = radius;

    for (i = 0; i < 6; i++) {
        yShift = this->colCylinder[i].dim.yShift;
        radius = this->colCylinder[i].dim.radius;
        height = this->colCylinder[i].dim.height;
        yShift *= scale;
        radius *= scale * radiusMod;
        height *= scale;

        this->colCylinder[i].dim.yShift = yShift;
        this->colCylinder[i].dim.radius = radius;
        this->colCylinder[i].dim.height = height;
    }
    Actor_SetScale(&this->actor, 0.04f * scale);
    this->groundYoffset = 40.0f * scale;
    this->colliderScale = scale * 1.5f;
}

s32 EnSsh_Damaged(EnSsh* this) {
    if ((this->stunTimer == 120) && (this->stateFlags & SSH_STATE_STUNNED)) {
        func_8003426C(&this->actor, 0, 0xC8, 0, this->stunTimer);
    }
    if (DECR(this->stunTimer) != 0) {
        Math_SmoothStepToS(&this->maxTurnRate, 0x2710, 0xA, 0x3E8, 1);
        return false;
    } else {
        this->stunTimer = 0;
        this->stateFlags &= ~SSH_STATE_STUNNED;
        this->spinTimer = 0;
        if (this->swayTimer == 0) {
            this->spinTimer = 30;
        }
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALTU_ROLL);
        Audio_PlayActorSound2(&this->actor, NA_SE_VO_ST_ATTACK);
        return true;
    }
}

void EnSsh_Turn(EnSsh* this, GlobalContext* globalCtx) {
    if (this->hitTimer != 0) {
        this->hitTimer--;
    }
    if (DECR(this->spinTimer) != 0) {
        this->actor.posRot.rot.y += 10000.0f * (this->spinTimer / 30.0f);
    } else if ((this->swayTimer == 0) && (this->stunTimer == 0)) {
        Math_SmoothStepToS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 4, 0x2710, 1);
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
}

void EnSsh_Stunned(EnSsh* this, GlobalContext* globalCtx) {
    if ((this->swayTimer == 0) && (this->stunTimer == 0)) {
        Math_SmoothStepToS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink ^ 0x8000, 4, this->maxTurnRate, 1);
    }
    this->actor.shape.rot.y = this->actor.posRot.rot.y;
    if (this->stunTimer < 30) {
        if (this->stunTimer & 1) {
            this->actor.shape.rot.y += 0x7D0;
        } else {
            this->actor.shape.rot.y -= 0x7D0;
        }
    }
}

void EnSsh_UpdateYaw(EnSsh* this, GlobalContext* globalCtx) {
    if (this->stunTimer != 0) {
        EnSsh_Stunned(this, globalCtx);
    } else {
        EnSsh_Turn(this, globalCtx);
    }
}

void EnSsh_Bob(EnSsh* this, GlobalContext* globalCtx) {
    f32 bobVel = 0.5f;

    if ((globalCtx->state.frames & 8) != 0) {
        bobVel *= -1.0f;
    }
    Math_SmoothStepToF(&this->actor.velocity.y, bobVel, 0.4f, 1000.0f, 0.0f);
}

s32 EnSsh_IsCloseToLink(EnSsh* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 yDist;

    if (this->stateFlags & SSH_STATE_GROUND_START) {
        return true;
    }
    if (this->unkTimer != 0) {
        return true;
    }
    if (this->swayTimer != 0) {
        return true;
    }
    if (this->animTimer != 0) {
        return true;
    }

    if (this->actor.xzDistFromLink > 160.0f) {
        return false;
    }

    yDist = this->actor.posRot.pos.y - player->actor.posRot.pos.y;
    if (yDist < 0.0f || yDist > 400.0f) {
        return false;
    }

    if (player->actor.posRot.pos.y < this->actor.groundY) {
        return false;
    }
    return true;
}

s32 EnSsh_IsCloseToHome(EnSsh* this) {
    f32 vel = this->actor.velocity.y;
    f32 nextY = this->actor.posRot.pos.y + 2.0f * this->actor.velocity.y;

    if (nextY >= this->actor.initPosRot.pos.y) {
        return 1;
    }
    return 0;
}

s32 EnSsh_IsCloseToGround(EnSsh* this) {
    f32 vel = this->actor.velocity.y;
    f32 nextY = this->actor.posRot.pos.y + 2.0f * this->actor.velocity.y;

    if ((nextY - this->actor.groundY) <= this->groundYoffset) {
        return 1;
    }
    return 0;
}

void EnSsh_Sway(EnSsh* this) {
    Vec3f swayVecBase;
    Vec3f swayVec;
    f32 temp;
    s16 swayAngle;

    if (this->swayTimer != 0) {
        this->swayAngle += 0x640;
        this->swayTimer--;
        if (this->swayTimer == 0) {
            this->swayAngle = 0;
        }
        temp = this->swayTimer * (1.0f / 6);
        swayAngle = temp * (0x10000 / 360.0f) * Math_SinS(this->swayAngle);
        temp = this->actor.posRot.pos.y - this->ceilingPos.y;
        swayVecBase.x = Math_SinS(swayAngle) * temp;
        swayVecBase.y = Math_CosS(swayAngle) * temp;
        swayVecBase.z = 0.0f;
        Matrix_Push();
        Matrix_Translate(this->ceilingPos.x, this->ceilingPos.y, this->ceilingPos.z, MTXMODE_NEW);
        Matrix_RotateY(this->actor.posRot.rot.y * (M_PI / 0x8000), MTXMODE_APPLY);
        Matrix_MultVec3f(&swayVecBase, &swayVec);
        Matrix_Pull();
        this->actor.shape.rot.z = -(swayAngle * 2);
        this->actor.posRot.pos.x = swayVec.x;
        this->actor.posRot.pos.z = swayVec.z;
    }
}

void EnSsh_CheckBodyStickHit(EnSsh* this, GlobalContext* globalCtx) {
    ColliderBody* body = &this->colCylinder[0].body;
    Player* player = PLAYER;

    if (player->unk_860 != 0) {
        body->bumper.flags |= 2;
        this->colCylinder[1].body.bumper.flags &= ~2;
        this->colCylinder[2].body.bumper.flags &= ~2;
    } else {
        body->bumper.flags &= ~2;
        this->colCylinder[1].body.bumper.flags |= 2;
        this->colCylinder[2].body.bumper.flags |= 2;
    }
}

s32 EnSsh_CheckHitLink(EnSsh* this, GlobalContext* globalCtx) {
    s32 i;
    s32 hit = false;

    if ((this->hitCount == 0) && (this->spinTimer == 0)) {
        return false;
    }
    for (i = 0; i < 3; i++) {
        if (this->colCylinder[i + 3].base.maskB & 1) {
            this->colCylinder[i + 3].base.maskB &= ~1;
            hit = true;
        }
    }
    if (!hit) {
        return false;
    }
    this->hitTimer = 30;
    if (this->swayTimer == 0) {
        this->spinTimer = this->hitTimer;
    }
    Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALTU_ROLL);
    Audio_PlayActorSound2(&this->actor, NA_SE_VO_ST_ATTACK);
    globalCtx->damagePlayer(globalCtx, -8);
    func_8002F71C(globalCtx, &this->actor, 4.0f, this->actor.yawTowardsLink, 6.0f);
    this->hitCount--;
    return true;
}

s32 EnSsh_CheckHitFront(EnSsh* this) {
    u32 acFlags;

    if (this->colCylinder[2].base.acFlags) {} // Needed for matching
    acFlags = this->colCylinder[2].base.acFlags;

    if (!!(acFlags & 2) == 0) {
        return 0;
    } else {
        this->colCylinder[2].base.acFlags &= ~2;
        this->invincibilityTimer = 8;
        if ((this->swayTimer == 0) && (this->hitTimer == 0) && (this->stunTimer == 0)) {
            this->swayTimer = 60;
        }
        return 1;
    }
}

s32 EnSsh_CheckHitBack(EnSsh* this, GlobalContext* globalCtx) {
    ColliderCylinder* cyl = &this->colCylinder[0];
    s32 hit = false;

    if (cyl->base.acFlags & 2) {
        cyl->base.acFlags &= ~2;
        hit = true;
    }
    cyl = &this->colCylinder[1];
    if (cyl->base.acFlags & 2) {
        cyl->base.acFlags &= ~2;
        hit = true;
    }
    if (!hit) {
        return false;
    }
    this->invincibilityTimer = 8;
    if (this->hitCount <= 0) {
        this->hitCount++;
    }
    if (this->stunTimer == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
        Audio_PlayActorSound2(&this->actor, NA_SE_VO_ST_DAMAGE);
    }
    EnSsh_SetStunned(this);
    this->stateFlags |= SSH_STATE_STUNNED;
    return false;
}

s32 EnSsh_CollisionCheck(EnSsh* this, GlobalContext* globalCtx) {
    if (this->stunTimer == 0) {
        EnSsh_CheckHitLink(this, globalCtx);
    }
    if (EnSsh_CheckHitFront(this)) {
        return false;
    } else if (globalCtx->actorCtx.unk_02 != 0) {
        this->invincibilityTimer = 8;
        if (this->stunTimer == 0) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_GOMA_JR_FREEZE);
            Audio_PlayActorSound2(&this->actor, NA_SE_VO_ST_DAMAGE);
        }
        EnSsh_SetStunned(this);
        this->stateFlags |= SSH_STATE_STUNNED;
        return false;
    } else {
        return EnSsh_CheckHitBack(this, globalCtx);
        // Always returns false
    }
}

void EnSsh_SetBodyCylinderAC(EnSsh* this, GlobalContext* globalCtx) {
    Collider_CylinderUpdate(&this->actor, &this->colCylinder[0]);
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colCylinder[0].base);
}

void EnSsh_SetLegsCylinderAC(EnSsh* this, GlobalContext* globalCtx) {
    s16 angleTowardsLink = ABS((s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y));

    if (angleTowardsLink < 90 * (0x10000 / 360)) {
        Collider_CylinderUpdate(&this->actor, &this->colCylinder[2]);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colCylinder[2].base);
    } else {
        Collider_CylinderUpdate(&this->actor, &this->colCylinder[1]);
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->colCylinder[1].base);
    }
}

s32 EnSsh_SetCylinderOC(EnSsh* this, GlobalContext* globalCtx) {
    Vec3f cyloffsets[] = {
        { 40.0f, 0.0f, 0.0f },
        { 0.0f, 0.0f, 0.0f },
        { -40.0f, 0.0f, 0.0f },
    };
    Vec3f cylPos;
    s32 i;

    for (i = 0; i < 3; i++) {
        cylPos = this->actor.posRot.pos;
        cyloffsets[i].x *= this->colliderScale;
        cyloffsets[i].y *= this->colliderScale;
        cyloffsets[i].z *= this->colliderScale;
        Matrix_Push();
        Matrix_Translate(cylPos.x, cylPos.y, cylPos.z, MTXMODE_NEW);
        Matrix_RotateY((this->initialYaw / (f32)0x8000) * M_PI, MTXMODE_APPLY);
        Matrix_MultVec3f(&cyloffsets[i], &cylPos);
        Matrix_Pull();
        this->colCylinder[i + 3].dim.pos.x = cylPos.x;
        this->colCylinder[i + 3].dim.pos.y = cylPos.y;
        this->colCylinder[i + 3].dim.pos.z = cylPos.z;
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colCylinder[i + 3].base);
    }
    return 1;
}

void EnSsh_SetColliders(EnSsh* this, GlobalContext* globalCtx) {
    if (this->actor.colChkInfo.health == 0) {
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->colSph.base);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->colSph.base);
    } else {
        if (this->hitTimer == 0) {
            EnSsh_SetCylinderOC(this, globalCtx);
        }
        if (DECR(this->invincibilityTimer) == 0) {
            EnSsh_SetBodyCylinderAC(this, globalCtx);
            EnSsh_SetLegsCylinderAC(this, globalCtx);
        }
    }
}

void EnSsh_Init(Actor* thisx, GlobalContext* globalCtx) {
    f32 frameCount;
    s32 pad;
    EnSsh* this = THIS;

    frameCount = SkelAnime_GetFrameCount(&D_06000304);
    if (this->actor.params == ENSSH_FATHER) {
        if (gSaveContext.inventory.gsTokens >= 100) {
            Actor_Kill(&this->actor);
            return;
        }
    } else if (gSaveContext.inventory.gsTokens >= (this->actor.params * 10)) {
        Actor_Kill(&this->actor);
        return;
    }
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_060052E0, NULL, this->limbDrawTable, this->transDrawTable, 30);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000304, 1.0f, 0.0f, frameCount, 1, 0.0f);
    this->blureIdx = EnSsh_CreateBlureEffect(globalCtx);
    EnSsh_InitColliders(this, globalCtx);
    this->stateFlags = 0;
    this->hitCount = 0;
    EnSsh_CheckCeilingPos(this, globalCtx);
    if (this->actor.params != ENSSH_FATHER) {
        EnSsh_SetColliderScale(this, 0.5f, 1.0f);
    } else {
        EnSsh_SetColliderScale(this, 0.75f, 1.0f);
    }
    this->actor.gravity = 0.0f;
    this->initialYaw = this->actor.posRot.rot.y;
    EnSsh_SetupAction(this, EnSsh_Start);
}

void EnSsh_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnSsh* this = THIS;
    s32 i;

    Effect_Delete(globalCtx, this->blureIdx);
    for (i = 0; i < 6; i++) {
        Collider_DestroyCylinder(globalCtx, &this->colCylinder[i]);
    }
    Collider_DestroyJntSph(globalCtx, &this->colSph);
}

void EnSsh_Wait(EnSsh* this, GlobalContext* globalCtx) {
    if (EnSsh_IsCloseToLink(this, globalCtx)) {
        EnSsh_SetDropAnimation(this);
        EnSsh_SetupAction(this, EnSsh_Drop);
    } else {
        EnSsh_Bob(this, globalCtx);
    }
}

void EnSsh_Talk(EnSsh* this, GlobalContext* globalCtx) {
    EnSsh_Bob(this, globalCtx);
    if (func_8002F334(&this->actor, globalCtx)) {
        this->actionFunc = EnSsh_Idle;
    }
}

void EnSsh_Idle(EnSsh* this, GlobalContext* globalCtx) {
    if (1) {}
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = EnSsh_Talk;
        if (this->actor.params == ENSSH_FATHER) {
            gSaveContext.eventChkInf[9] |= 0x40;
        }
        if ((this->actor.textId == 0x26) || (this->actor.textId == 0x27)) {
            gSaveContext.infTable[25] |= 0x40;
        }
        if ((this->actor.textId == 0x24) || (this->actor.textId == 0x25)) {
            gSaveContext.infTable[25] |= 0x80;
        }
    } else {
        if ((this->unkTimer != 0) && (DECR(this->unkTimer) == 0)) {
            EnSsh_SetAnimation(this, SSH_ANIM_WAIT);
        }
        if ((this->animTimer != 0) && (DECR(this->animTimer) == 0)) {
            EnSsh_SetAnimation(this, SSH_ANIM_WAIT);
        }
        if (!EnSsh_IsCloseToLink(this, globalCtx)) {
            EnSsh_SetReturnAnimation(this);
            EnSsh_SetupAction(this, EnSsh_Return);
        } else {
            if (DECR(this->sfxTimer) == 0) {
                Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALTU_LAUGH);
                this->sfxTimer = 64;
            }
            EnSsh_Bob(this, globalCtx);
            if ((this->unkTimer == 0) && (this->animTimer == 0)) {
                this->actor.textId = Text_GetFaceReaction(globalCtx, 0xD);
                if (this->actor.textId == 0) {
                    if (this->actor.params == ENSSH_FATHER) {
                        if (gSaveContext.inventory.gsTokens >= 50) {
                            this->actor.textId = 0x29;
                        } else if (gSaveContext.inventory.gsTokens >= 10) {
                            if (gSaveContext.infTable[25] & 0x80) {
                                this->actor.textId = 0x24;
                            } else {
                                this->actor.textId = 0x25;
                            }
                        } else {
                            if (gSaveContext.infTable[25] & 0x40) {
                                this->actor.textId = 0x27;
                            } else {
                                this->actor.textId = 0x26;
                            }
                        }
                    } else {
                        this->actor.textId = 0x22;
                    }
                }
                func_8002F2CC(&this->actor, globalCtx, 100.0f);
            }
        }
    }
}

void EnSsh_Land(EnSsh* this, GlobalContext* globalCtx) {
    if ((this->unkTimer != 0) && (DECR(this->unkTimer) == 0)) {
        EnSsh_SetAnimation(this, SSH_ANIM_WAIT);
    }
    if ((this->animTimer != 0) && (DECR(this->animTimer) == 0)) {
        EnSsh_SetAnimation(this, SSH_ANIM_WAIT);
    }
    if ((this->actor.groundY + this->groundYoffset) <= this->actor.posRot.pos.y) {
        EnSsh_SetupAction(this, EnSsh_Idle);
    } else {
        Math_SmoothStepToF(&this->actor.velocity.y, 2.0f, 0.6f, 1000.0f, 0.0f);
    }
}

void EnSsh_Drop(EnSsh* this, GlobalContext* globalCtx) {
    if ((this->unkTimer != 0) && (DECR(this->unkTimer) == 0)) {
        EnSsh_SetAnimation(this, SSH_ANIM_DROP);
    }
    if (!EnSsh_IsCloseToLink(this, globalCtx)) {
        EnSsh_SetReturnAnimation(this);
        EnSsh_SetupAction(this, EnSsh_Return);
    } else if (EnSsh_IsCloseToGround(this)) {
        EnSsh_SpawnShockwave(this, globalCtx);
        EnSsh_SetLandAnimation(this);
        EnSsh_SetupAction(this, EnSsh_Land);
    } else if (DECR(this->sfxTimer) == 0) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EN_STALTU_DOWN);
        this->sfxTimer = 3;
    }
}

void EnSsh_Return(EnSsh* this, GlobalContext* globalCtx) {
    f32 frameRatio = this->skelAnime.animCurrentFrame / (this->skelAnime.totalFrames - 1.0f);

    if (frameRatio == 1.0f) {
        EnSsh_SetReturnAnimation(this);
    }
    if (EnSsh_IsCloseToLink(this, globalCtx)) {
        EnSsh_SetDropAnimation(this);
        EnSsh_SetupAction(this, EnSsh_Drop);
    } else if (EnSsh_IsCloseToHome(this)) {
        EnSsh_SetWaitAnimation(this);
        EnSsh_SetupAction(this, EnSsh_Wait);
    } else {
        this->actor.velocity.y = 4.0f * frameRatio;
    }
}

void EnSsh_UpdateColliderScale(EnSsh* this) {
    if (this->stateFlags & SSH_STATE_SPIN) {
        if (this->spinTimer == 0) {
            this->stateFlags &= ~SSH_STATE_SPIN;
            if (this->actor.params != ENSSH_FATHER) {
                EnSsh_SetColliderScale(this, 0.5f, 1.0f);
            } else {
                EnSsh_SetColliderScale(this, 0.75f, 1.0f);
            }
        }
    } else {
        if (this->spinTimer != 0) {
            this->stateFlags |= SSH_STATE_SPIN;
            if (this->actor.params != ENSSH_FATHER) {
                EnSsh_SetColliderScale(this, 0.5f, 2.0f);
            } else {
                EnSsh_SetColliderScale(this, 0.75f, 2.0f);
            }
        }
    }
}

void EnSsh_Start(EnSsh* this, GlobalContext* globalCtx) {
    if (!EnSsh_IsCloseToGround(this)) {
        EnSsh_SetupAction(this, EnSsh_Wait);
        EnSsh_Wait(this, globalCtx);
    } else {
        EnSsh_SetLandAnimation(this);
        this->stateFlags |= 4;
        EnSsh_SetupAction(this, EnSsh_Land);
        EnSsh_Land(this, globalCtx);
    }
}

void EnSsh_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnSsh* this = THIS;

    EnSsh_UpdateColliderScale(this);
    if (EnSsh_CollisionCheck(this, globalCtx)) {
        return; // EnSsh_CollisionCheck always returns false, so this never happens
    }
    if (this->stunTimer != 0) {
        EnSsh_Damaged(this);
    } else {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
        func_8002D7EC(&this->actor);
        func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
        this->actionFunc(this, globalCtx);
    }
    EnSsh_UpdateYaw(this, globalCtx);
    if (DECR(this->blinkTimer) == 0) {
        this->blinkTimer = Rand_S16Offset(60, 60);
    }
    this->blinkState = this->blinkTimer;
    if (this->blinkState >= 3) {
        this->blinkState = 0;
    }
    EnSsh_SetColliders(this, globalCtx);
    Actor_SetHeight(&this->actor, 0.0f);
}

s32 EnSsh_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnSsh* this = THIS;

    switch (limbIndex) {
        case 1:
            if ((this->spinTimer != 0) && (this->swayTimer == 0)) {
                if (this->spinTimer >= 2) {
                    EnSsh_AddBlureVertex(this);
                } else {
                    EnSsh_AddBlureSpace(this);
                }
            }
            break;
        case 4:
            if (this->actor.params == ENSSH_FATHER) {
                *dList = D_060046C0;
            }
            break;
        case 5:
            if (this->actor.params == ENSSH_FATHER) {
                *dList = D_06004080;
            }
            break;
        case 8:
            if (this->actor.params == ENSSH_FATHER) {
                *dList = D_06004DE8;
            }
            break;
    }
    return 0;
}

void EnSsh_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnSsh* this = THIS;

    func_800628A4(limbIndex, &this->colSph);
}

void EnSsh_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static u32* blinkTex[] = { 0x060007E0, 0x06000C60, 0x06001060 };
    s32 pad;
    EnSsh* this = THIS;

    EnSsh_CheckBodyStickHit(this, globalCtx);
    EnSsh_Sway(this);
    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ssh.c", 2333);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(blinkTex[this->blinkState]));
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ssh.c", 2336);
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, EnSsh_OverrideLimbDraw,
                      EnSsh_PostLimbDraw, &this->actor);
}
