/*
 * File: z_obj_mure.c
 * Overlay: ovl_Obj_Mure
 * Description: Fish, Bugs, Butterflies
 */

#include "z_obj_mure.h"

#define FLAGS 0x00000000

#define THIS ((ObjMure*)thisx)

// s32 func_80B98B1C(ObjMure* this, s32 arg1, s32 params);
void ObjMure_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjMure_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjMure_Update(Actor* thisx, GlobalContext* globalCtx);
// s32 func_80B98C88(ObjMure* this);
void func_80B992E4(ObjMure* this, GlobalContext* globalCtx);

const ActorInit Obj_Mure_InitVars = {
    ACTOR_OBJ_MURE,
    ACTORCAT_ITEMACTION,
    FLAGS,
    OBJECT_GAMEPLAY_KEEP,
    sizeof(ObjMure),
    (ActorFunc)ObjMure_Init,
    (ActorFunc)ObjMure_Destroy,
    (ActorFunc)ObjMure_Update,
    NULL,
};

s32 D_80B99A50[] = 
    { 0x44C80000, 0x44C80000, 0x447A0000, 0x447A0000, 0x447A0000 };
s32 D_80B99A64[] = 
    { 0x0000000C, 0x00000009, 0x00000008, 0x00000000 };
s32 D_80B99A74[] = 
    { 0x01250000, 0x00210020, 0x001E0000 };
s32 D_80B99A80[] = 
    { 0x00000002, 0xFFFF0000, 0xFFFF0000 };
s32 D_80B99A8C[] = 
    { 0xB0F404B0, 0xB0F800C8, 0x30FC04B0 };
s32 D_80B99A98[] = 
    { 0x00000000, 0x00000000 };

s32 unk_FP1 = 0x80B995A4; // &func_80B995A4;
s32 unk_FP2 = 0x80B995A4; // &func_80B995A4;
s32 unk_FP3 = 0x80B997CC; //&func_80B997CC;
s32 unk_1 = 0x00000000;

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98AA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98B1C.s")

// #pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/ObjMure_Init.s")
void ObjMure_Init(Actor *thisx, GlobalContext *globalCtx) {
    ObjMure* this = THIS;

    s32 temp_1 = 0xED;
    this->unk_152 = (thisx->params >> 8) & 0x07;
    this->unk_150 = (thisx->params >> 0xC) & 0x0F;
    this->unk_154 = (thisx->params >> 5) & 0x03;
    this->unk_156 = thisx->params & 0x1F;

    if (this->unk_152 >= 4) {
        osSyncPrintf("Error 群れな敵 (%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", temp_1, thisx->params);
        Actor_Kill(thisx);
        return;
    }
    if ((s32) this->unk_156 >= 5) {
        osSyncPrintf("Error 群れな敵 (%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 0xF5, thisx->params);
        Actor_Kill(thisx);
        return;
    }
    
    if (func_80B98B1C(this, 0xF5, thisx->params) == 0) {
        Actor_Kill(thisx);
        return;
    }
    this->actionFunc = func_80B992E4;
    osSyncPrintf("群れな敵 (arg_data 0x%04x)(chNum(%d) ptn(%d) svNum(%d) type(%d))\n", thisx->params, this->unk_150, this->unk_152, this->unk_154, this->unk_156);
    if (func_80B98C88(this) <= 0) {
        osSyncPrintf("Warning : 個体数が設定されていません(%s %d)(arg_data 0x%04x)\n", "../z_obj_mure.c", 0x10C, thisx->params);
    }   
}

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/ObjMure_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98C88.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98CB4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98D18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B98F38.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B990BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B9910C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B99204.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B99224.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B992E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B992F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B99358.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B9942C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B995A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B997CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/func_80B99950.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Mure/ObjMure_Update.s")
