/*
 * File: z_bg_spot17_bakudankabe.c
 * Overlay: ovl_Bg_Spot17_Bakudankabe
 * Description: Death Mountain Crater Bombable Wall
 */

#include "z_bg_spot17_bakudankabe.h"

#define FLAGS 0x00000000

#define THIS ((BgSpot17Bakudankabe*)thisx)

void BgSpot17Bakudankabe_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot17Bakudankabe_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot17Bakudankabe_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot17Bakudankabe_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Bg_Spot17_Bakudankabe_InitVars = {
    ACTOR_BG_SPOT17_BAKUDANKABE,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_SPOT17_OBJ,
    sizeof(BgSpot17Bakudankabe),
    (ActorFunc)BgSpot17Bakudankabe_Init,
    (ActorFunc)BgSpot17Bakudankabe_Destroy,
    (ActorFunc)BgSpot17Bakudankabe_Update,
    (ActorFunc)BgSpot17Bakudankabe_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 3000, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneScale, 500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1000, ICHAIN_STOP),
};

extern UNK_TYPE D_06000A38;
extern Gfx D_060008A0[];
extern Gfx D_06000960[];
extern Gfx D_0500A880[];

void func_808B6BC0(BgSpot17Bakudankabe* this, GlobalContext* globalCtx) {
    s32 pad[2];
    s32 i;
    Vec3f burstDepthY;
    Vec3f burstDepthX;
    f32 sinY;
    f32 cosY;

    sinY = Math_Sins(this->dyna.actor.shape.rot.y);
    cosY = Math_Coss(this->dyna.actor.shape.rot.y);

    burstDepthX.z = 0.0f;
    burstDepthX.x = 0.0f;

    for (i = 0; i < 20; i++) {
        s16 gravityInfluence;
        s16 scale;
        f32 temp1;
        f32 temp2;
        s32 rotationSpeed;

        temp1 = (Math_Rand_ZeroOne() - 0.5f) * 140.0f;
        temp2 = (Math_Rand_ZeroOne() - 0.5f) * 20.0f;

        burstDepthY.x = this->dyna.actor.posRot.pos.x + temp2 * sinY + (temp1 * cosY);
        burstDepthY.y = this->dyna.actor.posRot.pos.y + 30.0f + (i * 6.5f);
        burstDepthY.z = this->dyna.actor.posRot.pos.z + temp2 * cosY - (temp1 * sinY);

        burstDepthX.y = (Math_Rand_ZeroOne() - 0.2f) * 12.0f;
        scale = Math_Rand_ZeroOne() * 55.0f + 8.0f;

        if (scale < 20) {
            gravityInfluence = -300;
        } else if (scale < 35) {
            gravityInfluence = -360;
        } else {
            gravityInfluence = -420;
        }

        if (Math_Rand_ZeroOne() < 0.4f) {
            rotationSpeed = 65;
        } else {
            rotationSpeed = 33;
        }
        func_80029E8C(globalCtx, &burstDepthY, &burstDepthX, &burstDepthY, gravityInfluence, rotationSpeed, 0x1E, 4, 0,
                      scale, 1, 3, 80, -1, OBJECT_GAMEPLAY_FIELD_KEEP, D_0500A880);
    }
    Math_Vec3f_Copy(&burstDepthY, &this->dyna.actor.posRot.pos);
    func_80033480(globalCtx, &burstDepthY, 60.0f, 4, 110, 160, 1);
    burstDepthY.y += 40.0f;
    func_80033480(globalCtx, &burstDepthY, 60.0f, 4, 120, 160, 1);
    burstDepthY.y += 40.0f;
    func_80033480(globalCtx, &burstDepthY, 60.0f, 4, 110, 160, 1);
}

void BgSpot17Bakudankabe_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot17Bakudankabe* this = THIS;
    s32 pad;
    s32 sp24 = 0;

    DynaPolyInfo_SetActorMove(&this->dyna.actor, 0);
    if (Flags_GetSwitch(globalCtx, (this->dyna.actor.params & 0x3F))) {
        Actor_Kill(&this->dyna.actor);
        return;
    }
    DynaPolyInfo_Alloc(&D_06000A38, &sp24);
    this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, sp24);
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
}

void BgSpot17Bakudankabe_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot17Bakudankabe* this = THIS;
    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

void BgSpot17Bakudankabe_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot17Bakudankabe* this = THIS;
    if (this->dyna.actor.xzDistFromLink < 650.0f && func_80033684(globalCtx, &this->dyna.actor) != NULL) {
        func_808B6BC0(this, globalCtx);
        Flags_SetSwitch(globalCtx, (this->dyna.actor.params & 0x3F));
        Audio_PlaySoundAtPosition(globalCtx, &this->dyna.actor.posRot.pos, 40, NA_SE_EV_WALL_BROKEN);
        func_80078884(NA_SE_SY_CORRECT_CHIME);
        Actor_Kill(&this->dyna.actor);
    }
}

void BgSpot17Bakudankabe_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    s8 r = coss(globalCtx->gameplayFrames * 1500) >> 8;
    s8 g = coss(globalCtx->gameplayFrames * 1500) >> 8;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot17_bakudankabe.c", 269);

    func_80093D18(globalCtx->state.gfxCtx);

    gSPMatrix(oGfxCtx->polyOpa.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot17_bakudankabe.c", 273),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    r = (r >> 1) + 0xC0;
    g = (g >> 1) + 0xC0;

    gDPSetEnvColor(oGfxCtx->polyOpa.p++, r, g, 255, 128);

    gSPDisplayList(oGfxCtx->polyOpa.p++, D_060008A0);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot17_bakudankabe.c", 283);

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot17_bakudankabe.c", 286);

    func_80093D84(globalCtx->state.gfxCtx);

    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot17_bakudankabe.c", 290),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, D_06000960);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot17_bakudankabe.c", 295);
}
