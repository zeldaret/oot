/*
 * File: z_en_heishi3.c
 * Overlay: ovl_En_Heishi3
 * Description: Hyrule Castle Guard
 */

#include "z_en_heishi3.h"

#define FLAGS 0x00000000

#define THIS ((EnHeishi3*)thisx)

void EnHeishi3_Init(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi3_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi3_Update(Actor* thisx, GlobalContext* globalCtx);
void EnHeishi3_Draw(Actor* thisx, GlobalContext* globalCtx);
void func_80A557A0(EnHeishi3* this, GlobalContext* globalCtx);
void func_80A55850(EnHeishi3* this, GlobalContext* globalCtx);
void func_80A559B4(EnHeishi3* this, GlobalContext* globalCtx);
void func_80A55B2C(EnHeishi3* this, GlobalContext* globalCtx);
void func_80A55BD4(EnHeishi3* this, GlobalContext* globalCtx);
void func_80A55C6C(EnHeishi3* this, GlobalContext* globalCtx);
void func_80A55D00(EnHeishi3* this, GlobalContext* globalCtx);
s32 EnHeishi3_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                               Actor* thisx);

/*
const ActorInit En_Heishi3_InitVars = {
    ACTOR_EN_HEISHI3,
    ACTORTYPE_NPC,
    FLAGS,
    OBJECT_SD,
    sizeof(EnHeishi3),
    (ActorFunc)EnHeishi3_Init,
    (ActorFunc)EnHeishi3_Destroy,
    (ActorFunc)EnHeishi3_Update,
    (ActorFunc)EnHeishi3_Draw,
};
*/

extern s16 D_80A55F40;
extern SkeletonHeader D_0600BAC8;
extern AnimationHeader D_06005C30;
extern AnimationHeader D_06005880;
extern ColliderCylinderInit D_80A55F64;
void EnHeishi3_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnHeishi3* this = THIS;

    D_80A55F40 = 0;
    if (this->actor.params <= 0) {
        this->unk_278 = 0;
    } else {
        this->unk_278 = 1;
        if (this->actor.posRot.pos.x < -290.0f) {
            this->unk_278 = 2;
        }
    }
    Actor_SetScale(&this->actor, 0.01f);
    ActorShape_Init(&this->actor.shape, 0.0f, ActorShadow_DrawFunc_Circle, 30.0f);
    SkelAnime_Init(globalCtx, &this->skelAnime, &D_0600BAC8, &D_06005C30, this->limbDrawTable,
                   this->transitionDrawTable, 17);
    this->actor.colChkInfo.mass = -1;
    this->actor.unk_1F = 6;
    Collider_InitCylinder(globalCtx, &this->cylinderCollider);
    Collider_SetCylinder(globalCtx, &this->cylinderCollider, &this->actor, &D_80A55F64);
    // "Castle Gate Soldier - Power Up"
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 城門兵パワーアップ ☆☆☆☆☆ \n" VT_RST);

    this->actor.gravity = -3.0f;
    this->actor.posRot2.pos = this->actor.posRot.pos;
    this->actionFunc = func_80A557A0;
}

void EnHeishi3_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnHeishi3* this = THIS;
    Collider_DestroyCylinder(globalCtx, &this->cylinderCollider);
}

void func_80A557A0(EnHeishi3* this, GlobalContext* globalCtx) {
    f32 frames = SkelAnime_GetFrameCount(&D_06005C30.genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, (s16)(f32)frames, 0, -10.0f);
    if (this->unk_278 == 0) {
        this->actionFunc = func_80A55850;
    } else {
        this->actionFunc = func_80A559B4;
    }
}

void func_80A55850(EnHeishi3* this, GlobalContext* globalCtx) {
    Player* player;
    s16 yawDiff;
    s16 yawDiffNew;
    f32 f0;

    player = PLAYER;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    yawDiff = this->actor.rotTowardsLinkY - this->actor.shape.rot.y;
    yawDiffNew = ABS(yawDiff);
    if (yawDiffNew < 0x4300) {
        if (gSaveContext.nightFlag == 0) {
            f0 = 250.0f;
        } else {
            f0 = 200.0f;
        }
    } else {
        if (gSaveContext.nightFlag == 0) {
            f0 = 150.0f;
        } else {
            f0 = 100.0f;
        }
    }
    if (this->actor.xzDistanceFromLink < f0) {
        if (fabsf(player->actor.posRot.pos.y - this->actor.posRot.pos.y) < 100.0f) {
            if (D_80A55F40 == 0) {
                D_80A55F40 = 1;
                func_8010B680(globalCtx, 0x702D, &this->actor); // "Hey you! Stop! You, kid, over there!"
                func_80078884(NA_SE_SY_FOUND);
                osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発見！ ☆☆☆☆☆ \n" VT_RST); // "Discovered!"
                func_8002DF54(globalCtx, &this->actor, 1);
                this->actionFunc = func_80A55B2C;
            }
        }
    }
}
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Heishi3/func_80A559B4.s")
void func_80A559B4(EnHeishi3* this, GlobalContext* globalCtx) {
    Player* player;

    player = PLAYER;
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((player->actor.posRot.pos.x < -190.0f) && (player->actor.posRot.pos.x > -380.0f) &&
        (fabsf(player->actor.posRot.pos.y - this->actor.posRot.pos.y) < 100.0f) &&
        (player->actor.posRot.pos.z < 1020.0f) && (player->actor.posRot.pos.z > 700.0f) && (D_80A55F40 == 0)) {
        if (this->unk_278 == 1) {
            if ((player->actor.posRot.pos.x < -290.0f)) {
                return;
            }
        }

        else {
            if (player->actor.posRot.pos.x > -290.0f) {
                return;
            }
        }
        D_80A55F40 = 1;
        func_8010B680(globalCtx, 0x702D, &this->actor); // "Hey you! Stop! You, kid, over there!"
        func_80078884(NA_SE_SY_FOUND);
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 発見！ ☆☆☆☆☆ \n" VT_RST); // "Discovered!"
        func_8002DF54(globalCtx, &this->actor, 1);
        this->actionFunc = func_80A55B2C;
    }
}

void func_80A55B2C(EnHeishi3* this, GlobalContext* globalCtx) {
    f32 frames = SkelAnime_GetFrameCount(&D_06005880.genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005880, 1.0f, 0.0f, (s16)(f32)frames, 0, -10.0f);
    this->unk_272 = 0x14;
    this->actionFunc = func_80A55BD4;
    this->actor.speedXZ = 2.5f;
}

void func_80A55BD4(EnHeishi3* this, GlobalContext* globalCtx) {

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_800A56C8(&this->skelAnime, 1.0f) != 0) || (func_800A56C8(&this->skelAnime, 17.0f) != 0)) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_KNIGHT_WALK);
    }
    if (this->unk_272 == 0) {
        this->actionFunc = func_80A55C6C;
        this->actor.speedXZ = 0.0f;
    } else {
        Math_SmoothScaleMaxMinS(&this->actor.posRot.rot.y, this->actor.rotTowardsLinkY, 5, 3000, 0);
    }
}

void func_80A55C6C(EnHeishi3* this, GlobalContext* globalCtx) {
    f32 frames = SkelAnime_GetFrameCount(&D_06005C30.genericHeader);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06005C30, 1.0f, 0.0f, (s16)(f32)frames, 0, -10.0f);
    this->actionFunc = func_80A55D00;
}

void func_80A55D00(EnHeishi3* this, GlobalContext* globalCtx) {
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    if ((func_8010BDBC(&globalCtx->msgCtx) == 5) && (func_80106BC8(globalCtx) != 0) && (this->unk_276 == 0)) {
        gSaveContext.eventChkInf[4] |= 0x4000;
        globalCtx->nextEntranceIndex = 0x47E; // Hyrule Castle from Guard Capture (outside)
        globalCtx->sceneLoadFlag = 0x14;
        this->unk_276 = 1;
        globalCtx->fadeTransition = 0x2E;
        gSaveContext.nextTransition = 0x2E;
    }
}

void EnHeishi3_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnHeishi3* this = THIS;
    ColliderCylinder* cylinderCollider;
    Actor_SetHeight(&this->actor, 60.0f);
    this->unk_274 += 1;
    if (this->unk_272 != 0) {
        this->unk_272 -= 1;
    }
    this->actionFunc(this, globalCtx);
    this->actor.shape.rot = this->actor.posRot.rot;
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, &this->actor, 20.0f, 20.0f, 50.0f, 0x1C);
    cylinderCollider = &this->cylinderCollider;
    Collider_CylinderUpdate(&this->actor, cylinderCollider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, cylinderCollider);
}

s32 EnHeishi3_OverrideLimbDraw(GlobalContext* globalCtx, s32 limbIndex, Gfx** dList, Vec3f* pos, Vec3s* rot,
                               Actor* thisx) {
    EnHeishi3* this = THIS;
    if (limbIndex == 9) {
        rot->x += this->unk_26E;
    }

    if (limbIndex == 16) {
        rot->x += this->unk_262;
        rot->z += this->unk_264;
    }

    return 0;
}

void EnHeishi3_Draw(Actor* thisx, GlobalContext* globalCtx) {
    EnHeishi3* this = THIS;
    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_Draw(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, EnHeishi3_OverrideLimbDraw, NULL,
                   &this->actor);
}
