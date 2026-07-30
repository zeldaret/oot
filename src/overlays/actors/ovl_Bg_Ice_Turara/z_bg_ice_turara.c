/*
 * File: z_bg_ice_turara.c
 * Overlay: ovl_Bg_Ice_Turara
 * Description: Icicles
 */

#include "z_bg_ice_turara.h"

#include "libc64/qrand.h"
#include "ichain.h"
#include "rand.h"
#include "sfx.h"
#include "z_lib.h"
#include "effect.h"
#include "play_state.h"

#include "assets/objects/object_ice_objects/object_ice_objects.h"

#define FLAGS 0

void BgIceTurara_Init(Actor* thisx, PlayState* play);
void BgIceTurara_Destroy(Actor* thisx, PlayState* play);
void BgIceTurara_Update(Actor* thisx, PlayState* play);
void BgIceTurara_Draw(Actor* thisx, PlayState* play);

void func_80892220(BgIceTurara*, PlayState*);
void func_80892280(BgIceTurara*, PlayState*);
void func_808922B8(BgIceTurara*, PlayState*);
void func_80892424(BgIceTurara*, PlayState*);
void func_80892574(BgIceTurara*, PlayState*);

static ColliderCylinderInit D_80892620 = {
    { 0xA, 0x11, 9, 0, 0x20, 1 },
    { 0, { 0xFFCFFFFF, 0, 4 }, { 0x4FC007CA, 0, 0 }, 1, 1, 0 },
    { 0xD, 0x78, 0, { 0, 0, 0 } },
};
ActorProfile Bg_Ice_Turara_Profile = {
    /**/ ACTOR_BG_ICE_TURARA,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_ICE_OBJECTS,
    /**/ sizeof(BgIceTurara),
    /**/ BgIceTurara_Init,
    /**/ BgIceTurara_Destroy,
    /**/ BgIceTurara_Update,
    /**/ BgIceTurara_Draw,
};
static InitChainEntry D_8089266C[] = {
    ICHAIN_F32(cullingVolumeScale, 600, ICHAIN_CONTINUE),
    ICHAIN_F32(gravity, -3, ICHAIN_CONTINUE),
    ICHAIN_F32(minVelocityY, -30, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};
static Vec3f D_8089267C = { 0.0f, -1.0f, 0.0f };
static Color_RGBA8 D_80892688 = { 0xAA, 0xFF, 0xFF, 0xFF };
static Color_RGBA8 D_8089268C = { 0, 0x32, 0x64, 0xFF };

void BgIceTurara_Init(Actor* thisx, PlayState* play) {
    BgIceTurara* this = (BgIceTurara*)thisx;
    s32 pad;
    CollisionHeader* sp24;

    sp24 = NULL;
    Actor_ProcessInitChain(&this->dyna.actor, D_8089266C);
    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&object_ice_objects_Col_002594, &sp24);
    Collider_InitCylinder(play, &this->unk16C);
    Collider_SetCylinder(play, &this->unk16C, &this->dyna.actor, &D_80892620);
    Collider_UpdateCylinder(&this->dyna.actor, &this->unk16C);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, sp24);
    if (this->dyna.actor.params == 0) {
        this->unk164 = func_80892220;
    } else {
        this->dyna.actor.shape.rot.x = -0x8000;
        this->dyna.actor.shape.yOffset = 1200.0f;
        this->unk164 = func_80892280;
    }
}

void BgIceTurara_Destroy(Actor* thisx, PlayState* play) {
    BgIceTurara* this = (BgIceTurara*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    Collider_DestroyCylinder(play, &this->unk16C);
}

void func_80892040(BgIceTurara* this, PlayState* play, f32 arg2) {
    Vec3f sp9C;
    Vec3f sp90;
    s32 var_s0;
    s32 sp88;

    SfxSource_PlaySfxAtFixedWorldPos(play, &this->dyna.actor.world.pos, 30, NA_SE_EV_ICE_BROKEN);
    sp88 = 0;
    do {
        for (var_s0 = 0; var_s0 < 10; var_s0++) {
            sp90.x = Rand_CenteredFloat(8.0f) + this->dyna.actor.world.pos.x;
            sp90.y = (Rand_ZeroOne() * arg2) + this->dyna.actor.world.pos.y + (sp88 * arg2);
            sp90.z = Rand_CenteredFloat(8.0f) + this->dyna.actor.world.pos.z;
            sp9C.x = Rand_CenteredFloat(7.0f);
            sp9C.z = Rand_CenteredFloat(7.0f);
            sp9C.y = (Rand_ZeroOne() * 4.0f) + 8.0f;
            EffectSsEnIce_Spawn(play, &sp90, (Rand_ZeroOne() * 0.2f) + 0.1f, &sp9C, &D_8089267C, &D_80892688,
                                &D_8089268C, 30);
        }
        sp88 = sp88 + 1;
    } while (sp88 != 2);
}

void func_80892220(BgIceTurara* this, PlayState* play) {
    if (this->unk16C.base.acFlags & AC_HIT) {
        func_80892040(this, play, 50.0f);
        Actor_Kill(&this->dyna.actor);
    } else {
        CollisionCheck_SetAC(play, &play->colChkCtx, &this->unk16C.base);
    }
}

void func_80892280(BgIceTurara* this, PlayState* play) {
    if (this->dyna.actor.xzDistToPlayer < 60.0f) {
        this->unk168 = 0xA;
        this->unk164 = func_808922B8;
    }
}

void func_808922B8(BgIceTurara* this, PlayState* play) {
    s32 var_v0_2;
    f32 sp28;

    if (this->unk168 != 0) {
        this->unk168 -= 1;
    }
    if (!(this->unk168 % 4)) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_ICE_SWING);
    }
    if (this->unk168 == 0) {
        this->dyna.actor.world.pos.x = this->dyna.actor.home.pos.x;
        this->dyna.actor.world.pos.z = this->dyna.actor.home.pos.z;
        Collider_UpdateCylinder(&this->dyna.actor, &this->unk16C);
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk16C.base);
        DynaPoly_DisableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
        this->unk164 = func_80892424;
    } else {
        sp28 = Rand_ZeroOne();
        if (Rand_ZeroOne() < 0.5f) {
            var_v0_2 = -1;
        } else {
            var_v0_2 = 1;
        }
        this->dyna.actor.world.pos.x = (var_v0_2 * ((0.5f * sp28) + 0.5f)) + this->dyna.actor.home.pos.x;
        sp28 = Rand_ZeroOne();
        if (Rand_ZeroOne() < 0.5f) {
            var_v0_2 = -1;
        } else {
            var_v0_2 = 1;
        }
        this->dyna.actor.world.pos.z = (var_v0_2 * ((0.5f * sp28) + 0.5f)) + this->dyna.actor.home.pos.z;
    }
}

void func_80892424(BgIceTurara* this, PlayState* play) {
    if ((this->unk16C.base.atFlags & AT_HIT) || (this->dyna.actor.bgCheckFlags & BGCHECKFLAG_GROUND)) {
        this->unk16C.base.atFlags &= ~AT_HIT;
        this->dyna.actor.bgCheckFlags &= ~BGCHECKFLAG_GROUND;
        if (this->dyna.actor.world.pos.y < this->dyna.actor.floorHeight) {
            this->dyna.actor.world.pos.y = this->dyna.actor.floorHeight;
        }
        func_80892040(this, play, 40.0f);
        if (this->dyna.actor.params == 2) {
            this->dyna.actor.world.pos.y = this->dyna.actor.home.pos.y + 120.0f;
            DynaPoly_EnableCollision(play, &play->colCtx.dyna, this->dyna.bgId);
            this->unk164 = func_80892574;
        } else {
            Actor_Kill(&this->dyna.actor);
        }
    } else {
        Actor_MoveXZGravity(&this->dyna.actor);
        this->dyna.actor.world.pos.y += 40.0f;
        Actor_UpdateBgCheckInfo(play, &this->dyna.actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
        this->dyna.actor.world.pos.y -= 40.0f;
        Collider_UpdateCylinder(&this->dyna.actor, &this->unk16C);
        CollisionCheck_SetAT(play, &play->colChkCtx, &this->unk16C.base);
    }
}

void func_80892574(BgIceTurara* this, PlayState* play) {
    if (Math_StepToF(&this->dyna.actor.world.pos.y, this->dyna.actor.home.pos.y, 1.0f)) {
        this->unk164 = func_80892280;
        this->dyna.actor.velocity.y = 0.0f;
    }
}

void BgIceTurara_Update(Actor* thisx, PlayState* play) {
    BgIceTurara* this = (BgIceTurara*)thisx;

    this->unk164(this, play);
}

void BgIceTurara_Draw(Actor* thisx, PlayState* play) {
    BgIceTurara* this = (BgIceTurara*)thisx;

    Gfx_DrawDListOpa(play, object_ice_objects_DL_0023D0);
}
