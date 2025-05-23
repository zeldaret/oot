/*
 * File: z_en_yukabyun.c
 * Overlay: ovl_En_Yukabyun
 * Description: Flying floor tile
 */

#include "z_en_yukabyun.h"
#include "assets/objects/object_yukabyun/object_yukabyun.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void EnYukabyun_Init(Actor* thisx, PlayState* play);
void EnYukabyun_Destroy(Actor* thisx, PlayState* play);
void EnYukabyun_Update(Actor* thisx, PlayState* play);
void EnYukabyun_Draw(Actor* thisx, PlayState* play);

void func_80B43A94(EnYukabyun* this, PlayState* play);
void func_80B43AD4(EnYukabyun* this, PlayState* play);
void func_80B43B6C(EnYukabyun* this, PlayState* play);

ActorProfile En_Yukabyun_Profile = {
    /**/ ACTOR_EN_YUKABYUN,
    /**/ ACTORCAT_ENEMY,
    /**/ FLAGS,
    /**/ OBJECT_YUKABYUN,
    /**/ sizeof(EnYukabyun),
    /**/ EnYukabyun_Init,
    /**/ EnYukabyun_Destroy,
    /**/ EnYukabyun_Update,
    /**/ EnYukabyun_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_NO_PUSH | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, 0x00, 0x04 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_ON | ATELEM_SFX_HARD,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 28, 8, 0, { 0, 0, 0 } },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F(scale, 1, ICHAIN_CONTINUE),
    ICHAIN_F32(lockOnArrowOffset, 16, ICHAIN_STOP),
};

static void* D_80B43F64[] = { gFloorTileEnemyTopTex, gFloorTileEnemyBottomTex };

void EnYukabyun_Init(Actor* thisx, PlayState* play) {
    EnYukabyun* this = (EnYukabyun*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 0.4f);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    this->actor.params++;
    this->unk_152 = 0;
    this->unk_150 = (u8)(this->actor.params) * 0xA + 0x14;
    this->actionfunc = func_80B43A94;
}

void EnYukabyun_Destroy(Actor* thisx, PlayState* play) {
    EnYukabyun* this = (EnYukabyun*)thisx;
    Collider_DestroyCylinder(play, &this->collider);
}

void func_80B43A94(EnYukabyun* this, PlayState* play) {
    if (this->unk_150 != 0) {
        this->unk_150--;
    }
    if (this->unk_150 == 0) {
        this->actor.flags |= ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE | ACTOR_FLAG_IGNORE_QUAKE;
        this->actionfunc = func_80B43AD4;
    }
}

void func_80B43AD4(EnYukabyun* this, PlayState* play) {
    this->unk_150 += 0xA0;
    this->actor.shape.rot.y += this->unk_150;
    if (this->unk_150 >= 0x2000) {
        this->actor.world.rot.y = this->actor.yawTowardsPlayer;
        this->actor.speed = 10.0f;
        this->actionfunc = func_80B43B6C;
    }
    Math_StepToF(&this->actor.world.pos.y, this->actor.home.pos.y + 30.0f, 1.0f);
    Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_YUKABYUN_FLY - SFX_FLAG);
}

void func_80B43B6C(EnYukabyun* this, PlayState* play) {
    this->actor.shape.rot.y += this->unk_150;
    if (this->actor.xzDistToPlayer > 5000.0f) {
        Actor_Kill(&this->actor);
        return;
    }
    Actor_PlaySfx_Flagged(&this->actor, NA_SE_EN_YUKABYUN_FLY - SFX_FLAG);
}

void EnYukabyun_Break(EnYukabyun* this, PlayState* play) {
    EffectSsHahen_SpawnBurst(play, &this->actor.world.pos, 8.0f, 0, 1300, 300, 15, OBJECT_YUKABYUN, 10,
                             gFloorTileEnemyFragmentDL);
    Actor_Kill(&this->actor);
}

void EnYukabyun_Update(Actor* thisx, PlayState* play) {
    EnYukabyun* this = (EnYukabyun*)thisx;
    s32 pad;

    if (((this->collider.base.atFlags & AT_HIT) || (this->collider.base.acFlags & AC_HIT) ||
         ((this->collider.base.ocFlags1 & OC1_HIT) && !(this->collider.base.oc->id == ACTOR_EN_YUKABYUN))) ||
        ((this->actionfunc == func_80B43B6C) && (this->actor.bgCheckFlags & BGCHECKFLAG_WALL))) {
        this->collider.base.atFlags &= ~AT_HIT;
        this->collider.base.acFlags &= ~AC_HIT;
        this->collider.base.ocFlags1 &= ~OC1_HIT;
        this->actor.flags &= ~(ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOSTILE);
        SfxSource_PlaySfxAtFixedWorldPos(play, &this->actor.world.pos, 30, NA_SE_EN_OCTAROCK_ROCK);
        this->actionfunc = EnYukabyun_Break;
    }

    this->actionfunc(this, play);
    Actor_MoveXZGravity(&this->actor);

    if (!(this->actionfunc == func_80B43A94 || this->actionfunc == EnYukabyun_Break)) {
        Actor_UpdateBgCheckInfo(play, &this->actor, 5.0f, 20.0f, 8.0f, UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2);
        Collider_UpdateCylinder(&this->actor, &this->collider);

        this->actor.flags |= ACTOR_FLAG_SFX_FOR_PLAYER_BODY_HIT;

        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    }
    Actor_SetFocus(&this->actor, 4.0f);
}

void EnYukabyun_Draw(Actor* thisx, PlayState* play) {
    EnYukabyun* this = (EnYukabyun*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_yukabyun.c", 366);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80B43F64[this->unk_152]));
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_en_yukabyun.c", 373);
    gSPDisplayList(POLY_OPA_DISP++, gFloorTileEnemyDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_yukabyun.c", 378);
}
