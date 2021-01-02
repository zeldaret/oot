/*
 * File: z_en_ge3.c
 * Overlay: ovl_En_Ge3
 * Description: Gerudo giving you membership card
 */

#include "z_en_ge3.h"

#define FLAGS 0x00000019

#define THIS ((EnGe3*)thisx)

typedef enum {
    /* 00 */ GELDB_LIMB_NONE,
    /* 01 */ GELDB_LIMB_ROOT,
    /* 02 */ GELDB_LIMB_TORSO,
    /* 03 */ GELDB_LIMB_NECK,
    /* 04 */ GELDB_LIMB_PONYTAIL,
    /* 05 */ GELDB_LIMB_VEIL,
    /* 06 */ GELDB_LIMB_HEAD,
    /* 07 */ GELDB_LIMB_RIGHT_UPPER_ARM,
    /* 08 */ GELDB_LIMB_RIGHT_FOREARM,
    /* 09 */ GELDB_LIMB_RIGHT_WRIST,
    /* 10 */ GELDB_LIMB_RIGHT_HAND,
    /* 11 */ GELDB_LIMB_RIGHT_SWORD,
    /* 12 */ GELDB_LIMB_LEFT_UPPER_ARM,
    /* 13 */ GELDB_LIMB_LEFT_FOREARM,
    /* 14 */ GELDB_LIMB_LEFT_WRIST,
    /* 15 */ GELDB_LIMB_LEFT_HAND,
    /* 16 */ GELDB_LIMB_LEFT_SWORD,
    /* 17 */ GELDB_LIMB_LEFT_THIGH,
    /* 18 */ GELDB_LIMB_LEFT_LOWER_LEG,
    /* 19 */ GELDB_LIMB_LEFT_FOOT,
    /* 20 */ GELDB_LIMB_RIGHT_THIGH,
    /* 21 */ GELDB_LIMB_RIGHT_LOWER_LEG,
    /* 22 */ GELDB_LIMB_RIGHT_FOOT,
    /* 23 */ GELDB_LIMB_HIPS
} EnGeldBJoints;

void EnGe3_Init(Actor* thisx, GlobalContext* globalCtx);
void EnGe3_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnGe3_Update(Actor* thisx, GlobalContext* globalCtx);
void EnGe3_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnGe3_WaitLookAtPlayer(EnGe3* this, GlobalContext* globalCtx);
void EnGe3_ForceTalk(EnGe3* this, GlobalContext* globalCtx);
void EnGe3_UpdateWhenNotTalking(Actor* thisx, GlobalContext* globalCtx);

const ActorInit En_Ge3_InitVars = {
    ACTOR_EN_GE3,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_GELDB,
    sizeof(EnGe3),
    (ActorFunc)EnGe3_Init,
    (ActorFunc)EnGe3_Destroy,
    (ActorFunc)EnGe3_Update,
    (ActorFunc)EnGe3_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x10, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000722, 0x00, 0x00 }, 0x00, 0x01, 0x01 },
    { 20, 50, 0, { 0, 0, 0 } },
};

extern FlexSkeletonHeader D_0600A458; // Same as GeldB
extern AnimationHeader D_0600B07C; // Idle with right hand on hip and left over mouth

void EnGe3_ChangeAction(EnGe3* this, s32 i) {
    static EnGe3ActionFunc sActionFunc[] = { EnGe3_WaitLookAtPlayer };
    static AnimationHeader* sAnimationHeader[] = { 0x0600B07C }; // Idle with right hand on hip and left over mouth
    static u8 sAnimationMode[] = { ANIMMODE_LOOP };

    this->actionFunc = sActionFunc[i];
    Animation_Change(&this->skelAnime, sAnimationHeader[i], 1.0f, 0.0f,
                     (f32)Animation_GetLastFrame(sAnimationHeader[i]), sAnimationMode[i], -8.0f);
    this->unk_30C &= ~2;
}

void EnGe3_Init(Actor* thisx, GlobalContext* globalCtx2) {
    EnGe3* this = THIS;
    GlobalContext* globalCtx = globalCtx2;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 36.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600A458, NULL, this->jointTable, this->morphTable, 24);
    Animation_PlayLoop(&this->skelAnime, &D_0600B07C);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    this->actor.colChkInfo.mass = 0xFF;
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.posRot.rot.z = 0;
    this->actor.shape.rot.z = 0;
    EnGe3_ChangeAction(this, 0);
    this->actionFunc = EnGe3_ForceTalk;
    this->unk_30C = 0;
    this->actor.unk_1F = 6;
    this->actor.minVelocityY = -4.0f;
    this->actor.gravity = -1.0f;
}

void EnGe3_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnGe3* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnGe3_TurnToFacePlayer(EnGe3* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 angleDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;

    if (ABS(angleDiff) <= 0x4000) {
        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 6, 4000, 100);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
        func_80038290(globalCtx, &this->actor, &this->headRot, &this->unk_306, this->actor.posRot2.pos);
    } else {
        if (angleDiff < 0) {
            Math_SmoothStepToS(&this->headRot.y, -0x2000, 6, 6200, 0x100);
        } else {
            Math_SmoothStepToS(&this->headRot.y, 0x2000, 6, 6200, 0x100);
        }

        Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 12, 1000, 100);
        this->actor.posRot.rot.y = this->actor.shape.rot.y;
    }
}

void EnGe3_LookAtPlayer(EnGe3* this, GlobalContext* globalCtx) {
    if ((ABS((s16)(this->actor.yawTowardsLink - this->actor.shape.rot.y)) <= 0x2300) &&
        (this->actor.xzDistToLink < 100.0f)) {
        func_80038290(globalCtx, &this->actor, &this->headRot, &this->unk_306, this->actor.posRot2.pos);
    } else {
        Math_SmoothStepToS(&this->headRot.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->headRot.y, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_306.x, 0, 6, 6200, 100);
        Math_SmoothStepToS(&this->unk_306.y, 0, 6, 6200, 100);
    }
}

void EnGe3_Wait(EnGe3* this, GlobalContext* globalCtx) {
    if (func_8002F334(&this->actor, globalCtx)) {
        this->actionFunc = EnGe3_WaitLookAtPlayer;
        this->actor.update = EnGe3_UpdateWhenNotTalking;
        this->actor.flags &= ~0x10000;
    }
    EnGe3_TurnToFacePlayer(this, globalCtx);
}

void EnGe3_WaitLookAtPlayer(EnGe3* this, GlobalContext* globalCtx) {
    EnGe3_LookAtPlayer(this, globalCtx);
}

void EnGe3_WaitTillCardGiven(EnGe3* this, GlobalContext* globalCtx) {
    if (Actor_HasParent(&this->actor, globalCtx)) {
        this->actor.parent = NULL;
        this->actionFunc = EnGe3_Wait;
    } else {
        func_8002F434(&this->actor, globalCtx, GI_GERUDO_CARD, 10000.0f, 50.0f);
    }
}

void EnGe3_GiveCard(EnGe3* this, GlobalContext* globalCtx) {
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
        func_80106CCC(globalCtx);
        this->actor.flags &= ~0x10000;
        this->actionFunc = EnGe3_WaitTillCardGiven;
        func_8002F434(&this->actor, globalCtx, GI_GERUDO_CARD, 10000.0f, 50.0f);
    }
}

void EnGe3_ForceTalk(EnGe3* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = EnGe3_GiveCard;
    } else {
        if (!(this->unk_30C & 4)) {
            func_8002DF54(globalCtx, &this->actor, 7);
            this->unk_30C |= 4;
        }
        this->actor.textId = 0x6004;
        this->actor.flags |= 0x10000;
        func_8002F1C4(&this->actor, globalCtx, 300.0f, 300.0f, 0);
    }
    EnGe3_LookAtPlayer(this, globalCtx);
}

void EnGe3_MaintainCollider(EnGe3* this, GlobalContext* globalCtx) {
    s32 pad;
    s32 pad2;

    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    func_8002E4B4(globalCtx, &this->actor, 40.0f, 25.0f, 40.0f, 5);

    if (!(this->unk_30C & 2) && SkelAnime_Update(&this->skelAnime)) {
        this->unk_30C |= 2;
    }
}

void EnGe3_MoveAndBlink(EnGe3* this, GlobalContext* globalCtx) {

    Actor_MoveForward(&this->actor);

    if (DECR(this->blinkTimer) == 0) {
        this->blinkTimer = Rand_S16Offset(60, 60);
    }
    this->eyeIndex = this->blinkTimer;

    if (this->eyeIndex >= 3) {
        this->eyeIndex = 0;
    }
}

void EnGe3_UpdateWhenNotTalking(Actor* thisx, GlobalContext* globalCtx) {
    EnGe3* this = THIS;

    EnGe3_MaintainCollider(this, globalCtx);
    this->actionFunc(this, globalCtx);

    if (func_8002F194(&this->actor, globalCtx)) {
        this->actionFunc = EnGe3_Wait;
        this->actor.update = EnGe3_Update;
    } else {
        this->actor.textId = 0x6005;
        if (this->actor.xzDistToLink < 100.0f) {
            func_8002F2CC(&this->actor, globalCtx, 100.0f);
        }
    }

    EnGe3_MoveAndBlink(this, globalCtx);
}

void EnGe3_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnGe3* this = THIS;

    EnGe3_MaintainCollider(this, globalCtx);
    this->actionFunc(this, globalCtx);
    EnGe3_MoveAndBlink(this, globalCtx);
}

s32 EnGe3_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnGe3* this = THIS;

    switch (limbIndex) {
        // Hide swords and veil from object_geldb
        case GELDB_LIMB_VEIL:
        case GELDB_LIMB_RIGHT_SWORD:
        case GELDB_LIMB_LEFT_SWORD:
            *dList = NULL;
            return false;
        // Turn head
        case GELDB_LIMB_HEAD:
            rot->x += this->headRot.y;

        // This is a hack to fix the color-changing clothes this Gerudo has on N64 versions
        default:
            OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ge3.c", 547);
            switch (limbIndex) {
                case GELDB_LIMB_NECK:
                    break;
                case GELDB_LIMB_HEAD:
                    gDPPipeSync(POLY_OPA_DISP++);
                    gDPSetEnvColor(POLY_OPA_DISP++, 80, 60, 10, 255);
                    break;
                case GELDB_LIMB_RIGHT_SWORD:
                case GELDB_LIMB_LEFT_SWORD:
                    gDPPipeSync(POLY_OPA_DISP++);
                    gDPSetEnvColor(POLY_OPA_DISP++, 140, 170, 230, 255);
                    gDPSetPrimColor(POLY_OPA_DISP++, 0, 0, 255, 255, 255, 255);
                    break;
                default:
                    gDPPipeSync(POLY_OPA_DISP++);
                    gDPSetEnvColor(POLY_OPA_DISP++, 140, 0, 0, 255);
                    break;
            }
            CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ge3.c", 566);
            break;
    }
    return false;
}

void EnGe3_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnGe3* this = THIS;
    Vec3f D_80A351C8 = { 600.0f, 700.0f, 0.0f };

    if (limbIndex == GELDB_LIMB_HEAD) {
        Matrix_MultVec3f(&D_80A351C8, &this->actor.posRot2.pos);
    }
}

void EnGe3_Draw(Actor* thisx, GlobalContext* globalCtx2) {
    static u64* sEyeTextures[] = {
        0x06005FE8, // Half-open
        0x060065A8, // Quarter-open
        0x06006D28, // Closed
    };
    EnGe3* this = THIS;
    GlobalContext* globalCtx = globalCtx2;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ge3.c", 614);
    func_800943C8(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sEyeTextures[this->eyeIndex]));
    func_8002EBCC(&this->actor, globalCtx, 0);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnGe3_OverrideLimbDraw, EnGe3_PostLimbDraw, this);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ge3.c", 631);
}
