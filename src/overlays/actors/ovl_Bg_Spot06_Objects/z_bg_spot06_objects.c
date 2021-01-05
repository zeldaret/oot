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
void func_808AF1D8(BgSpot06Objects* this, GlobalContext* globalCtx);
void func_808AF524(Actor* thisx, GlobalContext* globalCtx);

extern Gfx D_06000120[];
extern Gfx D_06000470[];
extern Gfx D_06000E10[];
extern UNK_TYPE D_06000EE8;
extern Gfx D_06001160[];
extern UNK_TYPE D_06001238;
extern Gfx D_06002490[];

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

void BgSpot06Objects_Destroy(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot06Objects* this = THIS;

    switch (this->dyna.actor.params) {
        case 0:
        case 3:
            DynaPolyInfo_Free(globalCtx, &globalCtx->colCtx.dyna, this->dyna.dynaPolyId);
            break;
        case 1:
            Collider_DestroyJntSph(globalCtx, &this->collider.base);
            break;
        case 2:
            break;
    }
}

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

void func_808AF524(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot06Objects* this = THIS;
    s32 gameplayFrames;

    OPEN_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot06_objects.c", 844);

    func_80093D84(globalCtx->state.gfxCtx);

    gSPMatrix(POLY_XLU_DISP++, Matrix_NewMtx(globalCtx->state.gfxCtx, "../z_bg_spot06_objects.c", 850),
              G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

    gameplayFrames = globalCtx->state.frames;

    gSPSegment(POLY_XLU_DISP++, 0x08,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, -gameplayFrames, gameplayFrames, 32, 32, 1, gameplayFrames,
                                gameplayFrames, 32, 32));
    gSPSegment(POLY_XLU_DISP++, 0x09,
               Gfx_TwoTexScroll(globalCtx->state.gfxCtx, 0, -gameplayFrames, gameplayFrames * 6, 32, 32, 1,
                                gameplayFrames, gameplayFrames * 6, 32, 32));

    gDPSetEnvColor(POLY_XLU_DISP++, 255, 255, 255, 128);

    if ((this->lakeHyliaWaterBoxYPos < -680.0f) && (gSaveContext.sceneSetupIndex < 4)) {
        gSPDisplayList(POLY_XLU_DISP++, D_06000120);
    } else {
        gSPDisplayList(POLY_XLU_DISP++, D_06000470);
    }

    CLOSE_DISPS(globalCtx->state.gfxCtx, "../z_bg_spot06_objects.c", 879);
}

void BgSpot06Objects_Draw(Actor* thisx, GlobalContext* globalCtx) {
    BgSpot06Objects* this = THIS;

    switch (this->dyna.actor.params) {
        case 0:
            Gfx_DrawDListOpa(globalCtx, D_06000E10);
            break;
        case 1:
            Gfx_DrawDListOpa(globalCtx, D_06002490);

            if (this->actionFunc == func_808AF1D8) {
                func_800628A4(1, &this->collider);
            }
            break;
        case 2:
            func_808AF524(thisx, globalCtx);
            break;
        case 3:
            Gfx_DrawDListOpa(globalCtx, D_06001160);
            break;
    }
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AF7FC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Spot06_Objects/func_808AF824.s")
