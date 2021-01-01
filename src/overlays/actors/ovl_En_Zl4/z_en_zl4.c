/*
 * File: z_en_zl4.c
 * Overlay: ovl_En_Zl4
 * Description: Child Princess Zelda
 */

#include "z_en_zl4.h"

#define FLAGS 0x00000019

#define THIS ((EnZl4*)thisx)

void EnZl4_Init(Actor* thisx, GlobalContext* globalCtx);
void EnZl4_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnZl4_Update(Actor* thisx, GlobalContext* globalCtx);
void EnZl4_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80B5DE1C(EnZl4* this, GlobalContext* globalCtx);
void func_80B5E090(EnZl4* this, GlobalContext* globalCtx);
void func_80B5E108(EnZl4* this, GlobalContext* globalCtx);

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

ColliderCylinderInit D_80B5E780 = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 10, 44, 0, { 0, 0, 0 } },
};

CollisionCheckInfoInit2 D_80B5E7AC = { 0, 0, 0, 0, 0xFF };

struct_80034EC0_Entry D_80B5E7B8[] = {
    { 0x06000654, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x0600E5C8, 1.0f, 0.0f, -1.0f, 0x02, -1.0f },
    { 0x0600EBC4, 1.0f, 0.0f, -1.0f, 0x00, -1.0f }, { 0x06010DF8, 1.0f, 0.0f, -1.0f, 0x02, -1.0f },
    { 0x06011248, 1.0f, 0.0f, -1.0f, 0x00, -1.0f }, { 0x06011698, 1.0f, 0.0f, -1.0f, 0x00, -1.0f },
    { 0x06011B34, 1.0f, 0.0f, -1.0f, 0x00, -8.0f }, { 0x060125E4, 1.0f, 0.0f, -1.0f, 0x02, 0.0f },
    { 0x06012E58, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x06013280, 1.0f, 0.0f, -1.0f, 0x02, -1.0f },
    { 0x06013628, 1.0f, 0.0f, -1.0f, 0x00, -1.0f }, { 0x06013A50, 1.0f, 0.0f, -1.0f, 0x02, -1.0f },
    { 0x06013EA0, 1.0f, 0.0f, -1.0f, 0x00, -1.0f }, { 0x06015F14, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { 0x060169B4, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x06016D08, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { 0x0601726C, 1.0f, 0.0f, -1.0f, 0x02, -1.0f }, { 0x06017818, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
    { 0x0601805C, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x06018898, 1.0f, 0.0f, -1.0f, 0x02, -1.0f },
    { 0x0601910C, 1.0f, 0.0f, -1.0f, 0x00, -1.0f }, { 0x06019600, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { 0x0601991C, 1.0f, 0.0f, -1.0f, 0x02, -1.0f }, { 0x0601A2FC, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { 0x0601AAE0, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x0601AE88, 1.0f, 0.0f, -1.0f, 0x00, -1.0f },
    { 0x0601B874, 1.0f, 0.0f, -1.0f, 0x02, 0.0f },  { 0x0601BCF0, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },
    { 0x0601C494, 1.0f, 0.0f, -1.0f, 0x00, -1.0f }, { 0x0601C7B0, 1.0f, 0.0f, -1.0f, 0x00, -1.0f },
    { 0x0601CE08, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x0600F0A4, 1.0f, 0.0f, -1.0f, 0x02, 0.0f },
    { 0x0600F894, 1.0f, 0.0f, -1.0f, 0x00, 0.0f },  { 0x06000654, 1.0f, 0.0f, -1.0f, 0x00, -8.0f },
};

#include "z_en_zl4_cutscene_data.c"

extern UNK_TYPE D_02000104;
extern UNK_TYPE D_02000444;
extern UNK_TYPE D_02003994;
extern FlexSkeletonHeader D_0600E038;
extern UNK_TYPE D_0600F0A4;
extern UNK_TYPE D_0600F894;
extern AnimationHeader D_06010DF8;
extern UNK_TYPE D_060125E4;
extern UNK_TYPE D_06012E58;
extern UNK_TYPE D_06015F14;
extern UNK_TYPE D_060169B4;
extern UNK_TYPE D_06016D08;
extern UNK_TYPE D_0601805C;
extern UNK_TYPE D_06018898;
extern UNK_TYPE D_0601910C;
extern UNK_TYPE D_0601A2FC;
extern UNK_TYPE D_0601AAE0;
extern UNK_TYPE D_0601B874;
extern UNK_TYPE D_0601BCF0;
extern UNK_TYPE D_0601CE08;

void func_80B5B7B0(GlobalContext* globalCtx, s16 arg1) {
    Camera* activeCam = ACTIVE_CAM;

    Camera_ChangeSetting(activeCam, 0x21);
    activeCam->at = D_80B5EAE8[arg1].at;
    activeCam->eye = activeCam->eyeNext = D_80B5EAE8[arg1].eye;
    activeCam->roll = D_80B5EAE8[arg1].roll;
    activeCam->fov = D_80B5EAE8[arg1].fov;
}

void func_80B5B888(GlobalContext* globalCtx, s16 arg1) {
    Camera* activeCam = ACTIVE_CAM;
    Player* player = PLAYER;

    Camera_ChangeSetting(activeCam, 0x25);
    Camera_ResetAnim(activeCam);
    Camera_SetCSParams(activeCam, D_80B5FA90[arg1].atPoints, D_80B5FA90[arg1].eyePoints, player,
                       D_80B5FA90[arg1].relativeToPlayer);
}

u16 EnZl4_GetText(GlobalContext* globalCtx, Actor* thisx) {
    u16 faceReaction = Text_GetFaceReaction(globalCtx, 0x16);
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
        itemCount += 1;
    }
    if (CHECK_QUEST_ITEM(QUEST_ZORA_SAPPHIRE)) {
        itemCount += 1;
    }

    if (itemCount >= 2) {
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

void func_80B5B9E8(EnZl4* this) {
    if (this->unk_210 > 0) {
        this->unk_210--;
    } else {
        this->unk_210 = 0;
    }
    if (this->unk_210 < 3) {
        this->unk_20A = this->unk_20B = this->unk_210;
    }
    switch (this->unk_20D) {
        case 0:
            if (this->unk_210 == 0) {
                this->unk_210 = Rand_S16Offset(30, 30);
            }
            break;
        case 1:
            if (this->unk_210 == 0) {
                this->unk_20A = this->unk_20B = 2;
            }
            break;
        case 2:
            if (this->unk_210 == 0) {
                this->unk_20A = 5;
                this->unk_20B = 6;
            }
            break;
        case 3:
            if (this->unk_210 == 0) {
                this->unk_20A = 6;
                this->unk_20B = 5;
            }
            break;
        case 4:
            if (this->unk_210 == 0) {
                this->unk_20A = this->unk_20B = 3;
            }
            break;
        case 5:
            if (this->unk_210 == 0) {
                this->unk_20A = this->unk_20B = 4;
            }
            break;
        case 6:
            if (this->unk_210 >= 3) {
                this->unk_210 = 0;
            }
            break;
    }
    switch (this->unk_20E) {
        case 1:
            this->unk_20C = 1;
            break;
        case 2:
            this->unk_20C = 2;
            break;
        case 3:
            this->unk_20C = 3;
            break;
        default:
            this->unk_20C = 0;
            break;
    }
}

void func_80B5BB38(EnZl4* this, GlobalContext* globalCtx) {
    this->skelAnime.moveFlags |= 1;
    AnimationContext_SetMoveActor(globalCtx, &this->actor, &this->skelAnime, 1.0f);
}

void func_80B5BB78(EnZl4* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->unk_1E0.unk_18 = player->actor.posRot.pos;
    func_80034A14(&this->actor, &this->unk_1E0, 2, 2);
}

void func_80B5BBC0(CsCmdActorAction *action, Vec3f *vec) {
    vec->x = action->startPos.x;
    vec->y = action->startPos.y;
    vec->z = action->startPos.z;
}

s32 func_80B5BC00(EnZl4* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    Actor* playerx = &PLAYER->actor;
    s16 rotY;

    func_8002DF54(globalCtx, &this->actor, 8);
    playerx->posRot.pos = this->actor.posRot.pos;
    rotY = this->actor.shape.rot.y;
    playerx->posRot.pos.x += 56.0f * Math_SinS(rotY);
    playerx->posRot.pos.z += 56.0f * Math_CosS(rotY);

    player->linearVelocity = playerx->speedXZ = 0.0f;

    func_80B5B888(globalCtx, 5);
    ShrinkWindow_SetVal(0x20);
    Interface_ChangeAlpha(2);
    this->unk_214 = 0;
    return 1;
}

s32 func_80B5BCDC(EnZl4* this) {
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
    func_80034EC0(&this->skelAnime, D_80B5E7B8, 0x15);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80B5E780);
    func_80061EFC(&this->actor.colChkInfo, NULL, &D_80B5E7AC);
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.unk_1F = 6;
    this->actor.textId = -1;
    this->unk_20D = this->unk_20E = 0;

    if (gSaveContext.sceneSetupIndex >= 4) {
        func_80034EC0(&this->skelAnime, D_80B5E7B8, 0);
        this->actionFunc = func_80B5E108;
    } else if (gSaveContext.eventChkInf[4] & 1) {
        func_80034EC0(&this->skelAnime, D_80B5E7B8, 0);
        this->actionFunc = func_80B5E090;
    } else {
        if (gSaveContext.entranceIndex != 0x5F0) {
            func_80034EC0(&this->skelAnime, D_80B5E7B8, 0x15);
            this->unk_209 = 0;
            this->unk_208 = 0;
        } else {
            func_80B5BC00(this, globalCtx);
            func_80034EC0(&this->skelAnime, D_80B5E7B8, 0);
            this->unk_209 = 5;
            this->unk_208 = 0;
        }
        this->actionFunc = func_80B5DE1C;
    }
}

void EnZl4_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnZl4* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

s32 func_80B5BF90(EnZl4* this, s32 arg1) {
    if (!Animation_OnFrame(&this->skelAnime, this->skelAnime.endFrame)) {
        return 0;
    }
    func_80034EC0(&this->skelAnime, D_80B5E7B8, arg1);
    return 1;
}

void func_80B5BFE4(EnZl4* this) {
    f32 temp_f0 = this->skelAnime.startFrame;

    this->skelAnime.startFrame = this->skelAnime.endFrame;
    this->skelAnime.curFrame = this->skelAnime.endFrame;
    this->skelAnime.endFrame = temp_f0;
    this->skelAnime.playSpeed = -1.0f;
}

s32 func_80B5C008(EnZl4 *this, GlobalContext *globalCtx) {
    Player *player = PLAYER;
    Actor* playerx = &PLAYER->actor;
    s16 rotY;
    s16 yawDiff;
    s16 absYawDiff;

    if (!func_8002F194(this, globalCtx)) {
        yawDiff = (f32)this->actor.yawTowardsLink - this->actor.shape.rot.y;
        absYawDiff = (yawDiff >= 0) ? yawDiff : -yawDiff;
        if ((playerx->posRot.pos.y != this->actor.posRot.pos.y) || (absYawDiff >= 0x3FFC)) {
            return 0;
        } else {
            func_8002F2CC(this, globalCtx, this->collider.dim.radius + 60.0f);
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

s32 func_80B5C160(EnZl4 *this, GlobalContext *globalCtx) {
    switch (this->unk_208) {
        case 0:
            if (this->skelAnime.curFrame == 50.0f) {
                Audio_PlayActorSound2(this, 0x686A);
            }
            if (!func_80B5BF90(this, 4)) {
                break;
            } else {
                func_8010B680(globalCtx, 0x702E, NULL);
                this->unk_208++;
            }
            break;
        case 1:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80B5B7B0(globalCtx, 1);
                func_8010B680(globalCtx, 0x702F, NULL);
                this->unk_214 = 0;
                this->unk_208++;
            }
            break;
        case 2:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_02003994);
                gSaveContext.cutsceneTrigger = 1;
                func_80B5B888(globalCtx, 0);
                globalCtx->msgCtx.msgMode = 0x37;
                this->unk_214 = 0;
                this->unk_208++;
            }
            break;
        case 3:
            this->unk_214++;
            if (this->unk_214 >= 0x2D) {
                func_8010B680(globalCtx, 0x70F9, NULL);
                this->unk_208++;
            }
            break;
        case 4:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80B5B888(globalCtx, 1);
                globalCtx->msgCtx.msgMode = 0x37;
                this->unk_214 = 0;
                this->unk_208++;
            }
            break;
        case 5:
            this->unk_214++;
            if (this->unk_214 >= 10) {
                func_8010B680(globalCtx, 0x70FA, NULL);
                this->unk_208++;
            }
            break;
        case 6:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80B5B7B0(globalCtx, 2);
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 0x16);
                this->unk_20E = 0;
                this->unk_214 = 0;
                this->unk_208++;
                func_8010B680(globalCtx, 0x70FB, NULL);
            }
            break;
    }
    return (this->unk_208 == 7) ? 1 : 0;
}

s32 func_80B5C458(EnZl4 *this, GlobalContext *globalCtx) {
    switch (this->unk_208) {
        case 0:
            if (func_80B5BF90(this, 25)) {
                this->unk_208++;
            }
        case 1:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80B5B7B0(globalCtx, 3);
                globalCtx->msgCtx.msgMode = 0x37;
                this->unk_212 = 40;
                this->unk_208 = 2;
            }
            break;
        case 2:
            if (DECR(this->unk_212) == 0) {
                func_8010B680(globalCtx, 0x7030, NULL);
                this->unk_208++;
            }
            break;
        case 3:
            if (!((func_8010BDBC(&globalCtx->msgCtx) == 4) && func_80106BC8(globalCtx))) {
                break;
            } else if (globalCtx->msgCtx.choiceIndex == 0) {
                func_80B5B7B0(globalCtx, 4);
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 0x1C);
                this->unk_210 = 0;
                this->unk_20D = 5;
                this->unk_20E = 1;
                func_8010B680(globalCtx, 0x7032, NULL);
                this->unk_208 = 7;
            } else {
                func_80B5B7B0(globalCtx, 2);
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 9);
                this->unk_20E = 2;
                func_8010B680(globalCtx, 0x7031, NULL);
                this->unk_208++;
            }
            break;
        case 4:
            if (this->skelAnime.curFrame == 16.0f) {
                Audio_PlayActorSound2(this, 0x686B);
            }
            if (func_80B5BF90(this, 10)) {
                this->unk_208++;
            }
        case 5:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                globalCtx->msgCtx.msgMode = 0x37;
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 9);
                this->unk_20E = 2;
                func_80B5BFE4(this);
                this->unk_208 = 6;
            }
            break;
        case 6:
            this->unk_20E = 0;
            func_80B5B7B0(globalCtx, 3);
            func_8010B680(globalCtx, 0x7030, NULL);
            this->unk_208 = 12;
            break;
        case 12:
            if (func_80B5BF90(this, 25)) {
                this->unk_208 = 13;
            }
        case 13:
            if (!((func_8010BDBC(&globalCtx->msgCtx) == 4) && func_80106BC8(globalCtx))) {
                break;
            } else if (globalCtx->msgCtx.choiceIndex == 0) {
                func_80B5B7B0(globalCtx, 4);
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 0x1C);
                this->unk_210 = 0;
                this->unk_20D = 5;
                this->unk_20E = 1;
                func_8010B680(globalCtx, 0x7032, NULL);
                this->unk_208 = 7;
            } else {
                func_80B5B7B0(globalCtx, 2);
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 9);
                this->unk_20E = 2;
                func_8010B680(globalCtx, 0x7031, NULL);
                this->unk_208 = 4;
            }
            break;
        case 7:
            if (this->skelAnime.curFrame == 17.0f) {
                Audio_PlayActorSound2(this, 0x686D);
            }
            if (func_80B5BF90(this, 29)) {
                this->unk_208++;
            }
        case 8:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80B5B888(globalCtx, 2);
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 0);
                this->unk_210 = 0;
                this->unk_20D = 0;
                this->unk_20E = 0;
                func_8010B680(globalCtx, 0x70FC, NULL);
                this->unk_208 = 9;
            }
            break;
        case 9:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80B5B7B0(globalCtx, 5);
                func_8010B680(globalCtx, 0x70FD, NULL);
                this->unk_208++;
            }
            break;
        case 10:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 5);
                this->unk_20D = 6;
                this->unk_20E = 3;
                func_8010B680(globalCtx, 0x70FE, NULL);
                this->unk_208++;
            }
            break;
    }
    return (this->unk_208 == 11) ? 1 : 0;
}

s32 func_80B5C984(EnZl4 *this, GlobalContext *globalCtx) {
    switch(this->unk_208) {
        case 0:
            if (func_80B5BF90(this, 4)) {
                this->unk_208++;
            }
            break;
        case 1:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80B5B7B0(globalCtx, 6);
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 1);
                this->unk_210 = 11;
                this->unk_20D = 5;
                this->unk_20E = 0;
                globalCtx->msgCtx.msgMode = 0x37;
                func_8010B680(globalCtx, 0x70FF, NULL);
                this->unk_208++;
            }
            break;
        case 2:
            if (func_80B5BF90(this, 2)) {
                this->unk_208++;
            }
        case 3:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 0x10);
                this->unk_210 = 0;
                this->unk_20D = 0;
                globalCtx->msgCtx.msgMode = 0x37;
                this->unk_208 = 4;
            }
            break;
        case 4:
            if (func_80B5BF90(this, 17)) {
                func_8010B680(globalCtx, 0x2073, NULL);
                this->unk_208++;
            }
            break;
        case 5:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80B5B888(globalCtx, 3);
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 0);
                globalCtx->msgCtx.msgMode = 0x37;
                this->unk_214 = 0;
                this->unk_208 = 6;
            }
            break;
        case 6:
            this->unk_214++;
            if (this->unk_214 >= 15) {
                func_8010B680(globalCtx, 0x2074, NULL);
                this->unk_208++;
            }
            break;
        case 7:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 6);
                this->unk_20E = 1;
                func_8010B680(globalCtx, 0x2075, NULL);
                this->unk_208++;
            }
            break;
        case 8:
            if (func_80B5BF90(this, 25)) {
                this->unk_208++;
            }
        case 9:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_8010B680(globalCtx, 0x7033, NULL);
                this->unk_208 = 10;
            }
            break;
        case 10:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 4) && func_80106BC8(globalCtx)) {
                if (globalCtx->msgCtx.choiceIndex == 0) {
                    func_80B5B888(globalCtx, 4);
                    func_80034EC0(&this->skelAnime, D_80B5E7B8, 0x21);
                    this->unk_20E = 0;
                    globalCtx->msgCtx.msgMode = 0x37;
                    this->unk_214 = 0;
                    this->unk_208 = 15;
                } else {
                    func_80B5B7B0(globalCtx, 6);
                    globalCtx->msgCtx.msgMode = 0x37;
                    this->unk_212 = 20;
                    this->unk_208++;
                    this->skelAnime.playSpeed = 0.0f;
                }
            }
            break;
        case 11:
            if (DECR(this->unk_212) == 0) {
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 0xB);
                this->unk_210 = 11;
                this->unk_20D = 3;
                this->unk_20E = 2;
                func_8010B680(globalCtx, 0x7034, NULL);
                this->unk_208++;
            }
            break;
        case 12:
            if (this->skelAnime.curFrame == 5.0f) {
                Audio_PlayActorSound2(this, 0x686C);
            }
            if (func_80B5BF90(this, 12)) {
                this->unk_208++;
            }
        case 13:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 6);
                this->unk_210 = 3;
                this->unk_20D = 0;
                this->unk_20E = 1;
                globalCtx->msgCtx.msgMode = 0x37;
                this->unk_208 = 14;
            }
            break;
        case 14:
            if (func_80B5BF90(this, 25)) {
                func_8010B680(globalCtx, 0x7033, NULL);
                this->unk_208 = 10;
            }
            break;
        case 15:
            this->unk_214++;
            if (this->unk_214 >= 30) {
                func_8010B680(globalCtx, 0x7035, NULL);
                this->unk_208++;
            }
            break;
        case 16:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                globalCtx->msgCtx.msgMode = 0x37;
                this->unk_208++;
            }
        case 17:
            this->unk_214++;
            if (this->unk_214 == 130) {
                globalCtx->msgCtx.msgMode = 0x37;
                globalCtx->nextEntranceIndex = 0xA0;
                gSaveContext.nextCutsceneIndex = 0xFFF7;
                globalCtx->sceneLoadFlag = 0x14;
                globalCtx->fadeTransition = 3;
            }
            break;
    }
    if ((this->unk_214 == 17) && (this->unk_214 > 130)) {
        return 1;
    }
    return 0;
}

s32 func_80B5CF70(EnZl4 *this, GlobalContext *globalCtx) {
    Camera* activeCam = ACTIVE_CAM;

    switch(this->unk_208) {
        case 0:
            this->unk_214++;
            if (this->unk_214 >= 60) {
                func_8010B680(globalCtx, 0x7037, NULL);
                this->unk_208++;
            }
            break;
        case 1:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80B5B7B0(globalCtx, 7);
                func_8010B680(globalCtx, 0x2076, NULL);
                this->unk_208++;
            }
            break;
        case 2:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80B5B888(globalCtx, 6);
                globalCtx->msgCtx.msgMode = 0x37;
                this->unk_208++;
            }
            break;
        case 3:
            if (activeCam->animState == 2) {
                func_8010B680(globalCtx, 0x2077, NULL);
                this->unk_208++;
            }
            break;
        case 4:
            if (!((func_8010BDBC(&globalCtx->msgCtx) == 4) && func_80106BC8(globalCtx))) {
                break;
            } else if (globalCtx->msgCtx.choiceIndex == 0) {
                func_80B5B7B0(globalCtx, 8);
                func_8010B680(globalCtx, 0x7005, NULL);
                this->unk_208 = 9;
            } else {
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 5);
                this->unk_20E = 3;
                func_8010B680(globalCtx, 0x7038, NULL);
                this->unk_208++;
                Audio_PlayActorSound2(this, 0x6869);
            }
            break;
        case 5:
            if (func_80B5BF90(this, 4)) {
                this->unk_208++;
            }
        case 6:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 0x21);
                this->unk_20E = 0;
                func_8010B680(globalCtx, 0x7037, NULL);
                this->unk_208++;
            }
            break;
        case 7:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_8010B680(globalCtx, 0x2076, NULL);
                this->unk_208++;
            }
            break;
        case 8:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_8010B680(globalCtx, 0x2077, NULL);
                this->unk_208 = 4;
            }
            break;
        case 9:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 0x1A);
                func_8010B680(globalCtx, 0x2078, NULL);
                this->unk_208++;
            }
            break;
        case 10:
            if (func_80B5BF90(this, 27)) {
                this->unk_208++;
            }
        case 11:
            if (!((func_8010BDBC(&globalCtx->msgCtx) == 4) && func_80106BC8(globalCtx))) {
                break;
            } else if (globalCtx->msgCtx.choiceIndex == 0) {
                globalCtx->msgCtx.msgMode = 0x37;
                this->unk_208 = 13;
            } else {
                func_8010B680(globalCtx, 0x700B, NULL);
                this->unk_208 = 12;
            }
            break;
        case 12:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                globalCtx->msgCtx.msgMode = 0x37;
                this->unk_208 = 13;
            }
            break;
    }
    return (this->unk_208 == 0xD) ? 1 : 0;
}

s32 func_80B5D3CC(EnZl4 *this, GlobalContext *globalCtx) {
    switch(this->unk_208) {
        case 0:
            func_80B5B888(globalCtx, 7);
            globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_02000444);
            gSaveContext.cutsceneTrigger = 1;
            this->unk_208++;
            break;
        case 1:
            if (globalCtx->csCtx.state != 0) {
                if (globalCtx->csCtx.frames == 90) {
                    globalCtx->csCtx.state = 3;
                }
            } else {
                globalCtx->csCtx.segment = SEGMENTED_TO_VIRTUAL(&D_02000104);
                gSaveContext.cutsceneTrigger = 1;
                this->unk_208++;
                func_8002DF54(globalCtx, this, 8);
            }
            break;
        case 2:
            if (globalCtx->csCtx.state != 0) {
                if (globalCtx->csCtx.frames == 209) {
                    globalCtx->csCtx.state = 3;
                }
            } else {
                func_800AA000(0.0f, 0xA0, 0xA, 0x28);
                func_8002DF54(globalCtx, this, 1);
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 0x1E);
                func_80B5B7B0(globalCtx, 0xB);
                func_8010B680(globalCtx, 0x7039, NULL);
                this->unk_208++;
            }
            break;
        case 3:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                globalCtx->msgCtx.msgMode = 0x37;
                this->unk_208++;
            }
            break;
    }
    return (this->unk_208 == 4) ? 1 : 0;
}

s32 func_80B5D610(EnZl4 *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;
    s16 sp22;

    switch(this->unk_208) {
        case 0:
            player->actor.posRot.pos = this->actor.posRot.pos;
            sp22 = this->actor.shape.rot.y - 0x3FFC;
            player->actor.posRot.pos.x += 34.0f * Math_SinS(sp22);
            player->actor.posRot.pos.z += 34.0f * Math_CosS(sp22);
            func_80B5B888(globalCtx, 8);
            this->unk_210 = 0;
            this->unk_20D = 4;
            this->unk_20E = 2;
            this->unk_214 = 0;
            this->unk_208++;
            func_8010B680(globalCtx, 0x2079, NULL);
        case 1:
            this->unk_214++;
            if (this->unk_214 >= 20) {
                this->unk_208++;
            }
            break;
        case 2:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80B5B888(globalCtx, 9);
                globalCtx->msgCtx.msgMode = 0x37;
                this->unk_214 = 0;
                this->unk_208++;
            }
            break;
        case 3:
            this->unk_214++;
            if (this->unk_214 >= 20) {
                func_8010B680(globalCtx, 0x207A, NULL);
                this->unk_208++;
            }
            break;
        case 4:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80B5B7B0(globalCtx, 12);
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 0x17);
                this->unk_210 = 0;
                this->unk_20D = 0;
                this->unk_20E = 3;
                globalCtx->msgCtx.msgMode = 0x37;
                this->unk_208++;
            }
            break;
        case 5:
            if (func_80B5BF90(this, 24)) {
                func_8010B680(globalCtx, 0x207B, NULL);
                this->unk_208++;
            }
            break;
        case 6:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_8010B680(globalCtx, 0x703A, NULL);
                this->unk_208++;
            }
            break;
        case 7:
            if (!((func_8010BDBC(&globalCtx->msgCtx) == 4) && func_80106BC8(globalCtx))) {
                break;
            } else if (globalCtx->msgCtx.choiceIndex == 0) {
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 0x1F);
                this->unk_210 = 0xB;
                this->unk_20D = 5;
                this->unk_20E = 1;
                func_8010B680(globalCtx, 0x703B, NULL);
                this->unk_208 = 0xB;
            } else {
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 0xD);
                this->unk_210 = 0xB;
                this->unk_20D = 2;
                this->unk_20E = 2;
                globalCtx->msgCtx.msgMode = 0x37;
                this->unk_208++;
            }
            break;
        case 8:
            if (func_80B5BF90(this, 15)) {
                this->unk_210 = 3;
                this->unk_20D = 0;
                this->unk_20E = 3;
                func_8010B680(globalCtx, 0x7073, NULL);
                this->unk_208++;
            }
            break;
        case 9:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 0xE);
                globalCtx->msgCtx.msgMode = 0x37;
                this->unk_208++;
            }
            break;
        case 10:
            if (func_80B5BF90(this, 24)) {
                func_8010B680(globalCtx, 0x703A, NULL);
                this->unk_208 = 7;
            }
            break;
        case 11:
            if (func_80B5BF90(this, 32)) {
                this->unk_208++;
            }
        case 12:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                globalCtx->msgCtx.msgMode = 0x37;
                this->unk_208 = 13;
            }
            break;
    }
    return (this->unk_208 == 13) ? 1 : 0;
}

s32 func_80B5DAD8(EnZl4 *this, GlobalContext *globalCtx) {
    switch (this->unk_208) {
        case 0:
            func_80034EC0(&this->skelAnime, D_80B5E7B8, 0x12);
            this->unk_210 = 0;
            this->unk_20D = 0;
            this->unk_20E = 2;
            func_80B5B888(globalCtx, 10);
            this->unk_214 = 0;
            this->unk_208++;
        case 1:
            this->unk_214++;
            if (this->unk_214 >= 10) {
                func_8010B680(globalCtx, 0x7123, NULL);
                this->unk_208++;
            }
            break;
        case 2:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_80B5B7B0(globalCtx, 0xD);
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 0x13);
                this->unk_210 = 0;
                this->unk_20D = 0;
                this->unk_20E = 3;
                func_8010B680(globalCtx, 0x207C, NULL);
                this->unk_208++;
            }
            break;
        case 3:
            if (func_80B5BF90(this, 20)) {
                this->unk_208++;
            }
        case 4:
            if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx)) {
                func_8010B680(globalCtx, 0x207D, NULL);
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 7);
                this->unk_210 = 0;
                this->unk_20D = 0;
                this->unk_20E = 0;
                this->unk_208 = 5;
                this->unk_20F = this->unk_216 = 0;
            }
            break;
        case 5:
            if (func_80B5BF90(this, 8)) {
                this->unk_208++;
            }
        case 6:
            if (!((func_8010BDBC(&globalCtx->msgCtx) == 5) && func_80106BC8(globalCtx))) {
                break;
            } else {
                Camera_ChangeSetting(globalCtx->cameraPtrs[globalCtx->activeCamera], 1);
                this->unk_208 = 7;
                globalCtx->talkWithPlayer(globalCtx, this);
                func_8002F434(this, globalCtx, 0xB, fabsf(this->actor.xzDistFromLink) + 1.0f, fabsf(this->actor.yDistFromLink) + 1.0f);
                globalCtx->msgCtx.unk_E3E7 = 4;
                globalCtx->msgCtx.msgMode = 0x36;
            }
            break;
        case 7:
            if (Actor_HasParent(this, globalCtx)) {
                func_80034EC0(&this->skelAnime, D_80B5E7B8, 0);
                this->unk_208++;
            } else {
                func_8002F434(this, globalCtx, 0xB, fabsf(this->actor.xzDistFromLink) + 1.0f, fabsf(this->actor.yDistFromLink) + 1.0f);
            }
            // no break here is required for matching
    }
    return (this->unk_208 == 8) ? 1 : 0;
}

void func_80B5DE1C(EnZl4 *this, GlobalContext *globalCtx) {
    Player *player = PLAYER;

    switch(this->unk_209) {
        case 0:
            if (func_80B5C008(this, globalCtx)) {
                this->unk_208 = 0;
                this->unk_209++;
            }
            break;
        case 1:
            func_80034EC0(&this->skelAnime, D_80B5E7B8, 3);
            this->unk_210 = 0;
            this->unk_20D = 0;
            this->unk_20E = 3;
            func_800F5C64(0x51);
            func_80B5B7B0(globalCtx, 0);
            Interface_ChangeAlpha(2);
            ShrinkWindow_SetVal(0x20);
            this->unk_208 = 0;
            this->unk_209++;
            break;
        case 2:
            if (func_80B5C160(this, globalCtx)) {
                this->unk_208 = 0;
                this->unk_209++;
            }
            break;
        case 3:
            if (func_80B5C458(this, globalCtx)) {
                this->unk_208 = 0;
                this->unk_209++;
            }
            break;
        case 4:
            if (func_80B5C984(this, globalCtx)) {
                this->unk_208 = 0;
                this->unk_209++;
            }
            break;
        case 5:
            if (func_80B5CF70(this, globalCtx)) {
                this->unk_208 = 0;
                this->unk_209++;
            }
            break;
        case 6:
            if (func_80B5D3CC(this, globalCtx)) {
                this->unk_208 = 0;
                this->unk_209++;
            }
            break;
        case 7:
            if (func_80B5D610(this, globalCtx)) {
                this->unk_208 = 0;
                this->unk_209++;
            }
            break;
        case 8:
            if (func_80B5DAD8(this, globalCtx)) {
                func_8002DF54(globalCtx, &this->actor, 7);
                gSaveContext.unk_13EE = 0x32;
                gSaveContext.eventChkInf[4] |= 1;
                this->actionFunc = func_80B5E090;
            }
            break;
    }
    this->unk_1E0.unk_18 = player->actor.posRot.pos;
    func_80034A14(&this->actor, &this->unk_1E0, 2, (this->unk_209 == 6) ? 2 : 1);
    if (func_80B5BCDC(this)) {
        func_80B5BB38(this, globalCtx);
    }
}

void func_80B5E090(EnZl4* this, GlobalContext* globalCtx) {
    func_800343CC(globalCtx, &this->actor, &this->unk_1E0.unk_00, this->collider.dim.radius + 60.0f, EnZl4_GetText,
                  func_80B5B9B0);
    func_80B5BB78(this, globalCtx);
}

void func_80B5E108(EnZl4* this, GlobalContext* globalCtx) {
    s32 sp48[] = { 0, 0, 0, 0, 0, 0, 0, 26, 21, 3 };
    CsCmdActorAction* sp44;
    Vec3f sp38;

    if (SkelAnime_Update(&this->skelAnime) && (this->skelAnime.animation == &D_06010DF8)) {
        func_80034EC0(&this->skelAnime, D_80B5E7B8, 4);
    }
    if (func_80B5BCDC(this) != 0) {
        func_80B5BB38(this, globalCtx);
    }
    if (globalCtx->csCtx.frames == 0x64) {
        this->unk_20D = 2;
    }
    if (globalCtx->csCtx.frames == 0x1C2) {
        this->unk_210 = 3;
        this->unk_20D = 0;
        this->unk_20E = 3;
    }
    sp44 = globalCtx->csCtx.npcActions[0];
    if (sp44 != NULL) {
        func_80B5BBC0(sp44, &sp38);
        if (this->unk_216 == 0) {
            this->actor.posRot.pos = this->actor.initPosRot.pos = sp38;
        }
        if (this->unk_216 != sp44->action) {
            func_80034EC0(&this->skelAnime, D_80B5E7B8, sp48[sp44->action]);
            this->unk_216 = sp44->action;
        }
        this->actor.velocity.x = 0.0f;
        this->actor.velocity.y = 0.0f;
        this->actor.velocity.z = 0.0f;
    }
}

void EnZl4_Update(Actor* thisx, GlobalContext* globalCtx) {
    s32 pad;
    EnZl4* this = THIS;

    if (this->actionFunc != func_80B5E108) {
        SkelAnime_Update(&this->skelAnime);
    }
    func_80B5B9E8(this);
    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    this->actionFunc(this, globalCtx);
    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
}

s32 func_80B5E364(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnZl4* this = THIS;
    Vec3s sp1C;

    if (limbIndex == 17) {
        sp1C = this->unk_1E0.unk_08;
        Matrix_Translate(900.0f, 0.0f, 0.0f, 1);
        Matrix_RotateX((sp1C.y / 32768.0f) * 3.1415927f, 1);
        Matrix_RotateZ((sp1C.x / 32768.0f) * 3.1415927f, 1);
        Matrix_Translate(-900.0f, 0.0f, 0.0f, 1);
    }
    if (limbIndex == 10) {
        sp1C = this->unk_1E0.unk_0E;
        Matrix_RotateY((sp1C.y / 32768.0f) * 3.1415927f, 1);
        Matrix_RotateX((sp1C.x / 32768.0f) * 3.1415927f, 1);
    }
    if ((limbIndex >= 3) && (limbIndex < 7)) {
        *dList = NULL;
    }
    return 0;
}

void func_80B5E4F0(struct GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    Vec3f sp1C = { 0.0f, 0.0f, 0.0f };
    EnZl4* this = THIS;

    if (limbIndex == 17) {
        Matrix_MultVec3f(&sp1C, &this->actor.posRot2.pos);
    }
}

void EnZl4_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnZl4* this = THIS;
    Gfx* sp74[] = { 0x060046F0, 0x06004AF0, 0x06004EF0, 0x060052F0 };
    Gfx* sp58[] = {
        0x06002AF0, 0x06002EF0, 0x060032F0, 0x060036F0, 0x06003AF0, 0x06003EF0, 0x060042F0,
    };

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_zl4.c", 0x7DC);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(sp58[this->unk_20B]));
    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(sp58[this->unk_20A]));
    gSPSegment(POLY_OPA_DISP++, 0x0A, SEGMENTED_TO_VIRTUAL(sp74[this->unk_20C]));
    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          func_80B5E364, func_80B5E4F0, this);
    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_zl4.c", 0x7FB);
}
