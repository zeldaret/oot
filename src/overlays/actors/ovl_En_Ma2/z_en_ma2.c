#include "z_en_ma2.h"
#include "objects/object_ma2/object_ma2.h"

#define FLAGS 0x02000039

#define THIS ((EnMa2*)thisx)

void EnMa2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnMa2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnMa2_Update(Actor* thisx, GlobalContext* globalCtx);
void EnMa2_Draw(Actor* thisx, GlobalContext* globalCtx);

u16 func_80AA19A0(GlobalContext* globalCtx, Actor* this);
s16 func_80AA1A38(GlobalContext* globalCtx, Actor* this);

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
    ACTORCAT_NPC,
    FLAGS,
    OBJECT_MA2,
    sizeof(EnMa2),
    (ActorFunc)EnMa2_Init,
    (ActorFunc)EnMa2_Destroy,
    (ActorFunc)EnMa2_Update,
    (ActorFunc)EnMa2_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    {
        COLTYPE_NONE,
        AT_NONE,
        AC_NONE,
        OC1_ON | OC1_TYPE_ALL,
        OC2_TYPE_2,
        COLSHAPE_CYLINDER,
    },
    {
        ELEMTYPE_UNK0,
        { 0x00000000, 0x00, 0x00 },
        { 0x00000000, 0x00, 0x00 },
        TOUCH_NONE,
        BUMP_NONE,
        OCELEM_ON,
    },
    { 18, 46, 0, { 0, 0, 0 } },
};

static CollisionCheckInfoInit2 sColChkInfoInit = { 0, 0, 0, 0, MASS_IMMOVABLE };

static struct_D_80AA1678 D_80AA2858[] = {
    { 0x060007D4, 1.0f, ANIMMODE_LOOP, 0.0f },   { 0x060007D4, 1.0f, ANIMMODE_LOOP, -10.0f },
    { 0x060093BC, 1.0f, ANIMMODE_LOOP, 0.0f },   { 0x06009EE0, 1.0f, ANIMMODE_LOOP, 0.0f },
    { 0x06009EE0, 1.0f, ANIMMODE_LOOP, -10.0f },
};

u16 func_80AA19A0(GlobalContext* globalCtx, Actor* thisx) {
    u16 faceReaction = Text_GetFaceReaction(globalCtx, 23);
    if (faceReaction != 0) {
        return faceReaction;
    }
    if (gSaveContext.eventChkInf[1] & 0x100) {
        return 0x2056;
    }
    if (IS_NIGHT) {
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

s16 func_80AA1A38(GlobalContext* globalCtx, Actor* thisx) {
    s16 ret = 1;

    switch (func_8010BDBC(&globalCtx->msgCtx)) {
        case 2:
            switch (thisx->textId) {
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
    Player* player = GET_PLAYER(globalCtx);
    s16 phi_a3;

    if ((this->unk_1E0.unk_00 == 0) && (this->skelAnime.animation == &object_ma2_Anim_009EE0)) {
        phi_a3 = 1;
    } else {
        phi_a3 = 0;
    }

    this->unk_1E0.unk_18 = player->actor.world.pos;
    this->unk_1E0.unk_14 = 0.0f;

    func_80034A14(&this->actor, &this->unk_1E0, 0, phi_a3);
}

u16 func_80AA1B58(EnMa2* this, GlobalContext* globalCtx) {
    if (LINK_IS_CHILD) {
        return 0;
    }
    if (!(gSaveContext.eventChkInf[1] & 0x100) && (globalCtx->sceneNum == SCENE_MALON_STABLE) && IS_DAY &&
        (this->actor.shape.rot.z == 5)) {
        return 1;
    }
    if (!(gSaveContext.eventChkInf[1] & 0x100) && (globalCtx->sceneNum == SCENE_SPOT20) && IS_NIGHT &&
        (this->actor.shape.rot.z == 6)) {
        return 2;
    }
    if (!(gSaveContext.eventChkInf[1] & 0x100) || (globalCtx->sceneNum != SCENE_SPOT20)) {
        return 0;
    }
    if ((this->actor.shape.rot.z == 7) && IS_DAY) {
        return 3;
    }
    if ((this->actor.shape.rot.z == 8) && IS_NIGHT) {
        return 3;
    }
    return 0;
}

s32 func_80AA1C68(EnMa2* this) {
    if (this->skelAnime.animation != &object_ma2_Anim_009EE0) {
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
            this->unk_20C = Rand_S16Offset(0x1E, 0x1E);
            this->unk_20E = 0;
        }
    }
}

void func_80AA1D44(EnMa2* this, s32 idx) {
    f32 frameCount = Animation_GetLastFrame(D_80AA2858[idx].animation);

    Animation_Change(&this->skelAnime, D_80AA2858[idx].animation, 1.0f, 0.0f, frameCount, D_80AA2858[idx].mode,
                     D_80AA2858[idx].transitionRate);
}

void func_80AA1DB4(EnMa2* this, GlobalContext* globalCtx) {
    if (this->skelAnime.animation == &object_ma2_Anim_009EE0) {
        if (this->unk_1E0.unk_00 == 0) {
            if (this->unk_20A != 0) {
                func_800F6584(0);
                this->unk_20A = 0;
            }
        } else {
            if (this->unk_20A == 0) {
                func_800F6584(1);
                this->unk_20A = 1;
            }
        }
    }
}

void EnMa2_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnMa2* this = THIS;
    s32 pad;

    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawCircle, 18.0f);
    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &object_ma2_Skel_008D90, NULL, NULL, NULL, 0);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    CollisionCheck_SetInfo2(&this->actor.colChkInfo, DamageTable_Get(22), &sColChkInfoInit);

    switch (func_80AA1B58(this, globalCtx)) {
        case 1:
            func_80AA1D44(this, 2);
            this->actionFunc = func_80AA2018;
            break;
        case 2:
            func_80AA1D44(this, 3);
            this->actionFunc = func_80AA204C;
            break;
        case 3:
            if (gSaveContext.infTable[8] & 0x2000) {
                func_80AA1D44(this, 0);
            } else {
                func_80AA1D44(this, 3);
            }
            this->actionFunc = func_80AA2018;
            break;
        case 0:
            Actor_Kill(&this->actor);
            return;
    }

    Actor_UpdateBgCheckInfo(globalCtx, &this->actor, 0.0f, 0.0f, 0.0f, 4);
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.targetMode = 6;
    this->unk_1E0.unk_00 = 0;
}

void EnMa2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnMa2* this = THIS;

    SkelAnime_Free(&this->skelAnime, globalCtx);
    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80AA2018(EnMa2* this, GlobalContext* globalCtx) {
    if (this->unk_1E0.unk_00 == 2) {
        this->actor.flags &= ~0x10000;
        this->unk_1E0.unk_00 = 0;
    }
}

void func_80AA204C(EnMa2* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if (player->stateFlags2 & 0x1000000) {
        player->unk_6A8 = &this->actor;
        player->stateFlags2 |= 0x2000000;
        func_8010BD58(globalCtx, 0x23);
        this->actionFunc = func_80AA20E4;
    } else if (this->actor.xzDistToPlayer < 30.0f + (f32)this->collider.dim.radius) {
        player->stateFlags2 |= 0x800000;
    }
}

void func_80AA20E4(EnMa2* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if (globalCtx->msgCtx.unk_E3EE >= 4) {
        this->actionFunc = func_80AA204C;
        globalCtx->msgCtx.unk_E3EE = 4;
    } else if (globalCtx->msgCtx.unk_E3EE == 3) {
        Audio_PlaySoundGeneral(NA_SE_SY_CORRECT_CHIME, &D_801333D4, 4, &D_801333E0, &D_801333E0, &D_801333E8);
        this->unk_208 = 0x1E;
        gSaveContext.infTable[8] |= 0x4000;
        this->actionFunc = func_80AA21C8;
        globalCtx->msgCtx.unk_E3EE = 4;
    } else {
        player->stateFlags2 |= 0x800000;
    }
}

void func_80AA21C8(EnMa2* this, GlobalContext* globalCtx) {
    Player* player = GET_PLAYER(globalCtx);

    if (DECR(this->unk_208)) {
        player->stateFlags2 |= 0x800000;
    } else {
        if (this->unk_1E0.unk_00 == 0) {
            this->actor.flags |= 0x10000;
            func_80106CCC(globalCtx);
        } else {
            this->actor.flags &= ~0x10000;
            this->actionFunc = func_80AA2018;
        }
    }
}

void EnMa2_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnMa2* this = THIS;
    s32 pad;

    Collider_UpdateCylinder(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider.base);
    SkelAnime_Update(&this->skelAnime);
    func_80AA1CC0(this);
    this->actionFunc(this, globalCtx);
    func_80AA1DB4(this, globalCtx);
    func_80AA1AE4(this, globalCtx);
    if (this->actionFunc != func_80AA20E4) {
        func_800343CC(globalCtx, &this->actor, &this->unk_1E0.unk_00, (f32)this->collider.dim.radius + 30.0f,
                      func_80AA19A0, func_80AA1A38);
    }
}

s32 EnMa2_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot, void* thisx) {
    EnMa2* this = THIS;
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
        rot->y += Math_SinS(this->unk_212[limbIndex].y) * 200.0f;
        rot->z += Math_CosS(this->unk_212[limbIndex].z) * 200.0f;
    }
    return false;
}

void EnMa2_PostLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3s* rot, void* thisx) {
    EnMa2* this = THIS;
    Vec3f vec = { 900.0f, 0.0f, 0.0f };

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ma2.c", 904);

    if (limbIndex == 18) {
        Matrix_MultVec3f(&vec, &this->actor.focus.pos);
    }
    if ((limbIndex == 14) && (this->skelAnime.animation == &object_ma2_Anim_0093BC)) {
        gSPDisplayList(POLY_OPA_DISP++, object_ma2_DL_005420);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ma2.c", 927);
}

void EnMa2_Draw(Actor* thisx, GlobalContext* globalCtx) {
    static void* D_80AA28B4[] = {
        0x06002970,
        0x06003570,
        0x06003770,
    };
    static void* D_80AA28C0[] = {
        0x06002570,
        0x06002C70,
        0x06003070,
    };
    EnMa2* this = THIS;
    Camera* camera;
    f32 someFloat;
    s32 pad;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_ma2.c", 955);

    camera = GET_ACTIVE_CAM(globalCtx);
    someFloat = Math_Vec3f_DistXZ(&this->actor.world.pos, &camera->eye);
    func_800F6268(someFloat, 0x2F);
    func_80093D18(globalCtx->state.gfxCtx);

    gSPSegment(POLY_OPA_DISP++, 0x09, SEGMENTED_TO_VIRTUAL(D_80AA28B4[this->unk_210]));
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AA28C0[this->unk_20E]));

    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.jointTable, this->skelAnime.dListCount,
                          EnMa2_OverrideLimbDraw, EnMa2_PostLimbDraw, this);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_ma2.c", 990);
}
