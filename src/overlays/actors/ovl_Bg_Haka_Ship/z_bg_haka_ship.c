/*
 * File: z_bg_haka_ship.c
 * Overlay: ovl_Bg_Haka_Ship
 * Description: Shadow Temple Ship
 */

#include "z_bg_haka_ship.h"
#include "assets/objects/object_haka_objects/object_haka_objects.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void BgHakaShip_Init(Actor* thisx, PlayState* play);
void BgHakaShip_Destroy(Actor* thisx, PlayState* play);
void BgHakaShip_Update(Actor* thisx, PlayState* play);
void BgHakaShip_Draw(Actor* thisx, PlayState* play);
void BgHakaShip_ChildUpdatePosition(BgHakaShip* this, PlayState* play);
void BgHakaShip_WaitForSong(BgHakaShip* this, PlayState* play);
void BgHakaShip_CutsceneStationary(BgHakaShip* this, PlayState* play);
void BgHakaShip_Move(BgHakaShip* this, PlayState* play);
void BgHakaShip_SetupCrash(BgHakaShip* this, PlayState* play);
void BgHakaShip_CrashShake(BgHakaShip* this, PlayState* play);
void BgHakaShip_CrashFall(BgHakaShip* this, PlayState* play);

ActorProfile Bg_Haka_Ship_Profile = {
    /**/ ACTOR_BG_HAKA_SHIP,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_HAKA_OBJECTS,
    /**/ sizeof(BgHakaShip),
    /**/ BgHakaShip_Init,
    /**/ BgHakaShip_Destroy,
    /**/ BgHakaShip_Update,
    /**/ BgHakaShip_Draw,
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgHakaShip_Init(Actor* thisx, PlayState* play) {
    BgHakaShip* this = (BgHakaShip*)thisx;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS);
    this->switchFlag = PARAMS_GET_U(thisx->params, 8, 8);
    this->dyna.actor.params &= 0xFF;

    if (this->dyna.actor.params == 0) {
        CollisionHeader_GetVirtual(&object_haka_objects_Col_00E408, &colHeader);
        this->counter = 8;
        this->actionFunc = BgHakaShip_WaitForSong;
    } else {
        CollisionHeader_GetVirtual(&object_haka_objects_Col_00ED7C, &colHeader);
        this->actionFunc = BgHakaShip_ChildUpdatePosition;
    }
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
    this->dyna.actor.world.rot.y = this->dyna.actor.shape.rot.y - 0x4000;
    this->yOffset = 0;
    if (this->dyna.actor.params == 0 &&
        Actor_SpawnAsChild(&play->actorCtx, &this->dyna.actor, play, ACTOR_BG_HAKA_SHIP,
                           this->dyna.actor.world.pos.x + -10.0f, this->dyna.actor.world.pos.y + 82.0f,
                           this->dyna.actor.world.pos.z, 0, 0, 0, 1) == NULL) {
        Actor_Kill(&this->dyna.actor);
    }
}

void BgHakaShip_Destroy(Actor* thisx, PlayState* play) {
    BgHakaShip* this = (BgHakaShip*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    Audio_StopSfxByPos(&this->bellSfxPos);
}

void BgHakaShip_ChildUpdatePosition(BgHakaShip* this, PlayState* play) {
    Actor* parent = this->dyna.actor.parent;

    if (parent != NULL && parent->update != NULL) {
        this->dyna.actor.world.pos.x = parent->world.pos.x + -10.0f;
        this->dyna.actor.world.pos.y = parent->world.pos.y + 82.0f;
        this->dyna.actor.world.pos.z = parent->world.pos.z;
    } else {
        this->dyna.actor.parent = NULL;
    }
}

void BgHakaShip_WaitForSong(BgHakaShip* this, PlayState* play) {
    if (Flags_GetSwitch(play, this->switchFlag)) {
        if (this->counter) {
            this->counter--;
        }
        if (this->counter == 0) {
            this->counter = 130;
            this->actionFunc = BgHakaShip_CutsceneStationary;
            PRINTF("シーン 外輪船 ...  アァクション！！\n");
            OnePointCutscene_Init(play, 3390, 999, &this->dyna.actor, CAM_ID_MAIN);
        }
    }
}

void BgHakaShip_CutsceneStationary(BgHakaShip* this, PlayState* play) {
    if (this->counter) {
        this->counter--;
    }
    this->yOffset = sinf(this->counter * (M_PI / 25)) * 6144.0f;
    if (this->counter == 0) {
        this->counter = 50;
        this->actionFunc = BgHakaShip_Move;
    }
}

void BgHakaShip_Move(BgHakaShip* this, PlayState* play) {
    f32 distanceFromHome;
    Actor* child;

    if (this->counter) {
        this->counter--;
    }
    if (this->counter == 0) {
        this->counter = 50;
    }
    this->dyna.actor.world.pos.y = (sinf(this->counter * (M_PI / 25)) * 50.0f) + this->dyna.actor.home.pos.y;

    distanceFromHome = this->dyna.actor.home.pos.x - this->dyna.actor.world.pos.x;
    if (distanceFromHome > 7650.0f) {
        this->dyna.actor.world.pos.x = this->dyna.actor.home.pos.x - 7650.0f;
        this->dyna.actor.speed = 0.0f;
    }
    if (distanceFromHome > 7600.0f && !Play_InCsMode(play)) {
        this->counter = 40;
        this->dyna.actor.speed = 0.0f;
        Message_StartTextbox(play, 0x5071, NULL);
        this->actionFunc = BgHakaShip_SetupCrash;
    } else {
        Math_StepToF(&this->dyna.actor.speed, 4.0f, 0.2f);
    }
    child = this->dyna.actor.child;
    if (child != NULL && child->update != NULL) {
        child->shape.rot.z += ((655.0f / 13.0f) * this->dyna.actor.speed);
    } else {
        this->dyna.actor.child = NULL;
    }
    this->yOffset = sinf(this->counter * (M_PI / 25)) * 6144.0f;
}

void BgHakaShip_SetupCrash(BgHakaShip* this, PlayState* play) {
    if (this->counter) {
        this->counter--;
    }
    if (this->counter == 0) {
        this->counter = 40;
        this->actionFunc = BgHakaShip_CrashShake;
    }
    Math_ScaledStepToS(&this->yOffset, 0, 128);
}

void BgHakaShip_CrashShake(BgHakaShip* this, PlayState* play) {
    if (this->counter != 0) {
        this->counter--;
    }
    this->dyna.actor.world.pos.y = this->counter % 4 * 3 - 6 + this->dyna.actor.home.pos.y;
    if (!this->counter) {
        this->dyna.actor.gravity = -1.0f;
        this->actionFunc = BgHakaShip_CrashFall;
    }
    Actor_PlaySfx_Flagged(&this->dyna.actor, NA_SE_EV_BLOCKSINK - SFX_FLAG);
}

void BgHakaShip_CrashFall(BgHakaShip* this, PlayState* play) {
    Actor* child;

    if (this->dyna.actor.home.pos.y - this->dyna.actor.world.pos.y > 2000.0f) {
        Actor_Kill(&this->dyna.actor);
        child = this->dyna.actor.child;
        if (child != NULL && child->update != NULL) {
            Actor_Kill(child);
        }
    } else {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_BLOCKSINK - SFX_FLAG);
        if ((this->dyna.actor.home.pos.y - this->dyna.actor.world.pos.y > 500.0f) &&
            DynaPolyActor_IsPlayerOnTop(&this->dyna)) {
            Play_TriggerVoidOut(play);
        }
    }
}

void BgHakaShip_Update(Actor* thisx, PlayState* play) {
    BgHakaShip* this = (BgHakaShip*)thisx;

    this->actionFunc(this, play);
    if (this->dyna.actor.params == 0) {
        Actor_MoveXZGravity(&this->dyna.actor);
    }
}

void BgHakaShip_Draw(Actor* thisx, PlayState* play) {
    BgHakaShip* this = (BgHakaShip*)thisx;
    f32 angleTemp;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_haka_ship.c", 528);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    if (1) {}

    if (this->dyna.actor.params == 0) {
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_haka_ship.c", 534);
        gSPDisplayList(POLY_OPA_DISP++, object_haka_objects_DL_00D330);
        angleTemp = BINANG_TO_RAD(this->yOffset);
        Matrix_Translate(-3670.0f, 620.0f, 1150.0f, MTXMODE_APPLY);
        Matrix_RotateZ(angleTemp, MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_haka_ship.c", 547);
        gSPDisplayList(POLY_OPA_DISP++, object_haka_objects_DL_005A70);
        Matrix_Translate(0.0f, 0.0f, -2300.0f, MTXMODE_APPLY);
        Matrix_RotateZ(-(2.0f * angleTemp), MTXMODE_APPLY);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_haka_ship.c", 556);
        gSPDisplayList(POLY_OPA_DISP++, object_haka_objects_DL_005A70);
    } else {
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_haka_ship.c", 562);
        gSPDisplayList(POLY_OPA_DISP++, object_haka_objects_DL_00E910);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_haka_ship.c", 568);

    if (this->actionFunc == BgHakaShip_CutsceneStationary || this->actionFunc == BgHakaShip_Move) {
        s32 pad;
        Vec3f sp2C;

        sp2C.x = this->dyna.actor.world.pos.x + -367.0f;
        sp2C.y = this->dyna.actor.world.pos.y + 62.0f;
        sp2C.z = this->dyna.actor.world.pos.z;

        SkinMatrix_Vec3fMtxFMultXYZ(&play->viewProjectionMtxF, &sp2C, &this->bellSfxPos);
        Sfx_PlaySfxAtPos(&this->bellSfxPos, NA_SE_EV_SHIP_BELL - SFX_FLAG);
    }
}
