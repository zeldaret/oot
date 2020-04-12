/*
 * File: z_bg_bdan_objects.c
 * Overlay: Bg_Bdan_Objects
 * Description: Lord Jabu-Jabu Objects
 */

#include "z_bg_bdan_objects.h"

#define FLAGS 0x00000010

void BgBdanObjects_Init(BgBdanObjects* this, GlobalContext* globalCtx);
void BgBdanObjects_Destroy(BgBdanObjects* this, GlobalContext* globalCtx);
void BgBdanObjects_Update(BgBdanObjects* this, GlobalContext* globalCtx);
void BgBdanObjects_Draw(BgBdanObjects* this, GlobalContext* globalCtx);
void func_8086C054(BgBdanObjects* this, GlobalContext* globalCtx);
void func_8086C1A0(BgBdanObjects* this, GlobalContext* globalCtx);
void func_8086C3D8(BgBdanObjects* this, GlobalContext* globalCtx);
void func_8086C55C(BgBdanObjects* this, GlobalContext* globalCtx);
void func_8086C618(BgBdanObjects* this, GlobalContext* globalCtx);
void func_8086C6EC(BgBdanObjects* this, GlobalContext* globalCtx);
void func_8086C7D0(BgBdanObjects* this, GlobalContext* globalCtx);
void func_8086C868(BgBdanObjects* this, GlobalContext* globalCtx);
void func_8086C874(BgBdanObjects* this, GlobalContext* globalCtx);
void func_8086C9A8(BgBdanObjects* this, GlobalContext* globalCtx);
void func_8086C9F0(BgBdanObjects* this, GlobalContext* globalCtx);
void func_8086CABC(BgBdanObjects* this, GlobalContext* globalCtx);
void func_8086CB10(BgBdanObjects* this, GlobalContext* globalCtx);
void func_8086CB8C(BgBdanObjects* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Bdan_Objects_InitVars = {
    ACTOR_BG_BDAN_OBJECTS,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_BDAN_OBJECTS,
    sizeof(BgBdanObjects),
    (ActorFunc)BgBdanObjects_Init,
    (ActorFunc)BgBdanObjects_Destroy,
    (ActorFunc)BgBdanObjects_Update,
    (ActorFunc)BgBdanObjects_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086BCA0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086BD10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/BgBdanObjects_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/BgBdanObjects_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086C054.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086C1A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086C29C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086C3D8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086C55C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086C5BC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086C618.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086C6EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086C76C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086C7D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086C868.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086C874.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086C9A8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086C9F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086CABC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086CB10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/func_8086CB8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/BgBdanObjects_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Bdan_Objects/BgBdanObjects_Draw.s")

