/*
 * File: z_bg_ice_turara.c
 * Overlay: ovl_Bg_Ice_Turara
 * Description: Icicles
 */

#include "z_bg_ice_turara.h"

#define FLAGS 0x00000000

#define THIS ((BgIceTurara*)thisx)

void BgIceTurara_Init(Actor* thisx, GlobalContext* globalCtx);
void BgIceTurara_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgIceTurara_Update(Actor* thisx, GlobalContext* globalCtx);
void BgIceTurara_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgIceTurara_Stalagmite(BgIceTurara* this, GlobalContext* globalCtx);
void BgIceTurara_Wait(BgIceTurara* this, GlobalContext* globalCtx);
void BgIceTurara_Shiver(BgIceTurara* this, GlobalContext* globalCtx);
void BgIceTurara_Fall(BgIceTurara* this, GlobalContext* globalCtx);
void BgIceTurara_Regrow(BgIceTurara* this, GlobalContext* globalCtx);

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x00, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x04 }, { 0x4FC007CA, 0x00, 0x00 }, 0x01, 0x01, 0x00 },
    { 13, 120, 0, { 0, 0, 0 } },
};

extern Gfx D_060023D0[];
extern CollisionHeader D_06002594;

const ActorInit Bg_Ice_Turara_InitVars = {
    ACTOR_BG_ICE_TURARA,
    ACTORTYPE_PROP,
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

void BgIceTurara_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgIceTurara* this = THIS;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, DPM_UNK);
    CollisionHeader_GetVirtual(&D_06002594, &colHeader);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->dyna.actor, &sCylinderInit);
    Collider_CylinderUpdate(&this->dyna.actor, &this->collider);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);
    if (this->dyna.actor.params == TURARA_STALAGMITE) {
        this->actionFunc = BgIceTurara_Stalagmite;
    } else {
        this->dyna.actor.shape.rot.x = -0x8000;
        this->dyna.actor.shape.unk_08 = 1200.0f;
        this->actionFunc = BgIceTurara_Wait;
    }
}

void BgIceTurara_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgIceTurara* this = THIS;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void BgIceTurara_Break(BgIceTurara* this, GlobalContext* globalCtx, f32 arg2) {
    static Vec3f accel = { 0.0f, -1.0f, 0.0f };
    static Color_RGBA8 primColor = { 170, 255, 255, 255 };
    static Color_RGBA8 envColor = { 0, 50, 100, 255 };
    Vec3f vel;
    Vec3f pos;
    s32 j;
    s32 i;

    Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.posRot.pos, 30, NA_SE_EV_ICE_BROKEN);
    for (i = 0; i < 2; i++) {
        for (j = 0; j < 10; j++) {
            pos.x = this->dyna.actor.posRot.pos.x + Rand_CenteredFloat(8.0f);
            pos.y = this->dyna.actor.posRot.pos.y + (Rand_ZeroOne() * arg2) + (i * arg2);
            pos.z = this->dyna.actor.posRot.pos.z + Rand_CenteredFloat(8.0f);

            vel.x = Rand_CenteredFloat(7.0f);
            vel.z = Rand_CenteredFloat(7.0f);
            vel.y = (Rand_ZeroOne() * 4.0f) + 8.0f;

            EffectSsEnIce_Spawn(globalCtx, &pos, (Rand_ZeroOne() * 0.2f) + 0.1f, &vel, &accel, &primColor, &envColor,
                                30);
        }
    }
}

void BgIceTurara_Stalagmite(BgIceTurara* this, GlobalContext* globalCtx) {
    if (this->collider.base.acFlags & 2) {
        BgIceTurara_Break(this, globalCtx, 50.0f);
        Actor_Kill(&this->dyna.actor);
        return;
    }
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

void BgIceTurara_Wait(BgIceTurara* this, GlobalContext* globalCtx) {
    if (this->dyna.actor.xzDistToLink < 60.0f) {
        this->shiverTimer = 10;
        this->actionFunc = BgIceTurara_Shiver;
    }
}

void BgIceTurara_Shiver(BgIceTurara* this, GlobalContext* globalCtx) {
    s16 phi_v0_3;
    s16 phi_v0_2;
    f32 sp28;

    if (this->shiverTimer != 0) {
        this->shiverTimer--;
    }
    if (!(this->shiverTimer % 4)) {
        Audio_PlayActorSound2(&this->dyna.actor, NA_SE_EV_ICE_SWING);
    }
    if (this->shiverTimer == 0) {
        this->dyna.actor.posRot.pos.x = this->dyna.actor.initPosRot.pos.x;
        this->dyna.actor.posRot.pos.z = this->dyna.actor.initPosRot.pos.z;
        Collider_CylinderUpdate(&this->dyna.actor, &this->collider);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
        func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
        this->actionFunc = BgIceTurara_Fall;
    } else {
        sp28 = Rand_ZeroOne();
        phi_v0_2 = (Rand_ZeroOne() < 0.5f ? -1 : 1);
        this->dyna.actor.posRot.pos.x = (phi_v0_2 * ((0.5f * sp28) + 0.5f)) + this->dyna.actor.initPosRot.pos.x;
        sp28 = Rand_ZeroOne();
        phi_v0_3 = (Rand_ZeroOne() < 0.5f ? -1 : 1);
        this->dyna.actor.posRot.pos.z = (phi_v0_3 * ((0.5f * sp28) + 0.5f)) + this->dyna.actor.initPosRot.pos.z;
    }
}

void BgIceTurara_Fall(BgIceTurara* this, GlobalContext* globalCtx) {
    if ((this->collider.base.atFlags & 2) || (this->dyna.actor.bgCheckFlags & 1)) {
        this->collider.base.atFlags &= ~2;
        this->dyna.actor.bgCheckFlags &= ~1;
        if (this->dyna.actor.posRot.pos.y < this->dyna.actor.groundY) {
            this->dyna.actor.posRot.pos.y = this->dyna.actor.groundY;
        }
        BgIceTurara_Break(this, globalCtx, 40.0f);
        if (this->dyna.actor.params == TURARA_STALACTITE_REGROW) {
            this->dyna.actor.posRot.pos.y = this->dyna.actor.initPosRot.pos.y + 120.0f;
            func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
            this->actionFunc = BgIceTurara_Regrow;
        } else {
            Actor_Kill(&this->dyna.actor);
            return;
        }
    } else {
        Actor_MoveForward(&this->dyna.actor);
        this->dyna.actor.posRot.pos.y += 40.0f;
        func_8002E4B4(globalCtx, &this->dyna.actor, 0.0f, 0.0f, 0.0f, 4);
        this->dyna.actor.posRot.pos.y -= 40.0f;
        Collider_CylinderUpdate(&this->dyna.actor, &this->collider);
        CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
}

void BgIceTurara_Regrow(BgIceTurara* this, GlobalContext* globalCtx) {
    if (Math_StepToF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, 1.0f)) {
        this->actionFunc = BgIceTurara_Wait;
        this->dyna.actor.velocity.y = 0.0f;
    }
}

void BgIceTurara_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgIceTurara* this = THIS;

    this->actionFunc(this, globalCtx);
}

void BgIceTurara_Draw(Actor* thisx, GlobalContext* globalCtx) {
    Gfx_DrawDListOpa(globalCtx, D_060023D0);
}
