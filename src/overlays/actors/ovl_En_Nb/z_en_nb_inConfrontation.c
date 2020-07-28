#include "z_en_nb.h"

#define THIS ((EnNb*)thisx)

extern AnimationHeader* D_06008BD0; // falls to the ground
extern AnimationHeader* D_060046A8; // looking in crawlspace ?
extern AnimationHeader* D_06003954; // on ground getting up ??
extern AnimationHeader* D_06004030; // looking behind her to the right
extern AnimationHeader* D_06002DBC; // freaking out
extern AnimationHeader* D_060035A8; // looking behind her
extern AnimationHeader* D_06006320; // sees unk from behind, turns and runs
extern Gfx D_06013158[];
extern UNK_PTR sEyeSegments[];
extern UNK_PTR D_0600D8E8;

void EnNb_SetupConfrontation(EnNb* this, GlobalContext* globalCtx) {
    AnimationHeader* animation = &D_06008BD0;
    EnNb_SetCurrentAnim(this, animation, 0, 0.0f, 0);
    this->action = NB_IN_CONFRONTATION;
    this->actor.shape.unk_14 = 0;
}

void EnNb_PlayKnuckleDefeatSFX(EnNb* this, GlobalContext* globalCtx) {
    Vec3f* projectedPos = &this->actor.projectedPos;
    s32 pad;

    if (globalCtx->csCtx.frames == 548) {
        func_80078914(projectedPos, NA_SE_VO_NB_CRY_0);
        func_80078914(projectedPos, NA_SE_EN_FANTOM_HIT_THUNDER);
    }
}

void EnNb_PlayKneelingOnGroundSFX(EnNb* this) {
    s32 pad;
    SkelAnime* skelAnime = &this->skelAnime;

    if ((skelAnime->mode == 2) && ((func_800A56C8(skelAnime, 18.0f) != 0) || (func_800A56C8(skelAnime, 25.0f) != 0))) {
        func_80078914(&this->actor.projectedPos, NA_SE_EV_HUMAN_BOUND);
    }
}

void EnNb_PlayLookRightSFX(EnNb* this) {
    s32 pad;
    SkelAnime* skelAnime = &this->skelAnime;

    if ((skelAnime->mode == 2) && (func_800A56C8(skelAnime, 9.0f) != 0)) {
        func_80078914(&this->actor.projectedPos, NA_SE_PL_WALK_CONCRETE);
    }
}

void EnNb_PlayLookLeftSFX(EnNb* this) {
    s32 pad;
    SkelAnime* skelAnime = &this->skelAnime;

    if ((func_800A56C8(skelAnime, 9.0f) != 0) || (func_800A56C8(skelAnime, 13.0f) != 0)) {
        func_80078914(&this->actor.projectedPos, NA_SE_PL_WALK_CONCRETE);
    }
}

void EnNb_InitDemo6KInConfrontation(EnNb* this, GlobalContext* globalCtx) {
    Actor_Spawn(&globalCtx->actorCtx, globalCtx, ACTOR_DEMO_6K, this->actor.posRot.pos.x,
                kREG(21) + 22.0f + this->actor.posRot.pos.y, this->actor.posRot.pos.z, 0, 0, 0, 0xB);
}

void func_80AB2688(EnNb* this, GlobalContext* globalCtx) {
    this->skelAnime.flags |= 1;
    SkelAnime_LoadAnimationType5(globalCtx, &this->actor, &this->skelAnime, 1.0f);
}

void func_80AB26C8(EnNb* this) {
    this->action = NB_IN_CONFRONTATION;
    this->drawMode = NB_DRAW_NOTHING;
    this->actor.shape.unk_14 = 0;
}

void func_80AB26DC(EnNb* this, GlobalContext* globalCtx) {
    s32 pad;
    AnimationHeader* animation = &D_06008BD0;
    f32 frames = SkelAnime_GetFrameCount(&animation->genericHeader);

    EnNb_SetupCsPosRot(this, globalCtx, 1);
    SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, frames, 2, 0.0f);
    this->action = NB_ACTION_14;
    this->drawMode = NB_DRAW_KNEEL;
    this->actor.shape.unk_14 = 0xFF;
}

void EnNb_SetupKneel(EnNb* this) {
    AnimationHeader* animation = &D_06008BD0;
    f32 frames = SkelAnime_GetFrameCount(&animation->genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, frames, 2, 0.0f);
    this->action = NB_KNEEL;
    this->drawMode = NB_DRAW_KNEEL;
    this->actor.shape.unk_14 = 0xFF;
}

void EnNb_CheckIfKneeling(EnNb* this, UNK_TYPE arg1) {
    AnimationHeader* animation = &D_060046A8;
    if (arg1 != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&animation->genericHeader), 0, 0.0f);
        this->drawMode = NB_DRAW_KNEEL;
    }
}

void EnNb_SetupLookRight(EnNb* this) {
    AnimationHeader* animation = &D_06003954;
    f32 frames = SkelAnime_GetFrameCount(&animation->genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, frames, 2, -8.0f);
    this->action = NB_LOOK_RIGHT;
    this->drawMode = NB_DRAW_DEFAULT;
    this->actor.shape.unk_14 = 0xFF;
}

void EnNb_CheckIfLookingRight(EnNb* this, UNK_TYPE arg1) {
    AnimationHeader* animation = &D_06004030;
    if (arg1 != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&animation->genericHeader), 0, 0.0f);
        this->drawMode = NB_DRAW_LOOK_DIRECTION;
    }
}

void EnNb_SetupLookLeft(EnNb* this) {
    AnimationHeader* animation = &D_06002DBC;
    f32 frames = SkelAnime_GetFrameCount(&animation->genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, frames, 2, -8.0f);
    this->action = NB_LOOK_LEFT;
    this->drawMode = NB_DRAW_LOOK_DIRECTION;
    this->actor.shape.unk_14 = 0xFF;
}

void EnNb_CheckIfLookLeft(EnNb* this, UNK_TYPE arg1) {
    AnimationHeader* animation = &D_060035A8;
    if (arg1 != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&animation->genericHeader), 0, 0.0f);
    }
}

void EnNb_SetupDemo6KInConfrontation(EnNb* this, GlobalContext* globalCtx, UNK_TYPE arg2) {
    if ((this->unk_288 == 0) && (arg2 != 0)) {
        EnNb_InitDemo6KInConfrontation(this, globalCtx);
        this->unk_288 = 1;
    }
}

void EnNb_SetupRun(EnNb* this) {
    AnimationHeader* animation = &D_06006320;
    f32 frames = SkelAnime_GetFrameCount(&animation->genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime, animation, 1.0f, 0.0f, frames, 2, -8.0f);
    this->action = NB_RUN;
    this->drawMode = NB_DRAW_LOOK_DIRECTION;
    this->actor.shape.unk_14 = 0xFF;
}

void EnNb_SetupConfrontationDestroy(EnNb* this) {
    this->action = NB_CONFRONTATION_DESTROYED;
    this->drawMode = NB_DRAW_NOTHING;
    this->actor.shape.unk_14 = 0;
}

void EnNb_CheckConfrontationCsMode(EnNb* this, GlobalContext* globalCtx) {
    CsCmdActorAction* csCmdNPCAction;
    s32 csAction;
    s32 csActionMinusOne;
    s32 unk_28C;

    csCmdNPCAction = EnNb_GetNpcCsAction(globalCtx, 1);
    if (csCmdNPCAction != 0) {
        csAction = csCmdNPCAction->action;
        csActionMinusOne = csAction - 1;
        unk_28C = this->unk_28C;
        if (csAction != unk_28C) {
            switch (csActionMinusOne) {
                case 0:
                    func_80AB26C8(this);
                    break;
                case 9:
                    func_80AB26DC(this, globalCtx);
                    break;
                case 10:
                    EnNb_SetupKneel(this);
                    break;
                case 11:
                    EnNb_SetupLookRight(this);
                    break;
                case 12:
                    EnNb_SetupLookLeft(this);
                    break;
                case 13:
                    EnNb_SetupRun(this);
                    break;
                case 8:
                    EnNb_SetupConfrontationDestroy(this);
                    break;
                default:
                    // "En_Nb_Confrontion_Check_DemoMode: OPERATION DOESN'T EXIST!!!!!!!!"
                    osSyncPrintf("En_Nb_Confrontion_Check_DemoMode:そんな動作は無い!!!!!!!!\n");
                    break;
            }
            this->unk_28C = csAction;
        }
    }
}

void EnNb_CheckConfrontationCsModeWrapper(EnNb* this, GlobalContext* globalCtx) {
    EnNb_CheckConfrontationCsMode(this, globalCtx);
}

void func_80AB2C18(EnNb* this, GlobalContext* globalCtx) {
    EnNb_UpdateEyes(this);
    func_80AB2688(this, globalCtx);
    func_80AB1284(this, globalCtx);
    EnNb_CheckConfrontationCsMode(this, globalCtx);
}

void EnNb_Kneel(EnNb* this, GlobalContext* globalCtx) {
    s32 unk;

    EnNb_UpdateEyes(this);
    unk = EnNb_FrameUpdateMatrix(this);
    EnNb_CheckIfKneeling(this, unk);
    EnNb_PlayKneelingOnGroundSFX(this);
    func_80AB2688(this, globalCtx);
    func_80AB1284(this, globalCtx);
    EnNb_CheckConfrontationCsMode(this, globalCtx);
}

void EnNb_LookRight(EnNb* this, GlobalContext* globalCtx) {
    s32 unk;
    EnNb_UpdateEyes(this);
    unk = EnNb_FrameUpdateMatrix(this);
    EnNb_CheckIfLookingRight(this, unk);
    EnNb_PlayLookRightSFX(this);
    func_80AB2688(this, globalCtx);
    func_80AB1284(this, globalCtx);
    EnNb_CheckConfrontationCsMode(this, globalCtx);
}

void EnNb_LookLeft(EnNb* this, GlobalContext* globalCtx) {
    s32 unk;

    EnNb_UpdateEyes(this);
    unk = EnNb_FrameUpdateMatrix(this);
    EnNb_CheckIfLookLeft(this, unk);
    func_80AB2688(this, globalCtx);
    func_80AB1284(this, globalCtx);
    EnNb_CheckConfrontationCsMode(this, globalCtx);
}

void EnNb_Run(EnNb* this, GlobalContext* globalCtx) {
    s32 unk;

    EnNb_PlayKnuckleDefeatSFX(this, globalCtx);
    EnNb_UpdateEyes(this);
    unk = EnNb_FrameUpdateMatrix(this);
    EnNb_PlayLookLeftSFX(this);
    func_80AB2688(this, globalCtx);
    func_80AB1284(this, globalCtx);
    EnNb_SetupDemo6KInConfrontation(this, globalCtx, unk);
    EnNb_CheckConfrontationCsMode(this, globalCtx);
}

void EnNb_ConfrontationDestroy(EnNb* this, GlobalContext* globalCtx) {
    this->unk_290++;
    if (this->unk_290 > 60.0f) {
        Actor_Kill(&this->actor);
    }
}

void func_80AB2E70(EnNb* this, GlobalContext* globalCtx) {
    s32 pad;
    SkelAnime* skelAnime = &this->skelAnime;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb_inConfrontion.c", 572);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(&D_0600D8E8));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(&D_0600D8E8));
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0, 0, 0, 255);
    gSPSegment(gfxCtx->polyOpa.p++, 0x0C, &D_80116280[2]);
    SkelAnime_DrawSV(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount, NULL, NULL,
                     &this->actor);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb_inConfrontion.c", 593);
}

s32 func_80AB2FC0(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnNb* this = THIS;
    if (limbIndex == 15) {
        *dList = &D_06013158;
    }

    return 0;
}

void func_80AB2FE4(EnNb* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 eyeSegIdx = this->eyeIdx;
    SkelAnime* skelAnime = &this->skelAnime;
    void* srcSegment = sEyeSegments[eyeSegIdx];
    void* srcSegmentC = &D_80116280[2];
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb_inConfrontion.c", 623);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(srcSegment));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(srcSegment));
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0, 0, 0, 255);
    gSPSegment(gfxCtx->polyOpa.p++, 0x0C, srcSegmentC);
    SkelAnime_DrawSV(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount, func_80AB2FC0, NULL,
                     &this->actor);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb_inConfrontion.c", 644);
}
