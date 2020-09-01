
/*
 * File: z_en_nb_inEnding.c
 * Description: Functions for Nabooru in Death Mountain Trail in the credits
 */

#include "z_en_nb.h"

extern AnimationHeader* D_06000BC0; // crossed legs
extern AnimationHeader* D_06005CA4; // crossed legs, turns head and looks behind to the right
extern AnimationHeader* D_06005614; // crossed legs, looking behind to the right

void EnNb_SetupCreditsSpawn(EnNb* this, GlobalContext* globalCtx) {
    EnNb_SetCurrentAnim(this, &D_06000BC0, 0, 0.0f, 0);
    this->action = NB_CREDITS_INIT;
    this->drawMode = NB_DRAW_NOTHING;
    this->actor.shape.unk_14 = 0;
}

void EnNb_SetAlphaInCredits(EnNb* this) {
    f32* alphaTimer = &this->alphaTimer;
    s32 alpha;

    this->alphaTimer++;
    if ((kREG(17) + 10.0f) <= this->alphaTimer) {
        this->alpha = 255;
        this->actor.shape.unk_14 = 0xFF;
    } else {
        alpha = (*alphaTimer / (kREG(17) + 10.0f)) * 255.0f;
        this->alpha = alpha;
        this->actor.shape.unk_14 = alpha;
    }
}

void EnNb_SetupCreditsFadeIn(EnNb* this, GlobalContext* globalCtx) {
    EnNb_SetInitialCsPosRot(this, globalCtx, 1);
    this->action = NB_CREDITS_FADEIN;
    this->drawMode = NB_DRAW_HIDE;
}

void EnNb_SetupCreditsSit(EnNb* this) {
    if (this->alphaTimer >= kREG(17) + 10.0f) {
        this->action = NB_CREDITS_SIT;
        this->drawMode = NB_DRAW_DEFAULT;
    }
}

void EnNb_SetupCreditsHeadTurn(EnNb* this) {
    EnNb_SetCurrentAnim(this, &D_06005CA4, 2, -8.0f, 0);
    this->action = NB_CREDITS_HEAD_TURN;
}

void EnNb_CheckIfLookingUp(EnNb* this, UNK_TYPE arg1) {
    if (arg1 != 0) {
        EnNb_SetCurrentAnim(this, &D_06005614, 0, 0.0f, 0);
    }
}

void EnNb_CheckCreditsCsModeImpl(EnNb* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdNPCAction = EnNb_GetNpcCsAction(globalCtx, 1);
    s32 action;
    s32 unk_28C;

    if (csCmdNPCAction != NULL) {
        action = csCmdNPCAction->action;
        unk_28C = this->unk_28C;
        if (action != unk_28C) {
            switch (action) {
                case 15:
                    EnNb_SetupCreditsFadeIn(this, globalCtx);
                    break;
                case 16:
                    EnNb_SetupCreditsHeadTurn(this);
                    break;
                default:
                    // "En_Nb_inEnding_Check_DemoMode: OPERATION DOESN'T EXIST!!!!!!!!"
                    osSyncPrintf("En_Nb_inEnding_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                    break;
            }
            this->unk_28C = action;
        }
    }
}

void EnNb_CheckCreditsCsMode(EnNb* this, GlobalContext* globalCtx) {
    EnNb_CheckCreditsCsModeImpl(this, globalCtx);
}

void EnNb_CreditsFade(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    EnNb_UpdateEyes(this);
    EnNb_SetAlphaInCredits(this);
    EnNb_SetupCreditsSit(this);
}

void func_80AB3428(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    EnNb_UpdateEyes(this);
    EnNb_CheckCreditsCsModeImpl(this, globalCtx);
}

void EnNb_LookUp(EnNb* this, GlobalContext* globalCtx) {
    s32 unk;

    func_80AB1284(this, globalCtx);
    unk = EnNb_FrameUpdateMatrix(this);
    EnNb_UpdateEyes(this);
    EnNb_CheckIfLookingUp(this, unk);
}
