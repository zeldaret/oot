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
void func_80B4AF18(Actor* thisx, GlobalContext* globalCtx);
void func_80B4B010(Actor* thisx, GlobalContext* globalCtx);
void func_80B4B240(Actor* thisx, GlobalContext* globalCtx);
void func_80B4B8B4(Actor* thisx, GlobalContext* globalCtx);
void func_80B4BBC4(Actor* thisx, GlobalContext* globalCtx);
void func_80B4BC78(Actor* thisx, GlobalContext* globalCtx);
void func_80B4BF2C(Actor* thisx, GlobalContext* globalCtx);

#include "z_en_zl1_cutscene_data.c"

const ActorInit En_Zl1_InitVars = {
    ACTOR_EN_ZL1, ACTORTYPE_NPC, FLAGS, OBJECT_ZL1, sizeof(EnZl1), EnZl1_Init, EnZl1_Destroy, EnZl1_Update, EnZl1_Draw,
};

ColliderCylinderInit D_80B4E5F0 = {
    { COLTYPE_UNK0, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x01, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 20, 46, 0, { 0, 0, 0 } },
};

u32 D_80B4E61C[] = { 0x06007208, 0x06009848, 0x06009C48, 0x06009848 };
u32 D_80B4E62C[] = { 0x06007608 };

typedef struct {
    u8 unk_00[0x3];
} u8_3;

typedef struct {
    u8 unk_00[0xA];
} u8_A;

typedef struct {
    AnimationHeader* unk_00[0xA];
} AH_A;

Vec3f D_80B4E630 = { -460.0f, 118.0f, 0.0f };
Vec3f D_80B4E63C = { -406.0f, 110.0f, 0.0f };
Vec3f D_80B4E648 = { -398.0f, 84.0f, 0.0f };
Vec3f D_80B4E654 = { -427.0f, 108.0, 26.0 };
Vec3f D_80B4E660 = { -340.0f, 108.0f, 98.0f };
Vec3f D_80B4E66C = { -434.0f, 84.0f, 0.0f };

u8_3 D_80B4E678 = { 0, 0, 2 };

AH_A D_80B4E67C = {
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x06012B04, 0x06012118, 0x06010B38,
};

u8_A D_80B4E6A4 = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02,
};

Vec3f D_80B4E6B0 = { -421.0f, 143.0f, -5.0f };
Vec3f D_80B4E6BC = { -512.0f, 105.0f, -4.0f };
Vec3f D_80B4E6C8 = { 0.0f, 0.0f, 0.0f };

AH_A D_80B4E6D4 = {
    0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
    0x00000000, 0x00000000, 0x06012B04, 0x06012118, 0x06010B38,
};

u8_A D_80B4E6FC = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02,
};

Vec3f D_80B4E708 = { 0.0f, 0.0f, 0.0f };
Vec3f D_80B4E714 = { 0.0f, 0.0f, 0.0f };

extern AnimationHeader D_06000438;
extern u32 D_06008848;
extern u32 D_06008C48;
extern SkeletonHeader D_0600F5D8;
extern AnimationHeader D_06010B38;
extern AnimationHeader D_06011348;
extern AnimationHeader D_060116E4;
extern AnimationHeader D_06011B88;
extern AnimationHeader D_06012118;
extern AnimationHeader D_060132D8;
extern AnimationHeader D_060138E0;
extern AnimationHeader D_06013F10;
extern AnimationHeader D_060143A8;

void func_80B4AB40(){};
void func_80B4AB48(){};

void EnZl1_Init(Actor* thisx, GlobalContext* globalCtx) {
    f32 frameCount;
    EnZl1* this = THIS;

    frameCount = SkelAnime_GetFrameCount(&D_06012118.genericHeader);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_0600F5D8, NULL, NULL, NULL, 0);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06012118, 1.0f, 0.0f, frameCount, 0, 0.0f);

    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, thisx, &D_80B4E5F0);
    Actor_SetScale(thisx, 0.01f);
    ActorShape_Init(&thisx->shape, 0.0f, ActorShadow_DrawFunc_Circle, 24.0f);
    thisx->unk_1F = 0;

    if (gSaveContext.sceneSetupIndex >= 4) {
        frameCount = SkelAnime_GetFrameCount(&D_06000438.genericHeader);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06000438, 1.0f, 0.0f, frameCount, 0, 0.0f);
        this->unk_1E6 = 0;
        this->actionFunc = func_80B4BC78;
    } else if ((Flags_GetEventChkInf(9)) && (Flags_GetEventChkInf(0x25)) && (Flags_GetEventChkInf(0x37))) {
        Actor_Kill(thisx);
    } else if (((Flags_GetEventChkInf(9)) && (Flags_GetEventChkInf(0x25))) ||
               ((Flags_GetEventChkInf(9)) && (Flags_GetEventChkInf(0x37)))) {
        frameCount = SkelAnime_GetFrameCount(&D_06000438.genericHeader);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06000438, 1.0f, 0.0f, frameCount, 0, 0.0f);
        thisx->textId = 0x703D;
        this->actionFunc = func_80B4AF18;
    } else if (Flags_GetEventChkInf(0x40)) {
        frameCount = SkelAnime_GetFrameCount(&D_06000438.genericHeader);
        SkelAnime_ChangeAnim(&this->skelAnime, &D_06000438, 1.0f, 0.0f, frameCount, 0, 0.0f);
        thisx->textId = 0x703C;
        this->actionFunc = func_80B4AF18;
    } else {
        thisx->textId = 0xFFFF;
        this->actionFunc = func_80B4B010;
    }
}

void EnZl1_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnZl1* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80B4AE18(EnZl1* this) {
    if ((this->skelAnime.animCurrentSeg == &D_06010B38) && (this->skelAnime.animCurrentFrame < 26.0f)) {
        this->unk_1F4 = &D_06008C48;
        this->unk_1F8 = &D_06008848;
        this->unk_1FC = 2;
        return;
    }

    if (DECR(this->unk_1FC) == 0) {
        this->unk_1FC = Math_Rand_S16Offset(0x1E, 0xA);
    }

    if (this->unk_1FC < 4) {
        this->unk_1FE = this->unk_1FC;
    } else {
        this->unk_1FE = 0;
    }

    this->unk_1F4 = D_80B4E61C[this->unk_1FE];
    this->unk_1F8 = D_80B4E61C[this->unk_1FE];
    this->unk_1EC = D_80B4E62C[this->unk_1F2];
}

void func_80B4AF18(Actor* thisx, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    EnZl1* this = THIS;

    func_80038290(globalCtx, thisx, &this->unk_200, &this->unk_206, thisx->posRot2.pos);

    if (this->unk_1E6 != 0) {
        if (func_8002F334(thisx, globalCtx) != 0) {
            this->unk_1E6 = 0;
        }
    } else {
        if (func_8002F194(thisx, globalCtx)) {
            this->unk_1E6 = 1;
        } else {
            if (thisx->posRot.pos.y <= player->actor.posRot.pos.y) {
                func_8002F2F4(thisx, globalCtx);
            }
        }
    }

    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

#ifdef NON_MATCHING
// regalloc issues with the envCtx.unk_E2 section - using v0 instead of v1
// silly if (rotDiff) line added because it fixes almost every regalloc issue
void func_80B4B010(Actor* thisx, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    EnZl1* this = THIS;
    AnimationHeader* animationHeader;
    s32 pad;
    Vec3f vec1 = D_80B4E630;
    Vec3f vec2 = D_80B4E63C;
    Vec3f playerPos = D_80B4E648;
    s16 rotDiff;

    if (func_8002F194(thisx, globalCtx)) {
        animationHeader = &D_06010B38;
        SkelAnime_ChangeAnim(&this->skelAnime, animationHeader, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&animationHeader->genericHeader), 3, -10.0f);
        this->unk_1E8 = Gameplay_CreateSubCamera(globalCtx);
        Gameplay_ChangeCameraStatus(globalCtx, 0, 1);
        Gameplay_ChangeCameraStatus(globalCtx, this->unk_1E8, 7);
        func_800C0808(globalCtx, this->unk_1E8, player, 0x21);
        globalCtx->envCtx.unk_E2[0] = 0xFF;
        globalCtx->envCtx.unk_E2[1] = 0xFF;
        if (rotDiff) {} // fixes a lot of regalloc issues but is definitely a fake match improvement
        globalCtx->envCtx.unk_E2[2] = 0xFF;
        globalCtx->envCtx.unk_E2[3] = 0x18;
        globalCtx->envCtx.unk_E1 = 1;
        func_800C04D8(globalCtx, this->unk_1E8, &vec1, &vec2);
        func_800C0704(globalCtx, this->unk_1E8, 30.0f);
        func_800B3840(0x20);
        Interface_ChangeAlpha(2);
        player->actor.posRot.pos = playerPos;
        player->actor.speedXZ = 0.0f;
        this->unk_1E2 = 0;
        this->actionFunc = func_80B4B240;
        func_800F5C64(0x51);
    } else {
        rotDiff = ABS(thisx->rotTowardsLinkY - thisx->shape.rot.y);
        if (rotDiff < 0x238E) {
            if (player->actor.posRot.pos.y < thisx->posRot.pos.y) {
                // nothing
            } else {
                func_8002F2F4(thisx, globalCtx);
            }
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/func_80B4B010.s")
#endif

#ifdef NON_MATCHING
// stack issue in cases that use msgCtx->choiceIndex - something is wonky with msgCtx
/*void func_80B4B240(Actor* thisx, GlobalContext* globalCtx) {
    Vec3f sp74 = D_80B4E654;
    Vec3f sp68 = D_80B4E660;
    s32 pad;
    Vec3f sp58 = D_80B4E66C;
    u8_3 sp54 = D_80B4E678;
    EnZl1* this = THIS;
    Player* player = PLAYER;
    AnimationHeader* animationHeader;
    MessageContext* msgCtx = &globalCtx->msgCtx;
    f32 frameCount;
    s32 sp3C = 0;

    switch (this->unk_1E2) {
        case 0:
            switch ((s16)this->skelAnime.animCurrentFrame) {
                case 0xE:
                    this->unk_1E4 = 0;
                    break;
                case 0xF:
                    if (DECR(this->unk_1E4) != 0) {
                        this->skelAnime.animCurrentFrame = 15.0f;
                    }
                    break;
                case 0x40:
                    animationHeader = &D_06011348;
                    sp3C = 1;
                    thisx->textId = 0x702E;
                    func_8010B680(globalCtx, thisx->textId, 0);
                    this->unk_1E2 += 1;
                    break;
            }
            break;
        case 1:
            if ((func_8010BDBC(msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
                globalCtx->envCtx.unk_E1 = 0;
                func_800C04D8(globalCtx, this->unk_1E8, &sp74, &sp68);
                func_800C0704(globalCtx, this->unk_1E8, 25.0f);
                player->actor.posRot.pos = sp58;
                thisx->textId = 0x702F;
                func_8010B720(globalCtx, thisx->textId);
                this->unk_1E2 += 1;
            }
            break;
        case 2:
            if ((func_8010BDBC(msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
                if (msgCtx->choiceIndex == 0) {
                    animationHeader = &D_06013F10;
                    sp3C = 2;
                    this->unk_1E2 += 1;
                } else {
                    animationHeader = &D_060116E4;
                    sp3C = 2;
                    this->unk_1E2 = 6;
                }
            }
            break;
        case 3:
            frameCount = SkelAnime_GetFrameCount(&D_06013F10.genericHeader);
            if (this->skelAnime.animCurrentFrame == frameCount) {
                animationHeader = &D_060143A8;
                sp3C = 1;
                thisx->textId = 0x7032;
                func_8010B720(globalCtx, thisx->textId);
                this->unk_1E2 += 1;
            }
            break;
        case 4:
            if ((func_8010BDBC(msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
                if (msgCtx->choiceIndex == 0) {
                    animationHeader = &D_060132D8;
                    sp3C = 2;
                    this->unk_1E2 = 9;
                } else {
                    thisx->textId = 0x7034;
                    func_8010B720(globalCtx, thisx->textId);
                    this->unk_1E2 += 1;
                }
            }
            break;
        case 5:
            if ((func_8010BDBC(msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
                thisx->textId = 0x7033;
                func_8010B720(globalCtx, thisx->textId);
                this->unk_1E2 -= 1;
            }
            break;
        case 6:
            frameCount = SkelAnime_GetFrameCount(&D_060116E4.genericHeader);
            if (this->skelAnime.animCurrentFrame == frameCount) {
                animationHeader = &D_06011B88;
                sp3C = 1;
                thisx->textId = 0x7031;
                func_8010B720(globalCtx, thisx->textId);
                this->unk_1E2 += 1;
            }
            break;
        case 7:
            if ((func_8010BDBC(msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
                thisx->textId = 0x7030;
                func_8010B720(globalCtx, thisx->textId);
                this->unk_1E2 += 1;
            }
            break;
        case 8:
            if ((func_8010BDBC(msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
                if (msgCtx->choiceIndex == 0) {
                    animationHeader = &D_060138E0;
                    sp3C = 2;
                    this->unk_1E2 = 3;
                } else {
                    thisx->textId = 0x7031;
                    func_8010B720(globalCtx, thisx->textId);
                    this->unk_1E2 -= 1;
                }
            }
            break;
        case 9:
            frameCount = SkelAnime_GetFrameCount(&D_060132D8.genericHeader);
            if (this->skelAnime.animCurrentFrame == frameCount) {
                animationHeader = &D_06000438;
                sp3C = 1;
                globalCtx->csCtx.segment = D_80B4C5D0;
                gSaveContext.cutsceneTrigger = 1;
                this->actionFunc = func_80B4B8B4;
                this->unk_1E2 += 1;
            }
            break;
    }
    if (sp3C != 0) {
        SkelAnime_ChangeAnim(&this->skelAnime, animationHeader, 1.0f, 0.0f,
                             SkelAnime_GetFrameCount(&animationHeader->genericHeader), sp54.unk_00[sp3C], -10.0f);
    }
    func_80038290(globalCtx, thisx, &this->unk_200, &this->unk_206, thisx->posRot2.pos);
}*/
#else
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Zl1/func_80B4B240.s")
#endif

void func_80B4B7F4(CsCmdActorAction* actorAction, Vec3f* pos) {
    pos->x = actorAction->startPos.x;
    pos->y = actorAction->startPos.y;
    pos->z = actorAction->startPos.z;
}

void func_80B4B834(CsCmdActorAction* actorAction, Vec3f* pos) {
    pos->x = actorAction->endPos.x;
    pos->y = actorAction->endPos.y;
    pos->z = actorAction->endPos.z;
}

void func_80B4B874(EnZl1* this, GlobalContext* globalCtx) {
    this->skelAnime.flags |= 1;
    SkelAnime_LoadAnimationType5(globalCtx, &this->actor, &this->skelAnime, 1.0f);
}

void func_80B4B8B4(Actor* thisx, GlobalContext* globalCtx) {
    AH_A spB0 = D_80B4E67C;
    u8_A spA4 = D_80B4E6A4;
    Vec3f sp98 = D_80B4E6B0;
    Vec3f sp8C = D_80B4E6BC;
    EnZl1* this = THIS;
    f32 actionLength;
    CsCmdActorAction* actorAction;
    Vec3f sp74;
    Vec3f sp68;
    Vec3f velocity = D_80B4E6C8;
    s32 pad;
    f32 frameCount;
    Vec3f sp48;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    func_80B4B874(thisx, globalCtx);
    if (globalCtx->csCtx.state == 0) {
        this->actionFunc = func_80B4BBC4;
        return;
    }

    actorAction = globalCtx->csCtx.npcActions[0];
    if (actorAction != NULL) {
        func_80B4B7F4(actorAction, &sp74);
        func_80B4B834(actorAction, &sp68);
        if (this->unk_1E6 == 0) {
            sp48 = sp74;
            thisx->initPosRot.pos = sp48;
            thisx->posRot.pos = sp48;
        }
        if (this->unk_1E6 != actorAction->action) {
            frameCount = SkelAnime_GetFrameCount(&spB0.unk_00[actorAction->action]->genericHeader);
            SkelAnime_ChangeAnim(&this->skelAnime, spB0.unk_00[actorAction->action], 1.0f, 0.0f, frameCount,
                                 spA4.unk_00[actorAction->action], -10.0f);
            this->unk_1E6 = actorAction->action;
        }
        thisx->velocity = velocity;
        if (globalCtx->csCtx.frames < actorAction->endFrame) {
            actionLength = actorAction->endFrame - actorAction->startFrame;
            thisx->velocity.x = (sp68.x - sp74.x) / actionLength;
            thisx->velocity.y = (sp68.y - sp74.y) / actionLength;
            thisx->velocity.y += thisx->gravity;
            if (thisx->velocity.y < thisx->minVelocityY) {
                thisx->velocity.y = thisx->minVelocityY;
            }
            thisx->velocity.z = (sp68.z - sp74.z) / actionLength;
        }
        func_80038290(globalCtx, thisx, &this->unk_200, &this->unk_206, thisx->posRot2.pos);
        func_800C04D8(globalCtx, this->unk_1E8, &sp98, &sp8C);
        func_800C0704(globalCtx, this->unk_1E8, 70.0f);
    }
}

void func_80B4BBC4(Actor* thisx, GlobalContext* globalCtx) {
    EnZl1* this = THIS;
    f32 frameCount = SkelAnime_GetFrameCount(&D_06000438.genericHeader);
    Player* player = PLAYER;

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000438, 1.0f, 0.0f, frameCount, 0, 0.0f);
    func_8002DF54(globalCtx, thisx, 1);
    func_8002F7DC(&player->actor, 0x6836);
    thisx->textId = 0x7039;
    func_8010B680(globalCtx, thisx->textId, 0);
    this->unk_1E2 = 0;
    this->actionFunc = func_80B4BF2C;
}

void func_80B4BC78(Actor* thisx, GlobalContext* globalCtx) {
    AH_A sp90 = D_80B4E6D4;
    u8_A sp84 = D_80B4E6FC;
    EnZl1* this = THIS;
    f32 actionLength;
    Vec3f sp70;
    Vec3f sp64;
    Vec3f velocity = D_80B4E708;
    CsCmdActorAction* actorAction;
    s32 pad;
    f32 frameCount;
    Vec3f sp40;

    if (SkelAnime_FrameUpdateMatrix(&this->skelAnime) != 0) {
        if (this->skelAnime.animCurrentSeg == &D_06010B38) {
            frameCount = SkelAnime_GetFrameCount(&D_06011348.genericHeader);
            SkelAnime_ChangeAnim(&this->skelAnime, &D_06011348, 1.0f, 0.0f, frameCount, 0, -10.0f);
        }
    }
    func_80B4B874(this, globalCtx);
    actorAction = globalCtx->csCtx.npcActions[0];
    if (actorAction != NULL) {
        func_80B4B7F4(actorAction, &sp70);
        func_80B4B834(actorAction, &sp64);
        if (this->unk_1E6 == 0) {
            sp40 = sp70;
            thisx->initPosRot.pos = sp40;
            thisx->posRot.pos = sp40;
        }

        if (this->unk_1E6 != actorAction->action) {
            frameCount = SkelAnime_GetFrameCount(&sp90.unk_00[actorAction->action]->genericHeader);
            SkelAnime_ChangeAnim(&this->skelAnime, sp90.unk_00[actorAction->action], 1.0f, 0.0f, frameCount,
                                 sp84.unk_00[actorAction->action], -10.0f);
            this->unk_1E6 = actorAction->action;
        }
        thisx->velocity = velocity;
        if (globalCtx->csCtx.frames < actorAction->endFrame) {
            actionLength = actorAction->endFrame - actorAction->startFrame;
            thisx->velocity.x = (sp64.x - sp70.x) / actionLength;
            thisx->velocity.y = (sp64.y - sp70.y) / actionLength;
            thisx->velocity.y += thisx->gravity;
            if (thisx->velocity.y < thisx->minVelocityY) {
                thisx->velocity.y = thisx->minVelocityY;
            }
            thisx->velocity.z = (sp64.z - sp70.z) / actionLength;
        }
    }
}

void func_80B4BF2C(Actor* thisx, GlobalContext* globalCtx) {
    MessageContext* msgCtx = &globalCtx->msgCtx;
    EnZl1* this = THIS;
    Player* player = PLAYER;

    switch (this->unk_1E2) {
        case 0:
            if ((func_8010BDBC(msgCtx) == 4) && (func_80106BC8(globalCtx) != 0)) {
                if (msgCtx->choiceIndex == 0) {
                    thisx->textId = 0x703B;
                    func_8010B720(globalCtx, thisx->textId);
                    this->unk_1E2 += 1;
                } else {
                    thisx->textId = 0x703A;
                    func_8010B720(globalCtx, thisx->textId);
                    this->unk_1E2 = 0;
                }
            }
            break;
        case 1:
            if ((func_8010BDBC(msgCtx) == 5) && (func_80106BC8(globalCtx) != 0)) {
                thisx->textId = 0xFFFF;
                globalCtx->unk_11D5C(globalCtx, thisx);
                func_8002F434(thisx, globalCtx, GI_LETTER_ZELDA, 120.0f, 10.0f);
                globalCtx->msgCtx.msgMode = 0x36;
                globalCtx->msgCtx.unk_E3E7 = 4;
                this->unk_1E2 += 1;
            } else {
                break;
            }
        case 2:
            if (func_8002F410(thisx, globalCtx) != 0) {
                func_800C078C(globalCtx, 0, this->unk_1E8);
                Gameplay_ChangeCameraStatus(globalCtx, 0, 7);
                Gameplay_ClearCamera(globalCtx, this->unk_1E8);
                thisx->attachedA = NULL;
                this->unk_1E2 += 1;
            } else {
                func_8002F434(thisx, globalCtx, 0xB, 120.0f, 10.0f);
            }
            break;
        case 3:
            if ((func_8010BDBC(msgCtx) == 6) && (func_80106BC8(globalCtx) != 0)) {
                thisx->textId = 0x703C;
                func_8010B720(globalCtx, thisx->textId);
                Flags_SetEventChkInf(0x40);
                this->unk_1E2 = 6;
            }
            break;
        case 4:
            if (player->actor.posRot.pos.y < thisx->posRot.pos.y) {
                break;
            } else {
                if (func_8002F194(thisx, globalCtx) != 0) {
                    this->unk_1E2 += 1;
                } else {
                    func_8002F2F4(thisx, globalCtx);
                }
            }
            break;
        case 5:
            if (func_8002F334(thisx, globalCtx) != 0) {
                this->unk_1E2 -= 1;
            }
            break;
        case 6:
            if (func_8002F334(thisx, globalCtx) != 0) {
                func_8002DF54(globalCtx, thisx, 7);
                Interface_ChangeAlpha(0x32);
                thisx->flags &= ~0x100;
                this->unk_1E2 = 4;
            }
            break;
    }
    func_80038290(globalCtx, thisx, &this->unk_200, &this->unk_206, thisx->posRot2.pos);
}

void EnZl1_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnZl1* this = THIS;

    if ((this->actionFunc != func_80B4B8B4) && (this->actionFunc != func_80B4BC78)) {
        SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    }
    func_8002E4B4(globalCtx, thisx, 0.0f, 0.0f, 0.0f, 5);
    this->actionFunc(thisx, globalCtx);
    if (this->actionFunc != func_80B4B8B4) {
        Collider_CylinderUpdate(thisx, &this->collider);
        CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    }
    Math_SmoothScaleMaxMinS(&thisx->shape.rot.x, thisx->posRot.rot.x, 0xA, 0x3E8, 1);
    Math_SmoothScaleMaxMinS(&thisx->shape.rot.y, thisx->posRot.rot.y, 0xA, 0x3E8, 1);
    Math_SmoothScaleMaxMinS(&thisx->shape.rot.z, thisx->posRot.rot.z, 0xA, 0x3E8, 1);
    func_80B4AE18(this);
}

s32 func_80B4C340(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnZl1* this = (EnZl1*)thisx;

    if ((limbIndex == 4) || (limbIndex == 3) || (limbIndex == 6) || (limbIndex == 5)) {
        *dList = NULL;
    }

    if (limbIndex != 0xA) {
        if (limbIndex == 0x11) {
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

void func_80B4C400(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* this) {
    Vec3f vec = D_80B4E714;

    if (limbIndex == 0x11) {
        Matrix_MultVec3f(&vec, &this->posRot2.pos);
    }
}

void EnZl1_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnZl1* this = THIS;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_girlB.c", 2011);

    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(this->unk_1F4));
    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(this->unk_1F8));
    gSPSegment(gfxCtx->polyOpa.p++, 0x0A, SEGMENTED_TO_VIRTUAL(this->unk_1EC));

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                     func_80B4C340, func_80B4C400, thisx);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_girlB.c", 2046);
}
