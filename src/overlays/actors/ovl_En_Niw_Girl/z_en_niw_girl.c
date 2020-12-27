/*
 * File: z_en_niw_girl.c
 * Overlay: ovl_En_Niw_Girl
 * Description: Girl that chases a cuckoo around in Hyrule Market and Kakariko Village
 */

#include "z_en_niw_girl.h"
#include "vt.h"

#define FLAGS 0x00000019

#define THIS ((EnNiwGirl*)thisx)

void EnNiwGirl_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNiwGirl_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNiwGirl_Update(Actor* thisx, GlobalContext* globalCtx);
void EnNiwGirl_Draw(Actor* thisx, GlobalContext* globalCtx);

void EnNiwGirl_Talk(EnNiwGirl* this, GlobalContext* globalCtx);
void func_80AB94D0(EnNiwGirl* this, GlobalContext* globalCtx);
void func_80AB9210(EnNiwGirl* this, GlobalContext* globalCtx);

const ActorInit En_Niw_Girl_InitVars = {
    ACTOR_EN_NIW_GIRL,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_GR,
    sizeof(EnNiwGirl),
    (ActorFunc)EnNiwGirl_Init,
    (ActorFunc)EnNiwGirl_Destroy,
    (ActorFunc)EnNiwGirl_Update,
    (ActorFunc)EnNiwGirl_Draw,
};

static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 10, 30, 0, { 0, 0, 0 } },
};

static Vec3f sConstVec3f = { 0.2f, 0.2f, 0.2f };

static Gfx* D_80AB99D8[] = { 0x06004178, 0x06004978, 0x06005178 };

extern FlexSkeletonHeader D_06009948;
extern AnimationHeader D_06000378;
extern AnimationHeader D_06009C78;

void EnNiwGirl_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnNiwGirl* this = THIS;
    s32 pad;
    Vec3f vec1;
    Vec3f vec2;
    s32 pad2;

    SkelAnime_InitFlex(globalCtx, &this->skelAnime, &D_06009948, &D_06000378, &this->limbDrawTable,
                       &this->transitionDrawTable, 17);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &sCylinderInit);
    this->actor.unk_1F = 6;
    if (this->actor.params < 0) {
        this->actor.params = 0;
    }
    this->path = ((this->actor.params >> 8) & 0xFF);
    this->actor.gravity = -3.0f;
    Matrix_RotateY((this->actor.shape.rot.y / 32768.0f) * M_PI, MTXMODE_NEW);
    vec2.x = vec2.y = vec2.z = 0.0f;
    vec1.x = vec1.y = 0.0f;
    vec1.z = 50.0;
    Matrix_MultVec3f(&vec1, &vec2);
    this->chasedEnNiw = (EnNiw*)Actor_SpawnAsChild(
        &globalCtx->actorCtx, &this->actor, globalCtx, ACTOR_EN_NIW, this->actor.posRot.pos.x + vec2.x,
        this->actor.posRot.pos.y + vec2.y, this->actor.posRot.pos.z + vec2.z, 0, this->actor.posRot.rot.y, 0, 0xA);
    if (this->chasedEnNiw != NULL) {
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ シツレイしちゃうわね！プンプン ☆☆☆☆☆ %d\n" VT_RST, this->actor.params);
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ きゃははははは、まてー ☆☆☆☆☆ %d\n" VT_RST, this->path);
        osSyncPrintf("\n\n");
        this->actor.colChkInfo.mass = 0xFF;
        this->actionFunc = EnNiwGirl_Talk;
    } else {
        osSyncPrintf("\n\n");
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ なぜか、セットできむぅあせん ☆☆☆☆☆ %d\n" VT_RST, this->actor.params);
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ んんがくく ☆☆☆☆☆ %d\n" VT_RST, this->path);
        osSyncPrintf("\n\n");
        Actor_Kill(&this->actor);
    }
}

void EnNiwGirl_Destroy(Actor* thisx, GlobalContext* globalCtx) {
}

void EnNiwGirl_Jump(EnNiwGirl* this, GlobalContext* globalCtx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06000378);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000378, 1.0f, 0.0f, frameCount, 0, -10.0f);
    this->actor.flags &= ~1;
    this->actionFunc = func_80AB9210;
}

void func_80AB9210(EnNiwGirl* this, GlobalContext* globalCtx) {
    Path* path = &globalCtx->setupPathList[this->path];
    f32 xDistBetween;
    f32 zDistBetween;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_ApproachF(&this->actor.speedXZ, 3.0f, 0.2f, 0.4f);

    // Find the X and Z distance between the girl and the cuckoo she is chasing
    xDistBetween = this->chasedEnNiw->actor.posRot.pos.x - this->actor.posRot.pos.x;
    zDistBetween = this->chasedEnNiw->actor.posRot.pos.z - this->actor.posRot.pos.z;
    if (func_8010BDBC(&globalCtx->msgCtx) != 0) {
        this->chasedEnNiw->path = 0;
    }
    if (sqrtf(SQ(xDistBetween) + SQ(zDistBetween)) < 70.0f) {
        this->chasedEnNiw->path = (this->path + 1);
        this->chasedEnNiw->unk_2EC = path->count;
    } else if (sqrtf(SQ(xDistBetween) + SQ(zDistBetween)) > 150.0f) {
        this->chasedEnNiw->path = 0;
    }

    // Change her angle so that she is always facing the cuckoo
    Math_SmoothStepToS(&this->actor.shape.rot.y, Math_FAtan2F(xDistBetween, zDistBetween) * 10430.378f, 3,
                       this->unk_27C, 0);
    Math_ApproachF(&this->unk_27C, 5000.0f, 30.0f, 150.0f);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;

    // Only allow Link to talk to her when she is playing the jumping animation
    if ((this->jumpTimer == 0) || (Player_GetMask(globalCtx) != PLAYER_MASK_NONE)) {
        this->jumpTimer = 60;
        this->actionFunc = EnNiwGirl_Talk;
    }
}

void EnNiwGirl_Talk(EnNiwGirl* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06009C78, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06009C78), 0, -10.0f);
    this->actor.flags |= 1;
    this->actor.textId = 0x7000;
    if ((gSaveContext.eventChkInf[8] & 1) && (this->unk_27A == 0)) {
        this->actor.textId = 0x70EA;
    }
    switch (Player_GetMask(globalCtx)) {
        case PLAYER_MASK_KEATON:
            this->actor.textId = 0x7118;
            break;
        case PLAYER_MASK_SPOOKY:
            this->actor.textId = 0x7119;
            break;
        case PLAYER_MASK_BUNNY:
        case PLAYER_MASK_ZORA:
        case PLAYER_MASK_GERUDO:
            this->actor.textId = 0x711A;
            break;
        case PLAYER_MASK_SKULL:
        case PLAYER_MASK_GORON:
        case PLAYER_MASK_TRUTH:
            this->actor.textId = 0x711B;
            break;
    }
    this->unk_270 = 6;
    this->actionFunc = func_80AB94D0;
}

void func_80AB94D0(EnNiwGirl* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if (func_8010BDBC(&globalCtx->msgCtx)) {
        this->chasedEnNiw->path = 0;
    }
    Math_ApproachZeroF(&this->actor.speedXZ, 0.8f, 0.2f);
    if (func_8002F194(&this->actor, globalCtx)) {
        if (this->actor.textId == 0x70EA) {
            this->unk_27A = 1;
        }
    } else {
        if ((this->jumpTimer == 0) && !func_8010BDBC(&globalCtx->msgCtx)) {
            this->jumpTimer = Rand_ZeroFloat(100.0f) + 250.0f;
            this->actionFunc = EnNiwGirl_Jump;
        } else {
            func_8002F2CC(&this->actor, globalCtx, 100.0f);
        }
    }
}

void EnNiwGirl_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnNiwGirl* this = THIS;
    EnNiwGirlActionFunc tempActionFunc;
    Player* player = PLAYER;

    Actor_SetScale(&this->actor, 0.013f);
    this->unkUpTimer++;
    tempActionFunc = func_80AB94D0;
    if (this->unk_274 == 0) {
        this->unk_272++;
        if (this->unk_272 >= 3) {
            this->unk_272 = 0;
            this->unk_274 = (s16)Rand_ZeroFloat(60.0f) + 20;
        }
    }
    this->unk_280 = 30.0f;
    Actor_SetHeight(&this->actor, 30.0f);
    if (tempActionFunc == this->actionFunc) {
        this->unk_2D4.unk_18 = player->actor.posRot.pos;
        if (LINK_IS_CHILD) {
            this->unk_2D4.unk_18.y = player->actor.posRot.pos.y - 10.0f;
        }
        func_80034A14(&this->actor, &this->unk_2D4, 2, 4);
        this->unk_260 = this->unk_2D4.unk_08;
        this->unk_266 = this->unk_2D4.unk_0E;
    } else {
        Math_SmoothStepToS(&this->unk_266.y, 0, 5, 3000, 0);
        Math_SmoothStepToS(&this->unk_260.y, 0, 5, 3000, 0);
        Math_SmoothStepToS(&this->unk_260.z, 0, 5, 3000, 0);
    }
    if (this->unk_274 != 0) {
        this->unk_274--;
    }
    if (this->jumpTimer != 0) {
        this->jumpTimer--;
    }
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 100.0f, 100.0f, 200.0f, 0x1C);
    Collider_CylinderUpdate(&this->actor, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
}

s32 EnNiwGirlOverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                              void* thisx) {
    EnNiwGirl* this = THIS;

    if (limbIndex == 3) {
        rot->x += this->unk_266.y;
    }
    if (limbIndex == 4) {
        rot->x += this->unk_260.y;
        rot->z += this->unk_260.z;
    }
    return 0;
}

void EnNiwGirl_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnNiwGirl* this = THIS;
    s32 pad;
    Vec3f sp4C = sConstVec3f;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_en_niw_girl.c", 573);

    func_80093D18(globalCtx->state.gfxCtx);
    gSPSegment(POLY_OPA_DISP++, 0x08, SEGMENTED_TO_VIRTUAL(D_80AB99D8[this->unk_272]));
    SkelAnime_DrawFlexOpa(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount,
                          EnNiwGirlOverrideLimbDraw, 0, this);
    func_80033C30(&this->actor.posRot.pos, &sp4C, 255, globalCtx);

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_en_niw_girl.c", 592);
}
