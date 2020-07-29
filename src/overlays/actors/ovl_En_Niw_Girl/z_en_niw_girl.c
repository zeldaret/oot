#include "z_en_niw_girl.h"
#include "VT.h"

#define FLAGS 0x00000019

#define THIS ((EnNiwGirl*)thisx)

void EnNiwGirl_Init(Actor* thisx, GlobalContext* globalCtx);
void EnNiwGirl_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnNiwGirl_Update(Actor* thisx, GlobalContext* globalCtx);
void EnNiwGirl_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_80AB93C0(EnNiwGirl* this, GlobalContext* globalCtx);

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

s32 D_80AB99CC[] = {0x3E4CCCCD, 0x3E4CCCCD, 0x3E4CCCCD };
s32 D_80AB99D8[] = {0x06004178, 0x06004978, 0x06005178, 0x00000000, 0x00000000, 0x00000000 };

extern SkeletonHeader D_06009948;
extern AnimationHeader D_06000378;

    //#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/EnNiwGirl_Init.s")
void EnNiwGirl_Init(Actor* thisx, GlobalContext* globalCtx) {
    EnNiwGirl* this = THIS;
    s32 pad;
    Vec3f tempDst;
    Vec3f tempSrc;
    f32 localConst;
    SkelAnime_InitSV(globalCtx, &this->skelAnime, &D_06009948, &D_06000378, &this->limbDrawTable,
                     &this->transitionDrawTable, 17);
    localConst = 0;
    Collider_InitCylinder(globalCtx, &this->collider);
    Collider_SetCylinder(globalCtx, &this->collider, thisx, &sCylinderInit);
    thisx->unk_1F = 6;
    if (thisx->params < 0) {
        thisx->params = 0;
    }
    this->unkFlag = ((thisx->params >> 8) & 0xFF);
    thisx->gravity = -3.0f;
    Matrix_RotateY((thisx->shape.rot.y / 32768.0f) * M_PI, 0);
    tempDst.x = 50.0f;
    tempSrc.z = localConst;
    tempSrc.y = localConst;
    tempDst.z = localConst;
    tempDst.y = localConst;
    tempSrc.x = localConst;
    Matrix_MultVec3f(&tempSrc, &tempDst);
    this->attachedActor = Actor_SpawnAttached(&globalCtx->actorCtx, thisx, globalCtx, ACTOR_EN_NIW,
                                              thisx->posRot.pos.x + tempSrc.x, thisx->posRot.pos.y + tempSrc.y,
                                              thisx->posRot.pos.z + tempSrc.z, 0, thisx->posRot.rot.y, 0, 0xA);
    if (this->attachedActor != 0) {

        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ シツレイしちゃうわね！プンプン ☆☆☆☆☆ %d\n" VT_RST, thisx->params);
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ きゃははははは、まてー ☆☆☆☆☆ %d\n" VT_RST, this->unkFlag);
        osSyncPrintf("\n\n");
        thisx->colChkInfo.mass = 0xFF;
        this->actionFunc = &func_80AB93C0;
    } else {
        osSyncPrintf("\n\n");
        osSyncPrintf(VT_FGCOL(GREEN) "☆☆☆☆☆ なぜか、セットできむぅあせん ☆☆☆☆☆ %d\n" VT_RST, thisx->params);
        osSyncPrintf(VT_FGCOL(YELLOW) "☆☆☆☆☆ んんがくく ☆☆☆☆☆ %d\n" VT_RST, this->unkFlag);
        osSyncPrintf("\n\n");
        Actor_Kill(thisx);
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/EnNiwGirl_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/func_80AB918C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/func_80AB9210.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/func_80AB93C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/func_80AB94D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/EnNiwGirl_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/func_80AB97E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Niw_Girl/EnNiwGirl_Draw.s")
