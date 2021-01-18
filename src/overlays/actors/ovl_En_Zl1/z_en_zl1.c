/*
 * File: z_en_zl1.c
 * Overlay: ovl_En_Zl1
 * Description: Child Princess Zelda (at window)
 */

#include "z_en_zl1.h"

#define FLAGS 0x00000019

#define THIS ((EnZl1*)thisx)

void EnZl1_Init(Actor* thisx, GlobalContext* globalCtx);
void EnZl1_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnZl1_Update(Actor* thisx, GlobalContext* globalCtx);
void EnZl1_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B4AE18(EnZl1* this);
void func_80B4AF18(EnZl1* this, GlobalContext* globalCtx);
void func_80B4B010(EnZl1* this, GlobalContext* globalCtx);
void func_80B4B240(EnZl1* this, GlobalContext* globalCtx);
void func_80B4B8B4(EnZl1* this, GlobalContext* globalCtx);
void func_80B4BBC4(EnZl1* this, GlobalContext* globalCtx);
void func_80B4BC78(EnZl1* this, GlobalContext* globalCtx);
void func_80B4BF2C(EnZl1* this, GlobalContext* globalCtx);

#include "z_en_zl1_cutscene_data.c" EARLY

const ActorInit En_Zl1_InitVars = {
    ACTOR_EN_ZL1,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_ZL1,
    sizeof(EnZl1),
    (ActorFunc)EnZl1_Init,
    (ActorFunc)EnZl1_Destroy,
    (ActorFunc)EnZl1_Update,
    (ActorFunc)EnZl1_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_HIT0,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK1,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 20, 46, 0, { 0, 0, 0 } },
};

static UNK_PTR D_80B4E61C[] = { 0x06007208, 0x06009848, 0x06009C48, 0x06009848 };
static UNK_PTR D_80B4E62C[] = { 0x06007608 };

extern AnimationHeader D_06000438;
extern UNK_TYPE D_06008848;
extern UNK_TYPE D_06008C48;
extern FlexSkeletonHeader D_0600F5D8;
extern AnimationHeader D_06010B38;
extern AnimationHeader D_06011348;
extern AnimationHeader D_060116E4;
extern AnimationHeader D_06011B88;
extern AnimationHeader D_06012118;
extern AnimationHeader D_060132D8;
extern AnimationHeader D_060138E0;
extern AnimationHeader D_06013F10;
extern AnimationHeader D_060143A8;

void func_80B4AB40(void) {
}

void func_80B4AB48(void) {
}

void EnZl1_Init(Actor* thisx, GlobalContext* globalCtx) {
    f32 frameCount;
    EnZl1* this = THIS;

    frameCount = Animation_GetLastFrame(&D_06012118);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_0600F5D8, NULL, NULL, NULL, 0);
    Animation_Change(&this->skelAnime, &D_06012118, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    Actor_SetScale(&this->actor, 0.01f);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 24.0f);
    this->actor.unk_1F = 0;

    if (gSaveContext.sceneSetupIndex >= 4) {
        frameCount = Animation_GetLastFrame(&D_06000438);
        Animation_Change(&this->skelAnime, &D_06000438, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
        this->unk_1E6 = 0;
        this->actionFunc = func_80B4BC78;
    } else if ((Flags_GetEventChkInf(9)) && (Flags_GetEventChkInf(0x25)) && (Flags_GetEventChkInf(0x37))) {
        Actor_Kill(&this->actor);
    } else if (((Flags_GetEventChkInf(9)) && (Flags_GetEventChkInf(0x25))) ||
               ((Flags_GetEventChkInf(9)) && (Flags_GetEventChkInf(0x37)))) {
        frameCount = Animation_GetLastFrame(&D_06000438);
        Animation_Change(&this->skelAnime, &D_06000438, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
        this->actor.textId = 0x703D;
        this->actionFunc = func_80B4AF18;
    } else if (Flags_GetEventChkInf(0x40)) {
        frameCount = Animation_GetLastFrame(&D_06000438);
        Animation_Change(&this->skelAnime, &D_06000438, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
        this->actor.textId = 0x703C;
        this->actionFunc = func_80B4AF18;
    } else {
        this->actor.textId = 0xFFFF;
        this->actionFunc = func_80B4B010;
    }
}

void EnZl1_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnZl1* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80B4AE18(EnZl1* this) {
    if ((this->skelAnime.animation == &D_06010B38) && (this->skelAnime.curFrame < 26.0f)) {
        this->unk_1F4 = &D_06008C48;
        this->unk_1F8 = &D_06008848;
        this->unk_1FC = 2;
    } else {
        if (DECR(this->unk_1FC) == 0) {
            this->unk_1FC = Rand_S16Offset(0x1E, 0xA);
        }
        this->unk_1FE = (this->unk_1FC < 4) ? this->unk_1FC : 0;

        this->unk_1F4 = D_80B4E61C[this->unk_1FE];
        this->unk_1F8 = D_80B4E61C[this->unk_1FE];
        this->unk_1EC = D_80B4E62C[this->unk_1F2];
    }
}

void func_80B4AF18(EnZl1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 pad;

    func_80038290(globalCtx, &this->actor, &this->unk_200, &this->unk_206, this->actor.posRot2.pos);

    if (this->unk_1E6 != 0) {
        if (func_8002F334(&this->actor, globalCtx)) {
            this->unk_1E6 = 0;
        }
    } else if (func_8002F194(&this->actor, globalCtx)) {
        this->unk_1E6 = 1;
    } else if (this->actor.posRot.pos.y <= player->actor.posRot.pos.y) {
        func_8002F2F4(&this->actor, globalCtx);
    }

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

void func_80B4B010(EnZl1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 pad2;
    s32 pad3;
    s32 pad;
    Vec3f vec1 = { -460.0f, 118.0f, 0.0f };
    Vec3f vec2 = { -406.0f, 110.0f, 0.0f };
    Vec3f playerPos = { -398.0f, 84.0f, 0.0f };
    s16 rotDiff;

    if (func_8002F194(&this->actor, globalCtx)) {
        Animation_Change(&this->skelAnime, &D_06010B38, 1.0f, 0.0f, Animation_GetLastFrame(&D_06010B38),
                         ANIMMODE_ONCE_INTERP, -10.0f);
        this->unk_1E8 = Gameplay_CreateSubCamera(globalCtx);
        Gameplay_ChangeCameraStatus(globalCtx, 0, CAM_STAT_WAIT);
        Gameplay_ChangeCameraStatus(globalCtx, this->unk_1E8, CAM_STAT_ACTIVE);
        func_800C0808(globalCtx, this->unk_1E8, player, CAM_SET_FREE0);
        globalCtx->envCtx.unk_E2[0] = 0xFF;
        globalCtx->envCtx.unk_E2[1] = 0xFF;
        globalCtx->envCtx.unk_E2[2] = 0xFF;
        globalCtx->envCtx.unk_E2[3] = 0x18;
        globalCtx->envCtx.unk_E1 = 1;
        Gameplay_CameraSetAtEye(globalCtx, this->unk_1E8, &vec1, &vec2);
        Gameplay_CameraSetFov(globalCtx, this->unk_1E8, 30.0f);
        ShrinkWindow_SetVal(0x20);
        Interface_ChangeAlpha(2);
        player->actor.posRot.pos = playerPos;
        player->actor.speedXZ = 0.0f;
        this->unk_1E2 = 0;
        this->actionFunc = func_80B4B240;
        func_800F5C64(0x51);
    } else {
        if (1) {} // necessary to match
        rotDiff = ABS(this->actor.yawTowardsLink - this->actor.shape.rot.y);
        if ((rotDiff < 0x238E) && !(player->actor.posRot.pos.y < this->actor.posRot.pos.y)) {
            func_8002F2F4(&this->actor, globalCtx);
        }
    }
}

void func_80B4B240(EnZl1* this, GlobalContext* globalCtx) {
    Vec3f sp74 = { -427.0f, 108.0, 26.0 };
    Vec3f sp68 = { -340.0f, 108.0f, 98.0f };
    s32 pad;
    Vec3f sp58 = { -434.0f, 84.0f, 0.0f };
    u8 sp54[] = { 0x00, 0x00, 0x02 };
    s32 pad2;
    Player* player = PLAYER;
    AnimationHeader* animHeaderSeg;
    MessageContext* msgCtx = &globalCtx->msgCtx;
    f32 frameCount;
    s32 sp3C = 0;

    switch (this->unk_1E2) {
        case 0:
            switch ((s16)this->skelAnime.curFrame) {
                case 14:
                    this->unk_1E4 = 0;
                    break;
                case 15:
                    if (DECR(this->unk_1E4) != 0) {
                        this->skelAnime.curFrame = 15.0f;
                    }
                    break;
                case 64:
                    animHeaderSeg = &D_06011348;
                    sp3C = 1;
                    this->actor.textId = 0x702E;
                    func_8010B680(globalCtx, this->actor.textId, NULL);
                    this->unk_1E2++;
                    break;
            }
            break;
        case 1:
            if ((func_8010BDBC(msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
                globalCtx->envCtx.unk_E1 = 0;
                Gameplay_CameraSetAtEye(globalCtx, this->unk_1E8, &sp74, &sp68);
                Gameplay_CameraSetFov(globalCtx, this->unk_1E8, 25.0f);
                player->actor.posRot.pos = sp58;
                this->actor.textId = 0x702F;
                func_8010B720(globalCtx, this->actor.textId);
                this->unk_1E2++;
            }
            break;
        case 2:
            if ((func_8010BDBC(msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
                if (msgCtx->choiceIndex == 0) {
                    animHeaderSeg = &D_06013F10;
                    sp3C = 2;
                    this->unk_1E2++;
                } else {
                    animHeaderSeg = &D_060116E4;
                    sp3C = 2;
                    this->unk_1E2 = 6;
                }
            }
            break;
        case 3:
            frameCount = Animation_GetLastFrame(&D_06013F10);
            if (this->skelAnime.curFrame == frameCount) {
                animHeaderSeg = &D_060143A8;
                sp3C = 1;
                this->actor.textId = 0x7032;
                func_8010B720(globalCtx, this->actor.textId);
                this->unk_1E2++;
            }
            break;
        case 4:
            if ((func_8010BDBC(msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
                if (msgCtx->choiceIndex == 0) {
                    animHeaderSeg = &D_060132D8;
                    sp3C = 2;
                    this->unk_1E2 = 9;
                } else {
                    this->actor.textId = 0x7034;
                    func_8010B720(globalCtx, this->actor.textId);
                    this->unk_1E2++;
                }
            }
            break;
        case 5:
            if ((func_8010BDBC(msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
                this->actor.textId = 0x7033;
                func_8010B720(globalCtx, this->actor.textId);
                this->unk_1E2--;
            }
            break;
        case 6:
            frameCount = Animation_GetLastFrame(&D_060116E4);
            if (this->skelAnime.curFrame == frameCount) {
                animHeaderSeg = &D_06011B88;
                sp3C = 1;
                this->actor.textId = 0x7031;
                func_8010B720(globalCtx, this->actor.textId);
                this->unk_1E2++;
            }
            break;
        case 7:
            if ((func_8010BDBC(msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
                this->actor.textId = 0x7030;
                func_8010B720(globalCtx, this->actor.textId);
                this->unk_1E2++;
            }
            break;
        case 8:
            if ((func_8010BDBC(msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
                if (msgCtx->choiceIndex == 0) {
                    animHeaderSeg = &D_060138E0;
                    sp3C = 2;
                    this->unk_1E2 = 3;
                } else {
                    this->actor.textId = 0x7031;
                    func_8010B720(globalCtx, this->actor.textId);
                    this->unk_1E2--;
                }
            }
            break;
        case 9:
            frameCount = Animation_GetLastFrame(&D_060132D8);
            if (this->skelAnime.curFrame == frameCount) {
                animHeaderSeg = &D_06000438;
                sp3C = 1;
                globalCtx->csCtx.segment = D_80B4C5D0;
                gSaveContext.cutsceneTrigger = 1;
                this->actionFunc = func_80B4B8B4;
                this->unk_1E2++;
            }
            break;
    }
    if (sp3C != 0) {
        frameCount = Animation_GetLastFrame(animHeaderSeg);
        Animation_Change(&this->skelAnime, animHeaderSeg, 1.0f, 0.0f, frameCount, sp54[sp3C], -10.0f);
    }
    func_80038290(globalCtx, &this->actor, &this->unk_200, &this->unk_206, this->actor.posRot2.pos);
}

void func_80B4B7F4(CsCmdActorAction* npcAction, Vec3f* pos) {
    pos->x = npcAction->startPos.x;
    pos->y = npcAction->startPos.y;
    pos->z = npcAction->startPos.z;
}

void func_80B4B834(CsCmdActorAction* npcAction, Vec3f* pos) {
    pos->x = npcAction->endPos.x;
    pos->y = npcAction->endPos.y;
    pos->z = npcAction->endPos.z;
}

void func_80B4B874(EnZl1* this, GlobalContext* globalCtx) {
    this->skelAnime.moveFlags |= 1;
    AnimationContext_SetMoveActor(globalCtx, &this->actor, &this->skelAnime, 1.0f);
}

void func_80B4B8B4(EnZl1* this, GlobalContext* globalCtx) {
    AnimationHeader* spB0[] = {
        0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
        0x00000000, 0x00000000, 0x06012B04, 0x06012118, 0x06010B38,
    };
    u8 spA4[] = {
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02,
    };
    Vec3f sp98 = { -421.0f, 143.0f, -5.0f };
    Vec3f sp8C = { -512.0f, 105.0f, -4.0f };
    s32 pad2;
    f32 actionLength;
    CsCmdActorAction* npcAction;
    Vec3f sp74;
    Vec3f sp68;
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    s32 pad;
    f32 frameCount;
    Vec3f sp48;

    SkelAnime_Update(&this->skelAnime);
    func_80B4B874(this, globalCtx);
    if (globalCtx->csCtx.state == 0) {
        this->actionFunc = func_80B4BBC4;
        return;
    }

    npcAction = globalCtx->csCtx.npcActions[0];
    if (npcAction != NULL) {
        func_80B4B7F4(npcAction, &sp74);
        func_80B4B834(npcAction, &sp68);
        if (this->unk_1E6 == 0) {
            sp48 = sp74;
            this->actor.initPosRot.pos = sp48;
            this->actor.posRot.pos = sp48;
        }
        if (this->unk_1E6 != npcAction->action) {
            frameCount = Animation_GetLastFrame(spB0[npcAction->action]);
            Animation_Change(&this->skelAnime, spB0[npcAction->action], 1.0f, 0.0f, frameCount, spA4[npcAction->action],
                             -10.0f);
            this->unk_1E6 = npcAction->action;
        }
        this->actor.velocity = velocity;
        if (globalCtx->csCtx.frames < npcAction->endFrame) {
            actionLength = npcAction->endFrame - npcAction->startFrame;
            this->actor.velocity.x = (sp68.x - sp74.x) / actionLength;
            this->actor.velocity.y = (sp68.y - sp74.y) / actionLength;
            this->actor.velocity.y += this->actor.gravity;
            if (this->actor.velocity.y < this->actor.minVelocityY) {
                this->actor.velocity.y = this->actor.minVelocityY;
            }
            this->actor.velocity.z = (sp68.z - sp74.z) / actionLength;
        }
        func_80038290(globalCtx, &this->actor, &this->unk_200, &this->unk_206, this->actor.posRot2.pos);
        Gameplay_CameraSetAtEye(globalCtx, this->unk_1E8, &sp98, &sp8C);
        Gameplay_CameraSetFov(globalCtx, this->unk_1E8, 70.0f);
    }
}

void func_80B4BBC4(EnZl1* this, GlobalContext* globalCtx) {
    s32 pad;
    f32 frameCount = Animation_GetLastFrame(&D_06000438);
    Player* player = PLAYER;

    Animation_Change(&this->skelAnime, &D_06000438, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, 0.0f);
    func_8002DF54(globalCtx, &this->actor, 1);
    func_8002F7DC(&player->actor, NA_SE_VO_LI_SURPRISE_KID);
    this->actor.textId = 0x7039;
    func_8010B680(globalCtx, this->actor.textId, NULL);
    this->unk_1E2 = 0;
    this->actionFunc = func_80B4BF2C;
}

void func_80B4BC78(EnZl1* this, GlobalContext* globalCtx) {
    AnimationHeader* sp90[] = {
        0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
        0x00000000, 0x00000000, 0x06012B04, 0x06012118, 0x06010B38,
    };
    u8 sp84[] = {
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02,
    };
    s32 pad2;
    f32 actionLength;
    Vec3f sp70;
    Vec3f sp64;
    Vec3f velocity = { 0.0f, 0.0f, 0.0f };
    CsCmdActorAction* npcAction;
    s32 pad;
    f32 frameCount;

    if (SkelAnime_Update(&this->skelAnime) && (this->skelAnime.animation == &D_06010B38)) {
        frameCount = Animation_GetLastFrame(&D_06011348);
        Animation_Change(&this->skelAnime, &D_06011348, 1.0f, 0.0f, frameCount, ANIMMODE_LOOP, -10.0f);
    }
    func_80B4B874(this, globalCtx);
    npcAction = globalCtx->csCtx.npcActions[0];
    if (npcAction != NULL) {
        func_80B4B7F4(npcAction, &sp70);
        func_80B4B834(npcAction, &sp64);
        if (this->unk_1E6 == 0) {
            this->actor.posRot.pos = this->actor.initPosRot.pos = sp70;
        }

        if (this->unk_1E6 != npcAction->action) {
            frameCount = Animation_GetLastFrame(sp90[npcAction->action]);
            Animation_Change(&this->skelAnime, sp90[npcAction->action], 1.0f, 0.0f, frameCount, sp84[npcAction->action],
                             -10.0f);
            this->unk_1E6 = npcAction->action;
        }
        this->actor.velocity = velocity;
        if (globalCtx->csCtx.frames < npcAction->endFrame) {
            actionLength = npcAction->endFrame - npcAction->startFrame;
            this->actor.velocity.x = (sp64.x - sp70.x) / actionLength;
            this->actor.velocity.y = (sp64.y - sp70.y) / actionLength;
            this->actor.velocity.y += this->actor.gravity;
            if (this->actor.velocity.y < this->actor.minVelocityY) {
                this->actor.velocity.y = this->actor.minVelocityY;
            }
            this->actor.velocity.z = (sp64.z - sp70.z) / actionLength;
        }
    }
}

void func_80B4BF2C(EnZl1* this, GlobalContext* globalCtx) {
    s32 pad;
    MessageContext* msgCtx = &globalCtx->msgCtx;
    Player* player = PLAYER;

    switch (this->unk_1E2) {
        case 0:
            if ((func_8010BDBC(msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
                if (msgCtx->choiceIndex == 0) {
                    this->actor.textId = 0x703B;
                    func_8010B720(globalCtx, this->actor.textId);
                    this->unk_1E2++;
                } else {
                    this->actor.textId = 0x703A;
                    func_8010B720(globalCtx, this->actor.textId);
                    this->unk_1E2 = 0;
                }
            }
            break;
        case 1:
            if ((func_8010BDBC(msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
                this->actor.textId = 0xFFFF;
                globalCtx->talkWithPlayer(globalCtx, &this->actor);
                func_8002F434(&this->actor, globalCtx, GI_LETTER_ZELDA, 120.0f, 10.0f);
                globalCtx->msgCtx.msgMode = 0x36;
                globalCtx->msgCtx.unk_E3E7 = 4;
                this->unk_1E2++;
            } else {
                break;
            }
        case 2:
            if (Actor_HasParent(this, globalCtx)) {
                Gameplay_CopyCamera(globalCtx, 0, this->unk_1E8);
                Gameplay_ChangeCameraStatus(globalCtx, 0, CAM_STAT_ACTIVE);
                Gameplay_ClearCamera(globalCtx, this->unk_1E8);
                this->actor.parent = NULL;
                this->unk_1E2++;
            } else {
                func_8002F434(&this->actor, globalCtx, GI_LETTER_ZELDA, 120.0f, 10.0f);
            }
            break;
        case 3:
            if ((func_8010BDBC(msgCtx) == 6) && (func_80106BC8(globalCtx) != 0)) {
                this->actor.textId = 0x703C;
                func_8010B720(globalCtx, this->actor.textId);
                Flags_SetEventChkInf(0x40);
                this->unk_1E2 = 6;
            }
            break;
        case 4:
            if (player->actor.posRot.pos.y < this->actor.posRot.pos.y) {
                break;
            } else {
                if (func_8002F194(&this->actor, globalCtx)) {
                    this->unk_1E2++;
                } else {
                    func_8002F2F4(&this->actor, globalCtx);
                }
            }
            break;
        case 5:
            if (func_8002F334(&this->actor, globalCtx)) {
                this->unk_1E2--;
            }
            break;
        case 6:
            if (func_8002F334(&this->actor, globalCtx)) {
                func_8002DF54(globalCtx, &this->actor, 7);
                Interface_ChangeAlpha(50);
                this->actor.flags &= ~0x100;
                this->unk_1E2 = 4;
            }
            break;
    }
    func_80038290(globalCtx, &this->actor, &this->unk_200, &this->unk_206, this->actor.posRot2.pos);
}

void EnZl1_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnZl1* this = THIS;

    if ((this->actionFunc != func_80B4B8B4) && (this->actionFunc != func_80B4BC78)) {
        SkelAnime_Update(&this->skelAnime);
    }
    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 5);
    this->actionFunc(this, globalCtx);
    if (this->actionFunc != func_80B4B8B4) {
        Collider_UpdateCylinder(&this->actor, &this->collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
    Math_SmoothStepToS(&this->actor.shape.rot.x, this->actor.posRot.rot.x, 0xA, 0x3E8, 1);
    Math_SmoothStepToS(&this->actor.shape.rot.y, this->actor.posRot.rot.y, 0xA, 0x3E8, 1);
    Math_SmoothStepToS(&this->actor.shape.rot.z, this->actor.posRot.rot.z, 0xA, 0x3E8, 1);
    func_80B4AE18(this);
}

s32 func_80B4C340(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnZl1* this = THIS;

    if ((limbIndex == 4) || (limbIndex == 3) || (limbIndex == 6) || (limbIndex == 5)) {
        *dList = NULL;
    }

    if (limbIndex != 10) {
        if (limbIndex == 17) {
            rot->x += this->unk_200.y;
            rot->y += this->unk_200.z;
            rot->z += this->unk_200.x;
        }
    } else {
        rot->x += this->unk_206.y;
        rot->y += this->unk_206.x;
        rot->z += this->unk_206.z;
    }
    return 0;
}

void func_80B4C400(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    Vec3f vec = { 0.0f, 0.0f, 0.0f };
    EnZl1* this = THIS;

    if (limbIndex == 17) {
        Matrix_MultVec3f(&vec, &this->actor.posRot2.pos);
    }
}

void EnZl1_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnZl1* this = THIS;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_girlB.c", 2011);

    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(this->unk_1F4));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(this->unk_1F8));
    gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(this->unk_1EC));

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          func_80B4C340, func_80B4C400, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_girlB.c", 2046);
}
