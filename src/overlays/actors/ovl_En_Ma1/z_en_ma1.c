/*
 * File: z_en_ma1.c
 * Overlay: En_Ma1
 * Description:
 */

#include "z_en_ma1.h"

#define FLAGS 0x02000039

#define THIS ((EnMa1*)thisx)

void EnMa1_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMa1_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMa1_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMa1_Draw(Actor* thisx, GlobalContext* globalCtx);

u16 EnMa1_GetText(GlobalContext* globalCtx, Actor* this);
s16 func_80AA0778(GlobalContext* globalCtx, Actor* this);

void func_80AA0D88(EnMa1* this, GlobalContext* globalCtx);
void func_80AA0EA0(EnMa1* this, GlobalContext* globalCtx);
void func_80AA0EFC(EnMa1* this, GlobalContext* globalCtx);
void func_80AA0F44(EnMa1* this, GlobalContext* globalCtx);
void func_80AA106C(EnMa1* this, GlobalContext* globalCtx);
void func_80AA10EC(EnMa1* this, GlobalContext* globalCtx);
void func_80AA1150(EnMa1* this, GlobalContext* globalCtx);
void func_80AA11C8(EnMa1* this, GlobalContext* globalCtx);

const ActorInit En_Ma1_InitVars = {
    ACTOR_EN_MA1,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_MA1,
    sizeof(EnMa1),
    (ActorFunc)EnMa1_Init,
    (ActorFunc)EnMa1_Destroy,
    (ActorFunc)EnMa1_Update,
    (ActorFunc)EnMa1_Draw,
};

static ColliderCylinderInit cylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 18, 46, 0, { 0, 0, 0 } },
};

CollisionCheckInfoInit2 D_80AA166C = {
    0x00, 0x0000, 0x0000, 0x0000, 0xFF,
};

struct_D_80AA1678 D_80AA1678[] = {
    { 0x06000820, 1.0f, 0x00, 0.0f },
    { 0x06000820, 1.0f, 0x00, -10.0f },
    { 0x06008D64, 1.0f, 0x00, 0.0f },
    { 0x06008D64, 1.0f, 0x00, -10.0f },
};

Vec3f D_80AA16B8 = { 800.0f, 0.0f, 0.0f };

u32 D_80AA16C4[] = {
    0x06001F18,
    0x06002B18,
    0x06002F18,
};

u32 D_80AA16D0[] = {
    0x06001B18,
    0x06002318,
    0x06002718,
};

extern AnimationHeader D_06000820;
extern SkeletonHeader D_06008460;
extern AnimationHeader D_06008D64;

u16 EnMa1_GetText(GlobalContext* globalCtx, Actor* thisx) {
    u16 faceReaction = Text_GetFaceReaction(globalCtx, 0x17);
    if (faceReaction != 0) {
        return faceReaction;
    }
    if (CHECK_QUEST_ITEM(QUEST_SONG_EPONA)) {
        return 0x204A;
    }
    if (gSaveContext.eventChkInf[1] & 0x40) {
        return 0x2049;
    }
    if (gSaveContext.eventChkInf[1] & 0x20) {
        if ((gSaveContext.infTable[8] & 0x20)) {
            return 0x2049;
        } else {
            return 0x2048;
        }
    }
    if (gSaveContext.eventChkInf[1] & 0x10) {
        return 0x2047;
    }
    if (gSaveContext.eventChkInf[1] & 4) {
        return 0x2044;
    }
    if (gSaveContext.infTable[8] & 0x10) {
        if (gSaveContext.infTable[8] & 0x800) {
            return 0x2043;
        } else {
            return 0x2042;
        }
    }
    return 0x2041;
}

s16 func_80AA0778(GlobalContext* globalCtx, Actor* thisx) {
    s16 ret = 1;
    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 2:
            switch (thisx->textId) {
                case 0x2041:
                    gSaveContext.infTable[8] |= 0x10;
                    gSaveContext.eventChkInf[1] |= 1;
                    ret = 0;
                    break;
                case 0x2043:
                    ret = 1;
                    break;
                case 0x2047:
                    gSaveContext.eventChkInf[1] |= 0x20;
                    ret = 0;
                    break;
                case 0x2048:
                    gSaveContext.infTable[8] |= 0x20;
                    ret = 0;
                    break;
                case 0x2049:
                    gSaveContext.eventChkInf[1] |= 0x40;
                    ret = 0;
                    break;
                case 0x2061:
                    ret = 2;
                    break;
                default:
                    ret = 0;
                    break;
            }
            break;
        case 4:
        case 5:
            if (func_80106BC8(globalCtx) != 0) {
                ret = 2;
            }
            break;
        case 6:
            if (func_80106BC8(globalCtx) != 0) {
                ret = 3;
            }
            break;
        case 0:
        case 1:
        case 3:
        case 7:
        case 8:
        case 9:
            ret = 1;
            break;
    }
    return ret;
}

s32 func_80AA08C4(EnMa1* this, GlobalContext* globalCtx) {
    if ((this->actor.shape.rot.z == 3) && (gSaveContext.sceneSetupIndex == 5)) {
        return 1;
    }
    if (gSaveContext.linkAge != 1) {
        return 0;
    }
    if (((globalCtx->sceneNum == SCENE_MARKET_NIGHT) || (globalCtx->sceneNum == SCENE_MARKET_DAY)) &&
        (!(gSaveContext.eventChkInf[1] & 0x10)) && (!(gSaveContext.infTable[8] & 0x800))) {
        return 1;
    }
    if ((globalCtx->sceneNum == SCENE_SPOT15) && (!(gSaveContext.eventChkInf[1] & 0x10))) {
        if (gSaveContext.infTable[8] & 0x800) {
            return 1;
        } else {
            gSaveContext.infTable[8] |= 0x800;
            return 0;
        }
    }
    if ((globalCtx->sceneNum == SCENE_SOUKO) && (gSaveContext.nightFlag == 1) && (gSaveContext.eventChkInf[1] & 0x10)) {
        return 1;
    }
    if (globalCtx->sceneNum != SCENE_SPOT20) {
        return 0;
    }
    if ((this->actor.shape.rot.z == 3) && (gSaveContext.nightFlag == 0) && (gSaveContext.eventChkInf[1] & 0x10)) {
        return 1;
    }
    return 0;
}

void func_80AA0A0C(EnMa1* this) {
    if (DECR(this->unk_1E2) == 0) {
        this->unk_1E4 += 1;
        if (this->unk_1E4 >= 3) {
            this->unk_1E2 = Math_Rand_S16Offset(0x1E, 0x1E);
            this->unk_1E4 = 0;
        }
    }
}

void func_80AA0A84(EnMa1* this, UNK_TYPE idx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_80AA1678[idx].animation->genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, D_80AA1678[idx].animation, 1.0f, 0.0f, frameCount, D_80AA1678[idx].unk_08,
                         D_80AA1678[idx].transitionRate);
}

void func_80AA0AF4(EnMa1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 phi_a3;

    if ((this->unk_1E8.unk_00 == 0) && (this->skelAnime.animCurrentSeg == &D_06008D64)) {
        phi_a3 = 1;
    } else {
        phi_a3 = 0;
    }

    this->unk_1E8.unk_18 = player->actor.posRot.pos;
    this->unk_1E8.unk_18.y -= -10.0f;

    func_80034A14(&this->actor, &this->unk_1E8, 0, phi_a3);
}

void func_80AA0B74(EnMa1* this) {
    if (this->skelAnime.animCurrentSeg == &D_06008D64) {
        if (this->unk_1E8.unk_00 == 0) {
            if (this->unk_1E0 != 0) {
                this->unk_1E0 = 0;
                func_800F6584(0);
            }
        } else {
            if (this->unk_1E0 == 0) {
                this->unk_1E0 = 1;
                func_800F6584(1);
            }
        }
    }
}

void EnMa1_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnMa1* this = THIS;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 18.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06008460, NULL, NULL, NULL, 0);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &cylinderInit);
    func_80061EFC(&this->actor.colChkInfo, DamageTable_Get(0x16), &D_80AA166C);

    if (!func_80AA08C4(this, globalCtx)) {
        Actor_Kill(&this->actor);
        return;
    }

    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.unk_1F = 6;
    this->unk_1E8.unk_00 = 0;

    if ((!(gSaveContext.eventChkInf[1] & 0x10)) || (CHECK_QUEST_ITEM(QUEST_SONG_EPONA))) {
        this->actionFunc = func_80AA0D88;
        func_80AA0A84(this, 2);
    } else {
        this->actionFunc = func_80AA0F44;
        func_80AA0A84(this, 2);
    }
}

void EnMa1_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnMa1* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80AA0D88(EnMa1* this, GlobalContext* globalCtx) {
    if (this->unk_1E8.unk_00 != 0) {
        if (this->skelAnime.animCurrentSeg != &D_06000820) {
            func_80AA0A84(this, 1);
        }
    } else {
        if (this->skelAnime.animCurrentSeg != &D_06008D64) {
            func_80AA0A84(this, 3);
        }
    }

    if ((globalCtx->sceneNum == SCENE_SPOT15) && (gSaveContext.eventChkInf[1] & 0x10)) {
        Actor_Kill(&this->actor);
    } else if ((!(gSaveContext.eventChkInf[1] & 0x10)) || (CHECK_QUEST_ITEM(QUEST_SONG_EPONA))) {
        if (this->unk_1E8.unk_00 == 2) {
            this->actionFunc = func_80AA0EA0;
            globalCtx->msgCtx.unk_E3E7 = 4;
            globalCtx->msgCtx.msgMode = 0x36;
        }
    }
}

void func_80AA0EA0(EnMa1* this, GlobalContext* globalCtx) {
    if (func_8002F410(&this->actor, globalCtx)) {
        this->actor.attachedA = NULL;
        this->actionFunc = func_80AA0EFC;
    } else {
        func_8002F434(&this->actor, globalCtx, GI_WEIRD_EGG, 120.0f, 10.0f);
    }
}

void func_80AA0EFC(EnMa1* this, GlobalContext* globalCtx) {
    if (this->unk_1E8.unk_00 == 3) {
        this->unk_1E8.unk_00 = 0;
        this->actionFunc = func_80AA0D88;
        gSaveContext.eventChkInf[1] |= 4;
        globalCtx->msgCtx.msgMode = 0x36;
    }
}

void func_80AA0F44(EnMa1* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    if (this->unk_1E8.unk_00 != 0) {
        if (this->skelAnime.animCurrentSeg != &D_06000820) {
            func_80AA0A84(this, 1);
        }
    } else {
        if (this->skelAnime.animCurrentSeg != &D_06008D64) {
            func_80AA0A84(this, 3);
        }
    }

    if (gSaveContext.eventChkInf[1] & 0x40) {
        if (player->stateFlags2 & 0x1000000) {
            player->stateFlags2 |= 0x2000000;
            player->unk_6A8 = &this->actor;
            this->actor.textId = 0x2061;
            func_8010B680(globalCtx, this->actor.textId, 0);
            this->unk_1E8.unk_00 = 1;
            this->actor.flags |= 0x10000;
            this->actionFunc = func_80AA106C;
        } else if (this->actor.xzDistanceFromLink < 30.0f + (f32)this->collider.dim.radius) {
            player->stateFlags2 |= 0x800000;
        }
    }
}

void func_80AA106C(EnMa1* this, GlobalContext* globalCtx) {
    PLAYER->stateFlags2 |= 0x800000;
    if (this->unk_1E8.unk_00 == 2) {
        func_800ED858(2);
        func_8010BD58(globalCtx, 9);
        this->actor.flags &= ~0x10000;
        this->actionFunc = func_80AA10EC;
    }
}

void func_80AA10EC(EnMa1* this, GlobalContext* globalCtx) {
    PLAYER->stateFlags2 |= 0x800000;
    if (func_8010BDBC(&globalCtx->msgCtx) == 7) {
        func_8010BD58(globalCtx, 0x16);
        this->actionFunc = func_80AA1150;
    }
}

void func_80AA1150(EnMa1* this, GlobalContext* globalCtx) {
    PLAYER->stateFlags2 |= 0x800000;
    if (globalCtx->msgCtx.unk_E3EE == 3) {
        globalCtx->nextEntranceIndex = 0x157;
        gSaveContext.nextCutsceneIndex = 0xFFF1;
        globalCtx->fadeTransition = 42;
        globalCtx->sceneLoadFlag = 0x14;
        this->actionFunc = func_80AA11C8;
    }
}

void func_80AA11C8(EnMa1* this, GlobalContext* globalCtx) {
}

void EnMa1_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnMa1* this = THIS;
    s32 pad;

    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    func_80AA0A0C(this);
    this->actionFunc(this, globalCtx);
    if (this->actionFunc != func_80AA11C8) {
        func_800343CC(globalCtx, &this->actor, &this->unk_1E8.unk_00, (f32)this->collider.dim.radius + 30.0f,
                      EnMa1_GetText, func_80AA0778);
    }
    func_80AA0B74(this);
    func_80AA0AF4(this, globalCtx);
}

s32 EnMa1_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnMa1* this = THIS;
    Vec3s vec;

    if ((limbIndex == 2) || (limbIndex == 5)) {
        *dList = NULL;
    }
    if (limbIndex == 15) {
        Matrix_Translate(1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        vec = this->unk_1E8.unk_08;
        Matrix_RotateX((vec.y / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_RotateZ((vec.x / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_Translate(-1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limbIndex == 8) {
        vec = this->unk_1E8.unk_0E;
        Matrix_RotateX((-vec.y / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_RotateZ((-vec.x / 32768.0f) * M_PI, MTXMODE_APPLY);
    }
    return 0;
}

void EnMa1_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    EnMa1* this = THIS;
    Vec3f vec = D_80AA16B8;

    if (limbIndex == 15) {
        Matrix_MultVec3f(&vec, &this->actor.posRot2.pos);
    }
}

void EnMa1_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnMa1* this = THIS;
    Camera* camera;
    f32 someFloat;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ma1.c", 1226);
    camera = ACTIVE_CAM;
    someFloat = Math_Vec3f_DistXZ(&this->actor.posRot.pos, &camera->eye);
    func_800F6268(someFloat, 0x2F);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(D_80AA16C4[this->unk_1E6]));
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AA16D0[this->unk_1E4]));

    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                     EnMa1_OverrideLimbDraw, EnMa1_PostLimbDraw, &this->actor);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ma1.c", 1261);
}
