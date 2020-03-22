#include "z_bg_dy_yoseizo.h"

#define ROOM 0x00
#define FLAGS 0x02000030

void BgDyYoseizo_Init(BgDyYoseizo* this, GlobalContext* globalCtx);
void BgDyYoseizo_Destroy(BgDyYoseizo* this, GlobalContext* globalCtx);
void BgDyYoseizo_Update(BgDyYoseizo* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Dy_Yoseizo_InitVars =
{
    ACTOR_BG_DY_YOSEIZO,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_DY_OBJ,
    sizeof(BgDyYoseizo),
    (ActorFunc)BgDyYoseizo_Init,
    (ActorFunc)BgDyYoseizo_Destroy,
    (ActorFunc)BgDyYoseizo_Update,
    NULL,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/BgDyYoseizo_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/BgDyYoseizo_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80872960.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80872C58.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80872D20.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80872DE4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_8087328C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873380.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_808734DC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_8087358C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_808736A4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873780.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873868.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873B3C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873C14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873D14.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873E04.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873EA4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80873FD8.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80874304.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/BgDyYoseizo_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80874B7C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80874BE0.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80874D9C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_80874EAC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Dy_Yoseizo/func_808751A0.s")
