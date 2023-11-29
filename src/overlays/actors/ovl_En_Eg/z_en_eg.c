/*
 * File: z_en_eg.c
 * Overlay: ovl_En_Eg
 * Description: Triggers a void out (used in the tower collapse sequence?)
 */

#include "z_en_eg.h"
#include "terminal.h"

#define FLAGS ACTOR_FLAG_4

void EnEg_Init(Actor* thisx, PlayState* play);
void EnEg_Destroy(Actor* thisx, PlayState* play);
void EnEg_Update(Actor* thisx, PlayState* play);
void EnEg_Draw(Actor* thisx, PlayState* play);

void func_809FFDC8(EnEg* this, PlayState* play);

static s32 sVoided = false;

static EnEgActionFunc sActionFuncs[] = {
    func_809FFDC8,
};

ActorInit En_Eg_InitVars = {
    /**/ ACTOR_EN_EG,
    /**/ ACTORCAT_ITEMACTION,
    /**/ FLAGS,
    /**/ OBJECT_ZL2,
    /**/ sizeof(EnEg),
    /**/ EnEg_Init,
    /**/ EnEg_Destroy,
    /**/ EnEg_Update,
    /**/ EnEg_Draw,
};

void EnEg_PlayVoidOutSFX(void) {
    Sfx_PlaySfxCentered2(NA_SE_OC_ABYSS);
}

void EnEg_Destroy(Actor* thisx, PlayState* play) {
}

void EnEg_Init(Actor* thisx, PlayState* play) {
    EnEg* this = (EnEg*)thisx;

    this->action = 0;
}

void func_809FFDC8(EnEg* this, PlayState* play) {
    if (!sVoided && (gSaveContext.subTimerSeconds <= 0) && Flags_GetSwitch(play, 0x36) && (kREG(0) == 0)) {
        // Void the player out
        Play_TriggerRespawn(play);
        gSaveContext.respawnFlag = -2;
        SEQCMD_STOP_SEQUENCE(SEQ_PLAYER_BGM_MAIN, 0);
        play->transitionType = TRANS_TYPE_FADE_BLACK;
        EnEg_PlayVoidOutSFX();
        sVoided = true;
    }
}

void EnEg_Update(Actor* thisx, PlayState* play) {
    EnEg* this = (EnEg*)thisx;
    s32 action = this->action;

    if (((action < 0) || (0 < action)) || (sActionFuncs[action] == NULL)) {
        // "Main Mode is wrong!!!!!!!!!!!!!!!!!!!!!!!!!"
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        sActionFuncs[action](this, play);
    }
}

void EnEg_Draw(Actor* thisx, PlayState* play) {
}
