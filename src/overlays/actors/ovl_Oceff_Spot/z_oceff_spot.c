/*
 * File: z_oceff_spot.c
 * Overlay: ovl_Oceff_Spot
 * Description: Sun's Song Effect
 */

#include "z_oceff_spot.h"
#include <vt.h>

#define FLAGS 0x02000010

#define THIS ((OceffSpot*)thisx)

void OceffSpot_Init(Actor* thisx, GlobalContext* globalCtx);
void OceffSpot_Destroy(Actor* thisx, GlobalContext* globalCtx);
void OceffSpot_Update(Actor* thisx, GlobalContext* globalCtx);
void OceffSpot_Draw(Actor* thisx, GlobalContext* globalCtx);

void OceffSpot_GrowCylinder(OceffSpot* this, GlobalContext* globalCtx);

const ActorInit Oceff_Spot_InitVars = {
    ACTOR_OCEFF_SPOT,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(OceffSpot),
    (ActorFunc)OceffSpot_Init,
    (ActorFunc)OceffSpot_Destroy,
    (ActorFunc)OceffSpot_Update,
    (ActorFunc)OceffSpot_Draw,
};

#include "z_oceff_spot_gfx.c"

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 0, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1500, ICHAIN_STOP),
};

void OceffSpot_SetupAction(OceffSpot* this, OceffSpotActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void OceffSpot_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    OceffSpot* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    OceffSpot_SetupAction(this, OceffSpot_GrowCylinder);

    Lights_PointNoGlowSetInfo(&this->lightInfo1, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                              this->actor.posRot.pos.z, 0, 0, 0, 0);
    this->lightNode1 = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &this->lightInfo1);

    Lights_PointNoGlowSetInfo(&this->lightInfo2, this->actor.posRot.pos.x, this->actor.posRot.pos.y,
                              this->actor.posRot.pos.z, 0, 0, 0, 0);
    this->lightNode2 = LightContext_InsertLight(globalCtx, &globalCtx->lightCtx, &this->lightInfo2);
    if (YREG(15)) {
        this->actor.scale.y = 2.4f;
    } else {
        this->actor.scale.y = 0.3f;
    }

    this->unk_174 = 0;
}

void OceffSpot_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    OceffSpot* this = THIS;
    Player* player = PLAYER;

    LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, this->lightNode1);
    LightContext_RemoveLight(globalCtx, &globalCtx->lightCtx, this->lightNode2);
    func_800876C8(globalCtx);
    if ((gSaveContext.nayrusLoveTimer != 0) && (globalCtx->actorCtx.actorList[ACTORTYPE_PLAYER].length != 0)) {
        player->stateFlags3 |= 0x40;
    }
}

void OceffSpot_End(OceffSpot* this, GlobalContext* globalCtx) {
    if (this->unk_174 > 0) {
        this->unk_174 -= 0.05f;
    } else {
        Actor_Kill(&this->actor);
        if (D_8011FB40 != 400 && globalCtx->msgCtx.unk_E40E == 0 && (gSaveContext.eventInf[0] & 0xF) != 1) {
            if (globalCtx->msgCtx.unk_E3F0 != 0x31 || globalCtx->msgCtx.unk_E3EE != 8) {
                gSaveContext.unk_1422 = 1;
                osSyncPrintf(VT_FGCOL(YELLOW));
                // Sun's Song Flag
                osSyncPrintf("z_oceff_spot  太陽の歌フラグ\n");
                osSyncPrintf(VT_RST);
            }
        } else {
            globalCtx->msgCtx.unk_E3EE = 4;
            osSyncPrintf(VT_FGCOL(YELLOW));
            // Ocarina End
            osSyncPrintf("z_oceff_spot  オカリナ終了\n");
            osSyncPrintf(VT_RST);
        }
    }
}

void OceffSpot_Wait(OceffSpot* this, GlobalContext* globalCtx) {
    if (this->timer > 0) {
        this->timer--;
    } else {
        OceffSpot_SetupAction(this, OceffSpot_End);
    }
}

void OceffSpot_GrowCylinder(OceffSpot* this, GlobalContext* globalCtx) {
    if (this->unk_174 < 1.0f) {
        this->unk_174 += 0.05f;
    } else {
        OceffSpot_SetupAction(this, OceffSpot_Wait);
        this->timer = 60;
    }
}

void OceffSpot_Update(Actor* thisx, GlobalContext* globalCtx) {
    OceffSpot* this = THIS;
    s32 pad;
    Player* player = PLAYER;
    f32 temp;

    temp = (1.0f - cosf(this->unk_174 * M_PI)) * 0.5f;
    this->actionFunc(this, globalCtx);

    this->actor.scale.z = 0.42f * temp;
    this->actor.scale.x = 0.42f * temp;

    this->actor.posRot.pos = player->actor.posRot.pos;
    this->actor.posRot.pos.y += 5.0f;

    temp = (2.0f - this->unk_174) * this->unk_174;
    func_800773A8(globalCtx, temp * 0.5F, 880.0f, 0.2f, 0.9f);

    Lights_PointNoGlowSetInfo(&this->lightInfo1, (s16)this->actor.posRot.pos.x, (s16)this->actor.posRot.pos.y + 55.0f,
                              (s16)this->actor.posRot.pos.z, (s32)(255.0f * temp), (s32)(255.0f * temp),
                              (s32)(200.0f * temp), (s16)(100.0f * temp));

    Lights_PointNoGlowSetInfo(&this->lightInfo2,
                              (s16)this->actor.posRot.pos.x + Math_Sins(player->actor.shape.rot.y) * 20.0f,
                              (s16)this->actor.posRot.pos.y + 20.0f,
                              (s16)this->actor.posRot.pos.z + Math_Coss(player->actor.shape.rot.y) * 20.0f,
                              (s32)(255.0f * temp), (s32)(255.0f * temp), (s32)(200.0f * temp), (s16)(100.0f * temp));
}

void OceffSpot_Draw(Actor* thisx, GlobalContext* globalCtx) {
    OceffSpot* this = THIS;
    u32 scroll = globalCtx->state.frames & 0xFFFF;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_oceff_spot.c", 466);

    func_80093D84(globalCtx->state.gfxCtx);

    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_oceff_spot.c", 469),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gSPDisplayList(oGfxCtx->polyXlu.p++, sTextureDL);
    gSPDisplayList(oGfxCtx->polyXlu.p++, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, scroll * 2, scroll * (-2), 32, 32,
                                                          1, 0, scroll * (-8), 32, 32));
    gSPDisplayList(oGfxCtx->polyXlu.p++, sCylinderDl);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_oceff_spot.c", 485);
}
