/*
 * File: z_obj_timeblock.c
 * Overlay: ovl_Obj_Timeblock
 * Description: Song of Time Block
 */

#include "z_obj_timeblock.h"

#define FLAGS 0x0A000011

#define THIS ((ObjTimeblock*)thisx)

void ObjTimeblock_Init(Actor* thisx, GlobalContext* globalCtx);
void ObjTimeblock_Destroy(Actor* thisx, GlobalContext* globalCtx);
void ObjTimeblock_Update(Actor* thisx, GlobalContext* globalCtx);
void ObjTimeblock_Draw(Actor* thisx, GlobalContext* globalCtx);

const ActorInit Obj_Timeblock_InitVars = {
    ACTOR_OBJ_TIMEBLOCK,
    ACTORTYPE_ITEMACTION,
    FLAGS,
    OBJECT_TIMEBLOCK,
    sizeof(ObjTimeblock),
    (ActorFunc)ObjTimeblock_Init,
    (ActorFunc)ObjTimeblock_Destroy,
    (ActorFunc)ObjTimeblock_Update,
    (ActorFunc)ObjTimeblock_Draw,
};

s32 D_80BA0AF0[] = { 0x3F800000 };
s32 D_80BA0AF4[] = { 0x42700000 };
s32 D_80BA0AF8[] = { 0x00180000, 0x3F19999A, 0x42200000, 0x00190000 };
s32 D_80BA0B08[] = { 0x42700000, 0x42C80000, 0x430C0000, 0x43340000, 0x435C0000, 0x43820000, 0x43960000, 0x43960000 };
s32 D_80BA0B28[] = { 0x801F0002, 0xB0F40708, 0xB0F8012C, 0x30FC05DC };
s32 D_80BA0B38[] = { 0x64788C50, 0x8CC86496, 0xC864C8F0, 0x506E8C46, 0xA0E15064, 0x82646EBE };

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80B9FFA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0058.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA00CC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/ObjTimeblock_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/ObjTimeblock_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA032C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA040C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0480.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA04F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0508.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0514.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0524.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA06AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0758.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA0768.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA083C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/func_80BA084C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/ObjTimeblock_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Obj_Timeblock/ObjTimeblock_Draw.s")
