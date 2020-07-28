#include "z_en_nb.h"
#include <vt.h>

#define FLAGS 0x00000010

#define THIS ((EnNb*)thisx)

void EnNb_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNb_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNb_Update(Actor* thisx, GlobalContext* globalCtx);
void EnNb_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnNb_SetupCollider(EnNb* this, GlobalContext* globalCtx);
s32 EnNb_GetParams(EnNb* this);
void func_80AB0FBC(EnNb* this, GlobalContext* globalCtx);
void func_80AB1040(EnNb* this, GlobalContext* globalCtx);
void EnNb_UpdateEyes(EnNb* this);
s32 EnNb_FrameUpdateMatrix(EnNb* this);
void func_80AB11EC(EnNb* this);
CsCmdActorAction* EnNb_GetNpcCsAction(GlobalContext* globalCtx, s32 npcActionIdx);
void EnNb_SetCurrentAnim(EnNb* this, AnimationHeader* animationHeader, u8 mode, f32 arg3, s32 arg4);
void EnNb_ComeUpImpl(EnNb* this, GlobalContext* globalCtx);
void EnNb_SetupChamberCsImpl(EnNb* this, GlobalContext* globalCtx);
void EnNb_SetupRaisedArmTransition(EnNb* this, UNK_TYPE arg1);
void EnNb_SetupMedallion(EnNb* this, GlobalContext* globalCtx);
void EnNb_SetupChamberCs(EnNb* this, GlobalContext* globalCtx);
void EnNb_SetupChamberWarp(EnNb* this, GlobalContext* globalCtx);
void EnNb_ComeUp(EnNb* this, GlobalContext* globalCtx);
void func_80AB193C(EnNb* this, GlobalContext* globalCtx);
void EnNb_RaiseArm(EnNb* this, GlobalContext* globalCtx);
void func_80AB19BC(EnNb* this, GlobalContext* globalCtx);
void func_80AB19FC(EnNb* this, GlobalContext* globalCtx);
void EnNb_SetSealingSFX(void);
void EnNb_InitializeDemo6K(EnNb* this, GlobalContext* globalCtx);
void EnNb_SetupHide(EnNb* this, GlobalContext* globalCtx);
void EnNb_CheckToFade(EnNb* this, GlobalContext* globalCtx);
void EnNb_SetupLightOrb(EnNb* this, GlobalContext* globalCtx);
void EnNb_Hide(EnNb* this, GlobalContext* globalCtx);
void EnNb_Fade(EnNb* this, GlobalContext* globalCtx);
void EnNb_CreateLightOrb(EnNb* this, GlobalContext* globalCtx);
void EnNb_DrawTransparency(EnNb* this, GlobalContext* globalCtx);
void EnNb_InitKidnap(EnNb* this, GlobalContext* globalCtx);
void EnNb_PlayCrySFX(EnNb* this, GlobalContext* globalCtx);
void EnNb_PlayAgonySFX(EnNb* this, GlobalContext* globalCtx);
void EnNb_SetupCaptureCutsceneState(EnNb* this, GlobalContext* globalCtx);
void EnNb_SetRaisedArmCaptureAnim(EnNb* this, UNK_TYPE arg1);
void EnNb_CheckKidnapCsMode(EnNb* this, GlobalContext* globalCtx);
void func_80AB23A8(EnNb* this, GlobalContext* globalCtx);
void EnNb_MovingInPortal(EnNb* this, GlobalContext* globalCtx);
void EnNb_SuckedInByPortal(EnNb* this, GlobalContext* globalCtx);
void EnNb_SetupConfrontation(EnNb* this, GlobalContext* globalCtx);
void EnNb_CheckConfrontationCsModeWrapper(EnNb* this, GlobalContext* globalCtx);
void func_80AB2C18(EnNb* this, GlobalContext* globalCtx);
void EnNb_Kneel(EnNb* this, GlobalContext* globalCtx);
void EnNb_LookLeft(EnNb* this, GlobalContext* globalCtx);
void EnNb_Run(EnNb* this, GlobalContext* globalCtx);
void EnNb_ConfrontationDestroy(EnNb* this, GlobalContext* globalCtx);
void EnNb_CheckCreditsCsMode(EnNb* this, GlobalContext* globalCtx);
void EnNb_WaitForNotice(EnNb* this, GlobalContext* globalCtx);
void EnNb_StandUpAfterNotice(EnNb* this, GlobalContext* globalCtx);
void EnNb_InitCrawlspaceDialogue(EnNb* this, GlobalContext* globalCtx);
void EnNb_FollowPath(EnNb* this, GlobalContext* globalCtx);
void func_80AB3E10(EnNb* this, GlobalContext* globalCtx);
s32 EnNb_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx);
void EnNb_DrawNothing(EnNb* this, GlobalContext* globalCtx);
void EnNb_DrawDefault(EnNb* this, GlobalContext* globalCtx);
void EnNb_LookRight(EnNb* this, GlobalContext* globalCtx);
void func_80AB2E70(EnNb* this, GlobalContext* globalCtx);
void func_80AB2FE4(EnNb* this, GlobalContext* globalCtx);
void EnNb_SetupLookRight(EnNb* this);
void EnNb_CreditsFade(EnNb* this, GlobalContext* globalCtx);
void func_80AB3428(EnNb* this, GlobalContext* globalCtx);
void EnNb_LookUp(EnNb* this, GlobalContext* globalCtx);
void EnNb_CheckToSpawnNearSpiritCrawlspace(EnNb* this, GlobalContext* globalCtx);
void func_80AB359C(EnNb* this);
void EnNb_BlockCrawlspace(EnNb* this, GlobalContext* globalCtx);
void func_80AB3DB0(EnNb* this, GlobalContext* globalCtx);

extern SkeletonHeader D_060181C8;
extern AnimationHeader* D_06004BB4; // standing up hands on hips
extern AnimationHeader* D_06006E78;
extern AnimationHeader* D_06004E60; // getting up from crawlspace
extern AnimationHeader* D_06004BB4;
extern AnimationHeader* D_06009238;

static ColliderCylinderInit_Set3 sCylinderInit = {
    { COLTYPE_UNK0, 0x00, 0x00, 0x09, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 25, 80, 0, { 0, 0, 0 } },
};

static UNK_PTR sEyeSegments[] = {
    0x0600B428,
    0x0600D0E8,
    0x0600D4E8,
};

static s32 D_80AB4318 = 0;

#include "z_en_nb_cutscene_data.c" EARLY

static EnNbActionFunc sActionFuncs[] = {
    EnNb_SetupChamberCs,
    EnNb_SetupChamberWarp,
    EnNb_ComeUp,
    func_80AB193C,
    EnNb_RaiseArm,
    func_80AB19BC,
    func_80AB19FC,
    EnNb_Hide,
    EnNb_Fade,
    EnNb_CreateLightOrb,
    func_80AB23A8,
    EnNb_MovingInPortal,
    EnNb_SuckedInByPortal,
    EnNb_CheckConfrontationCsModeWrapper,
    func_80AB2C18,
    EnNb_Kneel,
    EnNb_LookRight,
    EnNb_LookLeft,
    EnNb_Run,
    EnNb_ConfrontationDestroy,
    EnNb_CheckCreditsCsMode,
    EnNb_CreditsFade,
    func_80AB3428,
    EnNb_LookUp,
    EnNb_WaitForNotice,
    EnNb_StandUpAfterNotice,
    EnNb_BlockCrawlspace,
    EnNb_InitCrawlspaceDialogue,
    EnNb_FollowPath,
    func_80AB3DB0,
    func_80AB3E10,
};

static Vec3f sUnkPosVec = { 0.0f, 10.0f, 0.0f };

static EnNbDrawFunc sDrawFuncs[] = {
    EnNb_DrawNothing, EnNb_DrawDefault, EnNb_DrawTransparency, func_80AB2E70, func_80AB2FE4,
};

const ActorInit En_Nb_InitVars = {
    ACTOR_EN_NB,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_NB,
    sizeof(EnNb),
    (ActorFunc)EnNb_Init,
    (ActorFunc)EnNb_Destroy,
    (ActorFunc)EnNb_Update,
    (ActorFunc)EnNb_Draw,
};

s32 EnNb_GetWaypoint(EnNb* this) {
    s32 waypoint = this->actor.params >> 8;
    return waypoint & 0xFF;
}

s32 EnNb_GetParams(EnNb* this) {
    s32 params = this->actor.params;
    return params & 0xFF;
}

void EnNb_GetPathInfo(EnNb* this, GlobalContext* globalCtx) {
    Vec3s* pointPos;
    Path* path;
    s32 pad;
    s32 waypoint;

    path = globalCtx->setupPathList;
    if (path != NULL) {
        waypoint = EnNb_GetWaypoint(this);
        path += waypoint;
        pointPos = SEGMENTED_TO_VIRTUAL(path->points);
        this->vec_2E4.x = pointPos[0].x;
        this->vec_2E4.y = pointPos[0].y;
        this->vec_2E4.z = pointPos[0].z;
        this->vec_2F0.x = pointPos[1].x;
        this->vec_2F0.y = pointPos[1].y;
        this->vec_2F0.z = pointPos[1].z;
        this->unk_2FC =
            (Math_atan2f(this->vec_2F0.x - this->vec_2E4.x, this->vec_2F0.z - this->vec_2E4.z) * 10430.378f);
        // "En_Nb_Get_path_info RAIL DATA GET! = %d!!!!!!!!!!!!!!"
        osSyncPrintf("En_Nb_Get_path_info レールデータをゲットだぜ = %d!!!!!!!!!!!!!!\n", waypoint);
    } else {
        // "En_Nb_Get_path_info RAIL DATA DOESN'T EXIST!!!!!!!!!!!!!!!!!!!!"
        osSyncPrintf("En_Nb_Get_path_info レールデータが無い!!!!!!!!!!!!!!!!!!!!\n");
    }
}

void EnNb_SetupCollider(EnNb* this, GlobalContext* globalCtx) {
    Actor* thisx = &this->actor;
    Collider_InitCylinder(globalCtx, &this->collider);
    if (!thisx) {} // required to match
    Collider_SetCylinder_Set3(globalCtx, &this->collider, thisx, &sCylinderInit);
}

void EnNb_UpdateCollider(EnNb* this, GlobalContext* globalCtx) {
    s32 pad[4];
    ColliderCylinder* collider = &this->collider;

    Collider_CylinderUpdate(&this->actor, collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &collider->base);
}

void EnNb_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnNb* this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80AB0FBC(EnNb* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->struct_300.unk_18 = player->actor.posRot.pos;
    this->struct_300.unk_14 = kREG(16) + 9.0f;
    func_80034A14(&this->actor, &this->struct_300, kREG(17) + 0xC, 2);
}

void func_80AB1040(EnNb* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->struct_300.unk_18 = player->actor.posRot.pos;
    this->struct_300.unk_14 = kREG(16) + 9.0f;
    func_80034A14(&this->actor, &this->struct_300, kREG(17) + 0xC, 4);
}

void func_80AB10C4(EnNb* this) {
    s32 pad2[2];
    Vec3s* tempPtr;
    Vec3s* tempPtr2;

    tempPtr = &this->struct_300.unk_08;
    Math_SmoothScaleMaxMinS(&tempPtr->x, 0, 20, 6200, 100);
    Math_SmoothScaleMaxMinS(&tempPtr->y, 0, 20, 6200, 100);
    tempPtr2 = &this->struct_300.unk_0E;
    Math_SmoothScaleMaxMinS(&tempPtr2->x, 0, 20, 6200, 100);
    Math_SmoothScaleMaxMinS(&tempPtr2->y, 0, 20, 6200, 100);
}

void EnNb_UpdateEyes(EnNb* this) {
    s32 pad[3];
    s16* blinkTimer = &this->blinkTimer;
    s16* eyeIdx = &this->eyeIdx;

    if (!DECR(*blinkTimer)) {
        *blinkTimer = Math_Rand_S16Offset(60, 60);
    }

    *eyeIdx = *blinkTimer;
    if (*eyeIdx >= 3) {
        *eyeIdx = 0;
    }
}

void func_80AB11EC(EnNb* this) {
    this->action = NB_ACTION_7;
    this->drawMode = NB_DRAW_NOTHING;
    this->alpha = 0;
    this->unk_288 = 0;
    this->actor.shape.unk_14 = 0;
    this->unk_280 = 0.0f;
}

void func_80AB1210(EnNb* this, GlobalContext* globalCtx) {
    s32 one; // required to match
    if (globalCtx->csCtx.state == 0) {
        if ((D_80AB4318 != 0)) {
            if (this->actor.params == NB_TYPE_DEMO02) {
                func_80AB11EC(this);
            }

            D_80AB4318 = 0;
        }
    } else {
        one = 1;
        if (D_80AB4318 == 0) {
            D_80AB4318 = one;
        }
    }
}

void func_80AB1284(EnNb* this, GlobalContext* globalCtx) {
    func_8002E4B4(globalCtx, &this->actor, 75.0f, 30.0f, 30.0f, 4);
}

s32 EnNb_FrameUpdateMatrix(EnNb* this) {
    return SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

CsCmdActorAction* EnNb_GetNpcCsAction(GlobalContext* globalCtx, s32 npcActionIdx) {
    if (globalCtx->csCtx.state != 0) {
        return globalCtx->csCtx.npcActions[npcActionIdx];
    }
    return NULL;
}

void EnNb_SetupCsPosRot(EnNb* this, GlobalContext* globalCtx, s32 npcActionIdx) {
    CsCmdActorAction* csCmdNPCAction = EnNb_GetNpcCsAction(globalCtx, npcActionIdx);
    s16 newRotY;
    Actor* thisx = &this->actor;

    if (csCmdNPCAction != NULL) {
        thisx->posRot.pos.x = csCmdNPCAction->startPos.x;
        thisx->posRot.pos.y = csCmdNPCAction->startPos.y;
        thisx->posRot.pos.z = csCmdNPCAction->startPos.z;
        newRotY = csCmdNPCAction->rot.y;
        thisx->shape.rot.y = newRotY;
        thisx->posRot.rot.y = newRotY;
    }
}

s32 func_80AB1390(EnNb* this, GlobalContext* globalCtx, u16 arg2, s32 npcActionIdx) {
    CsCmdActorAction* csCmdNPCAction;
    if ((globalCtx->csCtx.state != 0) &&
        (csCmdNPCAction = globalCtx->csCtx.npcActions[npcActionIdx], csCmdNPCAction != NULL) &&
        (csCmdNPCAction->action == arg2)) {
        return 1;
    }
    return 0;
}

s32 func_80AB13D8(EnNb* this, GlobalContext* globalCtx, u16 arg2, s32 npcActionIdx) {
    CsCmdActorAction* csCmdNPCAction;
    if ((globalCtx->csCtx.state != 0) &&
        (csCmdNPCAction = globalCtx->csCtx.npcActions[npcActionIdx], csCmdNPCAction != NULL) &&
        (csCmdNPCAction->action != arg2)) {
        return 1;
    }
    return 0;
}

void EnNb_SetInitialCsPosRot(EnNb* this, GlobalContext* globalCtx, s32 npcActionIdx) {
    CsCmdActorAction* csCmdNPCAction = EnNb_GetNpcCsAction(globalCtx, npcActionIdx);
    s16 newRotY;
    Actor* thisx = &this->actor;

    if (csCmdNPCAction != NULL) {
        thisx->posRot.pos.x = csCmdNPCAction->startPos.x;
        thisx->posRot.pos.y = csCmdNPCAction->startPos.y;
        thisx->posRot.pos.z = csCmdNPCAction->startPos.z;
        newRotY = csCmdNPCAction->rot.y;
        thisx->shape.rot.y = newRotY;
        thisx->posRot.rot.y = newRotY;
    }
}

void EnNb_SetCurrentAnim(EnNb* this, AnimationHeader* animation, u8 mode, f32 transitionRate, s32 arg4) {
    f32 frameCount = SkelAnime_GetFrameCount(&animation->genericHeader);
    f32 playbackSpeed;
    f32 unk0;
    f32 fc;

    if (arg4 == 0) {
        unk0 = 0.0f;
        fc = frameCount;
        playbackSpeed = 1.0f;
    } else {
        unk0 = frameCount;
        fc = 0.0f;
        playbackSpeed = -1.0f;
    }

    SkelAnime_ChangeAnim(&this->skelAnime, animation, playbackSpeed, unk0, fc, mode, transitionRate);
}

#include "z_en_nb_inKenjyanoma.c"

#include "z_en_nb_inKenjyanomaDemo02.c"

#include "z_en_nb_inKidnap.c" EARLY

#include "z_en_nb_inConfrontion.c" EARLY

#include "z_en_nb_inEnding.c" EARLY

void EnNb_CheckToSpawnNearSpiritCrawlspace(EnNb* this, GlobalContext* globalCtx) {
    if (!(gSaveContext.eventChkInf[9] & 0x20) && gSaveContext.linkAge == 1) {
        EnNb_GetPathInfo(this, globalCtx);
        if (!(gSaveContext.eventChkInf[9] & 0x10)) { // looking into crawlspace
            EnNb_SetCurrentAnim(this, &D_06006E78, 0, 0.0f, 0);
            this->action = NB_CROUCH_CRAWLSPACE;
            this->drawMode = NB_DRAW_DEFAULT;
        } else {
            EnNb_SetCurrentAnim(this, &D_06004BB4, 0, 0.0f, 0);
            this->unk_2E0 = 1;
            this->actor.flags |= 9;
            this->actor.posRot.pos = this->vec_2F0;
            this->action = NB_IDLE_AFTER_TALK;
            this->drawMode = NB_DRAW_DEFAULT;
        }
    } else {
        Actor_Kill(&this->actor);
    }
}

void func_80AB359C(EnNb* this) {
    PosRot* posRot = &this->actor.posRot;
    Vec3f* vec_2E4 = &this->vec_2E4;
    Vec3f* vec_2F0 = &this->vec_2F0;
    f32 f0;
    u16 temp_t1;
    s16 temp_2;

    this->unk_2FE++;
    temp_2 = kREG(17);
    temp_t1 = temp_2;
    temp_t1 += 0x19; // Oddly needs all these temps to match
    if (temp_t1 >= this->unk_2FE) {
        f0 = func_8006F9BC(temp_t1, 0, this->unk_2FE, 3, 3);
        posRot->pos.x = vec_2E4->x + (f0 * (vec_2F0->x - vec_2E4->x));
        posRot->pos.y = vec_2E4->y + (f0 * (vec_2F0->y - vec_2E4->y));
        posRot->pos.z = vec_2E4->z + (f0 * (vec_2F0->z - vec_2E4->z));
    }
}

void EnNb_SetNoticeSFX(EnNb* this) {
    func_80078914(&this->actor.projectedPos, NA_SE_VO_NB_NOTICE);
}

s32 EnNb_GetNoticedStatus(EnNb* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    f32 playerX = player->actor.posRot.pos.x;
    f32 playerZ = player->actor.posRot.pos.z;
    f32 thisX = this->actor.posRot.pos.x;
    f32 thisZ = this->actor.posRot.pos.z;

    if (SQ(playerX - thisX) + SQ(playerZ - thisZ) < 6400.0f) {
        return true;
    }
    return false;
}

#ifdef NON_MATCHING
// regalloc, functionally equivalent, tested in-game
void func_80AB36DC(EnNb* this, GlobalContext* globalCtx) {

    u16 temp_a1;
    s16 temp;
    s32 unk_2FE;
    unk_2FE = this->unk_2FE;
    temp_a1 = kREG(17) + 0x19;
    if (this->unk_2FE < ((u16)(temp_a1 - 4))) {
        temp = 4 - this->unk_2FE;
        if (temp > 0) {
            Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->unk_2FC, temp, 0x1838, 0x64);
        }
    } else {
        if ((temp = temp_a1 - this->unk_2FE) > 0) {
            Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->actor.initPosRot.rot.y, temp, 0x1838, 0x64);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Nb/func_80AB36DC.s")
#endif

void EnNb_CheckNoticed(EnNb* this, GlobalContext* globalCtx) {
    if (EnNb_GetNoticedStatus(this, globalCtx)) {
        EnNb_SetCurrentAnim(this, &D_06004E60, 2, -8.0f, 0);
        this->action = NB_NOTICE_PLAYER;
        EnNb_SetNoticeSFX(this);
    }
}

void EnNb_SetupIdleCrawlspace(EnNb* this, UNK_TYPE arg1) {
    if (arg1 != 0) {
        EnNb_SetCurrentAnim(this, &D_06004BB4, 0, -8.0f, 0);
        this->unk_2E0 = 1;
        this->actor.flags |= 9;
        this->action = NB_IDLE_CRAWLSPACE;
    }
}

void func_80AB3838(EnNb* this, GlobalContext* globalCtx) {
    if (func_8002F194(&this->actor, globalCtx) != 0) {
        this->action = NB_IN_DIALOG;
    } else {
        this->actor.flags |= 9;
        if (!(gSaveContext.infTable[22] & 0x1000)) {
            this->actor.textId = 0x601D; // "I haven't seen you around, kid...What do you want?"
        } else {
            this->actor.textId = 0x6024; // "I want to ask you a favor...Will you go through..."
        }
        func_8002F2F4(&this->actor, globalCtx);
    }
}

void EnNb_SetupPathMovement(EnNb* this, GlobalContext* globalCtx) {
    EnNb_SetCurrentAnim(this, &D_06004E60, 2, -8.0f, 0);
    gSaveContext.eventChkInf[9] |= 16;
    this->action = NB_IN_PATH;
    this->actor.flags &= ~9;
}

void EnNb_SetTextIdAsChild(EnNb* this, GlobalContext* globalCtx) {
    s32 pad;
    u8 choiceIndex;
    MessageContext* msgCtx;
    u16 textId;

    textId = this->actor.textId;
    msgCtx = &globalCtx->msgCtx;
    if (func_8010BDBC(msgCtx) == 2) {
        // "Thanks, kid! You and I, let's give Ganondorf and his followers a big surprise, shall we?"
        if (textId == 0x6025) {
            EnNb_SetupPathMovement(this, globalCtx);
        } else {
            // "Well, what did I expect? After all, you're just a kid!"
            if (textId == 0x6027) {
                gSaveContext.infTable[22] |= 0x1000;
            }
            this->action = NB_IDLE_CRAWLSPACE;
        }
        this->actor.flags &= ~9;
    } else if ((func_8010BDBC(msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
        choiceIndex = globalCtx->msgCtx.choiceIndex;
        // "I haven't seen you around, kid..What do you want?" ..proceeds to print choices
        if (textId == 0x601D) {
            switch (choiceIndex) {
                case 0:
                    // "You're just a kid! The temple is no place for kids!"
                    this->actor.textId = 0x601E;
                    break;
                case 1:
                    // "A Sage? I don't know anyone like that."
                    this->actor.textId = 0x601F;
                    break;
                default:
                    // "You have nothing to do? What good timing!" ... proceeds to ask question asking if Link is one of
                    // Ganondorf's followers
                    this->actor.textId = 0x6020;
            }
        } else {
            if (textId == 0x6020) {
                switch (choiceIndex) {
                    case 0:
                        // "Wha-ha-ha! Don't try to act cool, kid. I was just asking! A kid like you..."
                        this->actor.textId = 0x6021;
                        break;
                    default:
                        // "Uh-huh! You've got guts. I think I like you"
                        this->actor.textId = 0x6022;
                        break;
                }
            } else {
                switch (choiceIndex) {
                    case 0:
                        // "Thanks, kid! You and I, let's give Ganondorf and his followers a big surprise, shall we?"
                        this->actor.textId = 0x6025;
                        break;
                    default:
                        // "Well, what did I expect? After all, you're just a kid!"
                        this->actor.textId = 0x6027;
                        break;
                }
            }
        }

        func_8010B720(globalCtx, this->actor.textId);
    }
}

void func_80AB3A7C(EnNb* this, GlobalContext* globalCtx, UNK_TYPE arg2) {
    u16 unk_2FE = this->unk_2FE;
    if ((u16)(kREG(17) + 0x19) > unk_2FE) {
        if (arg2 != 0) {
            EnNb_SetCurrentAnim(this, &D_06009238, 0, 0.0f, 0);
        }
    } else {
        EnNb_SetCurrentAnim(this, &D_06004BB4, 0, -8.0f, 0);
        this->action = NB_IDLE_AFTER_TALK;
    }
}

void func_80AB3B04(EnNb* this, GlobalContext* globalCtx) {
    u16 maskReaction;

    if (func_8002F194(&this->actor, globalCtx) != 0) {
        this->action = NB_ACTION_30;
    } else {
        this->actor.flags |= 9;
        maskReaction = Text_GetFaceReaction(globalCtx, 0x23);
        this->actor.textId = maskReaction;
        if ((maskReaction & 0xFFFF) == 0) {
            // "If you can successfully get the Silver Gauntlets...I'll do unk great for you!"
            this->actor.textId = 0x6026;
        }
        func_8002F2F4(&this->actor, globalCtx);
    }
}

void func_80AB3B7C(EnNb* this, GlobalContext* globalCtx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        this->action = NB_IDLE_AFTER_TALK;
        this->actor.flags &= ~9;
    }
}

void EnNb_WaitForNotice(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_UpdateCollider(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    EnNb_UpdateEyes(this);
    EnNb_CheckNoticed(this, globalCtx);
}

void EnNb_StandUpAfterNotice(EnNb* this, GlobalContext* globalCtx) {
    s32 unk;

    func_80AB1284(this, globalCtx);
    EnNb_UpdateCollider(this, globalCtx);
    unk = EnNb_FrameUpdateMatrix(this);
    EnNb_UpdateEyes(this);
    EnNb_SetupIdleCrawlspace(this, unk);
}

void EnNb_BlockCrawlspace(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_UpdateCollider(this, globalCtx);
    func_80AB0FBC(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    EnNb_UpdateEyes(this);
    func_80AB3838(this, globalCtx);
}

void EnNb_InitCrawlspaceDialogue(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_UpdateCollider(this, globalCtx);
    func_80AB0FBC(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    EnNb_UpdateEyes(this);
    EnNb_SetTextIdAsChild(this, globalCtx);
}

void EnNb_FollowPath(EnNb* this, GlobalContext* globalCtx) {
    s32 unk;

    func_80AB359C(this);
    func_80AB1284(this, globalCtx);
    EnNb_UpdateCollider(this, globalCtx);
    func_80AB36DC(this, globalCtx);
    func_80AB10C4(this);
    unk = EnNb_FrameUpdateMatrix(this);
    EnNb_UpdateEyes(this);
    func_80AB3A7C(this, globalCtx, unk);
}

void func_80AB3DB0(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_UpdateCollider(this, globalCtx);
    func_80AB0FBC(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    EnNb_UpdateEyes(this);
    func_80AB3B04(this, globalCtx);
}

void func_80AB3E10(EnNb* this, GlobalContext* globalCtx) {
    func_80AB1284(this, globalCtx);
    EnNb_UpdateCollider(this, globalCtx);
    func_80AB1040(this, globalCtx);
    EnNb_FrameUpdateMatrix(this);
    EnNb_UpdateEyes(this);
    func_80AB3B7C(this, globalCtx);
}

void EnNb_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnNb* this = THIS;

    if (this->action < 0 || this->action > 30 || sActionFuncs[this->action] == NULL) {
        // "MAIN MODE IS ABNORMAL!!!!!!!!!!!!!!!!!!!!!!!!!"
        osSyncPrintf(VT_FGCOL(RED) "メインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        sActionFuncs[this->action](this, globalCtx);
    }
}

void EnNb_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnNb* this = THIS;
    SkelAnime* skelAnime = &this->skelAnime;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    EnNb_SetupCollider(this, globalCtx);
    SkelAnime_InitSV(globalCtx, skelAnime, &D_060181C8, NULL, &this->limbDrawTable, &this->transitionDrawTable, 19);

    switch (EnNb_GetParams(this)) {
        case NB_TYPE_DEMO02:
            EnNb_SetupLightArrowOrSealingCs(this, globalCtx);
            break;
        case NB_TYPE_KIDNAPPED: // after getting silver gauntlets
            EnNb_InitKidnap(this, globalCtx);
            break;
        case NB_TYPE_CONFRONTATION: // nabooru knuckle fight
            EnNb_SetupConfrontation(this, globalCtx);
            break;
        case NB_TYPE_CREDITS: // nabooru in credits
            EnNb_SetupCreditsSpawn(this, globalCtx);
            break;
        case NB_TYPE_CRAWLSPACE: // spirit temple child link
            EnNb_CheckToSpawnNearSpiritCrawlspace(this, globalCtx);
            break;
        default: // giving medallion
            EnNb_SetChamberAnim(this, globalCtx);
            break;
    }
}

s32 EnNb_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnNb* this = THIS;
    struct_80034A14_arg1* struct_300 = &this->struct_300;

    s32 ret = 0;
    if (this->unk_2E0 != 0) {

        if (limbIndex == 8) {
            rot->x += struct_300->unk_0E.y;
            rot->y -= struct_300->unk_0E.x;
            ret = 0;
        }

        else if (limbIndex == 15) {
            rot->x += struct_300->unk_08.y;
            rot->z += struct_300->unk_08.x;
            ret = 0;
        }
    }
    return ret;
}

void EnNb_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    EnNb* this = THIS;
    Vec3f vec1;
    Vec3f vec2;

    if (limbIndex == 15) {
        vec1 = sUnkPosVec;
        Matrix_MultVec3f(&vec1, &vec2);
        thisx->posRot2.pos.x = vec2.x;
        thisx->posRot2.pos.y = vec2.y;
        thisx->posRot2.pos.z = vec2.z;
        thisx->posRot2.rot.x = thisx->posRot.rot.x;
        thisx->posRot2.rot.y = thisx->posRot.rot.y;
        thisx->posRot2.rot.z = thisx->posRot.rot.z;
    }
}

void EnNb_DrawNothing(EnNb* this, GlobalContext* globalCtx) {
}

void EnNb_DrawDefault(EnNb* this, GlobalContext* globalCtx) {
    s32 pad;
    s16 eyeIdx = this->eyeIdx;
    SkelAnime* skelAnime = &this->skelAnime;
    void* srcSegment = sEyeSegments[eyeIdx];
    void* srcSegmentC = &D_80116280[2];
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb.c", 992);
    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(srcSegment));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(srcSegment));
    gDPSetEnvColor(gfxCtx->polyOpa.p++, 0, 0, 0, 255);
    gSPSegment(gfxCtx->polyOpa.p++, 0x0C, srcSegmentC);
    SkelAnime_DrawSV(globalCtx, skelAnime->skeleton, skelAnime->limbDrawTbl, skelAnime->dListCount,
                     EnNb_OverrideLimbDraw, EnNb_PostLimbDraw, &this->actor);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_nb.c", 1013);
}

void EnNb_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnNb* this = THIS;

    if (this->drawMode < 0 || this->drawMode >= 5 || sDrawFuncs[this->drawMode] == NULL) {
        // "DRAW MODE IS ABNORMAL!!!!!!!!!!!!!!!!!!!!!!!!!"
        osSyncPrintf(VT_FGCOL(RED) "描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n" VT_RST);
    } else {
        sDrawFuncs[this->drawMode](this, globalCtx);
    }
}
