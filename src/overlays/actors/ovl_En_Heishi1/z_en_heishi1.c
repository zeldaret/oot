#include "z_en_heishi1.h"
#include <vt.h>

#define FLAGS 0x00000010

#define THIS ((EnHeishi1*)thisx)

void EnHeishi1_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi1_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi1_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi1_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80A5162C(EnHeishi1* this, GlobalContext* globalCtx);
void func_80A516E4(EnHeishi1* this, GlobalContext* globalCtx);
void func_80A51D18(EnHeishi1* this, GlobalContext* globalCtx);

void func_80A521FC(EnHeishi1* this, GlobalContext* globalCtx);
void func_80A52290(EnHeishi1* this, GlobalContext* globalCtx);
void func_80A51C4C(EnHeishi1* this, GlobalContext* globalCtx);
void func_80A51D18(EnHeishi1* this, GlobalContext* globalCtx);

void func_80A51A98(EnHeishi1* this, GlobalContext* globalCtx); // catch
void func_80A51B54(EnHeishi1* this, GlobalContext* globalCtx);
void func_80A51F50(EnHeishi1* this, GlobalContext* globalCtx);
void func_80A51FEC(EnHeishi1* this, GlobalContext* globalCtx);
void func_80A52098(EnHeishi1* this, GlobalContext* globalCtx);
void func_80A5212C(EnHeishi1* this, GlobalContext* globalCtx);

s32 sIsCaught = 0;

const ActorInit En_Heishi1_InitVars = {
    ACTOR_PLAYER,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_SD,
    sizeof(EnHeishi1),
    (ActorFunc)EnHeishi1_Init,
    (ActorFunc)EnHeishi1_Destroy,
    (ActorFunc)EnHeishi1_Update,
    (ActorFunc)EnHeishi1_Draw,
};

f32 D_80A527C4[][8] = {
    { 1.0f, -10.0f, 3.0f, 0.5f, 1000.0f, 200.0f, 0.3f, 1000.0f },
    { 3.0f, -3.0f, 6.0f, 0.8f, 2000.0f, 400.0f, 0.5f, 2000.0f },
    { 1.0f, -10.0f, 3.0f, 0.5f, 1000.0f, 200.0f, 0.3f, 1000.0f },
    { 3.0f, -3.0f, 6.0f, 0.8f, 2000.0f, 400.0f, 0.5f, 2000.0f },
};

s16 sHeadTimers[] = { 20, 10, 20, 10, 13, 0 };

Vec3f D_80A52850[] = {
    { 0.0f, 0.0f, 90.0f },  { -55.0f, 0.0f, 90.0f }, { -55.0f, 0.0f, 30.0f }, { -55.0f, 0.0f, -30.0f },
    { 0.0f, 0.0f, -30.0f }, { 55.0f, 0.0f, -30.0f }, { 55.0f, 0.0f, 30.0f },  { 55.0f, 0.0f, 90.0f },
};

s32 D_80A528B0[] = {
    7, 7, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 4, 4, 5, 6,
};

s16 D_80A528F0[] = { 0, 4, 1, 5, 2, 6, 3, 7 };

Vec3f sSearchBallAccel = { 0.0f, 0.0f, 0.0f };

Vec3f sSearchBallMult = { 0.0f, 0.0f, 20.0f };

Vec3f D_80A52918 = { 0.3f, 0.3f, 0.3f };

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
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_0600BAC8, &D_06005C30, &this->limbDrawTable,
                   &this->transitionDrawTable, 17);

    this->type = (this->actor.params >> 8) & 0xFF;
    this->path = this->actor.params & 0xFF;

    for (i = 0; i < ARRAY_COUNT(D_80A527C4[0]); i++) {
        this->animParams[i] = D_80A527C4[this->type][i];
    }

    // "type"
    osSyncPrintf(VT_FGCOL(GREEN) " 種類☆☆☆☆☆☆☆☆☆☆☆☆☆ %d\n" VT_RST, this->type);
    // "path data"
    osSyncPrintf(VT_FGCOL(YELLOW) " れえるでぇたぁ☆☆☆☆☆☆☆☆ %d\n" VT_RST, this->path);
    osSyncPrintf(VT_FGCOL(PURPLE) " anime_frame_speed ☆☆☆☆☆☆ %f\n" VT_RST, this->animSpeed);
    // "transitionRate frames"
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
    osSyncPrintf(VT_FGCOL(PURPLE) " (頭)反転アングルスピード加算値 %f\n" VT_RST, this->headTurnSpeedTarget);
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
        for (i = 0; i < ARRAY_COUNT(D_80A52850); i++) {
            rupeePos = D_80A52850[i];
            Actor_SpawnAttached(&globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_EX_RUPPY, rupeePos.x,
                                rupeePos.y, rupeePos.z, 0, 0, 0, 3);
        }
    }

    if (this->type != 5) {
        if (((gSaveContext.dayTime < 0xB888) || (gSaveContext.nightFlag == 0)) && !(gSaveContext.eventChkInf[8] & 1)) {
            this->actionFunc = func_80A5162C;
        } else {
            Actor_Kill(&this->actor);
        }
    } else {
        if ((gSaveContext.dayTime >= 0xB889) || (gSaveContext.nightFlag != 0) || (gSaveContext.eventChkInf[8] & 1)) {
            this->actionFunc = func_80A521FC;
        } else {
            Actor_Kill(&this->actor);
        }
    }
}

void EnHeishi1_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void func_80A5162C(EnHeishi1* this, GlobalContext* globalCtx) {
    s16 frameCount = (f32)SkelAnime_GetFrameCount(&D_06005880.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005880, this->animSpeed, 0.0f, frameCount, 0, this->transitionRate);
    this->bodyTurnSpeed = 0.0f;
    this->moveSpeed = 0.0f;
    this->unk_262 = Math_Rand_ZeroFloat(1.99f);
    this->actionFunc = func_80A516E4;
}

void func_80A516E4(EnHeishi1* this, GlobalContext* globalCtx) {
    Path* path;
    Vec3s* pointPos;
    f32 pathDiffX;
    f32 pathDiffZ;
    s16 randOffset;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (func_800A56C8(&this->skelAnime, 1.0f) || func_800A56C8(&this->skelAnime, 17.0f)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_KNIGHT_WALK);
    }

    if (!sIsCaught) {
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
            this->unk_262++;
            this->unk_280 = 8192.0f;
            if ((this->unk_262 & 1) != 0) {
                this->unk_280 *= -1.0f;
            }
            randOffset = Math_Rand_ZeroFloat(30.0f);
            this->headTimer = sHeadTimers[this->type] + randOffset;
        }

        Math_SmoothScaleMaxF(&this->unk_27C, this->unk_280, this->headTurnSpeedTarget, this->headTurnSpeedMax);

        if ((this->path == BREG(1)) && (BREG(0) != 0)) {
            osSyncPrintf(VT_FGCOL(RED) " 種類  %d\n" VT_RST, this->path);
            osSyncPrintf(VT_FGCOL(RED) " ぱす  %d\n" VT_RST, this->waypoint);
            osSyncPrintf(VT_FGCOL(RED) " 反転  %d\n" VT_RST, this->bodyTurnSpeed);
            osSyncPrintf(VT_FGCOL(RED) " 時間  %d\n" VT_RST, this->unkTimer2);
            osSyncPrintf(VT_FGCOL(RED) " 点座  %d\n" VT_RST, path->count);
            osSyncPrintf("\n\n");
        }

        if ((fabsf(pathDiffX) < 20.0f) && (fabsf(pathDiffZ) < 20.0f)) {
            if (this->unkTimer2 == 0) {
                if (this->type >= 2) {
                    if ((this->waypoint >= 4) && (Math_Rand_ZeroFloat(1.99f) > 1.0f)) {
                        if (this->waypoint == 7) {
                            this->waypoint = 0;
                        }
                        if (this->waypoint >= 4) {
                            this->waypoint -= 3;
                        }
                        this->unkTimer2 = 5;
                        return;
                    }
                }
                this->actionFunc = func_80A51C4C;
            }
        }
    }
}

// EnHeishi1_StartCatch
void func_80A51A98(EnHeishi1* this, GlobalContext* globalCtx) {
    s16 frameCount = (f32)SkelAnime_GetFrameCount(&D_06005880.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005880, 3.0f, 0.0f, frameCount, 0, -3.0f);
    this->bodyTurnSpeed = 0.0f;
    this->moveSpeed = 0.0f;
    func_8010B680(globalCtx, 0x702D, &this->actor);
    Interface_SetDoAction(globalCtx, 0x12);
    this->actionFunc = func_80A51B54;
}

// EnHeishi1_MoveToLink
void func_80A51B54(EnHeishi1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.x, player->actor.posRot.pos.x, 1.0f, this->moveSpeed);
    Math_SmoothScaleMaxF(&this->actor.posRot.pos.z, player->actor.posRot.pos.z, 1.0f, this->moveSpeed);
    Math_SmoothScaleMaxF(&this->moveSpeed, 6.0f, 1.0f, 0.4f);
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, this->bodyTurnSpeed, 0);
    Math_SmoothScaleMaxF(&this->bodyTurnSpeed, 3000.0f, 1.0f, 300.0f);
    Math_SmoothDownscaleMaxF(&this->unk_27C, 0.5f, 2000.0f);
    if (this->actor.xzDistFromLink < 70.0f) {
        this->actionFunc = func_80A51F50;
    }
}

void func_80A51C4C(EnHeishi1* this, GlobalContext* globalCtx) {
    s16 rand;
    s16 frameCount = (f32)SkelAnime_GetFrameCount(&D_06005C30.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, this->animSpeed, 0.0f, frameCount, 0, this->transitionRate);
    this->unk_264 = 0;
    this->unk_262 = Math_Rand_ZeroFloat(1.99f);
    rand = Math_Rand_ZeroFloat(50.0f);
    this->moveTimer = rand + 50;
    this->actionFunc = func_80A51D18;
}

void func_80A51D18(EnHeishi1* this, GlobalContext* globalCtx) {
    s16 randOffset;
    s32 i;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (!sIsCaught) {
        switch (this->unk_264) {
            case 0:
                this->unk_262++;
                if ((this->unk_262 & 1) != 0) {
                    this->unk_280 = 9472.0f;
                } else {
                    this->unk_280 = -9472.0f;
                }
                randOffset = Math_Rand_ZeroFloat(30.0f);
                this->headTimer = sHeadTimers[this->type] + randOffset;
                this->unk_264 = 1;
                break;
            case 1:
                if (this->headTimer == 0) {
                    if (this->moveTimer == 0) {
                        if ((this->type == 0) || (this->type == 1)) {
                            this->waypoint++;
                            if (this->waypoint >= 4) {
                                this->waypoint = 0;
                            }
                        } else {
                            for (i = 0; i < ARRAY_COUNT(D_80A528F0); i++) {
                                if (this->waypoint == D_80A528F0[i]) {
                                    i++;
                                    if (i >= ARRAY_COUNT(D_80A528F0)) {
                                        i = 0;
                                    }
                                    this->waypoint = D_80A528F0[i];
                                    break;
                                }
                            }
                            this->unkTimer2 = 5;
                        }
                        this->actionFunc = func_80A5162C;
                    } else {
                        this->unk_264 = 0;
                    }
                }
                break;
        }
        Math_SmoothScaleMaxF(&this->unk_27C, this->unk_280, this->headTurnSpeedTarget,
                             this->headTurnSpeedMax + this->headTurnSpeedMax);
        if ((this->path == BREG(1)) && (BREG(0) != 0)) {
            osSyncPrintf(VT_FGCOL(GREEN) " 種類  %d\n" VT_RST, this->path);
            osSyncPrintf(VT_FGCOL(GREEN) " ぱす  %d\n" VT_RST, this->waypoint);
            osSyncPrintf(VT_FGCOL(GREEN) " 反転  %d\n" VT_RST, this->bodyTurnSpeed);
            osSyncPrintf(VT_FGCOL(GREEN) " 時間  %d\n" VT_RST, this->unkTimer2);
            osSyncPrintf("\n\n");
        }
    }
}

void func_80A51F50(EnHeishi1* this, GlobalContext* globalCtx) {
    s16 frameCount = (f32)SkelAnime_GetFrameCount(&D_06005C30.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, frameCount, 0, -10.0f);
    this->unkTimer = 30;
    this->actionFunc = func_80A51FEC;
}

void func_80A51FEC(EnHeishi1* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    if (this->type != 5) {
        Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.yawTowardsLink, 3, this->bodyTurnSpeed, 0);
        Math_SmoothScaleMaxF(&this->bodyTurnSpeed, 3000.0f, 1.0f, 300.0f);
        Math_SmoothDownscaleMaxF(&this->unk_27C, 0.5f, 2000.0f);
    }

    if (this->unkTimer == 0) {
        this->actionFunc = func_80A52098;
    }
}

void func_80A52098(EnHeishi1* this, GlobalContext* globalCtx) {
    s16 frameCount = (f32)SkelAnime_GetFrameCount(&D_06005C30.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, frameCount, 0, -10.0f);
    this->actionFunc = func_80A5212C;
}

void func_80A5212C(EnHeishi1* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (!this->loadStarted) {
        // if dialog state is 5 and player has advanced the textbox
        if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx))) {
            func_80106CCC(globalCtx);
            if (!this->loadStarted) {
                gSaveContext.eventChkInf[4] |= 0x4000;
                globalCtx->nextEntranceIndex = 0x4FA;
                globalCtx->sceneLoadFlag = 0x14;
                this->loadStarted = true;
                sIsCaught = false;
                globalCtx->fadeTransition = 0x2E;
                gSaveContext.nextTransition = 0x2E;
            }
        }
    }
}

void func_80A521FC(EnHeishi1* this, GlobalContext* globalCtx) {
    s16 frameCount = (f32)SkelAnime_GetFrameCount(&D_06005C30.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, frameCount, 0, -10.0f);
    this->actionFunc = func_80A52290;
}

void func_80A52290(EnHeishi1* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (this->actor.xzDistFromLink < 100.0f) {
        func_8010B680(globalCtx, 0x702D, &this->actor);
        func_80078884(NA_SE_SY_FOUND);
        // "Discovered!"
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発見！ ☆☆☆☆☆ \n" VT_RST);
        func_8002DF54(globalCtx, &this->actor, 1);
        this->actionFunc = func_80A52098;
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
    Vec3f searchBallVel;
    Vec3f searchBallAccel;
    Vec3f searchBallMult;
    Vec3f searchBallPos;

    this->activeTimer++;

    for (i = 0; i < ARRAY_COUNT(this->timers); i++) {
        if (this->timers[i] != 0) {
            this->timers[i]--;
        }
    }

    if (this->unkTimer2 != 0) {
        this->unkTimer2--;
    }

    activeCam = ACTIVE_CAM;

    if (player->actor.freezeTimer == 0) {

        this->actionFunc(this, globalCtx);

        this->actor.uncullZoneForward = 550.0f;
        this->actor.uncullZoneScale = 350.0f;
        this->actor.uncullZoneDownward = 700.0f;

        if (this->type != 5) {
            path = this->path * 2;
            if ((D_80A528B0[path] == activeCam->unk_148) || (D_80A528B0[path + 1] == activeCam->unk_148)) {
                if (!sIsCaught) {
                    if ((this->actionFunc == func_80A516E4) || (this->actionFunc == func_80A51D18)) {
                        searchBallAccel = sSearchBallAccel;
                        searchBallMult = sSearchBallMult;
                        searchBallPos.x = this->actor.posRot.pos.x;
                        searchBallPos.y = this->actor.posRot.pos.y + 60.0f;
                        searchBallPos.z = this->actor.posRot.pos.z;
                        Matrix_Push();
                        Matrix_RotateY(((this->actor.shape.rot.y + this->unk_27C) / 32768.0f) * M_PI, 0);
                        searchBallMult.z = 30.0f;
                        Matrix_MultVec3f(&searchBallMult, &searchBallVel);
                        Matrix_Pull();
                        func_80029E24(globalCtx, &searchBallPos, &searchBallVel, &searchBallAccel, 2, &this->seenLink);

                        if (this->actor.xzDistFromLink < 60.0f) {
                            this->seenLink = true;
                        } else if (this->actor.xzDistFromLink < 70.0f) {
                            if (player->actor.velocity.y > -4.0f) {
                                this->seenLink = true;
                            }
                        }

                        if (this->seenLink) {
                            if (!(player->actor.velocity.y > -3.9f)) {
                                this->seenLink = false;
                                // make sure link is within 60 units of gaurd height
                                // this is so he doesnt get caught when going on upper path
                                if (fabsf(player->actor.posRot.pos.y - this->actor.posRot.pos.y) < 60.0f) {
                                    func_80078884(NA_SE_SY_FOUND);
                                    // "Discovered!"
                                    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発見！ ☆☆☆☆☆ \n" VT_RST);
                                    func_8002DF54(globalCtx, &this->actor, 1);
                                    sIsCaught = true;
                                    this->actionFunc = func_80A51A98;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

// EnHeishi1_OverrideLimbDraw
s32 func_80A5263C(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnHeishi1* this = THIS;

    if (limbIndex == 16) {
        rot->x += (s16)this->unk_27C;
    }

    return 0;
}

void EnHeishi1_Draw(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnHeishi1* this = THIS;
    Vec3f matrixScale = D_80A52918;

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, func_80A5263C, NULL, &this->actor);
    func_80033C30(&this->actor.posRot.pos, &matrixScale, 0xFF, globalCtx);
    if ((this->path == BREG(1)) && (BREG(0) != 0)) {
        DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y + 100.0f, this->actor.posRot.pos.z,
                               0x4268, this->actor.posRot.rot.y, this->actor.posRot.rot.z, 1.0f, 1.0f, 1.0f, 255, 0, 0,
                               255, 4, globalCtx->state.gfxCtx);
    }
}
