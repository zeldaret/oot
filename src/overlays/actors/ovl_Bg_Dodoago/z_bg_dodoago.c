/*
 * File: z_bg_dodoago.c
 * Overlay: ovl_Bg_Dodoago
 * Description: Dodongo Head Statue in Dodongo's Cavern
 */

#include "z_bg_dodoago.h"
#include "overlays/actors/ovl_En_Bom/z_en_bom.h"
#include "assets/objects/object_ddan_objects/object_ddan_objects.h"

#define FLAGS 0

void BgDodoago_Init(Actor* thisx, PlayState* play);
void BgDodoago_Destroy(Actor* thisx, PlayState* play);
void BgDodoago_Update(Actor* thisx, PlayState* play);
void BgDodoago_Draw(Actor* thisx, PlayState* play);

void BgDodoago_WaitExplosives(BgDodoago* this, PlayState* play);
void BgDodoago_OpenJaw(BgDodoago* this, PlayState* play);
void BgDodoago_DoNothing(BgDodoago* this, PlayState* play);
void BgDodoago_LightOneEye(BgDodoago* this, PlayState* play);

ActorProfile Bg_Dodoago_Profile = {
    /**/ ACTOR_BG_DODOAGO,
    /**/ ACTORCAT_BG,
    /**/ FLAGS,
    /**/ OBJECT_DDAN_OBJECTS,
    /**/ sizeof(BgDodoago),
    /**/ BgDodoago_Init,
    /**/ BgDodoago_Destroy,
    /**/ BgDodoago_Update,
    /**/ BgDodoago_Draw,
};

static ColliderCylinderInit sColCylinderInitMain = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_ALL,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK2,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_NONE,
    },
    { 80, 30, 80, { 0, 0, 0 } },
};

static ColliderCylinderInit sColCylinderInitLeftRight = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_NO_PUSH | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK2,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 50, 60, 280, { 0, 0, 0 } },
};

static s16 sFirstExplosiveFlag = false;

static u8 sDisableBombCatcher;

static u8 sUnused[90]; // unknown length

static s32 sTimer;

void BgDodoago_SetupAction(BgDodoago* this, BgDodoagoActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgDodoago_SpawnSparkles(Vec3f* meanPos, PlayState* play) {
    Vec3f pos;
    Color_RGBA8 primColor = { 100, 100, 100, 0 };
    Color_RGBA8 envColor = { 40, 40, 40, 0 };
    static Vec3f velocity = { 0.0f, -1.5f, 0.0f };
    static Vec3f acceleration = { 0.0f, -0.2f, 0.0f };
    s32 i;

    for (i = 4; i > 0; i--) {
        pos.x = Rand_CenteredFloat(20.0f) + meanPos->x;
        pos.y = Rand_CenteredFloat(10.0f) + meanPos->y;
        pos.z = Rand_CenteredFloat(20.0f) + meanPos->z;
        EffectSsKiraKira_SpawnSmall(play, &pos, &velocity, &acceleration, &primColor, &envColor);
    }
}

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 100, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 5000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 1000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 800, ICHAIN_STOP),
};

void BgDodoago_Init(Actor* thisx, PlayState* play) {
    BgDodoago* this = (BgDodoago*)thisx;
    s32 pad;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    DynaPolyActor_Init(&this->dyna, 0);
    CollisionHeader_GetVirtual(&gDodongoLowerJawCol, &colHeader);
    this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
    ActorShape_Init(&this->dyna.actor.shape, 0.0f, NULL, 0.0f);

    if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6))) {
        BgDodoago_SetupAction(this, BgDodoago_DoNothing);
        this->dyna.actor.shape.rot.x = 0x1333;
        play->roomCtx.drawParams[BGDODOAGO_EYE_LEFT] = play->roomCtx.drawParams[BGDODOAGO_EYE_RIGHT] = 255;
        return;
    }

    Collider_InitCylinder(play, &this->colliderMain);
    Collider_InitCylinder(play, &this->colliderLeft);
    Collider_InitCylinder(play, &this->colliderRight);
    Collider_SetCylinder(play, &this->colliderMain, &this->dyna.actor, &sColCylinderInitMain);
    Collider_SetCylinder(play, &this->colliderLeft, &this->dyna.actor, &sColCylinderInitLeftRight);
    Collider_SetCylinder(play, &this->colliderRight, &this->dyna.actor, &sColCylinderInitLeftRight);

    BgDodoago_SetupAction(this, BgDodoago_WaitExplosives);
    sDisableBombCatcher = false;
}

void BgDodoago_Destroy(Actor* thisx, PlayState* play) {
    BgDodoago* this = (BgDodoago*)thisx;

    DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
    Collider_DestroyCylinder(play, &this->colliderMain);
    Collider_DestroyCylinder(play, &this->colliderLeft);
    Collider_DestroyCylinder(play, &this->colliderRight);
}

void BgDodoago_WaitExplosives(BgDodoago* this, PlayState* play) {
    Actor* explosive = Actor_GetCollidedExplosive(play, &this->colliderMain.base);

    if (explosive != NULL) {
        this->state =
            (Math_Vec3f_Yaw(&this->dyna.actor.world.pos, &explosive->world.pos) >= this->dyna.actor.shape.rot.y)
                ? BGDODOAGO_EYE_RIGHT
                : BGDODOAGO_EYE_LEFT;

        if (((play->roomCtx.drawParams[BGDODOAGO_EYE_LEFT] == 255) && (this->state == BGDODOAGO_EYE_RIGHT)) ||
            ((play->roomCtx.drawParams[BGDODOAGO_EYE_RIGHT] == 255) && (this->state == BGDODOAGO_EYE_LEFT))) {
            Flags_SetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6));
            this->state = 0;
            Audio_PlaySfxGeneral(NA_SE_SY_CORRECT_CHIME, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            BgDodoago_SetupAction(this, BgDodoago_OpenJaw);
            OnePointCutscene_Init(play, 3380, 160, &this->dyna.actor, CAM_ID_MAIN);
        } else if (play->roomCtx.drawParams[this->state] == 0) {
            OnePointCutscene_Init(play, 3065, 40, &this->dyna.actor, CAM_ID_MAIN);
            BgDodoago_SetupAction(this, BgDodoago_LightOneEye);
            Audio_PlaySfxGeneral(NA_SE_SY_CORRECT_CHIME, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
        } else {
            OnePointCutscene_Init(play, 3065, 20, &this->dyna.actor, CAM_ID_MAIN);
            Audio_PlaySfxGeneral(NA_SE_SY_ERROR, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                                 &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
            sTimer += 30;
            return;
        }

        // the flag is never set back to false, so this only runs once
        if (!sFirstExplosiveFlag) {
            // this disables the bomb catcher (see BgDodoago_Update) for a few seconds
            this->dyna.actor.parent = explosive;
            sFirstExplosiveFlag = true;
            sTimer = 50;
        }
    } else if (Flags_GetEventChkInf(EVENTCHKINF_B0)) {
        Collider_UpdateCylinder(&this->dyna.actor, &this->colliderMain);
        Collider_UpdateCylinder(&this->dyna.actor, &this->colliderLeft);
        Collider_UpdateCylinder(&this->dyna.actor, &this->colliderRight);

        this->colliderMain.dim.pos.z += 200;

        this->colliderLeft.dim.pos.z += 215;
        this->colliderLeft.dim.pos.x += 90;

        this->colliderRight.dim.pos.z += 215;
        this->colliderRight.dim.pos.x -= 90;

        CollisionCheck_SetAC(play, &play->colChkCtx, &this->colliderMain.base);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->colliderLeft.base);
        CollisionCheck_SetOC(play, &play->colChkCtx, &this->colliderRight.base);
    }
}

void BgDodoago_OpenJaw(BgDodoago* this, PlayState* play) {
    Vec3f pos;
    Vec3f dustOffsets[] = {
        { 0.0f, -200.0f, 430.0f },   { 20.0f, -200.0f, 420.0f }, { -20.0f, -200.0f, 420.0f },
        { 40.0, -200.0f, 380.0f },   { -40.0, -200.0f, 380.0f }, { 50.0, -200.0f, 350.0f },
        { -50.0f, -200.0f, 350.0f }, { 60.0f, -200.0f, 320.0f }, { -60.0f, -200.0f, 320.0f },
        { 70.0f, -200.0f, 290.0f },  { -70.0, -200.0f, 290.0f },
    };
    s32 i;

    // make both eyes red (one already is)
    if (play->roomCtx.drawParams[BGDODOAGO_EYE_LEFT] < 255) {
        play->roomCtx.drawParams[BGDODOAGO_EYE_LEFT] += 5;
    }
    if (play->roomCtx.drawParams[BGDODOAGO_EYE_RIGHT] < 255) {
        play->roomCtx.drawParams[BGDODOAGO_EYE_RIGHT] += 5;
    }

    if (play->roomCtx.drawParams[BGDODOAGO_EYE_LEFT] != 255 || play->roomCtx.drawParams[BGDODOAGO_EYE_RIGHT] != 255) {
        sTimer--;
        return;
    }

    if (sTimer == 108) {
        for (i = ARRAY_COUNT(dustOffsets) - 1; i >= 0; i--) {
            pos.x = dustOffsets[i].x + this->dyna.actor.world.pos.x;
            pos.y = dustOffsets[i].y + this->dyna.actor.world.pos.y;
            pos.z = dustOffsets[i].z + this->dyna.actor.world.pos.z;
            func_80033480(play, &pos, 2.0f, 3, 200, 75, 1);
        }
    }

    pos.x = this->dyna.actor.world.pos.x + 200.0f;
    pos.y = this->dyna.actor.world.pos.y - 20.0f;
    pos.z = this->dyna.actor.world.pos.z + 100.0f;
    BgDodoago_SpawnSparkles(&pos, play);

    pos.x = this->dyna.actor.world.pos.x - 200.0f;
    pos.y = this->dyna.actor.world.pos.y - 20.0f;
    pos.z = this->dyna.actor.world.pos.z + 100.0f;
    BgDodoago_SpawnSparkles(&pos, play);

    Math_StepToS(&this->state, 100, 3);
    Rumble_Request(500.0f, 120, 20, 10);

    if (Math_SmoothStepToS(&this->dyna.actor.shape.rot.x, 0x1333, 110 - this->state, 0x3E8, 0x32) == 0) {
        BgDodoago_SetupAction(this, BgDodoago_DoNothing);
        Audio_PlaySfxGeneral(NA_SE_EV_STONE_BOUND, &this->dyna.actor.projectedPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    } else {
        Audio_PlaySfxGeneral(NA_SE_EV_STONE_STATUE_OPEN - SFX_FLAG, &this->dyna.actor.projectedPos, 4,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    }
}

void BgDodoago_DoNothing(BgDodoago* this, PlayState* play) {
}

void BgDodoago_LightOneEye(BgDodoago* this, PlayState* play) {
    play->roomCtx.drawParams[this->state] += 5;

    if (play->roomCtx.drawParams[this->state] == 255) {
        BgDodoago_SetupAction(this, BgDodoago_WaitExplosives);
    }
}

void BgDodoago_Update(Actor* thisx, PlayState* play) {
    BgDodoago* this = (BgDodoago*)thisx;
    Actor* actor;
    EnBom* bomb;

    if (this->dyna.actor.parent == NULL) {
        // this is a "bomb catcher", it kills the XZ speed and sets the timer for bombs that are dropped through the
        // holes in the bridge above the skull
        if ((this->colliderLeft.base.ocFlags1 & OC1_HIT) || (this->colliderRight.base.ocFlags1 & OC1_HIT)) {

            if (this->colliderLeft.base.ocFlags1 & OC1_HIT) {
                actor = this->colliderLeft.base.oc;
            } else {
                actor = this->colliderRight.base.oc;
            }
            this->colliderLeft.base.ocFlags1 &= ~OC1_HIT;
            this->colliderRight.base.ocFlags1 &= ~OC1_HIT;

            if (actor->category == ACTORCAT_EXPLOSIVE && actor->id == ACTOR_EN_BOM && actor->params == 0) {
                bomb = (EnBom*)actor;
                // disable the bomb catcher for a few seconds
                this->dyna.actor.parent = &bomb->actor;
                bomb->timer = 50;
                bomb->actor.speed = 0.0f;
                sTimer = 0;
            }
        }
    } else {
        sTimer++;
        Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6));
        if (!sDisableBombCatcher && sTimer > 140) {
            if (Flags_GetSwitch(play, PARAMS_GET_U(this->dyna.actor.params, 0, 6))) {
                // this prevents clearing the actor's parent pointer, effectively disabling the bomb catcher
                sDisableBombCatcher++;
            } else {
                this->dyna.actor.parent = NULL;
            }
        }
    }
    this->actionFunc(this, play);
}

void BgDodoago_Draw(Actor* thisx, PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_bg_dodoago.c", 672);

    if (Flags_GetEventChkInf(EVENTCHKINF_B0)) {
        Gfx_SetupDL_25Opa(play->state.gfxCtx);
        MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_dodoago.c", 677);
        gSPDisplayList(POLY_OPA_DISP++, gDodongoLowerJawDL);
    }

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_dodoago.c", 681);
}
