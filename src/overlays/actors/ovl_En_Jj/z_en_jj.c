/*
 * File: z_en_jj.c
 * Overlay: ovl_En_Jj
 * Description: Lord Jabu-Jabu
 */

#include "z_en_jj.h"
#include "src/overlays/actors/ovl_Eff_Dust/z_eff_dust.h"

#include "array_count.h"
#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "segmented_address.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_jj/object_jj.h"

#define FLAGS (ACTOR_FLAG_UPDATE_CULLING_DISABLED | ACTOR_FLAG_DRAW_CULLING_DISABLED)

void EnJj_Init(Actor* thisx, PlayState* play);
void EnJj_Destroy(Actor* thisx, PlayState* play);
void EnJj_Update(Actor* thisx, PlayState* play);
void EnJj_Draw(Actor* thisx, PlayState* play);

void EnJj_WaitPlayerNear(EnJj* this, PlayState* play);
void EnJj_WaitFishDrop(EnJj* this, PlayState* play);
void EnJj_TriggerInhalingCutscene(EnJj* this, PlayState* play);
void EnJj_InInhalingCutscene(EnJj* this, PlayState* play);
void EnJj_DoNothing(Actor* thisx, PlayState* play);

#define EN_JJ_CS_STATE_FLAG_OPEN_MOUTH (1 << 0)
#define EN_JJ_CS_STATE_FLAG_BLINK_FLAG (1 << 1)
#define EN_JJ_CS_STATE_FLAG_KEEP_EFF_DUST (1 << 2)
#define EN_JJ_CS_STATE_FLAG_EFF_DUST_SPAWNED (1 << 3)

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

static s32 sPad = 0;

#include "z_en_jj_cutscene_data.inc.c"

static s32 sPad2[2] = { 0 };

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
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0x00000004, HIT_BACKLASH_NONE, 0x00 },
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

static Vec3f sJabuInhalingCsTriggerCenterPos = { -1589.0f, 53.0f, -43.0f };

static void* sEyeTextures[] = {
    gObjectJjEyeOpenTex,
    gObjectJjEyeHalfTex,
    gObjectJjEyeClosedTex,
};

void EnJj_SetupAction(EnJj* this, void (*arg1)(EnJj*, PlayState*)) {
    this->actionFunc = arg1;
}

void EnJj_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    EnJj* this = (EnJj*)thisx;
    CollisionHeader* colHeader = NULL;

    Actor_ProcessInitChain(&this->dyna.actor, sInitChain);
    ActorShape_Init(&this->dyna.actor.shape, 0.0f, NULL, 0.0f);
    switch (this->dyna.actor.params) {
        case EN_JJ_TYPE_MAIN:
            SkelAnime_InitFlex(play, &this->skelAnime, &gObjectJjSkel, &gObjectJjAnim, this->jointTable,
                               this->morphTable, OBJECT_JJ_LIMB_MAX);
            Animation_PlayLoop(&this->skelAnime, &gObjectJjAnim);
            this->csStateFlags = 0;
            this->eyeTexIndex = 0;
            this->eyeTimer = 0;
            this->eyeExtraBlinkAmount = 0;
            this->nextEyeExtraBlinkAmount = 0;
            if (GET_EVENTCHKINF(EVENTCHKINF_OPENED_JABU_JABU)) {
                EnJj_SetupAction(this, EnJj_WaitPlayerNear);
            } else {
                EnJj_SetupAction(this, EnJj_WaitFishDrop);
            }
            this->headCol = (EnJj*)Actor_SpawnAsChild(&play->actorCtx, &this->dyna.actor, play, ACTOR_EN_JJ,
                                                      this->dyna.actor.world.pos.x - 10.0f,
                                                      this->dyna.actor.world.pos.y, this->dyna.actor.world.pos.z, 0,
                                                      this->dyna.actor.world.rot.y, 0, EN_JJ_TYPE_HEAD_COL);
            DynaPolyActor_Init(&this->dyna, 0);
            CollisionHeader_GetVirtual(&gObjectJjBodyCol, &colHeader);
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
            Collider_InitCylinder(play, &this->collider);
            Collider_SetCylinder(play, &this->collider, &this->dyna.actor, &sCylinderInit);
            this->dyna.actor.colChkInfo.mass = MASS_IMMOVABLE;
            return;

        case EN_JJ_TYPE_HEAD_COL:
            DynaPolyActor_Init(&this->dyna, 0);
            CollisionHeader_GetVirtual(&gObjectJjHeadCol, &colHeader);
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
            DynaPoly_DisableCeilingCollision(play, &play->colCtx.dyna, this->dyna.bgId);
            this->dyna.actor.update = EnJj_DoNothing;
            this->dyna.actor.draw = NULL;
            Actor_SetScale(&this->dyna.actor, 0.087f);
            return;

        case EN_JJ_TYPE_1:
            DynaPolyActor_Init(&this->dyna, 0);
            CollisionHeader_GetVirtual(&object_jj_00BA8C_Col, &colHeader);
            this->dyna.bgId = DynaPoly_SetBgActor(play, &play->colCtx.dyna, &this->dyna.actor, colHeader);
            this->dyna.actor.update = EnJj_DoNothing;
            this->dyna.actor.draw = NULL;
            Actor_SetScale(&this->dyna.actor, 0.087f);
            return;
    }
}

void EnJj_Destroy(Actor* thisx, PlayState* play) {
    EnJj* this = (EnJj*)thisx;

    switch (this->dyna.actor.params) {
        case EN_JJ_TYPE_MAIN:
            DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
            Collider_DestroyCylinder(play, &this->collider);
            break;

        case EN_JJ_TYPE_HEAD_COL:
        case EN_JJ_TYPE_1:
            DynaPoly_DeleteBgActor(play, &play->colCtx.dyna, this->dyna.bgId);
            break;
    }
}

void EnJj_UpdateEye(EnJj* this) {
    if (this->eyeTimer > 0) {
        this->eyeTimer--;
    } else {
        this->eyeTexIndex++;
        if (this->eyeTexIndex >= ARRAY_COUNT(sEyeTextures)) {
            this->eyeTexIndex = 0;
            if (this->eyeExtraBlinkAmount > 0) {
                this->eyeExtraBlinkAmount--;
            } else {
                this->eyeTimer = Rand_S16Offset(20, 20);
                this->eyeExtraBlinkAmount = this->nextEyeExtraBlinkAmount;
            }
        }
    }
}

void EnJj_OpenMouth(EnJj* this, PlayState* play) {
    EnJj* headCol = this->headCol;

    if (this->headRot >= -0x1450) {
        this->headRot -= 0x66;
        if (this->headRot < -0xA28) {
            DynaPoly_DisableCollision(play, &play->colCtx.dyna, headCol->dyna.bgId);
        }
    }
}

void EnJj_WaitPlayerNear(EnJj* this, PlayState* play) {
    if (this->dyna.actor.xzDistToPlayer < 300.0f) {
        EnJj_SetupAction(this, EnJj_OpenMouth);
    }
}

void EnJj_WaitFishDrop(EnJj* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if ((Math_Vec3f_DistXZ(&sJabuInhalingCsTriggerCenterPos, &player->actor.world.pos) < 300.0f) &&
        play->isPlayerDroppingFish(play)) {
        this->timer = 100;
        EnJj_SetupAction(this, EnJj_TriggerInhalingCutscene);
    }
    this->collider.dim.pos.x = -1245;
    this->collider.dim.pos.y = 20;
    this->collider.dim.pos.z = -48;
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
}

void EnJj_TriggerInhalingCutscene(EnJj* this, PlayState* play) {
    EnJj* headCol = this->headCol;

    if (this->timer > 0) {
        this->timer--;
    } else {
        EnJj_SetupAction(this, EnJj_InInhalingCutscene);
        play->csCtx.script = gJabuInhalingCs;
        gSaveContext.cutsceneTrigger = 1;
        DynaPoly_DisableCollision(play, &play->colCtx.dyna, headCol->dyna.bgId);
        Camera_SetFinishedFlag(play->cameraPtrs[play->activeCamId]);
        SET_EVENTCHKINF(EVENTCHKINF_OPENED_JABU_JABU);
        Sfx_PlaySfxCentered(NA_SE_SY_CORRECT_CHIME);
    }
}

void EnJj_UpdateCutscene(EnJj* this, PlayState* play) {
    switch (play->csCtx.actorCues[2]->id) {
        case 1:
            if (this->csStateFlags & EN_JJ_CS_STATE_FLAG_BLINK_FLAG) {
                this->eyeTexIndex = 0;
                this->eyeTimer = Rand_S16Offset(20, 20);
                this->eyeExtraBlinkAmount = 0;
                this->nextEyeExtraBlinkAmount = 0;
                this->csStateFlags ^= EN_JJ_CS_STATE_FLAG_BLINK_FLAG;
            }
            break;

        case 2:
            this->csStateFlags |= EN_JJ_CS_STATE_FLAG_OPEN_MOUTH;
            if (!(this->csStateFlags & EN_JJ_CS_STATE_FLAG_EFF_DUST_SPAWNED)) {
                this->effDust = Actor_SpawnAsChild(&play->actorCtx, &this->dyna.actor, play, ACTOR_EFF_DUST, -1100.0f,
                                                   105.0f, -27.0f, 0, 0, 0, EFF_DUST_TYPE_0);
                this->csStateFlags |= EN_JJ_CS_STATE_FLAG_EFF_DUST_SPAWNED;
            }
            break;

        case 3:
            if (!(this->csStateFlags & EN_JJ_CS_STATE_FLAG_BLINK_FLAG)) {
                this->eyeTexIndex = 0;
                this->eyeTimer = 0;
                this->eyeExtraBlinkAmount = 1;
                this->nextEyeExtraBlinkAmount = 0;
                this->csStateFlags |= EN_JJ_CS_STATE_FLAG_BLINK_FLAG;
            }
            break;
    }
    if (this->csStateFlags & EN_JJ_CS_STATE_FLAG_OPEN_MOUTH) {
        Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_JABJAB_BREATHE - SFX_FLAG);
        if (this->headRot >= -0x1450) {
            this->headRot -= 0x66;
        }
    }
}

void EnJj_InInhalingCutscene(EnJj* this, PlayState* play) {
    if (!(this->csStateFlags & EN_JJ_CS_STATE_FLAG_KEEP_EFF_DUST)) {
        this->csStateFlags |= EN_JJ_CS_STATE_FLAG_KEEP_EFF_DUST;
        if (this->effDust != NULL) {
            Actor_Kill(this->effDust);
            this->dyna.actor.child = NULL;
        }
    }
}

void EnJj_DoNothing(Actor* thisx, PlayState* play) {
}

void EnJj_Update(Actor* thisx, PlayState* play) {
    EnJj* this = (EnJj*)thisx;

    if ((play->csCtx.state != CS_STATE_IDLE) && (play->csCtx.actorCues[2] != NULL)) {
        EnJj_UpdateCutscene(this, play);
    } else {
        this->actionFunc(this, play);
        if (this->skelAnime.curFrame == 41.0f) {
            Actor_PlaySfx(&this->dyna.actor, NA_SE_EV_JABJAB_GROAN);
        }
    }
    EnJj_UpdateEye(this);
    SkelAnime_Update(&this->skelAnime);
    Actor_SetScale(&this->dyna.actor, 0.087f);
    this->skelAnime.jointTable[OBJECT_JJ_LIMB_HEAD].z = this->headRot;
}

void EnJj_Draw(Actor* thisx, PlayState* play) {
    EnJj* this = (EnJj*)thisx;
    s32 pad;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_jj.c", 879);
    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    Matrix_Translate(0.0f, (cosf(this->skelAnime.curFrame * 0.076624215f) * 10.0f) - 10.0f, 0.0f, MTXMODE_APPLY);
    Matrix_Scale(10.0f, 10.0f, 10.0f, MTXMODE_APPLY);
    gSPSegment(POLY_OPA_DISP++, 8, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeTexIndex]));
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount, NULL,
                          NULL, this);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_jj.c", 898);
}
