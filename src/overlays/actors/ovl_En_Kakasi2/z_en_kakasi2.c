/*
 * File: z_en_kakasi2.c
 * Overlay: ovl_En_Kakasi2
 * Description: Pierre the Scarecrow Spawn
 */

#include "z_en_kakasi2.h"
#include <vt.h>

#define FLAGS 0x0A000031

#define THIS ((EnKakasi2*)thisx)

ColliderCylinderInit D_80A909A0 = {
    { COLTYPE_UNK10, 0x00, 0x09, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0xFFCFFFFF, 0x00, 0x00 }, { 0xFFCFFFFF, 0x00, 0x00 }, 0x00, 0x05, 0x01 },
    { 20, 70, 0, { 0, 0, 0 } },
};

void EnKakasi2_Init(Actor* thisx, GlobalContext* globalCtx);
void EnKakasi2_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnKakasi2_Update(Actor* thisx, GlobalContext* globalCtx);

void func_80A90948(Actor* thisx, GlobalContext* globalCtx);
void func_80A9062C(EnKakasi2* this, GlobalContext* globalCtx);
void func_80A90264(EnKakasi2* this, GlobalContext* globalCtx);
void func_80A904D8(EnKakasi2* this, GlobalContext* globalCtx);
void func_80A90578(EnKakasi2* this, GlobalContext* globalCtx);
void func_80A906C4(EnKakasi2* this, GlobalContext* globalCtx);

extern SkeletonHeader D_060065B0;
extern AnimationHeader D_06000214;

const ActorInit En_Kakasi2_InitVars = {
    ACTOR_EN_KAKASI2,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_KA,
    sizeof(EnKakasi2),
    (ActorFunc)EnKakasi2_Init,
    (ActorFunc)EnKakasi2_Destroy,
    (ActorFunc)EnKakasi2_Update,
    NULL,
};

void EnKakasi2_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi2* this = THIS;
    s32 pad;
    f32 argument0;
    f32 zAngle;

    osSyncPrintf("\n\n");
    // Visit Umeda
    osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ 梅田参号見参！ ☆☆☆☆☆ \n" VT_RST);

    this->saveFlag = this->actor.params & 0x3F;
    argument0 = (this->actor.params >> 6) & 0xFF;
    zAngle = this->actor.posRot.rot.z;
    if (this->saveFlag == 0x3F) {
        this->saveFlag = -1;
    }
    this->actor.unk_1F = 4;
    this->position.x = (argument0 * 40.0f) + 40.0f;
    this->position.y = (zAngle * 40.0f) + 40.0f;

    // Former? (Argument 0)
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 元？(引数０) ☆☆☆☆ %f\n" VT_RST, argument0);
    // Former? (Z angle)
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 元？(Ｚアングル) ☆☆ %f\n" VT_RST, zAngle);
    // Correction coordinates X
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 補正座標Ｘ ☆☆☆☆☆ %f\n" VT_RST, this->position.x); // 19C, 1A0, 1A4
    // Correction coordinates Y
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 補正座標Ｙ ☆☆☆☆☆ %f\n" VT_RST, this->position.y);
    // Correction coordinates Z
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ 補正座標Ｚ ☆☆☆☆☆ %f\n" VT_RST, this->position.z);
    osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ SAVE       ☆☆☆☆☆ %d\n" VT_RST, this->saveFlag);
    osSyncPrintf("\n\n");

    this->actor.colChkInfo.mass = 0xFFU;
    this->height = 60.0f;
    Actor_SetScale(&this->actor, 0.01f);
    this->actor.flags |= 0x400;
    this->unk_198 = this->actor.shape.rot.y;
    
    if (this->saveFlag >= 0 && Flags_GetSwitch(globalCtx, this->saveFlag)) {
        this->actor.draw = func_80A90948;
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80A909A0);
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_060065B0, &D_06000214, 0, 0, 0);
        this->actionFunc = func_80A9062C;
        return;
    }
    this->actionFunc = func_80A90264;
    this->actor.shape.unk_08 = -8000.0f;
}

void EnKakasi2_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi2* this = THIS;

    Collider_DestroyCylinder(globalCtx, &this->collider);
}

void func_80A90264(EnKakasi2* this, GlobalContext* globalCtx) {
    Player* player = PLAYER;

    this->unk_194++;

    if ((BREG(1) != 0) && (this->actor.xzDistFromLink < this->position.x) &&
        (fabsf(player->actor.posRot.pos.y - this->actor.posRot.pos.y) < this->position.y)) {

        this->actor.draw = func_80A90948;
        Collider_InitCylinder(globalCtx, &this->collider);
        Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80A909A0);
        SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_060065B0, &D_06000214, 0, 0, 0);
        func_80080480(globalCtx, this);
        this->actor.flags |= 0x8000001;

        func_80078884(NA_SE_SY_CORRECT_CHIME);
        if (this->saveFlag >= 0) {
            Flags_SetSwitch(globalCtx, this->saveFlag);
        }

        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ SAVE 終了 ☆☆☆☆☆ %d\n" VT_RST, this->saveFlag);
        this->actionFunc = func_80A904D8;
        return;
    }
    if ((this->actor.xzDistFromLink < this->position.x) &&
        (fabsf(player->actor.posRot.pos.y - this->actor.posRot.pos.y) < this->position.y) &&
        ((u16)gSaveContext.eventChkInf[9] & 0x1000) != 0) {
        
        this->unk_194 = 0;
        if (globalCtx->msgCtx.unk_E3EE == 0xB) {
            if (this->saveFlag >= 0) {
                Flags_SetSwitch(globalCtx, this->saveFlag);
            }
            osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ SAVE 終了 ☆☆☆☆☆ %d\n" VT_RST, this->saveFlag);
            globalCtx->msgCtx.unk_E3EE = 4;
            this->actor.draw = func_80A90948;
            Collider_InitCylinder(globalCtx, &this->collider);
            Collider_SetCylinder(globalCtx, &this->collider, &this->actor, &D_80A909A0);
            SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_060065B0, &D_06000214, 0, 0, 0);
            func_80080480(globalCtx, this);
            func_80078884(NA_SE_SY_CORRECT_CHIME);

            this->actor.flags |= 0x8000001;
            this->actionFunc = func_80A904D8;
        }
    }
}

void func_80A904D8(EnKakasi2* this, GlobalContext* globalCtx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06000214.genericHeader);
   
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000214, 1.0f, 0.0f, (s16)frameCount, 0, -10.0f);
    Audio_PlayActorSound2(&this->actor, NA_SE_EV_COME_UP_DEKU_JR);
    this->actionFunc = func_80A90578;
}

void func_80A90578(EnKakasi2* this, GlobalContext* globalCtx) {
    s16 currentFrame;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);

    currentFrame = this->skelAnime.animCurrentFrame;
    if (currentFrame == 11 || currentFrame == 17) {
        Audio_PlayActorSound2(&this->actor, NA_SE_EV_KAKASHI_SWING);
    }

    this->actor.shape.rot.y += 2048;
    Math_SmoothDownscaleMaxF(&this->actor.shape.unk_08, 0.5f, 500.0f);

    if (this->actor.shape.unk_08 > -100.0f) {
        this->actionFunc = func_80A9062C;
        this->actor.shape.unk_08 = 0.0f;
    }
}

void func_80A9062C(EnKakasi2* this, GlobalContext* globalCtx) {
    f32 frameCount = SkelAnime_GetFrameCount(&D_06000214.genericHeader);

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000214, 0.0f, 0.0f, (s16)frameCount, 2, -10.0f);
    this->actionFunc = &func_80A906C4;
}

void func_80A906C4(EnKakasi2* this, GlobalContext* globalCtx) {
    if (this->skelAnime.animCurrentFrame != 0) {
        Math_SmoothDownscaleMaxF(&this->skelAnime.animCurrentFrame, 0.5f, 1.0f);
    }
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y, this->unk_198, 5, 3000, 0);
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
}

void EnKakasi2_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi2* this = THIS;
    GlobalContext* globalCtx2 = globalCtx;

    this->actor.posRot.rot = this->actor.shape.rot;
    Actor_SetHeight(&this->actor, this->height);
    this->actionFunc(this, globalCtx2);
    Actor_MoveForward(&this->actor);

    if (this->actor.shape.unk_08 == 0.0f) {
        Collider_CylinderUpdate(&this->actor, &this->collider);
        CollisionCheck_SetAC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
        CollisionCheck_SetOC(globalCtx2, &globalCtx2->colChkCtx, &this->collider.base);
    }
    if (BREG(0) != 0) {
        if (BREG(5) != 0) {
            osSyncPrintf("\x1b[33m☆☆☆☆☆ this->actor.player_distance ☆☆☆☆☆ %f\n\x1b[m", this->actor.xzDistFromLink);
            osSyncPrintf("\x1b[33m☆☆☆☆☆ this->hosei.x ☆☆☆☆☆ %f\n\x1b[m", this->position.x);
            osSyncPrintf("\n\n");
        }
        if (this->actor.draw == NULL) {
            if (this->unk_194 != 0) {
                if (!(this->unk_194 & 1)) {
                    DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                                           this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z,
                                           1.0f, 1.0f, 1.0f, 70, 70, 70, 255, 4, globalCtx2->state.gfxCtx);
                }
            } else {
                DebugDisplay_AddObject(this->actor.posRot.pos.x, this->actor.posRot.pos.y, this->actor.posRot.pos.z,
                                       this->actor.posRot.rot.x, this->actor.posRot.rot.y, this->actor.posRot.rot.z,
                                       1.0f, 1.0f, 1.0f, 0, 255, 255, 255, 4, globalCtx2->state.gfxCtx);
            }
        }
    }
}

void func_80A90948(Actor* thisx, GlobalContext* globalCtx) {
    EnKakasi2* this = THIS;

    func_80093D18(globalCtx->state.gfxCtx);
    SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, 0, 0,
                     &this->actor);
}
