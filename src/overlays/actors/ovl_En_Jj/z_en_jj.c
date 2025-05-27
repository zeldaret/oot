/*
 * File: z_en_jj.c
 * Overlay: ovl_En_Jj
 * Description: Lord Jabu-Jabu
 */

#include "z_en_jj.h"
#include "overlays/actors/ovl_Eff_Dust/z_eff_dust.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "z64play.h"
#include "z64player.h"
#include "z64save.h"

#include "assets/objects/object_jj/object_jj.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

typedef enum EnJjEyeState {
    /* 0 */ JABUJABU_EYE_OPEN,
    /* 1 */ JABUJABU_EYE_HALF,
    /* 2 */ JABUJABU_EYE_CLOSED,
    /* 3 */ JABUJABU_EYE_MAX
} EnJjEyeState;

void EnJj_Init(Actor* thisx, PlayState* play2);
void EnJj_Destroy(Actor* thisx, PlayState* play);
void EnJj_Update(Actor* thisx, PlayState* play);
void EnJj_Draw(Actor* thisx, PlayState* play2);

void EnJj_UpdateStaticCollision(Actor* thisx, PlayState* play);
void EnJj_WaitToOpenMouth(EnJj* this, PlayState* play);
void EnJj_WaitForFish(EnJj* this, PlayState* play);
void EnJj_BeginCutscene(EnJj* this, PlayState* play);
void EnJj_RemoveDust(EnJj* this, PlayState* play);

ActorProfile En_Jj_Profile = {
    /**/ ACTOR_EN_JJ,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_JJ,
    /**/ sizeof(EnJj),
    /**/ EnJj_Init,
    /**/ EnJj_Destroy,
    /**/ EnJj_Update,
    /**/ EnJj_Draw,
};

static s32 sUnused = 0;

#include "z_en_jj_cutscene_data.inc.c"

static s32 sUnused2[] = { 0, 0 };

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000004, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 170, 150, 0, { 0, 0, 0 } },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 87, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDistance, 4000, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeScale, 3300, ICHAIN_CONTINUE),
    ICHAIN_F32(cullingVolumeDownward, 1100, ICHAIN_STOP),
};

void EnJj_SetupAction(EnJj* this, EnJjActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void EnJj_Init(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    EnJj* this = (EnJj*)thisx;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    ActorShape_Init(&this->dyna.actor.shape, 0.0f, NULL, 0.0f);

    switch (this->dyna.actor.params) {
        case JABUJABU_MAIN:
            SkelAnime_InitFlex(play, &this->skelAnime, &gJabuJabuSkel, &gJabuJabuAnim, this->jointTable,
                               this->morphTable, 22);
            Animation_PlayLoop(&this->skelAnime, &gJabuJabuAnim);
            this->unk_30A = 0;
            this->eyeIndex = 0;
            this->blinkTimer = 0;
            this->extraBlinkCounter = 0;
            this->extraBlinkTotal = 0;

            if (GET_EVENTCHKINF(EVENTCHKINF_OPENED_JABU_JABU)) {
                EnJj_SetupAction(this, EnJj_WaitToOpenMouth);
            } else {
                EnJj_SetupAction(this, EnJj_WaitForFish);
            }

            this->bodyCollisionActor = (DynaPolyActor*)Actor_SpawnAsChild(
                &play->actorCtx, &this->dyna.actor, play, ACTOR_EN_JJ, this->dyna.actor.world.pos.x - 10.0f,
                this->dyna.actor.world.pos.y, this->dyna.actor.world.pos.z, 0, this->dyna.actor.world.rot.y, 0,
                JABUJABU_COLLISION);
            DynaPolyActor_Init(&this->dyna, 0);
            CollisionHeader_GetVirtual(&gJabuJabuHeadCol, &colHeader);
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
            Collider_InitCylinder(play, &this->collider);
            Collider_SetCylinder(play, &this->collider, &this->dyna.actor, &sCylinderInit);
            this->dyna.actor.colChkInfo.mass = MASS_IMMOVABLE;
            break;

        case JABUJABU_COLLISION:
            DynaPolyActor_Init(&this->dyna, 0);
            CollisionHeader_GetVirtual(&gJabuJabuBodyCol, &colHeader);
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
            DynaPoly_DisableCeilingCollision(play, &play->colCtx.dyna, this->dyna.bgId);
            this->dyna.actor.update = EnJj_UpdateStaticCollision;
            this->dyna.actor.draw = NULL;
            Actor_SetScale(&this->dyna.actor, 0.087f);
            break;

        case JABUJABU_UNUSED_COLLISION:
            DynaPolyActor_Init(&this->dyna, 0);
            CollisionHeader_GetVirtual(&gJabuJabuUnusedCol, &colHeader);
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
            this->dyna.actor.update = EnJj_UpdateStaticCollision;
            this->dyna.actor.draw = NULL;
            Actor_SetScale(&this->dyna.actor, 0.087f);
            break;
    }
}

void EnJj_Destroy(Actor* thisx, PlayState* play) {
    EnJj* this = (EnJj*)thisx;

    switch (this->dyna.actor.params) {
        case JABUJABU_MAIN:
            DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
            Collider_DestroyCylinder(play, &this->collider);
            break;

        case JABUJABU_COLLISION:
        case JABUJABU_UNUSED_COLLISION:
            DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
            break;
    }
}

/**
 * Blink routine. Blinks at the end of each randomised blinkTimer cycle. If extraBlinkCounter is not zero, blink that
 * many more times before resuming random blinkTimer cycles. extraBlinkTotal can be set to a positive number to blink
 * that many extra times at the end of every blinkTimer cycle, but the actor always sets it to zero, so only one
 * multiblink happens when extraBlinkCounter is nonzero.
 */
void EnJj_Blink(EnJj* this) {
    if (this->blinkTimer > 0) {
        this->blinkTimer--;
    } else {
        this->eyeIndex++;
        if (this->eyeIndex >= JABUJABU_EYE_MAX) {
            this->eyeIndex = JABUJABU_EYE_OPEN;
            if (this->extraBlinkCounter > 0) {
                this->extraBlinkCounter--;
            } else {
                this->blinkTimer = Rand_S16Offset(20, 20);
                this->extraBlinkCounter = this->extraBlinkTotal;
            }
        }
    }
}

void EnJj_OpenMouth(EnJj* this, PlayState* play) {
    DynaPolyActor* bodyCollisionActor = this->bodyCollisionActor;

    if (this->mouthOpenAngle >= -5200) {
        this->mouthOpenAngle -= 102;

        if (this->mouthOpenAngle < -2600) {
            DynaPoly_DisableCollision(play, &play->colCtx.dyna, bodyCollisionActor->bgId);
        }
    }
}

void EnJj_WaitToOpenMouth(EnJj* this, PlayState* play) {
    if (this->dyna.actor.xzDistToPlayer < 300.0f) {
        EnJj_SetupAction(this, EnJj_OpenMouth);
    }
}

void EnJj_WaitForFish(EnJj* this, PlayState* play) {
    static Vec3f feedingSpot = { -1589.0f, 53.0f, -43.0f };
    Player* player = GET_PLAYER(play);

    if ((Math_Vec3f_DistXZ(&feedingSpot, &player->actor.world.pos) < 300.0f) && play->isPlayerDroppingFish(play)) {
        this->cutsceneCountdownTimer = 100;
        EnJj_SetupAction(this, EnJj_BeginCutscene);
    }

    this->collider.dim.pos.x = -1245;
    this->collider.dim.pos.y = 20;
    this->collider.dim.pos.z = -48;
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
}

void EnJj_BeginCutscene(EnJj* this, PlayState* play) {
    DynaPolyActor* bodyCollisionActor = this->bodyCollisionActor;

    if (this->cutsceneCountdownTimer > 0) {
        this->cutsceneCountdownTimer--;
    } else {
        EnJj_SetupAction(this, EnJj_RemoveDust);
        play->csCtx.script = gJabuInhalingCs;
        gSaveContext.cutsceneTrigger = 1;
        DynaPoly_DisableCollision(play, &play->colCtx.dyna, bodyCollisionActor->bgId);
        Camera_SetFinishedFlag(GET_ACTIVE_CAM(play));
        SET_EVENTCHKINF(EVENTCHKINF_OPENED_JABU_JABU);
        Sfx_PlaySfxCentered(NA_SE_SY_CORRECT_CHIME);
    }
}

void EnJj_CutsceneUpdate(EnJj* this, PlayState* play) {
    switch (play->csCtx.actorCues[2]->id) {
        case 1:
            if (this->unk_30A & 2) {
                this->eyeIndex = 0;
                this->blinkTimer = Rand_S16Offset(20, 20);
                this->extraBlinkCounter = 0;
                this->extraBlinkTotal = 0;
                this->unk_30A ^= 2;
            }
            break;

        case 2:
            this->unk_30A |= 1;

            if (!(this->unk_30A & 8)) {
                this->dust = Actor_SpawnAsChild(&play->actorCtx, &this->dyna.actor, play, ACTOR_EFF_DUST, -1100.0f,
                                                105.0f, -27.0f, 0, 0, 0, EFF_DUST_TYPE_0);
                this->unk_30A |= 8;
            }
            break;

        case 3:
            if (!(this->unk_30A & 2)) {
                this->eyeIndex = 0;
                this->blinkTimer = 0;
                this->extraBlinkCounter = 1;
                this->extraBlinkTotal = 0;
                this->unk_30A |= 2;
            }
            break;
    }

    if (this->unk_30A & 1) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_JABJAB_BREATHE - SFX_FLAG);

        if (this->mouthOpenAngle >= -5200) {
            this->mouthOpenAngle -= 102;
        }
    }
}

void EnJj_RemoveDust(EnJj* this, PlayState* play) {
    Actor* dust;

    if (!(this->unk_30A & 4)) {
        this->unk_30A |= 4;
        dust = this->dust;

        if (dust != NULL) {
            Actor_Kill(dust);
            this->dyna.actor.child = NULL;
        }
    }
}

void EnJj_UpdateStaticCollision(Actor* thisx, PlayState* play) {
}

void EnJj_Update(Actor* thisx, PlayState* play) {
    EnJj* this = (EnJj*)thisx;

    if ((play->csCtx.state != CS_STATE_IDLE) && (play->csCtx.actorCues[2] != NULL)) {
        EnJj_CutsceneUpdate(this, play);
    } else {
        this->actionFunc(this, play);

        if (this->skelAnime.curFrame == 41.0f) {
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_JABJAB_GROAN);
        }
    }

    EnJj_Blink(this);
    SkelAnime_Update(&this->skelAnime);
    Actor_SetScale(&this->dyna.actor, 0.087f);

    // Head
    this->skelAnime.jointTable[10].z = this->mouthOpenAngle;
}

void EnJj_Draw(Actor* thisx, PlayState* play2) {
    static void* eyeTextures[] = { gJabuJabuEyeOpenTex, gJabuJabuEyeHalfTex, gJabuJabuEyeClosedTex };
    PlayState* play = play2;
    EnJj* this = (EnJj*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_jj.c", 879);

    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    Matrix_Translate(0.0f, (cosf(this->skelAnime.curFrame * (M_PI / 41.0f)) * 10.0f) - 10.0f, 0.0f, MTXMODE_APPLY);
    Matrix_Scale(10.0f, 10.0f, 10.0f, MTXMODE_APPLY);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTextures[this->eyeIndex]));
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount, NULL,
                          NULL, this);

    CLOSE_DISPS(play->state.gfxCtx, "../z_en_jj.c", 898);
}
