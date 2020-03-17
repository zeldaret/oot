#include "z_en_tk.h"

#define ROOM  0x00
#define FLAGS 0x00000009

void EnTk_Init(EnTk* this, GlobalContext* globalCtx);
void EnTk_Destroy(EnTk* this, GlobalContext* globalCtx);
void EnTk_Update(EnTk* this, GlobalContext* globalCtx);
void EnTk_Draw(EnTk* this, GlobalContext* globalCtx);

/*
const ActorInit En_Tk_InitVars =
{
    ACTOR_EN_TK,
    ACTORTYPE_NPC,
    ROOM,
    FLAGS,
    OBJECT_TK,
    sizeof(EnTk),
    (ActorFunc)EnTk_Init,
    (ActorFunc)EnTk_Destroy,
    (ActorFunc)EnTk_Update,
    (ActorFunc)EnTk_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1B900.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1B9A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1BAB0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1BDDC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1BE94.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1BF14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1BF8C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1C00C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1C0D0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1C154.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1C23C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1C2B4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1C3DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1C54C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1C5A0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1C738.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1C8F0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/EnTk_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/EnTk_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1CC04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1CE28.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1CEF8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/EnTk_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1D200.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1D278.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/func_80B1D2E4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_En_Tk/EnTk_Draw.s")
