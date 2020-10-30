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

void func_80892220(BgIceTurara* this, GlobalContext* globalCtx);
void func_80892280(BgIceTurara* this, GlobalContext* globalCtx);
void BgIceTurara_Shiver(BgIceTurara* this, GlobalContext* globalCtx);
void func_80892424(BgIceTurara* this, GlobalContext* globalCtx);
void func_80892574(BgIceTurara* this, GlobalContext* globalCtx);

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x11, 0x09, 0x00, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x04 }, { 0x4FC007CA, 0x00, 0x00 }, 0x01, 0x01, 0x00 },
    { 13, 120, 0, { 0, 0, 0 } },
};

extern Gfx D_060023D0[];
extern ColHeader D_06002594;

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

InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneScale, 600, ICHAIN_CONTINUE),
    ICHAIN_F32(gravity, -3, ICHAIN_CONTINUE),
    ICHAIN_F32(minVelocityY, -30, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

// gravitational acceleration
Vec3f D_8089267C[] = { 0.0f, -1.0f, 0.0f };

Color_RGBA8 primColor[] = { 170, 255, 255, 255 };

Color_RGBA8 envColor[] = { 0, 50, 100, 255 };

void BgIceTurara_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgIceTurara* this = THIS;
    s16 pad;
    ColHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyInfo_SetActorMove(&this->dyna, 0);
    DynaPolyInfo_Alloc(&D_06002594, &colHeader);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, thisx, &sCylinderInit);
    Collider_CylinderUpdate(thisx, &this->collider);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, colHeader);
    if (thisx->params == 0) {
        this->actionFunc = func_80892220;
        return;
    }
    this->dyna.actor.shape.rot.x = -0x8000;
    this->dyna.actor.shape.unk_08 = 1200.0f;
    this->actionFunc = func_80892280;
}

void BgIceTurara_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgIceTurara* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void BgIceTurara_Break(BgIceTurara* this, GlobalContext* globalCtx, f32 arg2) {
    Vec3f velvec;
    Vec3f posvec;
    s32 phi_s0;
    s32 sp88;

    Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.posRot.pos, 30, NA_SE_EV_ICE_BROKEN);

    for (sp88 = 0; sp88 != 2; sp88++) {
        for (phi_s0 = 0; phi_s0 != 10; phi_s0++) {

            posvec.x = this->dyna.actor.posRot.pos.x + Math_Rand_CenteredFloat(8.0f);
            posvec.y = this->dyna.actor.posRot.pos.y + (Math_Rand_ZeroOne() * arg2) + (sp88 * arg2);
            posvec.z = this->dyna.actor.posRot.pos.z + Math_Rand_CenteredFloat(8.0f);

            velvec.x = Math_Rand_CenteredFloat(7.0f);
            velvec.z = Math_Rand_CenteredFloat(7.0f);
            velvec.y = (Math_Rand_ZeroOne() * 4.0f) + 8.0f;

            EffectSsEnIce_Spawn(globalCtx, &posvec, (Math_Rand_ZeroOne() * 0.2f) + 0.1f, &velvec, D_8089267C,
                                primColor, envColor, 30);
        }
    }
}

void func_80892220(BgIceTurara* this, GlobalContext* globalCtx) {
    if ((this->collider.base.acFlags & 2) != 0) {
        BgIceTurara_Break(this, globalCtx, 50.0f);
        Actor_Kill(&this->dyna.actor);
        return;
    }
    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

void func_80892280(BgIceTurara* this, GlobalContext* globalCtx) {

    if (this->dyna.actor.xzDistFromLink < 60.0f) {
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
        func_8003EBF8(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
        this->actionFunc = func_80892424;
        return;
    }
    sp28 = Math_Rand_ZeroOne();
    phi_v0_2 = (Math_Rand_ZeroOne() < 0.5f ? -1 : 1);
    this->dyna.actor.posRot.pos.x = (phi_v0_2 * ((0.5f * sp28) + 0.5f)) + this->dyna.actor.initPosRot.pos.x;
    sp28 = Math_Rand_ZeroOne();
    phi_v0_3 = (Math_Rand_ZeroOne() < 0.5f ? -1 : 1);
    this->dyna.actor.posRot.pos.z = (phi_v0_3 * ((0.5f * sp28) + 0.5f)) + this->dyna.actor.initPosRot.pos.z;
}

void func_80892424(BgIceTurara* this, GlobalContext* globalCtx) {

    while (true) {
        if ((this->collider.base.atFlags & 2) || (this->dyna.actor.bgCheckFlags & 1)) {
            this->collider.base.atFlags &= 0xFFFD;
            this->dyna.actor.bgCheckFlags &= 0xFFFE;
            if (this->dyna.actor.posRot.pos.y < this->dyna.actor.groundY) {
                this->dyna.actor.posRot.pos.y = this->dyna.actor.groundY;
            }
            BgIceTurara_Break(this, globalCtx, 40.0f);
            if (this->dyna.actor.params != 2) {
            } else {
                this->dyna.actor.posRot.pos.y = this->dyna.actor.initPosRot.pos.y + 120.0f;
                func_8003EC50(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
                this->actionFunc = func_80892574;
                return;
            }
            Actor_Kill(&this->dyna.actor);
            return;
        } else
            break;
    }

    Actor_MoveForward(&this->dyna.actor);
    this->dyna.actor.posRot.pos.y += 40.0f;
    func_8002E4B4(globalCtx, &this->dyna.actor, 0.0f, 0.0f, 0.0f, 4);
    this->dyna.actor.posRot.pos.y -= 40.0f;
    Collider_CylinderUpdate(&this->dyna.actor, &this->collider);
    CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

void func_80892574(BgIceTurara* this, GlobalContext* globalCtx) {

    if (Math_ApproxF(&this->dyna.actor.posRot.pos.y, this->dyna.actor.initPosRot.pos.y, 1.0f) != 0) {
        this->actionFunc = func_80892280;
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
