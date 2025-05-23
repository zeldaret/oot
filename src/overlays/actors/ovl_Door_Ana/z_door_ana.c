/*
 * File: z_door_ana.c
 * Overlay: ovl_Door_Ana
 * Description: Grotto
 */

#include "z_door_ana.h"
#include "assets/objects/gameplay_field_keep/gameplay_field_keep.h"

#define FLAGS ACTOR_FLAG_UPDATE_DURING_OCARINA

void DoorAna_Init(Actor* thisx, PlayState* play);
void DoorAna_Destroy(Actor* thisx, PlayState* play);
void DoorAna_Update(Actor* thisx, PlayState* play);
void DoorAna_Draw(Actor* thisx, PlayState* play);

void DoorAna_WaitClosed(DoorAna* this, PlayState* play);
void DoorAna_WaitOpen(DoorAna* this, PlayState* play);
void DoorAna_GrabPlayer(DoorAna* this, PlayState* play);

ActorProfile Door_Ana_Profile = {
    /**/ ACTOR_DOOR_ANA,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_GAMEPLAY_FIELD_KEEP,
    /**/ sizeof(DoorAna),
    /**/ DoorAna_Init,
    /**/ DoorAna_Destroy,
    /**/ DoorAna_Update,
    /**/ DoorAna_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_NONE,
        OC2_NONE,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK2,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000048, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_NONE,
    },
    { 50, 10, 0, { 0 } },
};

static s16 sGrottoEntrances[] = {
    ENTR_FAIRYS_FOUNTAIN_0, ENTR_GROTTOS_0,  ENTR_GROTTOS_1,  ENTR_GROTTOS_2,  ENTR_GROTTOS_3,
    ENTR_GROTTOS_4,         ENTR_GROTTOS_5,  ENTR_GROTTOS_6,  ENTR_GROTTOS_7,  ENTR_GROTTOS_8,
    ENTR_GROTTOS_9,         ENTR_GROTTOS_10, ENTR_GROTTOS_11, ENTR_GROTTOS_12, ENTR_GROTTOS_13,
};

void DoorAna_SetupAction(DoorAna* this, DoorAnaActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void DoorAna_Init(Actor* thisx, PlayState* play) {
    DoorAna* this = (DoorAna*)thisx;

    this->actor.shape.rot.z = 0;
    this->actor.shape.rot.y = this->actor.shape.rot.z;
    // init block for grottos that are initially "hidden" (require explosives/hammer/song of storms to open)
    if (PARAMS_GET_NOSHIFT(this->actor.params, 8, 2) != 0) {
        // only allocate collider for grottos that need bombing/hammering open
        if (PARAMS_GET_NOSHIFT(this->actor.params, 9, 1) != 0) {
            Collider_InitCylinder(play, &this->collider);
            Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
        } else {
            this->actor.flags |= ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        }
        Actor_SetScale(&this->actor, 0);
        DoorAna_SetupAction(this, DoorAna_WaitClosed);
    } else {
        DoorAna_SetupAction(this, DoorAna_WaitOpen);
    }
    this->actor.attentionRangeType = ATTENTION_RANGE_0;
}

void DoorAna_Destroy(Actor* thisx, PlayState* play) {
    DoorAna* this = (DoorAna*)thisx;

    // free collider if it has one
    if (PARAMS_GET_NOSHIFT(this->actor.params, 9, 1) != 0) {
        Collider_DestroyCylinder(play, &this->collider);
    }
}

// update routine for grottos that are currently "hidden"/unopened
void DoorAna_WaitClosed(DoorAna* this, PlayState* play) {
    u32 openGrotto = false;

    if (!PARAMS_GET_NOSHIFT(this->actor.params, 9, 1)) {
        // opening with song of storms
        if (this->actor.xyzDistToPlayerSq < SQ(200.0f) && CutsceneFlags_Get(play, 5)) {
            openGrotto = true;
            this->actor.flags &= ~ACTOR_FLAG_UPDATE_CULLING_DISABLED;
        }
    } else {
        // bombing/hammering open a grotto
        if (this->collider.base.acFlags & AC_HIT) {
            openGrotto = true;
            Collider_DestroyCylinder(play, &this->collider);
        } else {
            Collider_UpdateCylinder(&this->actor, &this->collider);
            CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
        }
    }
    // open the grotto
    if (openGrotto) {
        this->actor.params &= ~0x0300;
        DoorAna_SetupAction(this, DoorAna_WaitOpen);
        Audio_PlaySfxGeneral(NA_SE_SY_CORRECT_CHIME, &gSfxDefaultPos, 4, &gSfxDefaultFreqAndVolScale,
                             &gSfxDefaultFreqAndVolScale, &gSfxDefaultReverb);
    }
    Actor_SetClosestSecretDistance(&this->actor, play);
}

// update routine for grottos that are open
void DoorAna_WaitOpen(DoorAna* this, PlayState* play) {
    Player* player;
    s32 destinationIdx;

    player = GET_PLAYER(play);
    if (Math_StepToF(&this->actor.scale.x, 0.01f, 0.001f)) {
        if ((this->actor.attentionRangeType != 0) && (play->transitionTrigger == TRANS_TRIGGER_OFF) &&
            (player->stateFlags1 & PLAYER_STATE1_31) && (player->av1.actionVar1 == 0)) {
            destinationIdx = PARAMS_GET_U(this->actor.params, 12, 3) - 1;
            Play_SetupRespawnPoint(play, RESPAWN_MODE_RETURN,
                                   PLAYER_PARAMS(PLAYER_START_MODE_GROTTO, PLAYER_START_BG_CAM_DEFAULT));
            gSaveContext.respawn[RESPAWN_MODE_RETURN].pos.y = this->actor.world.pos.y;
            gSaveContext.respawn[RESPAWN_MODE_RETURN].yaw = this->actor.home.rot.y;
            gSaveContext.respawn[RESPAWN_MODE_RETURN].data = PARAMS_GET_U(this->actor.params, 0, 16);
            if (destinationIdx < 0) {
                destinationIdx = this->actor.home.rot.z + 1;
            }
            play->nextEntranceIndex = sGrottoEntrances[destinationIdx];
            DoorAna_SetupAction(this, DoorAna_GrabPlayer);
        } else {
            if (!Player_InCsMode(play) && !(player->stateFlags1 & (PLAYER_STATE1_23 | PLAYER_STATE1_27)) &&
                this->actor.xzDistToPlayer <= 15.0f && -50.0f <= this->actor.yDistToPlayer &&
                this->actor.yDistToPlayer <= 15.0f) {
                player->stateFlags1 |= PLAYER_STATE1_31;
                this->actor.attentionRangeType = ATTENTION_RANGE_1;
            } else {
                this->actor.attentionRangeType = ATTENTION_RANGE_0;
            }
        }
    }
    Actor_SetScale(&this->actor, this->actor.scale.x);
}

// update function for after the player has triggered the grotto
void DoorAna_GrabPlayer(DoorAna* this, PlayState* play) {
    Player* player;

    if (this->actor.yDistToPlayer <= 0.0f && 15.0f < this->actor.xzDistToPlayer) {
        player = GET_PLAYER(play);
        player->actor.world.pos.x = Math_SinS(this->actor.yawTowardsPlayer) * 15.0f + this->actor.world.pos.x;
        player->actor.world.pos.z = Math_CosS(this->actor.yawTowardsPlayer) * 15.0f + this->actor.world.pos.z;
    }
}

void DoorAna_Update(Actor* thisx, PlayState* play) {
    DoorAna* this = (DoorAna*)thisx;

    this->actionFunc(this, play);
    // changes the grottos facing angle based on camera angle
    this->actor.shape.rot.y = Camera_GetCamDirYaw(GET_ACTIVE_CAM(play)) + 0x8000;
}

void DoorAna_Draw(Actor* thisx, PlayState* play) {
    OPEN_DISPS(play->state.gfxCtx, "../z_door_ana.c", 440);

    Gfx_SetupDL_25Xlu(play->state.gfxCtx);
    MATRIX_FINALIZE_AND_LOAD(POLY_XLU_DISP++, play->state.gfxCtx, "../z_door_ana.c", 446);
    gSPDisplayList(POLY_XLU_DISP++, gGrottoDL);

    CLOSE_DISPS(play->state.gfxCtx, "../z_door_ana.c", 449);
}
