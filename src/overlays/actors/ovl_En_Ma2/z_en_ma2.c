#include "z_en_ma2.h"

#define FLAGS 0x02000039

void EnMa2_Init(EnMa2* this, GlobalContext* globalCtx);
void EnMa2_Destroy(EnMa2* this, GlobalContext* globalCtx);
void EnMa2_Update(EnMa2* this, GlobalContext* globalCtx);
void EnMa2_Draw(EnMa2* this, GlobalContext* globalCtx);

u16 func_80AA19A0(GlobalContext* globalCtx, EnMa2* this);
s16 func_80AA1A38(GlobalContext* globalCtx, EnMa2* this);

void func_80AA1AE4(EnMa2* this, GlobalContext* globalCtx);
s32 func_80AA1C68(EnMa2* this);
void func_80AA1CC0(EnMa2* this);
void func_80AA1DB4(EnMa2* this, GlobalContext* globalCtx);
void func_80AA2018(EnMa2* this, GlobalContext* globalCtx);
void func_80AA204C(EnMa2* this, GlobalContext* globalCtx);
void func_80AA20E4(EnMa2* this, GlobalContext* globalCtx);
void func_80AA21C8(EnMa2* this, GlobalContext* globalCtx);

const ActorInit En_Ma2_InitVars = {
    ACTOR_EN_MA2,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_MA2,
    sizeof(EnMa2),
    (ActorFunc)EnMa2_Init,
    (ActorFunc)EnMa2_Destroy,
    (ActorFunc)EnMa2_Update,
    (ActorFunc)EnMa2_Draw,
};

ColliderCylinderInit D_80AA2820 = {
    0x0A, 0x00,       0x00, 0x39, 0x20,   0x01,   0x00,       0x00,   0x00,   0x00,   0x00,
    0x00, 0x00000000, 0x00, 0x00, 0x00,   0x00,   0x00000000, 0x00,   0x00,   0x00,   0x00,
    0x00, 0x00,       0x01, 0x00, 0x0012, 0x002E, 0x0000,     0x0000, 0x0000, 0x0000,
};

Sub98Init5 D_80AA284C = { 0x00, 0x0000, 0x0000, 0x0000, 0xFF, };

struct_D_80AA1678 D_80AA2858[] = {
    { 0x060007D4, 1.0f, 0x00, 0.0f, },
    { 0x060007D4, 1.0f, 0x00, -10.0f, },
    { 0x060093BC, 1.0f, 0x00, 0.0f, },
    { 0x06009EE0, 1.0f, 0x00, 0.0f, },
    { 0x06009EE0, 1.0f, 0x00, -10.0f, },
};

Vec3f D_80AA28A8 = { 900.0f, 0.0f, 0.0f };

u32 D_80AA28B4[] = {
    0x06002970,
    0x06003570,
    0x06003770,
};
u32 D_80AA28C0[] = {
    0x06002570,
    0x06002C70,
    0x06003070,
};
s32 D_80AA28CC = 0;

extern u32 D_06005420;
extern AnimationHeader D_06008D90;
extern AnimationHeader D_060093BC;
extern AnimationHeader D_06009EE0;

u16 func_80AA19A0(GlobalContext* globalCtx, EnMa2* this) {
    u16 faceReaction = Text_GetFaceReaction(globalCtx, 23);
    if (faceReaction != 0) {
        return faceReaction;
    }
    if (gSaveContext.eventChkInf[1] & 0x100) {
        return 0x2056;
    }
    if (gSaveContext.nightFlag == 1) {
        if (gSaveContext.infTable[8] & 0x1000) {
            return 0x2052;
        } else if (gSaveContext.infTable[8] & 0x4000) {
            return 0x2051;
        } else {
            return 0x2050;
        }
    }
    return 0x204C;
}

s16 func_80AA1A38(GlobalContext* globalCtx, EnMa2* this) {
    s16 ret = 1;

    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 2:
            switch (this->actor.textId) {
                case 0x2051:
                    gSaveContext.infTable[8] |= 0x1000;
                    ret = 2;
                    break;
                case 0x2053:
                    gSaveContext.infTable[8] |= 0x2000;
                    ret = 0;
                    break;
                default:
                    ret = 0;
                    break;
            }
            break;
        case 0:
        case 1:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 9:
            break;
    }
    return ret;
}

void func_80AA1AE4(EnMa2* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;
    s32 phi_a3;

    if ((this->unk_1E0.unk_00 == 0) && (this->skelAnime.animCurrentSeg == &D_06009EE0)) {
        phi_a3 = 1;
    } else {
        phi_a3 = 0;
    }

    this->unk_1E0.unk_18 = player->actor.posRot.pos;
    this->unk_1E0.unk_14 = 0.0f;

    func_80034A14(&this->actor, &this->unk_1E0, 0, phi_a3);
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/func_80AA1B58.s")
/*
s32 func_80AA1B58(EnMa2 *this, GlobalContext *globalCtx) {
    if (gSaveContext.linkAge == 1) {
        return 0;
    }

    if (!(gSaveContext.eventChkInf[1] & 0x100)) {
        switch (globalCtx->sceneNum) {
            case SCENE_MALON_STABLE:
                if ((gSaveContext.nightFlag == 0) && (this->actor.shape.rot.z == 5)) {
                    return 1;
                }
                break;
            case SCENE_SPOT20:
                if ((gSaveContext.nightFlag == 1) && (this->actor.shape.rot.z == 6)) {
                    return 2;
                }
                break;
        }
    } else {
        if (globalCtx->sceneNum == SCENE_SPOT20) {
            if (this->actor.shape.rot.z == 7) {
                if (gSaveContext.nightFlag == 0) {
                    return 3;
                }
            } else if (this->actor.shape.rot.z == 8) {
                if (gSaveContext.nightFlag == 1) {
                    return 3;
                }
            }
        }
    }
    return 0;
}*/

s32 func_80AA1C68(EnMa2* this) {
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

void func_80AA1CC0(EnMa2* this) {
    if ((!func_80AA1C68(this)) && (DECR(this->unk_20C) == 0)) {
        this->unk_20E += 1;
        if (this->unk_20E >= 3) {
            this->unk_20C = Math_Rand_S16Offset(0x1E, 0x1E);
            this->unk_20E = 0;
        }
    }
}

void func_80AA1D44(EnMa2 *this, s32 idx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_80AA2858[idx].animation->genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, D_80AA2858[idx].animation, 1.0f, 0.0f, frameCount, D_80AA2858[idx].unk_08,
                         D_80AA2858[idx].transitionRate);
}

void func_80AA1DB4(EnMa2* this, GlobalContext* globalCtx) {
    if (this->skelAnime.animCurrentSeg == &D_06009EE0) {
        if (this->unk_1E0.unk_00 == 0) {
            if (this->unk_20A != 0) {
                func_800F6584(0, this);
                this->unk_20A = 0;
            }
        } else {
            if (this->unk_20A == 0) {
                func_800F6584(1, this);
                this->unk_20A = 1;
            }
        }
    }
}

void EnMa2_Init(EnMa2 *this, GlobalContext *globalCtx) {
    ColliderCylinderMain* collider;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 18.0f);
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06008D90, NULL, NULL, NULL, 0);
    collider = &this->collider;
    ActorCollider_AllocCylinder(globalCtx, collider);
    ActorCollider_InitCylinder(globalCtx, collider, &this->actor, &D_80AA2820);
    func_80061EFC(&this->actor.sub_98, CollisionBtlTbl_Get(0x16), &D_80AA284C);

    switch (func_80AA1B58(this, globalCtx)) {
        case 1:
            func_80AA1D44(this, 2);
            this->actionFunc = (ActorFunc)func_80AA2018;
            break;
        case 2:
            func_80AA1D44(this, 3);
            this->actionFunc = (ActorFunc)func_80AA204C;
            break;
        case 3:
            if (gSaveContext.infTable[8] & 0x2000) {
                func_80AA1D44(this, 0);
            } else {
                func_80AA1D44(this, 3);
            }
            this->actionFunc = (ActorFunc)func_80AA2018;
            break;
        case 0:
            Actor_Kill(&this->actor);
            return;
    }

    func_8002E4B4(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.unk_1F = 6;
    this->unk_1E0.unk_00 = 0;
}

void EnMa2_Destroy(EnMa2* this, GlobalContext* globalCtx) {
    SkelAnime_Free(&this->skelAnime, globalCtx);
    ActorCollider_FreeCylinder(globalCtx, &this->collider);
}

void func_80AA2018(EnMa2 *this, GlobalContext *globalCtx) {
    if (this->unk_1E0.unk_00 == 2) {
        this->actor.flags &= ~0x10000;
        this->unk_1E0.unk_00 = 0;
    }
}

void func_80AA204C(EnMa2 *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;

    if (player->stateFlags2 & 0x1000000) {
        player->unk_6A8 = &this->actor;
        player->stateFlags2 |= 0x2000000;
        func_8010BD58(globalCtx, 0x23);
        this->actionFunc = (ActorFunc)func_80AA20E4;
    } else if (this->actor.xzDistanceFromLink < 30.0f + (f32)this->collider.dim.radius) {
        player->stateFlags2 |= 0x800000;
    }
}

void func_80AA20E4(EnMa2 *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;

    if (globalCtx->msgCtx.unk_E3EE >= 4) {
        this->actionFunc = (ActorFunc)func_80AA204C;
        globalCtx->msgCtx.unk_E3EE = 4;
    } else if (globalCtx->msgCtx.unk_E3EE == 3) {
        Audio_PlaySoundGeneral(NA_SE_SY_CORRECT_CHIME, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->unk_208 = 0x1E;
        gSaveContext.infTable[8] |= 0x4000;
        this->actionFunc = (ActorFunc)func_80AA21C8;
        globalCtx->msgCtx.unk_E3EE = 4;
    } else {
        player->stateFlags2 |= 0x800000;
    }
}

void func_80AA21C8(EnMa2 *this, GlobalContext *globalCtx) {
    Player* player = PLAYER;

    if (DECR(this->unk_208)) {
        player->stateFlags2 |= 0x800000;
    } else {
        if (this->unk_1E0.unk_00 == 0) {
            this->actor.flags |= 0x10000;
            func_80106CCC(globalCtx);
        } else {
            this->actor.flags &= ~0x10000;
            this->actionFunc = (ActorFunc)func_80AA2018;
        }
    }
}

void EnMa2_Update(EnMa2* this, GlobalContext* globalCtx) {
    ColliderCylinderMain* collider = &this->collider;
    s32 pad;

    ActorCollider_Cylinder_Update(&this->actor, collider);
    Actor_CollisionCheck_SetOT(globalCtx, &globalCtx->sub_11E60, collider);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    func_80AA1CC0(this);
    this->actionFunc(this, globalCtx);
    func_80AA1DB4(this, globalCtx);
    func_80AA1AE4(this, globalCtx);
    if (this->actionFunc != (ActorFunc)func_80AA20E4) {
        func_800343CC(globalCtx, &this->actor, &this->unk_1E0, (f32)this->collider.dim.radius + 30.0f, func_80AA19A0,
                      func_80AA1A38);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Ma2/func_80AA2354.s")
/*s32 func_80AA2354(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, EnMa2* this) {
    s32 pad;
    Vec3s tempVec;
    s32 pad2;

    if ((limbIndex == 3) || (limbIndex == 6)) {
        *dList = NULL;
    }
    if (limbIndex == 18) {
        Matrix_Translate(1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
        tempVec = this->unk_1E0.unk_08;
        Matrix_RotateX(((f32)tempVec.y / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_RotateZ(((f32)tempVec.x / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_Translate(-1400.0f, 0.0f, 0.0f, MTXMODE_APPLY);
    }
    if (limbIndex == 11) {
        tempVec = this->unk_1E0.unk_0E;
        Matrix_RotateY(((f32)(0 - tempVec.y) / 32768.0f) * M_PI, MTXMODE_APPLY);
        Matrix_RotateX(((f32)(0 - tempVec.x) / 32768.0f) * M_PI, MTXMODE_APPLY);
    }
    if ((limbIndex == 11) || (limbIndex == 12) || (limbIndex == 15)) {
        //temp_v1 = sp4C + (limbIndex * 6);
        rot->y += Math_Sins(this->unk_214) * 200.0f;
        rot->z += Math_Coss(this->unk_216) * 200.0f;
    }
    return 0;
}*/

void func_80AA2590(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3s *rot, EnMa2* this) {
    s16 pad;
    Vec3f vec = D_80AA28A8;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[4];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ma2.c", 904);

    if (limbIndex == 18) {
        Matrix_MultVec3f(&vec, &this->actor.posRot2.pos);
    }
    if ((limbIndex == 14) && (this->skelAnime.animCurrentSeg == &D_060093BC)) {
        gSPDisplayList(gfxCtx->polyOpa.p++, &D_06005420);
    }

    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ma2.c", 927);
}

s32 func_80AA2354(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, EnMa2* this);

void EnMa2_Draw(EnMa2* this, GlobalContext* globalCtx) {
    Camera* camera;
    f32 someFloat;
    GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
    Gfx* dispRefs[6];

    Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ma2.c", 955);
    camera = globalCtx->cameraPtrs[globalCtx->activeCamera];
    someFloat = Math_Vec3f_DistXZ(&this->actor.posRot, &camera->unk_5C);
    func_800F6268(someFloat, 0x2F);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(gfxCtx->polyOpa.p++, 0x09, SEGMENTED_TO_VIRTUAL(D_80AA28B4[this->unk_210]));
    gSPSegment(gfxCtx->polyOpa.p++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AA28C0[this->unk_20E]));

    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                     func_80AA2354, func_80AA2590, &this->actor);
    Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_ma2.c", 990);
}
