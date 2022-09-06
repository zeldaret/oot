/*
 * File: z_bg_ice_turara.c
 * Overlay: ovl_Bg_Ice_Turara
 * Description: Icicles
 */

#include "z_bg_ice_turara.h"
#include "assets/objects/object_ice_objects/object_ice_objects.h"

#define FLAGS 0

void BgIceTurara_Init(Actor* thisx, PlayState* play);
void BgIceTurara_Destroy(Actor* thisx, PlayState* play);
void BgIceTurara_Update(Actor* thisx, PlayState* play);
void BgIceTurara_Draw(Actor* thisx, PlayState* play);

void BgIceTurara_Stalagmite(BgIceTurara* this, PlayState* play);
void BgIceTurara_Wait(BgIceTurara* this, PlayState* play);
void BgIceTurara_Shiver(BgIceTurara* this, PlayState* play);
void BgIceTurara_Fall(BgIceTurara* this, PlayState* play);
void BgIceTurara_Regrow(BgIceTurara* this, PlayState* play);

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_ON | AT_TYPE_ENEMY,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0xFFCFFFFF, 0x00, 0x04 },
        { 0x4FC007CA, 0x00, 0x00 },
        TOUCH_ON | TOUCH_SFX_NORMAL,
        BUMP_ON,
        OCELEM_NONE,
    },
    { 13, 120, 0, { 0, 0, 0 } },
};

const ActorInit Bg_Ice_Turara_InitVars = {
    ACTOR_BG_ICE_TURARA,
    ACTORCAT_PROP,
    FLAGS,
    OBJECT_ICE_OBJECTS,
    sizeof(BgIceTurara),
    (ActorFunc)BgIceTurara_Init,
    (ActorFunc)BgIceTurara_Destroy,
    (ActorFunc)BgIceTurara_Update,
    (ActorFunc)BgIceTurara_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneScale, 600, ICHAIN_CONTINUE),
    ICHAIN_F32(gravity, -3, ICHAIN_CONTINUE),
    ICHAIN_F32(minVelocityY, -30, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgIceTurara_Init(Actor* thisx, PlayState* play) {
    BgIceTurara* this = (BgIceTurara*)thisx;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->bg.actor, sInitChain);
    BgActor_Init(&this->bg, DPM_UNK);
    CollisionHeader_GetVirtual(&object_ice_objects_Col_002594, &colHeader);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->bg.actor, &sCylinderInit);
    Collider_UpdateCylinder(&this->bg.actor, &this->collider);
    this->bg.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->bg.actor, colHeader);
    if (this->bg.actor.params == TURARA_STALAGMITE) {
        this->actionFunc = BgIceTurara_Stalagmite;
    } else {
        this->bg.actor.shape.rot.x = -0x8000;
        this->bg.actor.shape.yOffset = 1200.0f;
        this->actionFunc = BgIceTurara_Wait;
    }
}

void BgIceTurara_Destroy(Actor* thisx, PlayState* play) {
    BgIceTurara* this = (BgIceTurara*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->bg.bgId);
    Collider_DestroyCylinder(play, &this->collider);
}

void BgIceTurara_Break(BgIceTurara* this, PlayState* play, f32 arg2) {
    static Vec3f accel = { 0.0f, -1.0f, 0.0f };
    static Color_RGBA8 primColor = { 170, 255, 255, 255 };
    static Color_RGBA8 envColor = { 0, 50, 100, 255 };
    Vec3f vel;
    Vec3f pos;
    s32 j;
    s32 i;

    SfxSource_PlaySfxAtFixedWorldPos(play, &this->bg.actor.world.pos, 30, NA_SE_EV_ICE_BROKEN);
    for (i = 0; i < 2; i++) {
        for (j = 0; j < 10; j++) {
            pos.x = this->bg.actor.world.pos.x + Rand_CenteredFloat(8.0f);
            pos.y = this->bg.actor.world.pos.y + (Rand_ZeroOne() * arg2) + (i * arg2);
            pos.z = this->bg.actor.world.pos.z + Rand_CenteredFloat(8.0f);

            vel.x = Rand_CenteredFloat(7.0f);
            vel.z = Rand_CenteredFloat(7.0f);
            vel.y = (Rand_ZeroOne() * 4.0f) + 8.0f;

            EffectSsEnIce_Spawn(play, &pos, (Rand_ZeroOne() * 0.2f) + 0.1f, &vel, &accel, &primColor, &envColor, 30);
        }
    }
}

void BgIceTurara_Stalagmite(BgIceTurara* this, PlayState* play) {
    if (this->collider.base.acFlags & AC_HIT) {
        BgIceTurara_Break(this, play, 50.0f);
        Actor_Kill(&this->bg.actor);
        return;
    }
    CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
}

void BgIceTurara_Wait(BgIceTurara* this, PlayState* play) {
    if (this->bg.actor.xzDistToPlayer < 60.0f) {
        this->shiverTimer = 10;
        this->actionFunc = BgIceTurara_Shiver;
    }
}

void BgIceTurara_Shiver(BgIceTurara* this, PlayState* play) {
    s16 phi_v0_3;
    s16 phi_v0_2;
    f32 sp28;

    if (this->shiverTimer != 0) {
        this->shiverTimer--;
    }
    if (!(this->shiverTimer % 4)) {
        Audio_PlayActorSfx2(&this->bg.actor, NA_SE_EV_ICE_SWING);
    }
    if (this->shiverTimer == 0) {
        this->bg.actor.world.pos.x = this->bg.actor.home.pos.x;
        this->bg.actor.world.pos.z = this->bg.actor.home.pos.z;
        Collider_UpdateCylinder(&this->bg.actor, &this->collider);
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
        DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->bg.bgId);
        this->actionFunc = BgIceTurara_Fall;
    } else {
        sp28 = Rand_ZeroOne();
        phi_v0_2 = (Rand_ZeroOne() < 0.5f ? -1 : 1);
        this->bg.actor.world.pos.x = (phi_v0_2 * ((0.5f * sp28) + 0.5f)) + this->bg.actor.home.pos.x;
        sp28 = Rand_ZeroOne();
        phi_v0_3 = (Rand_ZeroOne() < 0.5f ? -1 : 1);
        this->bg.actor.world.pos.z = (phi_v0_3 * ((0.5f * sp28) + 0.5f)) + this->bg.actor.home.pos.z;
    }
}

void BgIceTurara_Fall(BgIceTurara* this, PlayState* play) {
    if ((this->collider.base.atFlags & AT_HIT) || (this->bg.actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        this->collider.base.atFlags &= ~AT_HIT;
        this->bg.actor.bgCheckFlags &= ~BGCHECKFLAG_GROUND;
        if (this->bg.actor.world.pos.y < this->bg.actor.floorHeight) {
            this->bg.actor.world.pos.y = this->bg.actor.floorHeight;
        }
        BgIceTurara_Break(this, play, 40.0f);
        if (this->bg.actor.params == TURARA_STALACTITE_REGROW) {
            this->bg.actor.world.pos.y = this->bg.actor.home.pos.y + 120.0f;
            DynaPoly_EnableCollision(play, &play->colCtx.dyna, this->bg.bgId);
            this->actionFunc = BgIceTurara_Regrow;
        } else {
            Actor_Kill(&this->bg.actor);
            return;
        }
    } else {
        Actor_MoveForward(&this->bg.actor);
        this->bg.actor.world.pos.y += 40.0f;
        Actor_UpdateBgCheckInfo(play, &this->bg.actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
        this->bg.actor.world.pos.y -= 40.0f;
        Collider_UpdateCylinder(&this->bg.actor, &this->collider);
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->collider.base);
    }
}

void BgIceTurara_Regrow(BgIceTurara* this, PlayState* play) {
    if (Math_StepToF(&this->bg.actor.world.pos.y, this->bg.actor.home.pos.y, 1.0f)) {
        this->actionFunc = BgIceTurara_Wait;
        this->bg.actor.velocity.y = 0.0f;
    }
}

void BgIceTurara_Update(Actor* thisx, PlayState* play) {
    BgIceTurara* this = (BgIceTurara*)thisx;

    this->actionFunc(this, play);
}

void BgIceTurara_Draw(Actor* thisx, PlayState* play) {
    Gfx_DrawDListOpa(play, object_ice_objects_DL_0023D0);
}
