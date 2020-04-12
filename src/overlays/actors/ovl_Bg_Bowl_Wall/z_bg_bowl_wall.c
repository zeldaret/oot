/*
 * File: z_bg_bowl_wall.c
 * Overlay: Bg_Bowl_Wall
 * Description: Bombchu Bowling Alley Wall
 */

#include "z_bg_bowl_wall.h"

#define FLAGS 0x00000030

void BgBowlWall_Init(BgBowlWall* this, GlobalContext* globalCtx);
void BgBowlWall_Destroy(BgBowlWall* this, GlobalContext* globalCtx);
void BgBowlWall_Update(BgBowlWall* this, GlobalContext* globalCtx);
void BgBowlWall_Draw(BgBowlWall* this, GlobalContext* globalCtx);
void func_8086F260(BgBowlWall* this, GlobalContext* globalCtx);
void func_8086F440(BgBowlWall* this, GlobalContext* globalCtx);
void func_8086F464(BgBowlWall* this, GlobalContext* globalCtx);
void func_8086F718(BgBowlWall* this, GlobalContext* globalCtx);
void func_8086F7F8(BgBowlWall* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Bowl_Wall_InitVars = {
    ACTOR_BG_BOWL_WALL,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_BOWL,
    sizeof(BgBowlWall),
    (ActorFunc)BgBowlWall_Init,
    (ActorFunc)BgBowlWall_Destroy,
    (ActorFunc)BgBowlWall_Update,
    (ActorFunc)BgBowlWall_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bowl_Wall/BgBowlWall_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bowl_Wall/BgBowlWall_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bowl_Wall/func_8086F260.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bowl_Wall/func_8086F440.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bowl_Wall/func_8086F464.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bowl_Wall/func_8086F718.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bowl_Wall/func_8086F7F8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bowl_Wall/BgBowlWall_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bowl_Wall/BgBowlWall_Draw.s")
