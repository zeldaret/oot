/*
 * File: z_en_ma3.c
 * Overlay: En_Ma3
 * Description: Adult Malon (Ranch)
 */

#include "z_en_ma3.h"

#define FLAGS 0x00000039

#define THIS ((EnMa3*)thisx)

void EnMa3_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMa3_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMa3_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMa3_Draw(Actor* thisx, GlobalContext* globalCtx);

u16 func_80AA2AA0(GlobalContext* globalCtx, Actor* this);
s16 func_80AA2BD4(GlobalContext* globalCtx, Actor* this);

void func_80AA2E54(EnMa3* this, GlobalContext* globalCtx);
s32 func_80AA2EC8(EnMa3* this, GlobalContext* globalCtx);
s32 func_80AA2F28(EnMa3* this);
void func_80AA2F80(EnMa3* this);
void func_80AA3004(EnMa3* this, s32 arg1);
void func_80AA3200(EnMa3* this, GlobalContext* globalCtx);

const ActorInit En_Ma3_InitVars = {
    ACTOR_EN_MA3,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_MA2,
    sizeof(EnMa3),
    (ActorFunc)EnMa3_Init,
    (ActorFunc)EnMa3_Destroy,
    (ActorFunc)EnMa3_Update,
    (ActorFunc)EnMa3_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 18, 46, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 0x00, 0x0000, 0x0000, 0x0000, 0xFF };

static struct_D_80AA1678 D_80AA3848[] = {
    { 0x060007D4, 1.0f, 0x00, 0.0f }, { 0x060007D4, 1.0f, 0x00, -10.0f }, { 0x060093BC, 1.0f, 0x00, 0.0f },
    { 0x06009EE0, 1.0f, 0x00, 0.0f }, { 0x06009EE0, 1.0f, 0x00, -10.0f },
};

static Vec3f D_80AA3898 = { 900.0f, 0.0f, 0.0f };

static UNK_PTR D_80AA38A4[] = {
    0x06002970,
    0x06003570,
    0x06003770,
};

static UNK_PTR D_80AA38B0[] = {
    0x06002570,
    0x06002C70,
    0x06003070,
};

extern u32 D_06005420;
extern SkeletonHeader D_06008D90;
extern AnimationHeader D_060093BC;
extern AnimationHeader D_06009EE0;

u16 func_80AA2AA0(GlobalContext* globalCtx, Actor* thisx) {
    Player* player = PLAYER;
    s16* timer1ValuePtr; // weirdness with this necessary to match

    if (!(gSaveContext.infTable[11] & 0x100)) {
        return 0x2000;
    }
    timer1ValuePtr = &gSaveContext.timer1Value;
    if (gSaveContext.eventInf[0] & 0x400) {
        gSaveContext.timer1Value = gSaveContext.timer1Value;
        thisx->flags |= 0x10000;
        if (gSaveContext.timer1Value >= 0xD3) {
            return 0x208E;
        }
        if ((gSaveContext.unk_EC4 == 0) || (gSaveContext.unk_EC4 >= 0xB4)) {
            gSaveContext.unk_EC4 = 0xB4;
            gSaveContext.timer1Value = *timer1ValuePtr;
        }
        if (!(gSaveContext.eventChkInf[1] & 0x4000) && (gSaveContext.timer1Value < 0x32)) {
            return 0x208F;
        } else if (gSaveContext.timer1Value < gSaveContext.unk_EC4) {
            return 0x2012;
        } else {
            return 0x2004;
        }
    }
    if ((!(player->stateFlags1 & 0x800000)) &&
        (Actor_FindNearby(globalCtx, thisx, ACTOR_EN_HORSE, 1, 1200.0f) == NULL)) {
        return 0x2001;
    }
    if (!(gSaveContext.infTable[11] & 0x200)) {
        return 0x2002;
    } else {
        return 0x2003;
    }
}

s16 func_80AA2BD4(GlobalContext* globalCtx, Actor* thisx) {
    s16 ret = 1;

    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 5:
            if (func_80106BC8(globalCtx) != 0) {
                globalCtx->nextEntranceIndex = 0x157;
                gSaveContext.nextCutsceneIndex = 0xFFF0;
                globalCtx->fadeTransition = 0x26;
                globalCtx->sceneLoadFlag = 0x14;
                gSaveContext.eventInf[0] |= 0x400;
                gSaveContext.timer1State = 0xF;
            }
            break;
        case 4:
            if (func_80106BC8(globalCtx) != 0) {
                gSaveContext.infTable[11] |= 0x200;
                if (globalCtx->msgCtx.choiceIndex == 0) {
                    if (gSaveContext.eventChkInf[1] & 0x4000) {
                        func_8010B720(globalCtx, 0x2091);
                    } else if (gSaveContext.unk_EC4 == 0) {
                        func_8010B720(globalCtx, 0x2092);
                    } else {
                        func_8010B720(globalCtx, 0x2090);
                    }
                }
            }
            break;
        case 2:
            switch (thisx->textId) {
                case 0x2000:
                    gSaveContext.infTable[11] |= 0x100;
                    ret = 0;
                    break;
                case 0x208F:
                    gSaveContext.eventChkInf[1] |= 0x4000;
                case 0x2004:
                case 0x2012:
                    if (gSaveContext.unk_EC4 > gSaveContext.timer1Value) {
                        gSaveContext.unk_EC4 = gSaveContext.timer1Value;
                    }
                case 0x208E:
                    gSaveContext.eventInf[0] &= ~0x400;
                    thisx->flags &= ~0x10000;
                    ret = 0;
                    gSaveContext.timer1State = 0xA;
                    break;
                case 0x2002:
                    gSaveContext.infTable[11] |= 0x200;
                case 0x2003:
                    if (!(gSaveContext.eventInf[0] & 0x400)) {
                        ret = 0;
                    }
                    break;
                default:
                    ret = 0;
            }
            break;
        case 0:
        case 1:
        case 3:
        case 6:
        case 7:
        case 8:
        case 9:
            break;
    }
    return ret;
}

void func_80AA2E54(EnMa3* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s16 phi_a3;

    if ((this->unk_1E0.unk_00 == 0) && (this->skelAnime.animCurrentSeg == &D_06009EE0)) {
        phi_a3 = 1;
    } else {
        phi_a3 = 0;
    }

    this->unk_1E0.unk_18 = player->actor.posRot.pos;
    this->unk_1E0.unk_14 = 0.0f;
    func_80034A14(&this->actor, &this->unk_1E0, 0, phi_a3);
}

s32 func_80AA2EC8(EnMa3* this, GlobalContext* globalCtx) {
    if (gSaveContext.linkAge == 1) {
        return 2;
    }
    if (!(gSaveContext.eventChkInf[1] & 0x100)) {
        return 2;
    }
    if (gSaveContext.eventInf[0] & 0x400) {
        return 1;
    }
    return 0;
}

s32 func_80AA2F28(EnMa3* this) {
    if (this->skelAnime.animCurrentSeg != &D_06009EE0) {
        return 0;
    }
    if (this->unk_1E0.unk_00 != 0) {
        return 0;
    }
    this->unk_20C = 0;
    if (this->unk_20E != 2) {
        return 0;
    }
    this->unk_210 = 2;
    return 1;
}

void func_80AA2F80(EnMa3* this) {
    if ((!func_80AA2F28(this)) && (DECR(this->unk_20C) == 0)) {
        this->unk_20E += 1;
        if (this->unk_20E >= 3) {
            this->unk_20C = Math_Rand_S16Offset(0x1E, 0x1E);
            this->unk_20E = 0;
        }
    }
}

void func_80AA3004(EnMa3* this, s32 idx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_80AA3848[idx].animation->genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, D_80AA3848[idx].animation, 1.0f, 0.0f, frameCount, D_80AA3848[idx].unk_08,
                         D_80AA3848[idx].transitionRate);
}

void EnMa3_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnMa3* this = THIS;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 18.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06008D90, NULL, 0, 0, 0);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    func_80061EFC(&this->actor.colChkInfo, DamageTable_Get(0x16), &sColChkInfoInit);

    switch (func_80AA2EC8(this, globalCtx)) {
        case 0:
            func_80AA3004(this, 0);
            this->actionFunc = func_80AA3200;
            break;
        case 1:
            func_80AA3004(this, 0);
            this->actionFunc = func_80AA3200;
            break;
        case 2:
            Actor_Kill(&this->actor);
            return;
    }

    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    Actor_SetScale(&this->actor, 0.01f);
    this->unk_1E0.unk_00 = (u16)0;
}

void EnMa3_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnMa3* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80AA3200(EnMa3* this, GlobalContext* globalCtx) {
    if (this->unk_1E0.unk_00 == 2) {
        this->actor.flags &= ~0x10000;
        this->unk_1E0.unk_00 = 0;
    }
}

void EnMa3_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnMa3* this = THIS;
    s32 pad;

    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    func_80AA2F80(this);
    this->actionFunc(this, globalCtx);
    func_80AA2E54(this, globalCtx);
    func_800343CC(globalCtx, &this->actor, &this->unk_1E0.unk_00, (f32)this->collider.dim.radius + 150.0f,
                  func_80AA2AA0, func_80AA2BD4);
    if (this->unk_1E0.unk_00 == 0) {
        if (this->unk_20A != 0) {
            func_800F6584(0);
            this->unk_20A = 0;
        }
    } else if (this->unk_20A == 0) {
        func_800F6584(1);
        this->unk_20A = 1;
    }
}

s32 EnMa3_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, Actor* thisx) {
    EnMa3* this = THIS;
    Vec3s vec;

    if ((limbIndex == 3) || (limbIndex == 6)) {
        *dList = NULL;
    }
    if (limbIndex == 18) {
        Matrix_Translate(1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        vec = this->unk_1E0.unk_08;
        Matrix_RotateX((vec.y / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_RotateZ((vec.x / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_Translate(-1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limbIndex == 11) {
        vec = this->unk_1E0.unk_0E;
        Matrix_RotateY((-vec.y / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_RotateX((-vec.x / 32768.0f) * M_PI, MTXMODE_APPLY);
    }
    if ((limbIndex == 11) || (limbIndex == 12) || (limbIndex == 15)) {
        rot->y += Math_Sins(this->unk_212[limbIndex].y) * 200.0f;
        rot->z += Math_Coss(this->unk_212[limbIndex].z) * 200.0f;
    }
    return 0;
}

void EnMa3_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, Actor* thisx) {
    EnMa3* this = THIS;
    Vec3f vec = D_80AA3898;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ma3.c", 927);

    if (limbIndex == 18) {
        Matrix_MultVec3f(&vec, &thisx->posRot2.pos);
    }
    if ((limbIndex == 14) && (this->skelAnime.animCurrentSeg == &D_060093BC)) {
        gSPDisplayList(gfxCtx->polyOpa.p++, &D_06005420);
    }

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ma3.c", 950);
}

void EnMa3_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnMa3* this = THIS;
    Camera* camera;
    f32 someFloat;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[5];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ma3.c", 978);
    camera = globalCtx->cameraPtrs[globalCtx->activeCamera];
    someFloat = Math_Vec3f_DistXZ(&this->actor.posRot.pos, &camera->eye);
    func_800F6268(someFloat, 0x2F);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(D_80AA38A4[this->unk_210]));
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AA38B0[this->unk_20E]));

    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                     EnMa3_OverrideLimbDraw, EnMa3_PostLimbDraw, &this->actor);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ma3.c", 1013);
}
