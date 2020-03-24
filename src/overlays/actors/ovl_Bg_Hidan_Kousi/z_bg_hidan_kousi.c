#include "z_bg_hidan_kousi.h"

#define ROOM 0x00
#define FLAGS 0x00000010

void BgHidanKousi_Init(BgHidanKousi* this, GlobalContext* globalCtx);
void BgHidanKousi_Destroy(BgHidanKousi* this, GlobalContext* globalCtx);
void BgHidanKousi_Update(BgHidanKousi* this, GlobalContext* globalCtx);
void BgHidanKousi_Draw(BgHidanKousi* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Hidan_Kousi_InitVars = {
    ACTOR_BG_HIDAN_KOUSI,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_HIDAN_OBJECTS,
    sizeof(BgHidanKousi),
    (ActorFunc)BgHidanKousi_Init,
    (ActorFunc)BgHidanKousi_Destroy,
    (ActorFunc)BgHidanKousi_Update,
    (ActorFunc)BgHidanKousi_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kousi/func_80889960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kousi/BgHidanKousi_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kousi/BgHidanKousi_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kousi/func_80889ACC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kousi/func_80889B5C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kousi/func_80889BC0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kousi/func_80889C18.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kousi/func_80889C90.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kousi/func_80889D28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kousi/BgHidanKousi_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Hidan_Kousi/BgHidanKousi_Draw.s")
