/*
 * File: z_en_mk.c
 * Overlay: ovl_En_Mk
 * Description: Lakeside Professor
 */

#include "z_en_mk.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z_lib.h"
#include "z64face_reaction.h"
#include "z64play.h"
#include "z64player.h"
#include "z64save.h"

#include "assets/objects/object_mk/object_mk.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY | ACTOR_FLAG_UPDATE_CULLING_DISABLED)

void EnMk_Init(Actor* thisx, PlayState* play);
void EnMk_Destroy(Actor* thisx, PlayState* play);
void EnMk_Update(Actor* thisx, PlayState* play);
void EnMk_Draw(Actor* thisx, PlayState* play);

void EnMk_Wait(EnMk* this, PlayState* play);

ActorProfile En_Mk_Profile = {
    /**/ ACTOR_EN_MK,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_MK,
    /**/ sizeof(EnMk),
    /**/ EnMk_Init,
    /**/ EnMk_Destroy,
    /**/ EnMk_Update,
    /**/ EnMk_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_ENEMY,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_ON,
        OCELEM_ON,
    },
    { 30, 40, 0, { 0, 0, 0 } },
};

void EnMk_Init(Actor* thisx, PlayState* play) {
    EnMk* this = (EnMk*)thisx;
    s32 swimFlag;

    this->actor.minVelocityY = -4.0f;
    this->actor.gravity = -1.0f;
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 36.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &object_mk_Skel_005DF0, &object_mk_Anim_000D88, this->jointTable,
                       this->morphTable, 13);
    Animation_PlayLoop(&this->skelAnime, &object_mk_Anim_000D88);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    Actor_SetScale(&this->actor, 0.01f);

    this->actionFunc = EnMk_Wait;
    this->flags = 0;
    this->swimFlag = 0;
    this->actor.attentionRangeType = ATTENTION_RANGE_6;

    if (GET_ITEMGETINF(ITEMGETINF_10)) {
        this->flags |= 4;
    }
}

void EnMk_Destroy(Actor* thisx, PlayState* play) {
    EnMk* this = (EnMk*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void func_80AACA40(EnMk* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actor.flags &= ~ACTOR_FLAG_TALK_OFFER_AUTO_ACCEPTED;
        this->actionFunc = EnMk_Wait;
    }

    this->flags |= 1;
}

void func_80AACA94(EnMk* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play) != 0) {
        this->actor.parent = NULL;
        this->actionFunc = func_80AACA40;
        Interface_SetSubTimer(240);
        CLEAR_EVENTINF(EVENTINF_MARATHON_ACTIVE);
    } else {
        Actor_OfferGetItem(&this->actor, play, GI_EYE_DROPS, 10000.0f, 50.0f);
    }
}

void func_80AACB14(EnMk* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actionFunc = func_80AACA94;
        Actor_OfferGetItem(&this->actor, play, GI_EYE_DROPS, 10000.0f, 50.0f);
    }
}

void func_80AACB6C(EnMk* this, PlayState* play) {
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        this->actionFunc = func_80AACB14;
    }

    this->flags |= 1;
}

void func_80AACBAC(EnMk* this, PlayState* play) {
    if (this->timer > 0) {
        this->timer--;
        this->actor.shape.rot.y -= 0x800;
    } else {
        this->actionFunc = func_80AACB6C;
        Message_ContinueTextbox(play, 0x4030);
    }
}

void func_80AACC04(EnMk* this, PlayState* play) {
    if (this->timer > 0) {
        this->timer--;
    } else {
        this->timer = 16;
        this->actionFunc = func_80AACBAC;
        Animation_Change(&this->skelAnime, &object_mk_Anim_000D88, 1.0f, 0.0f,
                         Animation_GetLastFrame(&object_mk_Anim_000D88), ANIMMODE_LOOP, -4.0f);
        this->flags &= ~2;
    }
}

void func_80AACCA0(EnMk* this, PlayState* play) {
    if (this->timer > 0) {
        this->timer--;
        this->actor.shape.rot.y += 0x800;
    } else {
        this->timer = 120;
        this->actionFunc = func_80AACC04;
        Animation_Change(&this->skelAnime, &object_mk_Anim_000724, 1.0f, 0.0f,
                         Animation_GetLastFrame(&object_mk_Anim_000724), ANIMMODE_LOOP, -4.0f);
        this->flags &= ~2;
    }
}

void func_80AACD48(EnMk* this, PlayState* play) {
    Player* player = GET_PLAYER(play);

    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        this->actionFunc = func_80AACCA0;
        play->msgCtx.msgMode = MSGMODE_PAUSED;
        player->exchangeItemId = EXCH_ITEM_NONE;
        this->timer = 16;
        Animation_Change(&this->skelAnime, &object_mk_Anim_000D88, 1.0f, 0.0f,
                         Animation_GetLastFrame(&object_mk_Anim_000D88), ANIMMODE_LOOP, -4.0f);
        this->flags &= ~2;
    }

    this->flags |= 1;
}

void func_80AACE2C(EnMk* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_ContinueTextbox(play, 0x4001);
        Animation_Change(&this->skelAnime, &object_mk_Anim_000AC0, 1.0f, 0.0f,
                         Animation_GetLastFrame(&object_mk_Anim_000AC0), ANIMMODE_ONCE, -4.0f);
        this->flags &= ~2;
        this->actionFunc = func_80AACD48;
    }

    this->flags |= 1;
}

void func_80AACEE8(EnMk* this, PlayState* play) {
    if ((Message_GetState(&play->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(play)) {
        Message_ContinueTextbox(play, 0x4000);
        Animation_Change(&this->skelAnime, &object_mk_Anim_000AC0, 1.0f, 0.0f,
                         Animation_GetLastFrame(&object_mk_Anim_000AC0), ANIMMODE_LOOP, -4.0f);
        this->flags &= ~2;
        this->actionFunc = func_80AACE2C;
    }

    this->flags |= 1;
}

void func_80AACFA0(EnMk* this, PlayState* play) {
    if (Actor_HasParent(&this->actor, play)) {
        this->actor.parent = NULL;
        this->actionFunc = func_80AACA40;
        SET_ITEMGETINF(ITEMGETINF_10);
    } else {
        Actor_OfferGetItem(&this->actor, play, GI_HEART_PIECE, 10000.0f, 50.0f);
    }
}

void func_80AAD014(EnMk* this, PlayState* play) {
    if (Actor_TextboxIsClosing(&this->actor, play)) {
        this->actionFunc = func_80AACFA0;
        Actor_OfferGetItem(&this->actor, play, GI_HEART_PIECE, 10000.0f, 50.0f);
    }

    this->flags |= 1;
}

void EnMk_Wait(EnMk* this, PlayState* play) {
    s16 angle;
    s32 swimFlag;
    Player* player = GET_PLAYER(play);
    s32 playerExchangeItem;

    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        playerExchangeItem = Actor_GetPlayerExchangeItemId(play);

        if (this->actor.textId != 0x4018) {
            player->actor.textId = this->actor.textId;
            this->actionFunc = func_80AACA40;
        } else {
            if (INV_CONTENT(ITEM_ODD_MUSHROOM) == ITEM_EYE_DROPS) {
                player->actor.textId = 0x4032;
                this->actionFunc = func_80AACA40;
            } else {
                switch (playerExchangeItem) {
                    case EXCH_ITEM_NONE:
                        if (this->swimFlag >= 8) {
                            if (GET_ITEMGETINF(ITEMGETINF_10)) {
                                player->actor.textId = 0x4075;
                                this->actionFunc = func_80AACA40;
                            } else {
                                player->actor.textId = 0x4074;
                                this->actionFunc = func_80AAD014;
                                this->swimFlag = 0;
                            }
                        } else {
                            if (this->swimFlag == 0) {
                                player->actor.textId = 0x4018;
                                this->actionFunc = func_80AACA40;
                            } else {
                                player->actor.textId = 0x406C + this->swimFlag;
                                this->actionFunc = func_80AACA40;
                            }
                        }
                        break;
                    case EXCH_ITEM_EYEBALL_FROG:
                        player->actor.textId = 0x4019;
                        this->actionFunc = func_80AACEE8;
                        Animation_Change(&this->skelAnime, &object_mk_Anim_000368, 1.0f, 0.0f,
                                         Animation_GetLastFrame(&object_mk_Anim_000368), ANIMMODE_ONCE, -4.0f);
                        this->flags &= ~2;
                        gSaveContext.subTimerState = SUBTIMER_STATE_OFF;
                        Sfx_PlaySfxCentered(NA_SE_SY_TRE_BOX_APPEAR);
                        break;
                    default:
                        player->actor.textId = 0x4018;
                        this->actionFunc = func_80AACA40;
                        break;
                }
            }
        }
    } else {
        this->actor.textId = MaskReaction_GetTextId(play, MASK_REACTION_SET_LAKESIDE_PROFESSOR);

        if (this->actor.textId == 0) {
            this->actor.textId = 0x4018;
        }

        angle = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;

        if ((ABS(angle) < 0x2151) && (this->actor.xzDistToPlayer < 100.0f)) {
            Actor_OfferTalkExchangeEquiCylinder(&this->actor, play, 100.0f, EXCH_ITEM_EYEBALL_FROG);
            this->flags |= 1;
        }
    }
}

void EnMk_Update(Actor* thisx, PlayState* play) {
    EnMk* this = (EnMk*)thisx;
    s32 pad;
    Vec3s vec;
    Player* player;
    s16 swimFlag;

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    Actor_MoveXZGravity(&this->actor);
    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);

    if (!(this->flags & 2) && SkelAnime_Update(&this->skelAnime)) {
        this->flags |= 2;
    }

    this->actionFunc(this, play);

    if (this->flags & 1) {
        Actor_TrackPlayer(play, &this->actor, &this->headRotation, &vec, this->actor.focus.pos);
    } else {
        Math_SmoothStepToS(&this->headRotation.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->headRotation.y, 0, 6, 6200, 100);
    }

    player = GET_PLAYER(play);

    if (this->flags & 8) {
        if (!(player->stateFlags2 & PLAYER_STATE2_10)) {
            this->flags &= ~8;
        }
    } else {
        if (player->currentBoots == PLAYER_BOOTS_IRON) {
            this->flags |= 8;
        } else if (player->stateFlags2 & PLAYER_STATE2_10) {
            swimFlag = player->actor.depthInWater;

            if (swimFlag > 0) {
                if (swimFlag >= 320) {
                    if (swimFlag >= 355) {
                        swimFlag = 8;
                    } else {
                        swimFlag = 7;
                    }
                } else if (swimFlag < 80) {
                    swimFlag = 1;
                } else {
                    swimFlag *= 0.025f;
                }

                if (this->swimFlag < swimFlag) {
                    this->swimFlag = swimFlag;

                    if (!(this->flags & 4) && (this->swimFlag >= 8)) {
                        this->flags |= 4;
                        Sfx_PlaySfxCentered(NA_SE_SY_CORRECT_CHIME);
                    }
                }
            }
        }
    }
}

s32 EnMk_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnMk* this = (EnMk*)thisx;

    if (limbIndex == 11) {
        rot->y -= this->headRotation.y;
        rot->z += this->headRotation.x;
    }

    return false;
}

void EnMk_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f D_80AAD64C = { 1000.0f, -100.0f, 0.0f };
    EnMk* this = (EnMk*)thisx;

    if (limbIndex == 11) {
        Matrix_MultVec3f(&D_80AAD64C, &this->actor.focus.pos);
    }
}

void EnMk_Draw(Actor* thisx, PlayState* play) {
    EnMk* this = (EnMk*)thisx;

    Gfx_SetupDL_37Opa(play->state.gfxCtx);
    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnMk_OverrideLimbDraw, EnMk_PostLimbDraw, &this->actor);
}
