/*
 * File: z_en_heishi1.c
 * Overlay: ovl_En_Heishi1
 * Description: Courtyard Guards
 */

#include "z_en_heishi1.h"
#include "vt.h"

#define FLAGS 0x00000010

#define THIS ((EnHeishi1*)thisx)

void EnHeishi1_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi1_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi1_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi1_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnHeishi1_SetupWait(EnHeishi1* this, GlobalContext* globalCtx);
void EnHeishi1_SetupWalk(EnHeishi1* this, GlobalContext* globalCtx);
void EnHeishi1_SetupMoveToLink(EnHeishi1* this, GlobalContext* globalCtx);
void EnHeishi1_SetupTurnTowardLink(EnHeishi1* this, GlobalContext* globalCtx);
void EnHeishi1_SetupKick(EnHeishi1* this, GlobalContext* globalCtx);
void EnHeishi1_SetupWaitNight(EnHeishi1* this, GlobalContext* globalCtx);

void EnHeishi1_Wait(EnHeishi1* this, GlobalContext* globalCtx);
void EnHeishi1_Walk(EnHeishi1* this, GlobalContext* globalCtx);
void EnHeishi1_MoveToLink(EnHeishi1* this, GlobalContext* globalCtx);
void EnHeishi1_TurnTowardLink(EnHeishi1* this, GlobalContext* globalCtx);
void EnHeishi1_Kick(EnHeishi1* this, GlobalContext* globalCtx);
void EnHeishi1_WaitNight(EnHeishi1* this, GlobalContext* globalCtx);

static s32 sPlayerIsCaught = false;

const ActorInit En_Heishi1_InitVars = {
    0,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_SD,
    sizeof(EnHeishi1),
    (ActorFunc)EnHeishi1_Init,
    (ActorFunc)EnHeishi1_Destroy,
    (ActorFunc)EnHeishi1_Update,
    (ActorFunc)EnHeishi1_Draw,
};

static f32 sAnimParamsInit[][8] = {
    { 1.0f, -10.0f, 3.0f, 0.5f, 1000.0f, 200.0f, 0.3f, 1000.0f },
    { 3.0f, -3.0f, 6.0f, 0.8f, 2000.0f, 400.0f, 0.5f, 2000.0f },
    { 1.0f, -10.0f, 3.0f, 0.5f, 1000.0f, 200.0f, 0.3f, 1000.0f },
    { 3.0f, -3.0f, 6.0f, 0.8f, 2000.0f, 400.0f, 0.5f, 2000.0f },
};

static s16 sBaseHeadTimers[] = { 20, 10, 20, 10, 13, 0 };

static Vec3f sRupeePositions[] = {
    { 0.0f, 0.0f, 90.0f },  { -55.0f, 0.0f, 90.0f }, { -55.0f, 0.0f, 30.0f }, { -55.0f, 0.0f, -30.0f },
    { 0.0f, 0.0f, -30.0f }, { 55.0f, 0.0f, -30.0f }, { 55.0f, 0.0f, 30.0f },  { 55.0f, 0.0f, 90.0f },
};

static s32 sCamDataIdxs[] = {
    7, 7, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 4, 4, 5, 6,
};

static s16 sWaypoints[] = { 0, 4, 1, 5, 2, 6, 3, 7 };

extern AnimationHeader D_06005880;
extern AnimationHeader D_06005C30;
extern SkeletonHeader D_0600BAC8;

void EnHeishi1_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnHeishi1* this = THIS;
    Vec3f rupeePos;
    s32 i;
    u16 time;

    Actor_SetScale(&this->actor, 0.01f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_0600BAC8, &D_06005C30, this->limbDrawTable,
                   this->transitionDrawTable, 17);

    this->type = (this->actor.params >> 8) & 0xFF;
    this->path = this->actor.params & 0xFF;

    for (i = 0; i < ARRAY_COUNT(sAnimParamsInit[0]); i++) {
        this->animParams[i] = sAnimParamsInit[this->type][i];
    }

    // "type"
    osSyncPrintf(VT_FGCOL(GREEN) " 種類☆☆☆☆☆☆☆☆☆☆☆☆☆ %d\n" VT_RST, this->type);
    // "path data"
    osSyncPrintf(VT_FGCOL(YELLOW) " れえるでぇたぁ☆☆☆☆☆☆☆☆ %d\n" VT_RST, this->path);
    osSyncPrintf(VT_FGCOL(PURPLE) " anime_frame_speed ☆☆☆☆☆☆ %f\n" VT_RST, this->animSpeed);
    // "interpolation frame"
    osSyncPrintf(VT_FGCOL(PURPLE) " 補間フレーム☆☆☆☆☆☆☆☆☆ %f\n" VT_RST, this->transitionRate);
    // "targeted movement speed value between points"
    osSyncPrintf(VT_FGCOL(PURPLE) " point間の移動スピード目標値 ☆ %f\n" VT_RST, this->moveSpeedTarget);
    // "maximum movement speed value between points"
    osSyncPrintf(VT_FGCOL(PURPLE) " point間の移動スピード最大 ☆☆ %f\n" VT_RST, this->moveSpeedMax);
    // "(body) targeted turning angle speed value"
    osSyncPrintf(VT_FGCOL(PURPLE) " (体)反転アングルスピード目標値 %f\n" VT_RST, this->bodyTurnSpeedTarget);
    // "(body) maximum turning angle speed"
    osSyncPrintf(VT_FGCOL(PURPLE) " (体)反転アングルスピード最大☆ %f\n" VT_RST, this->bodyTurnSpeedMax);
    // "(head) targeted turning angle speed value"
    osSyncPrintf(VT_FGCOL(PURPLE) " (頭)反転アングルスピード加算値 %f\n" VT_RST, this->headTurnSpeedScale);
    // "(head) maximum turning angle speed"
    osSyncPrintf(VT_FGCOL(PURPLE) " (頭)反転アングルスピード最大☆ %f\n" VT_RST, this->headTurnSpeedMax);
    // "current time"
    // clang-format off
    time = gSaveContext.dayTime; osSyncPrintf(VT_FGCOL(GREEN) " 今時間 %d\n" VT_RST, time);
    // clang-format on
    // "check time"
    osSyncPrintf(VT_FGCOL(YELLOW) " チェック時間 %d\n" VT_RST, 0xBAAA);
    osSyncPrintf("\n\n");

    if (this->path == 3) {
        for (i = 0; i < ARRAY_COUNT(sRupeePositions); i++) {
            rupeePos = sRupeePositions[i];
            Actor_SpawnAsChild(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_EX_RUPPY, rupeePos.x, rupeePos.y,
                               rupeePos.z, 0, 0, 0, 3);
        }
    }

    if (this->type != 5) {
        if (((gSaveContext.dayTime < 0xB888) || (!gSaveContext.nightFlag)) && !(gSaveContext.eventChkInf[8] & 1)) {
            this->actionFunc = EnHeishi1_SetupWalk;
        } else {
            Actor_Kill(&this->actor);
        }
    } else {
        if ((gSaveContext.dayTime >= 0xB889) || (gSaveContext.nightFlag) || (gSaveContext.eventChkInf[8] & 1)) {
            this->actionFunc = EnHeishi1_SetupWaitNight;
        } else {
            Actor_Kill(&this->actor);
        }
    }
}

void EnHeishi1_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnHeishi1_SetupWalk(EnHeishi1* this, GlobalContext* globalCtx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06005880);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005880, this->animSpeed, 0.0f, (s16)frameCount, 0,
                         this->transitionRate);
    this->bodyTurnSpeed = 0.0f;
    this->moveSpeed = 0.0f;
    this->headDirection = Math_Rand_ZeroFloat(1.99f);
    this->actionFunc = EnHeishi1_Walk;
}

void EnHeishi1_Walk(EnHeishi1* this, GlobalContext* globalCtx) {
    Path* path;
    Vec3s* pointPos;
    f32 pathDiffX;
    f32 pathDiffZ;
    s16 randOffset;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (func_800A56C8(&this->skelAnime, 1.0f) || func_800A56C8(&this->skelAnime, 17.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_KNIGHT_WALK);
    }

    if (!sPlayerIsCaught) {
        path = &globalCtx->setupPathList[this->path];
        pointPos = SEGMENTED_TO_VIRTUAL(path->points);
        pointPos += this->waypoint;

        Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, pointPos->x, 1.0f, this->moveSpeed);
        Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, pointPos->z, 1.0f, this->moveSpeed);

        Math_SmoothScaleMaxF(&this->moveSpeed, this->moveSpeedTarget, 1.0f, this->moveSpeedMax);

        pathDiffX = pointPos->x - this->actor.posRot.pos.x;
        pathDiffZ = pointPos->z - this->actor.posRot.pos.z;
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, (Math_atan2f(pathDiffX, pathDiffZ) * 10430.378f), 3,
                                this->bodyTurnSpeed, 0);

        Math_SmoothScaleMaxF(&this->bodyTurnSpeed, this->bodyTurnSpeedTarget, 1.0f, this->bodyTurnSpeedMax);

        if (this->headTimer == 0) {
            this->headDirection++;
            this->headAngleTarget = 0x2000;
            // if headDirection is odd, face 45 degrees left
            if ((this->headDirection & 1) != 0) {
                this->headAngleTarget *= -1;
            }
            randOffset = Math_Rand_ZeroFloat(30.0f);
            this->headTimer = sBaseHeadTimers[this->type] + randOffset;
        }

        Math_SmoothScaleMaxF(&this->headAngle, this->headAngleTarget, this->headTurnSpeedScale, this->headTurnSpeedMax);

        if ((this->path == BREG(1)) && (BREG(0) != 0)) {
            osSyncPrintf(VT_FGCOL(RED) " 種類  %d\n" VT_RST, this->path);
            osSyncPrintf(VT_FGCOL(RED) " ぱす  %d\n" VT_RST, this->waypoint);
            osSyncPrintf(VT_FGCOL(RED) " 反転  %d\n" VT_RST, this->bodyTurnSpeed);
            osSyncPrintf(VT_FGCOL(RED) " 時間  %d\n" VT_RST, this->waypointTimer);
            osSyncPrintf(VT_FGCOL(RED) " 点座  %d\n" VT_RST, path->count);
            osSyncPrintf("\n\n");
        }

        // when 20 units away from a middle waypoint, decide whether or not to skip it
        if ((fabsf(pathDiffX) < 20.0f) && (fabsf(pathDiffZ) < 20.0f)) {
            if (this->waypointTimer == 0) {
                if (this->type >= 2) {
                    if ((this->waypoint >= 4) && (Math_Rand_ZeroFloat(1.99f) > 1.0f)) {
                        if (this->waypoint == 7) {
                            this->waypoint = 0;
                        }
                        if (this->waypoint >= 4) {
                            this->waypoint -= 3;
                        }
                        this->waypointTimer = 5;
                        return;
                    }
                }
                this->actionFunc = EnHeishi1_SetupWait;
            }
        }
    }
}

void EnHeishi1_SetupMoveToLink(EnHeishi1* this, GlobalContext* globalCtx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06005880);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005880, 3.0f, 0.0f, (s16)frameCount, 0, -3.0f);
    this->bodyTurnSpeed = 0.0f;
    this->moveSpeed = 0.0f;
    func_8010B680(globalCtx, 0x702D, &this->actor);
    Interface_SetDoAction(globalCtx, 0x12);
    this->actionFunc = EnHeishi1_MoveToLink;
}

void EnHeishi1_MoveToLink(EnHeishi1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, player->actor.posRot.pos.x, 1.0f, this->moveSpeed);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, player->actor.posRot.pos.z, 1.0f, this->moveSpeed);
    Math_SmoothScaleMaxF(&this->moveSpeed, 6.0f, 1.0f, 0.4f);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, this->bodyTurnSpeed, 0);
    Math_SmoothScaleMaxF(&this->bodyTurnSpeed, 3000.0f, 1.0f, 300.0f);
    Math_SmoothDownscaleMaxF(&this->headAngle, 0.5f, 2000.0f);

    if (this->actor.xzDistFromLink < 70.0f) {
        this->actionFunc = EnHeishi1_SetupTurnTowardLink;
    }
}

void EnHeishi1_SetupWait(EnHeishi1* this, GlobalContext* globalCtx) {
    s16 rand;
    f32 frameCount = SkelAnime_GetFrameCount(&D_06005C30);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, this->animSpeed, 0.0f, (s16)frameCount, 0,
                         this->transitionRate);
    this->headBehaviorDecided = false;
    this->headDirection = Math_Rand_ZeroFloat(1.99f);
    rand = Math_Rand_ZeroFloat(50.0f);
    this->waitTimer = rand + 50;
    this->actionFunc = EnHeishi1_Wait;
}

void EnHeishi1_Wait(EnHeishi1* this, GlobalContext* globalCtx) {
    s16 randOffset;
    s32 i;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (!sPlayerIsCaught) {
        switch (this->headBehaviorDecided) {
            case false:
                this->headDirection++;
                // if headDirection is odd, face 52 degrees left
                this->headAngleTarget = (this->headDirection & 1) ? 0x2500 : -0x2500;
                randOffset = Math_Rand_ZeroFloat(30.0f);
                this->headTimer = sBaseHeadTimers[this->type] + randOffset;
                this->headBehaviorDecided = true;
                break;
            case true:
                if (this->headTimer == 0) {
                    if (this->waitTimer == 0) {
                        if ((this->type == 0) || (this->type == 1)) {
                            this->waypoint++;
                            if (this->waypoint >= 4) {
                                this->waypoint = 0;
                            }
                        } else {
                            // waypoints are defined with corners as 0-3 and middle points as 4-7
                            // to choose the next waypoint, the order "04152637" is hardcoded in an array
                            for (i = 0; i < ARRAY_COUNT(sWaypoints); i++) {
                                if (this->waypoint == sWaypoints[i]) {
                                    i++;
                                    if (i >= ARRAY_COUNT(sWaypoints)) {
                                        i = 0;
                                    }
                                    this->waypoint = sWaypoints[i];
                                    break;
                                }
                            }
                            this->waypointTimer = 5;
                        }
                        this->actionFunc = EnHeishi1_SetupWalk;
                    } else {
                        this->headBehaviorDecided = false;
                    }
                }
                break;
        }
        Math_SmoothScaleMaxF(&this->headAngle, this->headAngleTarget, this->headTurnSpeedScale,
                             this->headTurnSpeedMax + this->headTurnSpeedMax);

        if ((this->path == BREG(1)) && (BREG(0) != 0)) {
            osSyncPrintf(VT_FGCOL(GREEN) " 種類  %d\n" VT_RST, this->path);
            osSyncPrintf(VT_FGCOL(GREEN) " ぱす  %d\n" VT_RST, this->waypoint);
            osSyncPrintf(VT_FGCOL(GREEN) " 反転  %d\n" VT_RST, this->bodyTurnSpeed);
            osSyncPrintf(VT_FGCOL(GREEN) " 時間  %d\n" VT_RST, this->waypointTimer);
            osSyncPrintf("\n\n");
        }
    }
}

void EnHeishi1_SetupTurnTowardLink(EnHeishi1* this, GlobalContext* globalCtx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06005C30);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, (s16)frameCount, 0, -10.0f);
    this->kickTimer = 30;
    this->actionFunc = EnHeishi1_TurnTowardLink;
}

void EnHeishi1_TurnTowardLink(EnHeishi1* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (this->type != 5) {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, this->bodyTurnSpeed, 0);
        Math_SmoothScaleMaxF(&this->bodyTurnSpeed, 3000.0f, 1.0f, 300.0f);
        Math_SmoothDownscaleMaxF(&this->headAngle, 0.5f, 2000.0f);
    }

    if (this->kickTimer == 0) {
        this->actionFunc = EnHeishi1_SetupKick;
    }
}

void EnHeishi1_SetupKick(EnHeishi1* this, GlobalContext* globalCtx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06005C30);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, (s16)frameCount, 0, -10.0f);
    this->actionFunc = EnHeishi1_Kick;
}

void EnHeishi1_Kick(EnHeishi1* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (!this->loadStarted) {
        // if dialog state is 5 and textbox has been advanced, kick player out
        if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx))) {
            func_80106CCC(globalCtx);
            if (!this->loadStarted) {
                gSaveContext.eventChkInf[4] |= 0x4000;
                globalCtx->nextEntranceIndex = 0x4FA;
                globalCtx->sceneLoadFlag = 0x14;
                this->loadStarted = true;
                sPlayerIsCaught = false;
                globalCtx->fadeTransition = 0x2E;
                gSaveContext.nextTransition = 0x2E;
            }
        }
    }
}

void EnHeishi1_SetupWaitNight(EnHeishi1* this, GlobalContext* globalCtx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06005C30);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, (s16)frameCount, 0, -10.0f);
    this->actionFunc = EnHeishi1_WaitNight;
}

void EnHeishi1_WaitNight(EnHeishi1* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (this->actor.xzDistFromLink < 100.0f) {
        func_8010B680(globalCtx, 0x702D, &this->actor);
        func_80078884(NA_SE_SY_FOUND);
        // "Discovered!"
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発見！ ☆☆☆☆☆ \n" VT_RST);
        func_8002DF54(globalCtx, &this->actor, 1);
        this->actionFunc = EnHeishi1_SetupKick;
    }
}

void EnHeishi1_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnHeishi1* this = THIS;
    s16 path;
    u8 i;
    s32 pad;
    Player* player = PLAYER;
    s32 pad2;
    Camera* activeCam;

    this->activeTimer++;

    for (i = 0; i < ARRAY_COUNT(this->timers); i++) {
        if (this->timers[i] != 0) {
            this->timers[i]--;
        }
    }

    if (this->waypointTimer != 0) {
        this->waypointTimer--;
    }

    activeCam = ACTIVE_CAM;

    if (player->actor.freezeTimer == 0) {

        this->actionFunc(this, globalCtx);

        this->actor.uncullZoneForward = 550.0f;
        this->actor.uncullZoneScale = 350.0f;
        this->actor.uncullZoneDownward = 700.0f;

        if (this->type != 5) {
            path = this->path * 2;
            if ((sCamDataIdxs[path] == activeCam->camDataIdx) || (sCamDataIdxs[path + 1] == activeCam->camDataIdx)) {
                if (!sPlayerIsCaught) {
                    if ((this->actionFunc == EnHeishi1_Walk) || (this->actionFunc == EnHeishi1_Wait)) {
                        Vec3f searchBallVel;
                        Vec3f searchBallAccel = { 0.0f, 0.0f, 0.0f };
                        Vec3f searchBallMult = { 0.0f, 0.0f, 20.0f };
                        Vec3f searchBallPos;

                        searchBallPos.x = this->actor.posRot.pos.x;
                        searchBallPos.y = this->actor.posRot.pos.y + 60.0f;
                        searchBallPos.z = this->actor.posRot.pos.z;

                        Matrix_Push();
                        Matrix_RotateY(((this->actor.shape.rot.y + this->headAngle) / 32768.0f) * M_PI, 0);
                        searchBallMult.z = 30.0f;
                        Matrix_MultVec3f(&searchBallMult, &searchBallVel);
                        Matrix_Pull();

                        EffectSsSolderSrchBall_Spawn(globalCtx, &searchBallPos, &searchBallVel, &searchBallAccel, 2,
                                                     &this->linkDetected);

                        if (this->actor.xzDistFromLink < 60.0f) {
                            this->linkDetected = true;
                        } else if (this->actor.xzDistFromLink < 70.0f) {
                            // this case probably exists to detect link making a jump sound
                            // from slightly further away than the previous 60 unit check
                            if (player->actor.velocity.y > -4.0f) {
                                this->linkDetected = true;
                            }
                        }

                        if (this->linkDetected) {
                            // ! @bug This appears to be a check to make sure that link is standing on the ground
                            // before getting caught. However this is an issue for two reasons:
                            // 1: When doing a backflip or falling from the upper path, links y velocity will reach
                            // less than -4.0 before even touching the ground.
                            // 2: There is one frame when landing from a sidehop where you can sidehop again without
                            // letting y velocity reach -4.0 or less. This enables the player to do frame perfect
                            // sidehops onto the next screen and prevent getting caught.
                            if (!(player->actor.velocity.y > -3.9f)) {
                                this->linkDetected = false;
                                // this 60 unit height check is so the player doesnt get caught when on the upper path
                                if (fabsf(player->actor.posRot.pos.y - this->actor.posRot.pos.y) < 60.0f) {
                                    func_80078884(NA_SE_SY_FOUND);
                                    // "Discovered!"
                                    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発見！ ☆☆☆☆☆ \n" VT_RST);
                                    func_8002DF54(globalCtx, &this->actor, 1);
                                    sPlayerIsCaught = true;
                                    this->actionFunc = EnHeishi1_SetupMoveToLink;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

s32 EnHeishi1_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                               void* thisx) {
    EnHeishi1* this = THIS;

    // turn the guards head to match the direction he is looking
    if (limbIndex == 16) {
        rot->x += (s16)this->headAngle;
    }

    return 0;
}

void EnHeishi1_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnHeishi1* this = THIS;
    Vec3f matrixScale = { 0.3f, 0.3f, 0.3f };

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, EnHeishi1_OverrideLimbDraw,
                      NULL, this);
    func_80033C30(&this->actor.posRot.pos, &matrixScale, 0xFF, globalCtx);

    if ((this->path == BREG(1)) && (BREG(0) != 0)) {
        DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y + 100.0f, this->actor.posRot.pos.z,
                               17000, this->actor.posRot.rot.y, this->actor.posRot.rot.z, 1.0f, 1.0f, 1.0f, 255, 0, 0,
                               255, 4, globalCtx->state.gfxCtx);
    }
}
