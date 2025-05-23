/*
 * File: z_bg_toki_swd.c
 * Overlay: ovl_Bg_Toki_Swd
 * Description: Master Sword (Contains Cutscenes)
 */

#include "z_bg_toki_swd.h"

#include "gfx.h"
#include "gfx_setupdl.h"
#include "ichain.h"
#include "seqcmd.h"
#include "sequence.h"
#include "sfx.h"
#include "sys_matrix.h"
#include "z64cutscene_flags.h"
#include "z64play.h"
#include "z64player.h"
#include "z64save.h"

#include "assets/objects/object_toki_objects/object_toki_objects.h"

#define FLAGS ACTOR_FLAG_UPDATE_CULLING_DISABLED

void BgTokiSwd_Init(Actor* thisx, PlayState* play);
void BgTokiSwd_Destroy(Actor* thisx, PlayState* play);
void BgTokiSwd_Update(Actor* thisx, PlayState* play);
void BgTokiSwd_Draw(Actor* thisx, PlayState* play2);

void func_808BAF40(BgTokiSwd* this, PlayState* play);
void func_808BB0AC(BgTokiSwd* this, PlayState* play);
void func_808BB128(BgTokiSwd* this, PlayState* play);

extern CutsceneData gPullMasterSwordCs[];
extern CutsceneData gPlaceMasterSwordCs[];
extern CutsceneData gRevealMasterSwordCs[];

ActorProfile Bg_Toki_Swd_Profile = {
    /**/ ACTOR_BG_TOKI_SWD,
    /**/ ACTORCAT_PROP,
    /**/ FLAGS,
    /**/ OBJECT_TOKI_OBJECTS,
    /**/ sizeof(BgTokiSwd),
    /**/ BgTokiSwd_Init,
    /**/ BgTokiSwd_Destroy,
    /**/ BgTokiSwd_Update,
    /**/ BgTokiSwd_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COL_MATERIAL_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1 | OC2_UNK1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEM_MATERIAL_UNK0,
        { 0xFFCFFFFF, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        ATELEM_NONE,
        ACELEM_NONE,
        OCELEM_ON,
    },
    { 10, 70, 0, { 0 } },
};

static CollisionCheckInfoInit sColChkInfoInit = { 10, 35, 100, MASS_IMMOVABLE };

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 25, ICHAIN_STOP),
};

void BgTokiSwd_SetupAction(BgTokiSwd* this, BgTokiSwdActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

void BgTokiSwd_Init(Actor* thisx, PlayState* play) {
    s32 pad;
    BgTokiSwd* this = (BgTokiSwd*)thisx;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    this->actor.shape.yOffset = 800.0f;
    BgTokiSwd_SetupAction(this, func_808BAF40);

    if (LINK_IS_ADULT) {
        this->actor.draw = NULL;
    }

    if (gSaveContext.sceneLayer == 5) {
        play->roomCtx.drawParams[0] = 0xFF;
    }

    Collider_InitCylinder(play, &this->collider);
    Collider_SetCylinder(play, &this->collider, thisx, &sCylinderInit);
    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetInfo(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
}

void BgTokiSwd_Destroy(Actor* thisx, PlayState* play) {
    BgTokiSwd* this = (BgTokiSwd*)thisx;

    Collider_DestroyCylinder(play, &this->collider);
}

void func_808BAF40(BgTokiSwd* this, PlayState* play) {
    if (!GET_EVENTCHKINF(EVENTCHKINF_REVEALED_MASTER_SWORD) && !IS_CUTSCENE_LAYER &&
        Actor_IsFacingAndNearPlayer(&this->actor, 800.0f, 0x7530) && !Play_InCsMode(play)) {
        SET_EVENTCHKINF(EVENTCHKINF_REVEALED_MASTER_SWORD);
        play->csCtx.script = gRevealMasterSwordCs;
        gSaveContext.cutsceneTrigger = 1;
    }
    if (!LINK_IS_ADULT || GET_EVENTCHKINF(EVENTCHKINF_55)) {
        if (Actor_HasParent(&this->actor, play)) {
            if (!LINK_IS_ADULT) {
                Item_Give(play, ITEM_SWORD_MASTER);
                play->csCtx.script = gPullMasterSwordCs;
            } else {
                play->csCtx.script = gPlaceMasterSwordCs;
            }
            SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0);
            SEQCMD_PLAY_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0, 0, NA_BGM_MASTER_SWORD);
            gSaveContext.cutsceneTrigger = 1;
            this->actor.parent = NULL;
            BgTokiSwd_SetupAction(this, func_808BB0AC);
        } else {
            if (Actor_IsFacingPlayer(&this->actor, 0x2000)) {
                Actor_OfferCarry(&this->actor, play);
            }
        }
    }
    if (gSaveContext.sceneLayer == 5) {
        if (play->roomCtx.drawParams[0] > 0) {
            play->roomCtx.drawParams[0]--;
        } else {
            play->roomCtx.drawParams[0] = 0;
        }
    }
}

void func_808BB0AC(BgTokiSwd* this, PlayState* play) {
    Player* player;

    // if sword has a parent it has been pulled/placed from the pedestal
    if (Actor_HasParent(&this->actor, play)) {
        if (!LINK_IS_ADULT) {
            Actor_PlaySfx(&this->actor, NA_SE_IT_SWORD_PUTAWAY_STN);
            this->actor.draw = NULL; // sword has been pulled, don't draw sword
        } else {
            this->actor.draw = BgTokiSwd_Draw; // sword has been placed, draw the master sword
        }
        BgTokiSwd_SetupAction(this, func_808BB128);
    } else {
        player = GET_PLAYER(play);
        player->interactRangeActor = &this->actor;
    }
}

void func_808BB128(BgTokiSwd* this, PlayState* play) {
    if (CutsceneFlags_Get(play, 1) && (play->roomCtx.drawParams[0] < 0xFF)) {
        play->roomCtx.drawParams[0] += 5;
    }
}

void BgTokiSwd_Update(Actor* thisx, PlayState* play) {
    BgTokiSwd* this = (BgTokiSwd*)thisx;

    this->actionFunc(this, play);
    CollisionCheck_SetOC(play, &play->colChkCtx, &this->collider.base);
}

void BgTokiSwd_Draw(Actor* thisx, PlayState* play2) {
    PlayState* play = play2;
    BgTokiSwd* this = (BgTokiSwd*)thisx;
    s32 pad[3];

    OPEN_DISPS(play->state.gfxCtx, "../z_bg_toki_swd.c", 727);

    Gfx_SetupDL_25Opa(play->state.gfxCtx);

    func_8002EBCC(&this->actor, play, 0);

    gSPSegment(POLY_OPA_DISP++, 0x08, Gfx_TexScroll(play->state.gfxCtx, 0, -(play->gameplayFrames % 0x80), 32, 32));
    MATRIX_FINALIZE_AND_LOAD(POLY_OPA_DISP++, play->state.gfxCtx, "../z_bg_toki_swd.c", 742);
    gSPDisplayList(POLY_OPA_DISP++, object_toki_objects_DL_001BD0);

    CLOSE_DISPS(play->state.gfxCtx, "../z_bg_toki_swd.c", 776);
}
