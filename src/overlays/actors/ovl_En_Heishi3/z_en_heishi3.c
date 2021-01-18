/*
 * File: z_en_heishi3.c
 * Overlay: ovl_En_Heishi3
 * Description: Hyrule Castle Guard
 */

#include "z_en_heishi3.h"
#include "vt.h"

#define FLAGS 0x00000000

#define THIS ((EnHeishi3*)thisx)

void EnHeishi3_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi3_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi3_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi3_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnHeishi3_SetupGuardType(EnHeishi3* this, GlobalContext* globalCtx);
void EnHeishi3_StandSentinelInGrounds(EnHeishi3* this, GlobalContext* globalCtx);
void EnHeishi3_StandSentinelInCastle(EnHeishi3* this, GlobalContext* globalCtx);
void EnHeishi3_CatchStart(EnHeishi3* this, GlobalContext* globalCtx);
void EnHeishi3_ResetAnimationToIdle(EnHeishi3* this, GlobalContext* globalCtx);
void func_80A55D00(EnHeishi3* this, GlobalContext* globalCtx);
void func_80A55BD4(EnHeishi3* this, GlobalContext* globalCtx);

extern SkeletonHeader D_0600BAC8;
extern AnimationHeader D_06005C30; // EnHeishi3_IdleAnimation
extern AnimationHeader D_06005880; // EnHeishi3_WalkAnimation

static s16 sPlayerCaught = 0;

const ActorInit En_Heishi3_InitVars = {
    ACTOR_EN_HEISHI3,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_SD,
    sizeof(EnHeishi3),
    (ActorFunc)EnHeishi3_Init,
    (ActorFunc)EnHeishi3_Destroy,
    (ActorFunc)EnHeishi3_Update,
    (ActorFunc)EnHeishi3_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 15, 70, 0, { 0, 0, 0 } },
};

void EnHeishi3_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnHeishi3* this = THIS;

    sPlayerCaught = 0;
    if (this->actor.params <= 0) {
        this->unk_278 = 0;
    } else {
        this->unk_278 = 1;
        if (this->actor.posRot.pos.x < -290.0f) {
            this->unk_278 = 2;
        }
    }
    Actor_SetScale(&this->actor, 0.01f);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_0600BAC8, &D_06005C30, this->jointTable, this->morphTable, 17);
    this->actor.colChkInfo.mass = MASS_IMMOVABLE;
    this->actor.unk_1F = 6;
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    // "Castle Gate Soldier - Power Up"
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 城門兵パワーアップ ☆☆☆☆☆ \n" VT_RST);

    this->actor.gravity = -3.0f;
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actionFunc = EnHeishi3_SetupGuardType;
}

void EnHeishi3_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnHeishi3* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void EnHeishi3_SetupGuardType(EnHeishi3* this, GlobalContext* globalCtx) {
    f32 frameCount = Animation_GetLastFrame(&D_06005C30);

    Animation_Change(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, (s16)frameCount, ANIMMODE_LOOP, -10.0f);
    if (this->unk_278 == 0) {
        this->actionFunc = EnHeishi3_StandSentinelInGrounds;
    } else {
        this->actionFunc = EnHeishi3_StandSentinelInCastle;
    }
}

/**
 * Handles the guards standing on Hyrule Castle Grounds.
 **/
void EnHeishi3_StandSentinelInGrounds(EnHeishi3* this, GlobalContext* globalCtx) {
    Player* player;
    s16 yawDiff;
    s16 yawDiffNew;
    f32 sightRange;

    player = PLAYER;
    SkelAnime_Update(&this->skelAnime);
    yawDiff = this->actor.yawTowardsLink - this->actor.shape.rot.y;
    yawDiffNew = ABS(yawDiff);
    if (yawDiffNew < 0x4300) {
        if (gSaveContext.nightFlag == 0) {
            sightRange = 250.0f;
        } else {
            sightRange = 200.0f;
        }
    } else {
        if (gSaveContext.nightFlag == 0) {
            sightRange = 150.0f;
        } else {
            sightRange = 100.0f;
        }
    }
    if ((this->actor.xzDistToLink < sightRange) &&
        (fabsf(player->actor.posRot.pos.y - this->actor.posRot.pos.y) < 100.0f) && (sPlayerCaught == 0)) {
        sPlayerCaught = 1;
        func_8010B680(globalCtx, 0x702D, &this->actor); // "Hey you! Stop! You, kid, over there!"
        func_80078884(NA_SE_SY_FOUND);
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発見！ ☆☆☆☆☆ \n" VT_RST); // "Discovered!"
        func_8002DF54(globalCtx, &this->actor, 1);
        this->actionFunc = EnHeishi3_CatchStart;
    }
}

/**
 * Handles the guards standing in front of Hyrule Castle.
 **/
void EnHeishi3_StandSentinelInCastle(EnHeishi3* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    SkelAnime_Update(&this->skelAnime);
    if ((player->actor.posRot.pos.x < -190.0f) && (player->actor.posRot.pos.x > -380.0f) &&
        (fabsf(player->actor.posRot.pos.y - this->actor.posRot.pos.y) < 100.0f) &&
        (player->actor.posRot.pos.z < 1020.0f) && (player->actor.posRot.pos.z > 700.0f) && (sPlayerCaught == 0)) {
        if (this->unk_278 == 1) {
            if ((player->actor.posRot.pos.x < -290.0f)) {
                return;
            }
        } else {
            if (player->actor.posRot.pos.x > -290.0f) {
                return;
            }
        }
        sPlayerCaught = 1;
        func_8010B680(globalCtx, 0x702D, &this->actor); // "Hey you! Stop! You, kid, over there!"
        func_80078884(NA_SE_SY_FOUND);
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発見！ ☆☆☆☆☆ \n" VT_RST); // "Discovered!"
        func_8002DF54(globalCtx, &this->actor, 1);
        this->actionFunc = EnHeishi3_CatchStart;
    }
}

void EnHeishi3_CatchStart(EnHeishi3* this, GlobalContext* globalCtx) {
    f32 frameCount = Animation_GetLastFrame(&D_06005880);

    Animation_Change(&this->skelAnime, &D_06005880, 1.0f, 0.0f, (s16)frameCount, ANIMMODE_LOOP, -10.0f);
    this->caughtTimer = 20;
    this->actionFunc = func_80A55BD4;
    this->actor.speedXZ = 2.5f;
}

void func_80A55BD4(EnHeishi3* this, GlobalContext* globalCtx) {

    SkelAnime_Update(&this->skelAnime);
    if ((Animation_OnFrame(&this->skelAnime, 1.0f) != 0) || (Animation_OnFrame(&this->skelAnime, 17.0f) != 0)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_KNIGHT_WALK);
    }
    if (this->caughtTimer == 0) {
        this->actionFunc = EnHeishi3_ResetAnimationToIdle;
        this->actor.speedXZ = 0.0f;
    } else {
        Math_SmoothStepToS(&this->actor.posRot.rot.y, this->actor.yawTowardsLink, 5, 3000, 0);
    }
}

void EnHeishi3_ResetAnimationToIdle(EnHeishi3* this, GlobalContext* globalCtx) {
    f32 frameCount = Animation_GetLastFrame(&D_06005C30);

    Animation_Change(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, (s16)frameCount, ANIMMODE_LOOP, -10.0f);
    this->actionFunc = func_80A55D00;
}

// This function initiates the respawn after the player gets caught.
void func_80A55D00(EnHeishi3* this, GlobalContext* globalCtx) {
    SkelAnime_Update(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0) && (this->respawnFlag == 0)) {
        gSaveContext.eventChkInf[4] |= 0x4000;
        globalCtx->nextEntranceIndex = 0x47E; // Hyrule Castle from Guard Capture (outside)
        globalCtx->sceneLoadFlag = 0x14;
        this->respawnFlag = 1;
        globalCtx->fadeTransition = 0x2E;
        gSaveContext.nextTransition = 0x2E;
    }
}

void EnHeishi3_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnHeishi3* this = THIS;
    s32 pad;

    Actor_SetHeight(&this->actor, 60.0f);
    this->unk_274 += 1;
    if (this->caughtTimer != 0) {
        this->caughtTimer -= 1;
    }
    this->actionFunc(this, globalCtx);
    this->actor.shape.rot = this->actor.posRot.rot;
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 20.0f, 20.0f, 50.0f, 0x1C);
    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

s32 EnHeishi3_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                               void* thisx) {
    EnHeishi3* this = THIS;

    if (limbIndex == 9) {
        rot->x += this->unk_26E;
    }

    if (limbIndex == 16) {
        rot->x += this->unk_262;
        rot->z += this->unk_264;
    }

    return false;
}

void EnHeishi3_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnHeishi3* this = THIS;

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, EnHeishi3_OverrideLimbDraw, NULL,
                      this);
}
