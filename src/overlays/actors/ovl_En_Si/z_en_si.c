/*
 * File: z_en_si.c
 * Overlay: En_Si
 * Description: Gold Skulltula token
 */

#include "z_en_si.h"

#include "sequence.h"
#include "z_lib.h"
#include "audio.h"
#include "draw.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOOKSHOT_PULLS_ACTOR)

// Params are set by spawning Gold Skulltula
#define ENSI_GS_AREA(this) PARAMS_GET_S(this->actor.params, 8, 5) // mapIndex for current area
#define ENSI_GS_ID(this) PARAMS_GET_S(this->actor.params, 0, 8)   // ID flag for this Gold Skulltula

void EnSi_Init(Actor* thisx, PlayState* play);
void EnSi_Destroy(Actor* thisx, PlayState* play);
void EnSi_Update(Actor* thisx, PlayState* play);
void EnSi_Draw(Actor* thisx, PlayState* play);

s32 EnSi_RemoveAC(EnSi* this, PlayState* play);
void EnSi_Action_Idle(EnSi* this, PlayState* play);
void EnSi_Action_HookshotPull(EnSi* this, PlayState* play);
void EnSi_Action_WaitTextbox(EnSi* this, PlayState* play);

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_NO_PUSH | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, HIT_SPECIAL_EFFECT_NONE, 0x00 },
        { 0x00000090, HIT_BACKLASH_NONE, 0x00 },
        ATELEM_NONE,
        ACELEM_ON | ACELEM_HOOKABLE,
        OCELEM_ON,
    },
    { 20, 18, 2, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sEnSiColliderInfo = { 0, 0, 0, 0, MASS_IMMOVABLE };

ActorProfile En_Si_Profile = {
    /**/ ACTOR_EN_SI,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_ST,
    /**/ sizeof(EnSi),
    /**/ EnSi_Init,
    /**/ EnSi_Destroy,
    /**/ EnSi_Update,
    /**/ EnSi_Draw,
};

void EnSi_Init(Actor* thisx, PlayState* play) {
    EnSi* this = (EnSi*)thisx;

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, &sEnSiColliderInfo);
    Actor_SetScale(&this->actor, 0.025f);
    this->unused_19C = 0;
    this->actionFunc = EnSi_Action_Idle;
    this->actor.shape.yOffset = 42.0f;
}

void EnSi_Destroy(Actor* thisx, PlayState* play) {
    EnSi* this = (EnSi*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

s32 EnSi_RemoveAC(EnSi* this, PlayState* play) {
    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
    }
    return 0;
}

/**
 * Rotate, wait for player to Hookshot or pick up
 */
void EnSi_Action_Idle(EnSi* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (ACTOR_FLAGS_CHECK_ALL(&this->actor, ACTOR_FLAG_HOOKSHOT_ATTACHED)) {
        this->actionFunc = EnSi_Action_HookshotPull;
    } else {
        Math_SmoothStepToF(&this->actor.scale.x, 0.25f, 0.4f, 1.0f, 0.0f);
        Actor_SetScale(&this->actor, this->actor.scale.x);
        this->actor.shape.rot.y += 0x400;

        if (!Player_InCsMode(play)) {
            EnSi_RemoveAC(this, play);

            if (this->collider.base.ocFlags2 & OC2_HIT_PLAYER) {
                this->collider.base.ocFlags2 &= ~OC2_HIT_PLAYER;
                Item_Give(play, ITEM_SKULL_TOKEN);
                player->actor.freezeTimer = 10;
                Message_StartTextbox(play, 0xB4, NULL);
                Audio_PlayFanfare(NA_BGM_SMALL_ITEM_GET);
                this->actionFunc = EnSi_Action_WaitTextbox;
            } else {
                Collider_UpdateCylinder(&this->actor, &this->collider);
                CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
                CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
            }
        }
    }
}

/**
 * Pulled by Hookshot towards player, give item when detached
 */
void EnSi_Action_HookshotPull(EnSi* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    Math_SmoothStepToF(&this->actor.scale.x, 0.25f, 0.4f, 1.0f, 0.0f);
    Actor_SetScale(&this->actor, this->actor.scale.x);
    this->actor.shape.rot.y += 0x400;

    if (!ACTOR_FLAGS_CHECK_ALL(&this->actor, ACTOR_FLAG_HOOKSHOT_ATTACHED)) {
        Item_Give(play, ITEM_SKULL_TOKEN);
        player->actor.freezeTimer = 10;
        Message_StartTextbox(play, 0xB4, NULL);
        Audio_PlayFanfare(NA_BGM_SMALL_ITEM_GET);
        this->actionFunc = EnSi_Action_WaitTextbox;
    }
}

/**
 * Wait for textbox to close, then set token as collected and kill actor
 */
void EnSi_Action_WaitTextbox(EnSi* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (Message_GetState(&play->msgCtx) != TEXT_STATE_CLOSING) {
        player->actor.freezeTimer = 10;
    } else {
        SET_GS_FLAGS(ENSI_GS_AREA(this), ENSI_GS_ID(this));
        Actor_Kill(&this->actor);
    }
}

void EnSi_Update(Actor* thisx, PlayState* play) {
    EnSi* this = (EnSi*)thisx;

    Actor_MoveXZGravity(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
    this->actionFunc(this, play);
    Actor_SetFocus(&this->actor, 16.0f);
}

void EnSi_Draw(Actor* thisx, PlayState* play) {
    EnSi* this = (EnSi*)thisx;

    if (this->actionFunc != EnSi_Action_WaitTextbox) {
        func_8002ED80(&this->actor, play, 0);
        func_8002EBCC(&this->actor, play, 0);
        GetItem_Draw(play, GID_SKULL_TOKEN_2);
    }
}
