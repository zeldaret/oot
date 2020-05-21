/*
 * File: z_bg_bombwall.c
 * Overlay: ovl_Bg_Bombwall
 * Description: 2D Bombable Wall
 */

#include "z_bg_bombwall.h"

#define FLAGS 0x00400000

#define THIS ((BgBombwall*)thisx)

void BgBombwall_Init(Actor* thisx, GlobalContext* globalCtx);
void BgBombwall_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgBombwall_Update(Actor* thisx, GlobalContext* globalCtx);
void BgBombwall_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8086E7D0(BgBombwall* this, GlobalContext* globalCtx);
void func_8086EAC0(BgBombwall* this, GlobalContext* globalCtx);
void func_8086EB5C(BgBombwall* this, GlobalContext* globalCtx);
void func_8086ED50(BgBombwall* this, GlobalContext* globalCtx);
void func_8086ED70(BgBombwall* this, GlobalContext* globalCtx);
void func_8086EDFC(BgBombwall* this, GlobalContext* globalCtx);
void func_8086EE40(BgBombwall* this, GlobalContext* globalCtx);
void func_8086EE94(BgBombwall* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Bombwall_InitVars = {
    ACTOR_BG_BOMBWALL,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_GAMEPLAY_FIELD_KEEP,
    sizeof(BgBombwall),
    (ActorFunc)BgBombwall_Init,
    (ActorFunc)BgBombwall_Destroy,
    (ActorFunc)BgBombwall_Update,
    (ActorFunc)BgBombwall_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bombwall/func_8086E7D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bombwall/func_8086E850.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bombwall/BgBombwall_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bombwall/func_8086EAC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bombwall/BgBombwall_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bombwall/func_8086EB5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bombwall/func_8086ED50.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bombwall/func_8086ED70.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bombwall/func_8086EDFC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bombwall/func_8086EE40.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bombwall/func_8086EE94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bombwall/BgBombwall_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bombwall/BgBombwall_Draw.s")
