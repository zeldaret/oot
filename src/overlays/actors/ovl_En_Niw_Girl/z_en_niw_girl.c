/*
* File: z_en_niw_girl.c
* Overlay ovl_En_Niw_Girl
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

static Vec3f sConstVec3f = {0.2f, 0.2f, 0.2f };

Gfx* D_80AB99D8[] = {0x06004178, 0x06004978, 0x06005178, 0x00000000, 0x00000000, 0x00000000 };

extern SkeletonHeader D_06009948;
extern AnimationHeader D_06000378;
extern AnimationHeader D_06009C78;

void EnNiwGirl_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnNiwGirl* this = THIS;
    s32 pad;
    Vec3f tempSrc;
    Vec3f tempDst;
    s32 pad2;
    
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06009948, &D_06000378, &this->limbDrawTable,
                     &this->transitionDrawTable, 17);
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, thisx, &sCylinderInit);
    thisx->unk_1F = 6;
    if (thisx->params < 0) {
        thisx->params = 0;
    }
    this->unkFlag = ((thisx->params >> 8) & 0xFF);
    thisx->gravity = -3.0f;
    Matrix_RotateY((thisx->shape.rot.y / 32768.0f) * M_PI, 0);
    tempDst.x = tempDst.y = tempDst.z = 0.0f;
    tempSrc.x = tempSrc.y = 0.0f;
    tempSrc.z = 50.0;
    Matrix_MultVec3f(&tempSrc, &tempDst);
    this->attachedActor = (EnNiw*)Actor_SpawnAttached(&globalCtx->actorCtx, thisx, globalCtx, ACTOR_EN_NIW,
                                              thisx->posRot.pos.x + tempDst.x, thisx->posRot.pos.y + tempDst.y,
                                              thisx->posRot.pos.z + tempDst.z, 0, thisx->posRot.rot.y, 0, 0xA);
    if (this->attachedActor != 0) {
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ シツレイしちゃうわね！プンプン ☆☆☆☆☆ %d\n" VT_RST, thisx->params);
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ きゃははははは、まてー ☆☆☆☆☆ %d\n" VT_RST, this->unkFlag);
        osSyncPrintf("\n\n");
        thisx->colChkInfo.mass = 0xFF;
        this->actionFunc = EnNiwGirl_Talk;
    } else {
        osSyncPrintf("\n\n");
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ なぜか、セットできむぅあせん ☆☆☆☆☆ %d\n" VT_RST, thisx->params);
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ んんがくく ☆☆☆☆☆ %d\n" VT_RST, this->unkFlag);
        osSyncPrintf("\n\n");
        Actor_Kill(thisx);
    }
}

void EnNiwGirl_Destroy(Actor *thisx, GlobalContext *globalCtx) {
}

void EnNiwGirl_PlayJumpAnimation(EnNiwGirl* this, GlobalContext* globalCtx) {
    f32 tempFrames = SkelAnime_GetFrameCount(&D_06000378);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000378, 1.0f, 0.0f, tempFrames, 0, -10.0f);
    this->actor.flags &= ~1;
    this->actionFunc = func_80AB9210;
}

void func_80AB9210(EnNiwGirl* this, GlobalContext* globalCtx) {
    Path* path = &globalCtx->setupPathList[this->unkFlag];
    f32 xDistBetween;
    f32 zDistBetween;

    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxF(&this->actor.speedXZ, 3.0f, 0.2f, 0.4f);
    /*
    * Find the X and Z distance between the girl and the cuckoo she is chasing
    */
    xDistBetween = this->attachedActor->actor.posRot.pos.x - this->actor.posRot.pos.x;
    zDistBetween = this->attachedActor->actor.posRot.pos.z - this->actor.posRot.pos.z;
    if (func_8010BDBC(&globalCtx->msgCtx) != 0) {
        this->attachedActor->unk_2E8 = 0;
    }
    if (sqrtf(SQ(xDistBetween) + SQ(zDistBetween)) < 70.0f) {
        this->attachedActor->unk_2E8 = (this->unkFlag + 1);
        this->attachedActor->unk_2EC = path->count;
    } else if (sqrtf(SQ(xDistBetween) + SQ(zDistBetween)) > 150.0f) {
        this->attachedActor->unk_2E8 = 0;
    }
    /*
    * Change her angle so that she is always facing the cuckoo
    */
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y,((Math_atan2f(xDistBetween, zDistBetween) * 10430.378f)), 3, this->unk_27C , 0);
    Math_SmoothScaleMaxF(&this->unk_27C, 5000.0f, 30.0f, 150.0f);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    /*
    *Only allow Link to talk to her when she is playing the jumping animation
    */
    if ((this->jumpTimer == 0) || (func_8008F080(globalCtx) != 0)) {
        this->jumpTimer = 60;
        this->actionFunc = EnNiwGirl_Talk;
    }
}

void EnNiwGirl_Talk(EnNiwGirl* this, GlobalContext* globalCtx) {
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06009C78, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06009C78), 0, -10.0f);
    this->actor.flags = (this->actor.flags | 1);
    this->actor.textId = 0x7000; //I can't catch that Cucco! 
    if ((((gSaveContext.eventChkInf[8]) & 1))&& (this->unk_27A == 0)) {
            this->actor.textId = 0x70EA; //That scary-looking man took off out of here really fast !
    }
        switch ((func_8008F080(globalCtx) - 1)) {
            case KEATON_MASK:
                this->actor.textId = 0x7118; //Oh wow! It's Keaton! Hi, Keaton ! 
                break;
            case SPOOKY_MASK:
                this->actor.textId = 0x7119; //How spooky! There's a boy in Kakariko Village who was looking for a mask like that! 
                break;
            case BUNNY_HOOD:
            
            case ZORA_MASK:
            case GERUDO_MASK:
                this->actor.textId = 0x711A;//Hmm... well... don't you have any other masks ?
                break;
            case SKULL_MASK:
            case GORON_MASK:
            case MASK_OF_TRUTH:
                this->actor.textId = 0x711B;//What a strange mask!  Hee hah haa ! 
                break;
        }
        this->unk_270 = 6;
        this->actionFunc = func_80AB94D0;
 }

 void func_80AB94D0(EnNiwGirl* this, GlobalContext* globalCtx) {
     SkelAnime_FrameUpdateMatrix(&this->skelAnime);
     if (func_8010BDBC(&globalCtx->msgCtx)) {
         this->attachedActor->unk_2E8 = 0;
     }
     Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.8f, 0.2f);
     if (func_8002F194(&this->actor, globalCtx)) {
         if (this->actor.textId == 0x70EA) { //That scary-looking man took off out of here really fast! 
             this->unk_27A = 1;
             return;
         }
     } else {
         if ((this->jumpTimer == 0) && !func_8010BDBC(&globalCtx->msgCtx)){
            this->jumpTimer = Math_Rand_ZeroFloat(100.0f) + 250.0f;
            this->actionFunc = EnNiwGirl_PlayJumpAnimation;
        }else {
         func_8002F2CC(&this->actor, globalCtx, 100.0f);
        }
     }
 }

void EnNiwGirl_Update(Actor *thisx, GlobalContext *globalCtx) {
    EnNiwGirl* this = THIS;
    EnNiwGirlActionFunc tempActionFunc;
    Player *player = PLAYER;

    Actor_SetScale(&this->actor, 0.013f);
    this->unkUpTimer ++;
    tempActionFunc = func_80AB94D0;
    if (this->unk_274 == 0) {
        this->unk_272++;
        if (this->unk_272 >= 3) {
            this->unk_272 = 0;
            this->unk_274 = ((s16) Math_Rand_ZeroFloat(60.0f) + 20);
        }
    }
    this->unk_280 = 30.0f;
    Actor_SetHeight(&this->actor, 30.0f);
    if (tempActionFunc == this->actionFunc) {
        this->unk_2D4.unk_18 = player->actor.posRot.pos;
        if (LINK_IS_CHILD) {
            this->unk_2D4.unk_18.y = player->actor.posRot.pos.y - 10.0f;
        }
        func_80034A14(thisx, &this->unk_2D4, 2, 4);
        this->unk_260 = this->unk_2D4.unk_08;
        this->unk_266 = this->unk_2D4.unk_0E;
    } else {
        Math_SmoothScaleMaxMinS(&this->unk_266.y, 0, 5, 3000, 0);
        Math_SmoothScaleMaxMinS(&this->unk_260.y, 0, 5, 3000, 0);
        Math_SmoothScaleMaxMinS(&this->unk_260.z, 0, 5, 3000, 0);
    }
    if (this->unk_274 != 0) {
        this->unk_274--;
    }
    if (this->jumpTimer != 0) {
        this->jumpTimer--;
    }
    this->actionFunc(this, globalCtx);
    Actor_MoveForward(&this->actor);
    func_8002E4B4(globalCtx, thisx, 100.0f, 100.0f, 200.0f, 0x1C);
    Collider_CylinderUpdate(thisx, &this->collider);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->collider);
}

s32 EnNiwGirlOverrideLimbDraw(GlobalContext *globalCtx, s32 limbIndex, Gfx **dList, Vec3f *pos, Vec3s *rot, Actor *thisx) {
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
     GraphicsContext* gfxCtx = globalCtx->state.gfxCtx;
     Gfx* dispRefs[4];

     Graph_OpenDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_niw_girl.c", 573);
     func_80093D18(globalCtx->state.gfxCtx);
     gSPSegment(gfxCtx->polyOpa.p++, 0x08,SEGMENTED_TO_VIRTUAL(D_80AB99D8[this->unk_272])); 
     SkelAnime_DrawSV(globalCtx, this->skelAnime.skeleton, this->skelAnime.limbDrawTbl, this->skelAnime.dListCount, EnNiwGirlOverrideLimbDraw, 0, &this->actor);
     func_80033C30(&this->actor.posRot.pos, &sp4C , 0xFF, globalCtx);
     Graph_CloseDisps(dispRefs, globalCtx->state.gfxCtx, "../z_en_niw_girl.c", 592);

 }

 
