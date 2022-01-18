/*
 * File: z_en_mm.c
 * Overlay: ovl_En_Mm
 * Description: Running Man (adult)
 */

#include "z_en_mm2.h"
#include "vt.h"
#include "objects/object_mm/object_mm.h"

#define FLAGS (ACTOR_FLAG_0 | ACTOR_FLAG_3 | ACTOR_FLAG_4)

typedef enum {
    /* 0 */ RM2_ANIM_RUN,
    /* 1 */ RM2_ANIM_SIT,
    /* 2 */ RM2_ANIM_SIT_WAIT,
    /* 3 */ RM2_ANIM_STAND,
    /* 4 */ RM2_ANIM_SPRINT,
    /* 5 */ RM2_ANIM_EXCITED, // plays when talking to him with bunny hood on
    /* 6 */ RM2_ANIM_HAPPY    // plays when you sell him the bunny hood
} RunningManAnimIndex;

typedef enum {
    /* 0 */ RM2_MOUTH_CLOSED,
    /* 1 */ RM2_MOUTH_OPEN
} RunningManMouthTex;

void EnMm2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMm2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMm2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMm2_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_80AAF3C0(EnMm2* this, GlobalContext* globalCtx);
void func_80AAF57C(EnMm2* this, GlobalContext* globalCtx);
void func_80AAF668(EnMm2* this, GlobalContext* globalCtx);
s32 EnMm2_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx);
void EnMm2_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx);

const ActorInit En_Mm2_InitVars = {
    ACTOR_EN_MM2,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_MM,
    sizeof(EnMm2),
    (ActorFunc)EnMm2_Init,
    (ActorFunc)EnMm2_Destroy,
    (ActorFunc)EnMm2_Update,
    (ActorFunc)EnMm2_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_PLAYER,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000004, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 18, 63, 0, { 0, 0, 0 } },
};

static AnimationSpeedInfo sAnimationInfo[] = {
    { &gRunningManRunAnim, 1.0f, ANIMMODE_LOOP, -7.0f },     { &gRunningManSitStandAnim, -1.0f, ANIMMODE_ONCE, -7.0f },
    { &gRunningManSitWaitAnim, 1.0f, ANIMMODE_LOOP, -7.0f }, { &gRunningManSitStandAnim, 1.0f, ANIMMODE_ONCE, -7.0f },
    { &gRunningManSprintAnim, 1.0f, ANIMMODE_LOOP, -7.0f },  { &gRunningManExcitedAnim, 1.0f, ANIMMODE_LOOP, -12.0f },
    { &gRunningManHappyAnim, 1.0f, ANIMMODE_LOOP, -12.0f },
};

static InitChainEntry sInitChain[] = {
    ICHAIN_F32(uncullZoneForward, 4000, ICHAIN_STOP),
};

void EnMm2_ChangeAnim(EnMm2* this, s32 index, s32* currentIndex) {
    f32 phi_f0;

    if ((*currentIndex < 0) || (index == *currentIndex)) {
        phi_f0 = 0.0f;
    } else {
        phi_f0 = sAnimationInfo[index].morphFrames;
    }

    if (sAnimationInfo[index].playSpeed >= 0.0f) {
        Animation_Change(&this->skelAnime, sAnimationInfo[index].animation, sAnimationInfo[index].playSpeed, 0.0f,
                         (f32)Animation_GetLastFrame(sAnimationInfo[index].animation), sAnimationInfo[index].mode,
                         phi_f0);
    } else {
        Animation_Change(&this->skelAnime, sAnimationInfo[index].animation, sAnimationInfo[index].playSpeed,
                         (f32)Animation_GetLastFrame(sAnimationInfo[index].animation), 0.0f, sAnimationInfo[index].mode,
                         phi_f0);
    }
    *currentIndex = index;
}

void func_80AAEF70(EnMm2* this, GlobalContext* globalCtx) {
    if (!CHECK_FLAG_ALL(gSaveContext.eventChkInf[EVENTCHKINF_90_91_92_93_INDEX],
                        EVENTCHKINF_90_MASK | EVENTCHKINF_91_MASK | EVENTCHKINF_92_MASK | EVENTCHKINF_93_MASK)) {
        this->actor.textId = 0x6086;
    } else if (GET_INFTABLE(INFTABLE_17F)) {
        if (GET_EVENTINF(EVENTINF_10)) {
            this->actor.textId = 0x6082;
        } else if (gSaveContext.timer2State != 0) {
            this->actor.textId = 0x6076;
        } else if (HIGH_SCORE(HS_MARATHON) == 158) {
            this->actor.textId = 0x607E;
        } else {
            this->actor.textId = 0x6081;
        }
    } else if (gSaveContext.timer2State) {
        this->actor.textId = 0x6076;
    } else {
        this->actor.textId = 0x607D;
        CLEAR_EVENTINF(EVENTINF_10);
        HIGH_SCORE(HS_MARATHON) = 158;
    }
}

void EnMm2_Init(Actor* thisx, GlobalContext* globalCtx2) {
    EnMm2* this = (EnMm2*)thisx;
    GlobalContext* globalCtx = globalCtx2;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 21.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &gRunningManSkel, NULL, this->jointTable, this->morphTable, 16);
    Animation_Change(&this->skelAnime, sAnimationInfo[RM2_ANIM_SIT_WAIT].animation, 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimationInfo[RM2_ANIM_SIT_WAIT].animation),
                     sAnimationInfo[RM2_ANIM_SIT_WAIT].mode, sAnimationInfo[RM2_ANIM_SIT_WAIT].morphFrames);
    this->previousAnimation = RM2_ANIM_SIT_WAIT;
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->mouthTexIndex = RM2_MOUTH_CLOSED;
    this->actor.targetMode = 6;
    this->unk_1F4 |= 1;
    this->actor.gravity = -1.0f;
    if (this->actor.params == 1) {
        this->actionFunc = func_80AAF668;
    } else {
        func_80AAEF70(this, globalCtx);
        this->actionFunc = func_80AAF57C;
    }
    if (!LINK_IS_ADULT) {
        Actor_Kill(&this->actor);
    }
    if (this->actor.params == 1) {
        if (!(GET_INFTABLE(INFTABLE_17F)) || !(GET_EVENTINF(EVENTINF_10))) {
            osSyncPrintf(VT_FGCOL(CYAN) " マラソン 開始されていない \n" VT_RST "\n");
            Actor_Kill(&this->actor);
        }
    }
}

void EnMm2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnMm2* this = (EnMm2*)thisx;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

s32 func_80AAF224(EnMm2* this, GlobalContext* globalCtx, EnMm2ActionFunc actionFunc) {
    s16 yawDiff;

    if (Actor_ProcessTalkRequest(&this->actor, globalCtx)) {
        this->actionFunc = actionFunc;
        return 1;
    }
    yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if ((ABS(yawDiff) <= 0x4300) && (this->actor.xzDistToPlayer < 100.0f)) {
        func_8002F2CC(&this->actor, globalCtx, 100.0f);
    }
    return 0;
}

void func_80AAF2BC(EnMm2* this, GlobalContext* globalCtx) {
    if (this->unk_1F6 > 60) {
        Actor_Kill(&this->actor);
    }
    SkelAnime_Update(&this->skelAnime);
    this->unk_1F6++;
    Math_SmoothStepToF(&this->actor.speedXZ, 10.0f, 0.6f, 2.0f, 0.0f);
}

void func_80AAF330(EnMm2* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime)) {
        this->actionFunc = func_80AAF2BC;
        EnMm2_ChangeAnim(this, RM2_ANIM_RUN, &this->previousAnimation);
        this->mouthTexIndex = RM2_MOUTH_OPEN;
        if (!(this->unk_1F4 & 2)) {
            Message_CloseTextbox(globalCtx);
        }
        gSaveContext.timer2State = 0;
        CLEAR_EVENTINF(EVENTINF_10);
    }
}

void func_80AAF3C0(EnMm2* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);

    switch (this->actor.textId) {
        case 0x607D:
        case 0x607E:
            if ((Message_GetState(&globalCtx->msgCtx) == TEXT_STATE_CHOICE) && Message_ShouldAdvance(globalCtx)) {
                switch (globalCtx->msgCtx.choiceIndex) {
                    case 0:
                        Message_ContinueTextbox(globalCtx, 0x607F);
                        this->actor.textId = 0x607F;
                        SET_EVENTINF(EVENTINF_10);
                        break;
                    case 1:
                        Message_ContinueTextbox(globalCtx, 0x6080);
                        this->actor.textId = 0x6080;
                        break;
                };
                if (this->unk_1F4 & 4) {
                    if (1) {}
                    this->unk_1F4 &= ~4;
                    HIGH_SCORE(HS_MARATHON) += 1;
                }
            }
            return;
        case 0x6081:
            if ((Message_GetState(&globalCtx->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(globalCtx)) {
                this->unk_1F4 |= 4;
                HIGH_SCORE(HS_MARATHON) -= 1;
                Message_ContinueTextbox(globalCtx, 0x607E);
                this->actor.textId = 0x607E;
            }
            return;
    }

    if (Actor_TextboxIsClosing(&this->actor, globalCtx)) {
        if (this->actor.textId == 0x607F) {
            func_80088AA0(0);
            this->actionFunc = func_80AAF57C;
        } else {
            this->actionFunc = func_80AAF57C;
        }
        this->actionFunc = func_80AAF57C;
        func_80AAEF70(this, globalCtx);
    }
}

void func_80AAF57C(EnMm2* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    func_80AAEF70(this, globalCtx);
    if ((func_80AAF224(this, globalCtx, func_80AAF3C0)) && (this->actor.textId == 0x607D)) {
        SET_INFTABLE(INFTABLE_17F);
    }
}

void func_80AAF5EC(EnMm2* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if ((Message_GetState(&globalCtx->msgCtx) == TEXT_STATE_EVENT) && Message_ShouldAdvance(globalCtx)) {
        this->unk_1F4 &= ~1;
        EnMm2_ChangeAnim(this, RM2_ANIM_STAND, &this->previousAnimation);
        this->actionFunc = func_80AAF330;
    }
}

void func_80AAF668(EnMm2* this, GlobalContext* globalCtx) {
    this->actor.world.rot.y = -0x3E80;
    this->actor.shape.rot.y = this->actor.world.rot.y;
    SkelAnime_Update(&this->skelAnime);
    if (((void)0, gSaveContext.timer2Value) < HIGH_SCORE(HS_MARATHON)) {
        this->actor.textId = 0x6085;
    } else {
        this->actor.textId = 0x6084;
    }
    if (func_80AAF224(this, globalCtx, func_80AAF5EC)) {
        this->unk_1F6 = 0;
        if (((void)0, gSaveContext.timer2Value) < HIGH_SCORE(HS_MARATHON)) {
            HIGH_SCORE(HS_MARATHON) = gSaveContext.timer2Value;
        }
    } else {
        LOG_HEX("((z_common_data.event_inf[1]) & (0x0001))", GET_EVENTINF(EVENTINF_10), "../z_en_mm2.c", 541);
        if (!(GET_EVENTINF(EVENTINF_10))) {
            this->unk_1F4 |= 2;
            this->unk_1F4 &= ~1;
            EnMm2_ChangeAnim(this, RM2_ANIM_STAND, &this->previousAnimation);
            this->actionFunc = func_80AAF330;
        }
    }
}

void EnMm2_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnMm2* this = (EnMm2*)thisx;
    s32 pad;

    if (this->unk_1F4 & 1) {
        func_80038290(globalCtx, &this->actor, &this->unk_1E8, &this->unk_1EE, this->actor.focus.pos);
    } else {
        Math_SmoothStepToS(&this->unk_1E8.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_1E8.y, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_1EE.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_1EE.y, 0, 6, 6200, 100);
    }
    this->actionFunc(this, globalCtx);
    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    Actor_MoveForward(&this->actor);
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
}

void EnMm2_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static void* mouthTextures[] = { gRunningManMouthOpenTex, gRunningManMouthClosedTex };
    EnMm2* this = (EnMm2*)thisx;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_mm2.c", 634);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(mouthTextures[this->mouthTexIndex]));
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnMm2_OverrideLimbDraw, EnMm2_PostLimbDraw, this);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_mm2.c", 654);
}

s32 EnMm2_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnMm2* this = (EnMm2*)thisx;

    switch (limbIndex) {
        case 8:
            rot->x += this->unk_1EE.y;
            rot->y -= this->unk_1EE.x;
            break;
        case 15:
            rot->x += this->unk_1E8.y;
            rot->z += this->unk_1E8.x + 0xFA0;
            break;
    }

    return 0;
}

void EnMm2_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f headOffset = { 200.0f, 800.0f, 0.0f };
    EnMm2* this = (EnMm2*)thisx;

    if (limbIndex == 15) {
        Matrix_MultVec3f(&headOffset, &this->actor.focus.pos);
    }
}
