#include "z_bg_ydan_maruta.h"

#define ROOM 0x00
#define FLAGS 0x00000000

void BgYdanMaruta_Init(BgYdanMaruta* this, GlobalContext* globalCtx);
void BgYdanMaruta_Destroy(BgYdanMaruta* this, GlobalContext* globalCtx);
void BgYdanMaruta_Update(BgYdanMaruta* this, GlobalContext* globalCtx);
void BgYdanMaruta_Draw(BgYdanMaruta* this, GlobalContext* globalCtx);

/*
const ActorInit Bg_Ydan_Maruta_InitVars = {
    ACTOR_BG_YDAN_MARUTA,
    ACTORTYPE_PROP,
    ROOM,
    FLAGS,
    OBJECT_YDAN_OBJECTS,
    sizeof(BgYdanMaruta),
    (ActorFunc)BgYdanMaruta_Init,
    (ActorFunc)BgYdanMaruta_Destroy,
    (ActorFunc)BgYdanMaruta_Update,
    (ActorFunc)BgYdanMaruta_Draw,
};
*/
#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Maruta/BgYdanMaruta_Init.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Maruta/BgYdanMaruta_Destroy.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Maruta/func_808BEFF4.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Maruta/func_808BF078.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Maruta/func_808BF108.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Maruta/func_808BF1EC.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Maruta/func_808BF25C.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Maruta/BgYdanMaruta_Update.s")

#pragma GLOBAL_ASM("asm/non_matchings/overlays/actors/ovl_Bg_Ydan_Maruta/BgYdanMaruta_Draw.s")
