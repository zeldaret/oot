/*
 * File: z_en_si.c
 * Overlay: En_Si
 * Description: Gold Skulltula token
 */

#include "z_en_si.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_HOOKSHOT_PULLS_ACTOR)

void EnSi_Init(Actor* thisx, PlayState* play);
void EnSi_Destroy(Actor* thisx, PlayState* play);
void EnSi_Update(Actor* thisx, PlayState* play);
void EnSi_Draw(Actor* thisx, PlayState* play);

s32 func_80AFB748(EnSi* this, PlayState* play);
void func_80AFB768(EnSi* this, PlayState* play);
void func_80AFB89C(EnSi* this, PlayState* play);
void func_80AFB950(EnSi* this, PlayState* play);

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
        { 0x00000000, 0x00, 0x00 },
        { 0x00000090, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_ON | ACELEM_HOOKABLE,
        OCELEM_ON,
    },
    { 20, 18, 2, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 D_80AFBADC = { 0, 0, 0, 0, MASS_IMMOVABLE };

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
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, &D_80AFBADC);
    Actor_SetScale(&this->actor, 0.025f);
    this->unk_19C = 0;
    this->actionFunc = func_80AFB768;
    this->actor.shape.yOffset = 42.0f;
}

void EnSi_Destroy(Actor* thisx, PlayState* play) {
    EnSi* this = (EnSi*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

s32 func_80AFB748(EnSi* this, PlayState* play) {
    if (this->collider.base.acFlags & AC_HIT) {
        this->collider.base.acFlags &= ~AC_HIT;
    }
    return 0;
}

void func_80AFB768(EnSi* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (CHECK_FLAG_ALL(this->actor.flags, ACTOR_FLAG_HOOKSHOT_ATTACHED)) {
        this->actionFunc = func_80AFB89C;
    } else {
        Math_SmoothStepToF(&this->actor.scale.x, 0.25f, 0.4f, 1.0f, 0.0f);
        Actor_SetScale(&this->actor, this->actor.scale.x);
        this->actor.shape.rot.y += 0x400;

        if (!Player_InCsMode(play)) {
            func_80AFB748(this, play);

            if (this->collider.base.ocFlags2 & OC2_HIT_PLAYER) {
                this->collider.base.ocFlags2 &= ~OC2_HIT_PLAYER;
                Item_Give(play, ITEM_SKULL_TOKEN);
                player->actor.freezeTimer = 10;
                Message_StartTextbox(play, 0xB4, NULL);
                Audio_PlayFanfare(NA_BGM_SMALL_ITEM_GET);
                this->actionFunc = func_80AFB950;
            } else {
                Collider_UpdateCylinder(&this->actor, &this->collider);
                CollisionCheck_SetAC(play, &play->colChkCtx, &this->collider.base);
                CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
            }
        }
    }
}

void func_80AFB89C(EnSi* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    Math_SmoothStepToF(&this->actor.scale.x, 0.25f, 0.4f, 1.0f, 0.0f);
    Actor_SetScale(&this->actor, this->actor.scale.x);
    this->actor.shape.rot.y += 0x400;

    if (!CHECK_FLAG_ALL(this->actor.flags, ACTOR_FLAG_HOOKSHOT_ATTACHED)) {
        Item_Give(play, ITEM_SKULL_TOKEN);
        player->actor.freezeTimer = 10;
        Message_StartTextbox(play, 0xB4, NULL);
        Audio_PlayFanfare(NA_BGM_SMALL_ITEM_GET);
        this->actionFunc = func_80AFB950;
    }
}

void func_80AFB950(EnSi* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if (Message_GetState(&play->msgCtx) != TEXT_STATE_CLOSING) {
        player->actor.freezeTimer = 10;
    } else {
        SET_GS_FLAGS(PARAMS_GET_S(this->actor.params, 8, 5), PARAMS_GET_S(this->actor.params, 0, 8));
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

    if (this->actionFunc != func_80AFB950) {
        func_8002ED80(&this->actor, play, 0);
        func_8002EBCC(&this->actor, play, 0);
        GetItem_Draw(play, GID_SKULL_TOKEN_2);
    }
}
