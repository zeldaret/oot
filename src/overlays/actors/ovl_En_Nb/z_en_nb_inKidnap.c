#include "z_en_nb.h"

extern AnimationHeader* D_06001E7C; // looking around ?
extern AnimationHeader* D_06001350; // i think this is the animation where she is in the purple thing
extern AnimationHeader* D_06001104; // transition to raising arm up in purple portal

void EnNb_SetCurrentAnim(EnNb* this, AnimationHeader* animation, u8 mode, f32 transitionRate, s32 arg4);
s32 EnNb_FrameUpdateMatrix(EnNb* this);
void EnNb_UpdateEyes(EnNb* this);

void func_80AB1284(EnNb* this, GlobalContext* globalCtx);
void EnNb_InitKidnap(EnNb* this, GlobalContext* globalCtx) {
    EnNb_SetCurrentAnim(this, &D_06001E7C, 0, 0.0f, 0);
    this->action = NB_KIDNAPPED;
    this->actor.shape.unk_14 = 0;
    gSaveContext.eventChkInf[9] |= 32;
}

void EnNb_PlayCrySFX(EnNb* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.frames == 3) {
        func_80078914(&this->actor.projectedPos, NA_SE_VO_NB_CRY_0);
    }
}

void EnNb_PlayAgonySFX(EnNb* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.frames == 420) {
        func_80078914(&this->actor.projectedPos, NA_SE_VO_NB_AGONY);
    }
}

void EnNb_SetPosRotInPortal(EnNb* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdNPCAction = EnNb_GetNpcCsAction(globalCtx, 1);
    PosRot* posRot = &this->actor.posRot;
    f32 f0;
    s32 pad;
    Vec3f startPos;
    Vec3f endPos;
    if (csCmdNPCAction != 0) {
        f0 = func_8006F9BC(csCmdNPCAction->endFrame, csCmdNPCAction->startFrame, globalCtx->csCtx.frames, 4, 4);
        startPos.x = csCmdNPCAction->startPos.x;
        startPos.y = csCmdNPCAction->startPos.y;
        startPos.z = csCmdNPCAction->startPos.z;
        endPos.x = csCmdNPCAction->endPos.x;
        endPos.y = csCmdNPCAction->endPos.y;
        endPos.z = csCmdNPCAction->endPos.z;
        posRot->pos.x = ((endPos.x - startPos.x) * f0) + startPos.x;
        posRot->pos.y = ((endPos.y - startPos.y) * f0) + startPos.y;
        posRot->pos.z = ((endPos.z - startPos.z) * f0) + startPos.z;
    }
}

void EnNb_SetupCaptureCutsceneState(EnNb* this, GlobalContext* globalCtx) {
    EnNb_SetupCsPosRot(this, globalCtx, 1);
    this->action = NB_KIDNAPPED;
    this->drawMode = NB_DRAW_NOTHING;
    this->actor.shape.unk_14 = 0;
}

void EnNb_SetRaisedArmCaptureAnim(EnNb* this, UNK_TYPE arg1) {
    AnimationHeader* animation = &D_06001350;
    if (arg1 != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&animation->genericHeader), 0, 0.0f);
    }
}

void EnNb_SetupLookAroundInKidnap(EnNb* this) {
    AnimationHeader* animation = &D_06001E7C;
    SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, SkelAnime_GetFrameCount(&animation->genericHeader), 0,
                         -8.0f);
    this->action = NB_KIDNAPPED_LOOK_AROUND;
    this->drawMode = NB_DRAW_DEFAULT;
}

void EnNb_SetupKidnap(EnNb* this) {
    AnimationHeader* animation = &D_06001104;
    SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, SkelAnime_GetFrameCount(&animation->genericHeader), 2,
                         -8.0f);
    this->action = NB_PORTAL_FALLTHROUGH;
    this->drawMode = NB_DRAW_DEFAULT;
}

void EnNb_CheckKidnapCsMode(EnNb* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdNPCAction = EnNb_GetNpcCsAction(globalCtx, 1);
    s32 action;
    s32 unk_28C;

    if (csCmdNPCAction != NULL) {
        action = csCmdNPCAction->action;
        unk_28C = this->unk_28C;
        if (action != unk_28C) {
            switch (action) {
                case 1:
                    EnNb_SetupCaptureCutsceneState(this, globalCtx);
                    break;
                case 7: 
                    EnNb_SetupLookAroundInKidnap(this);
                    break;
                case 8:
                    EnNb_SetupKidnap(this);
                    break;
                case 9:
                    Actor_Kill(&this->actor);
                    break;
                default:
                    // "En_Nb_Kidnap_Check_DemoMode: No such action!!!!!!!!"
                    osSyncPrintf("En_Nb_Kidnap_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                    break;
            }
            this->unk_28C = action;
        }
    }
}

void func_80AB23A8(EnNb* this, GlobalContext* globalCtx) {
    EnNb_PlayCrySFX(this, globalCtx);
    EnNb_CheckKidnapCsMode(this, globalCtx);
}

void EnNb_MovingInPortal(EnNb* this, GlobalContext* globalCtx) {
    EnNb_PlayCrySFX(this, globalCtx);
    EnNb_PlayAgonySFX(this, globalCtx);
    EnNb_UpdateEyes(this);
    EnNb_FrameUpdateMatrix(this);
    EnNb_CheckKidnapCsMode(this, globalCtx);
}

void EnNb_SuckedInByPortal(EnNb* this, GlobalContext* globalCtx) {
    s32 unk;

    EnNb_UpdateEyes(this);
    unk = EnNb_FrameUpdateMatrix(this);
    EnNb_SetRaisedArmCaptureAnim(this, unk);
    EnNb_SetPosRotInPortal(this, globalCtx);
    EnNb_CheckKidnapCsMode(this, globalCtx);
}

