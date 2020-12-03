#include "z_bg_haka_huta.h"

#define FLAGS 0x00000010

#define THIS ((BgHakaHuta*)thisx)

void BgHakaHuta_Init(Actor* thisx, GlobalContext* globalCtx);
void BgHakaHuta_Destroy(Actor* thisx, GlobalContext* globalCtx);
void BgHakaHuta_Update(Actor* thisx, GlobalContext* globalCtx);
void BgHakaHuta_Draw(Actor* thisx, GlobalContext* globalCtx);

void func_8087D0AC(BgHakaHuta* this, GlobalContext* globalCtx);
// void func_8087D268(BgHakaHuta* this, GlobalContext* globalCtx, u16 arg2); not sure about this one
// void func_8087D5B8(BgHakaHuta* this, GlobalContext* globalCtx); not sure about this one
void func_8087D66C(BgHakaHuta* this, GlobalContext* globalCtx);
void func_8087D720(BgHakaHuta* this, GlobalContext* globalCtx);
void func_8087D8C0(BgHakaHuta* this, GlobalContext* globalCtx);

extern UNK_TYPE D_060006B0;
extern UNK_TYPE D_06000870;

/*
const ActorInit Bg_Haka_Huta_InitVars = {
    ACTOR_BG_HAKA_HUTA,
    ACTORTYPE_BG,
    FLAGS,
    OBJECT_HAKACH_OBJECTS,
    sizeof(BgHakaHuta),
    (ActorFunc)BgHakaHuta_Init,
    (ActorFunc)BgHakaHuta_Destroy,
    (ActorFunc)BgHakaHuta_Update,
    (ActorFunc)BgHakaHuta_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/BgHakaHuta_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/BgHakaHuta_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D0AC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D268.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D2F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D5B8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D66C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D720.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/func_8087D8C0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/BgHakaHuta_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Haka_Huta/BgHakaHuta_Draw.s")
