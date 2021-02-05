/*
 * File: z_en_ani.c
 * Overlay: ovl_En_Ani
 * Description: Kakariko Roof Guy
 */

#include "z_en_ani.h"

#define FLAGS 0x00000009

#define THIS ((EnAni*)thisx)

void EnAni_Init(Actor* thisx, GlobalContext* globalCtx);
void EnAni_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnAni_Update(Actor* thisx, GlobalContext* globalCtx);
void EnAni_Draw(Actor* thisx, GlobalContext* globalCtx);

s32 EnAni_SetText(EnAni* this, GlobalContext* globalCtx, u16 textId);
void func_809B04F0(EnAni* this, GlobalContext* globalCtx);
void func_809B0524(EnAni* this, GlobalContext* globalCtx);
void func_809B0558(EnAni* this, GlobalContext* globalCtx);
void func_809B05F0(EnAni* this, GlobalContext* globalCtx);
void func_809B064C(EnAni* this, GlobalContext* globalCtx);
void func_809B07F8(EnAni* this, GlobalContext* globalCtx);
void func_809B0988(EnAni* this, GlobalContext* globalCtx);
void func_809B0994(EnAni* this, GlobalContext* globalCtx);
void func_809B0A28(EnAni* this, GlobalContext* globalCtx);
void func_809B0A6C(EnAni* this, GlobalContext* globalCtx);

extern FlexSkeletonHeader D_060000F0;
extern AnimationHeader D_060067B8;
extern AnimationHeader D_060070F0;
extern AnimationHeader D_060076EC;

const ActorInit En_Ani_InitVars = {
    ACTOR_EN_ANI,
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_ANI,
    sizeof(EnAni),
    (ActorFunc)EnAni_Init,
    (ActorFunc)EnAni_Destroy,
    (ActorFunc)EnAni_Update,
    (ActorFunc)EnAni_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_ON | AC_TYPE_ENEMY,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_1,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0xFFCFFFFF, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_ON,
        OCELEM_ON,
    },
    { 30, 40, 0, { 0 } },
};



void EnAni_SetupAction(EnAni* this, EnAniActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

static InitChainEntry sInitChain[] = {
    ICHAIN_VEC3F_DIV1000(scale, 10, ICHAIN_CONTINUE),
    ICHAIN_F32(uncullZoneForward, 850, ICHAIN_STOP),
};

void EnAni_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnAni* this = THIS;

    Actor_ProcessInitChain(&this->actor, sInitChain);
    ActorShape_Init(&this->actor.shape, -2800.0f, ActorShadow_DrawCircle, 36.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_060000F0, &D_060076EC, this->jointTable, this->morphTable, 0x10);
    Animation_PlayOnce(&this->skelAnime, &D_060076EC);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    if (LINK_IS_CHILD) {
        EnAni_SetupAction(this, func_809B064C);
    } else {
        EnAni_SetupAction(this, func_809B07F8);
    }
    this->unk_2AA = 0;
    this->unk_2A8 = 0;
    this->actor.minVelocityY = -1.0f;
    this->actor.velocity.y = -1.0f;
}

void EnAni_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnAni* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

s32 EnAni_SetText(EnAni* this, GlobalContext* globalCtx, u16 textId) {
    this->actor.textId = textId;
    this->unk_2A8 |= 1;
    func_8002F2CC(&this->actor, globalCtx, 100.0f);
    return 0;
}

void func_809B04F0(EnAni* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx)) {
        EnAni_SetupAction(this, func_809B064C);
    }
}

void func_809B0524(EnAni* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx)) {
        EnAni_SetupAction(this, func_809B07F8);
    }
}

void func_809B0558(EnAni* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actor.parent = NULL;
        if (LINK_IS_CHILD) {
            EnAni_SetupAction(this, func_809B04F0);
        } else {
            EnAni_SetupAction(this, func_809B0524);
        }
        gSaveContext.itemGetInf[1] |= 0x20;
        return;
    }
    func_8002F434(&this->actor, globalCtx, GI_HEART_PIECE, 10000.0f, 200.0f);
}

void func_809B05F0(EnAni* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx)) {
        EnAni_SetupAction(this, func_809B0558);
    }
    func_8002F434(&this->actor, globalCtx, GI_HEART_PIECE, 10000.0f, 200.0f);
}

void func_809B064C(EnAni* this, GlobalContext* globalCtx) {
    u16 textId;
    s16 yawDiff;
    u16 textId2;

    textId2 = Text_GetFaceReaction(globalCtx, 0xA);
    textId = textId2 & 0xffff;

    if (!textId) {}

    if (textId2 == 0) {
        textId = gSaveContext.nightFlag ? 0x5051 : 0x5050; // "...all I can do is look at the stars."
                                                           // "...all I can do is look at Death Mountain."
    }

    yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if (func_8002F194(&this->actor, globalCtx)) {
        if (this->actor.textId == 0x5056) { // "To get a good view..."
            EnAni_SetupAction(this, func_809B04F0);
        } else if (this->actor.textId == 0x5055) { // "...I'll give you this as a memento."
            EnAni_SetupAction(this, func_809B05F0);
        } else {
            EnAni_SetupAction(this, func_809B04F0);
        }
    } else if (yawDiff >= -0x36AF && yawDiff < 0 && this->actor.xzDistToPlayer < 150.0f &&
               -80.0f < this->actor.yDistToPlayer) {
        if (gSaveContext.itemGetInf[1] & 0x20) {
            EnAni_SetText(this, globalCtx, 0x5056); // "To get a good view..."
        } else {
            EnAni_SetText(this, globalCtx, 0x5055); // "...I'll give you this as a memento."
        }
    } else if (yawDiff >= -0x3E7 && yawDiff < 0x36B0 && this->actor.xzDistToPlayer < 350.0f) {
        EnAni_SetText(this, globalCtx, textId);
    }
}

void func_809B07F8(EnAni* this, GlobalContext* globalCtx) {
    s16 pad;
    s16 yawDiff;
    u16 textId;

    yawDiff = this->actor.yawTowardsPlayer - this->actor.shape.rot.y;
    if (func_8002F194(&this->actor, globalCtx)) {
        if (this->actor.textId == 0x5056) { // "To get a good view..."
            EnAni_SetupAction(this, func_809B0524);
        } else if (this->actor.textId == 0x5055) { // "...I'll give you this as a memento."
            EnAni_SetupAction(this, func_809B05F0);
        } else {
            EnAni_SetupAction(this, func_809B0524);
        }
    } else if (yawDiff > -0x36B0 && yawDiff < 0 && this->actor.xzDistToPlayer < 150.0f &&
               -80.0f < this->actor.yDistToPlayer) {
        if (gSaveContext.itemGetInf[1] & 0x20) {
            EnAni_SetText(this, globalCtx, 0x5056); // "To get a good view..."
        } else {
            EnAni_SetText(this, globalCtx, 0x5055); // "...I'll give you this as a memento."
        }
    } else if (yawDiff > -0x3E8 && yawDiff < 0x36B0 && this->actor.xzDistToPlayer < 350.0f) {
        if (!(gSaveContext.eventChkInf[2] & 0x8000)) {
            textId = 0x5052; // "...Something is happening on Death Mountain!"
        } else {
            textId = (gSaveContext.itemGetInf[1] & 0x20) ? 0x5054 : 0x5053; // "I don't feel like getting down..."
                                                                            // "...Death Mountain is back to normal!"
        }
        EnAni_SetText(this, globalCtx, textId);
    }
}

void func_809B0988(EnAni* this, GlobalContext* globalCtx) {
}

void func_809B0994(EnAni* this, GlobalContext* globalCtx) {
    if (globalCtx->csCtx.npcActions[0]->action == 4) {
        Animation_Change(&this->skelAnime, &D_060070F0, 1.0f, 0.0f, Animation_GetLastFrame(&D_060070F0), ANIMMODE_ONCE,
                         -4.0f);
        this->unk_2AA++;
        this->actor.shape.shadowDraw = ActorShadow_DrawCircle;
    }
}

void func_809B0A28(EnAni* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime)) {
        this->unk_2AA++;
    }
}

void func_809B0A6C(EnAni* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime)) {
        this->skelAnime.curFrame = 0.0f;
    }
    if (globalCtx->csCtx.npcActions[0]->action == 2) {
        Animation_Change(&this->skelAnime, &D_060067B8, 1.0f, 0.0f, Animation_GetLastFrame(&D_060067B8), ANIMMODE_ONCE,
                         0.0f);
        this->actor.shape.shadowDraw = NULL;
        this->unk_2AA++;
    }
}

void EnAni_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnAni* this = THIS;
    s32 pad[2];

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    Actor_MoveForward(&this->actor);
    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    if ((globalCtx->csCtx.state != 0) && (globalCtx->csCtx.npcActions[0] != NULL)) {
        switch (this->unk_2AA) {
            case 0:
                func_809B0A6C(this, globalCtx);
                break;
            case 1:
                func_809B0A28(this, globalCtx);
                break;
            case 2:
                func_809B0994(this, globalCtx);
                break;
            case 3:
                func_809B0A28(this, globalCtx);
                break;
            case 4:
                func_809B0988(this, globalCtx);
                break;
        }

        if (globalCtx->csCtx.frames == 100) {
            func_800788CC(NA_SE_IT_EARTHQUAKE);
        }
    } else {
        if (SkelAnime_Update(&this->skelAnime) != 0) {
            this->skelAnime.curFrame = 0.0f;
        }
        this->actionFunc(this, globalCtx);
    }

    if (this->unk_2A8 & 1) {
        func_80038290(globalCtx, &this->actor, &this->unk_29C, &this->unk_2A2, this->actor.focus.pos);
        this->unk_2A2.z = 0;
        this->unk_2A2.y = this->unk_2A2.z;
        this->unk_2A2.x = this->unk_2A2.z;
    } else {
        Math_SmoothStepToS(&this->unk_29C.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_29C.y, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_2A2.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_2A2.y, 0, 6, 6200, 100);
    }

    if (DECR(this->blinkTimer) == 0) {
        this->blinkTimer = Rand_S16Offset(60, 60);
    }
    this->eyeIndex = this->blinkTimer;
    if (this->eyeIndex >= 3) {
        this->eyeIndex = 0;
    }
}

s32 EnAni_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnAni* this = THIS;

    if (limbIndex == 15) {
        rot->x += this->unk_29C.y;
        rot->z += this->unk_29C.x;
    }
    return false;
}

void EnAni_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Vec3f sMultVec = { 800.0f, 500.0f, 0.0f };
    EnAni* this = THIS;

    if (limbIndex == 15) {
        Matrix_MultVec3f(&sMultVec, &this->actor.focus.pos);
    }
}

static u64* sEyeTextures[] = {
    0x06000408,
    0x06001518,
    0x06001D18,
};

void EnAni_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnAni* this = THIS;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ani.c", 719);

    func_800943C8(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeIndex]));

    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnAni_OverrideLimbDraw, EnAni_PostLimbDraw, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ani.c", 736);
}
