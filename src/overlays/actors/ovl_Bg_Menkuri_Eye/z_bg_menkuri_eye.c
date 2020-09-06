/*
 * File: z_bg_menkuri_eye.c
 * Overlay: ovl_Bg_Menkuri_Eye
 * Description: Eye platform eye switches
 */

#include "z_bg_menkuri_eye.h"

#define FLAGS 0x00000020

#define THIS ((BgMenkuriEye*)thisx)

void BgMenkuriEye_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMenkuriEye_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMenkuriEye_Update(Actor* thisx, GlobalContext* globalCtx);
void BgMenkuriEye_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Bg_Menkuri_Eye_InitVars = {
    ACTOR_BG_MENKURI_EYE,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_MENKURI_OBJECTS,
    sizeof(BgMenkuriEye),
    (ActorFunc)BgMenkuriEye_Init,
    (ActorFunc)BgMenkuriEye_Destroy,
    (ActorFunc)BgMenkuriEye_Update,
    (ActorFunc)BgMenkuriEye_Draw,
};

extern Gfx D_06002D20[];
s32 D_8089C1A0;

static ColliderJntSphItemInit sJntSphItemsInit[1] = {
    {
        { 0x04, { 0x00000000, 0x00, 0x00 }, { 0x0001F820, 0x00, 0x00 }, 0x00, 0x01, 0x00 },
        { 1, { { 0, 0, 0 }, 14 }, 100 },
    },
};

static ColliderJntSphInit sJntSphInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x00, 0x20, COLSHAPE_JNTSPH },
    1,
    sJntSphItemsInit,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgMenkuriEye_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgMenkuriEye* this = THIS;
    ColliderJntSphItem* colliderList;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    Collider_InitJntSph(globalCtx, &this->collider);
    Collider_SetJntSph(globalCtx, &this->collider, &this->actor, &sJntSphInit, this->colliderItems);
    this->collider.list->dim.worldSphere.center.x = this->actor.posRot.pos.x;
    this->collider.list->dim.worldSphere.center.y = this->actor.posRot.pos.y;
    this->collider.list->dim.worldSphere.center.z = this->actor.posRot.pos.z;
    colliderList = this->collider.list;
    colliderList->dim.worldSphere.radius = colliderList->dim.modelSphere.radius;
    if (!Flags_GetSwitch(globalCtx, this->actor.params)) {
        D_8089C1A0 = 0;
    }
    this->framesUntilDisable = -1;
}

void BgMenkuriEye_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgMenkuriEye* this = THIS;

    Collider_DestroyJntSph(globalCtx, &this->collider);
}

void BgMenkuriEye_Update(Actor* thisx, GlobalContext* globalCtx) {
    BgMenkuriEye* this = THIS;

    if (!Flags_GetSwitch(globalCtx, this->actor.params)) {
        if (this->framesUntilDisable != -1) {
            if (this->framesUntilDisable != 0) {
                this->framesUntilDisable -= 1;
            }
            if (this->framesUntilDisable == 0) {
                this->framesUntilDisable = -1;
                D_8089C1A0 -= 1;
            }
        }
    }
    if ((this->collider.base.acFlags & 2) &&
        (ABS((s16)(this->collider.base.ac->posRot.rot.y - this->actor.shape.rot.y)) > 0x5000)) {
        this->collider.base.acFlags &= ~0x2;
        if (this->framesUntilDisable == -1) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_AMOS_DAMAGE);
            D_8089C1A0 += 1;
            D_8089C1A0 = CLAMP_MAX(D_8089C1A0, 4);
        }
        this->framesUntilDisable = 416;
        if (D_8089C1A0 == 4) {
            Flags_SetSwitch(globalCtx, this->actor.params);
            func_80078884(NA_SE_SY_CORRECT_CHIME);
        }
    }
    if (this->framesUntilDisable == -1) {
        CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
    Actor_SetHeight(&this->actor, 0.0f);
}

void BgMenkuriEye_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgMenkuriEye* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_menkuri_eye.c", 292);
    func_80093D84(globalCtx->state.gfxCtx);
    if (Flags_GetSwitch(globalCtx, this->actor.params)) {
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, 200, 0, 0, 255);
    } else if (this->framesUntilDisable == -1) {
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, 200, 0, 0, 0);
    } else {
        gDPSetEnvColor(oGfxCtx->polyXlu.p++, 200, 0, 0, 255);
    }
    Matrix_Translate(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0);
    Matrix_RotateRPY(this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z, 1);
    Matrix_Scale(this->actor.scale.x, this->actor.scale.y, this->actor.scale.z, 1);
    gSPMatrix(oGfxCtx->polyXlu.p++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_menkuri_eye.c", 331),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(oGfxCtx->polyXlu.p++, D_06002D20);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_menkuri_eye.c", 335);
}
