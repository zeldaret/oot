/*
 * File: z_en_daiku_kakariko.c
 * Overlay: ovl_En_Daiku_Kakariko
 * Description: Kakariko Village Carpenters
 */

#include "z_en_daiku_kakariko.h"

#define FLAGS 0x00000019

#define THIS ((EnDaikuKakariko*)thisx)

typedef enum {
    /* 0x0 */ CARPENTER_ICHIRO,  // Red and purple pants, normal hair
    /* 0x1 */ CARPENTER_SABOORO, // Light blue pants
    /* 0x2 */ CARPENTER_JIRO,    // Green pants
    /* 0x3 */ CARPENTER_SHIRO    // Pink and purple pants, two-spiked hair
} KakarikoCarpenterType;

void EnDaikuKakariko_Init(Actor* thisx, GlobalContext* globalCtx);
void EnDaikuKakariko_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnDaikuKakariko_Update(Actor* thisx, GlobalContext* globalCtx);
void EnDaikuKakariko_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnDaikuKakariko_Wait(EnDaikuKakariko* this, GlobalContext* globalCtx);
void EnDaikuKakariko_Run(EnDaikuKakariko* this, GlobalContext* globalCtx);

extern FlexSkeletonHeader D_06007958;

const ActorInit En_Daiku_Kakariko_InitVars = {
    ACTOR_EN_DAIKU_KAKARIKO,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_DAIKU,
    sizeof(EnDaikuKakariko),
    (ActorFunc)EnDaikuKakariko_Init,
    (ActorFunc)EnDaikuKakariko_Destroy,
    (ActorFunc)EnDaikuKakariko_Update,
    (ActorFunc)EnDaikuKakariko_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 18, 66, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInit = { 0, 0, 0, 0, 0xFF };

static DamageTable sDamageTable = { 0 };

static struct_D_80AA1678 sAnimations[] = {
    { 0x06001AB0, 1.0f, 2, -7.0f }, { 0x06007DE0, 1.0f, 0, -7.0f }, { 0x0600885C, 1.0f, 0, -7.0f },
    { 0x06000C44, 1.0f, 0, -7.0f }, { 0x06000600, 1.0f, 0, -7.0f }, { 0x06008164, 1.0f, 0, -7.0f },
};

void EnDaikuKakariko_SetAnimFromIndex(EnDaikuKakariko* this, s32 animIndex, s32* currentAnimIndex) {
    f32 transitionRate;

    if ((*currentAnimIndex < 0) || (animIndex == *currentAnimIndex)) {
        transitionRate = 0.0f;
    } else {
        transitionRate = sAnimations[animIndex].transitionRate;
    }

    Animation_Change(&this->skelAnime, sAnimations[animIndex].animation, 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimations[animIndex].animation), sAnimations[animIndex].unk_08,
                     transitionRate);

    *currentAnimIndex = animIndex;
}

void EnDaikuKakariko_Init(Actor* thisx, GlobalContext* globalCtx) {
    static u16 initFlags[] = { 0x0080, 0x00B0, 0x0070, 0x0470 }; // List of inital values for this->flags
    EnDaikuKakariko* this = THIS;
    s32 pad;

    if (LINK_AGE_IN_YEARS == YEARS_CHILD) {
        switch (globalCtx->sceneNum) {
            case SCENE_SPOT01:
                if (gSaveContext.nightFlag == 0) {
                    this->flags |= 1;
                    this->flags |= initFlags[this->actor.params & 3];
                }
                break;
            case SCENE_KAKARIKO:
                if (gSaveContext.nightFlag == 1) {
                    this->flags |= 2;
                }
                break;
            case SCENE_DRAG:
                this->flags |= 4;
                break;
        }
    }

    if (!(this->flags & 7)) {
        Actor_Kill(&this->actor);
    }

    if (gSaveContext.nightFlag == 1) {
        this->flags |= 8;
    }

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 40.0f);

    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06007958, NULL, &this->jointTable, &this->morphTable, 17);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);

    func_80061EFC(&this->actor.colChkInfo, &sDamageTable, &sColChkInit);

    Animation_Change(&this->skelAnime, sAnimations->animation, 1.0f, 0.0f,
                     Animation_GetLastFrame(sAnimations->animation), sAnimations->unk_08, sAnimations->transitionRate);

    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);

    this->actor.gravity = 0.0f;
    this->runSpeed = 3.0f;
    this->actor.uncullZoneForward = 1200.0f;
    this->actor.unk_1F = 6;
    this->currentAnimIndex = -1;

    if (this->flags & 0x40) {
        this->actor.gravity = -1.0f;
    }

    if (this->flags & 0x10) {
        EnDaikuKakariko_SetAnimFromIndex(this, 3, &this->currentAnimIndex);
        this->actionFunc = EnDaikuKakariko_Run;
    } else {
        if (this->flags & 8) {
            if (((this->actor.params & 3) == CARPENTER_SABOORO) || ((this->actor.params & 3) == CARPENTER_SHIRO)) {
                EnDaikuKakariko_SetAnimFromIndex(this, 5, &this->currentAnimIndex);
                this->flags |= 0x800;
            } else {
                EnDaikuKakariko_SetAnimFromIndex(this, 1, &this->currentAnimIndex);
            }

            this->skelAnime.curFrame = (s32)(Rand_ZeroOne() * this->skelAnime.endFrame);
        } else {
            EnDaikuKakariko_SetAnimFromIndex(this, 0, &this->currentAnimIndex);
            this->skelAnime.curFrame = (s32)(Rand_ZeroOne() * this->skelAnime.endFrame);
        }

        this->flags |= 0x100;
        this->actionFunc = EnDaikuKakariko_Wait;
    }
}

void EnDaikuKakariko_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnDaikuKakariko* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

s32 EnDaikuKakariko_GetTalkState(EnDaikuKakariko* this, GlobalContext* globalCtx) {
    s32 talkState = 2;

    if ((func_8010BDBC(&globalCtx->msgCtx) == 6) && (func_80106BC8(globalCtx))) {
        switch (this->actor.textId) {
            case 0x6061:
                gSaveContext.infTable[23] |= 0x40;
                break;
            case 0x6064:
                gSaveContext.infTable[23] |= 0x100;
                break;
        }
        talkState = 0;
    }
    return talkState;
}

void EnDaikuKakariko_HandleTalking(EnDaikuKakariko* this, GlobalContext* globalCtx) {
    static s32 maskReactionSets[] = { 1, 2, 3, 4 };
    s16 sp26;
    s16 sp24;

    if (this->talkState == 2) {
        this->talkState = EnDaikuKakariko_GetTalkState(this, globalCtx);
    } else if (func_8002F194(&this->actor, globalCtx)) {
        this->talkState = 2;
    } else {
        func_8002F374(globalCtx, &this->actor, &sp26, &sp24);

        if ((sp26 >= 0) && (sp26 <= 320) && (sp24 >= 0) && (sp24 <= 240) && (this->talkState == 0) &&
            (func_8002F2CC(&this->actor, globalCtx, 100.0f) == 1)) {
            this->actor.textId = Text_GetFaceReaction(globalCtx, maskReactionSets[this->actor.params & 3]);

            if (this->actor.textId == 0) {
                switch (this->actor.params & 3) {
                    case 0:
                        if (this->flags & 8) {
                            this->actor.textId = 0x5076;
                        } else {
                            this->actor.textId = 0x5075;
                        }
                        break;
                    case 1:
                        if (this->flags & 1) {
                            this->actor.textId = 0x502A;
                        } else {
                            this->actor.textId = 0x5074;
                        }
                        break;
                    case 2:
                        if (this->flags & 1) {
                            this->actor.textId = 0x506A;
                        } else {
                            this->actor.textId = 0x506B;
                        }
                        break;
                    case 3:
                        if (this->flags & 1) {
                            this->actor.textId = 0x5077;
                        } else {
                            this->actor.textId = 0x5078;
                        }
                        break;
                }
            }
        }
    }
}

void EnDaikuKakariko_Talk(EnDaikuKakariko* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime)) {
        EnDaikuKakariko_SetAnimFromIndex(this, 3, &this->currentAnimIndex);
    }

    EnDaikuKakariko_HandleTalking(this, globalCtx);

    if (this->talkState == 0) {
        if (this->flags & 0x10) {
            EnDaikuKakariko_SetAnimFromIndex(this, 3, &this->currentAnimIndex);
            this->flags &= ~0x0300;
            this->actionFunc = EnDaikuKakariko_Run;
            return;
        }

        if (!(this->flags & 8)) {
            EnDaikuKakariko_SetAnimFromIndex(this, 0, &this->currentAnimIndex);
        }

        if ((this->flags & 0x800) == 0) {
            this->flags &= ~0x0200;
            this->flags |= 0x100;
        }

        this->actionFunc = EnDaikuKakariko_Wait;
    }
}

void EnDaikuKakariko_Wait(EnDaikuKakariko* this, GlobalContext* globalCtx) {
    EnDaikuKakariko_HandleTalking(this, globalCtx);

    if (SkelAnime_Update(&this->skelAnime)) {
        EnDaikuKakariko_SetAnimFromIndex(this, 0, &this->currentAnimIndex);
    }

    if (this->talkState != 0) {
        if (!(this->flags & 8)) {
            EnDaikuKakariko_SetAnimFromIndex(this, 4, &this->currentAnimIndex);
        }

        if (!(this->flags & 0x800)) {
            this->flags |= 0x200;
            this->flags &= ~0x0100;
        }

        this->actionFunc = EnDaikuKakariko_Talk;
    }
}

void EnDaikuKakariko_StopRunning(EnDaikuKakariko* this, GlobalContext* globalCtx) {
    if (SkelAnime_Update(&this->skelAnime)) {
        this->timer--;

        if (this->timer <= 0) {
            EnDaikuKakariko_SetAnimFromIndex(this, 3, &this->currentAnimIndex);
            this->actionFunc = EnDaikuKakariko_Run;
        } else {
            this->skelAnime.curFrame = this->skelAnime.startFrame;
        }
    }

    EnDaikuKakariko_HandleTalking(this, globalCtx);

    if (this->talkState != 0) {
        this->flags |= 0x200;
        EnDaikuKakariko_SetAnimFromIndex(this, 4, &this->currentAnimIndex);
        this->actionFunc = EnDaikuKakariko_Talk;
    }
}

void EnDaikuKakariko_Run(EnDaikuKakariko* this, GlobalContext* globalCtx) {
    s32 pad;
    Path* path;
    Vec3s* pathPos;
    f32 xDist;
    f32 zDist;
    s16 runAngle;
    f32 runDist;
    s16 angleStepDiff;
    s32 run;

    do {
        path = &globalCtx->setupPathList[(this->actor.params >> 8) & 0xFF];
        pathPos = &((Vec3s*)SEGMENTED_TO_VIRTUAL(path->points))[this->waypoint];
        xDist = pathPos->x - this->actor.posRot.pos.x;
        zDist = pathPos->z - this->actor.posRot.pos.z;
        runAngle = Math_FAtan2F(xDist, zDist) * (32768.0f / M_PI);
        runDist = sqrtf((xDist * xDist) + (zDist * zDist));

        run = false;

        if (runDist <= 10.0f) {
            if (this->pathContinue == false) {
                this->waypoint++;

                if (this->waypoint >= path->count) {
                    if (this->flags & 0x20) {
                        this->waypoint = path->count - 2;
                        this->pathContinue = true;
                        this->run = run = false;

                        if (this->flags & 0x400) {
                            this->timer = 2;
                            EnDaikuKakariko_SetAnimFromIndex(this, 0, &this->currentAnimIndex);
                            this->actionFunc = EnDaikuKakariko_StopRunning;
                            return;
                        }
                    } else {
                        this->waypoint = 0;
                        run = true;
                    }
                } else {
                    this->run = run = true;
                }
            } else {
                this->waypoint--;

                if (this->waypoint < 0) {
                    this->waypoint = 1;
                    this->pathContinue = false;
                    this->run = run = false;

                    if (this->flags & 0x400) {
                        this->timer = 2;
                        EnDaikuKakariko_SetAnimFromIndex(this, 0, &this->currentAnimIndex);
                        this->actionFunc = EnDaikuKakariko_StopRunning;
                        return;
                    }
                } else {
                    run = true;
                }
            }
        }
    } while (run);

    angleStepDiff = Math_SmoothStepToS(&this->actor.shape.rot.y, runAngle, 1, 5000, 0);

    this->actor.posRot.rot.y = this->actor.shape.rot.y;

    if (this->run == false) {
        if (angleStepDiff == 0) {
            this->run = true;
        } else {
            this->actor.speedXZ = 0.0f;
        }
    }

    if (this->run == true) {
        Math_SmoothStepToF(&this->actor.speedXZ, this->runSpeed, 0.8f, runDist, 0.0f);
    }

    Actor_MoveForward(&this->actor);

    if (this->flags & 0x40) {
        func_8002E4B4(globalCtx, this, 0.0f, 0.0f, 0.0f, 4);
    } else if (this->flags & 0x80) {
        this->runFlag |= 1;
        this->flags &= ~0x0080;
    } else if (this->runFlag & 1) {
        func_8002E4B4(globalCtx, this, 0.0f, 0.0f, 0.0f, 4);
        this->runFlag &= ~1;
    }

    SkelAnime_Update(&this->skelAnime);
    EnDaikuKakariko_HandleTalking(this, globalCtx);

    if (this->talkState != 0) {
        this->flags |= 0x200;
        EnDaikuKakariko_SetAnimFromIndex(this, 4, &this->currentAnimIndex);
        this->actionFunc = EnDaikuKakariko_Talk;
    }
}

void EnDaikuKakariko_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnDaikuKakariko* this = THIS;
    s32 pad;
    Player* player = PLAYER;
    s32 pad2;

    if (this->currentAnimIndex == 3) {
        if (((s32)this->skelAnime.curFrame == 6) || ((s32)this->skelAnime.curFrame == 15)) {
            Audio_PlayActorSound2(&this->actor, NA_SE_EN_MORIBLIN_WALK);
        }
    }

    Collider_CylinderUpdate(&this->actor, &this->collider);

    if (this->flags & 4) {
        this->collider.dim.pos.x -= 27;
        this->collider.dim.pos.z -= 27;
        this->collider.dim.radius = 63;
    }

    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);

    this->actionFunc(this, globalCtx);

    this->npcInfo.unk_18.x = player->actor.posRot2.pos.x;
    this->npcInfo.unk_18.y = player->actor.posRot2.pos.y;
    this->npcInfo.unk_18.z = player->actor.posRot2.pos.z;

    if (this->flags & 0x100) {
        this->neckAngleTarget.x = 5900;
        this->flags |= 0x1000;
        func_80034A14(&this->actor, &this->npcInfo, 0, 2);
    } else if (this->flags & 0x200) {
        this->neckAngleTarget.x = 5900;
        this->flags |= 0x1000;
        func_80034A14(&this->actor, &this->npcInfo, 0, 4);
    }

    Math_SmoothStepToS(&this->neckAngle.x, this->neckAngleTarget.x, 1, 1820, 0);
}

s32 EnDaikuKakariko_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                                     void* thisx) {
    EnDaikuKakariko* this = THIS;
    Vec3s angle;

    switch (limbIndex) {
        case 8:
            angle = this->npcInfo.unk_0E;
            Matrix_RotateX(-(angle.y * (M_PI / 32768.0f)), MTXMODE_APPLY);
            Matrix_RotateZ(-(angle.x * (M_PI / 32768.0f)), MTXMODE_APPLY);
            break;
        case 15:
            Matrix_Translate(1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
            angle = this->npcInfo.unk_08;

            if (this->flags & 0x1000) {
                osSyncPrintf("<%d>\n", this->neckAngle.x);
                Matrix_RotateX((angle.y + this->neckAngle.y) * (M_PI / 32768.0f), MTXMODE_APPLY);
                Matrix_RotateZ((angle.x + this->neckAngle.x) * (M_PI / 32768.0f), MTXMODE_APPLY);
            } else {
                Matrix_RotateX(angle.y * (M_PI / 32768.0f), MTXMODE_APPLY);
                Matrix_RotateZ(angle.x * (M_PI / 32768.0f), MTXMODE_APPLY);
            }

            Matrix_Translate(-1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
            break;
    }

    return 0;
}

void EnDaikuKakariko_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    static Gfx* carpenterHeadDLists[] = { 0x06005BD0, 0x06005AC0, 0x06005990, 0x06005880 };
    static Vec3f unkVec = { 700.0f, 1100.0f, 0.0f };
    EnDaikuKakariko* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_daiku_kakariko.c", 1104);

    if (limbIndex == 15) {
        Matrix_MultVec3f(&unkVec, &this->actor.posRot2.pos);
        gSPDisplayList(POLY_OPA_DISP++, carpenterHeadDLists[this->actor.params & 3]);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_daiku_kakariko.c", 1113);
}

void EnDaikuKakariko_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnDaikuKakariko* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_daiku_kakariko.c", 1124);

    func_80093D18(globalCtx->state.gfxCtx);

    if ((thisx->params & 3) == CARPENTER_ICHIRO) {
        gDPSetEnvColor(POLY_OPA_DISP++, 170, 10, 70, 255);
    } else if ((thisx->params & 3) == CARPENTER_SABOORO) {
        gDPSetEnvColor(POLY_OPA_DISP++, 170, 200, 255, 255);
    } else if ((thisx->params & 3) == CARPENTER_JIRO) {
        gDPSetEnvColor(POLY_OPA_DISP++, 0, 230, 70, 255);
    } else if ((thisx->params & 3) == CARPENTER_SHIRO) {
        gDPSetEnvColor(POLY_OPA_DISP++, 200, 0, 150, 255);
    }

    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnDaikuKakariko_OverrideLimbDraw, EnDaikuKakariko_PostLimbDraw, thisx);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_daiku_kakariko.c", 1151);
}
