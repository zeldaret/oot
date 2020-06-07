/*
 * File: z_bg_haka.c
 * Overlay: ovl_Bg_Haka
 * Description: Gravestone
 */

#include "z_bg_haka.h"

#define FLAGS 0x00000000

#define THIS ((BgHaka*)thisx)

void BgHaka_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHaka_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHaka_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHaka_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8087B758(BgHaka* this, Player* player);
void func_8087B7E8(BgHaka* this, GlobalContext* globalCtx);
void func_8087B938(BgHaka* this, GlobalContext* globalCtx);
void func_8087BAAC(BgHaka* this, GlobalContext* globalCtx);
void func_8087BAE4(BgHaka* this, GlobalContext* globalCtx);
/*
const ActorInit Bg_Haka_InitVars = {
    ACTOR_BG_HAKA,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HAKA,
    sizeof(BgHaka),
    (ActorFunc)BgHaka_Init,
    (ActorFunc)BgHaka_Destroy,
    (ActorFunc)BgHaka_Update,
    (ActorFunc)BgHaka_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/BgHaka_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/BgHaka_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087B758.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087B7E8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087B938.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087BAAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/func_8087BAE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/BgHaka_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka/BgHaka_Draw.s")
