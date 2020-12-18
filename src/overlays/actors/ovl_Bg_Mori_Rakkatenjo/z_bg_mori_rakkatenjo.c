/*
 * File: z_bg_mori_rakkatenjo.c
 * Overlay: ovl_Bg_Mori_Rakkatenjo
 * Description: Falling ceiling in Forest Temple
 */

#include "z_bg_mori_rakkatenjo.h"

#define FLAGS 0x00000030

#define THIS ((BgMoriRakkatenjo*)thisx)

void BgMoriRakkatenjo_Init(Actor* thisx, GlobalContext* globalCtx);
void BgMoriRakkatenjo_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgMoriRakkatenjo_Update(Actor* thisx, GlobalContext* globalCtx);
void BgMoriRakkatenjo_Draw(Actor* thisx, GlobalContext* globalCtx);

void BgMoriRakkatenjo_SetupWaitForMoriTex(BgMoriRakkatenjo* this);
void BgMoriRakkatenjo_WaitForMoriTex(BgMoriRakkatenjo* this, GlobalContext* globalCtx);
void BgMoriRakkatenjo_SetupWait(BgMoriRakkatenjo* this);
void BgMoriRakkatenjo_Wait(BgMoriRakkatenjo* this, GlobalContext* globalCtx);
void BgMoriRakkatenjo_SetupFall(BgMoriRakkatenjo* this);
void BgMoriRakkatenjo_Fall(BgMoriRakkatenjo* this, GlobalContext* globalCtx);
void BgMoriRakkatenjo_SetupRest(BgMoriRakkatenjo* this);
void BgMoriRakkatenjo_Rest(BgMoriRakkatenjo* this, GlobalContext* globalCtx);
void BgMoriRakkatenjo_SetupRise(BgMoriRakkatenjo* this);
void BgMoriRakkatenjo_Rise(BgMoriRakkatenjo* this, GlobalContext* globalCtx);

extern ColHeader D_060087AC;
extern Gfx D_06007690[];

static s16 sCamSetting = 0;

const ActorInit Bg_Mori_Rakkatenjo_InitVars = {
    ACTOR_BG_MORI_RAKKATENJO,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_MORI_OBJECTS,
    sizeof(BgMoriRakkatenjo),
    (ActorFunc)BgMoriRakkatenjo_Init,
    (ActorFunc)BgMoriRakkatenjo_Destroy,
    (ActorFunc)BgMoriRakkatenjo_Update,
    NULL,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(gravity, -1, ICHAIN_CONTINUE),
    ICHAIN_F32(minVelocityY, -11, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 1000, ICHAIN_STOP),
};

void BgMoriRakkatenjo_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgMoriRakkatenjo* this = THIS;
    ColHeader* colHeader = NULL;

    DynaPolyInfo_SetActorMove(&this->dyna, DPM_PLAYER);
    // Forest Temple obj. Falling Ceiling
    osSyncPrintf("森の神殿 obj. 落下天井 (home posY %f)\n", this->dyna.actor.initPosRot.pos.y);
    if ((fabsf(1991.0f - this->dyna.actor.initPosRot.pos.x) > 0.001f) ||
        (fabsf(683.0f - this->dyna.actor.initPosRot.pos.y) > 0.001f) ||
        (fabsf(-2520.0f - this->dyna.actor.initPosRot.pos.z) > 0.001f)) {
        // The set position has been changed. Let's fix the program.
        osSyncPrintf("Warning : セット位置が変更されています。プログラムを修正しましょう。\n");
    }
    if (this->dyna.actor.initPosRot.rot.y != 0x8000) {
        // The set Angle has changed. Let's fix the program.
        osSyncPrintf("Warning : セット Angle が変更されています。プログラムを修正しましょう。\n");
    }
    this->moriTexObjIndex = Object_GetIndex(&globalCtx->objectCtx, OBJECT_MORI_TEX);
    if (this->moriTexObjIndex < 0) {
        // Forest Temple obj Falling Ceiling Bank Danger!
        osSyncPrintf("Error : 森の神殿 obj 落下天井 バンク危険！(%s %d)\n", "../z_bg_mori_rakkatenjo.c", 205);
        Actor_Kill(&this->dyna.actor);
        return;
    }
    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyInfo_Alloc(&D_060087AC, &colHeader);
    this->dyna.dynaPolyId =
        DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, &this->dyna.actor, colHeader);
    BgMoriRakkatenjo_SetupWaitForMoriTex(this);
    sCamSetting = 0;
}

void BgMoriRakkatenjo_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgMoriRakkatenjo* this = THIS;

    DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
}

s32 BgMoriRakkatenjo_IsLinkUnder(BgMoriRakkatenjo* this, GlobalContext* globalCtx) {
    Vec3f* pos = &PLAYER->actor.posRot.pos;

    return (-3300.0f < pos->z) && (pos->z < -1840.0f) && (1791.0f < pos->x) && (pos->x < 2191.0f);
}

s32 BgMoriRakkatenjo_IsLinkClose(BgMoriRakkatenjo* this, GlobalContext* globalCtx) {
    Vec3f* pos = &PLAYER->actor.posRot.pos;

    return (-3360.0f < pos->z) && (pos->z < -1840.0f) && (1791.0f < pos->x) && (pos->x < 2191.0f);
}

void BgMoriRakkatenjo_SetupWaitForMoriTex(BgMoriRakkatenjo* this) {
    this->actionFunc = BgMoriRakkatenjo_WaitForMoriTex;
}

void BgMoriRakkatenjo_WaitForMoriTex(BgMoriRakkatenjo* this, GlobalContext* globalCtx) {
    if (Object_IsLoaded(&globalCtx->objectCtx, this->moriTexObjIndex)) {
        BgMoriRakkatenjo_SetupWait(this);
        this->dyna.actor.draw = BgMoriRakkatenjo_Draw;
    }
}

void BgMoriRakkatenjo_SetupWait(BgMoriRakkatenjo* this) {
    this->timer = (this->fallCount > 0) ? 100 : 21;
    this->dyna.actor.posRot.pos.y = 683.0f;
    this->actionFunc = BgMoriRakkatenjo_Wait;
}

void BgMoriRakkatenjo_Wait(BgMoriRakkatenjo* this, GlobalContext* globalCtx) {
    if (this->fallCount == 0) {
        if (BgMoriRakkatenjo_IsLinkClose(this, globalCtx) || (this->timer < 20)) {
            if (this->timer <= 0) {
                BgMoriRakkatenjo_SetupFall(this);
            }
        } else {
            this->timer = 21;
        }
    } else {
        if (BgMoriRakkatenjo_IsLinkUnder(this, globalCtx) || (this->timer < 20)) {
            if (this->timer <= 0) {
                BgMoriRakkatenjo_SetupFall(this);
            }
        } else {
            this->timer = 100;
        }
    }
    if (this->timer < 20) {
        func_800788CC(NA_SE_EV_BLOCKSINK - SFX_FLAG);
    }
}

void BgMoriRakkatenjo_SetupFall(BgMoriRakkatenjo* this) {
    this->actionFunc = BgMoriRakkatenjo_Fall;
    this->bounceCount = 0;
    this->dyna.actor.velocity.y = 0.0f;
}

void BgMoriRakkatenjo_Fall(BgMoriRakkatenjo* this, GlobalContext* globalCtx) {
    static f32 bounceVel[] = { 4.0f, 1.5f, 0.4f, 0.1f };
    s32 pad;
    Actor* thisx = &this->dyna.actor;
    s32 quake;

    Actor_MoveForward(thisx);
    if ((thisx->velocity.y < 0.0f) && (thisx->posRot.pos.y <= 403.0f)) {
        if (this->bounceCount >= ARRAY_COUNT(bounceVel)) {
            BgMoriRakkatenjo_SetupRest(this);
        } else {
            if (this->bounceCount == 0) {
                this->fallCount++;
                func_800788CC(NA_SE_EV_STONE_BOUND);
                func_800AA000(SQ(thisx->yDistFromLink), 0xFF, 0x14, 0x96);
            }
            thisx->posRot.pos.y =
                403.0f - (thisx->posRot.pos.y - 403.0f) * bounceVel[this->bounceCount] / fabsf(thisx->velocity.y);
            thisx->velocity.y = bounceVel[this->bounceCount];
            this->bounceCount++;
            quake = Quake_Add(ACTIVE_CAM, 3);
            Quake_SetSpeed(quake, 50000);
            Quake_SetQuakeValues(quake, 5, 0, 0, 0);
            Quake_SetCountdown(quake, 5);
        }
    }
}

void BgMoriRakkatenjo_SetupRest(BgMoriRakkatenjo* this) {
    this->actionFunc = BgMoriRakkatenjo_Rest;
    this->dyna.actor.posRot.pos.y = 403.0f;
    this->timer = 20;
}

void BgMoriRakkatenjo_Rest(BgMoriRakkatenjo* this, GlobalContext* globalCtx) {
    if (this->timer <= 0) {
        BgMoriRakkatenjo_SetupRise(this);
    }
}

void BgMoriRakkatenjo_SetupRise(BgMoriRakkatenjo* this) {
    this->actionFunc = BgMoriRakkatenjo_Rise;
    this->dyna.actor.velocity.y = -0.1f;
}

void BgMoriRakkatenjo_Rise(BgMoriRakkatenjo* this, GlobalContext* globalCtx) {
    Math_SmoothScaleMaxMinF(&this->dyna.actor.velocity.y, 5.0f, 0.06f, 0.1f, 0.0f);
    this->dyna.actor.posRot.pos.y += this->dyna.actor.velocity.y;
    if (this->dyna.actor.posRot.pos.y >= 683.0f) {
        BgMoriRakkatenjo_SetupWait(this);
    }
}

void BgMoriRakkatenjo_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgMoriRakkatenjo* this = THIS;

    if (this->timer > 0) {
        this->timer--;
    }
    this->actionFunc(this, globalCtx);
    if (BgMoriRakkatenjo_IsLinkUnder(this, globalCtx)) {
        if (sCamSetting == 0) {
            osSyncPrintf("camera changed (mori rakka tenjyo) ... \n");
            sCamSetting = globalCtx->cameraPtrs[0]->setting;
            Camera_SetCameraData(globalCtx->cameraPtrs[0], 1, &this->dyna.actor, NULL, 0, 0, 0);
            Camera_ChangeSetting(globalCtx->cameraPtrs[0], CAM_SET_MORI1);
        }
    } else if (sCamSetting != 0) {
        osSyncPrintf("camera changed (previous) ... \n");
        Camera_ChangeSetting(globalCtx->cameraPtrs[0], CAM_SET_DUNGEON1);
        sCamSetting = 0;
    }
}

void BgMoriRakkatenjo_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    BgMoriRakkatenjo* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_mori_rakkatenjo.c", 497);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, globalCtx->objectCtx.status[this->moriTexObjIndex].segment);

    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_mori_rakkatenjo.c", 502),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gSPDisplayList(POLY_OPA_DISP++, D_06007690);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_mori_rakkatenjo.c", 506);
}
