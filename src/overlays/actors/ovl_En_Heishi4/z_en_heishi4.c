#include "z_en_heishi4.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "printf.h"
#include "terminal.h"
#include "translation.h"
#include "face_reaction.h"
#include "play_state.h"
#include "player.h"
#include "save.h"

#include "assets/objects/object_sd/object_sd.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY)

void EnHeishi4_Init(Actor* thisx, PlayState* play);
void EnHeishi4_Destroy(Actor* thisx, PlayState* play);
void EnHeishi4_Update(Actor* thisx, PlayState* play);
void EnHeishi4_Draw(Actor* thisx, PlayState* play);

void func_80A56544(EnHeishi4* this, PlayState* play);
void func_80A5673C(EnHeishi4* this, PlayState* play);
void func_80A56328(EnHeishi4* this, PlayState* play);
void func_80A563BC(EnHeishi4* this, PlayState* play);
void func_80A56B40(EnHeishi4* this, PlayState* play);
void func_80A56614(EnHeishi4* this, PlayState* play);
void func_80A56874(EnHeishi4* this, PlayState* play);
void func_80A56900(EnHeishi4* this, PlayState* play);
void func_80A56994(EnHeishi4* this, PlayState* play);
void func_80A56A50(EnHeishi4* this, PlayState* play);
void func_80A56ACC(EnHeishi4* this, PlayState* play);

ActorProfile En_Heishi4_Profile = {
    /**/ ACTOR_EN_HEISHI4,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_SD,
    /**/ sizeof(EnHeishi4),
    /**/ EnHeishi4_Init,
    /**/ EnHeishi4_Destroy,
    /**/ EnHeishi4_Update,
    /**/ EnHeishi4_Draw,
};

static u32 sMaskReactionSets[] = { MASK_REACTION_SET_HEISHI4_1, MASK_REACTION_SET_HEISHI4_2 };

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 33, 40, 0, { 0, 0, 0 } },
};

void EnHeishi4_Init(Actor* thisx, PlayState* play) {
    EnHeishi4* this = (EnHeishi4*)thisx;

    Actor_SetScale(thisx, 0.01f);
    this->type = PARAMS_GET_U(thisx->params, 0, 8);
    thisx->colChkInfo.mass = MASS_IMMOVABLE;
    this->pos = thisx->world.pos;
    thisx->attentionRangeType = ATTENTION_RANGE_6;
    if (this->type == HEISHI4_AT_MARKET_DYING) {
        this->height = 30.0f;
        ActorShape_Init(&thisx->shape, 0.0f, NULL, 30.0f);
        SkelAnime_Init(play, &this->skelAnime, &gEnHeishiSkel, &gEnHeishiDyingGuardAnim_00C444, this->jointTable,
                       this->morphTable, 17);
    } else {
        this->height = 60.0f;
        ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawCircle, 30.0f);
        SkelAnime_Init(play, &this->skelAnime, &gEnHeishiSkel, &gEnHeishiIdleAnim, this->jointTable, this->morphTable,
                       17);
    }
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, thisx, &sCylinderInit);
    this->collider.dim.yShift = 0;
    this->collider.dim.radius = 15;
    this->collider.dim.height = 70;
    switch (this->type) {
        case HEISHI4_AT_KAKARIKO_ENTRANCE:
        case HEISHI4_AT_IMPAS_HOUSE:
            this->actionFunc = func_80A56328;
            break;
        case HEISHI4_AT_MARKET_DYING:
            this->collider.dim.radius = 28;
            this->collider.dim.height = 5;
            this->actionFunc = func_80A5673C;
            break;
        case HEISHI4_AT_MARKET_NIGHT:
            this->actionFunc = func_80A56544;
            break;
    }
    this->unk_27C = PARAMS_GET_U(thisx->params, 8, 8);
    PRINTF("\n\n");
    PRINTF(VT_FGCOL(GREEN) T(" ☆☆☆☆☆ 兵士２セット完了！ ☆☆☆☆☆ %d\n", " ☆☆☆☆☆ Soldier Set 2 Completed! ☆☆☆☆☆ %d\n")
               VT_RST,
           thisx->params);
    PRINTF(VT_FGCOL(YELLOW) T(" ☆☆☆☆☆ 識別完了！\t    ☆☆☆☆☆ %d\n", " ☆☆☆☆☆ Identification Completed!\t ☆☆☆☆☆ %d\n")
               VT_RST,
           this->type);
    PRINTF(VT_FGCOL(MAGENTA) T(" ☆☆☆☆☆ メッセージ完了！   ☆☆☆☆☆ %x\n\n", " ☆☆☆☆☆ Message completed!       ☆☆☆☆☆ %x\n\n")
               VT_RST,
           PARAMS_GET_U(thisx->params, 8, 4));
    PRINTF("\n\n");
}

void EnHeishi4_Destroy(Actor* thisx, PlayState* play) {
    EnHeishi4* this = (EnHeishi4*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void func_80A56328(EnHeishi4* this, PlayState* play) {
    f32 frames = Animation_GetLastFrame(&gEnHeishiIdleAnim);

    Animation_Change(&this->skelAnime, &gEnHeishiIdleAnim, 1.0f, 0.0f, (s16)frames, ANIMMODE_LOOP, -10.0f);
    this->actionFunc = func_80A563BC;
}

void func_80A563BC(EnHeishi4* this, PlayState* play) {
    s16 reactionOffset;

    this->unk_2B4 = 0;
    reactionOffset = this->type - 4;
    if (reactionOffset < 0) {
        reactionOffset = 0;
    }
    if (reactionOffset >= 3) {
        reactionOffset = 1;
    }
    if (MaskReaction_GetTextId(play, sMaskReactionSets[reactionOffset]) != 0) {
        this->actor.textId = MaskReaction_GetTextId(play, sMaskReactionSets[reactionOffset]);
        this->unk_2B4 = 1;
        this->actionFunc = func_80A56B40;
    } else {
        if (GET_EVENTCHKINF(EVENTCHKINF_80)) {
            this->actor.textId = 0x5065;
            this->actionFunc = func_80A56B40;
            return;
        }
        if (GET_EVENTCHKINF(EVENTCHKINF_45)) {
            this->actor.textId = 0x5068;
            this->actionFunc = func_80A56B40;
            return;
        }
        if (this->type == HEISHI4_AT_IMPAS_HOUSE) {
            if (this->unk_284 == 0) {
                this->actor.textId = 0x5079;
            } else {
                this->actor.textId = 0x507A;
            }
        } else if (IS_DAY) {
            if (this->unk_284 == 0) {
                this->actor.textId = 0x5063;
            } else {
                this->actor.textId = 0x5064;
            }
        } else if (this->unk_284 == 0) {
            this->actor.textId = 0x5066;
        } else {
            this->actor.textId = 0x5067;
        }

        this->actionFunc = func_80A56B40;
    }
}

void func_80A56544(EnHeishi4* this, PlayState* play) {
    f32 frames = Animation_GetLastFrame(&gEnHeishiIdleAnim);

    Animation_Change(&this->skelAnime, &gEnHeishiIdleAnim, 1.0f, 0.0f, (s16)frames, ANIMMODE_LOOP, -10.0f);
    if (LINK_AGE_IN_YEARS != YEARS_CHILD) {
        PRINTF(VT_FGCOL(GREEN) T(" ☆☆☆☆☆ ぎゃぁ！オトナだー ☆☆☆☆☆ \n", " ☆☆☆☆☆ Oh, no! I'm an adult! ☆☆☆☆☆ \n") VT_RST);
        Actor_Kill(&this->actor);
    } else {
        this->actionFunc = func_80A56614;
    }
}

void func_80A56614(EnHeishi4* this, PlayState* play) {
    s16 reactionOffset;

    reactionOffset = this->type - 4;
    this->unk_2B4 = 0;
    if (reactionOffset < 0) {
        reactionOffset = 0;
    }
    if (reactionOffset >= 3) {
        reactionOffset = 1;
    }
    if (MaskReaction_GetTextId(play, sMaskReactionSets[reactionOffset]) != 0) {
        this->actor.textId = MaskReaction_GetTextId(play, sMaskReactionSets[reactionOffset]);
        this->unk_2B4 = 1;
        this->actionFunc = func_80A56B40;
        return;
    }
    if (play->sceneId == SCENE_MARKET_GUARD_HOUSE) {
        if (IS_DAY) {
            this->actor.textId = 0x7004;
        } else {
            this->actor.textId = 0x709A;
        }
    } else if (play->sceneId != SCENE_MARKET_NIGHT) {
        if (IS_DAY) {
            this->actor.textId = 0x7002;
        } else {
            this->actor.textId = 0x7003;
        }
    } else {
        this->actor.textId = 0x7003;
    }

    this->actionFunc = func_80A56B40;
}

void func_80A5673C(EnHeishi4* this, PlayState* play) {
    f32 frames;

    if (GET_EVENTCHKINF(EVENTCHKINF_45)) {
        PRINTF(VT_FGCOL(YELLOW) T(" ☆☆☆☆☆ マスターソード祝入手！ ☆☆☆☆☆ \n",
                                  " ☆☆☆☆☆ Congratulations on obtaining the Master Sword! ☆☆☆☆☆ \n") VT_RST);
        Actor_Kill(&this->actor);
        return;
    }
    this->unk_284 = 0;
    if (GET_EVENTCHKINF(EVENTCHKINF_80)) {
        if (!GET_INFTABLE(INFTABLE_6C)) {
            frames = Animation_GetLastFrame(&gEnHeishiDyingGuardAnim_00C444);
            Animation_Change(&this->skelAnime, &gEnHeishiDyingGuardAnim_00C444, 1.0f, 0.0f, (s16)frames, ANIMMODE_LOOP,
                             -10.0f);
            this->actor.textId = 0x7007;
            this->unk_282 = TEXT_STATE_EVENT;
            this->unk_284 = 1;
            PRINTF(VT_FGCOL(YELLOW) T(" ☆☆☆☆☆ デモ開始！ ☆☆☆☆☆ \n", " ☆☆☆☆☆ Demo begins! ☆☆☆☆☆ \n") VT_RST);
        } else {
            this->actor.textId = 0x7008;
            this->unk_282 = TEXT_STATE_DONE;
            PRINTF(VT_FGCOL(BLUE) T(" ☆☆☆☆☆ 返事なし ☆☆☆☆☆ \n", " ☆☆☆☆☆ No reply ☆☆☆☆☆ \n") VT_RST);
        }
        this->actionFunc = func_80A56874;
    } else {
        Actor_Kill(&this->actor);
    }
}

void func_80A56874(EnHeishi4* this, PlayState* play) {
    if (this->unk_284 != 0) {
        SkelAnime_Update(&this->skelAnime);
    }
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        if (this->unk_284 == 0) {
            this->actionFunc = func_80A5673C;

        } else {
            this->actionFunc = func_80A56900;
        }
    } else {
        Actor_OfferTalk(&this->actor, play, 100.0f);
    }
}

void func_80A56900(EnHeishi4* this, PlayState* play) {
    f32 frames = Animation_GetLastFrame(&gEnHeishiDyingGuardTalkAnim);

    Animation_Change(&this->skelAnime, &gEnHeishiDyingGuardTalkAnim, 1.0f, 0.0f, (s16)frames, ANIMMODE_LOOP, -10.0f);
    this->actionFunc = func_80A56994;
}

void func_80A56994(EnHeishi4* this, PlayState* play) {
    SkelAnime_Update(&this->skelAnime);
    Actor_TrackPlayer(play, &this->actor, &this->headRot, &this->torsoRot, this->actor.focus.pos);
    if ((this->unk_282 == Message_GetState(&play->msgCtx)) && Message_ShouldAdvance(play)) {
        Message_CloseTextbox(play);
        SET_INFTABLE(INFTABLE_6C);
        Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_8);
        this->actionFunc = func_80A56A50;
    }
}

void func_80A56A50(EnHeishi4* this, PlayState* play) {
    f32 frames = Animation_GetLastFrame(&gEnHeishiDyingGuardDieAnim);

    this->unk_288 = frames;
    Animation_Change(&this->skelAnime, &gEnHeishiDyingGuardDieAnim, 1.0f, 0.0f, frames, ANIMMODE_ONCE, -10.0f);
    this->actionFunc = func_80A56ACC;
}

void func_80A56ACC(EnHeishi4* this, PlayState* play) {
    f32 currentFrame = this->skelAnime.curFrame;

    SkelAnime_Update(&this->skelAnime);
    if (this->unk_288 <= currentFrame) {
        Player_SetCsActionWithHaltedActors(play, NULL, PLAYER_CSACTION_7);
        this->actionFunc = func_80A5673C;
    }
}

void func_80A56B40(EnHeishi4* this, PlayState* play) {
    s16 reactionOffset;

    SkelAnime_Update(&this->skelAnime);
    reactionOffset = this->type - 4;
    if (reactionOffset < 0) {
        reactionOffset = 0;
    }
    if (reactionOffset >= 3) {
        reactionOffset = 1;
    }
    if (MaskReaction_GetTextId(play, sMaskReactionSets[reactionOffset]) != 0) {
        if (this->unk_2B4 == 0) {
            if ((this->type == HEISHI4_AT_KAKARIKO_ENTRANCE) || (this->type == HEISHI4_AT_IMPAS_HOUSE)) {
                this->actionFunc = func_80A563BC;
                return;
            }
            if (this->type == HEISHI4_AT_MARKET_NIGHT) {
                this->actionFunc = func_80A56614;
                return;
            }
        }
    } else {
        if (this->unk_2B4 != 0) {
            if ((this->type == HEISHI4_AT_KAKARIKO_ENTRANCE) || (this->type == HEISHI4_AT_IMPAS_HOUSE)) {
                this->actionFunc = func_80A563BC;
                return;
            }
            if (this->type == HEISHI4_AT_MARKET_NIGHT) {
                this->actionFunc = func_80A56614;
                return;
            }
        }
    }
    if (Actor_TalkOfferAccepted(&this->actor, play)) {
        if ((this->type == HEISHI4_AT_KAKARIKO_ENTRANCE) || (this->type == HEISHI4_AT_IMPAS_HOUSE)) {
            this->unk_284 = 1;
            this->actionFunc = func_80A563BC;
            return;
        }
        if (this->type == HEISHI4_AT_MARKET_NIGHT) {
            this->actionFunc = func_80A56614;
            return;
        }
    }
    Actor_OfferTalkNearColChkInfoCylinder(&this->actor, play);
}

void EnHeishi4_Update(Actor* thisx, PlayState* play) {
    EnHeishi4* this = (EnHeishi4*)thisx;
    s32 pad;
    Player* player = GET_PLAYER(play);

    thisx->world.pos.x = this->pos.x;
    thisx->world.pos.y = this->pos.y;
    thisx->world.pos.z = this->pos.z;
    Actor_SetFocus(thisx, this->height);
    if (this->type != HEISHI4_AT_MARKET_DYING) {
        this->interactInfo.trackPos = player->actor.world.pos;
        if (!LINK_IS_ADULT) {
            this->interactInfo.trackPos.y = player->actor.world.pos.y - 10.0f;
        }
        Npc_TrackPoint(thisx, &this->interactInfo, 2, NPC_TRACKING_FULL_BODY);
        this->headRot = this->interactInfo.headRot;
        this->torsoRot = this->interactInfo.torsoRot;
    }
    this->unk_27E++;
    this->actionFunc(this, play);
    Actor_MoveXZGravity(thisx);
    Actor_UpdateBgCheckInfo(play, thisx, 10.0f, 10.0f, 30.0f,
                            UPDBGCHECKINFO_FLAG_0 | UPDBGCHECKINFO_FLAG_2 | UPDBGCHECKINFO_FLAG_3 |
                                UPDBGCHECKINFO_FLAG_4);
    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
}

s32 EnHeishi_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnHeishi4* this = (EnHeishi4*)thisx;

    if (limbIndex == 9) {
        rot->x += this->torsoRot.y;
    }
    if (limbIndex == 16) {
        rot->x += this->headRot.y;
        rot->z += this->headRot.z;
    }
    return false;
}

void EnHeishi4_Draw(Actor* thisx, PlayState* play) {
    EnHeishi4* this = (EnHeishi4*)thisx;

    Gfx_SetupDL_25Opa(play->state.gfxCtx);
    SkelAnime_DrawOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, EnHeishi_OverrideLimbDraw, NULL,
                      this);
}
