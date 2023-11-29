#include "z_bg_mizu_shutter.h"
#include "assets/objects/object_mizu_objects/object_mizu_objects.h"

#define FLAGS ACTOR_FLAG_4

void BgMizuShutter_Init(Actor* thisx, PlayState* play);
void BgMizuShutter_Destroy(Actor* thisx, PlayState* play);
void BgMizuShutter_Update(Actor* thisx, PlayState* play);
void BgMizuShutter_Draw(Actor* thisx, PlayState* play);

void BgMizuShutter_WaitForTimer(BgMizuShutter* this, PlayState* play);
void BgMizuShutter_WaitForSwitch(BgMizuShutter* this, PlayState* play);
void BgMizuShutter_Move(BgMizuShutter* this, PlayState* play);
void BgMizuShutter_WaitForCutscene(BgMizuShutter* this, PlayState* play);

ActorInit Bg_Mizu_Shutter_InitVars = {
    /**/ ACTOR_BG_MIZU_SHUTTER,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_MIZU_OBJECTS,
    /**/ sizeof(BgMizuShutter),
    /**/ BgMizuShutter_Init,
    /**/ BgMizuShutter_Destroy,
    /**/ BgMizuShutter_Update,
    /**/ BgMizuShutter_Draw,
};

static Gfx* sDisplayLists[] = { gObjectMizuObjectsShutterDL_007130, gObjectMizuObjectsShutterDL_0072D0 };

static CollisionHeader* sCollisionHeaders[] = {
    &gObjectMizuObjectsShutterCol_007250,
    &gObjectMizuObjectsShutterCol_0073F0,
};

static Vec3f sDisplacements[] = {
    { 0.0f, 100.0f, 0.0f },
    { 0.0f, 140.0f, 0.0f },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneScale, 1500, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneDownward, 1100, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 1000, ICHAIN_CONTINUE),
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_STOP),
};

void BgMizuShutter_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgMizuShutter* this = (BgMizuShutter*)thisx;
    s32 pad2;
    CollisionHeader* colHeader = NULL;
    s32 pad3;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    this->displayList = sDisplayLists[BGMIZUSHUTTER_SIZE_PARAM(&this->dyna.actor)];
    DynaPolyActor_Init(&this->dyna, DYNA_TRANSFORM_POS);
    CollisionHeader_GetVirtual(sCollisionHeaders[BGMIZUSHUTTER_SIZE_PARAM(&this->dyna.actor)], &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);

    if ((BGMIZUSHUTTER_SIZE_PARAM(&this->dyna.actor) == BGMIZUSHUTTER_SMALL) ||
        (BGMIZUSHUTTER_SIZE_PARAM(&this->dyna.actor) == BGMIZUSHUTTER_LARGE)) {
        this->closedPos = this->dyna.actor.world.pos;
        this->timer = 0;
        this->timerMax = BGMIZUSHUTTER_TIMER_PARAM(&this->dyna.actor) * 20;

        Matrix_RotateY(BINANG_TO_RAD(this->dyna.actor.world.rot.y), MTXMODE_NEW);
        Matrix_RotateX(BINANG_TO_RAD(this->dyna.actor.world.rot.x), MTXMODE_APPLY);
        Matrix_RotateZ(BINANG_TO_RAD(this->dyna.actor.world.rot.z), MTXMODE_APPLY);
        Matrix_MultVec3f(&sDisplacements[BGMIZUSHUTTER_SIZE_PARAM(&this->dyna.actor)], &this->openPos);
        this->openPos.x += this->dyna.actor.world.pos.x;
        this->openPos.y += this->dyna.actor.world.pos.y;
        this->openPos.z += this->dyna.actor.world.pos.z;

        if (this->timerMax != 0x3F * 20) {
            Flags_UnsetSwitch(play, BGMIZUSHUTTER_SWITCH_PARAM(&this->dyna.actor));
            this->dyna.actor.world.pos = this->closedPos;
        }
        if (Flags_GetSwitch(play, BGMIZUSHUTTER_SWITCH_PARAM(&this->dyna.actor))) {
            this->dyna.actor.world.pos = this->openPos;
            this->actionFunc = BgMizuShutter_WaitForTimer;
        } else {
            this->actionFunc = BgMizuShutter_WaitForSwitch;
        }
    }
}

void BgMizuShutter_Destroy(Actor* thisx, PlayState* play) {
    s32 pad;
    BgMizuShutter* this = (BgMizuShutter*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
}

void BgMizuShutter_WaitForSwitch(BgMizuShutter* this, PlayState* play) {
    if (Flags_GetSwitch(play, BGMIZUSHUTTER_SWITCH_PARAM(&this->dyna.actor))) {
        if (ABS(this->dyna.actor.world.rot.x) > 0x2C60) {
            OnePointCutscene_Init(play, 4510, -99, &this->dyna.actor, CAM_ID_MAIN);
        } else {
            OnePointCutscene_Attention(play, &this->dyna.actor);
        }
        this->actionFunc = BgMizuShutter_WaitForCutscene;
        this->timer = 30;
    }
}

void BgMizuShutter_WaitForCutscene(BgMizuShutter* this, PlayState* play) {
    if (this->timer-- == 0) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_METALDOOR_OPEN);
        this->actionFunc = BgMizuShutter_Move;
    }
}

void BgMizuShutter_Move(BgMizuShutter* this, PlayState* play) {
    if (Flags_GetSwitch(play, BGMIZUSHUTTER_SWITCH_PARAM(&this->dyna.actor))) {
        Math_SmoothStepToF(&this->dyna.actor.world.pos.x, this->openPos.x, 1.0f, 4.0f, 0.1f);
        Math_SmoothStepToF(&this->dyna.actor.world.pos.y, this->openPos.y, 1.0f, 4.0f, 0.1f);
        Math_SmoothStepToF(&this->dyna.actor.world.pos.z, this->openPos.z, 1.0f, 4.0f, 0.1f);
        if ((this->dyna.actor.world.pos.x == this->openPos.x) && (this->dyna.actor.world.pos.y == this->openPos.y) &&
            (this->dyna.actor.world.pos.z == this->openPos.z)) {
            this->timer = this->timerMax;
            this->actionFunc = BgMizuShutter_WaitForTimer;
        }
    } else {
        Math_SmoothStepToF(&this->maxSpeed, 20.0f, 1.0f, 3.0f, 0.1f);
        Math_SmoothStepToF(&this->dyna.actor.world.pos.x, this->closedPos.x, 1.0f, this->maxSpeed, 0.1f);
        Math_SmoothStepToF(&this->dyna.actor.world.pos.y, this->closedPos.y, 1.0f, this->maxSpeed, 0.1f);
        Math_SmoothStepToF(&this->dyna.actor.world.pos.z, this->closedPos.z, 1.0f, this->maxSpeed, 0.1f);
        if ((this->dyna.actor.world.pos.x == this->closedPos.x) &&
            (this->dyna.actor.world.pos.y == this->closedPos.y) &&
            (this->dyna.actor.world.pos.z == this->closedPos.z)) {
            Rumble_Request(this->dyna.actor.xyzDistToPlayerSq, 120, 20, 10);
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_STONE_BOUND);
            this->actionFunc = BgMizuShutter_WaitForSwitch;
        }
    }
}

void BgMizuShutter_WaitForTimer(BgMizuShutter* this, PlayState* play) {
    if (this->timerMax != 0x3F * 20) {
        this->timer--;
        func_8002F994(&this->dyna.actor, this->timer);
        if (this->timer == 0) {
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_METALDOOR_CLOSE);
            Flags_UnsetSwitch(play, BGMIZUSHUTTER_SWITCH_PARAM(&this->dyna.actor));
            this->actionFunc = BgMizuShutter_Move;
        }
    }
}

void BgMizuShutter_Update(Actor* thisx, PlayState* play) {
    s32 pad;
    BgMizuShutter* this = (BgMizuShutter*)thisx;

    this->actionFunc(this, play);
}

void BgMizuShutter_Draw(Actor* thisx, PlayState* play) {
    s32 pad;
    BgMizuShutter* this = (BgMizuShutter*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_mizu_shutter.c", 410);
    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    gSPMatrix(POLY_OPA_DISP++, Matrix_NewMtx(play->state.gfxCtx, "../z_bg_mizu_shutter.c", 415),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    if (this->displayList != NULL) {
        gSPDisplayList(POLY_OPA_DISP++, this->displayList);
    }
    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_mizu_shutter.c", 422);
}
