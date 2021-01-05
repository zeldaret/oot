#include "z_bg_spot06_objects.h"

#define FLAGS 0x00000200

#define THIS ((BgSpot06Objects*)thisx)

void BgSpot06Objects_Init(Actor* thisx, GlobalContext* globalCtx);
void BgSpot06Objects_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgSpot06Objects_Update(Actor* thisx, GlobalContext* globalCtx);
void BgSpot06Objects_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_808AECB4(BgSpot06Objects* this, GlobalContext* globalCtx);
void func_808AEE00(BgSpot06Objects* this, GlobalContext* globalCtx);
void func_808AF450(BgSpot06Objects* this, GlobalContext* globalCtx);
void func_808AEEFC(BgSpot06Objects* this, GlobalContext* globalCtx);
void func_808AF7FC(BgSpot06Objects* this, GlobalContext* globalCtx);

extern UNK_TYPE D_06000120;
extern UNK_TYPE D_06000470;
extern UNK_TYPE D_06000E10;
extern UNK_TYPE D_06000EE8;
extern UNK_TYPE D_06001160;
extern UNK_TYPE D_06001238;
extern UNK_TYPE D_06002490;

const ActorInit Bg_Spot06_Objects_InitVars = {
    ACTOR_BG_SPOT06_OBJECTS,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_SPOT06_OBJECTS,
    sizeof(BgSpot06Objects),
    (ActorFunc)BgSpot06Objects_Init,
    (ActorFunc)BgSpot06Objects_Destroy,
    (ActorFunc)BgSpot06Objects_Update,
    (ActorFunc)BgSpot06Objects_Draw,
};

u32 D_808AF930[] = {
    0x00000000, 0x00000000, 0x00000000, 0x00000080, 0x00000000, 0x00050100, 0x01000000, 0x0000FF60, 0x00120064,
};

u32 D_808AF954[] = { 0x0A000939, 0x20000000, 0x00000001, &D_808AF930 };

u32 D_808AF964[] = { 0x48500064 };

u32 D_808AF968[] = { 0x485003E8, 0x00000000 };

void BgSpot06Objects_Init(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot06Objects* this = THIS;
    s32 pad;
    ColHeader* colHeader = NULL;

    this->switchFlag = thisx->params & 0xFF;
    thisx->params = (thisx->params >> 8) & 0xFF;

    osSyncPrintf("spot06 obj nthisx->arg_data=[%d]", thisx->params);

    switch (thisx->params) {
        case 0:
            Actor_ProcessInitChain(thisx, D_808AF964);
            DynaPolyInfo_SetActorMove(thisx, 0);
            DynaPolyInfo_Alloc(&D_06000EE8, &colHeader);
            this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, colHeader);

            if (LINK_IS_ADULT && (Flags_GetSwitch(globalCtx, this->switchFlag))) {
                thisx->posRot.pos.y = thisx->initPosRot.pos.y + 120.0f;
                this->actionFunc = func_808AEE00;

            } else {
                this->actionFunc = func_808AECB4;
            }

            break;
        case 1:
            Actor_ProcessInitChain(thisx, D_808AF964);
            Collider_InitJntSph(globalCtx, &this->collider);
            Collider_SetJntSph(globalCtx, &this->collider, thisx, D_808AF954, &this->colliderItem);

            if ((LINK_IS_ADULT) && (Flags_GetSwitch(globalCtx, this->switchFlag))) {
                if (!(gSaveContext.eventChkInf[6] & 0x200)) {
                    thisx->initPosRot.pos.y = thisx->posRot.pos.y = -1993.0f;
                } else {
                    thisx->initPosRot.pos.y = thisx->posRot.pos.y = -1313.0f;
                }

                this->actionFunc = func_808AF450;
                thisx->posRot.pos.z -= 100.0f;
                thisx->initPosRot.pos.z = thisx->posRot.pos.z + 16.0f;
                this->collider.list[0].dim.worldSphere.radius = this->collider.list[0].dim.modelSphere.radius * 2;
                this->collider.list[0].dim.worldSphere.center.z = thisx->posRot.pos.z + 16.0f;
            } else {
                this->actionFunc = func_808AEEFC;
                this->collider.list[0].dim.worldSphere.radius = this->collider.list[0].dim.modelSphere.radius;
                this->collider.list[0].dim.worldSphere.center.z = thisx->posRot.pos.z;
            }

            this->collider.list[0].dim.worldSphere.center.x = thisx->posRot.pos.x;
            this->collider.list[0].dim.worldSphere.center.y = thisx->posRot.pos.y;
            thisx->colChkInfo.mass = -1;
            break;
        case 2:
            Actor_ProcessInitChain(thisx, D_808AF968);
            thisx->flags = 0x30;

            if (LINK_IS_ADULT && !(gSaveContext.eventChkInf[6] & 0x200)) {
                if (gSaveContext.sceneSetupIndex < 4) {
                    this->lakeHyliaWaterBoxYPos = -681.0f;
                    globalCtx->colCtx.stat.colHeader->waterBoxes[1].ySurface = -1193;
                    globalCtx->colCtx.stat.colHeader->waterBoxes[1].zMin -= 50;
                    globalCtx->colCtx.stat.colHeader->waterBoxes[2].ySurface = -1993;
                    globalCtx->colCtx.stat.colHeader->waterBoxes[3].ySurface = -1993;
                    this->actionFunc = func_808AEE00;
                } else {
                    thisx->posRot.pos.y = this->lakeHyliaWaterBoxYPos = -681.0f;
                    thisx->posRot.pos.y += -1313.0f;
                    this->actionFunc = func_808AF7FC;
                }
            } else {
                this->lakeHyliaWaterBoxYPos = 0.0f;
                this->actionFunc = func_808AEE00;
            }
            break;
        case 3:
            Actor_ProcessInitChain(thisx, D_808AF964);
            DynaPolyInfo_SetActorMove(thisx, 0);
            DynaPolyInfo_Alloc(&D_06001238, &colHeader);
            this->dyna.dynaPolyId = DynaPolyInfo_RegisterActor(globalCtx, &globalCtx->colCtx.dyna, thisx, colHeader);
            this->actionFunc = func_808AEE00;

            if (LINK_IS_CHILD) {
                Actor_Kill(thisx);
            }
            break;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/BgSpot06Objects_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AEBC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AECB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AED48.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AED7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AEE00.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AEE0C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AEE6C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AEEFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AF120.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AF1D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AF450.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/BgSpot06Objects_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AF524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/BgSpot06Objects_Draw.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AF7FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AF824.s")
