/*
 * File: z_en_zl4.c
 * Overlay: ovl_En_Zl4
 * Description: Child Princess Zelda
 */

#include "z_en_zl4.h"

#define FLAGS 0x00000019

#define THIS ((EnZl4*)thisx)

typedef enum {
    /* 0 */ ZL4_CS_WAIT,
    /* 1 */ ZL4_CS_START,
    /* 2 */ ZL4_CS_MEET,
    /* 3 */ ZL4_CS_STONE,
    /* 4 */ ZL4_CS_NAMES,
    /* 5 */ ZL4_CS_LEGEND,
    /* 6 */ ZL4_CS_WINDOW,
    /* 7 */ ZL4_CS_GANON,
    /* 8 */ ZL4_CS_PLAN
} EnZl4CutsceneState;

typedef enum {
    /* 0 */ ZL4_EYES_NEUTRAL,
    /* 1 */ ZL4_EYES_SHUT,
    /* 2 */ ZL4_EYES_LOOK_LEFT,
    /* 3 */ ZL4_EYES_LOOK_RIGHT,
    /* 4 */ ZL4_EYES_WIDE,
    /* 5 */ ZL4_EYES_HALF_OPEN,
    /* 6 */ ZL4_EYES_OPEN
} EnZl4EyeExpression;

typedef enum {
    /* 0 */ ZL4_MOUTH_NEUTRAL,
    /* 0 */ ZL4_MOUTH_HAPPY,
    /* 0 */ ZL4_MOUTH_WORRIED,
    /* 0 */ ZL4_MOUTH_SURPRISED
} EnZl4MouthExpression;

void EnZl4_Init(Actor* thisx, GlobalContext* globalCtx);
void EnZl4_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnZl4_Update(Actor* thisx, GlobalContext* globalCtx);
void EnZl4_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnZl4_Cutscene(EnZl4* this, GlobalContext* globalCtx);
void EnZl4_Idle(EnZl4* this, GlobalContext* globalCtx);
void EnZl4_TheEnd(EnZl4* this, GlobalContext* globalCtx);

extern UNK_TYPE D_02000104;
extern UNK_TYPE D_02000444;
extern UNK_TYPE D_02003994;
extern FlexSkeletonHeader D_0600E038;
extern AnimationHeader D_0600F0A4;
extern AnimationHeader D_0600F894;
extern AnimationHeader D_06010DF8;
extern AnimationHeader D_060125E4;
extern AnimationHeader D_06012E58;
extern AnimationHeader D_06015F14;
extern AnimationHeader D_060169B4;
extern AnimationHeader D_06016D08;
extern AnimationHeader D_0601805C;
extern AnimationHeader D_06018898;
extern AnimationHeader D_0601910C;
extern AnimationHeader D_0601A2FC;
extern AnimationHeader D_0601AAE0;
extern AnimationHeader D_0601B874;
extern AnimationHeader D_0601BCF0;
extern AnimationHeader D_0601CE08;

const ActorInit En_Zl4_InitVars = {
    ACTOR_EN_ZL4,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_ZL4,
    sizeof(EnZl4),
    (ActorFunc)EnZl4_Init,
    (ActorFunc)EnZl4_Destroy,
    (ActorFunc)EnZl4_Update,
    (ActorFunc)EnZl4_Draw,
};

ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 10, 44, 0, { 0, 0, 0 } },
};

CollisionCheckInfoInit2 sColChkInfoInit = { 0, 0, 0, 0, 0xFF };

struct_80034EC0_Entry sAnimationEntries[] = {
    { 0x06000654, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },  { 0x0600E5C8, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, -1.0f },
    { 0x0600EBC4, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f }, { 0x06010DF8, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, -1.0f },
    { 0x06011248, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f }, { 0x06011698, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f },
    { 0x06011B34, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -8.0f }, { 0x060125E4, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, 0.0f },
    { 0x06012E58, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },  { 0x06013280, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, -1.0f },
    { 0x06013628, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f }, { 0x06013A50, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, -1.0f },
    { 0x06013EA0, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f }, { 0x06015F14, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { 0x060169B4, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },  { 0x06016D08, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { 0x0601726C, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, -1.0f }, { 0x06017818, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -8.0f },
    { 0x0601805C, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },  { 0x06018898, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, -1.0f },
    { 0x0601910C, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f }, { 0x06019600, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { 0x0601991C, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, -1.0f }, { 0x0601A2FC, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { 0x0601AAE0, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },  { 0x0601AE88, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f },
    { 0x0601B874, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, 0.0f },  { 0x0601BCF0, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },
    { 0x0601C494, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f }, { 0x0601C7B0, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -1.0f },
    { 0x0601CE08, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },  { 0x0600F0A4, 1.0f, 0.0f, -1.0f, ANIMMODE_ONCE, 0.0f },
    { 0x0600F894, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, 0.0f },  { 0x06000654, 1.0f, 0.0f, -1.0f, ANIMMODE_LOOP, -8.0f },
};

#include "z_en_zl4_cutscene_data.c"

void EnZl4_SetCsCameraAngle(GlobalContext* globalCtx, s16 index) {
    Camera* activeCam = ACTIVE_CAM;

    Camera_ChangeSetting(activeCam, 0x21);
    activeCam->at = sCsCameraAngle[index].at;
    activeCam->eye = activeCam->eyeNext = sCsCameraAngle[index].eye;
    activeCam->roll = sCsCameraAngle[index].roll;
    activeCam->fov = sCsCameraAngle[index].fov;
}

void EnZl4_SetCsCameraMove(GlobalContext* globalCtx, s16 index) {
    Camera* activeCam = ACTIVE_CAM;
    Player* player = PLAYER;

    Camera_ChangeSetting(activeCam, 0x25);
    Camera_ResetAnim(activeCam);
    Camera_SetCSParams(activeCam, sCsCameraMove[index].atPoints, sCsCameraMove[index].eyePoints, player,
                       sCsCameraMove[index].relativeToPlayer);
}

u16 EnZl4_GetText(GlobalContext* globalCtx, Actor* thisx) {
    u16 faceReaction = Text_GetFaceReaction(globalCtx, 22);
    u16 itemCount;
    s16 ret;

    if (faceReaction != 0) {
        return faceReaction;
    }

    itemCount = 0;
    if (CHECK_QUEST_ITEM(QUEST_KOKIRI_EMERALD)) {
        itemCount = 1;
    }
    if (CHECK_QUEST_ITEM(QUEST_GORON_RUBY)) {
        itemCount++;
    }
    if (CHECK_QUEST_ITEM(QUEST_ZORA_SAPPHIRE)) {
        itemCount++;
    }

    if (itemCount > 1) {
        ret = 0x703D;
    } else {
        ret = 0x703C;
    }
    return ret;
}

s16 func_80B5B9B0(GlobalContext* globalCtx, Actor* thisx) {
    if (func_8010BDBC(&globalCtx->msgCtx) == 2) {
        return 0;
    }
    return 1;
}

void EnZl4_UpdateFace(EnZl4* this) {
    if (this->blinkTimer > 0) {
        this->blinkTimer--;
    } else {
        this->blinkTimer = 0;
    }
    if (this->blinkTimer < 3) {
        this->leftEyeState = this->rightEyeState = this->blinkTimer;
    }
    switch (this->eyeExpression) {
        case ZL4_EYES_NEUTRAL:
            if (this->blinkTimer == 0) {
                this->blinkTimer = Rand_S16Offset(30, 30);
            }
            break;
        case ZL4_EYES_SHUT:
            if (this->blinkTimer == 0) {
                this->leftEyeState = this->rightEyeState = 2;
            }
            break;
        case ZL4_EYES_LOOK_LEFT:
            if (this->blinkTimer == 0) {
                this->leftEyeState = 5;
                this->rightEyeState = 6;
            }
            break;
        case ZL4_EYES_LOOK_RIGHT:
            if (this->blinkTimer == 0) {
                this->leftEyeState = 6;
                this->rightEyeState = 5;
            }
            break;
        case ZL4_EYES_WIDE:
            if (this->blinkTimer == 0) {
                this->leftEyeState = this->rightEyeState = 3;
            }
            break;
        case ZL4_EYES_HALF_OPEN:
            if (this->blinkTimer == 0) {
                this->leftEyeState = this->rightEyeState = 4;
            }
            break;
        case ZL4_EYES_OPEN:
            if (this->blinkTimer >= 3) {
                this->blinkTimer = 0;
            }
            break;
    }
    switch (this->mouthExpression) {
        case 1:
            this->mouthState = 1;
            break;
        case 2:
            this->mouthState = 2;
            break;
        case 3:
            this->mouthState = 3;
            break;
        default:
            this->mouthState = 0;
            break;
    }
}

void EnZl4_SetMove(EnZl4* this, GlobalContext* globalCtx) {
    this->skelAnime.moveFlags |= 1;
    AnimationContext_SetMoveActor(globalCtx, &this->actor, &this->skelAnime, 1.0f);
}

void func_80B5BB78(EnZl4* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->unk_1E0.unk_18 = player->actor.posRot.pos;
    func_80034A14(&this->actor, &this->unk_1E0, 2, 2);
}

void EnZl4_GetActionStartPos(CsCmdActorAction* action, Vec3f* vec) {
    vec->x = action->startPos.x;
    vec->y = action->startPos.y;
    vec->z = action->startPos.z;
}

s32 EnZl4_SetupFromLegendCs(EnZl4* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Actor* playerx = &PLAYER->actor;
    s16 rotY;

    func_8002DF54(globalCtx, &this->actor, 8);
    playerx->posRot.pos = this->actor.posRot.pos;
    rotY = this->actor.shape.rot.y;
    playerx->posRot.pos.x += 56.0f * Math_SinS(rotY);
    playerx->posRot.pos.z += 56.0f * Math_CosS(rotY);

    player->linearVelocity = playerx->speedXZ = 0.0f;

    EnZl4_SetCsCameraMove(globalCtx, 5);
    ShrinkWindow_SetVal(0x20);
    Interface_ChangeAlpha(2);
    this->talkTimer2 = 0;
    return 1;
}

s32 EnZl4_InMovingAnim(EnZl4* this) {
    if ((this->skelAnime.animation == &D_0601B874) || (this->skelAnime.animation == &D_0601BCF0) ||
        (this->skelAnime.animation == &D_060125E4) || (this->skelAnime.animation == &D_06012E58) ||
        (this->skelAnime.animation == &D_06015F14) || (this->skelAnime.animation == &D_060169B4) ||
        (this->skelAnime.animation == &D_06016D08) || (this->skelAnime.animation == &D_0601805C) ||
        (this->skelAnime.animation == &D_0601A2FC) || (this->skelAnime.animation == &D_0601AAE0) ||
        (this->skelAnime.animation == &D_0601CE08) || (this->skelAnime.animation == &D_06018898) ||
        (this->skelAnime.animation == &D_0601910C) || (this->skelAnime.animation == &D_0600F0A4) ||
        (this->skelAnime.animation == &D_0600F894)) {
        return 1;
    }
    return 0;
}

void EnZl4_Init(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnZl4* this = THIS;

    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600E038, NULL, this->jointTable, this->morphTable, 18);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 18.0f);
    func_80034EC0(&this->skelAnime, sAnimationEntries, 21);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    func_80061EFC(&this->actor.colChkInfo, NULL, &sColChkInfoInit);
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.unk_1F = 6;
    this->actor.textId = -1;
    this->eyeExpression = this->mouthExpression = ZL4_MOUTH_NEUTRAL;

    if (gSaveContext.sceneSetupIndex >= 4) {
        func_80034EC0(&this->skelAnime, sAnimationEntries, 0);
        this->actionFunc = EnZl4_TheEnd;
    } else if (gSaveContext.eventChkInf[4] & 1) {
        func_80034EC0(&this->skelAnime, sAnimationEntries, 0);
        this->actionFunc = EnZl4_Idle;
    } else {
        if (gSaveContext.entranceIndex != 0x5F0) {
            func_80034EC0(&this->skelAnime, sAnimationEntries, 21);
            this->csState = ZL4_CS_WAIT;
            this->talkState = 0;
        } else {
            EnZl4_SetupFromLegendCs(this, globalCtx);
            func_80034EC0(&this->skelAnime, sAnimationEntries, 0);
            this->csState = ZL4_CS_LEGEND;
            this->talkState = 0;
        }
        this->actionFunc = EnZl4_Cutscene;
    }
}

void EnZl4_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnZl4* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

s32 EnZl4_SetNextAnim(EnZl4* this, s32 nextAnim) {
    if (!Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
        return 0;
    }
    func_80034EC0(&this->skelAnime, sAnimationEntries, nextAnim);
    return 1;
}

void EnZl4_ReverseAnimation(EnZl4* this) {
    f32 tempFrame = this->skelAnime.startFrame;

    this->skelAnime.startFrame = this->skelAnime.endFrame;
    this->skelAnime.curFrame = this->skelAnime.endFrame;
    this->skelAnime.endFrame = tempFrame;
    this->skelAnime.playSpeed = -1.0f;
}

s32 EnZl4_CsWaitForPlayer(EnZl4* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Actor* playerx = &PLAYER->actor;
    s16 rotY;
    s16 yawDiff;
    s16 absYawDiff;

    if (!func_8002F194(&this->actor, globalCtx)) {
        yawDiff = (f32)this->actor.yawTowardsLink - this->actor.shape.rot.y;
        absYawDiff = (yawDiff >= 0) ? yawDiff : -yawDiff;
        if ((playerx->posRot.pos.y != this->actor.posRot.pos.y) || (absYawDiff >= 0x3FFC)) {
            return 0;
        } else {
            func_8002F2CC(&this->actor, globalCtx, this->collider.dim.radius + 60.0f);
            return 0;
        }
    }
    playerx->posRot.pos = this->actor.posRot.pos;
    rotY = this->actor.shape.rot.y;
    playerx->posRot.pos.x += 56.0f * Math_SinS(rotY);
    playerx->posRot.pos.z += 56.0f * Math_CosS(rotY);
    playerx->speedXZ = 0.0f;
    player->linearVelocity = 0.0f;
    return 1;
}

s32 EnZl4_CsMeetPlayer(EnZl4* this, GlobalContext* globalCtx) {
    switch (this->talkState) {
        case 0:
            if (this->skelAnime.curFrame == 50.0f) {
                Audio_PlayActorSound2(&this->actor, NA_SE_VO_Z0_MEET);
            }
            if (!EnZl4_SetNextAnim(this, 4)) {
                break;
            } else {
                func_8010B680(globalCtx, 0x702E, NULL);
                this->talkState++;
            }
            break;
        case 1:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                EnZl4_SetCsCameraAngle(globalCtx, 1);
                func_8010B680(globalCtx, 0x702F, NULL);
                this->talkTimer2 = 0;
                this->talkState++;
            }
            break;
        case 2:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_02003994);
                gSaveContext.cutsceneTrigger = 1;
                EnZl4_SetCsCameraMove(globalCtx, 0);
                globalCtx->msgCtx.msgMode = 0x37;
                this->talkTimer2 = 0;
                this->talkState++;
            }
            break;
        case 3:
            this->talkTimer2++;
            if (this->talkTimer2 >= 45) {
                func_8010B680(globalCtx, 0x70F9, NULL);
                this->talkState++;
            }
            break;
        case 4:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                EnZl4_SetCsCameraMove(globalCtx, 1);
                globalCtx->msgCtx.msgMode = 0x37;
                this->talkTimer2 = 0;
                this->talkState++;
            }
            break;
        case 5:
            this->talkTimer2++;
            if (this->talkTimer2 >= 10) {
                func_8010B680(globalCtx, 0x70FA, NULL);
                this->talkState++;
            }
            break;
        case 6:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                EnZl4_SetCsCameraAngle(globalCtx, 2);
                func_80034EC0(&this->skelAnime, sAnimationEntries, 22);
                this->mouthExpression = ZL4_MOUTH_NEUTRAL;
                this->talkTimer2 = 0;
                this->talkState++;
                func_8010B680(globalCtx, 0x70FB, NULL);
            }
            break;
    }
    return (this->talkState == 7) ? 1 : 0;
}

s32 EnZl4_CsAskStone(EnZl4* this, GlobalContext* globalCtx) {
    switch (this->talkState) {
        case 0:
            if (EnZl4_SetNextAnim(this, 25)) {
                this->talkState++;
            }
        case 1:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                EnZl4_SetCsCameraAngle(globalCtx, 3);
                globalCtx->msgCtx.msgMode = 0x37;
                this->talkTimer1 = 40;
                this->talkState = 2;
            }
            break;
        case 2:
            if (DECR(this->talkTimer1) == 0) {
                func_8010B680(globalCtx, 0x7030, NULL);
                this->talkState++;
            }
            break;
        case 3:
            if (!((func_8010BDBC(&globalCtx->msgCtx) == 4) && func_80106BC8(globalCtx))) {
                break;
            } else if (globalCtx->msgCtx.choiceIndex == 0) {
                EnZl4_SetCsCameraAngle(globalCtx, 4);
                func_80034EC0(&this->skelAnime, sAnimationEntries, 28);
                this->blinkTimer = 0;
                this->eyeExpression = ZL4_EYES_HALF_OPEN;
                this->mouthExpression = ZL4_MOUTH_HAPPY;
                func_8010B680(globalCtx, 0x7032, NULL);
                this->talkState = 7;
            } else {
                EnZl4_SetCsCameraAngle(globalCtx, 2);
                func_80034EC0(&this->skelAnime, sAnimationEntries, 9);
                this->mouthExpression = ZL4_MOUTH_WORRIED;
                func_8010B680(globalCtx, 0x7031, NULL);
                this->talkState++;
            }
            break;
        case 4:
            if (this->skelAnime.curFrame == 16.0f) {
                Audio_PlayActorSound2(&this->actor, NA_SE_VO_Z0_QUESTION);
            }
            if (EnZl4_SetNextAnim(this, 10)) {
                this->talkState++;
            }
        case 5:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                globalCtx->msgCtx.msgMode = 0x37;
                func_80034EC0(&this->skelAnime, sAnimationEntries, 9);
                this->mouthExpression = ZL4_MOUTH_WORRIED;
                EnZl4_ReverseAnimation(this);
                this->talkState = 6;
            }
            break;
        case 6:
            this->mouthExpression = ZL4_MOUTH_NEUTRAL;
            EnZl4_SetCsCameraAngle(globalCtx, 3);
            func_8010B680(globalCtx, 0x7030, NULL);
            this->talkState = 12;
            break;
        case 12:
            if (EnZl4_SetNextAnim(this, 25)) {
                this->talkState = 13;
            }
        case 13:
            if (!((func_8010BDBC(&globalCtx->msgCtx) == 4) && func_80106BC8(globalCtx))) {
                break;
            } else if (globalCtx->msgCtx.choiceIndex == 0) {
                EnZl4_SetCsCameraAngle(globalCtx, 4);
                func_80034EC0(&this->skelAnime, sAnimationEntries, 28);
                this->blinkTimer = 0;
                this->eyeExpression = ZL4_EYES_HALF_OPEN;
                this->mouthExpression = ZL4_MOUTH_HAPPY;
                func_8010B680(globalCtx, 0x7032, NULL);
                this->talkState = 7;
            } else {
                EnZl4_SetCsCameraAngle(globalCtx, 2);
                func_80034EC0(&this->skelAnime, sAnimationEntries, 9);
                this->mouthExpression = ZL4_MOUTH_WORRIED;
                func_8010B680(globalCtx, 0x7031, NULL);
                this->talkState = 4;
            }
            break;
        case 7:
            if (this->skelAnime.curFrame == 17.0f) {
                Audio_PlayActorSound2(&this->actor, NA_SE_VO_Z0_SMILE_0);
            }
            if (EnZl4_SetNextAnim(this, 29)) {
                this->talkState++;
            }
        case 8:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                EnZl4_SetCsCameraMove(globalCtx, 2);
                func_80034EC0(&this->skelAnime, sAnimationEntries, 0);
                this->blinkTimer = 0;
                this->eyeExpression = ZL4_EYES_NEUTRAL;
                this->mouthExpression = ZL4_MOUTH_NEUTRAL;
                func_8010B680(globalCtx, 0x70FC, NULL);
                this->talkState = 9;
            }
            break;
        case 9:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                EnZl4_SetCsCameraAngle(globalCtx, 5);
                func_8010B680(globalCtx, 0x70FD, NULL);
                this->talkState++;
            }
            break;
        case 10:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80034EC0(&this->skelAnime, sAnimationEntries, 5);
                this->eyeExpression = ZL4_EYES_OPEN;
                this->mouthExpression = ZL4_MOUTH_SURPRISED;
                func_8010B680(globalCtx, 0x70FE, NULL);
                this->talkState++;
            }
            break;
    }
    return (this->talkState == 11) ? 1 : 0;
}

s32 EnZl4_CsAskName(EnZl4* this, GlobalContext* globalCtx) {
    switch (this->talkState) {
        case 0:
            if (EnZl4_SetNextAnim(this, 4)) {
                this->talkState++;
            }
            break;
        case 1:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                EnZl4_SetCsCameraAngle(globalCtx, 6);
                func_80034EC0(&this->skelAnime, sAnimationEntries, 1);
                this->blinkTimer = 11;
                this->eyeExpression = ZL4_EYES_HALF_OPEN;
                this->mouthExpression = ZL4_MOUTH_NEUTRAL;
                globalCtx->msgCtx.msgMode = 0x37;
                func_8010B680(globalCtx, 0x70FF, NULL);
                this->talkState++;
            }
            break;
        case 2:
            if (EnZl4_SetNextAnim(this, 2)) {
                this->talkState++;
            }
        case 3:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80034EC0(&this->skelAnime, sAnimationEntries, 16);
                this->blinkTimer = 0;
                this->eyeExpression = ZL4_EYES_NEUTRAL;
                globalCtx->msgCtx.msgMode = 0x37;
                this->talkState = 4;
            }
            break;
        case 4:
            if (EnZl4_SetNextAnim(this, 17)) {
                func_8010B680(globalCtx, 0x2073, NULL);
                this->talkState++;
            }
            break;
        case 5:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                EnZl4_SetCsCameraMove(globalCtx, 3);
                func_80034EC0(&this->skelAnime, sAnimationEntries, 0);
                globalCtx->msgCtx.msgMode = 0x37;
                this->talkTimer2 = 0;
                this->talkState = 6;
            }
            break;
        case 6:
            this->talkTimer2++;
            if (this->talkTimer2 >= 15) {
                func_8010B680(globalCtx, 0x2074, NULL);
                this->talkState++;
            }
            break;
        case 7:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80034EC0(&this->skelAnime, sAnimationEntries, 6);
                this->mouthExpression = ZL4_MOUTH_HAPPY;
                func_8010B680(globalCtx, 0x2075, NULL);
                this->talkState++;
            }
            break;
        case 8:
            if (EnZl4_SetNextAnim(this, 25)) {
                this->talkState++;
            }
        case 9:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_8010B680(globalCtx, 0x7033, NULL);
                this->talkState = 10;
            }
            break;
        case 10:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && func_80106BC8(globalCtx)) {
                if (globalCtx->msgCtx.choiceIndex == 0) {
                    EnZl4_SetCsCameraMove(globalCtx, 4);
                    func_80034EC0(&this->skelAnime, sAnimationEntries, 33);
                    this->mouthExpression = ZL4_MOUTH_NEUTRAL;
                    globalCtx->msgCtx.msgMode = 0x37;
                    this->talkTimer2 = 0;
                    this->talkState = 15;
                } else {
                    EnZl4_SetCsCameraAngle(globalCtx, 6);
                    globalCtx->msgCtx.msgMode = 0x37;
                    this->talkTimer1 = 20;
                    this->talkState++;
                    this->skelAnime.playSpeed = 0.0f;
                }
            }
            break;
        case 11:
            if (DECR(this->talkTimer1) == 0) {
                func_80034EC0(&this->skelAnime, sAnimationEntries, 11);
                this->blinkTimer = 11;
                this->eyeExpression = ZL4_EYES_LOOK_RIGHT;
                this->mouthExpression = ZL4_MOUTH_WORRIED;
                func_8010B680(globalCtx, 0x7034, NULL);
                this->talkState++;
            }
            break;
        case 12:
            if (this->skelAnime.curFrame == 5.0f) {
                Audio_PlayActorSound2(&this->actor, NA_SE_VO_Z0_SIGH_0);
            }
            if (EnZl4_SetNextAnim(this, 12)) {
                this->talkState++;
            }
        case 13:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80034EC0(&this->skelAnime, sAnimationEntries, 6);
                this->blinkTimer = 3;
                this->eyeExpression = ZL4_EYES_NEUTRAL;
                this->mouthExpression = ZL4_MOUTH_HAPPY;
                globalCtx->msgCtx.msgMode = 0x37;
                this->talkState = 14;
            }
            break;
        case 14:
            if (EnZl4_SetNextAnim(this, 25)) {
                func_8010B680(globalCtx, 0x7033, NULL);
                this->talkState = 10;
            }
            break;
        case 15:
            this->talkTimer2++;
            if (this->talkTimer2 >= 30) {
                func_8010B680(globalCtx, 0x7035, NULL);
                this->talkState++;
            }
            break;
        case 16:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                globalCtx->msgCtx.msgMode = 0x37;
                this->talkState++;
            }
        case 17:
            this->talkTimer2++;
            if (this->talkTimer2 == 130) {
                globalCtx->msgCtx.msgMode = 0x37;
                globalCtx->nextEntranceIndex = 0xA0;
                gSaveContext.nextCutsceneIndex = 0xFFF7;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeTransition = 3;
            }
            break;
    }
    if ((this->talkTimer2 == 17) && (this->talkTimer2 > 130)) {
        return 1;
    }
    return 0;
}

s32 EnZl4_CsTellLegend(EnZl4* this, GlobalContext* globalCtx) {
    Camera* activeCam = ACTIVE_CAM;

    switch (this->talkState) {
        case 0:
            this->talkTimer2++;
            if (this->talkTimer2 >= 60) {
                func_8010B680(globalCtx, 0x7037, NULL);
                this->talkState++;
            }
            break;
        case 1:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                EnZl4_SetCsCameraAngle(globalCtx, 7);
                func_8010B680(globalCtx, 0x2076, NULL);
                this->talkState++;
            }
            break;
        case 2:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                EnZl4_SetCsCameraMove(globalCtx, 6);
                globalCtx->msgCtx.msgMode = 0x37;
                this->talkState++;
            }
            break;
        case 3:
            if (activeCam->animState == 2) {
                func_8010B680(globalCtx, 0x2077, NULL);
                this->talkState++;
            }
            break;
        case 4:
            if (!((func_8010BDBC(&globalCtx->msgCtx) == 4) && func_80106BC8(globalCtx))) {
                break;
            } else if (globalCtx->msgCtx.choiceIndex == 0) {
                EnZl4_SetCsCameraAngle(globalCtx, 8);
                func_8010B680(globalCtx, 0x7005, NULL);
                this->talkState = 9;
            } else {
                func_80034EC0(&this->skelAnime, sAnimationEntries, 5);
                this->mouthExpression = ZL4_MOUTH_SURPRISED;
                func_8010B680(globalCtx, 0x7038, NULL);
                this->talkState++;
                Audio_PlayActorSound2(&this->actor, NA_SE_VO_Z0_HURRY);
            }
            break;
        case 5:
            if (EnZl4_SetNextAnim(this, 4)) {
                this->talkState++;
            }
        case 6:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80034EC0(&this->skelAnime, sAnimationEntries, 33);
                this->mouthExpression = ZL4_MOUTH_NEUTRAL;
                func_8010B680(globalCtx, 0x7037, NULL);
                this->talkState++;
            }
            break;
        case 7:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_8010B680(globalCtx, 0x2076, NULL);
                this->talkState++;
            }
            break;
        case 8:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_8010B680(globalCtx, 0x2077, NULL);
                this->talkState = 4;
            }
            break;
        case 9:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80034EC0(&this->skelAnime, sAnimationEntries, 26);
                func_8010B680(globalCtx, 0x2078, NULL);
                this->talkState++;
            }
            break;
        case 10:
            if (EnZl4_SetNextAnim(this, 27)) {
                this->talkState++;
            }
        case 11:
            if (!((func_8010BDBC(&globalCtx->msgCtx) == 4) && func_80106BC8(globalCtx))) {
                break;
            } else if (globalCtx->msgCtx.choiceIndex == 0) {
                globalCtx->msgCtx.msgMode = 0x37;
                this->talkState = 13;
            } else {
                func_8010B680(globalCtx, 0x700B, NULL);
                this->talkState = 12;
            }
            break;
        case 12:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                globalCtx->msgCtx.msgMode = 0x37;
                this->talkState = 13;
            }
            break;
    }
    return (this->talkState == 13) ? 1 : 0;
}

s32 EnZl4_CsLookWindow(EnZl4* this, GlobalContext* globalCtx) {
    switch (this->talkState) {
        case 0:
            EnZl4_SetCsCameraMove(globalCtx, 7);
            globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_02000444);
            gSaveContext.cutsceneTrigger = 1;
            this->talkState++;
            break;
        case 1:
            if (globalCtx->csCtx.state != 0) {
                if (globalCtx->csCtx.frames == 90) {
                    globalCtx->csCtx.state = 3;
                }
            } else {
                globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_02000104);
                gSaveContext.cutsceneTrigger = 1;
                this->talkState++;
                func_8002DF54(globalCtx, &this->actor, 8);
            }
            break;
        case 2:
            if (globalCtx->csCtx.state != 0) {
                if (globalCtx->csCtx.frames == 209) {
                    globalCtx->csCtx.state = 3;
                }
            } else {
                func_800AA000(0.0f, 0xA0, 0xA, 0x28);
                func_8002DF54(globalCtx, &this->actor, 1);
                func_80034EC0(&this->skelAnime, sAnimationEntries, 30);
                EnZl4_SetCsCameraAngle(globalCtx, 11);
                func_8010B680(globalCtx, 0x7039, NULL);
                this->talkState++;
            }
            break;
        case 3:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                globalCtx->msgCtx.msgMode = 0x37;
                this->talkState++;
            }
            break;
    }
    return (this->talkState == 4) ? 1 : 0;
}

s32 EnZl4_CsWarnAboutGanon(EnZl4* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 rotY;

    switch (this->talkState) {
        case 0:
            player->actor.posRot.pos = this->actor.posRot.pos;
            rotY = this->actor.shape.rot.y - 0x3FFC;
            player->actor.posRot.pos.x += 34.0f * Math_SinS(rotY);
            player->actor.posRot.pos.z += 34.0f * Math_CosS(rotY);
            EnZl4_SetCsCameraMove(globalCtx, 8);
            this->blinkTimer = 0;
            this->eyeExpression = ZL4_EYES_WIDE;
            this->mouthExpression = ZL4_MOUTH_WORRIED;
            this->talkTimer2 = 0;
            this->talkState++;
            func_8010B680(globalCtx, 0x2079, NULL);
        case 1:
            this->talkTimer2++;
            if (this->talkTimer2 >= 20) {
                this->talkState++;
            }
            break;
        case 2:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                EnZl4_SetCsCameraMove(globalCtx, 9);
                globalCtx->msgCtx.msgMode = 0x37;
                this->talkTimer2 = 0;
                this->talkState++;
            }
            break;
        case 3:
            this->talkTimer2++;
            if (this->talkTimer2 >= 20) {
                func_8010B680(globalCtx, 0x207A, NULL);
                this->talkState++;
            }
            break;
        case 4:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                EnZl4_SetCsCameraAngle(globalCtx, 12);
                func_80034EC0(&this->skelAnime, sAnimationEntries, 23);
                this->blinkTimer = 0;
                this->eyeExpression = ZL4_EYES_NEUTRAL;
                this->mouthExpression = ZL4_MOUTH_SURPRISED;
                globalCtx->msgCtx.msgMode = 0x37;
                this->talkState++;
            }
            break;
        case 5:
            if (EnZl4_SetNextAnim(this, 24)) {
                func_8010B680(globalCtx, 0x207B, NULL);
                this->talkState++;
            }
            break;
        case 6:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_8010B680(globalCtx, 0x703A, NULL);
                this->talkState++;
            }
            break;
        case 7:
            if (!((func_8010BDBC(&globalCtx->msgCtx) == 4) && func_80106BC8(globalCtx))) {
                break;
            } else if (globalCtx->msgCtx.choiceIndex == 0) {
                func_80034EC0(&this->skelAnime, sAnimationEntries, 31);
                this->blinkTimer = 11;
                this->eyeExpression = ZL4_EYES_HALF_OPEN;
                this->mouthExpression = ZL4_MOUTH_HAPPY;
                func_8010B680(globalCtx, 0x703B, NULL);
                this->talkState = 11;
            } else {
                func_80034EC0(&this->skelAnime, sAnimationEntries, 13);
                this->blinkTimer = 11;
                this->eyeExpression = ZL4_EYES_LOOK_LEFT;
                this->mouthExpression = ZL4_MOUTH_WORRIED;
                globalCtx->msgCtx.msgMode = 0x37;
                this->talkState++;
            }
            break;
        case 8:
            if (EnZl4_SetNextAnim(this, 15)) {
                this->blinkTimer = 3;
                this->eyeExpression = ZL4_EYES_NEUTRAL;
                this->mouthExpression = ZL4_MOUTH_SURPRISED;
                func_8010B680(globalCtx, 0x7073, NULL);
                this->talkState++;
            }
            break;
        case 9:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80034EC0(&this->skelAnime, sAnimationEntries, 14);
                globalCtx->msgCtx.msgMode = 0x37;
                this->talkState++;
            }
            break;
        case 10:
            if (EnZl4_SetNextAnim(this, 24)) {
                func_8010B680(globalCtx, 0x703A, NULL);
                this->talkState = 7;
            }
            break;
        case 11:
            if (EnZl4_SetNextAnim(this, 32)) {
                this->talkState++;
            }
        case 12:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                globalCtx->msgCtx.msgMode = 0x37;
                this->talkState = 13;
            }
            break;
    }
    return (this->talkState == 13) ? 1 : 0;
}

s32 EnZl4_CsMakePlan(EnZl4* this, GlobalContext* globalCtx) {
    switch (this->talkState) {
        case 0:
            func_80034EC0(&this->skelAnime, sAnimationEntries, 18);
            this->blinkTimer = 0;
            this->eyeExpression = ZL4_EYES_NEUTRAL;
            this->mouthExpression = ZL4_MOUTH_WORRIED;
            EnZl4_SetCsCameraMove(globalCtx, 10);
            this->talkTimer2 = 0;
            this->talkState++;
        case 1:
            this->talkTimer2++;
            if (this->talkTimer2 >= 10) {
                func_8010B680(globalCtx, 0x7123, NULL);
                this->talkState++;
            }
            break;
        case 2:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                EnZl4_SetCsCameraAngle(globalCtx, 13);
                func_80034EC0(&this->skelAnime, sAnimationEntries, 19);
                this->blinkTimer = 0;
                this->eyeExpression = ZL4_EYES_NEUTRAL;
                this->mouthExpression = ZL4_MOUTH_SURPRISED;
                func_8010B680(globalCtx, 0x207C, NULL);
                this->talkState++;
            }
            break;
        case 3:
            if (EnZl4_SetNextAnim(this, 20)) {
                this->talkState++;
            }
        case 4:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_8010B680(globalCtx, 0x207D, NULL);
                func_80034EC0(&this->skelAnime, sAnimationEntries, 7);
                this->blinkTimer = 0;
                this->eyeExpression = ZL4_EYES_NEUTRAL;
                this->mouthExpression = ZL4_MOUTH_NEUTRAL;
                this->talkState = 5;
                this->unk_20F = this->lastAction = 0;
            }
            break;
        case 5:
            if (EnZl4_SetNextAnim(this, 8)) {
                this->talkState++;
            }
        case 6:
            if (!((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx))) {
                break;
            } else {
                Camera_ChangeSetting(globalCtx->cameraPtrs[globalCtx->activeCamera], 1);
                this->talkState = 7;
                globalCtx->talkWithPlayer(globalCtx, &this->actor);
                func_8002F434(&this->actor, globalCtx, GI_LETTER_ZELDA, fabsf(this->actor.xzDistToLink) + 1.0f,
                              fabsf(this->actor.yDistToLink) + 1.0f);
                globalCtx->msgCtx.unk_E3E7 = 4;
                globalCtx->msgCtx.msgMode = 0x36;
            }
            break;
        case 7:
            if (Actor_HasParent(&this->actor, globalCtx)) {
                func_80034EC0(&this->skelAnime, sAnimationEntries, 0);
                this->talkState++;
            } else {
                func_8002F434(&this->actor, globalCtx, GI_LETTER_ZELDA, fabsf(this->actor.xzDistToLink) + 1.0f,
                              fabsf(this->actor.yDistToLink) + 1.0f);
            }
            // no break here is required for matching
    }
    return (this->talkState == 8) ? 1 : 0;
}

void EnZl4_Cutscene(EnZl4* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    switch (this->csState) {
        case ZL4_CS_WAIT:
            if (EnZl4_CsWaitForPlayer(this, globalCtx)) {
                this->talkState = 0;
                this->csState++;
            }
            break;
        case ZL4_CS_START:
            func_80034EC0(&this->skelAnime, sAnimationEntries, 3);
            this->blinkTimer = 0;
            this->eyeExpression = ZL4_EYES_NEUTRAL;
            this->mouthExpression = ZL4_MOUTH_SURPRISED;
            func_800F5C64(0x51);
            EnZl4_SetCsCameraAngle(globalCtx, 0);
            Interface_ChangeAlpha(2);
            ShrinkWindow_SetVal(0x20);
            this->talkState = 0;
            this->csState++;
            break;
        case ZL4_CS_MEET:
            if (EnZl4_CsMeetPlayer(this, globalCtx)) {
                this->talkState = 0;
                this->csState++;
            }
            break;
        case ZL4_CS_STONE:
            if (EnZl4_CsAskStone(this, globalCtx)) {
                this->talkState = 0;
                this->csState++;
            }
            break;
        case ZL4_CS_NAMES:
            if (EnZl4_CsAskName(this, globalCtx)) {
                this->talkState = 0;
                this->csState++;
            }
            break;
        case ZL4_CS_LEGEND:
            if (EnZl4_CsTellLegend(this, globalCtx)) {
                this->talkState = 0;
                this->csState++;
            }
            break;
        case ZL4_CS_WINDOW:
            if (EnZl4_CsLookWindow(this, globalCtx)) {
                this->talkState = 0;
                this->csState++;
            }
            break;
        case ZL4_CS_GANON:
            if (EnZl4_CsWarnAboutGanon(this, globalCtx)) {
                this->talkState = 0;
                this->csState++;
            }
            break;
        case ZL4_CS_PLAN:
            if (EnZl4_CsMakePlan(this, globalCtx)) {
                func_8002DF54(globalCtx, &this->actor, 7);
                gSaveContext.unk_13EE = 0x32;
                gSaveContext.eventChkInf[4] |= 1;
                this->actionFunc = EnZl4_Idle;
            }
            break;
    }
    this->unk_1E0.unk_18 = player->actor.posRot.pos;
    func_80034A14(&this->actor, &this->unk_1E0, 2, (this->csState == ZL4_CS_WINDOW) ? 2 : 1);
    if (EnZl4_InMovingAnim(this)) {
        EnZl4_SetMove(this, globalCtx);
    }
}

void EnZl4_Idle(EnZl4* this, GlobalContext* globalCtx) {
    func_800343CC(globalCtx, &this->actor, &this->unk_1E0.unk_00, this->collider.dim.radius + 60.0f, EnZl4_GetText,
                  func_80B5B9B0);
    func_80B5BB78(this, globalCtx);
}

void EnZl4_TheEnd(EnZl4* this, GlobalContext* globalCtx) {
    s32 animIndex[] = { 0, 0, 0, 0, 0, 0, 0, 26, 21, 3 };
    CsCmdActorAction* npcAction;
    Vec3f pos;

    if (SkelAnime_Update(&this->skelAnime) && (this->skelAnime.animation == &D_06010DF8)) {
        func_80034EC0(&this->skelAnime, sAnimationEntries, 4);
    }
    if (EnZl4_InMovingAnim(this)) {
        EnZl4_SetMove(this, globalCtx);
    }
    if (globalCtx->csCtx.frames == 100) {
        this->eyeExpression = ZL4_EYES_LOOK_LEFT;
    }
    if (globalCtx->csCtx.frames == 450) {
        this->blinkTimer = 3;
        this->eyeExpression = ZL4_EYES_NEUTRAL;
        this->mouthExpression = ZL4_MOUTH_SURPRISED;
    }
    npcAction = globalCtx->csCtx.npcActions[0];
    if (npcAction != NULL) {
        EnZl4_GetActionStartPos(npcAction, &pos);
        if (this->lastAction == 0) {
            this->actor.posRot.pos = this->actor.initPosRot.pos = pos;
        }
        if (this->lastAction != npcAction->action) {
            func_80034EC0(&this->skelAnime, sAnimationEntries, animIndex[npcAction->action]);
            this->lastAction = npcAction->action;
        }
        this->actor.velocity.x = 0.0f;
        this->actor.velocity.y = 0.0f;
        this->actor.velocity.z = 0.0f;
    }
}

void EnZl4_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnZl4* this = THIS;

    if (this->actionFunc != EnZl4_TheEnd) {
        SkelAnime_Update(&this->skelAnime);
    }
    EnZl4_UpdateFace(this);
    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    this->actionFunc(this, globalCtx);
    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

s32 EnZl4_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnZl4* this = THIS;
    Vec3s sp1C;

    if (limbIndex == 17) {
        sp1C = this->unk_1E0.unk_08;
        Matrix_Translate(900.0f, 0.0f, 0.0f, 1);
        Matrix_RotateX((sp1C.y / (f32)0x8000) * M_PI, MTXMODE_APPLY);
        Matrix_RotateZ((sp1C.x / (f32)0x8000) * M_PI, MTXMODE_APPLY);
        Matrix_Translate(-900.0f, 0.0f, 0.0f, 1);
    }
    if (limbIndex == 10) {
        sp1C = this->unk_1E0.unk_0E;
        Matrix_RotateY((sp1C.y / (f32)0x8000) * M_PI, MTXMODE_APPLY);
        Matrix_RotateX((sp1C.x / (f32)0x8000) * M_PI, MTXMODE_APPLY);
    }
    if ((limbIndex >= 3) && (limbIndex < 7)) {
        *dList = NULL;
    }
    return 0;
}

void EnZl4_PostLimbDraw(struct GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    Vec3f zeroVec = { 0.0f, 0.0f, 0.0f };
    EnZl4* this = THIS;

    if (limbIndex == 17) {
        Matrix_MultVec3f(&zeroVec, &this->actor.posRot2.pos);
    }
}

void EnZl4_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnZl4* this = THIS;
    u64* mouthTex[] = { 0x060046F0, 0x06004AF0, 0x06004EF0, 0x060052F0 };
    u64* eyeTex[] = {
        0x06002AF0, 0x06002EF0, 0x060032F0, 0x060036F0, 0x06003AF0, 0x06003EF0, 0x060042F0,
    };

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_zl4.c", 2012);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(eyeTex[this->rightEyeState]));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(eyeTex[this->leftEyeState]));
    gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(mouthTex[this->mouthState]));
    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnZl4_OverrideLimbDraw, EnZl4_PostLimbDraw, this);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_zl4.c", 2043);
}
