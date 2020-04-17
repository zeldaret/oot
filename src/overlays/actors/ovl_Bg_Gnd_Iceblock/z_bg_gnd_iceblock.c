/*
 * File: z_bg_gnd_iceblock.c
 * Overlay: ovl_Bg_Gnd_Iceblock
 * Description: Pushable large square ice block (Inside Ganon's Castle)
 */

#include "z_bg_gnd_iceblock.h"

#define FLAGS 0x00000030

void BgGndIceblock_Init(BgGndIceblock* this, GlobalContext* globalCtx);
void BgGndIceblock_Destroy(BgGndIceblock* this, GlobalContext* globalCtx);
void BgGndIceblock_Update(BgGndIceblock* this, GlobalContext* globalCtx);
void BgGndIceblock_Draw(BgGndIceblock* this, GlobalContext* globalCtx);
void func_8087A0C8(BgGndIceblock* this, GlobalContext* globalCtx);
void func_8087A184(BgGndIceblock* this, GlobalContext* globalCtx);
void func_8087A248(BgGndIceblock* this, GlobalContext* globalCtx);
void func_8087A300(BgGndIceblock* this, GlobalContext* globalCtx);
void func_8087A39C(BgGndIceblock* this, GlobalContext* globalCtx);
/*
const ActorInit Bg_Gnd_Iceblock_InitVars = {
    ACTOR_BG_GND_ICEBLOCK,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_DEMO_KEKKAI,
    sizeof(BgGndIceblock),
    (ActorFunc)BgGndIceblock_Init,
    (ActorFunc)BgGndIceblock_Destroy,
    (ActorFunc)BgGndIceblock_Update,
    (ActorFunc)BgGndIceblock_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/BgGndIceblock_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/BgGndIceblock_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/func_80879C04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/func_80879D10.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/func_80879D4C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/func_80879D98.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/func_8087A0C8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/func_8087A184.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/func_8087A248.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/func_8087A300.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/func_8087A39C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/BgGndIceblock_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Gnd_Iceblock/BgGndIceblock_Draw.s")
