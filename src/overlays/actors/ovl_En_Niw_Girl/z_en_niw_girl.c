#include "z_en_niw_girl.h"
#include "VT.h"

#define FLAGS 0x00000019

#define THIS ((EnNiwGirl*)thisx)

void EnNiwGirl_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNiwGirl_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNiwGirl_Update(Actor* thisx, GlobalContext* globalCtx);
void EnNiwGirl_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AB93C0(EnNiwGirl* this, GlobalContext* globalCtx);
void func_80AB93C0(EnNiwGirl* this, GlobalContext* globalCtx);
void func_80AB94D0(EnNiwGirl* this, GlobalContext* globalCtx);
void func_80AB918C(EnNiwGirl* this, GlobalContext* globalCtx);
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
/*s32 D_80AB99A0[] = {0x0A000039, 0x20010000, 0x00000000, 0x00000000, 0x00000000, 0x00000000,
                0x00000000, 0x00000100, 0x000A001E, 0x00000000, 0x00000000 };*/
static ColliderCylinderInit sCylinderInit = {
    { COLTYPE_UNK10, 0x00, 0x00, 0x39, 0x20, COLSHAPE_CYLINDER },
    { 0x00, { 0x00000000, 0x00, 0x00 }, { 0x00000000, 0x00, 0x00 }, 0x00, 0x00, 0x01 },
    { 10, 30, 0, { 0, 0, 0 } },
};
                    //0.2f          //0.2     //0.2
s32 D_80AB99CC[] = {0x3E4CCCCD, 0x3E4CCCCD, 0x3E4CCCCD };

s32 D_80AB99D8[] = {0x06004178, 0x06004978, 0x06005178, 0x00000000, 0x00000000, 0x00000000 };

extern SkeletonHeader D_06009948;
extern AnimationHeader D_06000378;
extern AnimationHeader D_06009C78;

    //#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/EnNiwGirl_Init.s")
void EnNiwGirl_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnNiwGirl* this = THIS;
    s32 pad;
    Vec3f tempSrc;
    Vec3f tempDst;
    s32 pad2;
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06009948, &D_06000378, &this->limbDrawTable,
                     &this->transitionDrawTable, 17);
    //localConst = 0;
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
        this->actionFunc = func_80AB93C0;
    } else {
        osSyncPrintf("\n\n");
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ なぜか、セットできむぅあせん ☆☆☆☆☆ %d\n" VT_RST, thisx->params);
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ んんがくく ☆☆☆☆☆ %d\n" VT_RST, this->unkFlag);
        osSyncPrintf("\n\n");
        Actor_Kill(thisx);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/EnNiwGirl_Destroy.s")

//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/func_80AB918C.s")
void func_80AB918C(EnNiwGirl* this, GlobalContext* globalCtx) {
    //SkelAnime* skelAnime = &this->skelAnime;
    f32 tempFrames;
    tempFrames = SkelAnime_GetFrameCount(&D_06000378);
    SkelAnime_ChangeAnim(&this->skelAnime, &D_06000378, 1.0f, 0.0f, tempFrames, 0, -10.0f);
    this->actor.flags &= ~1; // (this->actor.flags &= ~1);
    this->actionFunc = func_80AB9210;
}


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/func_80AB9210.s")
void func_80AB9210(EnNiwGirl* this, GlobalContext* globalCtx) {
    Path* path;
    f32 xDistBetween;
    f32 zDistBetween;
    f32 distBetween;
    path = &globalCtx->setupPathList[this->unkFlag];
    SkelAnime_FrameUpdateMatrix(&this->skelAnime);
    Math_SmoothScaleMaxF(&this->actor.speedXZ, 3.0f, 0.2f, 0.4f);
    xDistBetween = this->attachedActor->actor.posRot.pos.x - this->actor.posRot.pos.x;
    zDistBetween = this->attachedActor->actor.posRot.pos.z - this->actor.posRot.pos.z;
    if (func_8010BDBC(&globalCtx->msgCtx) != 0) {
        this->attachedActor->unk_2E8 = 0;
    }
    
    distBetween = sqrtf((xDistBetween * xDistBetween) + (zDistBetween * zDistBetween));
    if (distBetween < 70.0f) {
        this->attachedActor->unk_2E8 = (this->unkFlag + 1);
        this->attachedActor->unk_2EC = path->count;
    } else {
        if (150.0f < distBetween) {
            this->attachedActor->unk_2E8 = 0;
        }
    }
    Math_SmoothScaleMaxMinS(&this->actor.shape.rot.y,((Math_atan2f(xDistBetween, zDistBetween) * 10430.378f)), 3, this->unk_27C , 0);
    Math_SmoothScaleMaxF(&this->unk_27C, 5000.0f, 30.0f, 150.0f);
    this->actor.posRot.rot.y = this->actor.shape.rot.y;
    if ((this->unk_26C == 0) || (func_8008F080(globalCtx) != 0)) {
        this->unk_26C = 0x3C;
        this->actionFunc = func_80AB93C0;
    } else {
    }
}



void func_80AB93C0(EnNiwGirl* this, GlobalContext* globalCtx) {
    u32 currentMask;

    SkelAnime_ChangeAnim(&this->skelAnime, &D_06009C78, 1.0f, 0.0f, SkelAnime_GetFrameCount(&D_06009C78), 0, -10.0f);
    this->actor.flags = (this->actor.flags | 1);
    this->actor.textId = 0x7000; // 	I can't catch that Cucco! 
    if (((gSaveContext.eventChkInf[8]) & 1) != 0) {
        if (this->unk_27A == 0) {
            this->actor.textId = 0x70EA; //That scary-looking man took off out of here really fast ! (Ganon?)
        }
    }
    currentMask = func_8008F080(globalCtx) - 1;
        switch (currentMask) {

            case 0:
                this->actor.textId = 0x7118; //Oh wow! It's Keaton! Hi, Keaton ! 
                break;
            case 2:
                this->actor.textId = 0x7119; // 	How spooky! There's a boy in Kakariko Village who was looking for a mask like that! 
                break;
            case 3:
            
            case 5:
            case 6:
                this->actor.textId = 0x711A;//   Hmm... well... don't you have any other masks ?
                break;
            case 1:
            case 4:
            case 7:
                this->actor.textId = 0x711B;//What a strange mask!  Hee hah haa ! 
                break;
        }
        this->unk_270 = 6;
        this->actionFunc = func_80AB94D0;
 }


//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/func_80AB94D0.s")
 void func_80AB94D0(EnNiwGirl* this, GlobalContext* globalCtx) {
      
     SkelAnime_FrameUpdateMatrix(&this->skelAnime);
     if (func_8010BDBC(&globalCtx->msgCtx)) {
         this->attachedActor->unk_2E8 = 0;
     }
     Math_SmoothDownscaleMaxF(&this->actor.speedXZ, 0.8f, 0.2f);
     if (func_8002F194(&this->actor, globalCtx)) {
         if (this->actor.textId == 0x70EA) {
             this->unk_27A = 1;
             return;
         }
     } else {
         if ((this->unk_26C == 0) && (!func_8010BDBC(&globalCtx->msgCtx))){
            this->unk_26C = Math_Rand_ZeroFloat(100.0f) + 250.0f;
            this->actionFunc = func_80AB918C;
            return;
         }
         func_8002F2CC(&this->actor, globalCtx, 100.0f);
     }
 }

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/EnNiwGirl_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/func_80AB97E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/EnNiwGirl_Draw.s")
 