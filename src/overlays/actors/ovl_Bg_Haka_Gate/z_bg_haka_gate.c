/*
 * File: z_bg_haka_gate.c
 * Overlay: ovl_Bg_Haka_Gate
 * Description: Truth Spinner Puzzle (Shadow Temple)
 */

#include "z_bg_haka_gate.h"

#define FLAGS 0x00000000

#define THIS ((BgHakaGate*)thisx)

void BgHakaGate_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHakaGate_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHakaGate_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHakaGate_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8087C114(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C120(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C158(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C270(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C454(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C5D0(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C65C(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C6AC(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C73C(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C794(BgHakaGate* this, GlobalContext* globalCtx);
void func_8087C85C(BgHakaGate* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Haka_Gate_InitVars = {
    ACTOR_BG_HAKA_GATE,
    ACTORTYPE_PROP,
    FLAGS,
    OBJECT_HAKA_OBJECTS,
    sizeof(BgHakaGate),
    (ActorFunc)BgHakaGate_Init,
    (ActorFunc)BgHakaGate_Destroy,
    (ActorFunc)BgHakaGate_Update,
    (ActorFunc)BgHakaGate_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Gate/BgHakaGate_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Gate/BgHakaGate_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Gate/func_8087C114.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Gate/func_8087C120.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Gate/func_8087C158.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Gate/func_8087C270.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Gate/func_8087C454.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Gate/func_8087C5D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Gate/func_8087C65C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Gate/func_8087C6AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Gate/func_8087C73C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Gate/func_8087C794.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Gate/BgHakaGate_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Gate/func_8087C85C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Gate/BgHakaGate_Draw.s")
