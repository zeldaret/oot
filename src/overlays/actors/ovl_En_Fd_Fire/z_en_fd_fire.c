#include "z_en_fd_fire.h"
#include "assets/objects/gameplay_keep/gameplay_keep.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnFdFire_Init(Actor* thisx, PlayState* play);
void EnFdFire_Destroy(Actor* thisx, PlayState* play);
void EnFdFire_Update(Actor* thisx, PlayState* play);
void EnFdFire_Draw(Actor* thisx, PlayState* play);
void EnFdFire_Disappear(EnFdFire* this, PlayState* play);
void func_80A0E70C(EnFdFire* this, PlayState* play);
void EnFdFire_DanceTowardsPlayer(EnFdFire* this, PlayState* play);
void EnFdFire_WaitToDie(EnFdFire* this, PlayState* play);

ActorProfile En_Fd_Fire_Profile = {
    /**/ ACTOR_EN_FD_FIRE,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_DANGEON_KEEP,
    /**/ sizeof(EnFdFire),
    /**/ EnFdFire_Init,
    /**/ EnFdFire_Destroy,
    /**/ EnFdFire_Update,
    /**/ EnFdFire_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, 0x01, 0x08 },
        { 0x0D840008, 0x00, 0x00 },
        ATELEM_ON | ATELEM_SFX_NORMAL,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 12, 46, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInit = { 1, 0, 0, 0, MASS_IMMOVABLE };

static DamageTable sDamageTable = {
    /* Deku nut      */ DMG_ENTRY(0, 0x0),
    /* Deku stick    */ DMG_ENTRY(0, 0x0),
    /* Slingshot     */ DMG_ENTRY(0, 0x0),
    /* Explosive     */ DMG_ENTRY(2, 0x0),
    /* Boomerang     */ DMG_ENTRY(0, 0x0),
    /* Normal arrow  */ DMG_ENTRY(0, 0x0),
    /* Hammer swing  */ DMG_ENTRY(0, 0x0),
    /* Hookshot      */ DMG_ENTRY(0, 0x0),
    /* Kokiri sword  */ DMG_ENTRY(0, 0x0),
    /* Master sword  */ DMG_ENTRY(0, 0x0),
    /* Giant's Knife */ DMG_ENTRY(0, 0x0),
    /* Fire arrow    */ DMG_ENTRY(0, 0x0),
    /* Ice arrow     */ DMG_ENTRY(0, 0x0),
    /* Light arrow   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 1   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 2   */ DMG_ENTRY(0, 0x0),
    /* Unk arrow 3   */ DMG_ENTRY(0, 0x0),
    /* Fire magic    */ DMG_ENTRY(0, 0x0),
    /* Ice magic     */ DMG_ENTRY(4, 0x0),
    /* Light magic   */ DMG_ENTRY(0, 0x0),
    /* Shield        */ DMG_ENTRY(0, 0x0),
    /* Mirror Ray    */ DMG_ENTRY(0, 0x0),
    /* Kokiri spin   */ DMG_ENTRY(0, 0x0),
    /* Giant spin    */ DMG_ENTRY(0, 0x0),
    /* Master spin   */ DMG_ENTRY(0, 0x0),
    /* Kokiri jump   */ DMG_ENTRY(0, 0x0),
    /* Giant jump    */ DMG_ENTRY(0, 0x0),
    /* Master jump   */ DMG_ENTRY(0, 0x0),
    /* Unknown 1     */ DMG_ENTRY(0, 0x0),
    /* Unblockable   */ DMG_ENTRY(0, 0x0),
    /* Hammer jump   */ DMG_ENTRY(0, 0x0),
    /* Unknown 2     */ DMG_ENTRY(0, 0x0),
};

void EnFdFire_UpdatePos(EnFdFire* this, Vec3f* targetPos) {
    f32 dist;
    f32 xDiff = targetPos->x - this->actor.world.pos.x;
    f32 yDiff = targetPos->y - this->actor.world.pos.y;
    f32 zDiff = targetPos->z - this->actor.world.pos.z;

    dist = sqrtf(SQ(xDiff) + SQ(yDiff) + SQ(zDiff));
    if (fabsf(dist) > fabsf(this->actor.speed)) {
        this->actor.velocity.x = (xDiff / dist) * this->actor.speed;
        this->actor.velocity.z = (zDiff / dist) * this->actor.speed;
    } else {
        this->actor.velocity.x = 0.0f;
        this->actor.velocity.z = 0.0f;
    }

    this->actor.velocity.y += this->actor.gravity;
    if (!(this->actor.minVelocityY <= this->actor.velocity.y)) {
        this->actor.velocity.y = this->actor.minVelocityY;
    }
}

s32 EnFdFire_CheckCollider(EnFdFire* this, PlayState* play) {
    if (this->actionFunc == EnFdFire_Disappear) {
        return false;
    }

    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
        return true;
    }

    if (this->collider.base.ocFlags2 & OC2_HIT_PLAYER) {
        this->collider.base.ocFlags2 &= ~OC2_HIT_PLAYER;
        return true;
    }
    return false;
}

void EnFdFire_Init(Actor* thisx, PlayState* play) {
    EnFdFire* this = (EnFdFire*)thisx;
    s32 pad;
    Player* player = GET_PLAYER(play);

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 20.0f);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, &sDamageTable, &sColChkInit);
    this->actor.flags &= ~ACTOR_FLAG_ATTENTION_ENABLED;
    this->actor.gravity = -0.6f;
    this->actor.speed = 5.0f;
    this->actor.velocity.y = 12.0f;
    this->spawnRadius = Math_Vec3f_DistXYZ(&this->actor.world.pos, &player->actor.world.pos);
    this->scale = 3.0f;
    this->tile2Y = (s16)Rand_ZeroFloat(5.0f) - 25;
    this->actionFunc = func_80A0E70C;
}

void EnFdFire_Destroy(Actor* thisx, PlayState* play) {
    EnFdFire* this = (EnFdFire*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void func_80A0E70C(EnFdFire* this, PlayState* play) {
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    Vec3f targetPos = this->actor.parent->world.pos;

    targetPos.x += this->spawnRadius * Math_SinS(this->actor.world.rot.y);
    targetPos.z += this->spawnRadius * Math_CosS(this->actor.world.rot.y);
    EnFdFire_UpdatePos(this, &targetPos);
    if ((this->actor.bgCheckFlags & BGCHECKFLAG_GROUND) && (!(this->actor.velocity.y > 0.0f))) {
        this->actor.velocity = velocity;
        this->actor.speed = 0.0f;
        this->actor.bgCheckFlags &= ~BGCHECKFLAG_GROUND;
        if (PARAMS_GET_NOSHIFT(this->actor.params, 15, 1)) {
            this->deathTimer = 200;
            this->actionFunc = EnFdFire_DanceTowardsPlayer;
        } else {
            this->deathTimer = 300;
            this->actionFunc = EnFdFire_WaitToDie;
        }
    }
}

void EnFdFire_WaitToDie(EnFdFire* this, PlayState* play) {
    if (DECR(this->deathTimer) == 0) {
        this->actionFunc = EnFdFire_Disappear;
    }
}

void EnFdFire_DanceTowardsPlayer(EnFdFire* this, PlayState* play) {
    Player* player = GET_PLAYER(play);
    f32 angles[] = {
        0.0f, 210.0f, 60.0f, 270.0f, 120.0f, 330.0f, 180.0f, 30.0f, 240.0f, 90.0f, 300.0f, 150.0f,
    };
    Vec3f pos;
    s16 idx;

    idx = ((play->state.frames / 10) + PARAMS_GET_S(this->actor.params, 0, 15)) % ARRAY_COUNT(angles);
    pos = player->actor.world.pos;
    pos.x += 120.0f * sinf(angles[idx]);
    pos.z += 120.0f * cosf(angles[idx]);

    if (DECR(this->deathTimer) == 0) {
        this->actionFunc = EnFdFire_Disappear;
    } else {
        Math_SmoothStepToS(&this->actor.world.rot.y, Math_Vec3f_Yaw(&this->actor.world.pos, &pos), 8, 0xFA0, 1);
        Math_SmoothStepToF(&this->actor.speed, 0.0f, 0.4f, 1.0f, 0.0f);
        if (this->actor.speed < 0.1f) {
            this->actor.speed = 5.0f;
        }
        Actor_UpdateVelocityXZGravity(&this->actor);
    }
}

void EnFdFire_Disappear(EnFdFire* this, PlayState* play) {
    Math_SmoothStepToF(&this->actor.speed, 0.0f, 0.6f, 9.0f, 0.0f);
    Actor_UpdateVelocityXZGravity(&this->actor);
    Math_SmoothStepToF(&this->scale, 0.0f, 0.3f, 0.1f, 0.0f);
    this->actor.shape.shadowScale = 20.0f;
    this->actor.shape.shadowScale *= (this->scale / 3.0f);
    if (!(this->scale > 0.01f)) {
        Actor_Kill(&this->actor);
    }
}

void EnFdFire_Update(Actor* thisx, PlayState* play) {
    EnFdFire* this = (EnFdFire*)thisx;
    s32 pad;

    if (this->actionFunc != EnFdFire_Disappear) {
        if ((this->actor.parent->update == NULL) || EnFdFire_CheckCollider(this, play)) {
            this->actionFunc = EnFdFire_Disappear;
        }
    }

    Actor_UpdatePos(&this->actor);
    this->actionFunc(this, play);
    Actor_UpdateBgCheckInfo(play, &this->actor, 12.0f, 10.0f, 0.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);

    if (this->actionFunc != EnFdFire_Disappear) {
        Collider_UpdateCylinder(&this->actor, &this->collider);
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
    }
}

void EnFdFire_Draw(Actor* thisx, PlayState* play) {
    Color_RGBA8 primColors[] = {
        { 255, 255, 0, 255 },
        { 255, 255, 255, 255 },
    };
    Color_RGBA8 envColors[] = {
        { 255, 10, 0, 255 },
        { 0, 10, 255, 255 },
    };
    s32 pad;
    EnFdFire* this = (EnFdFire*)thisx;
    Vec3f scale = { 0.0f, 0.0f, 0.0f };
    Vec3f sp90 = { 0.0f, 0.0f, 0.0f };
    s16 sp8E;
    f32 sp88;
    f32 sp84;
    f32 sp80;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_fd_fire.c", 572);

    Matrix_Translate(thisx->world.pos.x, thisx->world.pos.y, thisx->world.pos.z, MTXMODE_NEW);
    sp8E = Math_Vec3f_Yaw(&scale, &thisx->velocity) - Camera_GetCamDirYaw(GET_ACTIVE_CAM(play));
    sp84 = fabsf(Math_CosS(sp8E));
    sp88 = Math_SinS(sp8E);
    sp80 = Math_Vec3f_DistXZ(&scale, &thisx->velocity) / 1.5f;
    Matrix_RotateY(BINANG_TO_RAD((s16)(Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)) + 0x8000)), MTXMODE_APPLY);
    Matrix_RotateZ(DEG_TO_RAD((sp88 * -10.0f) * sp80), MTXMODE_APPLY);
    scale.x = scale.y = scale.z = this->scale * 0.001f;
    Matrix_Scale(scale.x, scale.y, scale.z, MTXMODE_APPLY);
    sp84 = sp80 * ((0.01f * -15.0f) * sp84) + 1.0f;
    if (sp84 < 0.1f) {
        sp84 = 0.1f;
    }
    Matrix_Scale(1.0f, sp84, 1.0f / sp84, MTXMODE_APPLY);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_en_fd_fire.c", 623);
    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    gSPSegment(POLY_XLU_DISP++, 0x8,
               Gfx_TwoTexScroll(play->state.gfxCtx, G_TX_RENDERTILE, 0, 0, 0x20, 0x40, 1, 0,
                                play->state.frames * this->tile2Y, 0x20, 0x80));
    gDPSetPrimColor(POLY_XLU_DISP++, 128, 128, primColors[PARAMS_GET_S(thisx->params, 15, 1)].r,
                    primColors[PARAMS_GET_S(thisx->params, 15, 1)].g, primColors[PARAMS_GET_S(thisx->params, 15, 1)].b,
                    primColors[PARAMS_GET_S(thisx->params, 15, 1)].a);
    gDPSetEnvColor(POLY_XLU_DISP++, envColors[PARAMS_GET_S(thisx->params, 15, 1)].r,
                   envColors[PARAMS_GET_S(thisx->params, 15, 1)].g, envColors[PARAMS_GET_S(thisx->params, 15, 1)].b,
                   envColors[PARAMS_GET_S(thisx->params, 15, 1)].a);
    gDPPipeSync(POLY_XLU_DISP++);
    gSPDisplayList(POLY_XLU_DISP++, gEffFire1DL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_fd_fire.c", 672);
}
