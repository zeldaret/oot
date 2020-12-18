/*
 * File: z_bg_hidan_curtain.c
 * Overlay: ovl_Bg_Hidan_Curtain
 * Description: Flame circle
 */

#include "z_bg_hidan_curtain.h"

#define FLAGS 0x00000010

#define THIS ((BgHidanCurtain*)thisx)

void BgHidanCurtain_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHidanCurtain_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHidanCurtain_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHidanCurtain_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgHidanCurtain_WaitForSwitchOn(BgHidanCurtain* this, GlobalContext* globalCtx);
void BgHidanCurtain_WaitForCutscene(BgHidanCurtain* this, GlobalContext* globalCtx);
void BgHidanCurtain_WaitForClear(BgHidanCurtain* this, GlobalContext* globalCtx);
void BgHidanCurtain_TurnOn(BgHidanCurtain* this, GlobalContext* globalCtx);
void BgHidanCurtain_TurnOff(BgHidanCurtain* this, GlobalContext* globalCtx);
void BgHidanCurtain_WaitForTimer(BgHidanCurtain* this, GlobalContext* globalCtx);

extern Gfx D_040184B0[];

typedef struct {
    /* 0x00 */ s16 radius;
    /* 0x02 */ s16 height;
    /* 0x04 */ f32 scale;
    /* 0x08 */ f32 riseDist;
    /* 0x0C */ f32 riseSpeed;
} BgHidanCurtainParams; // size = 0x10

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x11, 0x00, 0x09, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x20000000, 0x01, 0x04 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x19, 0x00, 0x01 },
    { 81, 144, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit sCcInfoInit = { 1, 0x50, 0x64, 0xFF };

static BgHidanCurtainParams sHCParams[] = { { 81, 144, 0.090f, 144.0f, 5.0f }, { 46, 88, 0.055f, 88.0f, 3.0f } };

const ActorInit Bg_Hidan_Curtain_InitVars = {
    ACTOR_BG_HIDAN_CURTAIN,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(BgHidanCurtain),
    (ActorFunc)BgHidanCurtain_Init,
    (ActorFunc)BgHidanCurtain_Destroy,
    (ActorFunc)BgHidanCurtain_Update,
    (ActorFunc)BgHidanCurtain_Draw,
};

void BgHidanCurtain_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgHidanCurtain* this = THIS;
    BgHidanCurtainParams* hcParams;

    osSyncPrintf("Curtain (arg_data 0x%04x)\n", this->actor.params);
    Actor_SetHeight(&this->actor, 20.0f);
    this->type = (thisx->params >> 0xC) & 0xF;
    if (this->type > 6) {
        // Type is not set
        osSyncPrintf("Error : object のタイプが設定されていない(%s %d)(arg_data 0x%04x)\n", "../z_bg_hidan_curtain.c",
                     352, this->actor.params);
        Actor_Kill(&this->actor);
        return;
    }

    this->size = ((this->type == 2) || (this->type == 4)) ? 1 : 0;
    hcParams = &sHCParams[this->size];
    this->treasureFlag = (thisx->params >> 6) & 0x3F;
    thisx->params &= 0x3F;

    if ((this->actor.params < 0) || (this->actor.params > 0x3F)) {
        // Save bit is not set
        osSyncPrintf("Warning : object のセーブビットが設定されていない(%s %d)(arg_data 0x%04x)\n",
                     "../z_bg_hidan_curtain.c", 373, this->actor.params);
    }
    Actor_SetScale(&this->actor, hcParams->scale);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    this->collider.dim.pos.x = this->actor.posRot.pos.x;
    this->collider.dim.pos.y = this->actor.posRot.pos.y;
    this->collider.dim.pos.z = this->actor.posRot.pos.z;
    this->collider.dim.radius = hcParams->radius;
    this->collider.dim.height = hcParams->height;
    Collider_CylinderUpdate(&this->actor, &this->collider);
    func_80061ED4(&thisx->colChkInfo, NULL, &sCcInfoInit);
    if (this->type == 0) {
        this->actionFunc = BgHidanCurtain_WaitForClear;
    } else {
        this->actionFunc = BgHidanCurtain_WaitForSwitchOn;
        if ((this->type == 4) || (this->type == 5)) {
            this->actor.posRot.pos.y = this->actor.initPosRot.pos.y - hcParams->riseDist;
        }
    }
    if (((this->type == 1) && Flags_GetTreasure(globalCtx, this->treasureFlag)) ||
        (((this->type == 0) || (this->type == 6)) && Flags_GetClear(globalCtx, this->actor.room))) {
        Actor_Kill(&this->actor);
    }
    this->texScroll = Math_Rand_ZeroOne() * 15.0f;
}

void BgHidanCurtain_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgHidanCurtain* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void BgHidanCurtain_WaitForSwitchOn(BgHidanCurtain* this, GlobalContext* globalCtx) {
    if (Flags_GetSwitch(globalCtx, this->actor.params)) {
        if (this->type == 1) {
            this->actionFunc = BgHidanCurtain_WaitForCutscene;
            func_800800F8(globalCtx, 3350, -99, &this->actor, 0);
            this->timer = 50;
        } else if (this->type == 3) {
            this->actionFunc = BgHidanCurtain_WaitForCutscene;
            func_800800F8(globalCtx, 3360, 60, &this->actor, 0);
            this->timer = 30;
        } else {
            this->actionFunc = BgHidanCurtain_TurnOff;
        }
    }
}

void BgHidanCurtain_WaitForCutscene(BgHidanCurtain* this, GlobalContext* globalCtx) {
    if (this->timer-- == 0) {
        this->actionFunc = BgHidanCurtain_TurnOff;
    }
}

void BgHidanCurtain_WaitForClear(BgHidanCurtain* this, GlobalContext* globalCtx) {
    if (Flags_GetClear(globalCtx, this->actor.room)) {
        this->actionFunc = BgHidanCurtain_TurnOff;
    }
}

void BgHidanCurtain_WaitForSwitchOff(BgHidanCurtain* this, GlobalContext* globalCtx) {
    if (!Flags_GetSwitch(globalCtx, this->actor.params)) {
        this->actionFunc = BgHidanCurtain_TurnOn;
    }
}

void BgHidanCurtain_TurnOn(BgHidanCurtain* this, GlobalContext* globalCtx) {
    f32 riseSpeed = sHCParams[this->size].riseSpeed;

    if (Math_ApproxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y, riseSpeed)) {
        Flags_UnsetSwitch(globalCtx, this->actor.params);
        this->actionFunc = BgHidanCurtain_WaitForSwitchOn;
    }
}

void BgHidanCurtain_TurnOff(BgHidanCurtain* this, GlobalContext* globalCtx) {
    BgHidanCurtainParams* hcParams = &sHCParams[this->size];

    if (Math_ApproxF(&this->actor.posRot.pos.y, this->actor.initPosRot.pos.y - hcParams->riseDist,
                     hcParams->riseSpeed)) {
        if ((this->type == 0) || (this->type == 6)) {
            Actor_Kill(&this->actor);
        } else if (this->type == 5) {
            this->actionFunc = BgHidanCurtain_WaitForSwitchOff;
        } else {
            if (this->type == 2) {
                this->timer = 400;
            } else if (this->type == 4) {
                this->timer = 200;
            } else if (this->type == 3) {
                this->timer = 160;
            } else { // this->type == 1
                this->timer = 300;
            }
            this->actionFunc = BgHidanCurtain_WaitForTimer;
        }
    }
}

void BgHidanCurtain_WaitForTimer(BgHidanCurtain* this, GlobalContext* globalCtx) {
    DECR(this->timer);
    if (this->timer == 0) {
        this->actionFunc = BgHidanCurtain_TurnOn;
    }
    if ((this->type == 1) || (this->type == 3)) {
        func_8002F994(&this->actor, this->timer);
    }
}

void BgHidanCurtain_Update(Actor* thisx, GlobalContext* globalCtx2) {
    GlobalContext* globalCtx = globalCtx2;
    BgHidanCurtain* this = THIS;
    BgHidanCurtainParams* hcParams = &sHCParams[this->size];
    f32 riseProgress;

    if ((globalCtx->cameraPtrs[0]->setting == 0x28) || (globalCtx->cameraPtrs[0]->setting == 0x38)) {
        this->collider.base.atFlags &= ~2;
    } else {
        if (this->collider.base.atFlags & 2) {
            this->collider.base.atFlags &= ~2;
            func_8002F71C(globalCtx, &this->actor, 5.0f, this->actor.yawTowardsLink, 1.0f);
        }
        if ((this->type == 4) || (this->type == 5)) {
            this->actor.posRot.pos.y =
                (2.0f * this->actor.initPosRot.pos.y) - hcParams->riseDist - this->actor.posRot.pos.y;
        }

        this->actionFunc(this, globalCtx);

        if ((this->type == 4) || (this->type == 5)) {
            this->actor.posRot.pos.y =
                (2.0f * this->actor.initPosRot.pos.y) - hcParams->riseDist - this->actor.posRot.pos.y;
        }
        riseProgress =
            (hcParams->riseDist - (this->actor.initPosRot.pos.y - this->actor.posRot.pos.y)) / hcParams->riseDist;
        this->alpha = 255.0f * riseProgress;
        if (this->alpha > 50) {
            this->collider.dim.height = hcParams->height * riseProgress;
            CollisionCheck_SetAT(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
            if (gSaveContext.sceneSetupIndex <= 3) {
                func_8002F974(&this->actor, NA_SE_EV_FIRE_PILLAR_S - SFX_FLAG);
            }
        } else if ((this->type == 1) && Flags_GetTreasure(globalCtx, this->treasureFlag)) {
            Actor_Kill(&this->actor);
        }
        this->texScroll++;
    }
}

void BgHidanCurtain_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgHidanCurtain* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_hidan_curtain.c", 685);
    func_80093D84(globalCtx->state.gfxCtx);

    gDPSetPrimColor(POLY_XLU_DISP++, 0x80, 0x80, 255, 220, 0, this->alpha);

    gDPSetEnvColor(POLY_XLU_DISP++, 255, 0, 0, 0);

    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, this->texScroll & 0x7F, 0, 0x20, 0x40, 1, 0,
                                (this->texScroll * -0xF) & 0xFF, 0x20, 0x40));

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_hidan_curtain.c", 698),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_XLU_DISP++, D_040184B0);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_hidan_curtain.c", 702);
}
