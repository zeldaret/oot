/*
 * File: z_en_siofuki.c
 * Overlay: ovl_En_Siofuki
 * Description: Water Spout
 */

#include "z_en_siofuki.h"
#include "objects/object_siofuki/object_siofuki.h"

#define FLAGS (ACTOR_FLAG_4 | ACTOR_FLAG_5)

void EnSiofuki_Init(Actor* thisx, GlobalContext* globalCtx);
void EnSiofuki_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnSiofuki_Update(Actor* thisx, GlobalContext* globalCtx);
void EnSiofuki_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AFC34C(EnSiofuki* this, GlobalContext* globalCtx);
void func_80AFC544(EnSiofuki* this, GlobalContext* globalCtx);
void func_80AFC478(EnSiofuki* this, GlobalContext* globalCtx);

const ActorInit En_Siofuki_InitVars = {
    ACTOR_EN_SIOFUKI,
    ACTORCAT_BG,
    FLAGS,
    OBJECT_SIOFUKI,
    sizeof(EnSiofuki),
    (ActorFunc)EnSiofuki_Init,
    (ActorFunc)EnSiofuki_Destroy,
    (ActorFunc)EnSiofuki_Update,
    (ActorFunc)EnSiofuki_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void EnSiofuki_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnSiofuki* this = (EnSiofuki*)thisx;
    s32 type;
    CollisionHeader* colHeader = NULL;
    s32 pad;

    if ((thisx->room == 10) && Flags_GetSwitch(globalCtx, 0x1E)) {
        Actor_Kill(thisx);
        return;
    }

    Actor_ProcessInitChain(thisx, sInitChain);
    DynaPolyActor_Init(&this->dyna, DPM_PLAYER);
    CollisionHeader_GetVirtual(&object_siofuki_Col_000D78, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(globalCtx, &globalCtx->colCtx.dyna, thisx, colHeader);
    this->sfxFlags |= 1;

    type = ((u16)thisx->params >> 0xC) & 0xF;
    if (!((type == 0) || (type == 1))) {
        Actor_Kill(thisx);
        return;
    }

    this->initPosY = thisx->world.pos.y;
    this->unk_174 = 35.0f;
    this->unk_170 = -6058.0f + this->unk_174;

    if (thisx->shape.rot.x != 0) {
        this->maxHeight = thisx->shape.rot.x * 40.0f;
        this->currentHeight = this->maxHeight;
    }
    this->activeTime = 0;
    if (thisx->shape.rot.y != 0) {
        this->activeTime = thisx->shape.rot.y;
    }
    if (thisx->shape.rot.z != 0) {
        thisx->scale.x = thisx->shape.rot.z * (1.0f / 1.73f) * 0.1f;
        thisx->scale.z = thisx->shape.rot.z * 0.5f * 0.1f;
    }

    thisx->world.rot.x = 0;
    thisx->world.rot.y = 0;
    thisx->world.rot.z = 0;
    thisx->shape.rot.x = 0;
    thisx->shape.rot.y = 0;
    thisx->shape.rot.z = 0;

    type = ((u16)thisx->params >> 0xC) & 0xF;
    if (type == EN_SIOFUKI_RAISING) {
        this->currentHeight = 10.0f;
        this->targetHeight = 10.0f;
        this->actionFunc = func_80AFC34C;
    } else if (type == EN_SIOFUKI_LOWERING) {
        if (Flags_GetTreasure(globalCtx, (u16)thisx->params & 0x3F)) {
            this->currentHeight = -45.0f;
            this->targetHeight = -45.0f;
            this->actionFunc = func_80AFC544;
        } else {
            this->targetHeight = this->currentHeight;
            this->actionFunc = func_80AFC478;
        }
    }
}

void EnSiofuki_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnSiofuki* this = (EnSiofuki*)thisx;

    DynaPoly_DeleteBgActor(globalCtx, &globalCtx->colCtx.dyna, this->dyna.bgId);
}

void func_80AFBDC8(EnSiofuki* this, GlobalContext* globalCtx) {
    this->oscillation = sinf((globalCtx->gameplayFrames & 0x1F) / 32.0f * M_PI * 2.0f) * 4.0f;
    this->unk_170 = this->unk_174 * 10.0f + -6058.0f - this->oscillation * 10.0f;
    this->unk_174 = 35.0f;
    this->dyna.actor.world.pos.y = this->initPosY + this->currentHeight + this->oscillation;
}

void func_80AFBE8C(EnSiofuki* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);
    f32 dX;
    f32 dY;
    f32 dZ;
    s16 angle;
    s16 dAngle;
    f32 dist2d;
    f32 speedScale;

    dX = player->actor.world.pos.x - this->dyna.actor.world.pos.x;
    dY = player->actor.world.pos.y - this->dyna.actor.world.pos.y;
    dZ = player->actor.world.pos.z - this->dyna.actor.world.pos.z;

    if ((dX > (this->dyna.actor.scale.x * -346.0f)) && (dX < (this->dyna.actor.scale.x * 346.0f)) &&
        (dZ > (this->dyna.actor.scale.z * -400.0f)) && (dZ < (this->dyna.actor.scale.z * 400.0f)) && (dY < 0.0f)) {
        if (func_8004356C(&this->dyna)) {
            if (this->splashTimer <= 0) {
                EffectSsGSplash_Spawn(globalCtx, &player->actor.world.pos, NULL, NULL, 1, 1);
                this->splashTimer = 10;
            } else {
                this->splashTimer--;
            }

            this->applySpeed = false;
            this->appliedSpeed = 0.0f;
            this->targetAppliedSpeed = 0.0f;
        } else {
            dist2d = sqrtf(SQ(dX) + SQ(dZ));
            this->applySpeed = true;
            this->splashTimer = 0;
            angle = RADF_TO_BINANG(Math_FAtan2F(dX, dZ));
            dAngle = (player->actor.world.rot.y ^ 0x8000) - angle;
            player->actor.gravity = 0.0f;
            player->actor.velocity.y = 0.0f;
            Math_SmoothStepToF(&player->actor.world.pos.y, this->dyna.actor.world.pos.y, 0.5f, 4.0f, 1.0f);

            if ((dAngle < 0x4000) && (dAngle > -0x4000)) {
                this->appliedYaw = player->actor.world.rot.y ^ 0x8000;
                speedScale = dist2d / (this->dyna.actor.scale.x * 40.0f * 10.0f);
                speedScale = CLAMP_MIN(speedScale, 0.0f);
                speedScale = CLAMP_MAX(speedScale, 1.0f);
                player->linearVelocity *= speedScale;
                Math_ApproachF(&this->targetAppliedSpeed, 3.0f, 1.0f, 1.0f);
                Math_ApproachF(&this->appliedSpeed, this->targetAppliedSpeed, 1.0f, 0.3f * speedScale);
            } else {
                this->appliedYaw = player->actor.world.rot.y;
                player->linearVelocity /= 2.0f;
                Math_ApproachF(&this->targetAppliedSpeed, 3.0f, 1.0f, 1.0f);
                Math_ApproachF(&this->appliedSpeed, this->targetAppliedSpeed, 1.0f, 0.1f);
            }

            player->pushedYaw = this->appliedYaw;
            player->pushedSpeed = this->appliedSpeed;
        }
    } else {
        if (this->applySpeed) {
            player->linearVelocity = this->appliedSpeed + player->linearVelocity;
            player->currentYaw = this->appliedYaw;
        }

        this->targetAppliedSpeed = 0.0f;
        this->appliedSpeed = 0.0f;
        this->applySpeed = false;
    }
}

void func_80AFC1D0(EnSiofuki* this, GlobalContext* globalCtx) {
    Math_SmoothStepToF(&this->currentHeight, this->targetHeight, 0.8f, 3.0f, 0.01f);
}

void func_80AFC218(EnSiofuki* this, GlobalContext* globalCtx) {
    func_80AFBDC8(this, globalCtx);
    func_80AFBE8C(this, globalCtx);
    func_80AFC1D0(this, globalCtx);

    this->timer--;
    if (this->timer < 0) {
        Flags_UnsetSwitch(globalCtx, ((u16)this->dyna.actor.params >> 6) & 0x3F);
        switch (((u16)this->dyna.actor.params >> 0xC) & 0xF) {
            case EN_SIOFUKI_RAISING:
                this->targetHeight = 10.0f;
                this->actionFunc = func_80AFC34C;
                break;
            case EN_SIOFUKI_LOWERING:
                this->targetHeight = this->maxHeight;
                this->actionFunc = func_80AFC478;
                break;
        }
    } else {
        func_8002F994(&this->dyna.actor, this->timer);
    }

    if (((((u16)this->dyna.actor.params >> 0xC) & 0xF) == EN_SIOFUKI_LOWERING) &&
        Flags_GetTreasure(globalCtx, (u16)this->dyna.actor.params & 0x3F)) {
        this->currentHeight = -45.0f;
        this->targetHeight = -45.0f;
        Flags_UnsetSwitch(globalCtx, ((u16)this->dyna.actor.params >> 6) & 0x3F);
        this->actionFunc = func_80AFC544;
    }
}

void func_80AFC34C(EnSiofuki* this, GlobalContext* globalCtx) {
    func_80AFBDC8(this, globalCtx);
    func_80AFBE8C(this, globalCtx);
    func_80AFC1D0(this, globalCtx);

    if (Flags_GetSwitch(globalCtx, ((u16)this->dyna.actor.params >> 6) & 0x3F)) {
        this->targetHeight = 400.0f;
        this->timer = 300;
        this->actionFunc = func_80AFC218;
    }
}

void func_80AFC3C8(EnSiofuki* this, GlobalContext* globalCtx) {
    func_80AFBDC8(this, globalCtx);
    func_80AFBE8C(this, globalCtx);
    func_80AFC1D0(this, globalCtx);

    this->timer--;
    if (this->timer < 0) {
        this->timer = this->activeTime * 20;
        this->targetHeight = -45.0f;
        this->actionFunc = func_80AFC218;
    }

    if (Flags_GetTreasure(globalCtx, (u16)this->dyna.actor.params & 0x3F)) {
        this->currentHeight = -45.0f;
        this->targetHeight = -45.0f;
        this->actionFunc = func_80AFC544;
    }
}

void func_80AFC478(EnSiofuki* this, GlobalContext* globalCtx) {
    func_80AFBDC8(this, globalCtx);
    func_80AFBE8C(this, globalCtx);
    func_80AFC1D0(this, globalCtx);

    if (((u16)this->dyna.actor.params >> 0xC & 0xF) == EN_SIOFUKI_LOWERING) {
        if (Flags_GetSwitch(globalCtx, ((u16)this->dyna.actor.params >> 6) & 0x3F)) {
            this->timer = 20;
            this->actionFunc = func_80AFC3C8;
            OnePointCutscene_Init(globalCtx, 5010, 40, &this->dyna.actor, MAIN_CAM);
        }

        if (Flags_GetTreasure(globalCtx, (u16)this->dyna.actor.params & 0x3F)) {
            this->currentHeight = -45.0f;
            this->targetHeight = -45.0f;
            this->actionFunc = func_80AFC544;
        }
    }
}

void func_80AFC544(EnSiofuki* this, GlobalContext* globalCtx) {
    func_80AFBDC8(this, globalCtx);
    func_80AFC1D0(this, globalCtx);
}

void EnSiofuki_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnSiofuki* this = (EnSiofuki*)thisx;

    this->actionFunc(this, globalCtx);
}

void EnSiofuki_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnSiofuki* this = (EnSiofuki*)thisx;
    u32 x;
    u32 y;
    u32 gameplayFrames = globalCtx->gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_siofuki.c", 654);
    Gfx_SetupDL25Xlu(globalCtx->state.gfxCtx);
    Matrix_Translate(0.0f, this->unk_170, 0.0f, MTXMODE_APPLY);
    Matrix_Scale(1.0f, 1.0f, 1.0f, MTXMODE_APPLY);
    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_en_siofuki.c", 662),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    x = gameplayFrames * 15;
    y = gameplayFrames * -15;
    gSPSegment(POLY_XLU_DISP++, 0x08, Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, x, y, 64, 64, 1, x, y, 64, 64));
    gSPDisplayList(POLY_XLU_DISP++, object_siofuki_DL_000B70);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_siofuki.c", 674);

    if (this->sfxFlags & 1) {
        f32 heightRatio;
        switch (((u16)thisx->params >> 0xC) & 0xF) {
            case EN_SIOFUKI_RAISING:
                heightRatio = (this->currentHeight - 10.0f) / (400.0f - 10.0f);
                func_800F436C(&thisx->projectedPos, NA_SE_EV_FOUNTAIN - SFX_FLAG, 1.0f + heightRatio);
                break;
            case EN_SIOFUKI_LOWERING:
                if (this->currentHeight > -35.0f) {
                    heightRatio = (this->currentHeight - -35.0f) / (this->maxHeight - -35.0f);
                    func_800F436C(&thisx->projectedPos, NA_SE_EV_FOUNTAIN - SFX_FLAG, 1.0f + heightRatio);
                }
                break;
        }
    }
}
