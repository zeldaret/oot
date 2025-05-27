/*
 * File: z_en_tg.c
 * Overlay: ovl_En_Tg
 * Description: Dancing Couple
 */

#include "z_en_tg.h"

#include "gfx.h"
#include "sys_matrix.h"
#include "z64face_reaction.h"
#include "z64play.h"

#include "assets/objects/object_mu/object_mu.h"

#define FLAGS (ACTOR_FLAG_ATTENTION_ENABLED | ACTOR_FLAG_FRIENDLY)

void EnTg_Init(Actor* thisx, PlayState* play);
void EnTg_Destroy(Actor* thisx, PlayState* play);
void EnTg_Update(Actor* thisx, PlayState* play);
void EnTg_Draw(Actor* thisx, PlayState* play);

void EnTg_SpinIfNotTalking(EnTg* this, PlayState* play);

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
    { 20, 64, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 0, 0, 0, 0, MASS_IMMOVABLE };

ActorProfile En_Tg_Profile = {
    /**/ ACTOR_EN_TG,
    /**/ ACTORCAT_NPC,
    /**/ FLAGS,
    /**/ OBJECT_MU,
    /**/ sizeof(EnTg),
    /**/ EnTg_Init,
    /**/ EnTg_Destroy,
    /**/ EnTg_Update,
    /**/ EnTg_Draw,
};

u16 EnTg_GetTextId(PlayState* play, Actor* thisx) {
    EnTg* this = (EnTg*)thisx;
    u16 maskReactionTextId = MaskReaction_GetTextId(play, MASK_REACTION_SET_DANCING_COUPLE);
    u32 textId;

    if (maskReactionTextId != 0) {
        return maskReactionTextId;
    }
    if (play->sceneId == SCENE_KAKARIKO_VILLAGE) {
        if (this->nextDialogue % 2 != 0) {
            textId = 0x5089;
        } else {
            textId = 0x508A;
        }
        return textId;
    } else {
        if (this->nextDialogue % 2 != 0) {
            textId = 0x7025;
        } else {
            textId = 0x7026;
        }
        return textId;
    }
}

s16 EnTg_UpdateTalkState(PlayState* play, Actor* thisx) {
    EnTg* this = (EnTg*)thisx;

    switch (Message_GetState(&play->msgCtx)) {
        case TEXT_STATE_NONE:
        case TEXT_STATE_DONE_HAS_NEXT:
        case TEXT_STATE_DONE_FADING:
        case TEXT_STATE_CHOICE:
        case TEXT_STATE_EVENT:
        case TEXT_STATE_DONE:
        case TEXT_STATE_SONG_DEMO_DONE:
        case TEXT_STATE_8:
        case TEXT_STATE_9:
            return NPC_TALK_STATE_TALKING;
        case TEXT_STATE_CLOSING:
            switch (this->actor.textId) {
                case 0x5089:
                case 0x508A:
                    this->nextDialogue++;
                    break;
                case 0x7025:
                case 0x7026:
                    this->actor.params ^= 1;
                    this->nextDialogue++;
                    break;
            }
            return NPC_TALK_STATE_IDLE;
        default:
            return NPC_TALK_STATE_TALKING;
    }
}

void EnTg_Init(Actor* thisx, PlayState* play) {
    EnTg* this = (EnTg*)thisx;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 28.0f);
    SkelAnime_InitFlex(play, &this->skelAnime, &gDancingCoupleSkel, &gDancingCoupleAnim, NULL, NULL, 0);
    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    this->actor.attentionRangeType = ATTENTION_RANGE_6;
    Actor_SetScale(&this->actor, 0.01f);
    this->nextDialogue = play->state.frames % 2;
    this->actionFunc = EnTg_SpinIfNotTalking;
}

void EnTg_Destroy(Actor* thisx, PlayState* play) {
    EnTg* this = (EnTg*)thisx;

    SkelAnime_Free(&this->skelAnime, play);
    Collider_DestroyCylinder(play, &this->collider);
}

void EnTg_SpinIfNotTalking(EnTg* this, PlayState* play) {
    if (!this->interactInfo.talkState) {
        this->actor.shape.rot.y += 0x800;
    }
}

void EnTg_Update(Actor* thisx, PlayState* play) {
    EnTg* this = (EnTg*)thisx;
    s32 pad;
    f32 temp;
    Vec3s sp2C;

    sp2C.x = this->actor.world.pos.x;
    sp2C.y = this->actor.world.pos.y;
    sp2C.z = (s16)this->actor.world.pos.z + 3;
    this->collider.dim.pos = sp2C;
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
    SkelAnime_Update(&this->skelAnime);
    Actor_UpdateBgCheckInfo(play, &this->actor, 0.0f, 0.0f, 0.0f, UPDBGCHECKINFO_FLAG_2);
    this->actionFunc(this, play);
    temp = this->collider.dim.radius + 30.0f;
    Npc_UpdateTalking(play, &this->actor, &this->interactInfo.talkState, temp, EnTg_GetTextId, EnTg_UpdateTalkState);
}

s32 EnTg_OverrideLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    return false;
}

void EnTg_PostLimbDraw(PlayState* play, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnTg* this = (EnTg*)thisx;
    Vec3f targetOffset = { 0.0f, 800.0f, 0.0f };

    if (limbIndex == 9) {
        // Place the target point at the guy's head instead of the center of the actor
        Matrix_MultVec3f(&targetOffset, &this->actor.focus.pos);
    }
}

Gfx* EnTg_SetColor(GraphicsContext* gfxCtx, u8 r, u8 g, u8 b, u8 a) {
    Gfx* displayList = GRAPH_ALLOC(gfxCtx, 2 * sizeof(Gfx));

    gDPSetEnvColor(displayList, r, g, b, a);
    gSPEndDisplayList(displayList + 1);
    return displayList;
}

void EnTg_Draw(Actor* thisx, PlayState* play) {
    EnTg* this = (EnTg*)thisx;

    OPEN_DISPS(play->state.gfxCtx, "../z_en_tg.c", 462);
    Matrix_Translate(0.0f, 0.0f, -560.0f, MTXMODE_APPLY);

    // Set the guy's shoes and shirt to royal blue
    gSPSegment(POLY_OPA_DISP++, 0x08, EnTg_SetColor(play->state.gfxCtx, 0, 50, 160, 0));

    // Set the girl's shirt to white
    gSPSegment(POLY_OPA_DISP++, 0x09, EnTg_SetColor(play->state.gfxCtx, 255, 255, 255, 0));

    SkelAnime_DrawFlexOpa(play, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnTg_OverrideLimbDraw, EnTg_PostLimbDraw, this);
    CLOSE_DISPS(play->state.gfxCtx, "../z_en_tg.c", 480);
}
