/*
 * File: z_en_tite.c
 * Overlay: ovl_En_Tite
 * Description: Tektite
 */

#include "z_en_tite.h"

#define FLAGS 0x00000015

#define THIS ((EnTite*)thisx)

void EnTite_Init(Actor* thisx, GlobalContext* globalCtx);
void EnTite_Destroy(Actor* thisx, GlobalContext* globalCtx);
void EnTite_Update(Actor* thisx, GlobalContext* globalCtx);
void EnTite_Draw(Actor* thisx, GlobalContext* globalCtx);


const ActorInit En_Tite_InitVars = {
    ACTOR_EN_TITE,
    ACTORTYPE_ENEMY,
    FLAGS,
    OBJECT_TITE,
    sizeof(EnTite),
    (ActorFunc)EnTite_Init,
    (ActorFunc)EnTite_Destroy,
    (ActorFunc)EnTite_Update,
    (ActorFunc)EnTite_Draw,
};

//EnTite_SetupAction
void func_80B18A80(EnTite* this, EnTiteActionFunc actionFunc) {
    this->actionFunc = actionFunc;
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/EnTite_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/EnTite_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B18C5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B18CC4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B18E08.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B18E7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B19524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B195C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1985C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B19918.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B19E28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B19E94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A1EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A2A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A63C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A670.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A6E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A76C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1A888.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1AA44.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1AA94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1ABBC.s")

u8 func_80B1ABBC(Actor *thisx, GlobalContext *globalCtx);
s32 func_80042244(GlobalContext* globalCtx, CollisionContext* colCtx, f32 x, f32 z, f32* ySurface,
                  WaterBox** outWaterBox);

//func_80029444(GlobalContext *globalCtxt, Vec3f *vec, s32 arg2, s32 arg3, s32 arg4);

void EnTite_Update(Actor* thisx, GlobalContext* globalCtx) {
    EnTite* this = THIS;
    char pad[0x4];
    CollisionPoly *sp3C;
    WaterBox *sp38;    
    f32 sp34;
    

    func_80B1ABBC(thisx, globalCtx);
    if (thisx->colChkInfo.damageEffect != 0xE) {
        this->actionFunc(this, globalCtx);
        Actor_MoveForward(thisx);
        func_8002E4B4(globalCtx, thisx, 25.0f, 40.0f, 20.0f, this->unk2DC);
        if ((thisx->params == -2) && ((thisx->bgCheckFlags & 0x20) != 0)) {
            sp3C = thisx->floorPoly;
            if ((((globalCtx->gameplayFrames & 7) == 0) || (thisx->velocity.y < 0.0f)) && 
                (func_80042244(globalCtx, &globalCtx->colCtx, this->unk360.x, this->unk360.z, &sp34, &sp38)) &&
                (this->unk360.y <= sp34)) {
                this->unk360.y = sp34;
                func_80029444(globalCtx, &this->unk360, 0, 0xDC, 0);
            }
            if (((((globalCtx->gameplayFrames + 2) & 7) == 0) || (thisx->velocity.y < 0.0f)) &&
                (func_80042244(globalCtx, &globalCtx->colCtx, this->unk36C.x, this->unk36C.z, &sp34, &sp38)) &&
                (this->unk36C.y <= sp34)) {
                this->unk36C.y = sp34;
                func_80029444(globalCtx, &this->unk36C, 0, 0xDC, 0);
            }
            if (((((globalCtx->gameplayFrames + 4) & 7) == 0) || (thisx->velocity.y < 0.0f)) &&
                (func_80042244(globalCtx, &globalCtx->colCtx, this->unk348.x, this->unk348.z, &sp34, &sp38)) &&
                (this->unk348.y <= sp34)) {
                this->unk348.y = sp34;
                func_80029444(globalCtx, &this->unk348, 0, 0xDC, 0);
            }
            if (((((globalCtx->gameplayFrames + 1) & 7) == 0) || (thisx->velocity.y < 0.0f)) &&
                (func_80042244(globalCtx, &globalCtx->colCtx, this->unk354.x, this->unk354.z, &sp34, &sp38)) &&
                (this->unk354.y <= sp34)) {
                this->unk354.y = sp34;
                func_80029444(globalCtx, &this->unk354, 0, 0xDC, 0);
            }
            thisx->floorPoly = sp3C;
        
        }
        if (thisx->bgCheckFlags & 3) {
            func_800359B8(thisx, thisx->shape.rot.y, &thisx->shape.rot);
            if (this->unk2BD >= 2) {
                thisx->shape.rot.z = (thisx->shape.rot.z + 0x7FFF);
            }
        } else {
            Math_SmoothScaleMaxMinS(&thisx->shape.rot.x, 0, 1, 0x3E8, 0);
            if (this->unk2BD < 2) {
                Math_SmoothScaleMaxMinS(&thisx->shape.rot.z, 0, 1, 0x3E8, 0);
                if (0.0f < thisx->shape.unk_08) {
                    thisx->shape.unk_08 -= 400.0f;
                }
            }
        }
    }
    thisx->posRot2.pos = thisx->posRot.pos;
    thisx->posRot2.pos.y += 20.0f;

    CollisionCheck_SetAC(globalCtx, &globalCtx->colChkCtx, &this->unk2E8);
    CollisionCheck_SetOC(globalCtx, &globalCtx->colChkCtx, &this->unk2E8);
}
//#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/EnTite_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/func_80B1B178.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tite/EnTite_Draw.s")
